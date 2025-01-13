.text

main:	lui $4, 0x1001
	ori $9, $0, 0x87CEEB
	addi $20, $0, 4096
	addi $21, $0, 2048

test:	beq $20, $0, linha2
	sw  $9, 0($4)
	addi $4, $4, 4
	addi $20, $20, -1
	j test
linha2:
	beq $21, $0, grama
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
	ori $9, $0 0x3CB371
	sw $9, 0($2) #armazena no endereço $2(calculado na rotina)
	
	addi $20, $0, 0
	addi $21, $0, 1024
	
test2:	beq $20, $0, linha3
	sw  $9, 0($2)
	addi $2, $2, 4
	addi $20, $20, -1
	j test2
linha3:
	beq $21, $0, barro
	sw  $9, 0($2)
	addi $2, $2, 4
	addi $21, $21, -1
	j linha3

barro:
	lui $4, 0x1001
	addi $5, $0, 7 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 0 #quantidade de colunas até chegar no ponto
	
	jal endpxy2
	ori $9, $0, 0xA0522D
	sw $9, 0($11) #armazena no endereço $2(calculado na rotina)
	addi $20, $0, 0
	addi $21, $0, 2048

	
test3:	beq $20, $0, linha4
	sw  $9, 0($11)
	addi $11, $11, 4
	addi $20, $20, -1
	j test3
linha4:
	beq $21, $0, efeitobarro
	sw  $9, 0($11)
	addi $11, $11, 4
	addi $21, $21, -1
	j linha4
	
efeitobarro:
	ori $9, $0, 0x8B4513
	sw $9, 4($2)
	sw $9, 1024($2)
	sw $9, 1028($2)
	sw $9, 1036($2)
	sw $9, 1044($2)
	sw $9, 1076($2)
	sw $9, 1080($2)
	sw $9, 1096($2)
	sw $9, 1100($2)
	sw $9, 1104($2)
	sw $9, 1120($2)
	sw $9, 1124($2)
	sw $9, 1128($2)
	sw $9, 1160($2)
	sw $9, 1164($2)
	sw $9, 1176($2)
	sw $9, 1180($2)
	sw $9, 1184($2)
	sw $9, 1692($2)
	sw $9, 1196($2)
	sw $9, 1200($2)
	sw $9, 1632($2)
	sw $9, 2060($2)
	sw $9, 2052($2)
	sw $9, 2056($2)
	sw $9, 2060($2)
	sw $9, 2068($2)
	
	sw $9, 3024($2)
	sw $9, 3028($2)
	sw $9, 3048($2)
	sw $9, 3052($2)
	sw $9, 3060($2)
	sw $9, 3076($2)
	sw $9, 3080($2)
	sw $9, 3088($2)
	sw $9, 3092($2)
	sw $9, 2580($2)
	sw $9, 2596($2)
	sw $9, 2600($2)
	sw $9, 2084($2)
	sw $9, 2132($2)
	sw $9, 2644($2)
	sw $9, 2640($2)
	sw $9, 3188($2)
	sw $9, 3192($2)
	sw $9, 2680($2)
	sw $9, 3240($2)
	sw $9, 3236($2)
	sw $9, 2728($2)
	sw $9, 2764($2)
	sw $9, 2760($2)
	sw $9, 2248($2)
	sw $9, 1248($2)
	sw $9, 1252($2)
	sw $9, 1256($2)
	sw $9, 1760($2)
	sw $9, 1792($2)
	sw $9, 1796($2)
	sw $9, 1800($2)
	sw $9, 2304($2)
	sw $9, 2848($2)
	sw $9, 2852($2)
	sw $9, 2336($2)
	sw $9, 1824($2)
	sw $9, 1856($2)
	sw $9, 1344($2)
	sw $9, 1852($2)
	sw $9, 1856($2)
	sw $9, 1880($2)
	sw $9, 1884($2)
	sw $9, 1888($2)
	sw $9, 2400($2)
	sw $9, 2912($2)
	sw $9, 3456($2)
	sw $9, 3460($2)
	sw $9, 3464($2)
	sw $9, 2944($2)
	sw $9, 1440($2)
	sw $9, 1444($2)
	sw $9, 1448($2)
	sw $9, 1452($2)
	sw $9, 1952($2)
	sw $9, 3520($2)
	sw $9, 3008($2)
	sw $9, 2496($2)
	sw $9, 2492($2)
	sw $9, 988($2)
	sw $9, 1500($2)
	sw $9, 1504($2)
	sw $9, 1508($2)



