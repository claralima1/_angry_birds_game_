.data #0x10010000
.text
main:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 1 #quantidade de colunas até chegar no ponto
	addi $13, $0, 384
	jal endpxy

dgrama1:beq $13, $0, dgrama2
	ori $9, $0, 0x3cb371
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	addi $11, $11, 4
	ori $9, $0, 0x2e8b57
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	addi $11, $11, 8
	addi $13, $13, -1
	j dgrama1

dgrama2:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 0 #quantidade de colunas até chegar no ponto
	addi $13, $0, 384
	jal endpxy
	
loop:	beq $13, $0, fim
	ori $9, $0, 0x3cb371
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	addi $11, $11, 4
	ori $9, $0, 0x6400
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	addi $11, $11, 8
	addi $13, $13, -1
	j loop
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
	
fim: 	addi $2, $0, 10
	syscall