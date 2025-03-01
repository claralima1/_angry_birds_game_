.text

main:	lui $4, 0x1001
	ori $9, $0, 0x4B0082
	addi $20, $0, 4096
	addi $21, $0, 2048

test:	beq $20, $0, linha2
	sw  $9, 0($4)
	addi $4, $4, 4
	addi $20, $20, -1
	j test
linha2:
	beq $21, $0, ceu2
	sw  $9, 0($4)
	addi $4, $4, 4
	addi $21, $21, -1
	j linha2
ceu2:
	lui $4, 0x1001
	addi $5, $0, 2 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 0 #quantidade de colunas até chegar no ponto
	jal endpxya
	ori $9, $0 0x4B0082
	sw $9, 0($23) #armazena no endereço $2(calculado na rotina)
	
	addi $20, $0, 0
	addi $21, $0, 4096
	
testA:	beq $20, $0, linhaA
	sw  $9, 0($23)
	addi $23, $23, 4
	addi $20, $20, -1
	j testA
linhaA:
	beq $21, $0, grama
	sw  $9, 0($23)
	addi $23, $23, 4
	addi $21, $21, -1
	j linhaA
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


lua:
	ori $9, $0, 0xDCDCDC
			
	sw $9, 3192($4)
	sw $9, 3196($4)
	sw $9, 3200($4)
	sw $9, 3204($4)
	sw $9, 3208($4)
	ori $9, $0, 0xC0C0C0
	sw $9, 3720($4)
	ori $9, $0, 0xDCDCDC
	sw $9, 3724($4)
	ori $9, $0, 0xC0C0C0
	sw $9, 3716($4)
	sw $9, 3712($4)
	sw $9, 3708($4)
	sw $9, 3704($4)
	ori $9, $0, 0xDCDCDC
	sw $9, 3700($4)
	ori $9, $0, 0xC0C0C0
	sw $9, 4212($4)
	sw $9, 4208($4)
	sw $9, 4216($4)
	sw $9, 4220($4)
	
	sw $9, 4224($4)
	
	sw $9, 4228($4)
	sw $9, 4232($4)
	sw $9, 4236($4)
	ori $9, $0, 0xDCDCDC
	sw $9, 4240($4)
	sw $9, 4752($4)
	ori $9, $0, 0xC0C0C0
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
	ori $9, $0, 0xDCDCDC
	sw $9, 5264($4)
	ori $9, $0, 0xC0C0C0
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