efeitograma:
	ori $9, $0, 0x2E8B57
	sw $9, 4($2) #armazena no endereço $2(calculado na rotina)
	sw $9, 16($2)
	sw $9, 20($2)
	sw $9, 28($2)
	sw $9, 32($2)
	sw $9, 36($2)
	sw $9, 44($2)
	sw $9, 48($2)
	sw $9, 52($2)
	sw $9, 56($2)
	sw $9, 64($2)
	sw $9, 68($2)
	sw $9, 76($2)
	sw $9, 80($2)
	sw $9, 88($2)
	sw $9, 92($2)
	sw $9, 96($2)
	sw $9, 104($2)
	sw $9, 108($2)
	sw $9, 112($2)
	sw $9, 120($2)
	sw $9, 128($2)
	sw $9, 136($2)
	sw $9, 140($2)
	sw $9, 148($2)
	sw $9, 152($2)
	sw $9, 160($2)
	sw $9, 168($2)
	sw $9, 172($2)
	sw $9, 176($2)
	sw $9, 180($2)
	sw $9, 188($2)
	sw $9, 196($2)
	sw $9, 200($2)
	sw $9, 204($2)
	sw $9, 208($2)
	sw $9, 216($2)
	sw $9, 220($2)
	sw $9, 224($2)
	sw $9, 228($2)
	sw $9, 236($2)
	sw $9, 240($2)
	sw $9, 248($2)
	sw $9, 252($2)
	sw $9, 256($2)
	sw $9,264($2)
	sw $9, 268($2)
	sw $9, 276($2)
	sw $9, 280($2)
	sw $9, 288($2)
	sw $9, 292($2)
	sw $9, 296($2) 
	sw $9, 308($2)
	sw $9, 312($2)
	sw $9, 316($2)
	sw $9, 320($2)
	sw $9, 228($2)
	sw $9, 336($2)
	sw $9, 340($2)
	sw $9, 344($2)
	sw $9, 348($2)
	sw $9, 356($2)
	sw $9, 360($2)
	sw $9, 360($2)
	sw $9, 368($2)
	sw $9, 372($2)
	sw $9, 380($2)
	sw $9, 388($2)
	sw $9, 396($2)
	sw $9, 400($2)
	sw $9, 408($2)
	sw $9, 416($2)
	sw $9, 424($2)
	sw $9, 428($2)
	sw $9, 432($2)
	sw $9, 440($2)	
	sw $9, 444($2)	
	sw $9, 448($2)
	sw $9, 456($2)
	sw $9, 460($2)
	sw $9, 464($2)
	sw $9, 472($2)
	sw $9, 476($2)
	sw $9, 480($2)
	sw $9, 488($2)
	sw $9, 492($2)
	sw $9, 500($2)
	sw $9, 504($2)
	
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
	sw $9, 0($12) #armazena no endereço $12(calculado na rotina)
	j stilingue2

stilingue2:
	beq $15, $0, stilingue3
	lui $4, 0x1001
	addi $12, $12, 508
	sw $9, 0($12) #armazena no endereço $12(calculado na rotina)
	addi $12, $12, 4
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
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	addi $16, $16, 4
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	j stilingue4

