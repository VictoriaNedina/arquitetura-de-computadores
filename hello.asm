section .data
;Hello World 
section .text 

global _start

_start:
    ;destino -> origem EAX = EAX + 1
    ; 0 1 2 3 4 5 6 7 8 9 A B C D E F (hexadecimal)
    mov EAX, 0x1 ; SO terminando programa
    mov EBX, 0x0 ; SO valor retorno é 0
    int 0x80 ; SO câmbio desligo
    
    ; p/ compilar = nasm -f elf64 <archive_name>.asm