porco:
	ori $9, $0, 0x000000
	sw $9, 24388($4)
	sw $9, 24392($4)
	sw $9, 24396($4)
	sw $9, 24400($4)
	sw $9, 24404($4)
	sw $9, 23896($4)
	sw $9, 23900($4)
	sw $9, 23392($4)
	sw $9, 22884($4)
	sw $9, 22376($4)
	sw $9, 21864($4)
	sw $9, 21352($4)
	sw $9, 20840($4)
	sw $9, 20328($4)
	sw $9, 19812($4)
	sw $9, 19296($4)
	sw $9, 18780($4)
	sw $9, 18264($4)
	sw $9, 18260($4)
	sw $9, 18256($4)
	sw $9, 17744($4)
	sw $9, 17748($4)
	sw $9, 17240($4)
	sw $9, 16728($4)
	sw $9, 16212($4)
	sw $9, 16208($4)
	sw $9, 16204($4)
	sw $9, 16712($4)
	sw $9, 17224($4)
	sw $9, 17220($4)
	sw $9, 17216($4)
	sw $9, 16704($4)
	sw $9, 16188($4)
	sw $9, 16184($4)
	sw $9, 16180($4)
	
	sw $9, 24384($4)
	sw $9, 23868($4)
	sw $9, 23864($4)
	sw $9, 23348($4)
	sw $9, 22832($4)
	sw $9, 22316($4)
	sw $9, 21804($4)
	sw $9, 21292($4)
	sw $9, 20780($4)
	sw $9, 20268($4)
	sw $9, 19760($4)
	sw $9, 19252($4)
	sw $9, 18744($4)
	sw $9, 18748($4)
	sw $9, 18228($4)
	sw $9, 18232($4)
	sw $9, 17712($4)
	sw $9, 17200($4)
	sw $9, 16688($4)
	
	ori $9, $0, 0x32CD32
	sw $9, 16692($4)
	sw $9, 16696($4)
	sw $9, 16700($4)
	sw $9, 17212($4)
	sw $9, 17208($4)
	sw $9, 17204($4)
	sw $9, 17716($4)
	sw $9, 17720($4)
	sw $9, 17724($4)
	sw $9, 17728($4)
	sw $9, 17732($4)
	sw $9, 17736($4)
	sw $9, 17740($4)
	sw $9, 17228($4)
	sw $9, 17232($4)
	sw $9, 17236($4)
	sw $9, 16724($4)
	sw $9, 16720($4)
	sw $9, 16716($4)
	sw $9, 18252($4)
	sw $9, 18248($4)
	sw $9, 18244($4)
	sw $9, 18240($4)
	sw $9, 18236($4)
	sw $9, 18752($4)
	sw $9, 18756($4)
	sw $9, 18760($4)
	sw $9, 18764($4)
	sw $9, 18768($4)
	sw $9, 18772($4)
	sw $9, 18776($4)
	sw $9, 19288($4)
	sw $9, 19292($4)
	sw $9, 19284($4)
	sw $9, 19280($4)
	sw $9, 19276($4)
	sw $9, 19272($4)
	sw $9, 19268($4)
	sw $9, 19264($4)
	sw $9, 19260($4)
	sw $9, 19256($4)
	sw $9, 19764($4)
	sw $9, 19768($4)
	sw $9, 19772($4)
	sw $9, 19776($4)
	sw $9, 19780($4)
	sw $9, 19784($4)
	sw $9, 19788($4)
	sw $9, 19792($4)
	sw $9, 19796($4)
	sw $9, 19800($4)
	sw $9, 19804($4)
	sw $9, 19808($4)
	sw $9, 20320($4)
	sw $9, 20316($4)
	sw $9, 20312($4)
	sw $9, 20308($4)
	sw $9, 20304($4)
	sw $9, 20300($4)
	sw $9, 20296($4)
	sw $9, 20292($4)
	sw $9, 20288($4)
	sw $9, 20284($4)
	sw $9, 20280($4)
	sw $9, 20276($4)
	sw $9, 20272($4)
	sw $9, 20784($4)
	sw $9, 20788($4)
	sw $9, 20792($4)
	sw $9, 20796($4)
	sw $9, 20800($4)
	sw $9, 20804($4)
	sw $9, 20808($4)
	sw $9, 20812($4)
	sw $9, 20816($4)
	sw $9, 20820($4)
	sw $9, 20824($4)
	sw $9, 20828($4)
	sw $9, 20832($4)
	sw $9, 21344($4)
	sw $9, 21340($4)
	sw $9, 21336($4)
	sw $9, 21332($4)
	sw $9, 21328($4)
	sw $9, 21324($4)
	sw $9, 21320($4)
	sw $9, 21316($4)
	sw $9, 21312($4)
	sw $9, 21308($4)
	sw $9, 21304($4)
	sw $9, 21300($4)
	sw $9, 21296($4)
	sw $9, 21808($4)
	sw $9, 21812($4)
	sw $9, 21816($4)
	sw $9, 21820($4)
	sw $9, 21824($4)
	sw $9, 21828($4)
	sw $9, 21832($4)
	sw $9, 21836($4)
	sw $9, 21840($4)
	sw $9, 21844($4)
	sw $9, 21848($4)
	sw $9, 21852($4)
	sw $9, 21856($4)
	sw $9, 22368($4)
	sw $9, 22364($4)
	sw $9, 22360($4)
	sw $9, 22356($4)
	sw $9, 22352($4)
	sw $9, 22348($4)
	sw $9, 22344($4)
	sw $9, 22340($4)
	sw $9, 22336($4)
	sw $9, 22332($4)
	sw $9, 22328($4)
	sw $9, 22324($4)
	sw $9, 22320($4)
	sw $9, 22836($4)
	sw $9, 22840($4)
	sw $9, 22844($4)
	sw $9, 22848($4)
	sw $9, 22852($4)
	sw $9, 22856($4)
	sw $9, 22860($4)
	sw $9, 22864($4)
	sw $9, 22868($4)
	sw $9, 22872($4)
	sw $9, 22876($4)
	sw $9, 23384($4)
	sw $9, 23380($4)
	sw $9, 23376($4)
	sw $9, 23372($4)
	sw $9, 23368($4)
	sw $9, 23364($4)
	sw $9, 23360($4)
	sw $9, 23356($4)
	sw $9, 23352($4)
	sw $9, 23872($4)
	sw $9, 23876($4)
	sw $9, 23880($4)
	sw $9, 23884($4)
	sw $9, 23888($4)
	
	
	ori $9, $0, 0xffffff
	sw $9, 20784($4)
	sw $9, 21296($4)
	sw $9, 20276($4)
	sw $9, 20280($4)
	sw $9, 20796($4)
	sw $9, 21308($4)
	sw $9, 21816($4)
	sw $9, 21812($4)
	
	sw $9, 20788($4)
	sw $9, 21304($4)
	sw $9, 21300($4)
	ori $9, $0, 0x000000
	sw $9, 20792($4)
	sw $9, 20800($4)#nariz
	sw $9, 21312($4)
	sw $9, 21828($4)
	sw $9, 22344($4)
	sw $9, 22348($4)
	sw $9, 19784($4)
	sw $9, 20292($4)
	sw $9, 20808($4)
	sw $9, 20812($4)
	sw $9, 19788($4)
	sw $9, 20304($4)
	sw $9, 20820($4)
	sw $9, 21332($4)
	sw $9, 21840($4)
	sw $9, 22852($4)
	sw $9, 23368($4)
	sw $9, 23372($4)
	sw $9, 22864($4)
	
	ori $9, $0, 0x556B2F
	sw $9, 20808($4)
	sw $9, 20812($4)
	
	ori $9, $0, 0xffffff
	sw $9, 20320($4)
	sw $9, 20316($4)
	sw $9, 20824($4)
	ori $9, $0, 0x000000
	sw $9, 20828($4)
	ori $9, $0, 0xffffff
	sw $9, 20832($4)
	sw $9, 20836($4)
	ori $9, $0, 0x3CB371
	sw $9, 20324($4)
	ori $9, $0, 0xffffff
	sw $9, 21348($4)
	sw $9, 21344($4)
	sw $9, 21340($4)
	sw $9, 21336($4)
	sw $9, 21852($4)
	sw $9, 21856($4)
	ori $9, $0, 0x3CB371
	sw $9, 21860($4)
	sw $9, 22372($4)
	sw $9, 22880($4)
	sw $9, 23388($4)
	sw $9, 23892($4)
	
	ori $9, $0, 0x9ACD32
	sw $9, 21316($4)
	sw $9, 21320($4)
	sw $9, 21324($4)
	sw $9, 21328($4)
	sw $9, 20816($4)
	sw $9, 20300($4)
	sw $9, 20296($4)
	sw $9, 20804($4)
	sw $9, 21832($4)
	sw $9, 21836($4)
