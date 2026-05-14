section .text
    global _start

_start:
    ; Movemos valores a los registros de 32 bits (eax, ebx)
    mov eax, 15         ; Primer número
    mov ebx, 27         ; Segundo número

    ; Realizamos la suma
    add eax, ebx        ; eax = eax + ebx (el resultado queda en eax)

    ; --- Salida del programa ---
    ; Usaremos el resultado de la suma como código de retorno
    ; Para verlo en Linux, después de ejecutar usa: echo $?
    
    mov rdi, rax        ; Movemos el resultado (en rax) al registro de error (rdi)
    mov rax, 60         ; Syscall para salir (sys_exit)
    syscall
    