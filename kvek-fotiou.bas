PRINT "GRAPSE TA INPUTS GIA NA TREKSEI!!!"
   PRINT ""
    10 REM METASXHMATISMDS SYNTETAGMENNN
	11 REM apu HATT 52 TM-3 kai antistrafws
	12 REM me taus pinakes
	13 REM K.Kat5amba1ou — A. Fotiou
	14 REM pgm: HATTM3.BAS, V2.1, 7MARB6
	15 rc=1.37E-15
	16 PRINT"input: (1)-HATT to TM-3"
	17 PRINT"          (2)—TM-3 to HATT"
	18 INPUT i1
i1=
	19 PRINT"input: (1)- 30x30 sheets"
	20 PRINT"         (2)- 6x 6 sheets"
	21 INPUT i2
i2=	
	22 p=6000
	23 IF i2=1 AND i1=1 THEN p=20000.022
ENDIF
	24 IF i2=1 AND i1=2 THEN p=20000
ENDIF
	25 IF i1=2 THEN GOTO 35
ENDIF
	26 PRINT"input: C1 , C2"
	27 INPUT xe,yn
xe=
yn=
	28 PRINT"input: C3,C4,C5,C6,C7,C8"
	29 INPUT x1,y1,x2,y2,x3,y3
x1=
y1=
x2=
y2=
x3=
y3=
	30 x2=x2*0.00000001
	31 y2=y2*1E-10
	32 x3=x3*1E-14
	33 y3=y3*1E-16
	34 GOTO 43
	35 PRINT"input: E0,NO, D1,D2"
	36 INPUT eO,n0,xe,yn
e0=
n0=
xe=
yn=
	37 PRINT"input: D3,D4,D5,D6,D7,DB"
	38 INPUT x1,y1,x2,y2,x3,y3
x1=
y1=
x2=
y2=
x3=
y3=
	39 x2=x2*0.00000001
	40 y2=y2*1E-10
	41 x3=x3*1E-14
	42 y3=y3*1E-16
	43 PRINT"input: point number,X,Y, (X=Y=0 to stop)"
	44 INPUT nm,x,y
nm=
x=
y=
	45 IF x=0 AND y=0 THEN GOTO 79
ENDIF
	46 xx=x
	47 yy=Y
	48 IF i1=2 THEN GOTO 59
ENDIF
	49 IF i2=2 THEN GOTO 60
ENDIF
	50 q5=SQR(x*x+y*y)
	51 qss=q5+q5*qs*qs*rc
	52 dx=x
	53 dy=v
	54 GOSUB 80
	55 x=qss*SIN(az)
	56 y=qss*COS(a2)
	57 GOTO 60
	58 x=x-e0
	59 y=y-n0
	60 a1=x+p
	61 a2=x-p
	62 a3=y+p
	63 a4=y-p
	64 w=a1*a2-a3*a3
	65 t=a3*(a1+a2)
	66 xt=xe+a1*x1-a3*y1-t*(y2+a4*x3+a2*y3)+w*(a2*x3-a4*y3+x2)
	67 yt=yn+a3*x1+a1*y1-t*(-x2+a4*y3-a2*x3)+w*(a2*y3+a4*x3+y2)
	68 IF i2=2 OR i1=1 THEN GOTO 76
ENDIF
	69 qss=SQR(xt*xt+yt*yt)
	70 qs=qss-qss*qss*qss*rc
	71 dx=xt
	72 dy=yt
	73 GOSUB 80
	74 xt=qs*SIN(az)
	75 yt=qs*COS(az)
	76 PRINT"#X1 , Y1 , X2 , Y2"
	77 PRINT nm,xx,yy,xt,yt
	78 GOTO 43
	79 END
	80 IF dy=0 THEN GOTO 86
ENDIF
	81 az=ATN(ABS(dx/dy))
	82 IF dx>=0 AND dy<0 THEN az=PI-az
ENDIF
	83 IF dx<0 AND dy<0 THEN az=PH-c7z
ENDIF
	84 IF dx<0 AND dy>0 THEN az=2*PI-az
ENDIF
	86 IF dx>0 THEN az=PI/2
ENDIF
	87 IF dx<0 THEN az=3*PI/2
ENDIF
	88 RETURN
