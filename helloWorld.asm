; First x86 Assembly Program
;Date: 10/07/2021


global _start

section .text:

_start:
 mov eax, 0x4		;use the write System Call
 mov ebx, 1		;use the standardOut as the File descriptor for write Call
 mov ecx, text0  	;use the text in .data as the buffer
 mov edx, text0Length	;store the message length in the edx register
 int 0x80		;int is system Interupt and 0x80 is the System Call to run the program

 mov eax, 0x1
 mov ebx, 0
 int 0x80		;Last 3 lines will cause the program to exit


section .data:
 text0: db "Hello World !", 0xA    ;0xA is the \n char
 text0Length equ $-text0
