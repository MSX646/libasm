global ft_strcpy

; rdi - dest, rsi - src

section .text

ft_strcpy:
	mov rax, rdi
	xor rcx, rcx

.loop:
	cmp byte [rsi+rcx], 0
	je .return
	mov dl, [rsi+rcx] ; dl - byte char (rdx)
	mov [rax+rcx], dl
	inc rcx
	jmp .loop
.return:
	mov byte [rax+rcx],0
	ret
