; Exemplo 1
; Pede dois números e os soma.

.data
str1: .asciiz "Digite primeiro numero\n"
str2: .asciiz "Digite segundo numero\n"
strN: .asciiz "\n"

.text
.globl main

main:
    addi $v0, $zero, 4 # codigo syscall print_str
    la $a0, str1 # primeira string a ser exibida
    syscall

    addi $v0, $zero, 5 # codigo syscall read_int
    syscall
    add $t1, $v0, $zero # salva valor lido em $t1

    addi $v0, $zero, 4 # codigo syscall print_str
    la $a0, str2 # segunda string a ser exibida
    syscall

    addi $v0, $zero, 5 # codigo syscall read_int
    syscall
    add $t2, $v0, $zero # salva valor lido em $t2

    add $t0, $t1, $t2 # faz soma
    addi $v0, $zero, 1 # codigo syscall print_int
    add $a0, $t0, $zero # valor a ser impresso
    syscall

    addi $v0, $zero, 4 # codigo syscall print_str
    la $a0, strN # fim de linha
    syscall

    addi $v0, $zero, 10 # codigo para finalizar programa
    syscall