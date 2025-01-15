.text

main:	lui $4, 0x1001
	ori $9, $0, 0x87CEFA
	addi $20, $0, 4096
	addi $21, $0, 2048

test:	beq $20, $0, linha2
	sw  $9, 0($4)
	addi $4, $4, 4
	addi $20, $20, -1
	j test
linha2:
	beq $21, $0, areia
	sw  $9, 0($4)
	addi $4, $4, 4
	addi $21, $21, -1
	j linha2
areia:
	lui $4, 0x1001
	addi $5, $0, 6 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 0 #quantidade de colunas até chegar no ponto
	jal endpxy
	ori $9, $0 0xDEB887
	sw $9, 0($2) #armazena no endereço $2(calculado na rotina)
	
	addi $20, $0, 0
	addi $21, $0, 1024
	
test2:	beq $20, $0, linha3
	sw  $9, 0($2)
	addi $2, $2, 4
	addi $20, $20, -1
	j test2
linha3:
	beq $21, $0, areiaescura
	sw  $9, 0($2)
	addi $2, $2, 4
	addi $21, $21, -1
	j linha3

areiaescura:
	lui $4, 0x1001
	addi $5, $0, 7 #linha em que quer que ponto esteja (l)
	addi $6, $0, 1024 #quantidade de UG de linhas (L)
	addi $7, $0, 0 #quantidade de colunas até chegar no ponto
	
	jal endpxy2
	ori $9, $0, 0xCD853F
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
	ori $9, $0, 0xDAA520
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	addi $20, $20, 4
	sw $9, 0($20) #armazena no endereço $12(calculado na rotina)
	j blocop1

blocop1:
	beq $15, $0, blocopp2
	lui $4, 0x1001
	addi $20, $20, 508
	ori $9, $0, 0xDAA520
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
	ori $9, $0, 0xDAA520
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	addi $21, $21, 4
	sw $9, 0($21) #armazena no endereço $12(calculado na rotina)
	j blocop2

blocop2:
	beq $15, $0, bordabloco
	lui $4, 0x1001
	addi $21, $21, 508
	ori $9, $0, 0xDAA520
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
	
	ori $9, $0, 0xDAA520
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
piramidep:
	
	ori $9, $0, 0xCD853F
	sw $9, 24192($4)
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

	sw $9, 24236($4)
	sw $9, 23684($4)
	ori $9, $0, 0xCD853F
	sw $9, 23688($4)
	sw $9, 23692($4)
	sw $9, 23696($4)
	sw $9, 23700($4)
	sw $9, 23704($4)
	sw $9, 23708($4)
	sw $9, 23712($4)
	sw $9, 23716($4)

	sw $9, 23720($4)
	sw $9, 23204($4)
	ori $9, $0, 0xCD853F
	sw $9, 23200($4)
	sw $9, 23196($4)
	sw $9, 23192($4)
	sw $9, 23188($4)
	sw $9, 23184($4)
	sw $9, 23180($4)

	sw $9, 23176($4)
	sw $9, 22668($4)
	ori $9, $0, 0xCD853F
	sw $9, 22672($4)
	sw $9, 22676($4)
	sw $9, 22680($4)
	sw $9, 22684($4)

	sw $9, 22688($4)
	sw $9, 22172($4)
	ori $9, $0, 0xCD853F
	sw $9, 22168($4)
	sw $9, 22164($4)
	sw $9, 22160($4)
	sw $9, 21652($4)
	
	sw $9, 21656($4)
