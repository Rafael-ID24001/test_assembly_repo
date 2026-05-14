1. Ensamblar: nasm -f elf64 suma.asm -o suma.o

2. Enlazar: ld suma.o -o suma

3. Ejecutar: ./suma

4. Ejecutar ```echo $?``` justo después de correr el programa suma, se verá el número 42 impreso en la consola