pedra:
	ori $9, $0, 0x696969
	sw $9, 13624($4)
	sw $9, 13112($4)
	sw $9, 12600($4)
	sw $9, 12088($4)
	sw $9, 11576($4)
	sw $9, 11064($4)
	sw $9, 10552($4)
	sw $9, 10040($4)
	sw $9, 9528($4)
	sw $9, 9532($4)
	sw $9, 9536($4)
	sw $9, 9540($4)
	sw $9, 9544($4)
	sw $9, 9548($4)
	sw $9, 9552($4)
	sw $9, 9556($4)
	sw $9, 9560($4)
	sw $9, 9564($4)
	sw $9, 10076($4)
	sw $9, 10588($4)
	sw $9, 11100($4)
	sw $9, 11612($4)
	sw $9, 9532($4)
	sw $9, 12124($4)
	sw $9, 12636($4)
	sw $9, 13148($4)
	sw $9, 13660($4)
	sw $9, 13656($4)
	sw $9, 13652($4)
	sw $9, 13648($4)
	sw $9, 13644($4)
	sw $9, 13640($4)
	sw $9, 13636($4)
	sw $9, 13632($4)
	sw $9, 13628($4)
	sw $9, 13624($4)
	sw $9, 13116($4)
	sw $9, 12608($4)
	sw $9, 12100($4)
	sw $9, 11592($4)
	sw $9, 11084($4)
	sw $9, 10576($4)
	sw $9, 10068($4)

		
	ori $9, $0, 0xb0c4de
	sw $9, 10072($4)
	sw $9, 10584($4)
	sw $9, 10580($4)
	sw $9, 11096($4)
	sw $9, 11092($4)
	sw $9, 11088($4)
	sw $9, 11600($4)
	sw $9, 11596($4)
	sw $9, 11604($4)
	sw $9, 11608($4)
	sw $9, 12112($4)
	sw $9, 12108($4)
	sw $9, 12104($4)
	sw $9, 12116($4)
	sw $9, 12120($4)
	sw $9, 12632($4)
	sw $9, 12628($4)
	sw $9, 12624($4)
	sw $9, 12620($4)
	sw $9, 12616($4)
	sw $9, 12612($4)
	sw $9, 13124($4)
	sw $9, 13120($4)
	sw $9, 13128($4)
	sw $9, 13132($4)
	sw $9, 13136($4)
	sw $9, 13140($4)
	sw $9, 13144($4)
	
	
	sw $9, 10064($4)
	sw $9, 10060($4)
	sw $9, 10056($4)
	sw $9, 10052($4)
	sw $9, 10048($4)
	sw $9, 10044($4)
	sw $9, 10556($4)
	sw $9, 10560($4)
	sw $9, 10564($4)
	sw $9, 10568($4)
	sw $9, 10572($4)
	sw $9, 11068($4)
	sw $9, 11072($4)
	sw $9, 11076($4)
	sw $9, 11080($4)
	sw $9, 11580($4)
	sw $9, 11584($4)
	sw $9, 11588($4)
	sw $9, 12092($4)
	sw $9, 12096($4)
	sw $9, 12604($4)
	
