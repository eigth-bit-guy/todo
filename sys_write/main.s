	;; x86_64 assembly

	global	_start

	section .data
	
	message db "Insert somenthing: ", 10
	messLen equ $-message
	

	section .bss
	msg_usr resb 10
	msg_usr_len equ $-msg_usr
	
	section .text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, messLen
	syscall

	mov rax, 0
	mov rdi, 1
	mov rsi, msg_usr
	mov rdx, msg_usr_len
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, msg_usr
	mov rdx, msg_usr_len
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
	
	
