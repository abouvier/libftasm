;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 19:57:52 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/30 23:05:25 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isdigit

ft_isdigit:
	xor eax, eax
	cmp edi, '0'
	jl kthxbye
	cmp edi, '9'
	jg kthxbye
	inc al
kthxbye:
	ret
