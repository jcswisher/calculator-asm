# calculator-asm
An CLI calculator program in x86-64 assembly

# Creating an executable
Run assembler

```as calc.asm -o calc.o```

Next run gcc

```gcc -o calc calc.o -nostdlib -static```

Execute with: ```./calc```
