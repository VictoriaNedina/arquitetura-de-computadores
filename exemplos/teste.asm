; Teste de execução Hello 

; Compilar = transformar o programa em linguagem de máquina
;   nasm -f elf64 <archive_name>.asm

; Linkeditar = transformar o programa de linguagem máquina para executável
;   ld -s -o <archive_name> <archive_name>.o

section .data
    msg db "Hello World", 0x0a
    tam equ $ - msg

section .text 

global _start

_start:

    mov EAX, 0x4 ; para fazer uma saída
    mov EBX, 0x1 ; informamos que a saída é na saída padrão
    mov ECX, msg ; a mensagem é declarada em msg
    mov EDX, tam ; o tamanho é  declarado em tam
    int 0x80 ; termino

    ; destino -> origem
    mov EAX, 0x1 ; SO finaliza
    mov EBX, 0x0 ; SO retorna 0
    int 0x80 ; SO termino