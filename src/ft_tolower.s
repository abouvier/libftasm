;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 20:40:52 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 00:04:35 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_tolower

extern ft_isupper

ft_tolower:
	push rdi
	call ft_isupper
	test al, 1
	jz kthxbye
	add byte [rsp], 'a' - 'A'
kthxbye:
	pop rax
	ret