stilingue4:
	beq $15, $0, espacoestl
	lui $4, 0x1001
	addi $16, $16, 508
	ori $9, $0, 0x8b4513
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	addi $16, $16, 4
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
	sw $9, 0($17) #armazena no endereço $12(calculado na rotina)
	addi $17, $17, 4
	sw $9, 0($17) #armazena no endereço $12(calculado na rotina)
	addi $17, $17, 4
	sw $9, 0($17) #armazena no endereço $12(calculado na rotina)
	addi $17, $17, 4
	sw $9, 0($17) #armazena no endereço $12(calculado na rotina)
	
	lui $4, 0x1001
	addi $5, $0, 5 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 8 #quantidade de colunas até chegar no ponto
	jal endpxy7
	sw $9, 0($18) #armazena no endereço $2(calculado na rotina)
	addi $18, $18, 4
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	addi $18, $18, 4
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	addi $18, $18, 4
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	addi $18, $18, 4
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	addi $18, $18, 4
	sw $9, 0($18) #armazena no endereço $12(calculado na rotina)
	lui $4, 0x1001
	addi $5, $0, 4 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 12 #quantidade de colunas até chegar no ponto
	addi $15, $0, 7
	jal endpxy8
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	addi $19, $19, 4
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
	ori $9, $0, 0xCD853F
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	addi $20, $20, 4
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	j blocop1

blocop1:
	beq $15, $0, blocopp2
	lui $4, 0x1001
	addi $20, $20, 508
	ori $9, $0, 0xCD853F
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	addi $20, $20, 4
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
	ori $9, $0, 0xCD853F
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	addi $21, $21, 4
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	j blocop2

