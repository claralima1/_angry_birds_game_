.text

main:	lui $4, 0x1001
	ori $9, $0, 0x87cefa
	addi $20, $0, 4096
	addi $21, $0, 2048

	
test:	beq $20, $0, linha2
	sw  $9, 0($4)
	addi $4, $4, 4
	addi $20, $20, -1
	j test
linha2:
	beq $21, $0,grama
	sw  $9, 0($4)
	addi $4, $4, 4
	addi $21, $21, -1
	j linha2
grama:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 0 #quantidade de colunas até chegar no ponto
	jal endpxy
	ori $9, $0 0x3cb371 
	sw $9, 0($2) #armazena no endereço $2(calculado na rotina)
	
	addi $20, $0, 0
	addi $21, $0, 1024
	
test2:	beq $20, $0, linha3
	sw  $9, 0($2)
	addi $2, $2, 4
	addi $20, $20, -1
	j test2
linha3:
	beq $21, $0, efeitog
	sw  $9, 0($2)
	addi $2, $2, 4
	addi $21, $21, -1
	j linha3
efeitog:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 1 #quantidade de colunas até chegar no ponto
	addi $13, $0, 384
	jal endpxy4

dgrama1:beq $13, $0, dgrama2
	ori $9, $0, 0x6400
	sw $9, 0($14) #armazena no endereço $2(calculado na rotina)
	addi $14, $14, 4
	ori $9, $0, 0x2e8b57
	sw $9, 0($14) #armazena no endereço $2(calculado na rotina)
	addi $14, $14, 8
	addi $13, $13, -1
	j dgrama1

dgrama2:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 0 #quantidade de colunas até chegar no ponto
	addi $13, $0, 384
	jal endpxy
	
loop:	beq $13, $0, barro
	ori $9, $0, 0x3cb371
	sw $9, 0($14) #armazena no endereço $2(calculado na rotina)
	addi $14, $14, 4
	ori $9, $0, 0x6400
	sw $9, 0($14) #armazena no endereço $2(calculado na rotina)
	addi $14, $14, 8
	ori $9, $0, 0x32cd32
	sw $9, 0($14) #armazena no endereço $2(calculado na rotina)
	addi $14, $14, 4
	addi $13, $13, -1
	j loop

barro:
	lui $4, 0x1001
	addi $5, $0, 7 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 0 #quantidade de colunas até chegar no ponto
	
	jal endpxy2
	ori $9, $0, 0xbc8f8f
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	addi $20, $0, 0
	addi $21, $0, 2048
	
test3:	beq $20, $0, linha4
	sw  $9, 0($11)
	addi $11, $11, 4
	addi $20, $20, -1
	j test3
linha4:
	beq $21, $0, stilingue1
	sw  $9, 0($11)
	addi $11, $11, 4
	addi $21, $21, -1
	j linha4
stilingue1:
	lui $4, 0x1001
	addi $5, $0, 5 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 7 #quantidade de colunas até chegar no ponto
	addi $15, $0, 7
	jal endpxy3
	ori $9, $0, 0x8b4513
	sw $9, 0($12) #armazena no endereço $12(calculado na rotina)
	addi $12, $12, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($12) #armazena no endereço $12(calculado na rotina)
	j stilingue2

stilingue2:
	beq $15, $0, stilingue3
	lui $4, 0x1001
	addi $12, $12, 508
	ori $9, $0, 0x8b4513
	sw $9, 0($12) #armazena no endereço $12(calculado na rotina)
	addi $12, $12, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($12) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j stilingue2
	
stilingue3:
	lui $4, 0x1001
	addi $5, $0, 4 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 2 #quantidade de colunas até chegar no ponto
	addi $15, $0, 7
	jal endpxy5
	ori $9, $0, 0x8b4513
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	addi $16, $16, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	j stilingue4

