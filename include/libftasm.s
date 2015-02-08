;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    libftasm.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/03 18:49:01 by abouvier          #+#    #+#              ;
;    Updated: 2015/02/03 18:50:27 by abouvier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%ifndef LIBFTASM_S
%define LIBFTASM_S

%macro _syscall 1
	mov rax, 2000000h + %1
	syscall
%endmacro

%define read  _syscall(3)
%define write _syscall(4)

%endif
