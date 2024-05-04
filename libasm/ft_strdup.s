section.text:
	global ft_strdup
	extern malloc, ft_strlen, ft_strcpy

ft_strdup:
	xor rcx, rcx
	xor rdx, rdx
	xor rax, rax
	mov rdx, rdi
	call ft_strlen
	mov rdi, rax
	add rdi, 1
	call malloc
	mov rdi, rax
	mov rsi, rdx
	call ft_strcpy
	ret