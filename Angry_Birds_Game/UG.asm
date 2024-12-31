.data #0x10010000
.text
main:
	lui $4, 0x1001
	addi $5, $0, 4 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 12 #quantidade de colunas até chegar no ponto
	addi $15, $0, 7
	jal endpxy8
	ori $9, $0, 0x8b4513
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	addi $19, $19, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	j stilingue4

stilingue4:
	beq $15, $0, fim
	lui $4, 0x1001
	addi $19, $19, 508
	ori $9, $0, 0x8b4513
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	addi $19, $19, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j stilingue4
	
fim:	addi $2, $0, 10
	syscall


#Rotina para calcular endereço de um ponto
#Entrada:
	# $4 $p0
	# $5 l
	# $6 L
	# $7 c
endpxy8:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $19, $8, $4 # $2 = $8 +&p
fimendpxy8:
	jr $31 #fim da rotinha
	
	