piramideg:
	ori $9, $0, 0xDEB887
	sw $9, 24480($4)
	ori $9, $0, 0xCD853F
	sw $9, 24484($4)
	sw $9, 24488($4)
	sw $9, 24492($4)
	sw $9, 24496($4)
	sw $9, 24500($4)
	sw $9, 24504($4)
	sw $9, 24508($4)
	sw $9, 24512($4)
	sw $9, 24516($4)
	sw $9, 24520($4)
	sw $9, 24524($4)
	sw $9, 24528($4)
	sw $9, 24532($4)
	sw $9, 24536($4)
	sw $9, 24540($4)
	sw $9, 24544($4)
	sw $9, 24548($4)
	sw $9, 24552($4)
	sw $9, 24556($4)
	sw $9, 24560($4)
	sw $9, 24564($4)
	ori $9, $0, 0xDEB887
	sw $9, 24568($4)
	sw $9, 24052($4)
	ori $9, $0, 0xCD853F
	sw $9, 24048($4)
	sw $9, 24044($4)
	sw $9, 24040($4)
	sw $9, 24036($4)
	sw $9, 24032($4)
	sw $9, 24028($4)
	sw $9, 24024($4)
	sw $9, 24020($4)
	sw $9, 24016($4)
	sw $9, 24012($4)
	sw $9, 24008($4)
	sw $9, 24004($4)
	sw $9, 24000($4)
	sw $9, 23996($4)
	sw $9, 23992($4)
	sw $9, 23988($4)
	sw $9, 23984($4)
	sw $9, 23980($4)
	sw $9, 23976($4)
	ori $9, $0, 0xDEB887
	sw $9, 23972($4)
	sw $9, 23464($4)
	ori $9, $0, 0xCD853F
	sw $9, 23468($4)
	sw $9, 23472($4)
	sw $9, 23476($4)
	sw $9, 23480($4)
	sw $9, 23484($4)
	sw $9, 23488($4)
	sw $9, 23492($4)
	sw $9, 23496($4)
	sw $9, 23500($4)
	sw $9, 23504($4)
	sw $9, 23508($4)
	sw $9, 23512($4)
	sw $9, 23516($4)
	sw $9, 23520($4)
	sw $9, 23524($4)
	sw $9, 23528($4)
	sw $9, 23532($4)
	ori $9, $0, 0xDEB887
	sw $9, 23536($4)
	sw $9, 23020($4)
	ori $9, $0, 0xCD853F
	sw $9, 23016($4)
	sw $9, 23012($4)
	sw $9, 23008($4)
	sw $9, 23004($4)
	sw $9, 23000($4)
	sw $9, 22996($4)
	sw $9, 22992($4)
	sw $9, 22988($4)
	sw $9, 22984($4)
	sw $9, 22980($4)
	sw $9, 22976($4)
	sw $9, 22972($4)
	sw $9, 22968($4)
	sw $9, 22964($4)
	sw $9, 22960($4)
	ori $9, $0, 0xDEB887
	sw $9, 22956($4)
	sw $9, 22448($4)
	ori $9, $0, 0xCD853F
	sw $9, 22452($4)
	sw $9, 22456($4)
	sw $9, 22460($4)
	sw $9, 22464($4)
	sw $9, 22468($4)
	sw $9, 22472($4)
	sw $9, 22476($4)
	sw $9, 22480($4)
	sw $9, 22484($4)
	sw $9, 22488($4)
	sw $9, 22492($4)
	sw $9, 22496($4)
	sw $9, 22500($4)
	ori $9, $0, 0xDEB887
	sw $9, 22504($4)
	sw $9, 21988($4)
	ori $9, $0, 0xCD853F
	sw $9, 21984($4)
	sw $9, 21980($4)
	sw $9, 21976($4)
	sw $9, 21972($4)
	sw $9, 21968($4)
	sw $9, 21964($4)
	sw $9, 21960($4)
	sw $9, 21956($4)
	sw $9, 21952($4)
	sw $9, 21948($4)
	sw $9, 21944($4)
	ori $9, $0, 0xDEB887
	sw $9, 21940($4)
	sw $9, 21432($4)
	ori $9, $0, 0xCD853F
	sw $9, 21436($4)
	sw $9, 21440($4)
	sw $9, 21444($4)
	sw $9, 21448($4)
	sw $9, 21452($4)
	sw $9, 21456($4)
	sw $9, 21460($4)
	sw $9, 21464($4)
	sw $9, 21468($4)
	ori $9, $0, 0xDEB887
	sw $9, 21472($4)
	sw $9, 20956($4)
	ori $9, $0, 0xCD853F
	sw $9, 20952($4)
	sw $9, 20948($4)
	sw $9, 20944($4)
	sw $9, 20940($4)
	sw $9, 20936($4)
	sw $9, 20932($4)
	sw $9, 20928($4)
	ori $9, $0, 0xDEB887
	sw $9, 20924($4)
	sw $9, 20416($4)
	ori $9, $0, 0xCD853F
	sw $9, 20420($4)
	sw $9, 20424($4)
	sw $9, 20428($4)
	sw $9, 20432($4)
	sw $9, 20436($4)
	ori $9, $0, 0xDEB887
	sw $9, 20440($4)
	sw $9, 19924($4)
	ori $9, $0, 0xCD853F
	sw $9, 19920($4)
	sw $9, 19916($4)
	sw $9, 19912($4)
	ori $9, $0, 0xDEB887
	sw $9, 19908($4)
	sw $9, 19400($4)
	ori $9, $0, 0xCD853F
	sw $9, 19404($4)
	ori $9, $0, 0xDEB887
	sw $9, 19408($4)

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
blocopequeno:
	ori $9, $0, 0x8B4513
	sw $9, 13604($4)
	ori $9, $0, 0xDAA520
	sw $9, 13608($4)
	sw $9, 13612($4)
	ori $9, $0, 0x8B4513
	sw $9, 13616($4)
	sw $9, 13104($4)
	ori $9, $0, 0xDAA520
	sw $9, 13100($4)
	sw $9, 13096($4)
	ori $9, $0, 0x8B4513
	sw $9, 13092($4)
	sw $9, 12580($4)
	ori $9, $0, 0xDAA520
	sw $9, 12584($4)
	sw $9, 12588($4)
	ori $9, $0, 0x8B4513
	sw $9, 12592($4)
	sw $9, 12080($4)
	ori $9, $0, 0xDAA520
	sw $9, 12076($4)
	sw $9, 12072($4)
	ori $9, $0, 0x8B4513
	sw $9, 12068($4)
	sw $9, 11556($4)
	ori $9, $0, 0xDAA520
	sw $9, 11560($4)
	sw $9, 11564($4)
	ori $9, $0, 0x8B4513
	sw $9, 11568($4)
	sw $9, 11056($4)
	ori $9, $0, 0xDAA520
	sw $9, 11052($4)
	sw $9, 11048($4)
	ori $9, $0, 0x8B4513
	sw $9, 11044($4)
	sw $9, 10532($4)
	ori $9, $0, 0xDAA520
	sw $9, 10536($4)
	sw $9, 10540($4)
	ori $9, $0, 0x8B4513
	sw $9, 10544($4)
	sw $9, 10032($4)
	ori $9, $0, 0xDAA520
	sw $9, 10028($4)
	sw $9, 10024($4)
	ori $9, $0, 0x8B4513
	sw $9, 10020($4)
	sw $9, 9508($4)
	ori $9, $0, 0xDAA520
	sw $9, 9512($4)
	sw $9, 9516($4)
	ori $9, $0, 0x8B4513
	sw $9, 9520($4)
	sw $9, 9008($4)
	ori $9, $0, 0xDAA520
	sw $9, 9004($4)
	sw $9, 9000($4)
	ori $9, $0, 0x8B4513
	sw $9, 8996($4)
	sw $9, 8484($4)
	ori $9, $0, 0xDAA520
	sw $9, 8488($4)
	sw $9, 8492($4)
	ori $9, $0, 0x8B4513
	sw $9, 8496($4)
	

	sw $9, 7964($4)
	sw $9, 7968($4)
	sw $9, 7972($4)
	sw $9, 7976($4)
	sw $9, 7980($4)
	sw $9, 7984($4)
	sw $9, 7988($4)
	sw $9, 7992($4)
	sw $9, 7996($4)
	sw $9, 8000($4)
	sw $9, 8004($4)
	sw $9, 8008($4)
	sw $9, 8012($4)
	sw $9, 8016($4)
	sw $9, 8020($4)
	sw $9, 8024($4)
	sw $9, 8028($4)
	sw $9, 8032($4)
	sw $9, 8036($4)
	sw $9, 8040($4)
	sw $9, 8044($4)
	sw $9, 8048($4)
	sw $9, 8052($4)
	sw $9, 8056($4)
	
	sw $9, 8560($4)
	ori $9, $0, 0xDAA520
	sw $9, 8556($4)
	sw $9, 8552($4)
	ori $9, $0, 0x8B4513
	sw $9, 8548($4)
	sw $9, 9060($4)
	ori $9, $0, 0xDAA520
	sw $9, 9064($4)
	sw $9, 9068($4)
	ori $9, $0, 0x8B4513
	sw $9, 9072($4)
	sw $9, 9584($4)
	ori $9, $0, 0xDAA520
	sw $9, 9580($4)
	sw $9, 9576($4)
	ori $9, $0, 0x8B4513
	sw $9, 9572($4)
	sw $9, 10084($4)
	ori $9, $0, 0xDAA520
	sw $9, 10088($4)
	sw $9, 10092($4)
	ori $9, $0, 0x8B4513
	sw $9, 10096($4)
	sw $9, 10608($4)
	ori $9, $0, 0xDAA520
	sw $9, 10604($4)
	sw $9, 10600($4)
	ori $9, $0, 0x8B4513
	sw $9, 10596($4)
	sw $9, 11108($4)
	ori $9, $0, 0xDAA520
	sw $9, 11112($4)
	sw $9, 11116($4)
	ori $9, $0, 0x8B4513
	sw $9, 11120($4)
	sw $9, 11632($4)
	ori $9, $0, 0xDAA520
	sw $9, 11628($4)
	sw $9, 11624($4)
	ori $9, $0, 0x8B4513
	sw $9, 11620($4)
	sw $9, 12132($4)
	ori $9, $0, 0xDAA520
	sw $9, 12136($4)
	sw $9, 12140($4)
	ori $9, $0, 0x8B4513
	sw $9, 12144($4)
	sw $9, 12656($4)
	ori $9, $0, 0xDAA520
	sw $9, 12652($4)
	sw $9, 12648($4)
	ori $9, $0, 0x8B4513
	sw $9, 12644($4)
	sw $9, 13156($4)
	ori $9, $0, 0xDAA520
	sw $9, 13160($4)
	sw $9, 13164($4)
	ori $9, $0, 0x8B4513
	sw $9, 13168($4)
	sw $9, 13680($4)
	ori $9, $0, 0xDAA520
	sw $9, 13676($4)
	sw $9, 13672($4)
	ori $9, $0, 0x8B4513
	sw $9, 13668($4)
	
	sw $9, 7452($4)
	sw $9, 6940($4)
	sw $9, 6944($4)
	sw $9, 6948($4)
	sw $9, 6952($4)
	sw $9, 6956($4)
	sw $9, 6960($4)
	sw $9, 6964($4)
	sw $9, 6968($4)
	sw $9, 6972($4)
	sw $9, 6976($4)
	sw $9, 6980($4)
	sw $9, 6984($4)
	sw $9, 6988($4)
	sw $9, 6992($4)
	sw $9, 6996($4)
	sw $9, 7000($4)
	sw $9, 7004($4)
	sw $9, 7008($4)
	sw $9, 7012($4)
	sw $9, 7016($4)
	sw $9, 7020($4)
	sw $9, 7024($4)
	sw $9, 7028($4)
	sw $9, 7032($4)
	sw $9, 7544($4)
	
	ori $9, $0, 0xDAA520
	sw $9, 7456($4)
	sw $9, 7460($4)
	sw $9, 7464($4)
	sw $9, 7468($4)
	sw $9, 7472($4)
	sw $9, 7476($4)
	sw $9, 7480($4)
	sw $9, 7484($4)
	sw $9, 7488($4)
	sw $9, 7492($4)
	sw $9, 7496($4)
	sw $9, 7500($4)
	sw $9, 7504($4)
	sw $9, 7508($4)
	sw $9, 7512($4)
	sw $9, 7516($4)
	sw $9, 7520($4)
	sw $9, 7524($4)
	sw $9, 7528($4)
	sw $9, 7532($4)
	sw $9, 7536($4)
	sw $9, 7540($4)

	
Porquinho:
		
	ori $9, $0, 0x000000
	sw $9, 13632($4)#lado1
	sw $9, 13636($4)
	sw $9, 13640($4)
	sw $9, 13644($4)
	sw $9, 13648($4)
	sw $9, 13652($4)
	sw $9, 13144($4)
	sw $9, 12636($4)
	sw $9, 12124($4)
	sw $9, 11612($4)
	sw $9, 11096($4)
	sw $9, 10580($4)#fimlado1
	
	sw $9, 13116($4)#lado2
	sw $9, 12600($4)
	sw $9, 12088($4)
	sw $9, 11576($4)
	sw $9, 11068($4)
	sw $9, 10560($4)
	sw $9, 10044($4)
	sw $9, 9536($4)
	sw $9, 9540($4)
	sw $9, 10056($4)
	sw $9, 10060($4)
	
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
