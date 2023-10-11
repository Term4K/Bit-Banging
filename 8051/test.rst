                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module test
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _led_data
                                     13 	.globl _i2c_read
                                     14 	.globl _i2c_write
                                     15 	.globl _i2c_stop
                                     16 	.globl _i2c_start
                                     17 	.globl _delay
                                     18 	.globl _TF2
                                     19 	.globl _EXF2
                                     20 	.globl _RCLK
                                     21 	.globl _TCLK
                                     22 	.globl _EXEN2
                                     23 	.globl _TR2
                                     24 	.globl _C_T2
                                     25 	.globl _CP_RL2
                                     26 	.globl _T2CON_7
                                     27 	.globl _T2CON_6
                                     28 	.globl _T2CON_5
                                     29 	.globl _T2CON_4
                                     30 	.globl _T2CON_3
                                     31 	.globl _T2CON_2
                                     32 	.globl _T2CON_1
                                     33 	.globl _T2CON_0
                                     34 	.globl _PT2
                                     35 	.globl _ET2
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _TH2
                                    112 	.globl _TL2
                                    113 	.globl _RCAP2H
                                    114 	.globl _RCAP2L
                                    115 	.globl _T2CON
                                    116 	.globl _B
                                    117 	.globl _ACC
                                    118 	.globl _PSW
                                    119 	.globl _IP
                                    120 	.globl _P3
                                    121 	.globl _IE
                                    122 	.globl _P2
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _P1
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _P0
                                    137 ;--------------------------------------------------------
                                    138 ; special function registers
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0	=	0x0080
                           000081   143 _SP	=	0x0081
                           000082   144 _DPL	=	0x0082
                           000083   145 _DPH	=	0x0083
                           000087   146 _PCON	=	0x0087
                           000088   147 _TCON	=	0x0088
                           000089   148 _TMOD	=	0x0089
                           00008A   149 _TL0	=	0x008a
                           00008B   150 _TL1	=	0x008b
                           00008C   151 _TH0	=	0x008c
                           00008D   152 _TH1	=	0x008d
                           000090   153 _P1	=	0x0090
                           000098   154 _SCON	=	0x0098
                           000099   155 _SBUF	=	0x0099
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 _P3	=	0x00b0
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 _ACC	=	0x00e0
                           0000F0   162 _B	=	0x00f0
                           0000C8   163 _T2CON	=	0x00c8
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                                    168 ;--------------------------------------------------------
                                    169 ; special function bits
                                    170 ;--------------------------------------------------------
                                    171 	.area RSEG    (ABS,DATA)
      000000                        172 	.org 0x0000
                           000080   173 _P0_0	=	0x0080
                           000081   174 _P0_1	=	0x0081
                           000082   175 _P0_2	=	0x0082
                           000083   176 _P0_3	=	0x0083
                           000084   177 _P0_4	=	0x0084
                           000085   178 _P0_5	=	0x0085
                           000086   179 _P0_6	=	0x0086
                           000087   180 _P0_7	=	0x0087
                           000088   181 _IT0	=	0x0088
                           000089   182 _IE0	=	0x0089
                           00008A   183 _IT1	=	0x008a
                           00008B   184 _IE1	=	0x008b
                           00008C   185 _TR0	=	0x008c
                           00008D   186 _TF0	=	0x008d
                           00008E   187 _TR1	=	0x008e
                           00008F   188 _TF1	=	0x008f
                           000090   189 _P1_0	=	0x0090
                           000091   190 _P1_1	=	0x0091
                           000092   191 _P1_2	=	0x0092
                           000093   192 _P1_3	=	0x0093
                           000094   193 _P1_4	=	0x0094
                           000095   194 _P1_5	=	0x0095
                           000096   195 _P1_6	=	0x0096
                           000097   196 _P1_7	=	0x0097
                           000098   197 _RI	=	0x0098
                           000099   198 _TI	=	0x0099
                           00009A   199 _RB8	=	0x009a
                           00009B   200 _TB8	=	0x009b
                           00009C   201 _REN	=	0x009c
                           00009D   202 _SM2	=	0x009d
                           00009E   203 _SM1	=	0x009e
                           00009F   204 _SM0	=	0x009f
                           0000A0   205 _P2_0	=	0x00a0
                           0000A1   206 _P2_1	=	0x00a1
                           0000A2   207 _P2_2	=	0x00a2
                           0000A3   208 _P2_3	=	0x00a3
                           0000A4   209 _P2_4	=	0x00a4
                           0000A5   210 _P2_5	=	0x00a5
                           0000A6   211 _P2_6	=	0x00a6
                           0000A7   212 _P2_7	=	0x00a7
                           0000A8   213 _EX0	=	0x00a8
                           0000A9   214 _ET0	=	0x00a9
                           0000AA   215 _EX1	=	0x00aa
                           0000AB   216 _ET1	=	0x00ab
                           0000AC   217 _ES	=	0x00ac
                           0000AF   218 _EA	=	0x00af
                           0000B0   219 _P3_0	=	0x00b0
                           0000B1   220 _P3_1	=	0x00b1
                           0000B2   221 _P3_2	=	0x00b2
                           0000B3   222 _P3_3	=	0x00b3
                           0000B4   223 _P3_4	=	0x00b4
                           0000B5   224 _P3_5	=	0x00b5
                           0000B6   225 _P3_6	=	0x00b6
                           0000B7   226 _P3_7	=	0x00b7
                           0000B0   227 _RXD	=	0x00b0
                           0000B1   228 _TXD	=	0x00b1
                           0000B2   229 _INT0	=	0x00b2
                           0000B3   230 _INT1	=	0x00b3
                           0000B4   231 _T0	=	0x00b4
                           0000B5   232 _T1	=	0x00b5
                           0000B6   233 _WR	=	0x00b6
                           0000B7   234 _RD	=	0x00b7
                           0000B8   235 _PX0	=	0x00b8
                           0000B9   236 _PT0	=	0x00b9
                           0000BA   237 _PX1	=	0x00ba
                           0000BB   238 _PT1	=	0x00bb
                           0000BC   239 _PS	=	0x00bc
                           0000D0   240 _P	=	0x00d0
                           0000D1   241 _F1	=	0x00d1
                           0000D2   242 _OV	=	0x00d2
                           0000D3   243 _RS0	=	0x00d3
                           0000D4   244 _RS1	=	0x00d4
                           0000D5   245 _F0	=	0x00d5
                           0000D6   246 _AC	=	0x00d6
                           0000D7   247 _CY	=	0x00d7
                           0000AD   248 _ET2	=	0x00ad
                           0000BD   249 _PT2	=	0x00bd
                           0000C8   250 _T2CON_0	=	0x00c8
                           0000C9   251 _T2CON_1	=	0x00c9
                           0000CA   252 _T2CON_2	=	0x00ca
                           0000CB   253 _T2CON_3	=	0x00cb
                           0000CC   254 _T2CON_4	=	0x00cc
                           0000CD   255 _T2CON_5	=	0x00cd
                           0000CE   256 _T2CON_6	=	0x00ce
                           0000CF   257 _T2CON_7	=	0x00cf
                           0000C8   258 _CP_RL2	=	0x00c8
                           0000C9   259 _C_T2	=	0x00c9
                           0000CA   260 _TR2	=	0x00ca
                           0000CB   261 _EXEN2	=	0x00cb
                           0000CC   262 _TCLK	=	0x00cc
                           0000CD   263 _RCLK	=	0x00cd
                           0000CE   264 _EXF2	=	0x00ce
                           0000CF   265 _TF2	=	0x00cf
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable register banks
                                    268 ;--------------------------------------------------------
                                    269 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        270 	.ds 8
                                    271 ;--------------------------------------------------------
                                    272 ; internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area DSEG    (DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable items in internal ram 
                                    277 ;--------------------------------------------------------
                                    278 	.area	OSEG    (OVR,DATA)
                                    279 	.area	OSEG    (OVR,DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; Stack segment in internal ram 
                                    282 ;--------------------------------------------------------
                                    283 	.area	SSEG
      000008                        284 __start__stack:
      000008                        285 	.ds	1
                                    286 
                                    287 ;--------------------------------------------------------
                                    288 ; indirectly addressable internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area ISEG    (DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; absolute internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area IABS    (ABS,DATA)
                                    295 	.area IABS    (ABS,DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; bit data
                                    298 ;--------------------------------------------------------
                                    299 	.area BSEG    (BIT)
                                    300 ;--------------------------------------------------------
                                    301 ; paged external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area PSEG    (PAG,XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XSEG    (XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; absolute external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XABS    (ABS,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; external initialized ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XISEG   (XDATA)
                                    316 	.area HOME    (CODE)
                                    317 	.area GSINIT0 (CODE)
                                    318 	.area GSINIT1 (CODE)
                                    319 	.area GSINIT2 (CODE)
                                    320 	.area GSINIT3 (CODE)
                                    321 	.area GSINIT4 (CODE)
                                    322 	.area GSINIT5 (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area CSEG    (CODE)
                                    326 ;--------------------------------------------------------
                                    327 ; interrupt vector 
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
      000000                        330 __interrupt_vect:
      000000 02 00 06         [24]  331 	ljmp	__sdcc_gsinit_startup
                                    332 ;--------------------------------------------------------
                                    333 ; global & static initialisations
                                    334 ;--------------------------------------------------------
                                    335 	.area HOME    (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.area GSFINAL (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 	.globl __sdcc_gsinit_startup
                                    340 	.globl __sdcc_program_startup
                                    341 	.globl __start__stack
                                    342 	.globl __mcs51_genXINIT
                                    343 	.globl __mcs51_genXRAMCLEAR
                                    344 	.globl __mcs51_genRAMCLEAR
                                    345 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  346 	ljmp	__sdcc_program_startup
                                    347 ;--------------------------------------------------------
                                    348 ; Home
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area HOME    (CODE)
      000003                        352 __sdcc_program_startup:
      000003 02 01 86         [24]  353 	ljmp	_main
                                    354 ;	return from main will return to caller
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'delay'
                                    361 ;------------------------------------------------------------
                                    362 ;i                         Allocated to registers 
                                    363 ;j                         Allocated to registers r6 r7 
                                    364 ;k                         Allocated to registers r4 r5 
                                    365 ;------------------------------------------------------------
                                    366 ;	test.c:6: void delay(unsigned int i){
                                    367 ;	-----------------------------------------
                                    368 ;	 function delay
                                    369 ;	-----------------------------------------
      000062                        370 _delay:
                           000007   371 	ar7 = 0x07
                           000006   372 	ar6 = 0x06
                           000005   373 	ar5 = 0x05
                           000004   374 	ar4 = 0x04
                           000003   375 	ar3 = 0x03
                           000002   376 	ar2 = 0x02
                           000001   377 	ar1 = 0x01
                           000000   378 	ar0 = 0x00
      000062 AE 82            [24]  379 	mov	r6,dpl
      000064 AF 83            [24]  380 	mov	r7,dph
                                    381 ;	test.c:9: for(j = i; j > 0; j--)
      000066                        382 00106$:
      000066 EE               [12]  383 	mov	a,r6
      000067 4F               [12]  384 	orl	a,r7
      000068 60 1B            [24]  385 	jz	00108$
                                    386 ;	test.c:10: for(k = 125; k > 0; k--);
      00006A 7C 7D            [12]  387 	mov	r4,#0x7d
      00006C 7D 00            [12]  388 	mov	r5,#0x00
      00006E                        389 00104$:
      00006E EC               [12]  390 	mov	a,r4
      00006F 24 FF            [12]  391 	add	a,#0xff
      000071 FA               [12]  392 	mov	r2,a
      000072 ED               [12]  393 	mov	a,r5
      000073 34 FF            [12]  394 	addc	a,#0xff
      000075 FB               [12]  395 	mov	r3,a
      000076 8A 04            [24]  396 	mov	ar4,r2
      000078 8B 05            [24]  397 	mov	ar5,r3
      00007A EA               [12]  398 	mov	a,r2
      00007B 4B               [12]  399 	orl	a,r3
      00007C 70 F0            [24]  400 	jnz	00104$
                                    401 ;	test.c:9: for(j = i; j > 0; j--)
      00007E 1E               [12]  402 	dec	r6
      00007F BE FF 01         [24]  403 	cjne	r6,#0xff,00133$
      000082 1F               [12]  404 	dec	r7
      000083                        405 00133$:
      000083 80 E1            [24]  406 	sjmp	00106$
      000085                        407 00108$:
                                    408 ;	test.c:11: }
      000085 22               [24]  409 	ret
                                    410 ;------------------------------------------------------------
                                    411 ;Allocation info for local variables in function 'i2c_start'
                                    412 ;------------------------------------------------------------
                                    413 ;	test.c:13: void i2c_start(void){
                                    414 ;	-----------------------------------------
                                    415 ;	 function i2c_start
                                    416 ;	-----------------------------------------
      000086                        417 _i2c_start:
                                    418 ;	test.c:14: SDA = 1;
                                    419 ;	assignBit
      000086 D2 A1            [12]  420 	setb	_P2_1
                                    421 ;	test.c:15: SCL = 1;
                                    422 ;	assignBit
      000088 D2 A0            [12]  423 	setb	_P2_0
                                    424 ;	test.c:16: SDA = 0;
                                    425 ;	assignBit
      00008A C2 A1            [12]  426 	clr	_P2_1
                                    427 ;	test.c:17: SCL = 0;
                                    428 ;	assignBit
      00008C C2 A0            [12]  429 	clr	_P2_0
                                    430 ;	test.c:18: }
      00008E 22               [24]  431 	ret
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'i2c_stop'
                                    434 ;------------------------------------------------------------
                                    435 ;	test.c:20: void i2c_stop(void){
                                    436 ;	-----------------------------------------
                                    437 ;	 function i2c_stop
                                    438 ;	-----------------------------------------
      00008F                        439 _i2c_stop:
                                    440 ;	test.c:21: SDA = 0;
                                    441 ;	assignBit
      00008F C2 A1            [12]  442 	clr	_P2_1
                                    443 ;	test.c:22: SCL = 1;
                                    444 ;	assignBit
      000091 D2 A0            [12]  445 	setb	_P2_0
                                    446 ;	test.c:23: SDA = 1;
                                    447 ;	assignBit
      000093 D2 A1            [12]  448 	setb	_P2_1
                                    449 ;	test.c:24: SCL = 0;
                                    450 ;	assignBit
      000095 C2 A0            [12]  451 	clr	_P2_0
                                    452 ;	test.c:25: }
      000097 22               [24]  453 	ret
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'i2c_write'
                                    456 ;------------------------------------------------------------
                                    457 ;data                      Allocated to registers r7 
                                    458 ;i                         Allocated to registers r6 
                                    459 ;------------------------------------------------------------
                                    460 ;	test.c:27: void i2c_write(unsigned char data){
                                    461 ;	-----------------------------------------
                                    462 ;	 function i2c_write
                                    463 ;	-----------------------------------------
      000098                        464 _i2c_write:
      000098 AF 82            [24]  465 	mov	r7,dpl
                                    466 ;	test.c:29: for(i=0; i < 8; i++){
      00009A 7E 00            [12]  467 	mov	r6,#0x00
      00009C                        468 00102$:
                                    469 ;	test.c:30: SDA = (data & 0x80)>>7;
      00009C 74 80            [12]  470 	mov	a,#0x80
      00009E 5F               [12]  471 	anl	a,r7
      00009F 23               [12]  472 	rl	a
      0000A0 54 01            [12]  473 	anl	a,#0x01
                                    474 ;	assignBit
      0000A2 24 FF            [12]  475 	add	a,#0xff
      0000A4 92 A1            [24]  476 	mov	_P2_1,c
                                    477 ;	test.c:31: SCL = 1;
                                    478 ;	assignBit
      0000A6 D2 A0            [12]  479 	setb	_P2_0
                                    480 ;	test.c:32: delay(1);
      0000A8 90 00 01         [24]  481 	mov	dptr,#0x0001
      0000AB C0 07            [24]  482 	push	ar7
      0000AD C0 06            [24]  483 	push	ar6
      0000AF 12 00 62         [24]  484 	lcall	_delay
      0000B2 D0 06            [24]  485 	pop	ar6
      0000B4 D0 07            [24]  486 	pop	ar7
                                    487 ;	test.c:33: SCL = 0;
                                    488 ;	assignBit
      0000B6 C2 A0            [12]  489 	clr	_P2_0
                                    490 ;	test.c:34: data <<= 1;
      0000B8 8F 05            [24]  491 	mov	ar5,r7
      0000BA ED               [12]  492 	mov	a,r5
      0000BB 2D               [12]  493 	add	a,r5
      0000BC FF               [12]  494 	mov	r7,a
                                    495 ;	test.c:29: for(i=0; i < 8; i++){
      0000BD 0E               [12]  496 	inc	r6
      0000BE BE 08 00         [24]  497 	cjne	r6,#0x08,00115$
      0000C1                        498 00115$:
      0000C1 40 D9            [24]  499 	jc	00102$
                                    500 ;	test.c:37: SDA = 1;
                                    501 ;	assignBit
      0000C3 D2 A1            [12]  502 	setb	_P2_1
                                    503 ;	test.c:38: SCL = 1;
                                    504 ;	assignBit
      0000C5 D2 A0            [12]  505 	setb	_P2_0
                                    506 ;	test.c:39: delay(1);
      0000C7 90 00 01         [24]  507 	mov	dptr,#0x0001
      0000CA 12 00 62         [24]  508 	lcall	_delay
                                    509 ;	test.c:40: SCL = 0;
                                    510 ;	assignBit
      0000CD C2 A0            [12]  511 	clr	_P2_0
                                    512 ;	test.c:41: }
      0000CF 22               [24]  513 	ret
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'i2c_read'
                                    516 ;------------------------------------------------------------
                                    517 ;i                         Allocated to registers r6 
                                    518 ;data                      Allocated to registers r5 
                                    519 ;------------------------------------------------------------
                                    520 ;	test.c:43: unsigned char i2c_read(void){
                                    521 ;	-----------------------------------------
                                    522 ;	 function i2c_read
                                    523 ;	-----------------------------------------
      0000D0                        524 _i2c_read:
                                    525 ;	test.c:44: unsigned char i, data = 0;
      0000D0 7F 00            [12]  526 	mov	r7,#0x00
                                    527 ;	test.c:46: for(i = 0; i < 8; i++){
      0000D2 7E 00            [12]  528 	mov	r6,#0x00
      0000D4                        529 00102$:
                                    530 ;	test.c:47: SCL = 1;
                                    531 ;	assignBit
      0000D4 D2 A0            [12]  532 	setb	_P2_0
                                    533 ;	test.c:48: data <<= 1;
      0000D6 8F 05            [24]  534 	mov	ar5,r7
      0000D8 ED               [12]  535 	mov	a,r5
      0000D9 2D               [12]  536 	add	a,r5
      0000DA FD               [12]  537 	mov	r5,a
                                    538 ;	test.c:49: data |= SDA;
      0000DB A2 A1            [12]  539 	mov	c,_P2_1
      0000DD E4               [12]  540 	clr	a
      0000DE 33               [12]  541 	rlc	a
      0000DF 4D               [12]  542 	orl	a,r5
      0000E0 FF               [12]  543 	mov	r7,a
                                    544 ;	test.c:50: SCL = 0;
                                    545 ;	assignBit
      0000E1 C2 A0            [12]  546 	clr	_P2_0
                                    547 ;	test.c:46: for(i = 0; i < 8; i++){
      0000E3 0E               [12]  548 	inc	r6
      0000E4 BE 08 00         [24]  549 	cjne	r6,#0x08,00117$
      0000E7                        550 00117$:
      0000E7 40 EB            [24]  551 	jc	00102$
                                    552 ;	test.c:53: SDA = 0;
                                    553 ;	assignBit
      0000E9 C2 A1            [12]  554 	clr	_P2_1
                                    555 ;	test.c:54: SCL = 1;
                                    556 ;	assignBit
      0000EB D2 A0            [12]  557 	setb	_P2_0
                                    558 ;	test.c:55: SCL = 0;
                                    559 ;	assignBit
      0000ED C2 A0            [12]  560 	clr	_P2_0
                                    561 ;	test.c:56: SDA = 1;
                                    562 ;	assignBit
      0000EF D2 A1            [12]  563 	setb	_P2_1
                                    564 ;	test.c:57: return data;
      0000F1 8F 82            [24]  565 	mov	dpl,r7
                                    566 ;	test.c:58: }
      0000F3 22               [24]  567 	ret
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'led_data'
                                    570 ;------------------------------------------------------------
                                    571 ;buttons                   Allocated to registers r7 
                                    572 ;leds                      Allocated to registers r7 
                                    573 ;button1                   Allocated to registers r5 
                                    574 ;button2                   Allocated to registers r4 
                                    575 ;button3                   Allocated to registers r3 
                                    576 ;button4                   Allocated to registers r6 
                                    577 ;------------------------------------------------------------
                                    578 ;	test.c:60: void led_data(void){
                                    579 ;	-----------------------------------------
                                    580 ;	 function led_data
                                    581 ;	-----------------------------------------
      0000F4                        582 _led_data:
                                    583 ;	test.c:67: i2c_start();
      0000F4 12 00 86         [24]  584 	lcall	_i2c_start
                                    585 ;	test.c:68: i2c_write(0x40 | 1);
      0000F7 75 82 41         [24]  586 	mov	dpl,#0x41
      0000FA 12 00 98         [24]  587 	lcall	_i2c_write
                                    588 ;	test.c:69: buttons = ~i2c_read();
      0000FD 12 00 D0         [24]  589 	lcall	_i2c_read
      000100 E5 82            [12]  590 	mov	a,dpl
      000102 F4               [12]  591 	cpl	a
      000103 FF               [12]  592 	mov	r7,a
                                    593 ;	test.c:70: i2c_stop();
      000104 C0 07            [24]  594 	push	ar7
      000106 12 00 8F         [24]  595 	lcall	_i2c_stop
      000109 D0 07            [24]  596 	pop	ar7
                                    597 ;	test.c:72: button1 = (buttons & 0x10) ? 1 : 0;
      00010B EF               [12]  598 	mov	a,r7
      00010C 30 E4 06         [24]  599 	jnb	acc.4,00111$
      00010F 7D 01            [12]  600 	mov	r5,#0x01
      000111 7E 00            [12]  601 	mov	r6,#0x00
      000113 80 04            [24]  602 	sjmp	00112$
      000115                        603 00111$:
      000115 7D 00            [12]  604 	mov	r5,#0x00
      000117 7E 00            [12]  605 	mov	r6,#0x00
      000119                        606 00112$:
                                    607 ;	test.c:73: button2 = (buttons & 0x20) ? 1 : 0;
      000119 EF               [12]  608 	mov	a,r7
      00011A 30 E5 06         [24]  609 	jnb	acc.5,00113$
      00011D 7C 01            [12]  610 	mov	r4,#0x01
      00011F 7E 00            [12]  611 	mov	r6,#0x00
      000121 80 04            [24]  612 	sjmp	00114$
      000123                        613 00113$:
      000123 7C 00            [12]  614 	mov	r4,#0x00
      000125 7E 00            [12]  615 	mov	r6,#0x00
      000127                        616 00114$:
                                    617 ;	test.c:74: button3 = (buttons & 0x40) ? 1 : 0;
      000127 EF               [12]  618 	mov	a,r7
      000128 30 E6 06         [24]  619 	jnb	acc.6,00115$
      00012B 7B 01            [12]  620 	mov	r3,#0x01
      00012D 7E 00            [12]  621 	mov	r6,#0x00
      00012F 80 04            [24]  622 	sjmp	00116$
      000131                        623 00115$:
      000131 7B 00            [12]  624 	mov	r3,#0x00
      000133 7E 00            [12]  625 	mov	r6,#0x00
      000135                        626 00116$:
                                    627 ;	test.c:75: button4 = (buttons & 0x80) ? 1 : 0;
      000135 EF               [12]  628 	mov	a,r7
      000136 30 E7 06         [24]  629 	jnb	acc.7,00117$
      000139 7E 01            [12]  630 	mov	r6,#0x01
      00013B 7F 00            [12]  631 	mov	r7,#0x00
      00013D 80 04            [24]  632 	sjmp	00118$
      00013F                        633 00117$:
      00013F 7E 00            [12]  634 	mov	r6,#0x00
      000141 7F 00            [12]  635 	mov	r7,#0x00
      000143                        636 00118$:
                                    637 ;	test.c:77: leds = 0x00;
      000143 7F 00            [12]  638 	mov	r7,#0x00
                                    639 ;	test.c:78: if(button1) leds |= 0x01;
      000145 ED               [12]  640 	mov	a,r5
      000146 60 02            [24]  641 	jz	00102$
      000148 7F 01            [12]  642 	mov	r7,#0x01
      00014A                        643 00102$:
                                    644 ;	test.c:79: if(button2) leds |= 0x02;
      00014A EC               [12]  645 	mov	a,r4
      00014B 60 09            [24]  646 	jz	00104$
      00014D 8F 04            [24]  647 	mov	ar4,r7
      00014F 7D 00            [12]  648 	mov	r5,#0x00
      000151 43 04 02         [24]  649 	orl	ar4,#0x02
      000154 8C 07            [24]  650 	mov	ar7,r4
      000156                        651 00104$:
                                    652 ;	test.c:80: if(button3) leds |= 0x04;
      000156 EB               [12]  653 	mov	a,r3
      000157 60 09            [24]  654 	jz	00106$
      000159 8F 04            [24]  655 	mov	ar4,r7
      00015B 7D 00            [12]  656 	mov	r5,#0x00
      00015D 43 04 04         [24]  657 	orl	ar4,#0x04
      000160 8C 07            [24]  658 	mov	ar7,r4
      000162                        659 00106$:
                                    660 ;	test.c:81: if(button4) leds |= 0x08;
      000162 EE               [12]  661 	mov	a,r6
      000163 60 09            [24]  662 	jz	00108$
      000165 8F 05            [24]  663 	mov	ar5,r7
      000167 7E 00            [12]  664 	mov	r6,#0x00
      000169 43 05 08         [24]  665 	orl	ar5,#0x08
      00016C 8D 07            [24]  666 	mov	ar7,r5
      00016E                        667 00108$:
                                    668 ;	test.c:82: leds = ~leds;
      00016E EF               [12]  669 	mov	a,r7
      00016F F4               [12]  670 	cpl	a
      000170 FF               [12]  671 	mov	r7,a
                                    672 ;	test.c:85: i2c_start();
      000171 C0 07            [24]  673 	push	ar7
      000173 12 00 86         [24]  674 	lcall	_i2c_start
                                    675 ;	test.c:86: i2c_write(0x40);
      000176 75 82 40         [24]  676 	mov	dpl,#0x40
      000179 12 00 98         [24]  677 	lcall	_i2c_write
      00017C D0 07            [24]  678 	pop	ar7
                                    679 ;	test.c:87: i2c_write(leds);
      00017E 8F 82            [24]  680 	mov	dpl,r7
      000180 12 00 98         [24]  681 	lcall	_i2c_write
                                    682 ;	test.c:88: i2c_stop();
                                    683 ;	test.c:90: }
      000183 02 00 8F         [24]  684 	ljmp	_i2c_stop
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'main'
                                    687 ;------------------------------------------------------------
                                    688 ;	test.c:92: void main(void){
                                    689 ;	-----------------------------------------
                                    690 ;	 function main
                                    691 ;	-----------------------------------------
      000186                        692 _main:
                                    693 ;	test.c:93: while(1){
      000186                        694 00102$:
                                    695 ;	test.c:94: led_data();
      000186 12 00 F4         [24]  696 	lcall	_led_data
                                    697 ;	test.c:96: }
      000189 80 FB            [24]  698 	sjmp	00102$
                                    699 	.area CSEG    (CODE)
                                    700 	.area CONST   (CODE)
                                    701 	.area XINIT   (CODE)
                                    702 	.area CABS    (ABS,CODE)
