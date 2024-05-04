; Pour write on a donc 3 arguments (fd, buf, count) le fd et dans rdi, le buffer dans rsi et le count dans rdx
; Et on appelle avec le registre rax la fonction write test en asm directement

section.text:
	global ft_write

; Pour write on a donc 3 arguments (fd, buf, count) le fd et dans rdi, le buffer dans rsi et le count dans rdx
ft_write:
	mov rax, 1
	syscall
	ret

; POur tester seulement en ASM
; section.text:
; 	global _start
; _start:
; 	mov rsi, message
; 	mov rdi,1
; 	mov rdx, 4
; 	call ft_write
; 	mov rax, 60
; 	xor rdi, rdi
; 	syscall