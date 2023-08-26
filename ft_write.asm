global ft_write
section .text

; rdi - fd rsi - str rdx - count

ft_write:
	mov rax, 1 ; WRITE
    mov r8, rdx
    xor r9, r9

.loop:
	cmp byte [rsi], 0 ; takes bigger byte
	je .return
    cmp r8, 0
    je .return
    mov rdx, 1
	syscall
    dec r8
    inc r9
	inc rsi ; next byte
	jmp .loop

.return:
	mov rax, r9
	ret; pop top value from stack, jump there
