section	.text
	global	_ft_read

_ft_read:
		mov	r10, rdx
		mov	rax, 0x2000003		; syscall write
		syscall
		jc	error
		mov	rax, r10
		ret
error:
		mov	rax, -1
		ret
