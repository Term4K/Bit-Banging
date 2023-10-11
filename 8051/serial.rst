                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _table
                                     12 	.globl _main
                                     13 	.globl _lcd_init
                                     14 	.globl _lcd_send_str
                                     15 	.globl _lcd_send_data
                                     16 	.globl _lcd_send_cmd
                                     17 	.globl _lcd_write_byte
                                     18 	.globl _lcd_slave
                                     19 	.globl _i2c_buttons
                                     20 	.globl _i2c_read
                                     21 	.globl _i2c_write
                                     22 	.globl _i2c_ack
                                     23 	.globl _i2c_stop
                                     24 	.globl _i2c_start
                                     25 	.globl _rollOverNum
                                     26 	.globl _rollUnderNum
                                     27 	.globl _clock
                                     28 	.globl _clockinc
                                     29 	.globl _display
                                     30 	.globl _delay
                                     31 	.globl _TF2
                                     32 	.globl _EXF2
                                     33 	.globl _RCLK
                                     34 	.globl _TCLK
                                     35 	.globl _EXEN2
                                     36 	.globl _TR2
                                     37 	.globl _C_T2
                                     38 	.globl _CP_RL2
                                     39 	.globl _T2CON_7
                                     40 	.globl _T2CON_6
                                     41 	.globl _T2CON_5
                                     42 	.globl _T2CON_4
                                     43 	.globl _T2CON_3
                                     44 	.globl _T2CON_2
                                     45 	.globl _T2CON_1
                                     46 	.globl _T2CON_0
                                     47 	.globl _PT2
                                     48 	.globl _ET2
                                     49 	.globl _CY
                                     50 	.globl _AC
                                     51 	.globl _F0
                                     52 	.globl _RS1
                                     53 	.globl _RS0
                                     54 	.globl _OV
                                     55 	.globl _F1
                                     56 	.globl _P
                                     57 	.globl _PS
                                     58 	.globl _PT1
                                     59 	.globl _PX1
                                     60 	.globl _PT0
                                     61 	.globl _PX0
                                     62 	.globl _RD
                                     63 	.globl _WR
                                     64 	.globl _T1
                                     65 	.globl _T0
                                     66 	.globl _INT1
                                     67 	.globl _INT0
                                     68 	.globl _TXD
                                     69 	.globl _RXD
                                     70 	.globl _P3_7
                                     71 	.globl _P3_6
                                     72 	.globl _P3_5
                                     73 	.globl _P3_4
                                     74 	.globl _P3_3
                                     75 	.globl _P3_2
                                     76 	.globl _P3_1
                                     77 	.globl _P3_0
                                     78 	.globl _EA
                                     79 	.globl _ES
                                     80 	.globl _ET1
                                     81 	.globl _EX1
                                     82 	.globl _ET0
                                     83 	.globl _EX0
                                     84 	.globl _P2_7
                                     85 	.globl _P2_6
                                     86 	.globl _P2_5
                                     87 	.globl _P2_4
                                     88 	.globl _P2_3
                                     89 	.globl _P2_2
                                     90 	.globl _P2_1
                                     91 	.globl _P2_0
                                     92 	.globl _SM0
                                     93 	.globl _SM1
                                     94 	.globl _SM2
                                     95 	.globl _REN
                                     96 	.globl _TB8
                                     97 	.globl _RB8
                                     98 	.globl _TI
                                     99 	.globl _RI
                                    100 	.globl _P1_7
                                    101 	.globl _P1_6
                                    102 	.globl _P1_5
                                    103 	.globl _P1_4
                                    104 	.globl _P1_3
                                    105 	.globl _P1_2
                                    106 	.globl _P1_1
                                    107 	.globl _P1_0
                                    108 	.globl _TF1
                                    109 	.globl _TR1
                                    110 	.globl _TF0
                                    111 	.globl _TR0
                                    112 	.globl _IE1
                                    113 	.globl _IT1
                                    114 	.globl _IE0
                                    115 	.globl _IT0
                                    116 	.globl _P0_7
                                    117 	.globl _P0_6
                                    118 	.globl _P0_5
                                    119 	.globl _P0_4
                                    120 	.globl _P0_3
                                    121 	.globl _P0_2
                                    122 	.globl _P0_1
                                    123 	.globl _P0_0
                                    124 	.globl _TH2
                                    125 	.globl _TL2
                                    126 	.globl _RCAP2H
                                    127 	.globl _RCAP2L
                                    128 	.globl _T2CON
                                    129 	.globl _B
                                    130 	.globl _ACC
                                    131 	.globl _PSW
                                    132 	.globl _IP
                                    133 	.globl _P3
                                    134 	.globl _IE
                                    135 	.globl _P2
                                    136 	.globl _SBUF
                                    137 	.globl _SCON
                                    138 	.globl _P1
                                    139 	.globl _TH1
                                    140 	.globl _TH0
                                    141 	.globl _TL1
                                    142 	.globl _TL0
                                    143 	.globl _TMOD
                                    144 	.globl _TCON
                                    145 	.globl _PCON
                                    146 	.globl _DPH
                                    147 	.globl _DPL
                                    148 	.globl _SP
                                    149 	.globl _P0
                                    150 	.globl _slave_add
                                    151 	.globl _slave1
                                    152 	.globl _button4
                                    153 	.globl _button3
                                    154 	.globl _button2
                                    155 	.globl _button1
                                    156 	.globl _downDir
                                    157 	.globl _lDuoCycl
                                    158 	.globl _rDuoCycl
                                    159 	.globl _cyclone
                                    160 	.globl _prev
                                    161 	.globl _prevTimeCycl
                                    162 	.globl _choice
                                    163 	.globl _clockupdate
                                    164 	.globl _clocktime
                                    165 	.globl _displayNum
                                    166 	.globl _putchar
                                    167 ;--------------------------------------------------------
                                    168 ; special function registers
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0	=	0x0080
                           000081   173 _SP	=	0x0081
                           000082   174 _DPL	=	0x0082
                           000083   175 _DPH	=	0x0083
                           000087   176 _PCON	=	0x0087
                           000088   177 _TCON	=	0x0088
                           000089   178 _TMOD	=	0x0089
                           00008A   179 _TL0	=	0x008a
                           00008B   180 _TL1	=	0x008b
                           00008C   181 _TH0	=	0x008c
                           00008D   182 _TH1	=	0x008d
                           000090   183 _P1	=	0x0090
                           000098   184 _SCON	=	0x0098
                           000099   185 _SBUF	=	0x0099
                           0000A0   186 _P2	=	0x00a0
                           0000A8   187 _IE	=	0x00a8
                           0000B0   188 _P3	=	0x00b0
                           0000B8   189 _IP	=	0x00b8
                           0000D0   190 _PSW	=	0x00d0
                           0000E0   191 _ACC	=	0x00e0
                           0000F0   192 _B	=	0x00f0
                           0000C8   193 _T2CON	=	0x00c8
                           0000CA   194 _RCAP2L	=	0x00ca
                           0000CB   195 _RCAP2H	=	0x00cb
                           0000CC   196 _TL2	=	0x00cc
                           0000CD   197 _TH2	=	0x00cd
                                    198 ;--------------------------------------------------------
                                    199 ; special function bits
                                    200 ;--------------------------------------------------------
                                    201 	.area RSEG    (ABS,DATA)
      000000                        202 	.org 0x0000
                           000080   203 _P0_0	=	0x0080
                           000081   204 _P0_1	=	0x0081
                           000082   205 _P0_2	=	0x0082
                           000083   206 _P0_3	=	0x0083
                           000084   207 _P0_4	=	0x0084
                           000085   208 _P0_5	=	0x0085
                           000086   209 _P0_6	=	0x0086
                           000087   210 _P0_7	=	0x0087
                           000088   211 _IT0	=	0x0088
                           000089   212 _IE0	=	0x0089
                           00008A   213 _IT1	=	0x008a
                           00008B   214 _IE1	=	0x008b
                           00008C   215 _TR0	=	0x008c
                           00008D   216 _TF0	=	0x008d
                           00008E   217 _TR1	=	0x008e
                           00008F   218 _TF1	=	0x008f
                           000090   219 _P1_0	=	0x0090
                           000091   220 _P1_1	=	0x0091
                           000092   221 _P1_2	=	0x0092
                           000093   222 _P1_3	=	0x0093
                           000094   223 _P1_4	=	0x0094
                           000095   224 _P1_5	=	0x0095
                           000096   225 _P1_6	=	0x0096
                           000097   226 _P1_7	=	0x0097
                           000098   227 _RI	=	0x0098
                           000099   228 _TI	=	0x0099
                           00009A   229 _RB8	=	0x009a
                           00009B   230 _TB8	=	0x009b
                           00009C   231 _REN	=	0x009c
                           00009D   232 _SM2	=	0x009d
                           00009E   233 _SM1	=	0x009e
                           00009F   234 _SM0	=	0x009f
                           0000A0   235 _P2_0	=	0x00a0
                           0000A1   236 _P2_1	=	0x00a1
                           0000A2   237 _P2_2	=	0x00a2
                           0000A3   238 _P2_3	=	0x00a3
                           0000A4   239 _P2_4	=	0x00a4
                           0000A5   240 _P2_5	=	0x00a5
                           0000A6   241 _P2_6	=	0x00a6
                           0000A7   242 _P2_7	=	0x00a7
                           0000A8   243 _EX0	=	0x00a8
                           0000A9   244 _ET0	=	0x00a9
                           0000AA   245 _EX1	=	0x00aa
                           0000AB   246 _ET1	=	0x00ab
                           0000AC   247 _ES	=	0x00ac
                           0000AF   248 _EA	=	0x00af
                           0000B0   249 _P3_0	=	0x00b0
                           0000B1   250 _P3_1	=	0x00b1
                           0000B2   251 _P3_2	=	0x00b2
                           0000B3   252 _P3_3	=	0x00b3
                           0000B4   253 _P3_4	=	0x00b4
                           0000B5   254 _P3_5	=	0x00b5
                           0000B6   255 _P3_6	=	0x00b6
                           0000B7   256 _P3_7	=	0x00b7
                           0000B0   257 _RXD	=	0x00b0
                           0000B1   258 _TXD	=	0x00b1
                           0000B2   259 _INT0	=	0x00b2
                           0000B3   260 _INT1	=	0x00b3
                           0000B4   261 _T0	=	0x00b4
                           0000B5   262 _T1	=	0x00b5
                           0000B6   263 _WR	=	0x00b6
                           0000B7   264 _RD	=	0x00b7
                           0000B8   265 _PX0	=	0x00b8
                           0000B9   266 _PT0	=	0x00b9
                           0000BA   267 _PX1	=	0x00ba
                           0000BB   268 _PT1	=	0x00bb
                           0000BC   269 _PS	=	0x00bc
                           0000D0   270 _P	=	0x00d0
                           0000D1   271 _F1	=	0x00d1
                           0000D2   272 _OV	=	0x00d2
                           0000D3   273 _RS0	=	0x00d3
                           0000D4   274 _RS1	=	0x00d4
                           0000D5   275 _F0	=	0x00d5
                           0000D6   276 _AC	=	0x00d6
                           0000D7   277 _CY	=	0x00d7
                           0000AD   278 _ET2	=	0x00ad
                           0000BD   279 _PT2	=	0x00bd
                           0000C8   280 _T2CON_0	=	0x00c8
                           0000C9   281 _T2CON_1	=	0x00c9
                           0000CA   282 _T2CON_2	=	0x00ca
                           0000CB   283 _T2CON_3	=	0x00cb
                           0000CC   284 _T2CON_4	=	0x00cc
                           0000CD   285 _T2CON_5	=	0x00cd
                           0000CE   286 _T2CON_6	=	0x00ce
                           0000CF   287 _T2CON_7	=	0x00cf
                           0000C8   288 _CP_RL2	=	0x00c8
                           0000C9   289 _C_T2	=	0x00c9
                           0000CA   290 _TR2	=	0x00ca
                           0000CB   291 _EXEN2	=	0x00cb
                           0000CC   292 _TCLK	=	0x00cc
                           0000CD   293 _RCLK	=	0x00cd
                           0000CE   294 _EXF2	=	0x00ce
                           0000CF   295 _TF2	=	0x00cf
                                    296 ;--------------------------------------------------------
                                    297 ; overlayable register banks
                                    298 ;--------------------------------------------------------
                                    299 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        300 	.ds 8
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable bit register bank
                                    303 ;--------------------------------------------------------
                                    304 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        305 bits:
      000020                        306 	.ds 1
                           008000   307 	b0 = bits[0]
                           008100   308 	b1 = bits[1]
                           008200   309 	b2 = bits[2]
                           008300   310 	b3 = bits[3]
                           008400   311 	b4 = bits[4]
                           008500   312 	b5 = bits[5]
                           008600   313 	b6 = bits[6]
                           008700   314 	b7 = bits[7]
                                    315 ;--------------------------------------------------------
                                    316 ; internal ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area DSEG    (DATA)
      000021                        319 _displayNum::
      000021                        320 	.ds 8
      000029                        321 _clocktime::
      000029                        322 	.ds 4
      00002D                        323 _clockupdate::
      00002D                        324 	.ds 1
      00002E                        325 _choice::
      00002E                        326 	.ds 2
      000030                        327 _prevTimeCycl::
      000030                        328 	.ds 4
      000034                        329 _prev::
      000034                        330 	.ds 4
      000038                        331 _cyclone::
      000038                        332 	.ds 2
      00003A                        333 _rDuoCycl::
      00003A                        334 	.ds 2
      00003C                        335 _lDuoCycl::
      00003C                        336 	.ds 2
      00003E                        337 _downDir::
      00003E                        338 	.ds 1
      00003F                        339 _button1::
      00003F                        340 	.ds 1
      000040                        341 _button2::
      000040                        342 	.ds 1
      000041                        343 _button3::
      000041                        344 	.ds 1
      000042                        345 _button4::
      000042                        346 	.ds 1
      000043                        347 _slave1::
      000043                        348 	.ds 1
      000044                        349 _slave_add::
      000044                        350 	.ds 1
                                    351 ;--------------------------------------------------------
                                    352 ; overlayable items in internal ram 
                                    353 ;--------------------------------------------------------
                                    354 	.area	OSEG    (OVR,DATA)
                                    355 	.area	OSEG    (OVR,DATA)
                                    356 	.area	OSEG    (OVR,DATA)
                                    357 	.area	OSEG    (OVR,DATA)
                                    358 	.area	OSEG    (OVR,DATA)
                                    359 	.area	OSEG    (OVR,DATA)
                                    360 	.area	OSEG    (OVR,DATA)
                                    361 ;--------------------------------------------------------
                                    362 ; Stack segment in internal ram 
                                    363 ;--------------------------------------------------------
                                    364 	.area	SSEG
      000045                        365 __start__stack:
      000045                        366 	.ds	1
                                    367 
                                    368 ;--------------------------------------------------------
                                    369 ; indirectly addressable internal ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area ISEG    (DATA)
                                    372 ;--------------------------------------------------------
                                    373 ; absolute internal ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area IABS    (ABS,DATA)
                                    376 	.area IABS    (ABS,DATA)
                                    377 ;--------------------------------------------------------
                                    378 ; bit data
                                    379 ;--------------------------------------------------------
                                    380 	.area BSEG    (BIT)
                                    381 ;--------------------------------------------------------
                                    382 ; paged external ram data
                                    383 ;--------------------------------------------------------
                                    384 	.area PSEG    (PAG,XDATA)
                                    385 ;--------------------------------------------------------
                                    386 ; external ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area XSEG    (XDATA)
                                    389 ;--------------------------------------------------------
                                    390 ; absolute external ram data
                                    391 ;--------------------------------------------------------
                                    392 	.area XABS    (ABS,XDATA)
                                    393 ;--------------------------------------------------------
                                    394 ; external initialized ram data
                                    395 ;--------------------------------------------------------
                                    396 	.area XISEG   (XDATA)
                                    397 	.area HOME    (CODE)
                                    398 	.area GSINIT0 (CODE)
                                    399 	.area GSINIT1 (CODE)
                                    400 	.area GSINIT2 (CODE)
                                    401 	.area GSINIT3 (CODE)
                                    402 	.area GSINIT4 (CODE)
                                    403 	.area GSINIT5 (CODE)
                                    404 	.area GSINIT  (CODE)
                                    405 	.area GSFINAL (CODE)
                                    406 	.area CSEG    (CODE)
                                    407 ;--------------------------------------------------------
                                    408 ; interrupt vector 
                                    409 ;--------------------------------------------------------
                                    410 	.area HOME    (CODE)
      000000                        411 __interrupt_vect:
      000000 02 00 11         [24]  412 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  413 	reti
      000004                        414 	.ds	7
      00000B 02 01 58         [24]  415 	ljmp	_clockinc
                                    416 ;--------------------------------------------------------
                                    417 ; global & static initialisations
                                    418 ;--------------------------------------------------------
                                    419 	.area HOME    (CODE)
                                    420 	.area GSINIT  (CODE)
                                    421 	.area GSFINAL (CODE)
                                    422 	.area GSINIT  (CODE)
                                    423 	.globl __sdcc_gsinit_startup
                                    424 	.globl __sdcc_program_startup
                                    425 	.globl __start__stack
                                    426 	.globl __mcs51_genXINIT
                                    427 	.globl __mcs51_genXRAMCLEAR
                                    428 	.globl __mcs51_genRAMCLEAR
                                    429 ;	serial.c:10: int displayNum[] = {0, 0, 0, 0};
      00006A E4               [12]  430 	clr	a
      00006B F5 21            [12]  431 	mov	(_displayNum + 0),a
      00006D F5 22            [12]  432 	mov	(_displayNum + 1),a
      00006F F5 23            [12]  433 	mov	((_displayNum + 0x0002) + 0),a
      000071 F5 24            [12]  434 	mov	((_displayNum + 0x0002) + 1),a
      000073 F5 25            [12]  435 	mov	((_displayNum + 0x0004) + 0),a
      000075 F5 26            [12]  436 	mov	((_displayNum + 0x0004) + 1),a
      000077 F5 27            [12]  437 	mov	((_displayNum + 0x0006) + 0),a
      000079 F5 28            [12]  438 	mov	((_displayNum + 0x0006) + 1),a
                                    439 ;	serial.c:14: unsigned int choice = 0;
      00007B F5 2E            [12]  440 	mov	_choice,a
      00007D F5 2F            [12]  441 	mov	(_choice + 1),a
                                    442 ;	serial.c:15: unsigned long int prevTimeCycl = 0;
      00007F F5 30            [12]  443 	mov	_prevTimeCycl,a
      000081 F5 31            [12]  444 	mov	(_prevTimeCycl + 1),a
      000083 F5 32            [12]  445 	mov	(_prevTimeCycl + 2),a
      000085 F5 33            [12]  446 	mov	(_prevTimeCycl + 3),a
                                    447 ;	serial.c:16: unsigned long int prev = 0;
      000087 F5 34            [12]  448 	mov	_prev,a
      000089 F5 35            [12]  449 	mov	(_prev + 1),a
      00008B F5 36            [12]  450 	mov	(_prev + 2),a
      00008D F5 37            [12]  451 	mov	(_prev + 3),a
                                    452 ;	serial.c:17: unsigned int cyclone = 0x03;
      00008F 75 38 03         [24]  453 	mov	_cyclone,#0x03
                                    454 ;	1-genFromRTrack replaced	mov	(_cyclone + 1),#0x00
      000092 F5 39            [12]  455 	mov	(_cyclone + 1),a
                                    456 ;	serial.c:18: unsigned int rDuoCycl = 0x03;
      000094 75 3A 03         [24]  457 	mov	_rDuoCycl,#0x03
                                    458 ;	1-genFromRTrack replaced	mov	(_rDuoCycl + 1),#0x00
      000097 F5 3B            [12]  459 	mov	(_rDuoCycl + 1),a
                                    460 ;	serial.c:19: unsigned int lDuoCycl = 0xC0;
      000099 75 3C C0         [24]  461 	mov	_lDuoCycl,#0xc0
                                    462 ;	1-genFromRTrack replaced	mov	(_lDuoCycl + 1),#0x00
      00009C F5 3D            [12]  463 	mov	(_lDuoCycl + 1),a
                                    464 ;	serial.c:20: volatile _Bool downDir = true;
      00009E 75 3E 01         [24]  465 	mov	_downDir,#0x01
                                    466 ;	serial.c:21: unsigned char button1 = 0;
                                    467 ;	1-genFromRTrack replaced	mov	_button1,#0x00
      0000A1 F5 3F            [12]  468 	mov	_button1,a
                                    469 ;	serial.c:22: unsigned char button2 = 0;
                                    470 ;	1-genFromRTrack replaced	mov	_button2,#0x00
      0000A3 F5 40            [12]  471 	mov	_button2,a
                                    472 ;	serial.c:23: unsigned char button3 = 0;
                                    473 ;	1-genFromRTrack replaced	mov	_button3,#0x00
      0000A5 F5 41            [12]  474 	mov	_button3,a
                                    475 ;	serial.c:24: unsigned char button4 = 0;
                                    476 ;	1-genFromRTrack replaced	mov	_button4,#0x00
      0000A7 F5 42            [12]  477 	mov	_button4,a
                                    478 ;	serial.c:25: unsigned char slave1=0x4E;
      0000A9 75 43 4E         [24]  479 	mov	_slave1,#0x4e
                                    480 	.area GSFINAL (CODE)
      0000AC 02 00 0E         [24]  481 	ljmp	__sdcc_program_startup
                                    482 ;--------------------------------------------------------
                                    483 ; Home
                                    484 ;--------------------------------------------------------
                                    485 	.area HOME    (CODE)
                                    486 	.area HOME    (CODE)
      00000E                        487 __sdcc_program_startup:
      00000E 02 07 40         [24]  488 	ljmp	_main
                                    489 ;	return from main will return to caller
                                    490 ;--------------------------------------------------------
                                    491 ; code
                                    492 ;--------------------------------------------------------
                                    493 	.area CSEG    (CODE)
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'delay'
                                    496 ;------------------------------------------------------------
                                    497 ;i                         Allocated to registers 
                                    498 ;j                         Allocated to registers r6 r7 
                                    499 ;k                         Allocated to registers r4 r5 
                                    500 ;------------------------------------------------------------
                                    501 ;	serial.c:28: void delay(unsigned int i){
                                    502 ;	-----------------------------------------
                                    503 ;	 function delay
                                    504 ;	-----------------------------------------
      0000AF                        505 _delay:
                           000007   506 	ar7 = 0x07
                           000006   507 	ar6 = 0x06
                           000005   508 	ar5 = 0x05
                           000004   509 	ar4 = 0x04
                           000003   510 	ar3 = 0x03
                           000002   511 	ar2 = 0x02
                           000001   512 	ar1 = 0x01
                           000000   513 	ar0 = 0x00
      0000AF AE 82            [24]  514 	mov	r6,dpl
      0000B1 AF 83            [24]  515 	mov	r7,dph
                                    516 ;	serial.c:31: for(j = i; j > 0; j--)
      0000B3                        517 00106$:
      0000B3 EE               [12]  518 	mov	a,r6
      0000B4 4F               [12]  519 	orl	a,r7
      0000B5 60 1B            [24]  520 	jz	00108$
                                    521 ;	serial.c:32: for(k = 125; k > 0; k--);
      0000B7 7C 7D            [12]  522 	mov	r4,#0x7d
      0000B9 7D 00            [12]  523 	mov	r5,#0x00
      0000BB                        524 00104$:
      0000BB EC               [12]  525 	mov	a,r4
      0000BC 24 FF            [12]  526 	add	a,#0xff
      0000BE FA               [12]  527 	mov	r2,a
      0000BF ED               [12]  528 	mov	a,r5
      0000C0 34 FF            [12]  529 	addc	a,#0xff
      0000C2 FB               [12]  530 	mov	r3,a
      0000C3 8A 04            [24]  531 	mov	ar4,r2
      0000C5 8B 05            [24]  532 	mov	ar5,r3
      0000C7 EA               [12]  533 	mov	a,r2
      0000C8 4B               [12]  534 	orl	a,r3
      0000C9 70 F0            [24]  535 	jnz	00104$
                                    536 ;	serial.c:31: for(j = i; j > 0; j--)
      0000CB 1E               [12]  537 	dec	r6
      0000CC BE FF 01         [24]  538 	cjne	r6,#0xff,00133$
      0000CF 1F               [12]  539 	dec	r7
      0000D0                        540 00133$:
      0000D0 80 E1            [24]  541 	sjmp	00106$
      0000D2                        542 00108$:
                                    543 ;	serial.c:33: }
      0000D2 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'display'
                                    547 ;------------------------------------------------------------
                                    548 ;	serial.c:35: void display(void){
                                    549 ;	-----------------------------------------
                                    550 ;	 function display
                                    551 ;	-----------------------------------------
      0000D3                        552 _display:
                                    553 ;	serial.c:36: P0 = table[displayNum[3]];
      0000D3 E5 27            [12]  554 	mov	a,(_displayNum + 0x0006)
      0000D5 25 E0            [12]  555 	add	a,acc
      0000D7 FE               [12]  556 	mov	r6,a
      0000D8 E5 28            [12]  557 	mov	a,((_displayNum + 0x0006) + 1)
      0000DA 33               [12]  558 	rlc	a
      0000DB FF               [12]  559 	mov	r7,a
      0000DC EE               [12]  560 	mov	a,r6
      0000DD 24 96            [12]  561 	add	a,#_table
      0000DF F5 82            [12]  562 	mov	dpl,a
      0000E1 EF               [12]  563 	mov	a,r7
      0000E2 34 08            [12]  564 	addc	a,#(_table >> 8)
      0000E4 F5 83            [12]  565 	mov	dph,a
      0000E6 E4               [12]  566 	clr	a
      0000E7 93               [24]  567 	movc	a,@a+dptr
      0000E8 F5 80            [12]  568 	mov	_P0,a
                                    569 ;	serial.c:37: P2_0 = 0;
                                    570 ;	assignBit
      0000EA C2 A0            [12]  571 	clr	_P2_0
                                    572 ;	serial.c:38: delay(2);
      0000EC 90 00 02         [24]  573 	mov	dptr,#0x0002
      0000EF 12 00 AF         [24]  574 	lcall	_delay
                                    575 ;	serial.c:39: P2_0 = 1;
                                    576 ;	assignBit
      0000F2 D2 A0            [12]  577 	setb	_P2_0
                                    578 ;	serial.c:41: P0 = table[displayNum[2]];
      0000F4 E5 25            [12]  579 	mov	a,(_displayNum + 0x0004)
      0000F6 25 E0            [12]  580 	add	a,acc
      0000F8 FE               [12]  581 	mov	r6,a
      0000F9 E5 26            [12]  582 	mov	a,((_displayNum + 0x0004) + 1)
      0000FB 33               [12]  583 	rlc	a
      0000FC FF               [12]  584 	mov	r7,a
      0000FD EE               [12]  585 	mov	a,r6
      0000FE 24 96            [12]  586 	add	a,#_table
      000100 F5 82            [12]  587 	mov	dpl,a
      000102 EF               [12]  588 	mov	a,r7
      000103 34 08            [12]  589 	addc	a,#(_table >> 8)
      000105 F5 83            [12]  590 	mov	dph,a
      000107 E4               [12]  591 	clr	a
      000108 93               [24]  592 	movc	a,@a+dptr
      000109 F5 80            [12]  593 	mov	_P0,a
                                    594 ;	serial.c:42: P2_1 = 0;
                                    595 ;	assignBit
      00010B C2 A1            [12]  596 	clr	_P2_1
                                    597 ;	serial.c:43: delay(2);
      00010D 90 00 02         [24]  598 	mov	dptr,#0x0002
      000110 12 00 AF         [24]  599 	lcall	_delay
                                    600 ;	serial.c:44: P2_1 = 1;
                                    601 ;	assignBit
      000113 D2 A1            [12]  602 	setb	_P2_1
                                    603 ;	serial.c:46: P0 = table[displayNum[1]];
      000115 E5 23            [12]  604 	mov	a,(_displayNum + 0x0002)
      000117 25 E0            [12]  605 	add	a,acc
      000119 FE               [12]  606 	mov	r6,a
      00011A E5 24            [12]  607 	mov	a,((_displayNum + 0x0002) + 1)
      00011C 33               [12]  608 	rlc	a
      00011D FF               [12]  609 	mov	r7,a
      00011E EE               [12]  610 	mov	a,r6
      00011F 24 96            [12]  611 	add	a,#_table
      000121 F5 82            [12]  612 	mov	dpl,a
      000123 EF               [12]  613 	mov	a,r7
      000124 34 08            [12]  614 	addc	a,#(_table >> 8)
      000126 F5 83            [12]  615 	mov	dph,a
      000128 E4               [12]  616 	clr	a
      000129 93               [24]  617 	movc	a,@a+dptr
      00012A F5 80            [12]  618 	mov	_P0,a
                                    619 ;	serial.c:47: P2_2 = 0;
                                    620 ;	assignBit
      00012C C2 A2            [12]  621 	clr	_P2_2
                                    622 ;	serial.c:48: delay(2);
      00012E 90 00 02         [24]  623 	mov	dptr,#0x0002
      000131 12 00 AF         [24]  624 	lcall	_delay
                                    625 ;	serial.c:49: P2_2 = 1;
                                    626 ;	assignBit
      000134 D2 A2            [12]  627 	setb	_P2_2
                                    628 ;	serial.c:51: P0 = table[displayNum[0]];
      000136 E5 21            [12]  629 	mov	a,_displayNum
      000138 25 21            [12]  630 	add	a,_displayNum
      00013A FE               [12]  631 	mov	r6,a
      00013B E5 22            [12]  632 	mov	a,(_displayNum + 1)
      00013D 33               [12]  633 	rlc	a
      00013E FF               [12]  634 	mov	r7,a
      00013F EE               [12]  635 	mov	a,r6
      000140 24 96            [12]  636 	add	a,#_table
      000142 F5 82            [12]  637 	mov	dpl,a
      000144 EF               [12]  638 	mov	a,r7
      000145 34 08            [12]  639 	addc	a,#(_table >> 8)
      000147 F5 83            [12]  640 	mov	dph,a
      000149 E4               [12]  641 	clr	a
      00014A 93               [24]  642 	movc	a,@a+dptr
      00014B F5 80            [12]  643 	mov	_P0,a
                                    644 ;	serial.c:52: P2_3 = 0;
                                    645 ;	assignBit
      00014D C2 A3            [12]  646 	clr	_P2_3
                                    647 ;	serial.c:53: delay(2);
      00014F 90 00 02         [24]  648 	mov	dptr,#0x0002
      000152 12 00 AF         [24]  649 	lcall	_delay
                                    650 ;	serial.c:54: P2_3 = 1;
                                    651 ;	assignBit
      000155 D2 A3            [12]  652 	setb	_P2_3
                                    653 ;	serial.c:55: }
      000157 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'clockinc'
                                    657 ;------------------------------------------------------------
                                    658 ;i                         Allocated to registers 
                                    659 ;------------------------------------------------------------
                                    660 ;	serial.c:57: void clockinc(void) __interrupt(1)
                                    661 ;	-----------------------------------------
                                    662 ;	 function clockinc
                                    663 ;	-----------------------------------------
      000158                        664 _clockinc:
      000158 C0 20            [24]  665 	push	bits
      00015A C0 E0            [24]  666 	push	acc
      00015C C0 F0            [24]  667 	push	b
      00015E C0 82            [24]  668 	push	dpl
      000160 C0 83            [24]  669 	push	dph
      000162 C0 07            [24]  670 	push	(0+7)
      000164 C0 06            [24]  671 	push	(0+6)
      000166 C0 05            [24]  672 	push	(0+5)
      000168 C0 04            [24]  673 	push	(0+4)
      00016A C0 03            [24]  674 	push	(0+3)
      00016C C0 02            [24]  675 	push	(0+2)
      00016E C0 01            [24]  676 	push	(0+1)
      000170 C0 00            [24]  677 	push	(0+0)
      000172 C0 D0            [24]  678 	push	psw
      000174 75 D0 00         [24]  679 	mov	psw,#0x00
                                    680 ;	serial.c:60: TH0 = (65536 - 922) / 256;
      000177 75 8C FC         [24]  681 	mov	_TH0,#0xfc
                                    682 ;	serial.c:61: TL0 = (65536 - 922) % 256;
      00017A 75 8A 66         [24]  683 	mov	_TL0,#0x66
                                    684 ;	serial.c:62: clocktime++;
      00017D 74 01            [12]  685 	mov	a,#0x01
      00017F 25 29            [12]  686 	add	a,_clocktime
      000181 F5 29            [12]  687 	mov	_clocktime,a
      000183 E4               [12]  688 	clr	a
      000184 35 2A            [12]  689 	addc	a,(_clocktime + 1)
      000186 F5 2A            [12]  690 	mov	(_clocktime + 1),a
      000188 E4               [12]  691 	clr	a
      000189 35 2B            [12]  692 	addc	a,(_clocktime + 2)
      00018B F5 2B            [12]  693 	mov	(_clocktime + 2),a
      00018D E4               [12]  694 	clr	a
      00018E 35 2C            [12]  695 	addc	a,(_clocktime + 3)
      000190 F5 2C            [12]  696 	mov	(_clocktime + 3),a
                                    697 ;	serial.c:63: clockupdate = true;
      000192 75 2D 01         [24]  698 	mov	_clockupdate,#0x01
                                    699 ;	serial.c:65: switch(choice){
      000195 E4               [12]  700 	clr	a
      000196 B5 2E 05         [24]  701 	cjne	a,_choice,00179$
      000199 B5 2F 02         [24]  702 	cjne	a,(_choice + 1),00179$
      00019C 80 1A            [24]  703 	sjmp	00101$
      00019E                        704 00179$:
      00019E 74 01            [12]  705 	mov	a,#0x01
      0001A0 B5 2E 06         [24]  706 	cjne	a,_choice,00180$
      0001A3 14               [12]  707 	dec	a
      0001A4 B5 2F 02         [24]  708 	cjne	a,(_choice + 1),00180$
      0001A7 80 67            [24]  709 	sjmp	00104$
      0001A9                        710 00180$:
      0001A9 74 02            [12]  711 	mov	a,#0x02
      0001AB B5 2E 07         [24]  712 	cjne	a,_choice,00181$
      0001AE E4               [12]  713 	clr	a
      0001AF B5 2F 03         [24]  714 	cjne	a,(_choice + 1),00181$
      0001B2 02 02 A9         [24]  715 	ljmp	00116$
      0001B5                        716 00181$:
      0001B5 02 03 78         [24]  717 	ljmp	00129$
                                    718 ;	serial.c:66: case 0:
      0001B8                        719 00101$:
                                    720 ;	serial.c:67: if((clocktime - prev) > 500){
      0001B8 E5 29            [12]  721 	mov	a,_clocktime
      0001BA C3               [12]  722 	clr	c
      0001BB 95 34            [12]  723 	subb	a,_prev
      0001BD FC               [12]  724 	mov	r4,a
      0001BE E5 2A            [12]  725 	mov	a,(_clocktime + 1)
      0001C0 95 35            [12]  726 	subb	a,(_prev + 1)
      0001C2 FD               [12]  727 	mov	r5,a
      0001C3 E5 2B            [12]  728 	mov	a,(_clocktime + 2)
      0001C5 95 36            [12]  729 	subb	a,(_prev + 2)
      0001C7 FE               [12]  730 	mov	r6,a
      0001C8 E5 2C            [12]  731 	mov	a,(_clocktime + 3)
      0001CA 95 37            [12]  732 	subb	a,(_prev + 3)
      0001CC FF               [12]  733 	mov	r7,a
      0001CD C3               [12]  734 	clr	c
      0001CE 74 F4            [12]  735 	mov	a,#0xf4
      0001D0 9C               [12]  736 	subb	a,r4
      0001D1 74 01            [12]  737 	mov	a,#0x01
      0001D3 9D               [12]  738 	subb	a,r5
      0001D4 E4               [12]  739 	clr	a
      0001D5 9E               [12]  740 	subb	a,r6
      0001D6 E4               [12]  741 	clr	a
      0001D7 9F               [12]  742 	subb	a,r7
      0001D8 40 03            [24]  743 	jc	00182$
      0001DA 02 03 78         [24]  744 	ljmp	00129$
      0001DD                        745 00182$:
                                    746 ;	serial.c:68: prev = clocktime;
      0001DD 85 29 34         [24]  747 	mov	_prev,_clocktime
      0001E0 85 2A 35         [24]  748 	mov	(_prev + 1),(_clocktime + 1)
      0001E3 85 2B 36         [24]  749 	mov	(_prev + 2),(_clocktime + 2)
      0001E6 85 2C 37         [24]  750 	mov	(_prev + 3),(_clocktime + 3)
                                    751 ;	serial.c:69: P1 = ~(clocktime/500) & 0xFF;
      0001E9 75 08 F4         [24]  752 	mov	__divulong_PARM_2,#0xf4
      0001EC 75 09 01         [24]  753 	mov	(__divulong_PARM_2 + 1),#0x01
      0001EF E4               [12]  754 	clr	a
      0001F0 F5 0A            [12]  755 	mov	(__divulong_PARM_2 + 2),a
      0001F2 F5 0B            [12]  756 	mov	(__divulong_PARM_2 + 3),a
      0001F4 85 29 82         [24]  757 	mov	dpl,_clocktime
      0001F7 85 2A 83         [24]  758 	mov	dph,(_clocktime + 1)
      0001FA 85 2B F0         [24]  759 	mov	b,(_clocktime + 2)
      0001FD E5 2C            [12]  760 	mov	a,(_clocktime + 3)
      0001FF 12 08 11         [24]  761 	lcall	__divulong
      000202 AC 82            [24]  762 	mov	r4,dpl
      000204 AD 83            [24]  763 	mov	r5,dph
      000206 AE F0            [24]  764 	mov	r6,b
      000208 FF               [12]  765 	mov	r7,a
      000209 EC               [12]  766 	mov	a,r4
      00020A F4               [12]  767 	cpl	a
      00020B F5 90            [12]  768 	mov	_P1,a
                                    769 ;	serial.c:71: break;
      00020D 02 03 78         [24]  770 	ljmp	00129$
                                    771 ;	serial.c:72: case 1:
      000210                        772 00104$:
                                    773 ;	serial.c:73: if((clocktime - prevTimeCycl) > 500){
      000210 E5 29            [12]  774 	mov	a,_clocktime
      000212 C3               [12]  775 	clr	c
      000213 95 30            [12]  776 	subb	a,_prevTimeCycl
      000215 FC               [12]  777 	mov	r4,a
      000216 E5 2A            [12]  778 	mov	a,(_clocktime + 1)
      000218 95 31            [12]  779 	subb	a,(_prevTimeCycl + 1)
      00021A FD               [12]  780 	mov	r5,a
      00021B E5 2B            [12]  781 	mov	a,(_clocktime + 2)
      00021D 95 32            [12]  782 	subb	a,(_prevTimeCycl + 2)
      00021F FE               [12]  783 	mov	r6,a
      000220 E5 2C            [12]  784 	mov	a,(_clocktime + 3)
      000222 95 33            [12]  785 	subb	a,(_prevTimeCycl + 3)
      000224 FF               [12]  786 	mov	r7,a
      000225 C3               [12]  787 	clr	c
      000226 74 F4            [12]  788 	mov	a,#0xf4
      000228 9C               [12]  789 	subb	a,r4
      000229 74 01            [12]  790 	mov	a,#0x01
      00022B 9D               [12]  791 	subb	a,r5
      00022C E4               [12]  792 	clr	a
      00022D 9E               [12]  793 	subb	a,r6
      00022E E4               [12]  794 	clr	a
      00022F 9F               [12]  795 	subb	a,r7
      000230 40 03            [24]  796 	jc	00183$
      000232 02 03 78         [24]  797 	ljmp	00129$
      000235                        798 00183$:
                                    799 ;	serial.c:74: prevTimeCycl = clocktime;
      000235 85 29 30         [24]  800 	mov	_prevTimeCycl,_clocktime
      000238 85 2A 31         [24]  801 	mov	(_prevTimeCycl + 1),(_clocktime + 1)
      00023B 85 2B 32         [24]  802 	mov	(_prevTimeCycl + 2),(_clocktime + 2)
      00023E 85 2C 33         [24]  803 	mov	(_prevTimeCycl + 3),(_clocktime + 3)
                                    804 ;	serial.c:75: if(downDir){
      000241 E5 3E            [12]  805 	mov	a,_downDir
      000243 60 32            [24]  806 	jz	00112$
                                    807 ;	serial.c:76: P1 = ~cyclone & 0xFF;
      000245 E5 38            [12]  808 	mov	a,_cyclone
      000247 FF               [12]  809 	mov	r7,a
      000248 F4               [12]  810 	cpl	a
      000249 F5 90            [12]  811 	mov	_P1,a
                                    812 ;	serial.c:77: if(cyclone == 0xC0){
      00024B 74 C0            [12]  813 	mov	a,#0xc0
      00024D B5 38 06         [24]  814 	cjne	a,_cyclone,00185$
      000250 E4               [12]  815 	clr	a
      000251 B5 39 02         [24]  816 	cjne	a,(_cyclone + 1),00185$
      000254 80 02            [24]  817 	sjmp	00186$
      000256                        818 00185$:
      000256 80 11            [24]  819 	sjmp	00106$
      000258                        820 00186$:
                                    821 ;	serial.c:78: downDir = false;
      000258 75 3E 00         [24]  822 	mov	_downDir,#0x00
                                    823 ;	serial.c:79: cyclone = cyclone >> 1;
      00025B E5 39            [12]  824 	mov	a,(_cyclone + 1)
      00025D C3               [12]  825 	clr	c
      00025E 13               [12]  826 	rrc	a
      00025F C5 38            [12]  827 	xch	a,_cyclone
      000261 13               [12]  828 	rrc	a
      000262 C5 38            [12]  829 	xch	a,_cyclone
      000264 F5 39            [12]  830 	mov	(_cyclone + 1),a
      000266 02 03 78         [24]  831 	ljmp	00129$
      000269                        832 00106$:
                                    833 ;	serial.c:81: cyclone = cyclone << 1;
      000269 E5 38            [12]  834 	mov	a,_cyclone
      00026B 25 38            [12]  835 	add	a,_cyclone
      00026D F5 38            [12]  836 	mov	_cyclone,a
      00026F E5 39            [12]  837 	mov	a,(_cyclone + 1)
      000271 33               [12]  838 	rlc	a
      000272 F5 39            [12]  839 	mov	(_cyclone + 1),a
      000274 02 03 78         [24]  840 	ljmp	00129$
      000277                        841 00112$:
                                    842 ;	serial.c:84: P1 = ~cyclone & 0xFF;
      000277 E5 38            [12]  843 	mov	a,_cyclone
      000279 FF               [12]  844 	mov	r7,a
      00027A F4               [12]  845 	cpl	a
      00027B F5 90            [12]  846 	mov	_P1,a
                                    847 ;	serial.c:85: if(cyclone == 0x03){
      00027D 74 03            [12]  848 	mov	a,#0x03
      00027F B5 38 06         [24]  849 	cjne	a,_cyclone,00187$
      000282 E4               [12]  850 	clr	a
      000283 B5 39 02         [24]  851 	cjne	a,(_cyclone + 1),00187$
      000286 80 02            [24]  852 	sjmp	00188$
      000288                        853 00187$:
      000288 80 11            [24]  854 	sjmp	00109$
      00028A                        855 00188$:
                                    856 ;	serial.c:86: downDir = true;
      00028A 75 3E 01         [24]  857 	mov	_downDir,#0x01
                                    858 ;	serial.c:87: cyclone = cyclone << 1;
      00028D E5 38            [12]  859 	mov	a,_cyclone
      00028F 25 38            [12]  860 	add	a,_cyclone
      000291 F5 38            [12]  861 	mov	_cyclone,a
      000293 E5 39            [12]  862 	mov	a,(_cyclone + 1)
      000295 33               [12]  863 	rlc	a
      000296 F5 39            [12]  864 	mov	(_cyclone + 1),a
      000298 02 03 78         [24]  865 	ljmp	00129$
      00029B                        866 00109$:
                                    867 ;	serial.c:89: cyclone = cyclone >> 1;
      00029B E5 39            [12]  868 	mov	a,(_cyclone + 1)
      00029D C3               [12]  869 	clr	c
      00029E 13               [12]  870 	rrc	a
      00029F C5 38            [12]  871 	xch	a,_cyclone
      0002A1 13               [12]  872 	rrc	a
      0002A2 C5 38            [12]  873 	xch	a,_cyclone
      0002A4 F5 39            [12]  874 	mov	(_cyclone + 1),a
                                    875 ;	serial.c:94: break;
      0002A6 02 03 78         [24]  876 	ljmp	00129$
                                    877 ;	serial.c:95: case 2:
      0002A9                        878 00116$:
                                    879 ;	serial.c:96: if((clocktime - prevTimeCycl) > 500){
      0002A9 E5 29            [12]  880 	mov	a,_clocktime
      0002AB C3               [12]  881 	clr	c
      0002AC 95 30            [12]  882 	subb	a,_prevTimeCycl
      0002AE FC               [12]  883 	mov	r4,a
      0002AF E5 2A            [12]  884 	mov	a,(_clocktime + 1)
      0002B1 95 31            [12]  885 	subb	a,(_prevTimeCycl + 1)
      0002B3 FD               [12]  886 	mov	r5,a
      0002B4 E5 2B            [12]  887 	mov	a,(_clocktime + 2)
      0002B6 95 32            [12]  888 	subb	a,(_prevTimeCycl + 2)
      0002B8 FE               [12]  889 	mov	r6,a
      0002B9 E5 2C            [12]  890 	mov	a,(_clocktime + 3)
      0002BB 95 33            [12]  891 	subb	a,(_prevTimeCycl + 3)
      0002BD FF               [12]  892 	mov	r7,a
      0002BE C3               [12]  893 	clr	c
      0002BF 74 F4            [12]  894 	mov	a,#0xf4
      0002C1 9C               [12]  895 	subb	a,r4
      0002C2 74 01            [12]  896 	mov	a,#0x01
      0002C4 9D               [12]  897 	subb	a,r5
      0002C5 E4               [12]  898 	clr	a
      0002C6 9E               [12]  899 	subb	a,r6
      0002C7 E4               [12]  900 	clr	a
      0002C8 9F               [12]  901 	subb	a,r7
      0002C9 40 03            [24]  902 	jc	00189$
      0002CB 02 03 78         [24]  903 	ljmp	00129$
      0002CE                        904 00189$:
                                    905 ;	serial.c:97: prevTimeCycl = clocktime;
      0002CE 85 29 30         [24]  906 	mov	_prevTimeCycl,_clocktime
      0002D1 85 2A 31         [24]  907 	mov	(_prevTimeCycl + 1),(_clocktime + 1)
      0002D4 85 2B 32         [24]  908 	mov	(_prevTimeCycl + 2),(_clocktime + 2)
      0002D7 85 2C 33         [24]  909 	mov	(_prevTimeCycl + 3),(_clocktime + 3)
                                    910 ;	serial.c:98: if(downDir){
      0002DA E5 3E            [12]  911 	mov	a,_downDir
      0002DC 60 4E            [24]  912 	jz	00124$
                                    913 ;	serial.c:99: P1 = ~(rDuoCycl | lDuoCycl) & 0xFF;
      0002DE E5 3C            [12]  914 	mov	a,_lDuoCycl
      0002E0 45 3A            [12]  915 	orl	a,_rDuoCycl
      0002E2 FE               [12]  916 	mov	r6,a
      0002E3 E5 3D            [12]  917 	mov	a,(_lDuoCycl + 1)
      0002E5 45 3B            [12]  918 	orl	a,(_rDuoCycl + 1)
      0002E7 FF               [12]  919 	mov	r7,a
      0002E8 EE               [12]  920 	mov	a,r6
      0002E9 F4               [12]  921 	cpl	a
      0002EA F5 90            [12]  922 	mov	_P1,a
                                    923 ;	serial.c:100: if(rDuoCycl == 0xC0){
      0002EC 74 C0            [12]  924 	mov	a,#0xc0
      0002EE B5 3A 06         [24]  925 	cjne	a,_rDuoCycl,00191$
      0002F1 E4               [12]  926 	clr	a
      0002F2 B5 3B 02         [24]  927 	cjne	a,(_rDuoCycl + 1),00191$
      0002F5 80 02            [24]  928 	sjmp	00192$
      0002F7                        929 00191$:
      0002F7 80 1B            [24]  930 	sjmp	00118$
      0002F9                        931 00192$:
                                    932 ;	serial.c:101: downDir = false;
      0002F9 75 3E 00         [24]  933 	mov	_downDir,#0x00
                                    934 ;	serial.c:102: rDuoCycl = rDuoCycl >> 1;
      0002FC E5 3B            [12]  935 	mov	a,(_rDuoCycl + 1)
      0002FE C3               [12]  936 	clr	c
      0002FF 13               [12]  937 	rrc	a
      000300 C5 3A            [12]  938 	xch	a,_rDuoCycl
      000302 13               [12]  939 	rrc	a
      000303 C5 3A            [12]  940 	xch	a,_rDuoCycl
      000305 F5 3B            [12]  941 	mov	(_rDuoCycl + 1),a
                                    942 ;	serial.c:103: lDuoCycl = lDuoCycl << 1;
      000307 E5 3C            [12]  943 	mov	a,_lDuoCycl
      000309 25 3C            [12]  944 	add	a,_lDuoCycl
      00030B F5 3C            [12]  945 	mov	_lDuoCycl,a
      00030D E5 3D            [12]  946 	mov	a,(_lDuoCycl + 1)
      00030F 33               [12]  947 	rlc	a
      000310 F5 3D            [12]  948 	mov	(_lDuoCycl + 1),a
      000312 80 64            [24]  949 	sjmp	00129$
      000314                        950 00118$:
                                    951 ;	serial.c:105: rDuoCycl = rDuoCycl << 1;
      000314 E5 3A            [12]  952 	mov	a,_rDuoCycl
      000316 25 3A            [12]  953 	add	a,_rDuoCycl
      000318 F5 3A            [12]  954 	mov	_rDuoCycl,a
      00031A E5 3B            [12]  955 	mov	a,(_rDuoCycl + 1)
      00031C 33               [12]  956 	rlc	a
      00031D F5 3B            [12]  957 	mov	(_rDuoCycl + 1),a
                                    958 ;	serial.c:106: lDuoCycl = lDuoCycl >> 1;
      00031F E5 3D            [12]  959 	mov	a,(_lDuoCycl + 1)
      000321 C3               [12]  960 	clr	c
      000322 13               [12]  961 	rrc	a
      000323 C5 3C            [12]  962 	xch	a,_lDuoCycl
      000325 13               [12]  963 	rrc	a
      000326 C5 3C            [12]  964 	xch	a,_lDuoCycl
      000328 F5 3D            [12]  965 	mov	(_lDuoCycl + 1),a
      00032A 80 4C            [24]  966 	sjmp	00129$
      00032C                        967 00124$:
                                    968 ;	serial.c:109: P1 = ~(rDuoCycl | lDuoCycl) & 0xFF;
      00032C E5 3C            [12]  969 	mov	a,_lDuoCycl
      00032E 45 3A            [12]  970 	orl	a,_rDuoCycl
      000330 FE               [12]  971 	mov	r6,a
      000331 E5 3D            [12]  972 	mov	a,(_lDuoCycl + 1)
      000333 45 3B            [12]  973 	orl	a,(_rDuoCycl + 1)
      000335 FF               [12]  974 	mov	r7,a
      000336 EE               [12]  975 	mov	a,r6
      000337 F4               [12]  976 	cpl	a
      000338 F5 90            [12]  977 	mov	_P1,a
                                    978 ;	serial.c:110: if(rDuoCycl == 0x03){
      00033A 74 03            [12]  979 	mov	a,#0x03
      00033C B5 3A 06         [24]  980 	cjne	a,_rDuoCycl,00193$
      00033F E4               [12]  981 	clr	a
      000340 B5 3B 02         [24]  982 	cjne	a,(_rDuoCycl + 1),00193$
      000343 80 02            [24]  983 	sjmp	00194$
      000345                        984 00193$:
      000345 80 1B            [24]  985 	sjmp	00121$
      000347                        986 00194$:
                                    987 ;	serial.c:111: downDir = true;
      000347 75 3E 01         [24]  988 	mov	_downDir,#0x01
                                    989 ;	serial.c:112: rDuoCycl = rDuoCycl << 1;
      00034A E5 3A            [12]  990 	mov	a,_rDuoCycl
      00034C 25 3A            [12]  991 	add	a,_rDuoCycl
      00034E F5 3A            [12]  992 	mov	_rDuoCycl,a
      000350 E5 3B            [12]  993 	mov	a,(_rDuoCycl + 1)
      000352 33               [12]  994 	rlc	a
      000353 F5 3B            [12]  995 	mov	(_rDuoCycl + 1),a
                                    996 ;	serial.c:113: lDuoCycl = lDuoCycl >> 1;
      000355 E5 3D            [12]  997 	mov	a,(_lDuoCycl + 1)
      000357 C3               [12]  998 	clr	c
      000358 13               [12]  999 	rrc	a
      000359 C5 3C            [12] 1000 	xch	a,_lDuoCycl
      00035B 13               [12] 1001 	rrc	a
      00035C C5 3C            [12] 1002 	xch	a,_lDuoCycl
      00035E F5 3D            [12] 1003 	mov	(_lDuoCycl + 1),a
      000360 80 16            [24] 1004 	sjmp	00129$
      000362                       1005 00121$:
                                   1006 ;	serial.c:115: rDuoCycl = rDuoCycl >> 1;
      000362 E5 3B            [12] 1007 	mov	a,(_rDuoCycl + 1)
      000364 C3               [12] 1008 	clr	c
      000365 13               [12] 1009 	rrc	a
      000366 C5 3A            [12] 1010 	xch	a,_rDuoCycl
      000368 13               [12] 1011 	rrc	a
      000369 C5 3A            [12] 1012 	xch	a,_rDuoCycl
      00036B F5 3B            [12] 1013 	mov	(_rDuoCycl + 1),a
                                   1014 ;	serial.c:116: lDuoCycl = lDuoCycl << 1;
      00036D E5 3C            [12] 1015 	mov	a,_lDuoCycl
      00036F 25 3C            [12] 1016 	add	a,_lDuoCycl
      000371 F5 3C            [12] 1017 	mov	_lDuoCycl,a
      000373 E5 3D            [12] 1018 	mov	a,(_lDuoCycl + 1)
      000375 33               [12] 1019 	rlc	a
      000376 F5 3D            [12] 1020 	mov	(_lDuoCycl + 1),a
                                   1021 ;	serial.c:122: }
      000378                       1022 00129$:
                                   1023 ;	serial.c:123: }
      000378 D0 D0            [24] 1024 	pop	psw
      00037A D0 00            [24] 1025 	pop	(0+0)
      00037C D0 01            [24] 1026 	pop	(0+1)
      00037E D0 02            [24] 1027 	pop	(0+2)
      000380 D0 03            [24] 1028 	pop	(0+3)
      000382 D0 04            [24] 1029 	pop	(0+4)
      000384 D0 05            [24] 1030 	pop	(0+5)
      000386 D0 06            [24] 1031 	pop	(0+6)
      000388 D0 07            [24] 1032 	pop	(0+7)
      00038A D0 83            [24] 1033 	pop	dph
      00038C D0 82            [24] 1034 	pop	dpl
      00038E D0 F0            [24] 1035 	pop	b
      000390 D0 E0            [24] 1036 	pop	acc
      000392 D0 20            [24] 1037 	pop	bits
      000394 32               [24] 1038 	reti
                                   1039 ;------------------------------------------------------------
                                   1040 ;Allocation info for local variables in function 'clock'
                                   1041 ;------------------------------------------------------------
                                   1042 ;ctmp                      Allocated to registers r4 r5 r6 r7 
                                   1043 ;------------------------------------------------------------
                                   1044 ;	serial.c:125: unsigned long int clock(void)
                                   1045 ;	-----------------------------------------
                                   1046 ;	 function clock
                                   1047 ;	-----------------------------------------
      000395                       1048 _clock:
                                   1049 ;	serial.c:129: do {
      000395                       1050 00101$:
                                   1051 ;	serial.c:130: clockupdate = false;
      000395 75 2D 00         [24] 1052 	mov	_clockupdate,#0x00
                                   1053 ;	serial.c:131: ctmp = clocktime;
      000398 AC 29            [24] 1054 	mov	r4,_clocktime
      00039A AD 2A            [24] 1055 	mov	r5,(_clocktime + 1)
      00039C AE 2B            [24] 1056 	mov	r6,(_clocktime + 2)
      00039E AF 2C            [24] 1057 	mov	r7,(_clocktime + 3)
                                   1058 ;	serial.c:132: } while(clockupdate);
      0003A0 E5 2D            [12] 1059 	mov	a,_clockupdate
      0003A2 70 F1            [24] 1060 	jnz	00101$
                                   1061 ;	serial.c:133: return (ctmp);
      0003A4 8C 82            [24] 1062 	mov	dpl,r4
      0003A6 8D 83            [24] 1063 	mov	dph,r5
      0003A8 8E F0            [24] 1064 	mov	b,r6
      0003AA EF               [12] 1065 	mov	a,r7
                                   1066 ;	serial.c:134: }
      0003AB 22               [24] 1067 	ret
                                   1068 ;------------------------------------------------------------
                                   1069 ;Allocation info for local variables in function 'putchar'
                                   1070 ;------------------------------------------------------------
                                   1071 ;c                         Allocated to registers r6 r7 
                                   1072 ;------------------------------------------------------------
                                   1073 ;	serial.c:136: int putchar(int c)
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function putchar
                                   1076 ;	-----------------------------------------
      0003AC                       1077 _putchar:
      0003AC AE 82            [24] 1078 	mov	r6,dpl
      0003AE AF 83            [24] 1079 	mov	r7,dph
                                   1080 ;	serial.c:138: while(!(SCON & 0x02));
      0003B0                       1081 00101$:
      0003B0 E5 98            [12] 1082 	mov	a,_SCON
      0003B2 30 E1 FB         [24] 1083 	jnb	acc.1,00101$
                                   1084 ;	serial.c:139: SCON &= ~0x02;
      0003B5 53 98 FD         [24] 1085 	anl	_SCON,#0xfd
                                   1086 ;	serial.c:140: SBUF = c;
      0003B8 8E 99            [24] 1087 	mov	_SBUF,r6
                                   1088 ;	serial.c:141: return (c);
      0003BA 8E 82            [24] 1089 	mov	dpl,r6
      0003BC 8F 83            [24] 1090 	mov	dph,r7
                                   1091 ;	serial.c:142: }
      0003BE 22               [24] 1092 	ret
                                   1093 ;------------------------------------------------------------
                                   1094 ;Allocation info for local variables in function 'rollUnderNum'
                                   1095 ;------------------------------------------------------------
                                   1096 ;	serial.c:144: void rollUnderNum(){
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function rollUnderNum
                                   1099 ;	-----------------------------------------
      0003BF                       1100 _rollUnderNum:
                                   1101 ;	serial.c:145: if(displayNum[0] < 0){
      0003BF E5 22            [12] 1102 	mov	a,(_displayNum + 1)
      0003C1 30 E7 13         [24] 1103 	jnb	acc.7,00102$
                                   1104 ;	serial.c:146: displayNum[0] = 9;
      0003C4 75 21 09         [24] 1105 	mov	(_displayNum + 0),#0x09
      0003C7 75 22 00         [24] 1106 	mov	(_displayNum + 1),#0x00
                                   1107 ;	serial.c:147: displayNum[1]--;
      0003CA AE 23            [24] 1108 	mov	r6,((_displayNum + 0x0002) + 0)
      0003CC AF 24            [24] 1109 	mov	r7,((_displayNum + 0x0002) + 1)
      0003CE 1E               [12] 1110 	dec	r6
      0003CF BE FF 01         [24] 1111 	cjne	r6,#0xff,00128$
      0003D2 1F               [12] 1112 	dec	r7
      0003D3                       1113 00128$:
      0003D3 8E 23            [24] 1114 	mov	((_displayNum + 0x0002) + 0),r6
      0003D5 8F 24            [24] 1115 	mov	((_displayNum + 0x0002) + 1),r7
      0003D7                       1116 00102$:
                                   1117 ;	serial.c:149: if(displayNum[1] < 0){
      0003D7 E5 24            [12] 1118 	mov	a,((_displayNum + 0x0002) + 1)
      0003D9 30 E7 13         [24] 1119 	jnb	acc.7,00104$
                                   1120 ;	serial.c:150: displayNum[1] = 9;
      0003DC 75 23 09         [24] 1121 	mov	((_displayNum + 0x0002) + 0),#0x09
      0003DF 75 24 00         [24] 1122 	mov	((_displayNum + 0x0002) + 1),#0x00
                                   1123 ;	serial.c:151: displayNum[2]--;
      0003E2 AE 25            [24] 1124 	mov	r6,((_displayNum + 0x0004) + 0)
      0003E4 AF 26            [24] 1125 	mov	r7,((_displayNum + 0x0004) + 1)
      0003E6 1E               [12] 1126 	dec	r6
      0003E7 BE FF 01         [24] 1127 	cjne	r6,#0xff,00130$
      0003EA 1F               [12] 1128 	dec	r7
      0003EB                       1129 00130$:
      0003EB 8E 25            [24] 1130 	mov	((_displayNum + 0x0004) + 0),r6
      0003ED 8F 26            [24] 1131 	mov	((_displayNum + 0x0004) + 1),r7
      0003EF                       1132 00104$:
                                   1133 ;	serial.c:153: if(displayNum[2] < 0){
      0003EF E5 26            [12] 1134 	mov	a,((_displayNum + 0x0004) + 1)
      0003F1 30 E7 13         [24] 1135 	jnb	acc.7,00106$
                                   1136 ;	serial.c:154: displayNum[2] = 9;
      0003F4 75 25 09         [24] 1137 	mov	((_displayNum + 0x0004) + 0),#0x09
      0003F7 75 26 00         [24] 1138 	mov	((_displayNum + 0x0004) + 1),#0x00
                                   1139 ;	serial.c:155: displayNum[3]--;
      0003FA AE 27            [24] 1140 	mov	r6,((_displayNum + 0x0006) + 0)
      0003FC AF 28            [24] 1141 	mov	r7,((_displayNum + 0x0006) + 1)
      0003FE 1E               [12] 1142 	dec	r6
      0003FF BE FF 01         [24] 1143 	cjne	r6,#0xff,00132$
      000402 1F               [12] 1144 	dec	r7
      000403                       1145 00132$:
      000403 8E 27            [24] 1146 	mov	((_displayNum + 0x0006) + 0),r6
      000405 8F 28            [24] 1147 	mov	((_displayNum + 0x0006) + 1),r7
      000407                       1148 00106$:
                                   1149 ;	serial.c:157: if(displayNum[3] < 0){
      000407 E5 28            [12] 1150 	mov	a,((_displayNum + 0x0006) + 1)
      000409 30 E7 18         [24] 1151 	jnb	acc.7,00109$
                                   1152 ;	serial.c:158: displayNum[0] = 9;
      00040C 75 21 09         [24] 1153 	mov	(_displayNum + 0),#0x09
      00040F 75 22 00         [24] 1154 	mov	(_displayNum + 1),#0x00
                                   1155 ;	serial.c:159: displayNum[1] = 9;
      000412 75 23 09         [24] 1156 	mov	((_displayNum + 0x0002) + 0),#0x09
      000415 75 24 00         [24] 1157 	mov	((_displayNum + 0x0002) + 1),#0x00
                                   1158 ;	serial.c:160: displayNum[2] = 9;
      000418 75 25 09         [24] 1159 	mov	((_displayNum + 0x0004) + 0),#0x09
      00041B 75 26 00         [24] 1160 	mov	((_displayNum + 0x0004) + 1),#0x00
                                   1161 ;	serial.c:161: displayNum[3] = 9;
      00041E 75 27 09         [24] 1162 	mov	((_displayNum + 0x0006) + 0),#0x09
      000421 75 28 00         [24] 1163 	mov	((_displayNum + 0x0006) + 1),#0x00
      000424                       1164 00109$:
                                   1165 ;	serial.c:163: }
      000424 22               [24] 1166 	ret
                                   1167 ;------------------------------------------------------------
                                   1168 ;Allocation info for local variables in function 'rollOverNum'
                                   1169 ;------------------------------------------------------------
                                   1170 ;	serial.c:165: void rollOverNum(){
                                   1171 ;	-----------------------------------------
                                   1172 ;	 function rollOverNum
                                   1173 ;	-----------------------------------------
      000425                       1174 _rollOverNum:
                                   1175 ;	serial.c:166: if(displayNum[0] > 9){
      000425 C3               [12] 1176 	clr	c
      000426 74 09            [12] 1177 	mov	a,#0x09
      000428 95 21            [12] 1178 	subb	a,_displayNum
      00042A 74 80            [12] 1179 	mov	a,#(0x00 ^ 0x80)
      00042C 85 22 F0         [24] 1180 	mov	b,(_displayNum + 1)
      00042F 63 F0 80         [24] 1181 	xrl	b,#0x80
      000432 95 F0            [12] 1182 	subb	a,b
      000434 50 12            [24] 1183 	jnc	00102$
                                   1184 ;	serial.c:167: displayNum[0] = 0;
      000436 E4               [12] 1185 	clr	a
      000437 F5 21            [12] 1186 	mov	(_displayNum + 0),a
      000439 F5 22            [12] 1187 	mov	(_displayNum + 1),a
                                   1188 ;	serial.c:168: displayNum[1]++;
      00043B AE 23            [24] 1189 	mov	r6,((_displayNum + 0x0002) + 0)
      00043D AF 24            [24] 1190 	mov	r7,((_displayNum + 0x0002) + 1)
      00043F 0E               [12] 1191 	inc	r6
      000440 BE 00 01         [24] 1192 	cjne	r6,#0x00,00128$
      000443 0F               [12] 1193 	inc	r7
      000444                       1194 00128$:
      000444 8E 23            [24] 1195 	mov	((_displayNum + 0x0002) + 0),r6
      000446 8F 24            [24] 1196 	mov	((_displayNum + 0x0002) + 1),r7
      000448                       1197 00102$:
                                   1198 ;	serial.c:170: if(displayNum[1] > 9){
      000448 C3               [12] 1199 	clr	c
      000449 74 09            [12] 1200 	mov	a,#0x09
      00044B 95 23            [12] 1201 	subb	a,(_displayNum + 0x0002)
      00044D 74 80            [12] 1202 	mov	a,#(0x00 ^ 0x80)
      00044F 85 24 F0         [24] 1203 	mov	b,((_displayNum + 0x0002) + 1)
      000452 63 F0 80         [24] 1204 	xrl	b,#0x80
      000455 95 F0            [12] 1205 	subb	a,b
      000457 50 12            [24] 1206 	jnc	00104$
                                   1207 ;	serial.c:171: displayNum[1] = 0;
      000459 E4               [12] 1208 	clr	a
      00045A F5 23            [12] 1209 	mov	((_displayNum + 0x0002) + 0),a
      00045C F5 24            [12] 1210 	mov	((_displayNum + 0x0002) + 1),a
                                   1211 ;	serial.c:172: displayNum[2]++;
      00045E AE 25            [24] 1212 	mov	r6,((_displayNum + 0x0004) + 0)
      000460 AF 26            [24] 1213 	mov	r7,((_displayNum + 0x0004) + 1)
      000462 0E               [12] 1214 	inc	r6
      000463 BE 00 01         [24] 1215 	cjne	r6,#0x00,00130$
      000466 0F               [12] 1216 	inc	r7
      000467                       1217 00130$:
      000467 8E 25            [24] 1218 	mov	((_displayNum + 0x0004) + 0),r6
      000469 8F 26            [24] 1219 	mov	((_displayNum + 0x0004) + 1),r7
      00046B                       1220 00104$:
                                   1221 ;	serial.c:174: if(displayNum[2] > 9){
      00046B C3               [12] 1222 	clr	c
      00046C 74 09            [12] 1223 	mov	a,#0x09
      00046E 95 25            [12] 1224 	subb	a,(_displayNum + 0x0004)
      000470 74 80            [12] 1225 	mov	a,#(0x00 ^ 0x80)
      000472 85 26 F0         [24] 1226 	mov	b,((_displayNum + 0x0004) + 1)
      000475 63 F0 80         [24] 1227 	xrl	b,#0x80
      000478 95 F0            [12] 1228 	subb	a,b
      00047A 50 12            [24] 1229 	jnc	00106$
                                   1230 ;	serial.c:175: displayNum[2] = 0;
      00047C E4               [12] 1231 	clr	a
      00047D F5 25            [12] 1232 	mov	((_displayNum + 0x0004) + 0),a
      00047F F5 26            [12] 1233 	mov	((_displayNum + 0x0004) + 1),a
                                   1234 ;	serial.c:176: displayNum[3]++;
      000481 AE 27            [24] 1235 	mov	r6,((_displayNum + 0x0006) + 0)
      000483 AF 28            [24] 1236 	mov	r7,((_displayNum + 0x0006) + 1)
      000485 0E               [12] 1237 	inc	r6
      000486 BE 00 01         [24] 1238 	cjne	r6,#0x00,00132$
      000489 0F               [12] 1239 	inc	r7
      00048A                       1240 00132$:
      00048A 8E 27            [24] 1241 	mov	((_displayNum + 0x0006) + 0),r6
      00048C 8F 28            [24] 1242 	mov	((_displayNum + 0x0006) + 1),r7
      00048E                       1243 00106$:
                                   1244 ;	serial.c:178: if(displayNum[3] > 9){
      00048E C3               [12] 1245 	clr	c
      00048F 74 09            [12] 1246 	mov	a,#0x09
      000491 95 27            [12] 1247 	subb	a,(_displayNum + 0x0006)
      000493 74 80            [12] 1248 	mov	a,#(0x00 ^ 0x80)
      000495 85 28 F0         [24] 1249 	mov	b,((_displayNum + 0x0006) + 1)
      000498 63 F0 80         [24] 1250 	xrl	b,#0x80
      00049B 95 F0            [12] 1251 	subb	a,b
      00049D 50 11            [24] 1252 	jnc	00109$
                                   1253 ;	serial.c:179: displayNum[0] = 0;
      00049F E4               [12] 1254 	clr	a
      0004A0 F5 21            [12] 1255 	mov	(_displayNum + 0),a
      0004A2 F5 22            [12] 1256 	mov	(_displayNum + 1),a
                                   1257 ;	serial.c:180: displayNum[1] = 0;
      0004A4 F5 23            [12] 1258 	mov	((_displayNum + 0x0002) + 0),a
      0004A6 F5 24            [12] 1259 	mov	((_displayNum + 0x0002) + 1),a
                                   1260 ;	serial.c:181: displayNum[2] = 0;
      0004A8 F5 25            [12] 1261 	mov	((_displayNum + 0x0004) + 0),a
      0004AA F5 26            [12] 1262 	mov	((_displayNum + 0x0004) + 1),a
                                   1263 ;	serial.c:182: displayNum[3] = 0;
      0004AC F5 27            [12] 1264 	mov	((_displayNum + 0x0006) + 0),a
      0004AE F5 28            [12] 1265 	mov	((_displayNum + 0x0006) + 1),a
      0004B0                       1266 00109$:
                                   1267 ;	serial.c:184: }
      0004B0 22               [24] 1268 	ret
                                   1269 ;------------------------------------------------------------
                                   1270 ;Allocation info for local variables in function 'i2c_start'
                                   1271 ;------------------------------------------------------------
                                   1272 ;	serial.c:186: void i2c_start(void)
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function i2c_start
                                   1275 ;	-----------------------------------------
      0004B1                       1276 _i2c_start:
                                   1277 ;	serial.c:188: SDA = 1;
                                   1278 ;	assignBit
      0004B1 D2 A7            [12] 1279 	setb	_P2_7
                                   1280 ;	serial.c:189: SCL = 1;
                                   1281 ;	assignBit
      0004B3 D2 A6            [12] 1282 	setb	_P2_6
                                   1283 ;	serial.c:190: SDA = 0;
                                   1284 ;	assignBit
      0004B5 C2 A7            [12] 1285 	clr	_P2_7
                                   1286 ;	serial.c:191: SCL = 0;
                                   1287 ;	assignBit
      0004B7 C2 A6            [12] 1288 	clr	_P2_6
                                   1289 ;	serial.c:192: }
      0004B9 22               [24] 1290 	ret
                                   1291 ;------------------------------------------------------------
                                   1292 ;Allocation info for local variables in function 'i2c_stop'
                                   1293 ;------------------------------------------------------------
                                   1294 ;	serial.c:194: void i2c_stop(void)
                                   1295 ;	-----------------------------------------
                                   1296 ;	 function i2c_stop
                                   1297 ;	-----------------------------------------
      0004BA                       1298 _i2c_stop:
                                   1299 ;	serial.c:196: SDA = 0;
                                   1300 ;	assignBit
      0004BA C2 A7            [12] 1301 	clr	_P2_7
                                   1302 ;	serial.c:197: SCL = 1;
                                   1303 ;	assignBit
      0004BC D2 A6            [12] 1304 	setb	_P2_6
                                   1305 ;	serial.c:198: SDA = 1;
                                   1306 ;	assignBit
      0004BE D2 A7            [12] 1307 	setb	_P2_7
                                   1308 ;	serial.c:199: SCL = 0;
                                   1309 ;	assignBit
      0004C0 C2 A6            [12] 1310 	clr	_P2_6
                                   1311 ;	serial.c:200: }
      0004C2 22               [24] 1312 	ret
                                   1313 ;------------------------------------------------------------
                                   1314 ;Allocation info for local variables in function 'i2c_ack'
                                   1315 ;------------------------------------------------------------
                                   1316 ;	serial.c:202: void i2c_ack(void)
                                   1317 ;	-----------------------------------------
                                   1318 ;	 function i2c_ack
                                   1319 ;	-----------------------------------------
      0004C3                       1320 _i2c_ack:
                                   1321 ;	serial.c:204: SCL = 0;
                                   1322 ;	assignBit
      0004C3 C2 A6            [12] 1323 	clr	_P2_6
                                   1324 ;	serial.c:205: SDA = 1;
                                   1325 ;	assignBit
      0004C5 D2 A7            [12] 1326 	setb	_P2_7
                                   1327 ;	serial.c:206: SCL = 1;
                                   1328 ;	assignBit
      0004C7 D2 A6            [12] 1329 	setb	_P2_6
                                   1330 ;	serial.c:208: }
      0004C9 22               [24] 1331 	ret
                                   1332 ;------------------------------------------------------------
                                   1333 ;Allocation info for local variables in function 'i2c_write'
                                   1334 ;------------------------------------------------------------
                                   1335 ;data                      Allocated to registers r7 
                                   1336 ;i                         Allocated to registers r6 
                                   1337 ;------------------------------------------------------------
                                   1338 ;	serial.c:210: void i2c_write(unsigned char data){
                                   1339 ;	-----------------------------------------
                                   1340 ;	 function i2c_write
                                   1341 ;	-----------------------------------------
      0004CA                       1342 _i2c_write:
      0004CA AF 82            [24] 1343 	mov	r7,dpl
                                   1344 ;	serial.c:213: for(i = 0; i < 8; i++){
      0004CC 7E 00            [12] 1345 	mov	r6,#0x00
      0004CE                       1346 00102$:
                                   1347 ;	serial.c:214: SDA = (data & 0x80)>>7;
      0004CE 74 80            [12] 1348 	mov	a,#0x80
      0004D0 5F               [12] 1349 	anl	a,r7
      0004D1 23               [12] 1350 	rl	a
      0004D2 54 01            [12] 1351 	anl	a,#0x01
                                   1352 ;	assignBit
      0004D4 24 FF            [12] 1353 	add	a,#0xff
      0004D6 92 A7            [24] 1354 	mov	_P2_7,c
                                   1355 ;	serial.c:215: SCL = 1;
                                   1356 ;	assignBit
      0004D8 D2 A6            [12] 1357 	setb	_P2_6
                                   1358 ;	serial.c:216: SCL = 0;
                                   1359 ;	assignBit
      0004DA C2 A6            [12] 1360 	clr	_P2_6
                                   1361 ;	serial.c:217: data <<= 1;
      0004DC 8F 05            [24] 1362 	mov	ar5,r7
      0004DE ED               [12] 1363 	mov	a,r5
      0004DF 2D               [12] 1364 	add	a,r5
      0004E0 FF               [12] 1365 	mov	r7,a
                                   1366 ;	serial.c:213: for(i = 0; i < 8; i++){
      0004E1 0E               [12] 1367 	inc	r6
      0004E2 BE 08 00         [24] 1368 	cjne	r6,#0x08,00115$
      0004E5                       1369 00115$:
      0004E5 40 E7            [24] 1370 	jc	00102$
                                   1371 ;	serial.c:219: SDA = 1;
                                   1372 ;	assignBit
      0004E7 D2 A7            [12] 1373 	setb	_P2_7
                                   1374 ;	serial.c:220: SCL = 1;
                                   1375 ;	assignBit
      0004E9 D2 A6            [12] 1376 	setb	_P2_6
                                   1377 ;	serial.c:221: SCL = 0;
                                   1378 ;	assignBit
      0004EB C2 A6            [12] 1379 	clr	_P2_6
                                   1380 ;	serial.c:222: }
      0004ED 22               [24] 1381 	ret
                                   1382 ;------------------------------------------------------------
                                   1383 ;Allocation info for local variables in function 'i2c_read'
                                   1384 ;------------------------------------------------------------
                                   1385 ;i                         Allocated to registers r6 
                                   1386 ;data                      Allocated to registers r5 
                                   1387 ;------------------------------------------------------------
                                   1388 ;	serial.c:224: unsigned char i2c_read(void){
                                   1389 ;	-----------------------------------------
                                   1390 ;	 function i2c_read
                                   1391 ;	-----------------------------------------
      0004EE                       1392 _i2c_read:
                                   1393 ;	serial.c:225: unsigned char i, data = 0;
      0004EE 7F 00            [12] 1394 	mov	r7,#0x00
                                   1395 ;	serial.c:227: for(i = 0; i < 8; i++){
      0004F0 7E 00            [12] 1396 	mov	r6,#0x00
      0004F2                       1397 00102$:
                                   1398 ;	serial.c:228: SCL = 1;
                                   1399 ;	assignBit
      0004F2 D2 A6            [12] 1400 	setb	_P2_6
                                   1401 ;	serial.c:229: data <<= 1;
      0004F4 8F 05            [24] 1402 	mov	ar5,r7
      0004F6 ED               [12] 1403 	mov	a,r5
      0004F7 2D               [12] 1404 	add	a,r5
      0004F8 FD               [12] 1405 	mov	r5,a
                                   1406 ;	serial.c:230: data |= SDA;
      0004F9 A2 A7            [12] 1407 	mov	c,_P2_7
      0004FB E4               [12] 1408 	clr	a
      0004FC 33               [12] 1409 	rlc	a
      0004FD 4D               [12] 1410 	orl	a,r5
      0004FE FF               [12] 1411 	mov	r7,a
                                   1412 ;	serial.c:231: SCL = 0;
                                   1413 ;	assignBit
      0004FF C2 A6            [12] 1414 	clr	_P2_6
                                   1415 ;	serial.c:227: for(i = 0; i < 8; i++){
      000501 0E               [12] 1416 	inc	r6
      000502 BE 08 00         [24] 1417 	cjne	r6,#0x08,00117$
      000505                       1418 00117$:
      000505 40 EB            [24] 1419 	jc	00102$
                                   1420 ;	serial.c:233: SDA = 0;
                                   1421 ;	assignBit
      000507 C2 A7            [12] 1422 	clr	_P2_7
                                   1423 ;	serial.c:234: SCL = 1;
                                   1424 ;	assignBit
      000509 D2 A6            [12] 1425 	setb	_P2_6
                                   1426 ;	serial.c:235: SCL = 0;
                                   1427 ;	assignBit
      00050B C2 A6            [12] 1428 	clr	_P2_6
                                   1429 ;	serial.c:236: SDA = 1;
                                   1430 ;	assignBit
      00050D D2 A7            [12] 1431 	setb	_P2_7
                                   1432 ;	serial.c:237: return data;
      00050F 8F 82            [24] 1433 	mov	dpl,r7
                                   1434 ;	serial.c:238: }
      000511 22               [24] 1435 	ret
                                   1436 ;------------------------------------------------------------
                                   1437 ;Allocation info for local variables in function 'i2c_buttons'
                                   1438 ;------------------------------------------------------------
                                   1439 ;buttons                   Allocated to registers r7 
                                   1440 ;leds                      Allocated to registers r7 
                                   1441 ;button1                   Allocated to registers r5 
                                   1442 ;button2                   Allocated to registers r4 
                                   1443 ;button3                   Allocated to registers r3 
                                   1444 ;button4                   Allocated to registers r6 
                                   1445 ;------------------------------------------------------------
                                   1446 ;	serial.c:240: void i2c_buttons(void){
                                   1447 ;	-----------------------------------------
                                   1448 ;	 function i2c_buttons
                                   1449 ;	-----------------------------------------
      000512                       1450 _i2c_buttons:
                                   1451 ;	serial.c:247: i2c_start();
      000512 12 04 B1         [24] 1452 	lcall	_i2c_start
                                   1453 ;	serial.c:248: i2c_write(0x40 | 1);
      000515 75 82 41         [24] 1454 	mov	dpl,#0x41
      000518 12 04 CA         [24] 1455 	lcall	_i2c_write
                                   1456 ;	serial.c:249: buttons = ~i2c_read();
      00051B 12 04 EE         [24] 1457 	lcall	_i2c_read
      00051E E5 82            [12] 1458 	mov	a,dpl
      000520 F4               [12] 1459 	cpl	a
      000521 FF               [12] 1460 	mov	r7,a
                                   1461 ;	serial.c:250: i2c_stop();
      000522 C0 07            [24] 1462 	push	ar7
      000524 12 04 BA         [24] 1463 	lcall	_i2c_stop
      000527 D0 07            [24] 1464 	pop	ar7
                                   1465 ;	serial.c:253: button1 = (buttons & 0x10) ? 1 : 0;
      000529 EF               [12] 1466 	mov	a,r7
      00052A 30 E4 06         [24] 1467 	jnb	acc.4,00111$
      00052D 7D 01            [12] 1468 	mov	r5,#0x01
      00052F 7E 00            [12] 1469 	mov	r6,#0x00
      000531 80 04            [24] 1470 	sjmp	00112$
      000533                       1471 00111$:
      000533 7D 00            [12] 1472 	mov	r5,#0x00
      000535 7E 00            [12] 1473 	mov	r6,#0x00
      000537                       1474 00112$:
                                   1475 ;	serial.c:254: button2 = (buttons & 0x20) ? 1 : 0;
      000537 EF               [12] 1476 	mov	a,r7
      000538 30 E5 06         [24] 1477 	jnb	acc.5,00113$
      00053B 7C 01            [12] 1478 	mov	r4,#0x01
      00053D 7E 00            [12] 1479 	mov	r6,#0x00
      00053F 80 04            [24] 1480 	sjmp	00114$
      000541                       1481 00113$:
      000541 7C 00            [12] 1482 	mov	r4,#0x00
      000543 7E 00            [12] 1483 	mov	r6,#0x00
      000545                       1484 00114$:
                                   1485 ;	serial.c:255: button3 = (buttons & 0x40) ? 1 : 0;
      000545 EF               [12] 1486 	mov	a,r7
      000546 30 E6 06         [24] 1487 	jnb	acc.6,00115$
      000549 7B 01            [12] 1488 	mov	r3,#0x01
      00054B 7E 00            [12] 1489 	mov	r6,#0x00
      00054D 80 04            [24] 1490 	sjmp	00116$
      00054F                       1491 00115$:
      00054F 7B 00            [12] 1492 	mov	r3,#0x00
      000551 7E 00            [12] 1493 	mov	r6,#0x00
      000553                       1494 00116$:
                                   1495 ;	serial.c:256: button4 = (buttons & 0x80) ? 1 : 0;	
      000553 EF               [12] 1496 	mov	a,r7
      000554 30 E7 06         [24] 1497 	jnb	acc.7,00117$
      000557 7E 01            [12] 1498 	mov	r6,#0x01
      000559 7F 00            [12] 1499 	mov	r7,#0x00
      00055B 80 04            [24] 1500 	sjmp	00118$
      00055D                       1501 00117$:
      00055D 7E 00            [12] 1502 	mov	r6,#0x00
      00055F 7F 00            [12] 1503 	mov	r7,#0x00
      000561                       1504 00118$:
                                   1505 ;	serial.c:257: leds = 0x00;
      000561 7F 00            [12] 1506 	mov	r7,#0x00
                                   1507 ;	serial.c:258: if(button1) leds |= 0x01;
      000563 ED               [12] 1508 	mov	a,r5
      000564 60 02            [24] 1509 	jz	00102$
      000566 7F 01            [12] 1510 	mov	r7,#0x01
      000568                       1511 00102$:
                                   1512 ;	serial.c:259: if(button2) leds |= 0x02;
      000568 EC               [12] 1513 	mov	a,r4
      000569 60 09            [24] 1514 	jz	00104$
      00056B 8F 04            [24] 1515 	mov	ar4,r7
      00056D 7D 00            [12] 1516 	mov	r5,#0x00
      00056F 43 04 02         [24] 1517 	orl	ar4,#0x02
      000572 8C 07            [24] 1518 	mov	ar7,r4
      000574                       1519 00104$:
                                   1520 ;	serial.c:260: if(button3) leds |= 0x04;
      000574 EB               [12] 1521 	mov	a,r3
      000575 60 09            [24] 1522 	jz	00106$
      000577 8F 04            [24] 1523 	mov	ar4,r7
      000579 7D 00            [12] 1524 	mov	r5,#0x00
      00057B 43 04 04         [24] 1525 	orl	ar4,#0x04
      00057E 8C 07            [24] 1526 	mov	ar7,r4
      000580                       1527 00106$:
                                   1528 ;	serial.c:261: if(button4) leds |= 0x08;
      000580 EE               [12] 1529 	mov	a,r6
      000581 60 09            [24] 1530 	jz	00108$
      000583 8F 05            [24] 1531 	mov	ar5,r7
      000585 7E 00            [12] 1532 	mov	r6,#0x00
      000587 43 05 08         [24] 1533 	orl	ar5,#0x08
      00058A 8D 07            [24] 1534 	mov	ar7,r5
      00058C                       1535 00108$:
                                   1536 ;	serial.c:262: leds = ~leds;
      00058C EF               [12] 1537 	mov	a,r7
      00058D F4               [12] 1538 	cpl	a
      00058E FF               [12] 1539 	mov	r7,a
                                   1540 ;	serial.c:265: i2c_start();
      00058F C0 07            [24] 1541 	push	ar7
      000591 12 04 B1         [24] 1542 	lcall	_i2c_start
                                   1543 ;	serial.c:266: i2c_write(0x40);
      000594 75 82 40         [24] 1544 	mov	dpl,#0x40
      000597 12 04 CA         [24] 1545 	lcall	_i2c_write
      00059A D0 07            [24] 1546 	pop	ar7
                                   1547 ;	serial.c:267: i2c_write(leds);
      00059C 8F 82            [24] 1548 	mov	dpl,r7
      00059E 12 04 CA         [24] 1549 	lcall	_i2c_write
                                   1550 ;	serial.c:268: i2c_stop();
                                   1551 ;	serial.c:270: }
      0005A1 02 04 BA         [24] 1552 	ljmp	_i2c_stop
                                   1553 ;------------------------------------------------------------
                                   1554 ;Allocation info for local variables in function 'lcd_slave'
                                   1555 ;------------------------------------------------------------
                                   1556 ;slave                     Allocated to registers 
                                   1557 ;------------------------------------------------------------
                                   1558 ;	serial.c:272: void lcd_slave(unsigned char slave)
                                   1559 ;	-----------------------------------------
                                   1560 ;	 function lcd_slave
                                   1561 ;	-----------------------------------------
      0005A4                       1562 _lcd_slave:
      0005A4 85 82 44         [24] 1563 	mov	_slave_add,dpl
                                   1564 ;	serial.c:274: slave_add=slave;
                                   1565 ;	serial.c:275: }
      0005A7 22               [24] 1566 	ret
                                   1567 ;------------------------------------------------------------
                                   1568 ;Allocation info for local variables in function 'lcd_write_byte'
                                   1569 ;------------------------------------------------------------
                                   1570 ;data                      Allocated to registers r7 
                                   1571 ;i                         Allocated to registers r6 
                                   1572 ;------------------------------------------------------------
                                   1573 ;	serial.c:277: void lcd_write_byte(unsigned char data){
                                   1574 ;	-----------------------------------------
                                   1575 ;	 function lcd_write_byte
                                   1576 ;	-----------------------------------------
      0005A8                       1577 _lcd_write_byte:
      0005A8 AF 82            [24] 1578 	mov	r7,dpl
                                   1579 ;	serial.c:279: for(i=0;i<8;i++){
      0005AA 7E 00            [12] 1580 	mov	r6,#0x00
      0005AC                       1581 00102$:
                                   1582 ;	serial.c:280: SCL = 0;
                                   1583 ;	assignBit
      0005AC C2 A6            [12] 1584 	clr	_P2_6
                                   1585 ;	serial.c:281: SDA = (data&(0x80)>>i)?1:0;
      0005AE 8E F0            [24] 1586 	mov	b,r6
      0005B0 05 F0            [12] 1587 	inc	b
      0005B2 7C 80            [12] 1588 	mov	r4,#0x80
      0005B4 E4               [12] 1589 	clr	a
      0005B5 FD               [12] 1590 	mov	r5,a
      0005B6 33               [12] 1591 	rlc	a
      0005B7 92 D2            [24] 1592 	mov	ov,c
      0005B9 80 08            [24] 1593 	sjmp	00112$
      0005BB                       1594 00111$:
      0005BB A2 D2            [12] 1595 	mov	c,ov
      0005BD ED               [12] 1596 	mov	a,r5
      0005BE 13               [12] 1597 	rrc	a
      0005BF FD               [12] 1598 	mov	r5,a
      0005C0 EC               [12] 1599 	mov	a,r4
      0005C1 13               [12] 1600 	rrc	a
      0005C2 FC               [12] 1601 	mov	r4,a
      0005C3                       1602 00112$:
      0005C3 D5 F0 F5         [24] 1603 	djnz	b,00111$
      0005C6 8F 02            [24] 1604 	mov	ar2,r7
      0005C8 7B 00            [12] 1605 	mov	r3,#0x00
      0005CA EA               [12] 1606 	mov	a,r2
      0005CB 52 04            [12] 1607 	anl	ar4,a
      0005CD EB               [12] 1608 	mov	a,r3
      0005CE 52 05            [12] 1609 	anl	ar5,a
                                   1610 ;	assignBit
      0005D0 EC               [12] 1611 	mov	a,r4
      0005D1 4D               [12] 1612 	orl	a,r5
      0005D2 24 FF            [12] 1613 	add	a,#0xff
      0005D4 92 A7            [24] 1614 	mov	_P2_7,c
                                   1615 ;	serial.c:282: SCL = 1;
                                   1616 ;	assignBit
      0005D6 D2 A6            [12] 1617 	setb	_P2_6
                                   1618 ;	serial.c:279: for(i=0;i<8;i++){
      0005D8 0E               [12] 1619 	inc	r6
      0005D9 BE 08 00         [24] 1620 	cjne	r6,#0x08,00113$
      0005DC                       1621 00113$:
      0005DC 40 CE            [24] 1622 	jc	00102$
                                   1623 ;	serial.c:284: }
      0005DE 22               [24] 1624 	ret
                                   1625 ;------------------------------------------------------------
                                   1626 ;Allocation info for local variables in function 'lcd_send_cmd'
                                   1627 ;------------------------------------------------------------
                                   1628 ;cmd                       Allocated to registers r7 
                                   1629 ;cmd_l                     Allocated to registers r6 
                                   1630 ;cmd_u                     Allocated to registers r7 
                                   1631 ;------------------------------------------------------------
                                   1632 ;	serial.c:286: void lcd_send_cmd(unsigned char cmd) {
                                   1633 ;	-----------------------------------------
                                   1634 ;	 function lcd_send_cmd
                                   1635 ;	-----------------------------------------
      0005DF                       1636 _lcd_send_cmd:
      0005DF AF 82            [24] 1637 	mov	r7,dpl
                                   1638 ;	serial.c:288: cmd_l=(cmd<<4)&0xf0;
      0005E1 8F 06            [24] 1639 	mov	ar6,r7
      0005E3 EE               [12] 1640 	mov	a,r6
      0005E4 C4               [12] 1641 	swap	a
      0005E5 54 F0            [12] 1642 	anl	a,#0xf0
      0005E7 FE               [12] 1643 	mov	r6,a
      0005E8 53 06 F0         [24] 1644 	anl	ar6,#0xf0
                                   1645 ;	serial.c:289: cmd_u=(cmd &0xf0);
      0005EB 53 07 F0         [24] 1646 	anl	ar7,#0xf0
                                   1647 ;	serial.c:290: i2c_start();
      0005EE C0 07            [24] 1648 	push	ar7
      0005F0 C0 06            [24] 1649 	push	ar6
      0005F2 12 04 B1         [24] 1650 	lcall	_i2c_start
                                   1651 ;	serial.c:291: lcd_write_byte(slave_add);
      0005F5 85 44 82         [24] 1652 	mov	dpl,_slave_add
      0005F8 12 05 A8         [24] 1653 	lcall	_lcd_write_byte
                                   1654 ;	serial.c:292: i2c_ack();
      0005FB 12 04 C3         [24] 1655 	lcall	_i2c_ack
      0005FE D0 06            [24] 1656 	pop	ar6
      000600 D0 07            [24] 1657 	pop	ar7
                                   1658 ;	serial.c:293: lcd_write_byte(cmd_u|0x0C);
      000602 7D 00            [12] 1659 	mov	r5,#0x00
      000604 74 0C            [12] 1660 	mov	a,#0x0c
      000606 4F               [12] 1661 	orl	a,r7
      000607 FB               [12] 1662 	mov	r3,a
      000608 8D 04            [24] 1663 	mov	ar4,r5
      00060A 8B 82            [24] 1664 	mov	dpl,r3
      00060C C0 07            [24] 1665 	push	ar7
      00060E C0 06            [24] 1666 	push	ar6
      000610 C0 05            [24] 1667 	push	ar5
      000612 12 05 A8         [24] 1668 	lcall	_lcd_write_byte
                                   1669 ;	serial.c:294: i2c_ack();
      000615 12 04 C3         [24] 1670 	lcall	_i2c_ack
                                   1671 ;	serial.c:295: delay(1);
      000618 90 00 01         [24] 1672 	mov	dptr,#0x0001
      00061B 12 00 AF         [24] 1673 	lcall	_delay
      00061E D0 05            [24] 1674 	pop	ar5
      000620 D0 06            [24] 1675 	pop	ar6
      000622 D0 07            [24] 1676 	pop	ar7
                                   1677 ;	serial.c:296: lcd_write_byte(cmd_u|0x08);
      000624 43 07 08         [24] 1678 	orl	ar7,#0x08
      000627 8F 82            [24] 1679 	mov	dpl,r7
      000629 C0 06            [24] 1680 	push	ar6
      00062B 12 05 A8         [24] 1681 	lcall	_lcd_write_byte
                                   1682 ;	serial.c:297: i2c_ack();
      00062E 12 04 C3         [24] 1683 	lcall	_i2c_ack
                                   1684 ;	serial.c:298: delay(10);
      000631 90 00 0A         [24] 1685 	mov	dptr,#0x000a
      000634 12 00 AF         [24] 1686 	lcall	_delay
      000637 D0 06            [24] 1687 	pop	ar6
                                   1688 ;	serial.c:299: lcd_write_byte(cmd_l|0x0C);
      000639 7F 00            [12] 1689 	mov	r7,#0x00
      00063B 74 0C            [12] 1690 	mov	a,#0x0c
      00063D 4E               [12] 1691 	orl	a,r6
      00063E FC               [12] 1692 	mov	r4,a
      00063F 8F 05            [24] 1693 	mov	ar5,r7
      000641 8C 82            [24] 1694 	mov	dpl,r4
      000643 C0 07            [24] 1695 	push	ar7
      000645 C0 06            [24] 1696 	push	ar6
      000647 12 05 A8         [24] 1697 	lcall	_lcd_write_byte
                                   1698 ;	serial.c:300: i2c_ack();
      00064A 12 04 C3         [24] 1699 	lcall	_i2c_ack
                                   1700 ;	serial.c:301: delay(1);
      00064D 90 00 01         [24] 1701 	mov	dptr,#0x0001
      000650 12 00 AF         [24] 1702 	lcall	_delay
      000653 D0 06            [24] 1703 	pop	ar6
      000655 D0 07            [24] 1704 	pop	ar7
                                   1705 ;	serial.c:302: lcd_write_byte(cmd_l|0x08);
      000657 43 06 08         [24] 1706 	orl	ar6,#0x08
      00065A 8E 82            [24] 1707 	mov	dpl,r6
      00065C 12 05 A8         [24] 1708 	lcall	_lcd_write_byte
                                   1709 ;	serial.c:303: i2c_ack();
      00065F 12 04 C3         [24] 1710 	lcall	_i2c_ack
                                   1711 ;	serial.c:304: delay(10);
      000662 90 00 0A         [24] 1712 	mov	dptr,#0x000a
      000665 12 00 AF         [24] 1713 	lcall	_delay
                                   1714 ;	serial.c:305: i2c_stop();
                                   1715 ;	serial.c:306: }
      000668 02 04 BA         [24] 1716 	ljmp	_i2c_stop
                                   1717 ;------------------------------------------------------------
                                   1718 ;Allocation info for local variables in function 'lcd_send_data'
                                   1719 ;------------------------------------------------------------
                                   1720 ;dataw                     Allocated to registers r7 
                                   1721 ;dataw_l                   Allocated to registers r6 
                                   1722 ;dataw_u                   Allocated to registers r7 
                                   1723 ;------------------------------------------------------------
                                   1724 ;	serial.c:308: void lcd_send_data(unsigned char dataw){
                                   1725 ;	-----------------------------------------
                                   1726 ;	 function lcd_send_data
                                   1727 ;	-----------------------------------------
      00066B                       1728 _lcd_send_data:
      00066B AF 82            [24] 1729 	mov	r7,dpl
                                   1730 ;	serial.c:310: dataw_l=(dataw<<4)&0xf0;
      00066D 8F 06            [24] 1731 	mov	ar6,r7
      00066F EE               [12] 1732 	mov	a,r6
      000670 C4               [12] 1733 	swap	a
      000671 54 F0            [12] 1734 	anl	a,#0xf0
      000673 FE               [12] 1735 	mov	r6,a
      000674 53 06 F0         [24] 1736 	anl	ar6,#0xf0
                                   1737 ;	serial.c:311: dataw_u=(dataw &0xf0);
      000677 53 07 F0         [24] 1738 	anl	ar7,#0xf0
                                   1739 ;	serial.c:312: i2c_start();
      00067A C0 07            [24] 1740 	push	ar7
      00067C C0 06            [24] 1741 	push	ar6
      00067E 12 04 B1         [24] 1742 	lcall	_i2c_start
                                   1743 ;	serial.c:313: lcd_write_byte(slave_add);
      000681 85 44 82         [24] 1744 	mov	dpl,_slave_add
      000684 12 05 A8         [24] 1745 	lcall	_lcd_write_byte
                                   1746 ;	serial.c:314: i2c_ack();
      000687 12 04 C3         [24] 1747 	lcall	_i2c_ack
      00068A D0 06            [24] 1748 	pop	ar6
      00068C D0 07            [24] 1749 	pop	ar7
                                   1750 ;	serial.c:315: lcd_write_byte(dataw_u|0x0D);
      00068E 7D 00            [12] 1751 	mov	r5,#0x00
      000690 74 0D            [12] 1752 	mov	a,#0x0d
      000692 4F               [12] 1753 	orl	a,r7
      000693 FB               [12] 1754 	mov	r3,a
      000694 8D 04            [24] 1755 	mov	ar4,r5
      000696 8B 82            [24] 1756 	mov	dpl,r3
      000698 C0 07            [24] 1757 	push	ar7
      00069A C0 06            [24] 1758 	push	ar6
      00069C C0 05            [24] 1759 	push	ar5
      00069E 12 05 A8         [24] 1760 	lcall	_lcd_write_byte
                                   1761 ;	serial.c:316: i2c_ack();
      0006A1 12 04 C3         [24] 1762 	lcall	_i2c_ack
                                   1763 ;	serial.c:317: delay(1);
      0006A4 90 00 01         [24] 1764 	mov	dptr,#0x0001
      0006A7 12 00 AF         [24] 1765 	lcall	_delay
      0006AA D0 05            [24] 1766 	pop	ar5
      0006AC D0 06            [24] 1767 	pop	ar6
      0006AE D0 07            [24] 1768 	pop	ar7
                                   1769 ;	serial.c:318: lcd_write_byte(dataw_u|0x09);
      0006B0 43 07 09         [24] 1770 	orl	ar7,#0x09
      0006B3 8F 82            [24] 1771 	mov	dpl,r7
      0006B5 C0 06            [24] 1772 	push	ar6
      0006B7 12 05 A8         [24] 1773 	lcall	_lcd_write_byte
                                   1774 ;	serial.c:319: i2c_ack();
      0006BA 12 04 C3         [24] 1775 	lcall	_i2c_ack
                                   1776 ;	serial.c:320: delay(10);
      0006BD 90 00 0A         [24] 1777 	mov	dptr,#0x000a
      0006C0 12 00 AF         [24] 1778 	lcall	_delay
      0006C3 D0 06            [24] 1779 	pop	ar6
                                   1780 ;	serial.c:321: lcd_write_byte(dataw_l|0x0D);
      0006C5 7F 00            [12] 1781 	mov	r7,#0x00
      0006C7 74 0D            [12] 1782 	mov	a,#0x0d
      0006C9 4E               [12] 1783 	orl	a,r6
      0006CA FC               [12] 1784 	mov	r4,a
      0006CB 8F 05            [24] 1785 	mov	ar5,r7
      0006CD 8C 82            [24] 1786 	mov	dpl,r4
      0006CF C0 07            [24] 1787 	push	ar7
      0006D1 C0 06            [24] 1788 	push	ar6
      0006D3 12 05 A8         [24] 1789 	lcall	_lcd_write_byte
                                   1790 ;	serial.c:322: i2c_ack();
      0006D6 12 04 C3         [24] 1791 	lcall	_i2c_ack
                                   1792 ;	serial.c:323: delay(1);
      0006D9 90 00 01         [24] 1793 	mov	dptr,#0x0001
      0006DC 12 00 AF         [24] 1794 	lcall	_delay
      0006DF D0 06            [24] 1795 	pop	ar6
      0006E1 D0 07            [24] 1796 	pop	ar7
                                   1797 ;	serial.c:324: lcd_write_byte(dataw_l|0x09);
      0006E3 43 06 09         [24] 1798 	orl	ar6,#0x09
      0006E6 8E 82            [24] 1799 	mov	dpl,r6
      0006E8 12 05 A8         [24] 1800 	lcall	_lcd_write_byte
                                   1801 ;	serial.c:325: i2c_ack();
      0006EB 12 04 C3         [24] 1802 	lcall	_i2c_ack
                                   1803 ;	serial.c:326: delay(10);
      0006EE 90 00 0A         [24] 1804 	mov	dptr,#0x000a
      0006F1 12 00 AF         [24] 1805 	lcall	_delay
                                   1806 ;	serial.c:327: i2c_stop();
                                   1807 ;	serial.c:328: }
      0006F4 02 04 BA         [24] 1808 	ljmp	_i2c_stop
                                   1809 ;------------------------------------------------------------
                                   1810 ;Allocation info for local variables in function 'lcd_send_str'
                                   1811 ;------------------------------------------------------------
                                   1812 ;p                         Allocated to registers 
                                   1813 ;------------------------------------------------------------
                                   1814 ;	serial.c:330: void lcd_send_str(unsigned char *p){
                                   1815 ;	-----------------------------------------
                                   1816 ;	 function lcd_send_str
                                   1817 ;	-----------------------------------------
      0006F7                       1818 _lcd_send_str:
      0006F7 AD 82            [24] 1819 	mov	r5,dpl
      0006F9 AE 83            [24] 1820 	mov	r6,dph
      0006FB AF F0            [24] 1821 	mov	r7,b
                                   1822 ;	serial.c:331: while(*p != '\0')
      0006FD                       1823 00101$:
      0006FD 8D 82            [24] 1824 	mov	dpl,r5
      0006FF 8E 83            [24] 1825 	mov	dph,r6
      000701 8F F0            [24] 1826 	mov	b,r7
      000703 12 08 76         [24] 1827 	lcall	__gptrget
      000706 FC               [12] 1828 	mov	r4,a
      000707 60 18            [24] 1829 	jz	00104$
                                   1830 ;	serial.c:332: lcd_send_data(*p++);
      000709 8C 82            [24] 1831 	mov	dpl,r4
      00070B 0D               [12] 1832 	inc	r5
      00070C BD 00 01         [24] 1833 	cjne	r5,#0x00,00116$
      00070F 0E               [12] 1834 	inc	r6
      000710                       1835 00116$:
      000710 C0 07            [24] 1836 	push	ar7
      000712 C0 06            [24] 1837 	push	ar6
      000714 C0 05            [24] 1838 	push	ar5
      000716 12 06 6B         [24] 1839 	lcall	_lcd_send_data
      000719 D0 05            [24] 1840 	pop	ar5
      00071B D0 06            [24] 1841 	pop	ar6
      00071D D0 07            [24] 1842 	pop	ar7
      00071F 80 DC            [24] 1843 	sjmp	00101$
      000721                       1844 00104$:
                                   1845 ;	serial.c:333: }
      000721 22               [24] 1846 	ret
                                   1847 ;------------------------------------------------------------
                                   1848 ;Allocation info for local variables in function 'lcd_init'
                                   1849 ;------------------------------------------------------------
                                   1850 ;	serial.c:335: void lcd_init(){
                                   1851 ;	-----------------------------------------
                                   1852 ;	 function lcd_init
                                   1853 ;	-----------------------------------------
      000722                       1854 _lcd_init:
                                   1855 ;	serial.c:336: lcd_send_cmd(0x02);	
      000722 75 82 02         [24] 1856 	mov	dpl,#0x02
      000725 12 05 DF         [24] 1857 	lcall	_lcd_send_cmd
                                   1858 ;	serial.c:337: lcd_send_cmd(0x28);
      000728 75 82 28         [24] 1859 	mov	dpl,#0x28
      00072B 12 05 DF         [24] 1860 	lcall	_lcd_send_cmd
                                   1861 ;	serial.c:338: lcd_send_cmd(0x0C);
      00072E 75 82 0C         [24] 1862 	mov	dpl,#0x0c
      000731 12 05 DF         [24] 1863 	lcall	_lcd_send_cmd
                                   1864 ;	serial.c:339: lcd_send_cmd(0x06);
      000734 75 82 06         [24] 1865 	mov	dpl,#0x06
      000737 12 05 DF         [24] 1866 	lcall	_lcd_send_cmd
                                   1867 ;	serial.c:340: lcd_send_cmd(0x01);
      00073A 75 82 01         [24] 1868 	mov	dpl,#0x01
                                   1869 ;	serial.c:341: }
      00073D 02 05 DF         [24] 1870 	ljmp	_lcd_send_cmd
                                   1871 ;------------------------------------------------------------
                                   1872 ;Allocation info for local variables in function 'main'
                                   1873 ;------------------------------------------------------------
                                   1874 ;i                         Allocated to registers 
                                   1875 ;------------------------------------------------------------
                                   1876 ;	serial.c:343: void main(void)
                                   1877 ;	-----------------------------------------
                                   1878 ;	 function main
                                   1879 ;	-----------------------------------------
      000740                       1880 _main:
                                   1881 ;	serial.c:347: TH0 = (65536 - 922) / 256;
      000740 75 8C FC         [24] 1882 	mov	_TH0,#0xfc
                                   1883 ;	serial.c:348: TL0 = (65536 - 922) % 256;
      000743 75 8A 66         [24] 1884 	mov	_TL0,#0x66
                                   1885 ;	serial.c:349: IE |= 0x82;
      000746 AE A8            [24] 1886 	mov	r6,_IE
      000748 43 06 82         [24] 1887 	orl	ar6,#0x82
      00074B 8E A8            [24] 1888 	mov	_IE,r6
                                   1889 ;	serial.c:350: TMOD = 0x21;
      00074D 75 89 21         [24] 1890 	mov	_TMOD,#0x21
                                   1891 ;	serial.c:351: SCON = 0x40;
      000750 75 98 40         [24] 1892 	mov	_SCON,#0x40
                                   1893 ;	serial.c:352: TH1 = 256 - 11.0592 * 1000 * 1000 / 12 / 32 / 9600 + 0.5;
      000753 75 8D FD         [24] 1894 	mov	_TH1,#0xfd
                                   1895 ;	serial.c:353: TCON |= 0x40;
      000756 AE 88            [24] 1896 	mov	r6,_TCON
      000758 43 06 40         [24] 1897 	orl	ar6,#0x40
      00075B 8E 88            [24] 1898 	mov	_TCON,r6
                                   1899 ;	serial.c:354: TCON |= 0x10;
      00075D AE 88            [24] 1900 	mov	r6,_TCON
      00075F 43 06 10         [24] 1901 	orl	ar6,#0x10
      000762 8E 88            [24] 1902 	mov	_TCON,r6
                                   1903 ;	serial.c:355: SCON |= 0x02;
      000764 AE 98            [24] 1904 	mov	r6,_SCON
      000766 43 06 02         [24] 1905 	orl	ar6,#0x02
      000769 8E 98            [24] 1906 	mov	_SCON,r6
                                   1907 ;	serial.c:357: lcd_slave(slave1);
      00076B 85 43 82         [24] 1908 	mov	dpl,_slave1
      00076E 12 05 A4         [24] 1909 	lcall	_lcd_slave
                                   1910 ;	serial.c:358: lcd_init();
      000771 12 07 22         [24] 1911 	lcall	_lcd_init
                                   1912 ;	serial.c:359: lcd_send_cmd(0x80);
      000774 75 82 80         [24] 1913 	mov	dpl,#0x80
      000777 12 05 DF         [24] 1914 	lcall	_lcd_send_cmd
                                   1915 ;	serial.c:360: lcd_send_str("Hello World!    ");
      00077A 90 08 AA         [24] 1916 	mov	dptr,#___str_0
      00077D 75 F0 80         [24] 1917 	mov	b,#0x80
      000780 12 06 F7         [24] 1918 	lcall	_lcd_send_str
                                   1919 ;	serial.c:361: lcd_send_cmd(0xC0);
      000783 75 82 C0         [24] 1920 	mov	dpl,#0xc0
      000786 12 05 DF         [24] 1921 	lcall	_lcd_send_cmd
                                   1922 ;	serial.c:362: lcd_send_str("   Bob is Great!");
      000789 90 08 BB         [24] 1923 	mov	dptr,#___str_1
      00078C 75 F0 80         [24] 1924 	mov	b,#0x80
      00078F 12 06 F7         [24] 1925 	lcall	_lcd_send_str
      000792                       1926 00125$:
                                   1927 ;	serial.c:365: display();
      000792 12 00 D3         [24] 1928 	lcall	_display
                                   1929 ;	serial.c:366: if(P3_5 == 0){
      000795 20 B5 2B         [24] 1930 	jb	_P3_5,00109$
                                   1931 ;	serial.c:367: delay(5);
      000798 90 00 05         [24] 1932 	mov	dptr,#0x0005
      00079B 12 00 AF         [24] 1933 	lcall	_delay
                                   1934 ;	serial.c:368: if(P3_5 == 0){
      00079E 20 B5 22         [24] 1935 	jb	_P3_5,00109$
                                   1936 ;	serial.c:369: while(!P3_5){display();};
      0007A1                       1937 00101$:
      0007A1 20 B5 05         [24] 1938 	jb	_P3_5,00103$
      0007A4 12 00 D3         [24] 1939 	lcall	_display
      0007A7 80 F8            [24] 1940 	sjmp	00101$
      0007A9                       1941 00103$:
                                   1942 ;	serial.c:370: choice++;
      0007A9 05 2E            [12] 1943 	inc	_choice
      0007AB E4               [12] 1944 	clr	a
      0007AC B5 2E 02         [24] 1945 	cjne	a,_choice,00176$
      0007AF 05 2F            [12] 1946 	inc	(_choice + 1)
      0007B1                       1947 00176$:
                                   1948 ;	serial.c:371: P1 = 0xFF;
      0007B1 75 90 FF         [24] 1949 	mov	_P1,#0xff
                                   1950 ;	serial.c:372: if(choice > 2){
      0007B4 C3               [12] 1951 	clr	c
      0007B5 74 02            [12] 1952 	mov	a,#0x02
      0007B7 95 2E            [12] 1953 	subb	a,_choice
      0007B9 E4               [12] 1954 	clr	a
      0007BA 95 2F            [12] 1955 	subb	a,(_choice + 1)
      0007BC 50 05            [24] 1956 	jnc	00109$
                                   1957 ;	serial.c:373: choice = 0;
      0007BE E4               [12] 1958 	clr	a
      0007BF F5 2E            [12] 1959 	mov	_choice,a
      0007C1 F5 2F            [12] 1960 	mov	(_choice + 1),a
      0007C3                       1961 00109$:
                                   1962 ;	serial.c:377: if(P3_3 == 0){
      0007C3 20 B3 21         [24] 1963 	jb	_P3_3,00116$
                                   1964 ;	serial.c:378: delay(5);
      0007C6 90 00 05         [24] 1965 	mov	dptr,#0x0005
      0007C9 12 00 AF         [24] 1966 	lcall	_delay
                                   1967 ;	serial.c:379: if(P3_3 == 0){
      0007CC 20 B3 18         [24] 1968 	jb	_P3_3,00116$
                                   1969 ;	serial.c:380: while(!P3_3){display();};
      0007CF                       1970 00110$:
      0007CF 20 B3 05         [24] 1971 	jb	_P3_3,00112$
      0007D2 12 00 D3         [24] 1972 	lcall	_display
      0007D5 80 F8            [24] 1973 	sjmp	00110$
      0007D7                       1974 00112$:
                                   1975 ;	serial.c:381: displayNum[0]++;
      0007D7 AE 21            [24] 1976 	mov	r6,(_displayNum + 0)
      0007D9 AF 22            [24] 1977 	mov	r7,(_displayNum + 1)
      0007DB 0E               [12] 1978 	inc	r6
      0007DC BE 00 01         [24] 1979 	cjne	r6,#0x00,00181$
      0007DF 0F               [12] 1980 	inc	r7
      0007E0                       1981 00181$:
      0007E0 8E 21            [24] 1982 	mov	(_displayNum + 0),r6
      0007E2 8F 22            [24] 1983 	mov	(_displayNum + 1),r7
                                   1984 ;	serial.c:382: rollOverNum();
      0007E4 12 04 25         [24] 1985 	lcall	_rollOverNum
      0007E7                       1986 00116$:
                                   1987 ;	serial.c:385: if(P3_2 == 0){
      0007E7 20 B2 21         [24] 1988 	jb	_P3_2,00123$
                                   1989 ;	serial.c:386: delay(5);
      0007EA 90 00 05         [24] 1990 	mov	dptr,#0x0005
      0007ED 12 00 AF         [24] 1991 	lcall	_delay
                                   1992 ;	serial.c:387: if(P3_2 == 0){
      0007F0 20 B2 18         [24] 1993 	jb	_P3_2,00123$
                                   1994 ;	serial.c:388: while(!P3_2){display();};
      0007F3                       1995 00117$:
      0007F3 20 B2 05         [24] 1996 	jb	_P3_2,00119$
      0007F6 12 00 D3         [24] 1997 	lcall	_display
      0007F9 80 F8            [24] 1998 	sjmp	00117$
      0007FB                       1999 00119$:
                                   2000 ;	serial.c:389: displayNum[0]--;
      0007FB AE 21            [24] 2001 	mov	r6,(_displayNum + 0)
      0007FD AF 22            [24] 2002 	mov	r7,(_displayNum + 1)
      0007FF 1E               [12] 2003 	dec	r6
      000800 BE FF 01         [24] 2004 	cjne	r6,#0xff,00185$
      000803 1F               [12] 2005 	dec	r7
      000804                       2006 00185$:
      000804 8E 21            [24] 2007 	mov	(_displayNum + 0),r6
      000806 8F 22            [24] 2008 	mov	(_displayNum + 1),r7
                                   2009 ;	serial.c:390: rollUnderNum();
      000808 12 03 BF         [24] 2010 	lcall	_rollUnderNum
      00080B                       2011 00123$:
                                   2012 ;	serial.c:394: i2c_buttons();
      00080B 12 05 12         [24] 2013 	lcall	_i2c_buttons
                                   2014 ;	serial.c:398: }
      00080E 02 07 92         [24] 2015 	ljmp	00125$
                                   2016 	.area CSEG    (CODE)
                                   2017 	.area CONST   (CODE)
      000896                       2018 _table:
      000896 C0 00                 2019 	.byte #0xc0,#0x00	; 192
      000898 F9 00                 2020 	.byte #0xf9,#0x00	; 249
      00089A A4 00                 2021 	.byte #0xa4,#0x00	; 164
      00089C B0 00                 2022 	.byte #0xb0,#0x00	; 176
      00089E 99 00                 2023 	.byte #0x99,#0x00	; 153
      0008A0 92 00                 2024 	.byte #0x92,#0x00	; 146
      0008A2 82 00                 2025 	.byte #0x82,#0x00	; 130
      0008A4 F8 00                 2026 	.byte #0xf8,#0x00	; 248
      0008A6 80 00                 2027 	.byte #0x80,#0x00	; 128
      0008A8 90 00                 2028 	.byte #0x90,#0x00	; 144
      0008AA                       2029 ___str_0:
      0008AA 48 65 6C 6C 6F 20 57  2030 	.ascii "Hello World!    "
             6F 72 6C 64 21 20 20
             20 20
      0008BA 00                    2031 	.db 0x00
      0008BB                       2032 ___str_1:
      0008BB 20 20 20 42 6F 62 20  2033 	.ascii "   Bob is Great!"
             69 73 20 47 72 65 61
             74 21
      0008CB 00                    2034 	.db 0x00
                                   2035 	.area XINIT   (CODE)
                                   2036 	.area CABS    (ABS,CODE)
