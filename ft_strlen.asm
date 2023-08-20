section .text

global ft_strlen

ft_strlen:
	push rdi
	xor rax, rax	

.loop:
	cmp byte [rdi], 0 ; takes bigger byte (starshiy) 
	je .return
	inc rdi
	inc rax
	jmp .loop

.return:
	pop rdi
	ret ; pop top value from stack, jump there
