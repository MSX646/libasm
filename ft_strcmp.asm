section .text
global ft_strcmp
; s1 == rdi, s2 == rsi

ft_strcmp:
	push rdi
	push rsi

; r8b - r15b lower 8-bits
.loop:
	mov r8b, byte [rdi]
	mov r9b, byte [rsi]
	cmp r8b, 0
	je .return
	cmp r9b, 0
	je .return
	cmp  r8b, r9b
	jne .return
	inc rdi
	inc rsi
	jmp .loop
	

.return:
	movzx rax, r8b
	movzx rbx, r9b
	sub rax, rbx
	pop rsi
	pop rdi
	ret
