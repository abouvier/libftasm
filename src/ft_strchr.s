;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/02 00:41:58 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/02 00:42:00 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_strchr

ft_strchr:
	cmp [rdi], sil
	je kthxbye
	cmp byte [rdi], 0
	je null
	inc rdi
	jmp ft_strchr
null:
	xor rdi, rdi
kthxbye:
	mov rax, rdi
	ret
