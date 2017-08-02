;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/28 22:05:01 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 00:06:29 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_strcat
extern ft_strcpy

ft_strcat:
	push rdi
hello:
	cmp byte [rdi], 0
	je kitty
	inc rdi
	jmp hello
kitty:
	call ft_strcpy
	pop rax
	ret
