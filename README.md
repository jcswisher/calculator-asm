# calculator-asm
An x86-64 Linux assembly CLI calculator program

# Creating an executable
Run assembler to create object file

```nasm -f elf64 calc.asm -o calc.o```

Next run linker

```ld calc.o -o calc```

Execute with: ```./calc```

## Or use these commands together with an easy one-liner
```nasm -f elf64 calc.asm -o calc.o && ld calc.o -o calc && ./calc```
