section .data
        first_num_text db "Enter the first integer: "
        second_num_text db "Enter the second integer: "
        operation_text db "What operation would you like (+ OR -): "

section .bss
        input resb 16

section .text
        .global _start


_start:
        
        call _first_num_prompt

        call _second_num_prompt
        
        call _get_first_num

        // sys write
        mov rax, 1
        mov rdi, 1
        lea rsi, [second_num_text]
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


_get_first_num:
        mov rax, 0
        mov rdi, 0
        mov rsi, input
        mov rdx, 16
        syscall
        ret

_first_num_prompt:
        mov rax, 1
        mov rdi, 1
        mov rsi, first_num_text
        mov rdx, 25
        syscall
        ret

_second_num_prompt:
        mov rax, 1
        mov rdi, 1
        mov rsi, second_num_text
        mov rdx, 26
        syscall
        ret
