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
	xor al, al
	mov rcx, -1
	repne scasb
	call ft_strcpy
	pop rax
	ret
