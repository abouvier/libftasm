;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strjoin.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 17:25:25 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/04 17:25:26 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_strjoin
extern ft_strlen
extern malloc

ft_strjoin:
	sub rsp, 32
	mov [rsp + 24], rdi
	mov [rsp + 16], rsi
	call ft_strlen
	mov [rsp + 8], rax
	mov rdi, [rsp + 16]
	call ft_strlen
	mov [rsp], rax
	add rax, [rsp + 8]
	lea rdi, [rax + 1]
	call malloc
	test rax, rax
	jz kthxbye
	mov rdi, rax
	mov rsi, [rsp + 24]
	mov rcx, [rsp + 8]
	rep movsb
	mov rsi, [rsp + 16]
	mov rcx, [rsp]
	inc rcx
	rep movsb
kthxbye:
	add rsp, 32
	ret
