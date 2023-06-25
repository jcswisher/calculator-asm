.global _start
.intel_syntax noprefix


_start:
        
        // sys write
        mov rax, 1
        mov rdi, 1
        lea rsi, [first_num_prompt]
        mov rdx, 26
        syscall

        // sys read
        mov rax, 0
        sub rsp, 8
        mov rdi, 0
        lea rsi, [rsp]
        mov rdx, 1
        syscall

        mov rax, 1
        mov rdi, 1
        mov rdx, 2
        syscall

        // sys write
        mov rax, 1
        mov rdi, 1
        lea rsi, [new_line]
        mov rdx, 1
        syscall

first_num_prompt:
    .asciz "Enter the first integer: "

new_line:
    .asciz "\n"
