section .data
    msg db 'Hello, World!', 0Ah  ; Mensagem + quebra de linha (0Ah = \n)
    len equ $ - msg              ; Calcula o tamanho da string

section .text
    global _start

_start:
    ; syscall: write (stdout)
    mov eax, 4      ; syscall número 4 = sys_write
    mov ebx, 1      ; file descriptor 1 = stdout
    mov ecx, msg    ; endereço da string
    mov edx, len    ; tamanho da string
    int 0x80        ; chamada de sistema

    ; syscall: exit
    mov eax, 1      ; syscall número 1 = sys_exit
    xor ebx, ebx    ; código de saída = 0
    int 0x80
