section	.text
	global	_ft_write

_ft_write:
		mov	r10, rdx
		mov	rax, 0x2000004		; syscall write
		syscall
		jc	error
		mov	rax, r10
		ret
error:
		mov	rax, -1
		ret
