; Pour strlen test en C (assemble + link asm et ensuite avec C) Penser a mettre
; en global. On aura rdi comme registre

section.text:
	global ft_strlen

ft_strlen:
	mov rax, 0
_while:
	cmp byte [rdi + rax], 0
	je _end_while
	inc rax
	jmp _while
_end_while:
	ret
