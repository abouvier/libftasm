;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/31 00:18:47 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 00:35:51 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_memset

ft_memset:
	mov r8, rdi
	mov al, sil
	mov rcx, rdx
	rep stosb
	mov rax, r8
	ret
