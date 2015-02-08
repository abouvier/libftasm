;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/31 01:04:11 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/01 00:27:49 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_strdup

extern ft_strlen, malloc

ft_strdup:
	sub rsp, 16
	mov [rsp + 8], rdi
	call ft_strlen
	lea rdi, [rax + 1]
	mov [rsp], rdi
	call malloc
	test rax, rax
	jz kthxbye
	mov rdi, rax
	mov rsi, [rsp + 8]
	mov rcx, [rsp]
	rep movsb
kthxbye:
	add rsp, 16
	ret
