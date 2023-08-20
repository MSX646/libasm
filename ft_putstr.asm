extern ft_putchar
global ft_putstr
section .text

ft_putstr:
	push rsi   ; *buf
	push rdx
	mov rsi, rdi
	mov rax, 1 ; WRITE
	mov rdi, 1 ; stdout
	mov rdx, 1
	xor rcx, rcx

.loop:
	cmp byte [rsi], 0 ; takes bigger byte (starshiy) 
	je .return
	syscall
	inc rcx ; return value
	inc rsi ; next byte
	jmp .loop

.return:
	pop rdx
	pop rsi
	mov rax, rcx
	ret; pop top value from stack, jump there
