/*
 * Lab space for Assembly
 * Use this space to experiment with assembly
 * To run this code run "make" in the terminal
 * Github: https://github.com/awesomelewis2007/lab_space
*/

.global _start

_start:
    movl $len, %edx
    movl $msg, %ecx
    movl $1, %ebx
    movl $4, %eax
    int $0x80

    movl $0, %ebx
    movl $1, %eax
    int $0x80

.section .data
msg:
    .ascii "Hello, world!\n"
    len = . - msg
