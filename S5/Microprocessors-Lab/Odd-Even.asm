
START1:	   LXI H,4000
	   LXI D,5000
	   LDA 3000
	   MOV C,A

ODD:	   MOV A,M
	   ANI 01
	   JZ SKIPODD
	   MOV A,M
	   STAX D
	   INX D

SKIPODD:	   INX H
	   DCR C
	   JNZ ODD

START2:	   LXI H,4000
	   LXI D,6000
	   LDA 3000
	   MOV C,A

EVEN:	   MOV A,M
	   ANI 01
	   JNZ SKIPEVEN
	   MOV A,M
	   STAX D
	   INX D

SKIPEVEN:	   INX H
	   DCR C
	   JNZ EVEN
	   HLT
# ORG 3000H
# DB 0AH
# ORG 4000H
# DB 01H, 02H, 03H, 04H, 05H, 06H, 07H, 08H, 09H, 0AH
