section .data
        first_num_text  db      "Enter the first integer: "
        second_num_text db      "Enter the second integer: "
        operation_text  db      "What operation would you like (+, -, *, /): "
        result_text     db      "Result: "

        first_num_input dd      10
        second_num_input dd     20
section .bss
operation_input         resb 1          ; reserve 1 byte for the operation (+, -, *, /)
result                  resb 255        ; reserve 255 bytes for the result

section .text
global _start

_start:
        ; print(first_num_text)
        ; write (rax=1) to stdin (rdi=1) the text at (rsi=first_num_text) with length (rdx=25)
        mov rax, 1
        mov rdi, 1
        mov rsi, first_num_text
        mov rdx, 25
        syscall

        ; input(first_num_input)
        ; read (rax=0) from stdin (rdi=0) to the buffer (rsi=first_num_input) with length (rdx=?)
        mov rax, 0
        mov rdi, 0
        mov rsi, first_num_input
        mov rdx, 255
        syscall

        ; print(second_num_text)
        ; write (rax=1) to stdin (rdi=1) the text at (rsi=second_num_text) with length (rdx=26)
        mov rax, 1
        mov rdi, 1
        mov rsi, second_num_text
        mov rdx, 26
        syscall

        ; input(first_num_input)
        ; read (rax=0) from stdin (rdi=0) to the buffer (rsi=second_num_input) with length (rdx=255)
        mov rax, 0
        mov rdi, 0
        mov rsi, second_num_input
        mov rdx, 255
        syscall

        ; print(operation_text)
        ; read (rax=0) from stdin (rdi=0) to the buffer (rsi=operation_input) with length (rdx=1)
        mov rax, 1
        mov rdi, 1
        mov rsi, operation_text
        mov rdx, 44
        syscall

        ; input(operation_input)
        ; read (rax=0) from stdin (rdi=0) to the buffer (rsi=operation_input) with length (rdx=1)
        mov rax, 0
        mov rdi, 0
        mov rsi, operation_input
        mov rdx, 1
        syscall


        ; 
        mov al, [operation_input]

        cmp al, '+'
        je add

        ; cmp al, '-'
        ; je subtract

        ; cmp al, '*'
        ; je multiply

        ; cmp al, '/'
        ; je divide

add:
        mov rax, [first_num_input]
        



        mov rdi, [second_num_input]

        add rax, rdi

        mov r10, rax

        jmp end

end:
        mov rax, 1
        mov rdi, 1
        mov rsi, result_text
        mov rdx, 12
        syscall

        mov rax, 1
        mov rdi, 1
        mov rsi, r10
        mov rdx, 10
        syscall

        mov rax, 0x3C
        mov rdi, 0
        syscall