global ft_read
extern __errno_location

section .text

ft_read:
	mov rax, 0 ; READ
	syscall
	jc .return
	ret

.return:
	push rax
	call __errno_location WRT ..plt ; With Respect To ... procedure linkage table (instead of GOT)
	pop     rdx
    	mov     [rax], rdx
    	mov     rax, -1
    	ret
