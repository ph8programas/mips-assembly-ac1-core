#################################################
# BCC - AC1 - AT01
# Questão 4
# Grupo : 09
# Alunos: Pedro Henrique Carteli Rossetto e Matheus Pastore Polese
#################################################

.data

INICIO: .word ...
FIM:    .word ...
SOMA:   .word 0
msg: .asciiz "SOMA = "

.text

#################################################
# Inicialização
#################################################
init:
    lui $s0, 0x1001        # $s0 = inicio area dados
    ori $s0, $s0, 0x0000   # $s0 = 0x1001 0000

main:
#################################################
# Implementar solução abaixo
#################################################



#################################################
# Mostrar resultado
#################################################
    # Por aqui as instruções para mostrar 'msg'
	# Valor/código para $v0: 4
	# syscall
	
    lw $a0, SOMA       # Ajustar SOMA para off(reg)
    ori $v0, $zero, 1
    syscall

#################################################
# Encerrar
#################################################
    lui $v0, 0x0000      # 
    ori $v0, $v0, 0x000A # Exit syscall: code 0x0A
    syscall