blocop2:
	beq $15, $0, bordabloco
	lui $4, 0x1001
	addi $21, $21, 508
	ori $9, $0, 0xCD853F
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	addi $21, $21, 4
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j blocop2
bordabloco:
	ori $9, $0, 0x8B4513

	sw $9, 16156($4)
	sw $9, 16160($4)
	sw $9, 16164($4)
	sw $9, 16168($4)
	sw $9, 16236($4)
	sw $9, 16240($4)
	sw $9, 16244($4)
	sw $9, 16248($4)
	sw $9, 16668($4)
	sw $9, 17180($4)
	sw $9, 17692($4)
	sw $9, 18204($4)
	sw $9, 18716($4)
	sw $9, 19228($4)
	sw $9, 19740($4)
	sw $9, 20252($4)
	sw $9, 20764($4)
	sw $9, 21276($4)
	sw $9, 21788($4)
	sw $9, 22300($4)
	sw $9, 22812($4)
	sw $9, 23324($4)
	sw $9, 23836($4)
	sw $9, 24348($4)
	sw $9, 16680($4)
	sw $9, 17192($4)
	sw $9, 17704($4)
	sw $9, 18216($4)
	sw $9, 18728($4)
	sw $9, 19240($4)
	sw $9, 19752($4)
	sw $9, 20264($4)
	sw $9, 20776($4)
	sw $9, 21288($4)
	sw $9, 21800($4)
	sw $9, 22312($4)
	sw $9, 22824($4)
	sw $9, 23336($4)
	sw $9, 23848($4)
	sw $9, 24360($4)
	sw $9, 16748($4)
	sw $9, 17260($4)
	sw $9, 17772($4)
	sw $9, 18284($4)
	sw $9, 18796($4)
	sw $9, 19308($4)
	sw $9, 19820($4)
	sw $9, 20332($4)
	sw $9, 20844($4)
	sw $9, 21356($4)
	sw $9, 21868($4)
	sw $9, 22380($4)
	sw $9, 22892($4)
	sw $9, 23404($4)
	sw $9, 23916($4)
	sw $9, 24428($4)
	sw $9, 24440($4)
	sw $9, 16760($4)
	sw $9, 17272($4)
	sw $9, 17784($4)
	sw $9, 18296($4)
	sw $9, 18808($4)
	sw $9, 19320($4)
	sw $9, 19832($4)
	sw $9, 20344($4)
	sw $9, 20856($4)
	sw $9, 21368($4)
	sw $9, 21880($4)
	sw $9, 22392($4)
	sw $9, 22904($4)
	sw $9, 23416($4)
	sw $9, 23928($4)
	#sw $9, 15632($4)
	sw $9, 15636($4)
	sw $9, 15640($4)
	sw $9, 15644($4)
	sw $9, 15648($4)
	sw $9, 15652($4)
	sw $9, 15656($4)
	sw $9, 15660($4)
	sw $9, 15664($4)
	sw $9, 15668($4)
	sw $9, 15672($4)
	sw $9, 15676($4)
	sw $9, 15680($4)
	sw $9, 15684($4)
	sw $9, 15688($4)
	sw $9, 15692($4)
	sw $9, 15696($4)
	sw $9, 15700($4)
	sw $9, 15704($4)
	sw $9, 15708($4)
	sw $9, 15712($4)
	sw $9, 15716($4)
	sw $9, 15720($4)
	sw $9, 15724($4)
	sw $9, 15728($4)
	sw $9, 15732($4)
	sw $9, 15736($4)
	sw $9, 15740($4)
	sw $9, 15744($4)
	sw $9, 15232($4)
	sw $9, 14720($4)
	sw $9, 14208($4)
	sw $9, 14204($4)
	sw $9, 14200($4)
	sw $9, 14196($4)
	sw $9, 14192($4)
	sw $9, 14188($4)
	sw $9, 14184($4)
	sw $9, 14180($4)
	sw $9, 14176($4)
	sw $9, 14172($4)
	sw $9, 14168($4)
	sw $9, 14164($4)
	sw $9, 14160($4)
	sw $9, 14156($4)
	sw $9, 14152($4)
	sw $9, 14148($4)
	sw $9, 14144($4)
	sw $9, 14140($4)
	sw $9, 14136($4)
	sw $9, 14132($4)
	sw $9, 14128($4)
	sw $9, 14124($4)
	sw $9, 14120($4)
	sw $9, 14116($4)
	sw $9, 14112($4)
	sw $9, 14108($4)
	sw $9, 14104($4)
	sw $9, 14100($4)
	sw $9, 14612($4)
	sw $9, 15124($4)
	
	ori $9, $0, 0xCD853F
	sw $9, 14616($4)
	sw $9, 15128($4)#segundalinha
	sw $9, 15132($4)
	sw $9, 14620($4)
	sw $9, 14624($4)
	sw $9, 14628($4)
	sw $9, 14632($4)
	sw $9, 14636($4)
	sw $9, 14640($4)
	sw $9, 14644($4)
	sw $9, 14648($4)
	sw $9, 14652($4)
	sw $9, 14656($4)
	sw $9, 14660($4)
	sw $9, 14664($4)
	sw $9, 14668($4)
	sw $9, 14672($4)
	sw $9, 14676($4)
	sw $9, 14680($4)
	sw $9, 14684($4)
	sw $9, 14688($4)
	sw $9, 14692($4)
	sw $9, 14696($4)
	sw $9, 14700($4)
	sw $9, 14704($4)
	sw $9, 14708($4)
	sw $9, 14712($4)
	sw $9, 14716($4)
	sw $9, 15136($4)
	sw $9, 15140($4)
	sw $9, 15144($4)
	sw $9, 15148($4)
	sw $9, 15152($4)
	sw $9, 15156($4)
	sw $9, 15160($4)
	sw $9, 15164($4)
	sw $9, 15168($4)
	sw $9, 15172($4)
	sw $9, 15176($4)
	sw $9, 15180($4)
	sw $9, 15184($4)
	sw $9, 15188($4)
	sw $9, 15192($4)
	sw $9, 15196($4)
	sw $9, 15200($4)
	sw $9, 15204($4)
	sw $9, 15208($4)
	sw $9, 15212($4)
	sw $9, 15216($4)
	sw $9, 15220($4)
	sw $9, 15224($4)
	sw $9, 15228($4)
