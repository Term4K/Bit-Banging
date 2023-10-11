;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module serial
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _table
	.globl _main
	.globl _lcd_init
	.globl _lcd_send_str
	.globl _lcd_send_data
	.globl _lcd_send_cmd
	.globl _lcd_write_byte
	.globl _lcd_slave
	.globl _i2c_buttons
	.globl _i2c_read
	.globl _i2c_write
	.globl _i2c_ack
	.globl _i2c_stop
	.globl _i2c_start
	.globl _rollOverNum
	.globl _rollUnderNum
	.globl _clock
	.globl _clockinc
	.globl _display
	.globl _delay
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _slave_add
	.globl _slave1
	.globl _button4
	.globl _button3
	.globl _button2
	.globl _button1
	.globl _downDir
	.globl _lDuoCycl
	.globl _rDuoCycl
	.globl _cyclone
	.globl _prev
	.globl _prevTimeCycl
	.globl _choice
	.globl _clockupdate
	.globl _clocktime
	.globl _displayNum
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_displayNum::
	.ds 8
_clocktime::
	.ds 4
_clockupdate::
	.ds 1
_choice::
	.ds 2
_prevTimeCycl::
	.ds 4
_prev::
	.ds 4
_cyclone::
	.ds 2
_rDuoCycl::
	.ds 2
_lDuoCycl::
	.ds 2
_downDir::
	.ds 1
_button1::
	.ds 1
_button2::
	.ds 1
_button3::
	.ds 1
_button4::
	.ds 1
_slave1::
	.ds 1
_slave_add::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_clockinc
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	serial.c:10: int displayNum[] = {0, 0, 0, 0};
	clr	a
	mov	(_displayNum + 0),a
	mov	(_displayNum + 1),a
	mov	((_displayNum + 0x0002) + 0),a
	mov	((_displayNum + 0x0002) + 1),a
	mov	((_displayNum + 0x0004) + 0),a
	mov	((_displayNum + 0x0004) + 1),a
	mov	((_displayNum + 0x0006) + 0),a
	mov	((_displayNum + 0x0006) + 1),a
;	serial.c:14: unsigned int choice = 0;
	mov	_choice,a
	mov	(_choice + 1),a
;	serial.c:15: unsigned long int prevTimeCycl = 0;
	mov	_prevTimeCycl,a
	mov	(_prevTimeCycl + 1),a
	mov	(_prevTimeCycl + 2),a
	mov	(_prevTimeCycl + 3),a
;	serial.c:16: unsigned long int prev = 0;
	mov	_prev,a
	mov	(_prev + 1),a
	mov	(_prev + 2),a
	mov	(_prev + 3),a
;	serial.c:17: unsigned int cyclone = 0x03;
	mov	_cyclone,#0x03
;	1-genFromRTrack replaced	mov	(_cyclone + 1),#0x00
	mov	(_cyclone + 1),a
;	serial.c:18: unsigned int rDuoCycl = 0x03;
	mov	_rDuoCycl,#0x03
;	1-genFromRTrack replaced	mov	(_rDuoCycl + 1),#0x00
	mov	(_rDuoCycl + 1),a
;	serial.c:19: unsigned int lDuoCycl = 0xC0;
	mov	_lDuoCycl,#0xc0
;	1-genFromRTrack replaced	mov	(_lDuoCycl + 1),#0x00
	mov	(_lDuoCycl + 1),a
;	serial.c:20: volatile _Bool downDir = true;
	mov	_downDir,#0x01
;	serial.c:21: unsigned char button1 = 0;
;	1-genFromRTrack replaced	mov	_button1,#0x00
	mov	_button1,a
;	serial.c:22: unsigned char button2 = 0;
;	1-genFromRTrack replaced	mov	_button2,#0x00
	mov	_button2,a
;	serial.c:23: unsigned char button3 = 0;
;	1-genFromRTrack replaced	mov	_button3,#0x00
	mov	_button3,a
;	serial.c:24: unsigned char button4 = 0;
;	1-genFromRTrack replaced	mov	_button4,#0x00
	mov	_button4,a
