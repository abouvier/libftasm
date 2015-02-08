;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/02 01:19:28 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/02 03:04:04 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_strcmp

ft_strcmp:
	xor eax, eax
strcmp:
	mov al, [rdi]
	cmp al, [rsi]
	jne diff
	test al, al
	jz equal
	inc rdi
	inc rsi
	jmp strcmp
diff:
	sbb eax, eax
	or al, 1
equal:
	ret
