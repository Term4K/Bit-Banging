
/*
 * cbbob.ino
 * 93c46 128x8 NVram
 */

#define SBAUD 115200


#define CS 2
#define SK 3
#define DI 4
#define DO 5
#define ORG 8

#define DBG 10
#define DBG2 11

#define CMDMSK 0x200

bool eightBitMode = true;

void cmdout(int cmd, int msk){
  byte j;
  byte bitMode = 10;
  if(!eightBitMode)
    bitMode = 9;
  for(j=0; j<bitMode; j++){
    if(cmd & msk){
      digitalWrite(DI,HIGH);
    } else {
      digitalWrite(DI,LOW);
    }
    digitalWrite(SK, HIGH);  // clock data into NV
    cmd = cmd<<1;
    digitalWrite(SK, LOW);
  }
}

int datin(byte cnt){
  int v;
  byte j;
  v=0;
  for(j=0; j<cnt; j++){
    v = v<<1;
    digitalWrite(SK,HIGH);
    v = v | digitalRead(DO);
    digitalWrite(SK,LOW);
  }
  return v;
  
}

void datout(int v, byte cnt){
  byte j;
  int msk;
  msk=0x8000;  // d15 msk
  if (cnt==8) msk=0x80;  // d7 msk
  for(j=0; j<cnt; j++){
    if(v & msk){
      digitalWrite(DI,HIGH);
    } else {
      digitalWrite(DI,LOW);
    }
    digitalWrite(SK, HIGH);  // clock data into NV
    v = v<<1;
    digitalWrite(SK, LOW);
    
  }
}

void NV_wral(int v){
  int cmd;
  byte writeNum = 8;
  if(!eightBitMode){
    writeNum = 16;
  }
  cmd = 0x220;
  digitalWrite(CS,HIGH);
  cmdout(cmd, CMDMSK);
  datout(v, writeNum);  
  digitalWrite(CS,LOW);
  digitalWrite(CS,HIGH);
  while( 0 == digitalRead(DO));
  digitalWrite(CS,LOW);
}

void NV_ewds(){
  int cmd;
  cmd = 0x200;
  digitalWrite(CS,HIGH);
  cmdout(cmd, CMDMSK);
  digitalWrite(CS,LOW);
}

void NV_ewen(){
  int cmd;
  cmd = 0x260;
  digitalWrite(CS,HIGH);
  cmdout(cmd, CMDMSK);
  digitalWrite(CS,LOW);
}

void NV_eral(){
  int cmd;
  cmd = 0x240;
  digitalWrite(CS,HIGH);
  cmdout(cmd, CMDMSK);
  digitalWrite(CS,LOW);
  digitalWrite(CS,HIGH);
  while( 0 == digitalRead(DO));
  digitalWrite(CS,LOW);
  
}


int NV_read(byte adr){
  int cmd;
  int v;
  byte readNum = 8;
  if(!eightBitMode){
    adr = adr<<1;
    readNum = 16;
  }
  cmd = 0x300 + adr;
  digitalWrite(CS,HIGH);
  cmdout(cmd, CMDMSK);
  v = datin(readNum);  
  digitalWrite(CS,LOW);
  return v;
}

void NV_write(byte adr, int v){
  int cmd;
  byte writeNum = 8;
  if(!eightBitMode){
    adr = adr<<1;
    writeNum = 16;
  }
  cmd = 0x280 + adr;
  digitalWrite(CS,HIGH);
  cmdout(cmd, CMDMSK);
  datout(v,writeNum);  
  digitalWrite(CS,LOW);
  digitalWrite(CS,HIGH);
  while( 0 == digitalRead(DO));
  digitalWrite(CS,LOW);
  
}

void NV_erase(byte adr){
  int cmd;
  cmd = 0x380 + adr;
  digitalWrite(CS,HIGH);
  cmdout(cmd, CMDMSK);
  digitalWrite(CS,LOW);
  digitalWrite(CS,HIGH);
  while( 0 == digitalRead(DO));
  digitalWrite(CS,LOW);
  
}

