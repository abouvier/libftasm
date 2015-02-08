;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 19:40:25 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 00:01:17 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isupper

ft_isupper:
	xor eax, eax
	cmp edi, 'A'
	jl kthxbye
	cmp edi, 'Z'
	jg kthxbye
	inc al
kthxbye:
	ret
