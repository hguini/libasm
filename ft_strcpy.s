section	.text
	global	_ft_strcpy

_ft_strcpy:
		mov	rax, -1							; i = -1
loop:	inc	rax								; i++
		mov cl, byte[rsi+rax]				; cl = rsi[i]
		mov	byte[rdi + rax], cl				; rdi[i] = cl
		cmp	cl, 0							; if == 0
		jne	loop							; jump while != 0
		mov	rax, rdi
		ret
