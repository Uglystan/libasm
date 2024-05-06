section.text:
	global ft_strdup
	extern malloc, ft_strlen, ft_strcpy

ft_strdup:
	; rbp (registre base pointer) est un registre qui permet de faciliter
	; l'acces au variale local et parametre de la fonction.
	; DOnc en faisant ca on le met au sommet de la pile et on 
	; sauvegarde son etat si on compte le modifier car c'est un registre
	; calle-saved c'est a dire que son etat est sauvegarder au travers
	; des fonctions. ici on doit faire ca car malloc modifie indirectement
	; l'etat de la pile

	; Stack (LIFO)
	; Les appelles au fonction d'un programme sont placees sur la pile
	; sous forme de stack-frame (On peut avoir les argument aussi),
	; l'adresse de retour une fois la fonction termine, variable local.
	; Quand on lance un programme il y'a une premiere stack-frame si 
	; une fonction est appele dans ce programme on aura une nouvelle
	; stack-frame empile au dessus de la premiere et ainsi de suite

	; Stack-Frame
	; A chaque appel de fonction un nouvelle stack frame et ajouter en haut de pile
	; Dans la stack-frame il y'a entre autre le contexte d'execution et les
	; variable passe a la fonction

	; RIP (Registre instruction pointer)
	; Ce registre contient l'adresse de la prochaine instruction a executer
	; lors de l'appel a une fonction avec call qui est un alias. Il est enfaite
	; fait un push de RIP sur la pile comme ca une fois la fonction termine
	; il pourra revenir a la bonne instruction et ensuite il jmp a l'adresse
	; de la fonction

	; RSP (Registre stack pointer)
	; Registre qui garde en memoire l'adresse du haut de la pile il est mis
	; a jour a chaque modification de la pile
	; RBP (Registre base pointer)
	; Registre qui garde en memoire l'adresse du debut de la stack frame

	; Chaque fonction doit avoir sa propre stack-frame dissocie de la fonction
	; appelante. chaque focntion a donc un prologue et un epilogue. le prologue
	; permet de sauvegarder les informations de la fonction appelante et
	; l'epilogue permet de resitue les infos sauvegarder comme si rien ne s'etait
	; passe

	; Prologue
	push rbp ;Creer la stack-frame on met le registre dans la pile
	mov rbp, rsp ; Ici, la valeur actuelle de RSP, qui pointe vers le haut de la pile, est copiée dans RBP. Cela établit RBP comme pointeur de base pour la stack-frame de la fonction, avec RSP toujours pointé vers le haut de la pile. Ainsi, RBP est maintenant positionné en bas de la stack-frame, tandis que RSP reste au sommet de la pile.
	; Fin prologue
	mov r12, rdi
	call ft_strlen
	inc rax
	mov rdi, rax
	call malloc
	mov rdi, rax
	mov rsi, r12
	call ft_strcpy
	;Epilogue
	pop rbp
	ret