EJER1 START 0
	LDX #5
	HIO
	+LDB	#(19*(COUNT-LOOP))
	STA	@COUNT
	CLEAR	A	
	BASE	TABLE2
	ADDR	X,A
LOOP	ADD TABLE,X
	+STA	TOTAL
	RSUB
COUNT	RESB	12H
	SHIFTL	X,2
TABLE	RESW	10
TABLE2	BYTE	C'TEST'
EXAMPLE EQU *
EXAMPLE5 EQU (19*(COUNT-LOOP))
	LDA	#(19*(COUNT-LOOP))
	WORD	(19*(COUNT-LOOP))
EXAMPLE2 EQU LOOP-COUNT
	WORD	16
	END