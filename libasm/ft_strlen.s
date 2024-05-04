; Pour strlen test en C (assemble + link asm et ensuite avec C) Penser a mettre
; en global. On aura rdi comme registre

section.text:
	global ft_strlen

ft_strlen:
	; On utilise mov pour initialiser le registre rcx a 0 mais on peut
	; aussi utiliser xor rcx, rcx ce qui est un peu plus performant
	mov rcx, 0
_while:
	cmp byte [rdi + rcx], 0
	je _end_while
	inc rcx
	jmp _while
_end_while:
	mov rax, rcx
	ret