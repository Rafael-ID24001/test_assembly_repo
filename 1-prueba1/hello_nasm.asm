section .data
    ; Definimos la cadena de texto y calculamos su longitud
    msg db "¡Hola desde NASM!", 10  ; 10 es el código para salto de línea (\n)
    len equ $ - msg               ; Cálculo automático de la longitud

section .text
    global _start

_start:
    ; --- Syscall: sys_write (Escribir en pantalla) ---
    mov rax, 1          ; ID de la llamada al sistema sys_write
    mov rdi, 1          ; File descriptor 1: Salida estándar (stdout)
    mov rsi, msg        ; Dirección del mensaje
    mov rdx, len        ; Longitud del mensaje
    syscall             ; Ejecutar la llamada

    ; --- Syscall: sys_exit (Salir del programa) ---
    mov rax, 60         ; ID de la llamada al sistema sys_exit
    xor rdi, rdi        ; Código de salida 0 (limpia rdi usando XOR)
    syscall
    