moitap:
	ori $9, $0, 0x3cb371
	sw $9, 24192($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 24196($4)
	sw $9, 24200($4)
	sw $9, 24204($4)
	sw $9, 24208($4)
	sw $9, 24212($4)
	sw $9, 24216($4)
	sw $9, 24220($4)
	sw $9, 24224($4)
	sw $9, 24228($4)
	sw $9, 24232($4)
	ori $9, $0, 0x3cb371
	sw $9, 24236($4)
	sw $9, 23684($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 23688($4)
	sw $9, 23692($4)
	sw $9, 23696($4)
	sw $9, 23700($4)
	sw $9, 23704($4)
	sw $9, 23708($4)
	sw $9, 23712($4)
	sw $9, 23716($4)
	sw $9, 23720($4)
	ori $9, $0, 0x3cb371
	sw $9, 23204($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 23200($4)
	sw $9, 23196($4)
	sw $9, 23192($4)
	sw $9, 23188($4)
	sw $9, 23184($4)
	sw $9, 23180($4)
	sw $9, 23176($4)
	ori $9, $0, 0x3cb371
	sw $9, 22668($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 22672($4)
	sw $9, 22676($4)
	sw $9, 22680($4)
	sw $9, 22684($4)
	sw $9, 22688($4)
	ori $9, $0, 0x3cb371
	sw $9, 22172($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 22168($4)
	sw $9, 22164($4)
	ori $9, $0, 0x3cb371
	sw $9, 22160($4)
moitag:
	ori $9, $0, 0x3cb371
	sw $9, 24252($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 24256($4)
	sw $9, 24260($4)
	sw $9, 24264($4)
	sw $9, 24268($4)
	sw $9, 24272($4)
	sw $9, 24276($4)
	sw $9, 24280($4)
	sw $9, 24284($4)
	sw $9, 24288($4)
	sw $9, 24292($4)
	sw $9, 24296($4)
	sw $9, 24300($4)
	sw $9, 24304($4)
	sw $9, 24308($4)
	sw $9, 24312($4)
	sw $9, 24316($4)
	sw $9, 24320($4)
	ori $9, $0, 0x3cb371
	sw $9, 24324($4)
	sw $9, 23808($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 23804($4)
	sw $9, 23800($4)
	sw $9, 23796($4)
	sw $9, 23792($4)
	sw $9, 23788($4)
	sw $9, 23784($4)
	sw $9, 23780($4)
	sw $9, 23776($4)
	sw $9, 23772($4)
	sw $9, 23768($4)
	sw $9, 23764($4)
	sw $9, 23760($4)
	sw $9, 23756($4)
	sw $9, 23752($4)
	ori $9, $0, 0x3cb371
	sw $9, 23748($4)
	sw $9, 23236($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 23240($4)
	sw $9, 23244($4)
	sw $9, 23248($4)
	sw $9, 23252($4)
	sw $9, 23256($4)
	sw $9, 23260($4)
	sw $9, 23264($4)
	sw $9, 23268($4)
	sw $9, 23272($4)
	sw $9, 23276($4)
	sw $9, 23280($4)
	sw $9, 23284($4)
	sw $9, 23288($4)
	sw $9, 23292($4)
	ori $9, $0, 0x3cb371
	sw $9, 23296($4)
	sw $9, 22780($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 22776($4)
	sw $9, 22772($4)
	sw $9, 22768($4)
	sw $9, 22764($4)
	sw $9, 22760($4)
	sw $9, 22756($4)
	sw $9, 22752($4)
	sw $9, 22748($4)
	sw $9, 22744($4)
	sw $9, 22740($4)
	sw $9, 22736($4)
	sw $9, 22732($4)
	ori $9, $0, 0x3cb371
	sw $9, 22728($4)
	sw $9, 22220($4)
	sw $9, 22224($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 22224($4)
	sw $9, 22228($4)
	sw $9, 22232($4)
	sw $9, 22236($4)
	sw $9, 22240($4)
	sw $9, 22244($4)
	sw $9, 22248($4)
	sw $9, 22252($4)
	sw $9, 22256($4)
	sw $9, 22260($4)
	ori $9, $0, 0x3cb371
	sw $9, 22264($4)
	sw $9, 21752($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 21748($4)
	sw $9, 21744($4)
	sw $9, 21740($4)
	sw $9, 21736($4)
	sw $9, 21732($4)
	sw $9, 21728($4)
	sw $9, 21724($4)
	sw $9, 21720($4)
	sw $9, 21716($4)
	sw $9, 21712($4)
	ori $9, $0, 0x3cb371
	sw $9, 21708($4)
	sw $9, 21200($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 21204($4)
	sw $9, 21208($4)
	sw $9, 21212($4)
	sw $9, 21216($4)
	sw $9, 21220($4)
	sw $9, 21224($4)
	sw $9, 21228($4)
	sw $9, 21232($4)
	ori $9, $0, 0x3cb371
	sw $9, 21236($4)
	sw $9, 20720($4)
	ori $9, $0, 0x2E8B57 
	sw $9, 20716($4)
	sw $9, 20712($4)
	sw $9, 20708($4)
	sw $9, 20704($4)
	sw $9, 20700($4)
	sw $9, 20696($4)
	ori $9, $0, 0x3cb371
	sw $9, 20692($4)
	sw $9, 20184($4)
	sw $9, 20188($4)
	sw $9, 20192($4)
	sw $9, 20196($4)
	sw $9, 20200($4)
	sw $9, 20204($4)


sol:
	ori $9, $0, 0xFFD700

	sw $9, 3192($4)
	sw $9, 3196($4)
	sw $9, 3200($4)
	sw $9, 3204($4)
	sw $9, 3208($4)
	sw $9, 3720($4)
	sw $9, 3724($4)
	sw $9, 3716($4)
	sw $9, 3712($4)
	sw $9, 3708($4)
	sw $9, 3704($4)
	sw $9, 3700($4)
	sw $9, 4212($4)
	sw $9, 4208($4)
	sw $9, 4216($4)
	sw $9, 4220($4)
	sw $9, 4224($4)
	sw $9, 4228($4)
	sw $9, 4232($4)
	sw $9, 4236($4)
	sw $9, 4240($4)
	sw $9, 4752($4)
	sw $9, 4748($4)
	sw $9, 4744($4)
	sw $9, 4740($4)
	sw $9, 4736($4)
	sw $9, 4732($4)
	sw $9, 4728($4)
	sw $9, 4724($4)
	sw $9, 4720($4)
	sw $9, 5232($4)
	sw $9, 5236($4)
	sw $9, 5240($4)
	sw $9, 5244($4)
	sw $9, 5248($4)
	sw $9, 5252($4)
	sw $9, 5256($4)
	sw $9, 5260($4)
	sw $9, 5264($4)
	sw $9, 5772($4)
	sw $9, 5768($4)
	sw $9, 5764($4)
	sw $9, 5760($4)
	sw $9, 5756($4)
	sw $9, 5752($4)
	sw $9, 5748($4)
	sw $9, 6264($4)
	sw $9, 6268($4)
	sw $9, 6272($4)
	sw $9, 6276($4)
	sw $9, 6280($4)	

obstaculo2:
	ori $9, $0, 0x8B4513
	sw $9, 15764($4)
	sw $9, 15768($4)
	sw $9, 15772($4)
	sw $9, 15776($4)
	sw $9, 15780($4)
	sw $9, 15784($4)
	sw $9, 15788($4)
	sw $9, 15792($4)
	sw $9, 15796($4)
	sw $9, 15800($4)
	sw $9, 15804($4)
	sw $9, 15808($4)
	sw $9, 15812($4)
	sw $9, 15816($4)
	sw $9, 15820($4)
	sw $9, 15824($4)
	sw $9, 15828($4)
	sw $9, 15832($4)
	sw $9, 15836($4)
	sw $9, 15840($4)
	sw $9, 15844($4)
	sw $9, 15848($4)
	sw $9, 15852($4)
	sw $9, 15856($4)
	sw $9, 16368($4)
	sw $9, 16276($4)
	sw $9, 16788($4)
	sw $9, 16792($4)
	sw $9, 16796($4)
	sw $9, 16800($4)
	sw $9, 16804($4)
	sw $9, 16808($4)
	sw $9, 16812($4)
	sw $9, 16816($4)
	sw $9, 16820($4)
	sw $9, 16824($4)
	sw $9, 16828($4)
	sw $9, 16832($4)
	sw $9, 16836($4)
	sw $9, 16840($4)
	sw $9, 16844($4)
	sw $9, 16848($4)
	sw $9, 16852($4)
	sw $9, 16856($4)
	sw $9, 16860($4)
	sw $9, 16864($4)
	sw $9, 16868($4)
	sw $9, 16872($4)
	sw $9, 16876($4)
	sw $9, 16880($4)
	ori $9, $0, 0xCD853F
	sw $9, 16364($4)
	sw $9, 16360($4)
	sw $9, 16356($4)
	sw $9, 16352($4)
	sw $9, 16348($4)
	sw $9, 16344($4)
	sw $9, 16340($4)
	sw $9, 16336($4)
	sw $9, 16332($4)
	sw $9, 16328($4)
	sw $9, 16324($4)
	sw $9, 16320($4)
	sw $9, 16316($4)
	sw $9, 16312($4)
	sw $9, 16308($4)
	sw $9, 16304($4)
	sw $9, 16300($4)
	sw $9, 16296($4)
	sw $9, 16292($4)
	sw $9, 16288($4)
	sw $9, 16284($4)
	sw $9, 16280($4)
	ori $9, $0, 0x8B4513
	sw $9, 17308($4)
	sw $9, 17820($4)
	sw $9, 18332($4)
	sw $9, 18844($4)
	sw $9, 19356($4)
	sw $9, 19868($4)
	sw $9, 20380($4)
	sw $9, 20892($4)
	sw $9, 21404($4)
	sw $9, 21916($4)
	sw $9, 22428($4)
	sw $9, 22940($4)
	sw $9, 23452($4)
	sw $9, 23964($4)
	sw $9, 24476($4)
	ori $9, $0, 0xCD853F
	sw $9, 17312($4)
	sw $9, 17316($4)
	ori $9, $0, 0x8B4513
	sw $9, 17320($4)
	ori $9, $0, 0xCD853F
	sw $9, 17824($4)
	sw $9, 17828($4)
	ori $9, $0, 0x8B4513
	sw $9, 17832($4)
	ori $9, $0, 0xCD853F
	sw $9, 18336($4)
	sw $9, 18340($4)
	ori $9, $0, 0x8B4513
	sw $9, 18344($4)
	ori $9, $0, 0xCD853F
	sw $9, 18848($4)
	sw $9, 18852($4)
	ori $9, $0, 0x8B4513
	sw $9, 18856($4)
	ori $9, $0, 0xCD853F
	sw $9, 19360($4)
	sw $9, 19364($4)
	ori $9, $0, 0x8B4513
	sw $9, 19368($4)
	ori $9, $0, 0xCD853F
	sw $9, 19872($4)
	sw $9, 19876($4)
	ori $9, $0, 0x8B4513
	sw $9, 19880($4)
	ori $9, $0, 0xCD853F
	sw $9, 20384($4)
	sw $9, 20388($4)
	ori $9, $0, 0x8B4513
	sw $9, 20392($4)
	ori $9, $0, 0xCD853F
	sw $9, 20896($4)
	sw $9, 20900($4)
	ori $9, $0, 0x8B4513
	sw $9, 20904($4)
	sw $9, 21416($4)
	ori $9, $0, 0xCD853F
	sw $9, 21412($4)
	sw $9, 21408($4)
	sw $9, 21920($4)
	sw $9, 21924($4)
	ori $9, $0, 0x8B4513
	sw $9, 21928($4)
	sw $9, 22440($4)
	ori $9, $0, 0xCD853F
	sw $9, 22436($4)
	sw $9, 22432($4)
	sw $9, 22944($4)
	sw $9, 22948($4)
	ori $9, $0, 0x8B4513
	sw $9, 22952($4)
	sw $9, 23464($4)
	ori $9, $0, 0xCD853F
	sw $9, 23460($4)
	sw $9, 23456($4)
	sw $9, 23968($4)
	sw $9, 23972($4)
	ori $9, $0, 0x8B4513
	sw $9, 23976($4)
	sw $9, 24488($4)
	ori $9, $0, 0xCD853F
	sw $9, 24484($4)
	sw $9, 24480($4)
	ori $9, $0, 0x8B4513
	sw $9, 17384($4)
	ori $9, $0, 0xCD853F
	sw $9, 17380($4)
	sw $9, 17376($4)
	ori $9, $0, 0x8B4513
	sw $9, 17372($4)
	sw $9, 17884($4)
	ori $9, $0, 0xCD853F
	sw $9, 17888($4)
	sw $9, 17892($4)
	ori $9, $0, 0x8B4513
	sw $9, 17896($4)
	sw $9, 18408($4)
	ori $9, $0, 0xCD853F
	sw $9, 18404($4)
	sw $9, 18400($4)
	ori $9, $0, 0x8B4513
	sw $9, 18396($4)
	sw $9, 18908($4)
	ori $9, $0, 0xCD853F
	sw $9, 18912($4)
	sw $9, 18916($4)
	ori $9, $0, 0x8B4513
	sw $9, 18920($4)
	sw $9, 19432($4)
	ori $9, $0, 0xCD853F
	sw $9, 19428($4)
	sw $9, 19424($4)
	ori $9, $0, 0x8B4513
	sw $9, 19420($4)
	sw $9, 19932($4)
	ori $9, $0, 0xCD853F
	sw $9, 19936($4)
	sw $9, 19940($4)
	ori $9, $0, 0x8B4513
	sw $9, 19944($4)
	sw $9, 20456($4)
	ori $9, $0, 0xCD853F
	sw $9, 20452($4)
	sw $9, 20448($4)
	ori $9, $0, 0x8B4513
	sw $9, 20444($4)
	sw $9, 20956($4)
	ori $9, $0, 0xCD853F
	sw $9, 20960($4)
	sw $9, 20964($4)
	ori $9, $0, 0x8B4513
	sw $9, 20968($4)
	sw $9, 21480($4)
	ori $9, $0, 0xCD853F
	sw $9, 21476($4)
	sw $9, 21472($4)
	ori $9, $0, 0x8B4513
	sw $9, 21468($4)
	sw $9, 21980($4)
	ori $9, $0, 0xCD853F
	sw $9, 21984($4)
	sw $9, 21988($4)
	ori $9, $0, 0x8B4513
	sw $9, 21992($4)
	sw $9, 22504($4)
	ori $9, $0, 0xCD853F
	sw $9, 22500($4)
	sw $9, 22496($4)
	ori $9, $0, 0x8B4513
	sw $9, 22492($4)
	sw $9, 23004($4)
	ori $9, $0, 0xCD853F
	sw $9, 23008($4)
	sw $9, 23012($4)
	ori $9, $0, 0x8B4513
	sw $9, 23016($4)
	sw $9, 23528($4)
	ori $9, $0, 0xCD853F
	sw $9, 23524($4)
	sw $9, 23520($4)
	ori $9, $0, 0x8B4513
	sw $9, 23516($4)
	sw $9, 24028($4)
	ori $9, $0, 0xCD853F
	sw $9, 24032($4)
	sw $9, 24036($4)
	ori $9, $0, 0x8B4513
	sw $9, 24040($4)
	sw $9, 24552($4)
	ori $9, $0, 0xCD853F
	sw $9, 24548($4)
	sw $9, 24544($4)
	ori $9, $0, 0x8B4513
	sw $9, 24540($4)

	
			
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

endpxy11:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $22, $8, $4 # $2 = $8 +&p
fimendpxy11:
	jr $31 #fim da rotinha
