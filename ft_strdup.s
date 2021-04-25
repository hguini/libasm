section	.text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

_ft_strdup:
		call	_ft_strlen		; len rdi
		add		rax, 1			; add \0
		push	rdi				; save value rdi on stack
		mov		rdi, rax		; for malloc
		call	_malloc
		pop		rdi				; return value
		mov		rsi, rdi		; for ft_strcpy
		mov		rdi, rax		; for ft_strcpy
		call	_ft_strcpy
		ret
