;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 20:44:24 by abouvier          #+#    #+#              ;
;    Updated: 2015/04/24 12:31:01 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "libftasm.mac"
%include "syscall.mac"

global ft_puts
extern ft_strlen

default rel

ft_puts:
	test rdi, rdi
	jnz puts
	lea rdi, [nullstr]
puts:
	mov [iov], rdi
	call ft_strlen
	mov [iov + iovec.iov_len], rax
	lea rdi, [newline]
	mov [iov + iovec_size], rdi
	mov qword [iov + iovec_size + iovec.iov_len], 1
	mov rdi, stdout
	lea rsi, [iov]
	mov rdx, 2
	syscall writev
	jc error
%ifdef __APPLE__
	mov eax, `\n`
%endif
	ret
error:
	mov eax, -1
	ret

section .bss
iov resb iovec_size * 2

section .rodata
nullstr db `(null)\0`
newline db `\n`
