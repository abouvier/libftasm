;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 20:25:51 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 19:06:14 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_toupper

extern ft_islower

ft_toupper:
	push rdi
	call ft_islower
	test al, 1
	jz kthxbye
	sub byte [rsp], 'a' - 'A'
kthxbye:
	pop rax
	ret
