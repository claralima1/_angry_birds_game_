.text
main:
	lui $4, 0x1001
	ori $8, $0, 0x20B2AA
	addi $9, $0, 0
	addi $10, $0, 131072
	
bacground:
	beq $9, $10, bird_triste
	sw $8, 0($4)
     	addi $4, $4, 4
     	addi $9, $9, 1
     	j bacground
     	
bird_triste:
	lui $4, 0x1001
	ori $8, $0, 0x000000 #borda
	sw $8, 16064($4)
	sw $8, 16576($4)
	sw $8, 17088($4)
	sw $8, 17600($4)
	sw $8, 18112($4)
	sw $8, 18624($4)
	sw $8, 19136($4)
	sw $8, 19652($4)
	sw $8, 20164($4)
	sw $8, 20680($4)
	sw $8, 21196($4)
	

	
	
fim:
	addi $2, $0, 10
	syscall
