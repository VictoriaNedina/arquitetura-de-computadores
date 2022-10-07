; Hello World -> Mínimo Programa
; Compilar = transformar o programa em linguagem de máquina
;   nasm -f elf64 <archive_name>.asm
; Linkeditar = transformar o programa de linguagem máquina para executável
;   ld -s -o <archive_name> <archive_name>.o
section .data

section .text 

global _start

_start:
    ; destino -> origem
    ; 0 1 2 3 4 5 6 7 8 9 A B C D E F (hexadecimal)
    mov EAX, 0x1 ; SO terminando
    mov EBX, 0x0 ; SO valor retorno é 0
    int 0x80 ; SO câmbio