# calculator-asm
An x86_64 assembly (intel syntax) CLI calculator program for linux. This is intended to be a learning excerise, not a real program.

# Creating the executable
Run assembler to create object file

```nasm -f elf64 calc.asm -o calc.o```

Next run linker

```ld calc.o -o calc```

Execute with: ```./calc```

## Or use these commands together with an easy one-liner
```nasm -f elf64 calc.asm -o calc.o && ld calc.o -o calc && ./calc```
