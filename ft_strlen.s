section	.text
	global	_ft_strlen

_ft_strlen:
		mov	rax, -1					; i = -1
loop:	inc	rax						; i++
		cmp	byte [rdi+rax], 0		; if == 0
		jne	loop					; jump while != 0
		ret
