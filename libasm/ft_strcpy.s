; EN ASM pour avancer dans les registre ce n'est pas comme en c avec un chaine
; On avance en utilisant [registre + index] et pas registre[index]
; ON a un des registres de 8bits notamment al qui est utilise principalement
; pour stocker des caractere ASCII
; EN ASM il existe plusisuer taille de registre et plusieur registre par taille
; Exemple al taille 8bits et bl taille 8bits on peut le utiliser de maniere independante
; RSI(Source Index) et RDI(Dest Index) sont 2 registres principalement utilise
; Pour le transfert de donnees, de copie de memoire et de traitement de tableau
; On utilise cmp pour faire des comparaison, on doit preciser ce qu l'on compare
; (byte/1 octect, word/2 octects ou 1 mot, dword/2mots, qword/4mots, tword/10mots)
; ensuite en fonction du resultat de la comparaison on a des instructions de
; de branchement pour executer un label
section.text:
	global ft_strcpy

ft_strcpy:
	mov rcx, 0
_loop:
	cmp byte [rsi + rcx], 0
	je _end
	mov al, [rsi + rcx]
	mov [rdi + rcx], al
	inc rcx
	jmp _loop
_end:
	mov byte [rsi + rcx], 0
	mov rax, rdi
	ret
