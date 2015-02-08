;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/29 21:17:07 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 17:47:23 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_strlen

ft_strlen:
	xor al, al
	mov rcx, -1
	repne scasb
	not rcx
	lea rax, [rcx - 1]
	ret
