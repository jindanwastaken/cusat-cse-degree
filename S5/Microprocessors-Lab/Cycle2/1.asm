
START:	   LDA 4010
	   MOV B,A
	   MVI A,00
	   LXI D,5001

LOOP:	   STAX D
	   INX D
	   CMP B
	   JZ EXIT
	   ADI 01
	   DAA
	   JMP LOOP

EXIT:	   HLT
# ORG 4010H
# DB 20H
