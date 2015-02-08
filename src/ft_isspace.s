;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/02 03:25:17 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/02 03:25:29 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isspace

ft_isspace:
	xor eax, eax
	cmp edi, ' '
	je space
	cmp edi, `\t`
	jl kthxbye
	cmp edi, `\r`
	jg kthxbye
space:
	inc al
kthxbye:
	ret