;	serial.c:25: unsigned char slave1=0x4E;
	mov	_slave1,#0x4e
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers 
;j                         Allocated to registers r6 r7 
;k                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	serial.c:28: void delay(unsigned int i){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	serial.c:31: for(j = i; j > 0; j--)
00106$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	serial.c:32: for(k = 125; k > 0; k--);
	mov	r4,#0x7d
	mov	r5,#0x00
00104$:
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	mov	a,r2
	orl	a,r3
	jnz	00104$
;	serial.c:31: for(j = i; j > 0; j--)
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	sjmp	00106$
00108$:
;	serial.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;	serial.c:35: void display(void){
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
;	serial.c:36: P0 = table[displayNum[3]];
	mov	a,(_displayNum + 0x0006)
	add	a,acc
	mov	r6,a
	mov	a,((_displayNum + 0x0006) + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_table
	mov	dpl,a
	mov	a,r7
	addc	a,#(_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	serial.c:37: P2_0 = 0;
;	assignBit
	clr	_P2_0
;	serial.c:38: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	serial.c:39: P2_0 = 1;
;	assignBit
	setb	_P2_0
;	serial.c:41: P0 = table[displayNum[2]];
	mov	a,(_displayNum + 0x0004)
	add	a,acc
	mov	r6,a
	mov	a,((_displayNum + 0x0004) + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_table
	mov	dpl,a
	mov	a,r7
	addc	a,#(_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	serial.c:42: P2_1 = 0;
;	assignBit
	clr	_P2_1
;	serial.c:43: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	serial.c:44: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	serial.c:46: P0 = table[displayNum[1]];
	mov	a,(_displayNum + 0x0002)
	add	a,acc
	mov	r6,a
	mov	a,((_displayNum + 0x0002) + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_table
	mov	dpl,a
	mov	a,r7
	addc	a,#(_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	serial.c:47: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	serial.c:48: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	serial.c:49: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	serial.c:51: P0 = table[displayNum[0]];
	mov	a,_displayNum
	add	a,_displayNum
	mov	r6,a
	mov	a,(_displayNum + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_table
	mov	dpl,a
	mov	a,r7
	addc	a,#(_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	serial.c:52: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	serial.c:53: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	serial.c:54: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	serial.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clockinc'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	serial.c:57: void clockinc(void) __interrupt(1)
;	-----------------------------------------
;	 function clockinc
;	-----------------------------------------
_clockinc:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	serial.c:60: TH0 = (65536 - 922) / 256;
	mov	_TH0,#0xfc
;	serial.c:61: TL0 = (65536 - 922) % 256;
	mov	_TL0,#0x66
;	serial.c:62: clocktime++;
	mov	a,#0x01
	add	a,_clocktime
	mov	_clocktime,a
	clr	a
	addc	a,(_clocktime + 1)
	mov	(_clocktime + 1),a
	clr	a
	addc	a,(_clocktime + 2)
	mov	(_clocktime + 2),a
	clr	a
	addc	a,(_clocktime + 3)
	mov	(_clocktime + 3),a
;	serial.c:63: clockupdate = true;
	mov	_clockupdate,#0x01
;	serial.c:65: switch(choice){
	clr	a
	cjne	a,_choice,00179$
	cjne	a,(_choice + 1),00179$
	sjmp	00101$
00179$:
	mov	a,#0x01
	cjne	a,_choice,00180$
	dec	a
	cjne	a,(_choice + 1),00180$
	sjmp	00104$
00180$:
	mov	a,#0x02
	cjne	a,_choice,00181$
	clr	a
	cjne	a,(_choice + 1),00181$
	ljmp	00116$
00181$:
	ljmp	00129$
;	serial.c:66: case 0:
00101$:
;	serial.c:67: if((clocktime - prev) > 500){
	mov	a,_clocktime
	clr	c
	subb	a,_prev
	mov	r4,a
	mov	a,(_clocktime + 1)
	subb	a,(_prev + 1)
	mov	r5,a
	mov	a,(_clocktime + 2)
	subb	a,(_prev + 2)
	mov	r6,a
	mov	a,(_clocktime + 3)
	subb	a,(_prev + 3)
	mov	r7,a
	clr	c
	mov	a,#0xf4
	subb	a,r4
	mov	a,#0x01
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00182$
	ljmp	00129$
00182$:
;	serial.c:68: prev = clocktime;
	mov	_prev,_clocktime
	mov	(_prev + 1),(_clocktime + 1)
	mov	(_prev + 2),(_clocktime + 2)
	mov	(_prev + 3),(_clocktime + 3)
;	serial.c:69: P1 = ~(clocktime/500) & 0xFF;
	mov	__divulong_PARM_2,#0xf4
	mov	(__divulong_PARM_2 + 1),#0x01
	clr	a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,_clocktime
	mov	dph,(_clocktime + 1)
	mov	b,(_clocktime + 2)
	mov	a,(_clocktime + 3)
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	cpl	a
	mov	_P1,a
;	serial.c:71: break;
	ljmp	00129$
;	serial.c:72: case 1:
00104$:
;	serial.c:73: if((clocktime - prevTimeCycl) > 500){
	mov	a,_clocktime
	clr	c
	subb	a,_prevTimeCycl
	mov	r4,a
	mov	a,(_clocktime + 1)
	subb	a,(_prevTimeCycl + 1)
	mov	r5,a
	mov	a,(_clocktime + 2)
	subb	a,(_prevTimeCycl + 2)
	mov	r6,a
	mov	a,(_clocktime + 3)
	subb	a,(_prevTimeCycl + 3)
	mov	r7,a
	clr	c
	mov	a,#0xf4
	subb	a,r4
	mov	a,#0x01
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00183$
	ljmp	00129$
00183$:
;	serial.c:74: prevTimeCycl = clocktime;
	mov	_prevTimeCycl,_clocktime
	mov	(_prevTimeCycl + 1),(_clocktime + 1)
	mov	(_prevTimeCycl + 2),(_clocktime + 2)
	mov	(_prevTimeCycl + 3),(_clocktime + 3)
;	serial.c:75: if(downDir){
	mov	a,_downDir
	jz	00112$
;	serial.c:76: P1 = ~cyclone & 0xFF;
	mov	a,_cyclone
	mov	r7,a
	cpl	a
	mov	_P1,a
;	serial.c:77: if(cyclone == 0xC0){
	mov	a,#0xc0
	cjne	a,_cyclone,00185$
	clr	a
	cjne	a,(_cyclone + 1),00185$
	sjmp	00186$
00185$:
	sjmp	00106$
00186$:
;	serial.c:78: downDir = false;
	mov	_downDir,#0x00
;	serial.c:79: cyclone = cyclone >> 1;
	mov	a,(_cyclone + 1)
	clr	c
	rrc	a
	xch	a,_cyclone
	rrc	a
	xch	a,_cyclone
	mov	(_cyclone + 1),a
	ljmp	00129$
00106$:
;	serial.c:81: cyclone = cyclone << 1;
	mov	a,_cyclone
	add	a,_cyclone
	mov	_cyclone,a
	mov	a,(_cyclone + 1)
	rlc	a
	mov	(_cyclone + 1),a
	ljmp	00129$
00112$:
;	serial.c:84: P1 = ~cyclone & 0xFF;
	mov	a,_cyclone
	mov	r7,a
	cpl	a
	mov	_P1,a
;	serial.c:85: if(cyclone == 0x03){
	mov	a,#0x03
	cjne	a,_cyclone,00187$
	clr	a
	cjne	a,(_cyclone + 1),00187$
	sjmp	00188$
00187$:
	sjmp	00109$
00188$:
;	serial.c:86: downDir = true;
	mov	_downDir,#0x01
;	serial.c:87: cyclone = cyclone << 1;
	mov	a,_cyclone
	add	a,_cyclone
	mov	_cyclone,a
	mov	a,(_cyclone + 1)
	rlc	a
	mov	(_cyclone + 1),a
	ljmp	00129$
00109$:
;	serial.c:89: cyclone = cyclone >> 1;
	mov	a,(_cyclone + 1)
	clr	c
	rrc	a
	xch	a,_cyclone
	rrc	a
	xch	a,_cyclone
	mov	(_cyclone + 1),a
;	serial.c:94: break;
	ljmp	00129$
;	serial.c:95: case 2:
00116$:
;	serial.c:96: if((clocktime - prevTimeCycl) > 500){
	mov	a,_clocktime
	clr	c
	subb	a,_prevTimeCycl
	mov	r4,a
	mov	a,(_clocktime + 1)
	subb	a,(_prevTimeCycl + 1)
	mov	r5,a
	mov	a,(_clocktime + 2)
	subb	a,(_prevTimeCycl + 2)
	mov	r6,a
	mov	a,(_clocktime + 3)
	subb	a,(_prevTimeCycl + 3)
	mov	r7,a
	clr	c
	mov	a,#0xf4
	subb	a,r4
	mov	a,#0x01
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00189$
	ljmp	00129$
00189$:
;	serial.c:97: prevTimeCycl = clocktime;
	mov	_prevTimeCycl,_clocktime
	mov	(_prevTimeCycl + 1),(_clocktime + 1)
	mov	(_prevTimeCycl + 2),(_clocktime + 2)
	mov	(_prevTimeCycl + 3),(_clocktime + 3)
;	serial.c:98: if(downDir){
	mov	a,_downDir
	jz	00124$
;	serial.c:99: P1 = ~(rDuoCycl | lDuoCycl) & 0xFF;
	mov	a,_lDuoCycl
	orl	a,_rDuoCycl
	mov	r6,a
	mov	a,(_lDuoCycl + 1)
	orl	a,(_rDuoCycl + 1)
	mov	r7,a
	mov	a,r6
	cpl	a
	mov	_P1,a
;	serial.c:100: if(rDuoCycl == 0xC0){
	mov	a,#0xc0
	cjne	a,_rDuoCycl,00191$
	clr	a
	cjne	a,(_rDuoCycl + 1),00191$
	sjmp	00192$
00191$:
	sjmp	00118$
00192$:
;	serial.c:101: downDir = false;
	mov	_downDir,#0x00
;	serial.c:102: rDuoCycl = rDuoCycl >> 1;
	mov	a,(_rDuoCycl + 1)
	clr	c
	rrc	a
	xch	a,_rDuoCycl
	rrc	a
	xch	a,_rDuoCycl
	mov	(_rDuoCycl + 1),a
;	serial.c:103: lDuoCycl = lDuoCycl << 1;
	mov	a,_lDuoCycl
	add	a,_lDuoCycl
	mov	_lDuoCycl,a
	mov	a,(_lDuoCycl + 1)
	rlc	a
	mov	(_lDuoCycl + 1),a
	sjmp	00129$
00118$:
;	serial.c:105: rDuoCycl = rDuoCycl << 1;
	mov	a,_rDuoCycl
	add	a,_rDuoCycl
	mov	_rDuoCycl,a
	mov	a,(_rDuoCycl + 1)
	rlc	a
	mov	(_rDuoCycl + 1),a
;	serial.c:106: lDuoCycl = lDuoCycl >> 1;
	mov	a,(_lDuoCycl + 1)
	clr	c
	rrc	a
	xch	a,_lDuoCycl
	rrc	a
	xch	a,_lDuoCycl
	mov	(_lDuoCycl + 1),a
	sjmp	00129$
00124$:
;	serial.c:109: P1 = ~(rDuoCycl | lDuoCycl) & 0xFF;
	mov	a,_lDuoCycl
	orl	a,_rDuoCycl
	mov	r6,a
	mov	a,(_lDuoCycl + 1)
	orl	a,(_rDuoCycl + 1)
	mov	r7,a
	mov	a,r6
	cpl	a
	mov	_P1,a
;	serial.c:110: if(rDuoCycl == 0x03){
	mov	a,#0x03
	cjne	a,_rDuoCycl,00193$
	clr	a
	cjne	a,(_rDuoCycl + 1),00193$
	sjmp	00194$
00193$:
	sjmp	00121$
00194$:
;	serial.c:111: downDir = true;
	mov	_downDir,#0x01
;	serial.c:112: rDuoCycl = rDuoCycl << 1;
	mov	a,_rDuoCycl
	add	a,_rDuoCycl
	mov	_rDuoCycl,a
	mov	a,(_rDuoCycl + 1)
	rlc	a
	mov	(_rDuoCycl + 1),a
;	serial.c:113: lDuoCycl = lDuoCycl >> 1;
	mov	a,(_lDuoCycl + 1)
	clr	c
	rrc	a
	xch	a,_lDuoCycl
	rrc	a
	xch	a,_lDuoCycl
	mov	(_lDuoCycl + 1),a
	sjmp	00129$
00121$:
;	serial.c:115: rDuoCycl = rDuoCycl >> 1;
	mov	a,(_rDuoCycl + 1)
	clr	c
	rrc	a
	xch	a,_rDuoCycl
	rrc	a
	xch	a,_rDuoCycl
	mov	(_rDuoCycl + 1),a
;	serial.c:116: lDuoCycl = lDuoCycl << 1;
	mov	a,_lDuoCycl
	add	a,_lDuoCycl
	mov	_lDuoCycl,a
	mov	a,(_lDuoCycl + 1)
	rlc	a
	mov	(_lDuoCycl + 1),a
;	serial.c:122: }
00129$:
;	serial.c:123: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'clock'
;------------------------------------------------------------
;ctmp                      Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	serial.c:125: unsigned long int clock(void)
;	-----------------------------------------
;	 function clock
;	-----------------------------------------
_clock:
;	serial.c:129: do {
00101$:
;	serial.c:130: clockupdate = false;
	mov	_clockupdate,#0x00
;	serial.c:131: ctmp = clocktime;
	mov	r4,_clocktime
	mov	r5,(_clocktime + 1)
	mov	r6,(_clocktime + 2)
	mov	r7,(_clocktime + 3)
;	serial.c:132: } while(clockupdate);
	mov	a,_clockupdate
	jnz	00101$
;	serial.c:133: return (ctmp);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	serial.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	serial.c:136: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r6,dpl
	mov	r7,dph
;	serial.c:138: while(!(SCON & 0x02));
00101$:
	mov	a,_SCON
	jnb	acc.1,00101$
;	serial.c:139: SCON &= ~0x02;
	anl	_SCON,#0xfd
;	serial.c:140: SBUF = c;
	mov	_SBUF,r6
;	serial.c:141: return (c);
	mov	dpl,r6
	mov	dph,r7
;	serial.c:142: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rollUnderNum'
;------------------------------------------------------------
;	serial.c:144: void rollUnderNum(){
;	-----------------------------------------
;	 function rollUnderNum
;	-----------------------------------------
_rollUnderNum:
;	serial.c:145: if(displayNum[0] < 0){
	mov	a,(_displayNum + 1)
	jnb	acc.7,00102$
;	serial.c:146: displayNum[0] = 9;
	mov	(_displayNum + 0),#0x09
	mov	(_displayNum + 1),#0x00
;	serial.c:147: displayNum[1]--;
	mov	r6,((_displayNum + 0x0002) + 0)
	mov	r7,((_displayNum + 0x0002) + 1)
	dec	r6
	cjne	r6,#0xff,00128$
	dec	r7
00128$:
	mov	((_displayNum + 0x0002) + 0),r6
	mov	((_displayNum + 0x0002) + 1),r7
00102$:
;	serial.c:149: if(displayNum[1] < 0){
	mov	a,((_displayNum + 0x0002) + 1)
	jnb	acc.7,00104$
;	serial.c:150: displayNum[1] = 9;
	mov	((_displayNum + 0x0002) + 0),#0x09
	mov	((_displayNum + 0x0002) + 1),#0x00
;	serial.c:151: displayNum[2]--;
	mov	r6,((_displayNum + 0x0004) + 0)
	mov	r7,((_displayNum + 0x0004) + 1)
	dec	r6
	cjne	r6,#0xff,00130$
	dec	r7
00130$:
	mov	((_displayNum + 0x0004) + 0),r6
	mov	((_displayNum + 0x0004) + 1),r7
00104$:
;	serial.c:153: if(displayNum[2] < 0){
	mov	a,((_displayNum + 0x0004) + 1)
	jnb	acc.7,00106$
;	serial.c:154: displayNum[2] = 9;
	mov	((_displayNum + 0x0004) + 0),#0x09
	mov	((_displayNum + 0x0004) + 1),#0x00
;	serial.c:155: displayNum[3]--;
	mov	r6,((_displayNum + 0x0006) + 0)
	mov	r7,((_displayNum + 0x0006) + 1)
	dec	r6
	cjne	r6,#0xff,00132$
	dec	r7
00132$:
	mov	((_displayNum + 0x0006) + 0),r6
	mov	((_displayNum + 0x0006) + 1),r7
00106$:
;	serial.c:157: if(displayNum[3] < 0){
	mov	a,((_displayNum + 0x0006) + 1)
	jnb	acc.7,00109$
;	serial.c:158: displayNum[0] = 9;
	mov	(_displayNum + 0),#0x09
	mov	(_displayNum + 1),#0x00
;	serial.c:159: displayNum[1] = 9;
	mov	((_displayNum + 0x0002) + 0),#0x09
	mov	((_displayNum + 0x0002) + 1),#0x00
;	serial.c:160: displayNum[2] = 9;
	mov	((_displayNum + 0x0004) + 0),#0x09
	mov	((_displayNum + 0x0004) + 1),#0x00
;	serial.c:161: displayNum[3] = 9;
	mov	((_displayNum + 0x0006) + 0),#0x09
	mov	((_displayNum + 0x0006) + 1),#0x00
00109$:
;	serial.c:163: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rollOverNum'
;------------------------------------------------------------
;	serial.c:165: void rollOverNum(){
;	-----------------------------------------
;	 function rollOverNum
;	-----------------------------------------
_rollOverNum:
;	serial.c:166: if(displayNum[0] > 9){
	clr	c
	mov	a,#0x09
	subb	a,_displayNum
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_displayNum + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	serial.c:167: displayNum[0] = 0;
	clr	a
	mov	(_displayNum + 0),a
	mov	(_displayNum + 1),a
;	serial.c:168: displayNum[1]++;
	mov	r6,((_displayNum + 0x0002) + 0)
	mov	r7,((_displayNum + 0x0002) + 1)
	inc	r6
	cjne	r6,#0x00,00128$
	inc	r7
00128$:
	mov	((_displayNum + 0x0002) + 0),r6
	mov	((_displayNum + 0x0002) + 1),r7
00102$:
;	serial.c:170: if(displayNum[1] > 9){
	clr	c
	mov	a,#0x09
	subb	a,(_displayNum + 0x0002)
	mov	a,#(0x00 ^ 0x80)
	mov	b,((_displayNum + 0x0002) + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	serial.c:171: displayNum[1] = 0;
	clr	a
	mov	((_displayNum + 0x0002) + 0),a
	mov	((_displayNum + 0x0002) + 1),a
;	serial.c:172: displayNum[2]++;
	mov	r6,((_displayNum + 0x0004) + 0)
	mov	r7,((_displayNum + 0x0004) + 1)
	inc	r6
	cjne	r6,#0x00,00130$
	inc	r7
00130$:
	mov	((_displayNum + 0x0004) + 0),r6
	mov	((_displayNum + 0x0004) + 1),r7
00104$:
;	serial.c:174: if(displayNum[2] > 9){
	clr	c
	mov	a,#0x09
	subb	a,(_displayNum + 0x0004)
	mov	a,#(0x00 ^ 0x80)
	mov	b,((_displayNum + 0x0004) + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	serial.c:175: displayNum[2] = 0;
	clr	a
	mov	((_displayNum + 0x0004) + 0),a
	mov	((_displayNum + 0x0004) + 1),a
;	serial.c:176: displayNum[3]++;
	mov	r6,((_displayNum + 0x0006) + 0)
	mov	r7,((_displayNum + 0x0006) + 1)
	inc	r6
	cjne	r6,#0x00,00132$
	inc	r7
00132$:
	mov	((_displayNum + 0x0006) + 0),r6
	mov	((_displayNum + 0x0006) + 1),r7
00106$:
;	serial.c:178: if(displayNum[3] > 9){
	clr	c
	mov	a,#0x09
	subb	a,(_displayNum + 0x0006)
	mov	a,#(0x00 ^ 0x80)
	mov	b,((_displayNum + 0x0006) + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	serial.c:179: displayNum[0] = 0;
	clr	a
	mov	(_displayNum + 0),a
	mov	(_displayNum + 1),a
;	serial.c:180: displayNum[1] = 0;
	mov	((_displayNum + 0x0002) + 0),a
	mov	((_displayNum + 0x0002) + 1),a
;	serial.c:181: displayNum[2] = 0;
	mov	((_displayNum + 0x0004) + 0),a
	mov	((_displayNum + 0x0004) + 1),a
;	serial.c:182: displayNum[3] = 0;
	mov	((_displayNum + 0x0006) + 0),a
	mov	((_displayNum + 0x0006) + 1),a
00109$:
;	serial.c:184: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	serial.c:186: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	serial.c:188: SDA = 1;
;	assignBit
	setb	_P2_7
;	serial.c:189: SCL = 1;
;	assignBit
	setb	_P2_6
;	serial.c:190: SDA = 0;
;	assignBit
	clr	_P2_7
;	serial.c:191: SCL = 0;
;	assignBit
	clr	_P2_6
;	serial.c:192: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	serial.c:194: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	serial.c:196: SDA = 0;
;	assignBit
	clr	_P2_7
;	serial.c:197: SCL = 1;
;	assignBit
	setb	_P2_6
;	serial.c:198: SDA = 1;
;	assignBit
	setb	_P2_7
;	serial.c:199: SCL = 0;
;	assignBit
	clr	_P2_6
;	serial.c:200: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_ack'
;------------------------------------------------------------
;	serial.c:202: void i2c_ack(void)
;	-----------------------------------------
;	 function i2c_ack
;	-----------------------------------------
_i2c_ack:
;	serial.c:204: SCL = 0;
;	assignBit
	clr	_P2_6
;	serial.c:205: SDA = 1;
;	assignBit
	setb	_P2_7
;	serial.c:206: SCL = 1;
;	assignBit
	setb	_P2_6
;	serial.c:208: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	serial.c:210: void i2c_write(unsigned char data){
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7,dpl
;	serial.c:213: for(i = 0; i < 8; i++){
	mov	r6,#0x00
00102$:
;	serial.c:214: SDA = (data & 0x80)>>7;
	mov	a,#0x80
	anl	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_7,c
;	serial.c:215: SCL = 1;
;	assignBit
	setb	_P2_6
;	serial.c:216: SCL = 0;
;	assignBit
	clr	_P2_6
;	serial.c:217: data <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	serial.c:213: for(i = 0; i < 8; i++){
	inc	r6
	cjne	r6,#0x08,00115$
00115$:
	jc	00102$
;	serial.c:219: SDA = 1;
;	assignBit
	setb	_P2_7
;	serial.c:220: SCL = 1;
;	assignBit
	setb	_P2_6
;	serial.c:221: SCL = 0;
;	assignBit
	clr	_P2_6
;	serial.c:222: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;data                      Allocated to registers r5 
;------------------------------------------------------------
;	serial.c:224: unsigned char i2c_read(void){
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
;	serial.c:225: unsigned char i, data = 0;
	mov	r7,#0x00
;	serial.c:227: for(i = 0; i < 8; i++){
	mov	r6,#0x00
00102$:
;	serial.c:228: SCL = 1;
;	assignBit
	setb	_P2_6
;	serial.c:229: data <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r5,a
;	serial.c:230: data |= SDA;
	mov	c,_P2_7
	clr	a
	rlc	a
	orl	a,r5
	mov	r7,a
;	serial.c:231: SCL = 0;
;	assignBit
	clr	_P2_6
;	serial.c:227: for(i = 0; i < 8; i++){
	inc	r6
	cjne	r6,#0x08,00117$
00117$:
	jc	00102$
;	serial.c:233: SDA = 0;
;	assignBit
	clr	_P2_7
;	serial.c:234: SCL = 1;
;	assignBit
	setb	_P2_6
;	serial.c:235: SCL = 0;
;	assignBit
	clr	_P2_6
;	serial.c:236: SDA = 1;
;	assignBit
	setb	_P2_7
;	serial.c:237: return data;
	mov	dpl,r7
;	serial.c:238: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_buttons'
;------------------------------------------------------------
;buttons                   Allocated to registers r7 
;leds                      Allocated to registers r7 
;button1                   Allocated to registers r5 
;button2                   Allocated to registers r4 
;button3                   Allocated to registers r3 
;button4                   Allocated to registers r6 
;------------------------------------------------------------
;	serial.c:240: void i2c_buttons(void){
;	-----------------------------------------
;	 function i2c_buttons
;	-----------------------------------------
_i2c_buttons:
;	serial.c:247: i2c_start();
	lcall	_i2c_start
;	serial.c:248: i2c_write(0x40 | 1);
	mov	dpl,#0x41
	lcall	_i2c_write
;	serial.c:249: buttons = ~i2c_read();
	lcall	_i2c_read
	mov	a,dpl
	cpl	a
	mov	r7,a
;	serial.c:250: i2c_stop();
	push	ar7
	lcall	_i2c_stop
	pop	ar7
;	serial.c:253: button1 = (buttons & 0x10) ? 1 : 0;
	mov	a,r7
	jnb	acc.4,00111$
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00112$
00111$:
	mov	r5,#0x00
	mov	r6,#0x00
00112$:
;	serial.c:254: button2 = (buttons & 0x20) ? 1 : 0;
	mov	a,r7
	jnb	acc.5,00113$
	mov	r4,#0x01
	mov	r6,#0x00
	sjmp	00114$
00113$:
	mov	r4,#0x00
	mov	r6,#0x00
00114$:
;	serial.c:255: button3 = (buttons & 0x40) ? 1 : 0;
	mov	a,r7
	jnb	acc.6,00115$
	mov	r3,#0x01
	mov	r6,#0x00
	sjmp	00116$
00115$:
	mov	r3,#0x00
	mov	r6,#0x00
00116$:
;	serial.c:256: button4 = (buttons & 0x80) ? 1 : 0;	
	mov	a,r7
	jnb	acc.7,00117$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00118$
00117$:
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
;	serial.c:257: leds = 0x00;
	mov	r7,#0x00
;	serial.c:258: if(button1) leds |= 0x01;
	mov	a,r5
	jz	00102$
	mov	r7,#0x01
00102$:
;	serial.c:259: if(button2) leds |= 0x02;
	mov	a,r4
	jz	00104$
	mov	ar4,r7
	mov	r5,#0x00
	orl	ar4,#0x02
	mov	ar7,r4
00104$:
;	serial.c:260: if(button3) leds |= 0x04;
	mov	a,r3
	jz	00106$
	mov	ar4,r7
	mov	r5,#0x00
	orl	ar4,#0x04
	mov	ar7,r4
00106$:
;	serial.c:261: if(button4) leds |= 0x08;
	mov	a,r6
	jz	00108$
	mov	ar5,r7
	mov	r6,#0x00
	orl	ar5,#0x08
	mov	ar7,r5
00108$:
;	serial.c:262: leds = ~leds;
	mov	a,r7
	cpl	a
	mov	r7,a
;	serial.c:265: i2c_start();
	push	ar7
	lcall	_i2c_start
;	serial.c:266: i2c_write(0x40);
	mov	dpl,#0x40
	lcall	_i2c_write
	pop	ar7
;	serial.c:267: i2c_write(leds);
	mov	dpl,r7
	lcall	_i2c_write
;	serial.c:268: i2c_stop();
;	serial.c:270: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_slave'
;------------------------------------------------------------
;slave                     Allocated to registers 
;------------------------------------------------------------
;	serial.c:272: void lcd_slave(unsigned char slave)
;	-----------------------------------------
;	 function lcd_slave
;	-----------------------------------------
_lcd_slave:
	mov	_slave_add,dpl
;	serial.c:274: slave_add=slave;
;	serial.c:275: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_write_byte'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	serial.c:277: void lcd_write_byte(unsigned char data){
;	-----------------------------------------
;	 function lcd_write_byte
;	-----------------------------------------
_lcd_write_byte:
	mov	r7,dpl
;	serial.c:279: for(i=0;i<8;i++){
	mov	r6,#0x00
00102$:
;	serial.c:280: SCL = 0;
;	assignBit
	clr	_P2_6
;	serial.c:281: SDA = (data&(0x80)>>i)?1:0;
	mov	b,r6
	inc	b
	mov	r4,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00112$
00111$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00112$:
	djnz	b,00111$
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
;	assignBit
	mov	a,r4
	orl	a,r5
	add	a,#0xff
	mov	_P2_7,c
;	serial.c:282: SCL = 1;
;	assignBit
	setb	_P2_6
;	serial.c:279: for(i=0;i<8;i++){
	inc	r6
	cjne	r6,#0x08,00113$
00113$:
	jc	00102$
;	serial.c:284: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_send_cmd'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;cmd_l                     Allocated to registers r6 
;cmd_u                     Allocated to registers r7 
;------------------------------------------------------------
;	serial.c:286: void lcd_send_cmd(unsigned char cmd) {
;	-----------------------------------------
;	 function lcd_send_cmd
;	-----------------------------------------
_lcd_send_cmd:
	mov	r7,dpl
;	serial.c:288: cmd_l=(cmd<<4)&0xf0;
	mov	ar6,r7
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	anl	ar6,#0xf0
;	serial.c:289: cmd_u=(cmd &0xf0);
	anl	ar7,#0xf0
;	serial.c:290: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	serial.c:291: lcd_write_byte(slave_add);
	mov	dpl,_slave_add
	lcall	_lcd_write_byte
;	serial.c:292: i2c_ack();
	lcall	_i2c_ack
	pop	ar6
	pop	ar7
;	serial.c:293: lcd_write_byte(cmd_u|0x0C);
	mov	r5,#0x00
	mov	a,#0x0c
	orl	a,r7
	mov	r3,a
	mov	ar4,r5
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_write_byte
;	serial.c:294: i2c_ack();
	lcall	_i2c_ack
;	serial.c:295: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	serial.c:296: lcd_write_byte(cmd_u|0x08);
	orl	ar7,#0x08
	mov	dpl,r7
	push	ar6
	lcall	_lcd_write_byte
;	serial.c:297: i2c_ack();
	lcall	_i2c_ack
;	serial.c:298: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
	pop	ar6
;	serial.c:299: lcd_write_byte(cmd_l|0x0C);
	mov	r7,#0x00
	mov	a,#0x0c
	orl	a,r6
	mov	r4,a
	mov	ar5,r7
	mov	dpl,r4
	push	ar7
	push	ar6
	lcall	_lcd_write_byte
;	serial.c:300: i2c_ack();
	lcall	_i2c_ack
;	serial.c:301: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar6
	pop	ar7
;	serial.c:302: lcd_write_byte(cmd_l|0x08);
	orl	ar6,#0x08
	mov	dpl,r6
	lcall	_lcd_write_byte
;	serial.c:303: i2c_ack();
	lcall	_i2c_ack
;	serial.c:304: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	serial.c:305: i2c_stop();
;	serial.c:306: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_send_data'
;------------------------------------------------------------
;dataw                     Allocated to registers r7 
;dataw_l                   Allocated to registers r6 
;dataw_u                   Allocated to registers r7 
;------------------------------------------------------------
;	serial.c:308: void lcd_send_data(unsigned char dataw){
;	-----------------------------------------
;	 function lcd_send_data
;	-----------------------------------------
_lcd_send_data:
	mov	r7,dpl
;	serial.c:310: dataw_l=(dataw<<4)&0xf0;
	mov	ar6,r7
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	anl	ar6,#0xf0
;	serial.c:311: dataw_u=(dataw &0xf0);
	anl	ar7,#0xf0
;	serial.c:312: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	serial.c:313: lcd_write_byte(slave_add);
	mov	dpl,_slave_add
	lcall	_lcd_write_byte
;	serial.c:314: i2c_ack();
	lcall	_i2c_ack
	pop	ar6
	pop	ar7
;	serial.c:315: lcd_write_byte(dataw_u|0x0D);
	mov	r5,#0x00
	mov	a,#0x0d
	orl	a,r7
	mov	r3,a
	mov	ar4,r5
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_write_byte
;	serial.c:316: i2c_ack();
	lcall	_i2c_ack
;	serial.c:317: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	serial.c:318: lcd_write_byte(dataw_u|0x09);
	orl	ar7,#0x09
	mov	dpl,r7
	push	ar6
	lcall	_lcd_write_byte
;	serial.c:319: i2c_ack();
	lcall	_i2c_ack
;	serial.c:320: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
	pop	ar6
;	serial.c:321: lcd_write_byte(dataw_l|0x0D);
	mov	r7,#0x00
	mov	a,#0x0d
	orl	a,r6
	mov	r4,a
	mov	ar5,r7
	mov	dpl,r4
	push	ar7
	push	ar6
	lcall	_lcd_write_byte
;	serial.c:322: i2c_ack();
	lcall	_i2c_ack
;	serial.c:323: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar6
	pop	ar7
;	serial.c:324: lcd_write_byte(dataw_l|0x09);
	orl	ar6,#0x09
	mov	dpl,r6
	lcall	_lcd_write_byte
;	serial.c:325: i2c_ack();
	lcall	_i2c_ack
;	serial.c:326: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	serial.c:327: i2c_stop();
;	serial.c:328: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_send_str'
;------------------------------------------------------------
;p                         Allocated to registers 
;------------------------------------------------------------
;	serial.c:330: void lcd_send_str(unsigned char *p){
;	-----------------------------------------
;	 function lcd_send_str
;	-----------------------------------------
_lcd_send_str:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	serial.c:331: while(*p != '\0')
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	serial.c:332: lcd_send_data(*p++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_send_data
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	serial.c:333: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;	serial.c:335: void lcd_init(){
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	serial.c:336: lcd_send_cmd(0x02);	
	mov	dpl,#0x02
	lcall	_lcd_send_cmd
;	serial.c:337: lcd_send_cmd(0x28);
	mov	dpl,#0x28
	lcall	_lcd_send_cmd
;	serial.c:338: lcd_send_cmd(0x0C);
	mov	dpl,#0x0c
	lcall	_lcd_send_cmd
;	serial.c:339: lcd_send_cmd(0x06);
	mov	dpl,#0x06
	lcall	_lcd_send_cmd
;	serial.c:340: lcd_send_cmd(0x01);
	mov	dpl,#0x01
;	serial.c:341: }
	ljmp	_lcd_send_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	serial.c:343: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	serial.c:347: TH0 = (65536 - 922) / 256;
	mov	_TH0,#0xfc
;	serial.c:348: TL0 = (65536 - 922) % 256;
	mov	_TL0,#0x66
;	serial.c:349: IE |= 0x82;
	mov	r6,_IE
	orl	ar6,#0x82
	mov	_IE,r6
;	serial.c:350: TMOD = 0x21;
	mov	_TMOD,#0x21
;	serial.c:351: SCON = 0x40;
	mov	_SCON,#0x40
;	serial.c:352: TH1 = 256 - 11.0592 * 1000 * 1000 / 12 / 32 / 9600 + 0.5;
	mov	_TH1,#0xfd
;	serial.c:353: TCON |= 0x40;
	mov	r6,_TCON
	orl	ar6,#0x40
	mov	_TCON,r6
;	serial.c:354: TCON |= 0x10;
	mov	r6,_TCON
	orl	ar6,#0x10
	mov	_TCON,r6
;	serial.c:355: SCON |= 0x02;
	mov	r6,_SCON
	orl	ar6,#0x02
	mov	_SCON,r6
;	serial.c:357: lcd_slave(slave1);
	mov	dpl,_slave1
	lcall	_lcd_slave
;	serial.c:358: lcd_init();
	lcall	_lcd_init
;	serial.c:359: lcd_send_cmd(0x80);
	mov	dpl,#0x80
	lcall	_lcd_send_cmd
;	serial.c:360: lcd_send_str("Hello World!    ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcd_send_str
;	serial.c:361: lcd_send_cmd(0xC0);
	mov	dpl,#0xc0
	lcall	_lcd_send_cmd
;	serial.c:362: lcd_send_str("   Bob is Great!");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcd_send_str
00125$:
;	serial.c:365: display();
	lcall	_display
;	serial.c:366: if(P3_5 == 0){
	jb	_P3_5,00109$
;	serial.c:367: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	serial.c:368: if(P3_5 == 0){
	jb	_P3_5,00109$
;	serial.c:369: while(!P3_5){display();};
00101$:
	jb	_P3_5,00103$
	lcall	_display
	sjmp	00101$
00103$:
;	serial.c:370: choice++;
	inc	_choice
	clr	a
	cjne	a,_choice,00176$
	inc	(_choice + 1)
00176$:
;	serial.c:371: P1 = 0xFF;
	mov	_P1,#0xff
;	serial.c:372: if(choice > 2){
	clr	c
	mov	a,#0x02
	subb	a,_choice
	clr	a
	subb	a,(_choice + 1)
	jnc	00109$
;	serial.c:373: choice = 0;
	clr	a
	mov	_choice,a
	mov	(_choice + 1),a
00109$:
;	serial.c:377: if(P3_3 == 0){
	jb	_P3_3,00116$
;	serial.c:378: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	serial.c:379: if(P3_3 == 0){
	jb	_P3_3,00116$
;	serial.c:380: while(!P3_3){display();};
00110$:
	jb	_P3_3,00112$
	lcall	_display
	sjmp	00110$
00112$:
;	serial.c:381: displayNum[0]++;
	mov	r6,(_displayNum + 0)
	mov	r7,(_displayNum + 1)
	inc	r6
	cjne	r6,#0x00,00181$
	inc	r7
00181$:
	mov	(_displayNum + 0),r6
	mov	(_displayNum + 1),r7
;	serial.c:382: rollOverNum();
	lcall	_rollOverNum
00116$:
;	serial.c:385: if(P3_2 == 0){
	jb	_P3_2,00123$
;	serial.c:386: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	serial.c:387: if(P3_2 == 0){
	jb	_P3_2,00123$
;	serial.c:388: while(!P3_2){display();};
00117$:
	jb	_P3_2,00119$
	lcall	_display
	sjmp	00117$
00119$:
;	serial.c:389: displayNum[0]--;
	mov	r6,(_displayNum + 0)
	mov	r7,(_displayNum + 1)
	dec	r6
	cjne	r6,#0xff,00185$
	dec	r7
00185$:
	mov	(_displayNum + 0),r6
	mov	(_displayNum + 1),r7
;	serial.c:390: rollUnderNum();
	lcall	_rollUnderNum
00123$:
;	serial.c:394: i2c_buttons();
	lcall	_i2c_buttons
;	serial.c:398: }
	ljmp	00125$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_table:
	.byte #0xc0,#0x00	; 192
	.byte #0xf9,#0x00	; 249
	.byte #0xa4,#0x00	; 164
	.byte #0xb0,#0x00	; 176
	.byte #0x99,#0x00	; 153
	.byte #0x92,#0x00	; 146
	.byte #0x82,#0x00	; 130
	.byte #0xf8,#0x00	; 248
	.byte #0x80,#0x00	; 128
	.byte #0x90,#0x00	; 144
___str_0:
	.ascii "Hello World!    "
	.db 0x00
___str_1:
	.ascii "   Bob is Great!"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
