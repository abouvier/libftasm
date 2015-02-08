;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 20:06:26 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/30 23:57:09 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isascii

ft_isascii:
	xor eax, eax
	cmp edi, 0
	jl kthxbye
	cmp edi, 127
	jg kthxbye
	inc al
kthxbye:
	ret
