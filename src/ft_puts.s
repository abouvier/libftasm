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
	mov [iov], rdi
	call ft_strlen
	mov [iov + iovec.iov_len], rax

	lea rax, [rel newline]
	mov [iov + iovec_size], rax
	mov qword [iov + iovec_size + iovec.iov_len], 1

	mov rdi, 1
	lea rsi, [rel iov]
	mov rdx, 2
	writev
	jc error
	movzx eax, byte [rel newline]
	ret

error:
	mov eax, -1
	ret

section .bss
iov resb iovec_size * 2

section .rodata
nullstr db `(null)\0`
newline db `\n`