void setup() {
    pinMode(DBG, OUTPUT);
    pinMode(DBG2, OUTPUT);
    
    pinMode(CS, OUTPUT);
    pinMode(SK, OUTPUT);
    pinMode(DI, OUTPUT);
    pinMode(ORG, OUTPUT);
    pinMode(DO, INPUT_PULLUP);
    Serial.begin(SBAUD);
    Serial.print("\nCold Boot\n");
    digitalWrite(CS, LOW);
    digitalWrite(SK, LOW);
    digitalWrite(DI, LOW);
    digitalWrite(ORG, LOW);
    
}
void loop() {
  int bug=0;
  char ch;
  int x;
  unsigned int v;
  
  Serial.println("\n93c46 Test Menu");
  Serial.println("1 - NVRAM Hex Dump");
  Serial.println("2 - EWEN Write Enable");
  Serial.println("3 - ERAL Erase ALL");
  Serial.println("4 - WRAL 0xAA");
  Serial.println("5 - WRAL 0xC3");
  Serial.println("6 - EWDS Write Disable");
  Serial.println("7 - Erase 0, 3,4, 7");
  Serial.println("8 - Write 1: \"Digitize\"");
  Serial.println("9 - Write 20: \"Alarm Systems\"");
  Serial.println("a - Write 50: \"Arson\"");
  Serial.println("b - WRITE SEQUENTIAL ASCII");
  if(eightBitMode)
    Serial.println("c - Switch to 16 bit Mode");
  else
    Serial.println("c - Switch to 8 bit Mode");
//  Serial.println("");
  Serial.print("CDM: ");
  while(Serial.available()==0);  // wait for input
  ch= Serial.read();   // Note - Handle CR LF on input

  switch (ch) {
    
    case '1':
      Serial.println("NVRAM Hex Dump");
      dumpHex();
      break;
    case '2':
      Serial.println("EWEN Write Enable");
      NV_ewen();
      break;
    case '3':
      Serial.println("ERAL Erase ALL");
      NV_eral();
      break;
    case '4':
      Serial.println("WRAL Write ALL = 0xAA");
      NV_wral(0xAA);
      break;
    case '5':
      Serial.println("WRAL Write ALL = 0xC3");
      NV_wral(0xC3);
      break;
    case '6':
      Serial.println("EWDS Write Disable");
      NV_ewds();
      break;
    case '7':
      Serial.println("Erase  0, 3,4, 7");
      NV_erase(0);
      NV_erase(3);
      NV_erase(4);
      NV_erase(7);
      break;
    case '8':
      Serial.println("Write 1: \"Digitize\"");
      writeString("Digitize", 1);
      break;
    case '9':
      Serial.println("Write 20: \"Alarm Systems\"");
      writeString("Alarm Systems", 20);
      break;
    case 'a':
      Serial.println("Write 50: \"Arson\"");
      writeString("Arson", 50);
      break;
    case 'b':
      Serial.println("WRITE SEQUENTIAL ASCII");
      if(eightBitMode){
        for(int i = 0; i < 128; i++){
          NV_write(i, i);
        }
      } else {
        for(int i = 0; i < 64; i++){
          NV_write(i, i);
        }
      }
      break;
    case 'c':
      Serial.println("Switch bit mode");
      if(eightBitMode){
        digitalWrite(ORG, HIGH);
        eightBitMode = false;
      } else {
        digitalWrite(ORG, LOW);
        eightBitMode = true;
      }
      break;
    default:
      break;
    
  }//switch
  digitalWrite(DBG, bug & 1);
  bug++;
  ch= Serial.read();
}

void dumpHex(){
  char asciiRow[16];
  byte numAdds = 16;
  if(!eightBitMode)
    numAdds = 8;

  for(byte i = 0; i < 8; i++){
    unsigned int val;
    Serial.print(i);
    Serial.print("0 ");
    for(int j = 0; j < numAdds; j++){
      val = NV_read(j+(i*numAdds));
      if(eightBitMode){
        if(val < 0x10){
          Serial.print(0);
        }
      } else {
        if(val < 0x10){
          Serial.print("000");
        } else if(val < 0x100){
          Serial.print("00");
        } else if(val < 0x1000){
          Serial.print("0");
        }
      }
      if(eightBitMode){
        if(val < 32 || val > 126)
          asciiRow[j] = '.'; 
        else
          asciiRow[j] = val;
      } else {
        int charVal = (val<<8)>>8;
        if(charVal < 32 || charVal > 126)
          asciiRow[j*2] = '.'; 
        else
          asciiRow[j*2] = charVal;
        charVal = val>>8;
        if(charVal < 32 || charVal > 126)
          asciiRow[(j*2)+1] = '.'; 
        else
          asciiRow[(j*2)+1] = charVal;
      }
      Serial.print(val, HEX);
      Serial.print(" ");
    }
    for(int k = 0; k < 16; k++){
      Serial.print(asciiRow[k]);
    }
    Serial.println();
  }
}

void writeString(char in[], byte startAdd){
  char writeChar = in[0];
  for(int i = startAdd; writeChar != '\0'; i++){
    writeChar = in[i-startAdd];
    NV_write(i, writeChar);
  }
}
