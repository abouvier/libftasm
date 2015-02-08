;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 20:23:14 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 00:00:11 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isprint

ft_isprint:
	xor eax, eax
	cmp edi, ' '
	jl kthxbye
	cmp edi, '~'
	jg kthxbye
	inc al
kthxbye:
	ret
