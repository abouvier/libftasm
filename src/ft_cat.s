;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/01 00:42:52 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/01 00:43:02 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "libftasm.mac"

global ft_cat

ft_cat:
	push rdi
cat:
	lea rsi, [rel buffer]
	mov rdx, buffer.size
	read
	jc kthxbye
	test rax, rax
	jz kthxbye
	mov rdi, stdout
	lea rsi, [rel buffer]
	mov rdx, rax
	write
	jc kthxbye
	mov rdi, [rsp]
	jmp cat
kthxbye:
	add rsp, 8
	ret

section .bss
buffer resb 2048
.size equ $ - buffer
