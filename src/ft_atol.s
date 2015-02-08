;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_atol.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/04 01:59:37 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/04 01:59:40 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_atol

extern ft_isspace, ft_isdigit

ft_atol:
	sub rsp, 24
	mov [rsp + 16], rbx
	mov [rsp + 8], r12
	mov qword [rsp], 1
	mov rbx, rdi
	xor r12, r12
ltrim:
	movzx edi, byte [rbx]
	call ft_isspace
	test al, 1
	jz sign
	inc rbx
	jmp ltrim
sign:
	cmp byte [rbx], '+'
	je plus
	cmp byte [rbx], '-'
	jne atol
	neg qword [rsp]
plus:
	inc rbx
atol:
	movzx edi, byte [rbx]
	call ft_isdigit
	test al, 1
	jz kthxbye
	imul r12, 10
	jo overflow
	movzx rax, byte [rbx]
	sub al, '0'
	add r12, rax
	jo overflow
	inc rbx
	jmp atol
overflow:
	mov r12, 8000000000000000h
	cmp qword [rsp], -1
	sbb r12, 0
kthxbye:
	mov rax, r12
	mul qword [rsp]
	mov r12, [rsp + 8]
	mov rbx, [rsp + 16]
	add rsp, 24
	ret
