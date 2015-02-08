;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 20:04:30 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 00:17:57 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_isalnum

extern ft_isalpha, ft_isdigit

ft_isalnum:
	push rdi
	call ft_isalpha
	test al, 1
	jnz kthxbye
	mov edi, [rsp]
	call ft_isdigit
kthxbye:
	add rsp, 8
	ret