bird:
	ori $9, $0, 0x000000
	sw $9, 19984($4)
	sw $9, 19472($4)
	sw $9, 18964($4)
	sw $9, 18456($4)
	sw $9, 17948($4)
	sw $9, 17440($4)
	sw $9, 17444($4)
	sw $9, 20496($4)
	sw $9, 21012($4)
	sw $9, 21528($4)
	sw $9, 21532($4)
	sw $9, 21536($4)
	sw $9, 21540($4)
	sw $9, 21544($4)
	sw $9, 21548($4)
	sw $9, 21040($4)
	sw $9, 21044($4)
	sw $9, 20536($4)
	sw $9, 20024($4)
	sw $9, 19508($4)
	sw $9, 18992($4)
	sw $9, 18480($4)
	sw $9, 17964($4)
	sw $9, 17448($4)
	sw $9, 16928($4)
	sw $9, 16932($4)
	sw $9, 17436($4)
	sw $9, 17432($4)
	sw $9, 16920($4)
	sw $9, 16924($4)
	sw $9, 16408($4)
	sw $9, 16412($4)
	sw $9, 16416($4)
	sw $9, 15900($4)
	sw $9, 15892($4)
	sw $9, 15888($4)
	sw $9, 16404($4)
	sw $9, 17428($4)
	sw $9, 17424($4)
	sw $9, 19468($4)
	sw $9, 19980($4)
	sw $9, 20488($4)
	sw $9, 20484($4)
	sw $9, 19464($4)
	sw $9, 18952($4)
	
	ori $9, $0, 0xdddd00
	sw $9, 19988($4)
	sw $9, 19992($4)
	sw $9, 19996($4)
	sw $9, 20000($4)
	sw $9, 20004($4)
	sw $9, 20008($4)
	sw $9, 20012($4)
	sw $9, 20016($4)
	sw $9, 20020($4)
	sw $9, 20532($4)
	sw $9, 20528($4)
	sw $9, 20524($4)
	sw $9, 20520($4)
	sw $9, 20516($4)
	sw $9, 20512($4)
	sw $9, 20508($4)
	sw $9, 20504($4)
	sw $9, 20500($4)
	sw $9, 21016($4)
	sw $9, 21020($4)
	sw $9, 21024($4)
	sw $9, 21028($4)
	sw $9, 21032($4)
	sw $9, 21036($4)
	sw $9, 19476($4)
	sw $9, 19480($4)
	sw $9, 19484($4)
	sw $9, 19488($4)
	sw $9, 19492($4)
	sw $9, 19496($4)
	sw $9, 19500($4)
	sw $9, 19504($4)
	sw $9, 18988($4)
	sw $9, 18984($4)
	sw $9, 18980($4)
	sw $9, 18976($4)
	sw $9, 18972($4)
	sw $9, 18968($4)
	sw $9, 18460($4)
	sw $9, 18460($4)
	sw $9, 18464($4)
	sw $9, 18468($4)
	sw $9, 18472($4)
	sw $9, 18476($4)
	sw $9, 17960($4)
	sw $9, 17956($4)
	sw $9, 17952($4)
	
	ori $9, $0, 0xff4500
	sw $9, 18972($4)
	sw $9, 18968($4)
	sw $9, 19488($4)
	sw $9, 19492($4)
	
	
	sw $9, 19500($4)
	sw $9, 19504($4)
	sw $9, 18996($4)
	
	
	ori $9, $0, 0x000000
	sw $9, 20016($4)
	ori $9, $0, 0xffffff
	sw $9, 20012($4)
	sw $9, 20020($4)
	sw $9, 20532($4)
	
	ori $9, $0, 0x000000
	sw $9, 20000($4)
	ori $9, $0, 0xffffff
	sw $9, 19996($4)
	sw $9, 20004($4)
	sw $9, 20512($4)
	sw $9, 20508($4)
	
	ori $9, $0, 0xff8c00
	sw $9, 20520($4)
	sw $9, 20524($4)
	sw $9, 20528($4)
	sw $9, 20532($4)
	sw $9, 21036($4)
	sw $9, 21040($4)
	
	ori $9, $0, 0xffffff
	sw $9, 21032($4)
	sw $9, 21028($4)
	sw $9, 21024($4)
	sw $9, 21020($4)
	sw $9, 21016($4)
	sw $9, 20516($4)
	
	
