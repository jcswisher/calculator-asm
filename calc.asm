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
        // TODO: store users input from rsp
        mov rdx, 1
        syscall

        // sys write
        mov rax, 1
        mov rdi, 1
        lea rsi, [second_num_prompt]
        mov rdx, 27
        syscall
        
        // sys read
        mov rax, 0
        sub rsp, 8
        mov rdi, 0
        lea rsi, [rsp]
        // TODO: store users input from rsp
        mov rdx, 1
        syscall

        // write back input
        mov rax, 1
        mov rdi, 1
        // users input is still in rsp
        mov rdx, 2
        syscall

        

        // sys write
        //mov rax, 1
        //mov rdi, 1
        //lea rsi, [new_line]
        //mov rdx, 1
        //syscall
        
        
        

first_num_prompt:
    .asciz "Enter the first integer: "

second_num_prompt:
    .asciz "Enter the second integer: "

operation_prompt:
    .asciz "What operation would you like (+ OR -): "

new_line:
    .asciz "\n"
