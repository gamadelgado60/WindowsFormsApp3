EJER2	START	0
SIMBOLO	RESW	3
	SUBR	X,T
NUMERO	WORD	10H
DECIMAL	RESB	50
INICIO	+RD	#SIMBOLO
	MUL	NUMERO
	FLOAT	
	MULF	DECIMAL
CICLO	+JSUB	@RAIZ
ETIQ	HIO	RAIZ
	LDA	ARREGLO,X
	TIX	#1
	+JGT	CICLO,X
ARREGLO	RESW	800
RAIZ	CLEAR	B
CICLO	STA	TEMP
	WD	@100H
	+LPS	#ARREGLO
	J	400H, X
TEMP	RESW	1
FIN	SIO	
	LDX	@AUX
	SHIFTL	A,4
AUX	RESB	250H
MAIN	BASE	INICIO
MENOR	BYTE	H'234'
	JS	FIN
	END	RAIZ