estrelas:
	ori $9, $0, 0x836FFF
	sw $9, 1048($4)
	sw $9, 1248($4)
	sw $9, 1448($4)
	sw $9, 1648($4)
	sw $9, 1848($4)
	sw $9, 2112($4)
	sw $9, 2240($4)
	sw $9, 2432($4)
	sw $9, 2520($4)
	sw $9, 3152($4)
	sw $9, 5136($4)
	sw $9, 5184($4)
	sw $9, 5312($4)
	sw $9, 5376($4)
	sw $9, 5440($4)
	sw $9, 5528($4)
	sw $9, 5576($4)
	sw $9, 5608($4)
	sw $9, 8616($4)
	sw $9, 8488($4)
	sw $9, 8360($4)
	sw $9, 8232($4)
	sw $9, 9320($4)
	sw $9, 9448($4)
	sw $9, 9576($4)
	sw $9, 9704($4)
	
apagar_bird:
	ori $9, $0, 0x4B0082
	sw $9, 19984($4)
	sw $9, 19472($4)
	sw $9, 18964($4)
	sw $9, 18456($4)
	sw $9, 17948($4)
	sw $9, 17440($4)
	sw $9, 17444($4)
	sw $9, 20496($4)
	sw $9, 21012($4)
	sw $9, 21528($4)
	sw $9, 21532($4)
	sw $9, 21536($4)
	sw $9, 21540($4)
	sw $9, 21544($4)
	sw $9, 21548($4)
	sw $9, 21040($4)
	sw $9, 21044($4)
	sw $9, 20536($4)
	sw $9, 20024($4)
	sw $9, 19508($4)
	sw $9, 18992($4)
	sw $9, 18480($4)
	sw $9, 17964($4)
	sw $9, 17448($4)
	sw $9, 16928($4)
	sw $9, 16932($4)
	sw $9, 17436($4)
	sw $9, 17432($4)
	sw $9, 16920($4)
	sw $9, 16924($4)
	sw $9, 16408($4)
	sw $9, 16412($4)
	sw $9, 16416($4)
	sw $9, 15900($4)
	sw $9, 15892($4)
	sw $9, 15888($4)
	sw $9, 16404($4)
	sw $9, 17428($4)
	sw $9, 17424($4)
	sw $9, 19468($4)
	sw $9, 19980($4)
	sw $9, 20488($4)
	sw $9, 20484($4)
	sw $9, 19464($4)
	sw $9, 18952($4)
	sw $9, 19988($4)
	sw $9, 19992($4)
	sw $9, 19996($4)
	sw $9, 20000($4)
	sw $9, 20004($4)
	sw $9, 20008($4)
	sw $9, 20012($4)
	sw $9, 20016($4)
	sw $9, 20020($4)
	sw $9, 20532($4)
	sw $9, 20528($4)
	sw $9, 20524($4)
	sw $9, 20520($4)
	sw $9, 20516($4)
	sw $9, 20512($4)
	sw $9, 20508($4)
	sw $9, 20504($4)
	sw $9, 20500($4)
	sw $9, 21016($4)
	sw $9, 21020($4)
	sw $9, 21024($4)
	sw $9, 21028($4)
	sw $9, 21032($4)
	sw $9, 21036($4)
	sw $9, 19476($4)
	sw $9, 19480($4)
	sw $9, 19484($4)
	sw $9, 19488($4)
	sw $9, 19492($4)
	sw $9, 19496($4)
	sw $9, 19500($4)
	sw $9, 19504($4)
	sw $9, 18988($4)
	sw $9, 18984($4)
	sw $9, 18980($4)
	sw $9, 18976($4)
	sw $9, 18972($4)
	sw $9, 18968($4)
	sw $9, 18460($4)
	sw $9, 18460($4)
	sw $9, 18464($4)
	sw $9, 18468($4)
	sw $9, 18472($4)
	sw $9, 18476($4)
	sw $9, 17960($4)
	sw $9, 17956($4)
	sw $9, 17952($4)
	sw $9, 18972($4)
	sw $9, 18968($4)
	sw $9, 19488($4)
	sw $9, 19492($4)
	sw $9, 19500($4)
	sw $9, 19504($4)
	sw $9, 18996($4)
	sw $9, 20016($4)
	sw $9, 20012($4)
	sw $9, 20020($4)
	sw $9, 20532($4)
	sw $9, 20000($4)
	sw $9, 19996($4)
	sw $9, 20004($4)
	sw $9, 20512($4)
	sw $9, 20508($4)
	sw $9, 20520($4)
	sw $9, 20524($4)
	sw $9, 20528($4)
	sw $9, 20532($4)
	sw $9, 21036($4)
	sw $9, 21040($4)
	sw $9, 21032($4)
	sw $9, 21028($4)
	sw $9, 21024($4)
	sw $9, 21020($4)
	sw $9, 21016($4)
	sw $9, 20516($4)

