.data #0x10010000
.text
main:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 1 #quantidade de colunas até chegar no ponto
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama2
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama3
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama4
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama5
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama6
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama7
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama8
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama9
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama10
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama11
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama12
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama13
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama14
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama15
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama16
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama17
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama18
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama19
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	jal dgrama20
	jal endpxy
	ori $9, $0, 0x87cefa
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	addi $2, $0, 10
	syscall

dgrama:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 2 #quantidade de colunas até chegar no ponto
	jr $31
dgrama2:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 5 #quantidade de colunas até chegar no ponto
	jr $31
dgrama3:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 7 #quantidade de colunas até chegar no ponto
	jr $31
	
dgrama4:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 8 #quantidade de colunas até chegar no ponto
	jr $31

dgrama5:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 10 #quantidade de colunas até chegar no ponto
	jr $31

dgrama6:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 12 #quantidade de colunas até chegar no ponto
	jr $31

dgrama7:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 15 #quantidade de colunas até chegar no ponto
	jr $31

dgrama8:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 16 #quantidade de colunas até chegar no ponto
	jr $31

dgrama9:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 18 #quantidade de colunas até chegar no ponto
	jr $31


dgrama10:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 20 #quantidade de colunas até chegar no ponto
	jr $31

dgrama11:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 21 #quantidade de colunas até chegar no ponto
	jr $31

dgrama12:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 23 #quantidade de colunas até chegar no ponto
	jr $31
dgrama13:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 25 #quantidade de colunas até chegar no ponto
	jr $31
dgrama14:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 26 #quantidade de colunas até chegar no ponto
	jr $31
dgrama15:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 27 #quantidade de colunas até chegar no ponto
	jr $31
dgrama16:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 30 #quantidade de colunas até chegar no ponto
	jr $31
dgrama17:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 31 #quantidade de colunas até chegar no ponto
	jr $31
dgrama18:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 33 #quantidade de colunas até chegar no ponto
	jr $31
dgrama19:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 34 #quantidade de colunas até chegar no ponto
	jr $31
dgrama20:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 36 #quantidade de colunas até chegar no ponto
	jr $31
#Rotina para calcular endereço de um ponto
#Entrada:
	# $4 $p0
	# $5 l
	# $6 L
	# $7 c
endpxy:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $11, $8, $4 # $2 = $8 +&p
fimendpxy:
	jr $31 #fim da rotinha
	
	
