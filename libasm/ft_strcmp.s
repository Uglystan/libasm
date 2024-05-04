; Les arguments en ASM sont passe dans un ordre precis :
;     RDI
;     RSI
;     RDX
;     RCX
;     R8
;     R9
; Les arguments supplémentaires sont généralement passés sur la pile.

section.text:
	global ft_strcmp

ft_strcmp:
	xor rcx, rcx
_loop:
	cmp byte [rdi + rcx], 0
	je _end
	cmp byte [rsi + rcx], 0
	je _end
	mov al, [rdi + rcx]
	mov bl, [rsi + rcx]
	inc rcx
	cmp byte al, bl
	je _loop ;si =
	jl _smaller ;si al < bl
	jg _greater ;si al > bl
_smaller:
	mov rax, -1
	ret
_greater:
	mov rax, 1
	ret
_end:
	mov rax, 0
	ret