stilingue_ap:
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
	j stilingue_ap2

stilingue_ap2:
	beq $15, $0, stilingue_ap3
	lui $4, 0x1001
	addi $12, $12, 508
	sw $9, 0($12) #armazena no endereço $12(calculado na rotina)
	addi $12, $12, 4
	sw $9, 0($12) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j stilingue_ap2
	
stilingue_ap3:
	lui $4, 0x1001
	addi $5, $0, 4 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 2 #quantidade de colunas até chegar no ponto
	addi $15, $0, 7
	jal endpxy5
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	addi $16, $16, 4
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	j stilingue_ap4

stilingue_ap4:
	beq $15, $0, espacoest_ap1
	lui $4, 0x1001
	addi $16, $16, 508
	ori $9, $0, 0x8b4513
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	addi $16, $16, 4
	sw $9, 0($16) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j stilingue_ap4
	
espacoest_ap1:
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

stilingue_ap5:
	beq $15, $0, fim
	lui $4, 0x1001
	addi $19, $19, 508
	ori $9, $0, 0x8b4513
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	addi $19, $19, 4
	ori $9, $0, 0x8b4513
	sw $9, 0($19) #armazena no endereço $12(calculado na rotina)
	addi $15, $15, -1
	j stilingue_ap5		
			
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
endpxya:
	mul $8, $5, $6 # 8= l*L
	add $8, $8, $7 #$8 = l*L+c
	sll $8, $8, 2 # $8 = (l * L +c) *4
	add $23, $8, $4 # $2 = $8 +&p
fimendpxya:
	jr $31 #fim da rotinha
	
