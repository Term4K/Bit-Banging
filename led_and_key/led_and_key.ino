#define DIO 2
#define CLK 3
#define STB 4

#define WRITE_DATA 0x40
#define READ_KEY 0x42
#define ADDRESS_AUTO 0x40
#define ADDRESS_FIXED 0x44
#define NORMAL_MODE 0x40
#define TEST_MODE 0x48

#define DISPLAY_FIRST_ADDRESS 0xC0
#define DISPLAY_ON 0x8A
#define DISPLAY_OFF 0x80

unsigned int digits[16] = {
  0b00111111,0b00000110,0b01011011,0b01001111,
  0b01100110,0b01101101,0b01111101,0b00000111,
  0b01111111,0b01101111,0b01110111,0b01111100,
  0b00111001,0b01011110,0b01111001,0b01110001
};

byte displayedNums[8] = {0, 0, 0, 0, 0, 0, 0, 0};

bool buttonState[8] = {0, 0, 0, 0, 0, 0, 0, 0};
bool prevButtonState[8] = {0, 0, 0, 0, 0, 0, 0};
bool currButtonState[8] = {0, 0, 0, 0, 0, 0, 0};
unsigned long lastDebounce[8] = {0, 0, 0, 0, 0, 0, 0};

unsigned long prevMillis = 0;
int debounceDelay = 50;

void setup() {
  Serial.begin(115200);

  pinMode(DIO, OUTPUT);
  pinMode(CLK, OUTPUT);
  pinMode(STB, OUTPUT);
  digitalWrite(DIO, HIGH);
  digitalWrite(CLK, HIGH);
  digitalWrite(STB, HIGH);

  sendCommand(DISPLAY_ON);
  sendCommand(DISPLAY_ON);
  test();
}

void loop() {
  
  //countUp();
  counter();
}

void counter(){
  readButtons();
  for(int i = 0; i < 8; i++){
    if(buttonState[i] != prevButtonState[i])
      lastDebounce[i] = millis();
    if((millis() - lastDebounce[i]) > debounceDelay){
      if(buttonState[i] != currButtonState[i] && currButtonState[i] != 1){
        currButtonState[i] = buttonState[i];
        writeLed(15-2*i, true);
        
        displayedNums[i]++;
        digitRollOver();
        for(int j = 0; j < 8; j++){
          writeLcd(14-(j*2), digits[displayedNums[j]]);
        }
      } else if(buttonState[i] != currButtonState[i] && currButtonState[i] == 1){
        currButtonState[i] = buttonState[i];
        writeLed(15-2*i, false);
      }
    }
    prevButtonState[i] = buttonState[i];
  }
}

void countUp(){
  unsigned long currMillis = millis();

  if(currMillis - prevMillis >= 1000){
    prevMillis = currMillis;
    for(int i = 0; i < 8; i++){
      writeLcd(14-(i*2), digits[displayedNums[i]]);
    }
    displayedNums[0]++;
    digitRollOver();
  }
}

void digitRollOver(){
  for(int i = 0; i < 7; i++){
    if(displayedNums[i] == 10){
      displayedNums[i] = 0;
      displayedNums[i+1]++;
    }
  }
  if(displayedNums[7] == 10){
    for(int i = 0; i < 8; i++){
      displayedNums[i] = 0;
    }
  }
}

void test(){
  sendCommand(WRITE_DATA | ADDRESS_AUTO);
  digitalWrite(STB, LOW);
  sendByte(DISPLAY_FIRST_ADDRESS);
  for(int i = 0; i<16; i++){
    sendByte(digits[0]);
  }
  digitalWrite(STB, HIGH);

  delay(1000);
  for(int i = 0; i < 8; i++){
    writeLed(i*2+1, false);
  }
}

void sendByte(uint8_t data){
  byte j;
  char sent[8];
  int msk;
  msk=0x01;
  for(j=0; j<8; j++){
    if(data & msk){
      //sent[j] = '1';
      digitalWrite(DIO,HIGH);
    } else {
      //sent[j] = '0';
      digitalWrite(DIO,LOW);
    }
    digitalWrite(CLK, HIGH);  // clock data into NV
    data = data>>1;
    digitalWrite(CLK, LOW);
    
  }
  //Serial.println(sent);
}

void sendCommand(uint8_t cmd){
  digitalWrite(STB, LOW);
  sendByte(cmd);
  digitalWrite(STB, HIGH);
  delayMicroseconds(1);
}

void writeLcd(uint8_t add, uint8_t val){
  sendCommand(WRITE_DATA | ADDRESS_FIXED);
  digitalWrite(STB, LOW);
  sendByte(DISPLAY_FIRST_ADDRESS + add);
  sendByte(val);
  digitalWrite(STB, HIGH);
  delayMicroseconds(1);
}

void writeLed(uint8_t add, bool state){
  sendCommand(WRITE_DATA | ADDRESS_FIXED);
  digitalWrite(STB, LOW);
  sendByte(DISPLAY_FIRST_ADDRESS + add);
  sendByte(state);
  digitalWrite(STB, HIGH);
  delayMicroseconds(1);
}

void readButtons(){
  digitalWrite(STB, LOW);
  sendByte(READ_KEY);
  pinMode(DIO, INPUT);
  digitalWrite(CLK, LOW);
  uint8_t data[4];
  for(int i=0; i<sizeof(data); i++){
    data[i] = shiftIn(DIO, CLK, LSBFIRST);
    delayMicroseconds(1);
  }
  pinMode(DIO, OUTPUT);
  digitalWrite(STB, HIGH);
  for(int i=0; i<4;i++){
    if(data[i] == 0x01){
      buttonState[7-i] =  true;
    } else {
      buttonState[7-i] = false;
    }
    if(data[i] == 0x10){
      buttonState[3-i] = true;
    } else {
      buttonState[3-i] = false;
    }
  }
}
