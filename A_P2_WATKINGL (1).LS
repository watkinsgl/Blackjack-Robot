/PROG  A_P2_WATKINGL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 8125;
CREATE		= DATE 25-11-26  TIME 10:19:14;
MODIFIED	= DATE 25-12-03  TIME 07:06:12;
FILE_NAME	= A_PROJEC;
VERSION		= 0;
LINE_COUNT	= 512;
MEMORY_SIZE	= 8893;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
  CYCLE_REFERENCE = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
  CYCLE_TARGET =   0.00 ;
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  R[34:standTF]=0    ;
   4:  R[40:#ofCards]=0    ;
   5:  R[41:HandValue]=0    ;
   6:  R[42:2card]=0    ;
   7:  R[43:3card]=0    ;
   8:  R[44:4card]=0    ;
   9:  R[45:5card]=0    ;
  10:  R[46:6card]=0    ;
  11:  R[47:7card]=0    ;
  12:  R[48:8card]=0    ;
  13:  R[49:9card]=0    ;
  14:  R[50:10card]=0    ;
  15:  R[51:Jcard]=0    ;
  16:  R[52:Qcard]=0    ;
  17:  R[53:Kcard]=0    ;
  18:  R[54:Acard]=0    ;
  19:  PR[5,2:watkingl]=0    ;
  20:  R[37:math]=0    ;
  21:  R[35:dealerCount]=0    ;
  22:  R[36:dealerVALUE]=0    ;
  23:   ;
  24:  RO[3:GRIPPER]=ON ;
  25:   ;
  26:  PR[6,2:dealer]=0    ;
  27:J P[1] 100% FINE    ;
  28:   ;
  29:J P[2] 100% FINE    ;
  30:   ;
  31:  JMP LBL[2] ;
  32:  LBL[16] ;
  33:   ;
  34:   ;
  35:  R[37:math]=R[40:#ofCards]*R[39:spacing]    ;
  36:   ;
  37:  PR[5,2:watkingl]=PR[5,2:watkingl]+R[37:math]    ;
  38:   ;
  39:J P[2] 100% FINE Offset,PR[5:watkingl]    ;
  40:  R[37:math]=0    ;
  41:  PR[5,2:watkingl]=0    ;
  42:   ;
  43:  JMP LBL[2] ;
  44:   ;
  45:   ;
  46:  LBL[2] ;
  47:   ;
  48:  VISION RUN_FIND 'A_2S'    ;
  49:  VISION GET_NFOUND 'A_2S' R[42]    ;
  50:  IF R[42:2card]<=0,JMP LBL[3] ;
  51:  R[40:#ofCards]=R[40:#ofCards]+1    ;
  52:  R[41:HandValue]=R[41:HandValue]+2    ;
  53:  JMP LBL[15] ;
  54:   ;
  55:   ;
  56:   ;
  57:  LBL[3] ;
  58:   ;
  59:  VISION RUN_FIND 'A_3S'    ;
  60:  VISION GET_NFOUND 'A_3S' R[43]    ;
  61:  IF R[43:3card]<=0,JMP LBL[4] ;
  62:  R[40:#ofCards]=R[40:#ofCards]+1    ;
  63:   ;
  64:  R[41:HandValue]=R[41:HandValue]+3    ;
  65:  JMP LBL[15] ;
  66:   ;
  67:   ;
  68:   ;
  69:  LBL[4] ;
  70:   ;
  71:  VISION RUN_FIND 'A_4S'    ;
  72:  VISION GET_NFOUND 'A_4S' R[44]    ;
  73:  IF R[44:4card]<=0,JMP LBL[5] ;
  74:  R[40:#ofCards]=R[40:#ofCards]+1    ;
  75:   ;
  76:  R[41:HandValue]=R[41:HandValue]+4    ;
  77:  JMP LBL[15] ;
  78:   ;
  79:   ;
  80:   ;
  81:  LBL[5] ;
  82:   ;
  83:  VISION RUN_FIND 'A_5S'    ;
  84:  VISION GET_NFOUND 'A_5S' R[45]    ;
  85:  IF R[45:5card]<=0,JMP LBL[6] ;
  86:  R[40:#ofCards]=R[40:#ofCards]+1    ;
  87:   ;
  88:  R[41:HandValue]=R[41:HandValue]+5    ;
  89:  JMP LBL[15] ;
  90:   ;
  91:   ;
  92:   ;
  93:  LBL[6] ;
  94:   ;
  95:  VISION RUN_FIND 'A_6S'    ;
  96:  VISION GET_NFOUND 'A_6S' R[46]    ;
  97:  IF R[46:6card]<=0,JMP LBL[7] ;
  98:  R[40:#ofCards]=R[40:#ofCards]+1    ;
  99:   ;
 100:  R[41:HandValue]=R[41:HandValue]+6    ;
 101:  JMP LBL[15] ;
 102:   ;
 103:   ;
 104:   ;
 105:  LBL[7] ;
 106:   ;
 107:  VISION RUN_FIND 'A_7S'    ;
 108:  VISION GET_NFOUND 'A_7S' R[47]    ;
 109:  IF R[47:7card]<=0,JMP LBL[8] ;
 110:  R[40:#ofCards]=R[40:#ofCards]+1    ;
 111:   ;
 112:  R[41:HandValue]=R[41:HandValue]+7    ;
 113:  JMP LBL[15] ;
 114:   ;
 115:   ;
 116:   ;
 117:  LBL[8] ;
 118:   ;
 119:  VISION RUN_FIND 'A_8S'    ;
 120:  VISION GET_NFOUND 'A_8S' R[48]    ;
 121:  IF R[48:8card]<=0,JMP LBL[9] ;
 122:  R[40:#ofCards]=R[40:#ofCards]+1    ;
 123:   ;
 124:  R[41:HandValue]=R[41:HandValue]+8    ;
 125:  JMP LBL[15] ;
 126:   ;
 127:   ;
 128:   ;
 129:  LBL[9] ;
 130:   ;
 131:  VISION RUN_FIND 'A_9S'    ;
 132:  VISION GET_NFOUND 'A_9S' R[49]    ;
 133:  IF R[49:9card]<=0,JMP LBL[10] ;
 134:  R[40:#ofCards]=R[40:#ofCards]+1    ;
 135:   ;
 136:  R[41:HandValue]=R[41:HandValue]+9    ;
 137:  JMP LBL[15] ;
 138:   ;
 139:   ;
 140:   ;
 141:  LBL[10] ;
 142:   ;
 143:  VISION RUN_FIND 'A_10S'    ;
 144:  VISION GET_NFOUND 'A_10S' R[50]    ;
 145:  IF R[50:10card]<=0,JMP LBL[11] ;
 146:  R[40:#ofCards]=R[40:#ofCards]+1    ;
 147:   ;
 148:  R[41:HandValue]=R[41:HandValue]+10    ;
 149:  JMP LBL[15] ;
 150:   ;
 151:   ;
 152:   ;
 153:  LBL[11] ;
 154:   ;
 155:  VISION RUN_FIND 'A_JS'    ;
 156:  VISION GET_NFOUND 'A_JS' R[51]    ;
 157:  IF R[51:Jcard]<=0,JMP LBL[12] ;
 158:  R[40:#ofCards]=R[40:#ofCards]+1    ;
 159:   ;
 160:  R[41:HandValue]=R[41:HandValue]+10    ;
 161:  JMP LBL[15] ;
 162:   ;
 163:   ;
 164:   ;
 165:  LBL[12] ;
 166:   ;
 167:  VISION RUN_FIND 'A_QS'    ;
 168:  VISION GET_NFOUND 'A_QS' R[52]    ;
 169:  IF R[52:Qcard]<=0,JMP LBL[13] ;
 170:  R[40:#ofCards]=R[40:#ofCards]+1    ;
 171:   ;
 172:  R[41:HandValue]=R[41:HandValue]+10    ;
 173:  JMP LBL[15] ;
 174:   ;
 175:   ;
 176:   ;
 177:  LBL[13] ;
 178:   ;
 179:  VISION RUN_FIND 'A_KS'    ;
 180:  VISION GET_NFOUND 'A_KS' R[53]    ;
 181:  IF R[53:Kcard]<=0,JMP LBL[14] ;
 182:  R[40:#ofCards]=R[40:#ofCards]+1    ;
 183:   ;
 184:  R[41:HandValue]=R[41:HandValue]+10    ;
 185:  JMP LBL[15] ;
 186:   ;
 187:   ;
 188:   ;
 189:  LBL[14] ;
 190:   ;
 191:  VISION RUN_FIND 'A_AS'    ;
 192:  VISION GET_NFOUND 'A_AS' R[54]    ;
 193:  IF R[54:Acard]<=0,JMP LBL[15] ;
 194:  R[40:#ofCards]=R[40:#ofCards]+1    ;
 195:   ;
 196:  IF (R[41:HandValue]+11>21),JMP LBL[21] ;
 197:  R[41:HandValue]=R[41:HandValue]+11    ;
 198:  JMP LBL[15] ;
 199:   ;
 200:  LBL[21] ;
 201:  R[41:HandValue]=R[41:HandValue]+1    ;
 202:  JMP LBL[15] ;
 203:   ;
 204:   ;
 205:  LBL[15] ;
 206:   ;
 207:  R[42:2card]=0    ;
 208:  R[43:3card]=0    ;
 209:  R[44:4card]=0    ;
 210:  R[45:5card]=0    ;
 211:  R[46:6card]=0    ;
 212:  R[47:7card]=0    ;
 213:  R[48:8card]=0    ;
 214:  R[49:9card]=0    ;
 215:  R[50:10card]=0    ;
 216:  R[51:Jcard]=0    ;
 217:  R[52:Qcard]=0    ;
 218:  R[53:Kcard]=0    ;
 219:  R[54:Acard]=0    ;
 220:   ;
 221:  IF R[40:#ofCards]<2,JMP LBL[16] ;
 222:   ;
 223:   ;
 224:  IF R[40:#ofCards]=2 AND R[35:dealerCount]=0,JMP LBL[42] ;
 225:   ;
 226:   ;
 227:  IF R[40:#ofCards]>=2 AND R[35:dealerCount]>=1,JMP LBL[17] ;
 228:   ;
 229:   ;
 230:  LBL[17] ;
 231:  IF R[34:standTF]=1,JMP LBL[18] ;
 232:  IF R[41:HandValue]=21,JMP LBL[30] ;
 233:  IF R[41:HandValue]>21,JMP LBL[31] ;
 234:   ;
 235:  IF R[41:HandValue]<21 AND R[41:HandValue]>=17,JMP LBL[18] ;
 236:   ;
 237:   ;
 238:  IF R[41:HandValue]<=11,JMP LBL[19] ;
 239:   ;
 240:  IF R[41:HandValue]=12,JMP LBL[99] ;
 241:   ;
 242:   ;
 243:  IF R[41:HandValue]>=13 AND R[41:HandValue]<=16,JMP LBL[100] ;
 244:   ;
 245:   ;
 246:  LBL[99] ;
 247:  IF R[36:dealerVALUE]<=6 AND R[36:dealerVALUE]>=4,JMP LBL[18] ;
 248:  IF R[36:dealerVALUE]<=3 OR R[36:dealerVALUE]>=7,JMP LBL[19] ;
 249:   ;
 250:   ;
 251:   ;
 252:  LBL[100] ;
 253:  IF R[36:dealerVALUE]<=6 AND R[36:dealerVALUE]>=2,JMP LBL[18] ;
 254:  IF R[36:dealerVALUE]>=7,JMP LBL[19] ;
 255:   ;
 256:   ;
 257:   ;
 258:   ;
 259:   ;
 260:   ;
 261:   ;
 262:   ;
 263:   ;
 264:   ;
 265:  LBL[19] ;
 266:J P[1] 100% FINE    ;
 267:J P[3] 100% FINE    ;
 268:J P[1] 100% FINE    ;
 269:J P[3] 100% FINE    ;
 270:J P[1] 100% FINE    ;
 271:   ;
 272:  WAIT  10.00(sec) ;
 273:  JMP LBL[16] ;
 274:   ;
 275:  LBL[18] ;
 276:   ;
 277:  IF R[34:standTF]=1,JMP LBL[79] ;
 278:   ;
 279:J P[1] 100% FINE    ;
 280:J P[4] 100% FINE    ;
 281:J P[5] 100% FINE    ;
 282:  R[34:standTF]=R[34:standTF]+1    ;
 283:   ;
 284:  LBL[79] ;
 285:   ;
 286:   ;
 287:  IF R[36:dealerVALUE]<17,JMP LBL[67] ;
 288:  JMP LBL[69] ;
 289:   ;
 290:   ;
 291:   ;
 292:   ;
 293:   ;
 294:  LBL[69] ;
 295:  IF R[36:dealerVALUE]>R[41:HandValue],JMP LBL[31] ;
 296:  IF R[41:HandValue]>R[36:dealerVALUE],JMP LBL[30] ;
 297:   ;
 298:   ;
 299:   ;
 300:   ;
 301:   ;
 302:  LBL[30] ;
 303:J P[1] 100% FINE    ;
 304:  RO[3:GRIPPER]=ON ;
 305:L P[6] 1000mm/sec FINE    ;
 306:L P[7] 1000mm/sec FINE    ;
 307:  RO[3:GRIPPER]=OFF ;
 308:L P[6] 1000mm/sec FINE    ;
 309:J P[1] 100% FINE    ;
 310:L P[8] 1000mm/sec FINE    ;
 311:  RO[3:GRIPPER]=ON ;
 312:J P[1] 100% FINE    ;
 313:  JMP LBL[32] ;
 314:   ;
 315:   ;
 316:  LBL[31] ;
 317:J P[1] 100% FINE    ;
 318:  RO[3:GRIPPER]=ON ;
 319:L P[6] 1000mm/sec FINE    ;
 320:L P[7] 1000mm/sec FINE    ;
 321:  RO[3:GRIPPER]=OFF ;
 322:L P[6] 1000mm/sec FINE    ;
 323:J P[1] 100% FINE    ;
 324:J P[9] 100% FINE    ;
 325:  RO[3:GRIPPER]=ON ;
 326:J P[1] 100% FINE    ;
 327:  JMP LBL[32] ;
 328:   ;
 329:   ;
 330:   ;
 331:  LBL[42] ;
 332:J P[11] 100% FINE    ;
 333:  JMP LBL[93] ;
 334:  LBL[67] ;
 335:   ;
 336:  R[37:math]=R[35:dealerCount]*R[39:spacing]    ;
 337:   ;
 338:  PR[6,2:dealer]=PR[6,2:dealer]+R[37:math]    ;
 339:   ;
 340:J P[11] 100% FINE Offset,PR[6:dealer]    ;
 341:   ;
 342:  WAIT  10.00(sec) ;
 343:  R[37:math]=0    ;
 344:  PR[6,2:dealer]=0    ;
 345:   ;
 346:   ;
 347:   ;
 348:   ;
 349:   ;
 350:   ;
 351:  LBL[93] ;
 352:  VISION RUN_FIND 'A_2S'    ;
 353:  VISION GET_NFOUND 'A_2S' R[42]    ;
 354:  IF R[42:2card]<=0,JMP LBL[43] ;
 355:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 356:  R[36:dealerVALUE]=R[36:dealerVALUE]+2    ;
 357:  JMP LBL[15] ;
 358:   ;
 359:   ;
 360:   ;
 361:  LBL[43] ;
 362:   ;
 363:  VISION RUN_FIND 'A_3S'    ;
 364:  VISION GET_NFOUND 'A_3S' R[43]    ;
 365:  IF R[43:3card]<=0,JMP LBL[44] ;
 366:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 367:   ;
 368:  R[36:dealerVALUE]=R[36:dealerVALUE]+3    ;
 369:  JMP LBL[15] ;
 370:   ;
 371:   ;
 372:   ;
 373:  LBL[44] ;
 374:   ;
 375:  VISION RUN_FIND 'A_4S'    ;
 376:  VISION GET_NFOUND 'A_4S' R[44]    ;
 377:  IF R[44:4card]<=0,JMP LBL[45] ;
 378:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 379:   ;
 380:  R[36:dealerVALUE]=R[36:dealerVALUE]+4    ;
 381:  JMP LBL[15] ;
 382:   ;
 383:   ;
 384:   ;
 385:  LBL[45] ;
 386:   ;
 387:  VISION RUN_FIND 'A_5S'    ;
 388:  VISION GET_NFOUND 'A_5S' R[45]    ;
 389:  IF R[45:5card]<=0,JMP LBL[46] ;
 390:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 391:   ;
 392:  R[36:dealerVALUE]=R[36:dealerVALUE]+5    ;
 393:  JMP LBL[15] ;
 394:   ;
 395:   ;
 396:   ;
 397:  LBL[46] ;
 398:   ;
 399:  VISION RUN_FIND 'A_6S'    ;
 400:  VISION GET_NFOUND 'A_6S' R[46]    ;
 401:  IF R[46:6card]<=0,JMP LBL[47] ;
 402:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 403:   ;
 404:  R[36:dealerVALUE]=R[36:dealerVALUE]+6    ;
 405:  JMP LBL[15] ;
 406:   ;
 407:   ;
 408:   ;
 409:  LBL[47] ;
 410:   ;
 411:  VISION RUN_FIND 'A_7S'    ;
 412:  VISION GET_NFOUND 'A_7S' R[47]    ;
 413:  IF R[47:7card]<=0,JMP LBL[48] ;
 414:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 415:   ;
 416:  R[36:dealerVALUE]=R[36:dealerVALUE]+7    ;
 417:  JMP LBL[15] ;
 418:   ;
 419:   ;
 420:   ;
 421:  LBL[48] ;
 422:   ;
 423:  VISION RUN_FIND 'A_8S'    ;
 424:  VISION GET_NFOUND 'A_8S' R[48]    ;
 425:  IF R[48:8card]<=0,JMP LBL[49] ;
 426:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 427:   ;
 428:  R[36:dealerVALUE]=R[36:dealerVALUE]+8    ;
 429:  JMP LBL[15] ;
 430:   ;
 431:   ;
 432:   ;
 433:  LBL[49] ;
 434:   ;
 435:  VISION RUN_FIND 'A_9S'    ;
 436:  VISION GET_NFOUND 'A_9S' R[49]    ;
 437:  IF R[49:9card]<=0,JMP LBL[50] ;
 438:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 439:   ;
 440:  R[36:dealerVALUE]=R[36:dealerVALUE]+9    ;
 441:  JMP LBL[15] ;
 442:   ;
 443:   ;
 444:   ;
 445:  LBL[50] ;
 446:   ;
 447:  VISION RUN_FIND 'A_10S'    ;
 448:  VISION GET_NFOUND 'A_10S' R[50]    ;
 449:  IF R[50:10card]<=0,JMP LBL[51] ;
 450:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 451:   ;
 452:  R[36:dealerVALUE]=R[36:dealerVALUE]+10    ;
 453:  JMP LBL[15] ;
 454:   ;
 455:   ;
 456:   ;
 457:  LBL[51] ;
 458:   ;
 459:  VISION RUN_FIND 'A_JS'    ;
 460:  VISION GET_NFOUND 'A_JS' R[51]    ;
 461:  IF R[51:Jcard]<=0,JMP LBL[53] ;
 462:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 463:   ;
 464:  R[36:dealerVALUE]=R[36:dealerVALUE]+10    ;
 465:  JMP LBL[15] ;
 466:   ;
 467:   ;
 468:   ;
 469:  LBL[53] ;
 470:   ;
 471:  VISION RUN_FIND 'A_QS'    ;
 472:  VISION GET_NFOUND 'A_QS' R[52]    ;
 473:  IF R[52:Qcard]<=0,JMP LBL[54] ;
 474:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 475:   ;
 476:  R[36:dealerVALUE]=R[36:dealerVALUE]+10    ;
 477:  JMP LBL[15] ;
 478:   ;
 479:   ;
 480:   ;
 481:  LBL[54] ;
 482:   ;
 483:  VISION RUN_FIND 'A_KS'    ;
 484:  VISION GET_NFOUND 'A_KS' R[53]    ;
 485:  IF R[53:Kcard]<=0,JMP LBL[55] ;
 486:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 487:   ;
 488:  R[36:dealerVALUE]=R[36:dealerVALUE]+10    ;
 489:  JMP LBL[15] ;
 490:   ;
 491:   ;
 492:   ;
 493:  LBL[55] ;
 494:   ;
 495:  VISION RUN_FIND 'A_AS'    ;
 496:  VISION GET_NFOUND 'A_AS' R[54]    ;
 497:  IF R[54:Acard]<=0,JMP LBL[15] ;
 498:  R[35:dealerCount]=R[35:dealerCount]+1    ;
 499:   ;
 500:  IF (R[36:dealerVALUE]+11>21),JMP LBL[56] ;
 501:  R[36:dealerVALUE]=R[36:dealerVALUE]+11    ;
 502:  JMP LBL[15] ;
 503:   ;
 504:  LBL[56] ;
 505:  R[36:dealerVALUE]=R[36:dealerVALUE]+1    ;
 506:  JMP LBL[15] ;
 507:   ;
 508:   ;
 509:  LBL[32] ;
 510:   ;
 511:   ;
 512:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   303.599  mm,	Y =  -134.069  mm,	Z =   140.080  mm,
	W =   137.892 deg,	P =    -1.378 deg,	R =    -2.278 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   158.886  mm,	Y =  -228.802  mm,	Z =    81.318  mm,
	W =   138.254 deg,	P =     2.073 deg,	R =    -1.153 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   434.789  mm,	Y =  -144.634  mm,	Z =   201.315  mm,
	W =   137.022 deg,	P =   -47.853 deg,	R =    -3.348 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   280.277  mm,	Y =  -408.680  mm,	Z =   267.809  mm,
	W =   136.893 deg,	P =   -71.896 deg,	R =   -42.004 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   487.164  mm,	Y =    90.815  mm,	Z =   267.800  mm,
	W =   136.891 deg,	P =   -71.895 deg,	R =    24.115 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   239.405  mm,	Y =  -267.606  mm,	Z =   -73.355  mm,
	W =   135.909 deg,	P =     2.008 deg,	R =   -90.710 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   246.955  mm,	Y =  -273.371  mm,	Z =  -137.841  mm,
	W =   134.477 deg,	P =     2.965 deg,	R =   -90.980 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   639.878  mm,	Y =   105.127  mm,	Z =  -142.882  mm,
	W =   134.759 deg,	P =   -33.220 deg,	R =    22.065 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   560.153  mm,	Y =  -319.569  mm,	Z =  -135.198  mm,
	W =   136.868 deg,	P =   -44.170 deg,	R =   -19.449 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   450.737  mm,	Y =  -228.777  mm,	Z =    81.283  mm,
	W =   138.256 deg,	P =     2.079 deg,	R =    -1.150 deg
};
/END