stilingue4:
	beq $15, $0, espacoestl
	lui $4, 0x1001
	addi $16, $16, 508
	ori $9, $0, 0x8b4513
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	addi $16, $16, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j stilingue4
	
espacoestl:
	lui $4, 0x1001
	addi $5, $0, 5 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 2 #quantidade de colunas até chegar no ponto
	jal endpxy6
	ori $9, $0, 0x8b4513
	sw $9, 0($17) #armazena no endereço $2(calculado na rotina)
	addi $17, $17, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($17) #armazena no endereço $12(calculado na rotina)
	addi $17, $17, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($17) #armazena no endereço $12(calculado na rotina)
	addi $17, $17, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($17) #armazena no endereço $12(calculado na rotina)
	addi $17, $17, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($17) #armazena no endereço $12(calculado na rotina)

	
	lui $4, 0x1001
	addi $5, $0, 5 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 8 #quantidade de colunas até chegar no ponto
	jal endpxy7
	ori $9, $0, 0x8b4513
	sw $9, 0($18) #armazena no endereço $2(calculado na rotina)
	addi $18, $18, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	addi $18, $18, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	addi $18, $18, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	addi $18, $18, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	addi $18, $18, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	
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

stilingue5:
	beq $15, $0, bloco1
	lui $4, 0x1001
	addi $19, $19, 508
	ori $9, $0, 0x8b4513
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	addi $19, $19, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j stilingue5
bloco1:
	lui $4, 0x1001
	addi $5, $0, 4 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 72 #quantidade de colunas até chegar no ponto
	addi $15, $0, 15
	jal endpxy9
	ori $9, $0, 0xd2691e
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	addi $20, $20, 4
	ori $9, $0, 0xd2691e
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	j blocop1

blocop1:
	beq $15, $0, blocopp2
	lui $4, 0x1001
	addi $20, $20, 508
	ori $9, $0, 0xd2691e
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	addi $20, $20, 4
	ori $9, $0, 0xd2691e
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j blocop1
	
blocopp2:
	lui $4, 0x1001
	addi $5, $0, 4 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 92 #quantidade de colunas até chegar no ponto
	addi $15, $0, 15
	jal endpxy10
	ori $9, $0, 0xd2691e
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	addi $21, $21, 4
	ori $9, $0, 0xd2691e
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	j blocop2

blocop2:
	beq $15, $0, fim
	lui $4, 0x1001
	addi $21, $21, 508
	ori $9, $0, 0xd2691e
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	addi $21, $21, 4
	ori $9, $0, 0xd2691e
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j blocop2
	
	addi $2, $0, 10
fim:	syscall

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
	add $2, $8, $4 # $2 = $8 +&p
fimendpxy:
	jr $31 #fim da rotinha

endpxy2:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $11, $8, $4 # $2 = $8 +&p
fimendpxy2:
	jr $31 #fim da rotinha
endpxy3:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $12, $8, $4 # $2 = $8 +&p
fimendpxy3:
	jr $31 #fim da rotinha
endpxy4:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $14, $8, $4 # $2 = $8 +&p
fimendpxy4:
	jr $31 #fim da rotinha

endpxy5:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $16, $8, $4 # $2 = $8 +&p
fimendpxy5:
	jr $31 #fim da rotinha
	
endpxy6:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $17, $8, $4 # $2 = $8 +&p
fimendpxy6:
	jr $31 #fim da rotinha

endpxy7:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $18, $8, $4 # $2 = $8 +&p
fimendpxy7:
	jr $31 #fim da rotinha

endpxy8:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $19, $8, $4 # $2 = $8 +&p
fimendpxy8:
	jr $31 #fim da rotinha
	
endpxy9:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $20, $8, $4 # $2 = $8 +&p
fimendpxy9:
	jr $31 #fim da rotinha
	
endpxy10:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $21, $8, $4 # $2 = $8 +&p
fimendpxy10:
	jr $31 #fim da rotinha