section .text
global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy

; rdi - *str

ft_strdup:
	push rdi
	call ft_strlen	
	inc rax
	mov rdi, rax
	call malloc WRT ..plt ; With Respect To ... procedure linkage table (instead of GOT)
	cmp rax, 0
	je .err
	pop rsi
	mov rdi, rax
	call ft_strcpy
	ret

.err:
	mov rax, 0
	ret
