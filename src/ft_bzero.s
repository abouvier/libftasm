;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/01/28 18:05:04 by abouvier          #+#    #+#              ;
;    Updated: 2015/01/31 18:01:38 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global ft_bzero

extern ft_memset

ft_bzero:
	mov rdx, rsi
	xor sil, sil
	call ft_memset
	ret
