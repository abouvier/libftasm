;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 18:47:10 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/30 23:49:15 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isalpha
extern ft_isupper
extern ft_islower

ft_isalpha:
	push rdi
	call ft_isupper
	test al, 1
	jnz kthxbye
	mov edi, [rsp]
	call ft_islower
kthxbye:
	add rsp, 8
	ret
