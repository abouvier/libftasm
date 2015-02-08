;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 20:44:24 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/01 01:08:48 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_puts

extern ft_strlen

ft_puts:
	test rdi, rdi
	jnz puts
	lea rdi, [rel nullstr]
puts:
	push rdi
	call ft_strlen
	mov rdi, 1
	pop rsi
	mov rdx, rax
	write
	jc error
	mov rdi, 1
	lea rsi, [rel newline]
	mov rdx, 1
	write
	jc error
	mov eax, [rel newline]
kthxbye:
	ret

error:
	mov eax, -1
	jmp kthxbye

section .rodata
nullstr db `(null)\0`
newline db `\n`
