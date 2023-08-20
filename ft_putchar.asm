section .data

section .text
	global ft_putchar

ft_putchar:
	push rsi ; rsi takes *buf by calling convention
	mov rsi, rdi
	mov rdi, 1 ;func arg
	mov rdx, 1 
	mov rax, 1 ;write syscall
	push rsi
	mov rsi, rsp ; arg's ptr
	syscall
	pop rsi
	pop rsi
	ret; pop top value from stack, jump there
