;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 19:03:01 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 00:00:17 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_islower

ft_islower:
	xor eax, eax
	cmp edi, 'a'
	jl kthxbye
	cmp edi, 'z'
	jg kthxbye
	inc al
kthxbye:
	ret
