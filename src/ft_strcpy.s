;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/31 01:04:11 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/01 00:27:49 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_strcpy

ft_strcpy:
	mov rax, rdi
strcpy:
	movsb
	cmp byte [rsi - 1], 0
	jne strcpy
	ret
