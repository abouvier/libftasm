#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/05 11:30:34 by abouvier          #+#    #+#              #
#    Updated: 2015/02/01 00:43:44 by abouvier         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libfts.a
AS = nasm
ASFLAGS = -MD $(@:.o=.d) -Isrc/
ifeq ($(shell uname),Darwin)
	ASFLAGS += --prefix _ -D__APPLE__
	TARGET_MACH = -fmacho64
else
	ASFLAGS += -D__linux__
	TARGET_MACH = -felf64
endif
VPATH = src
SRCS = \
	ft_atoi.s \
	ft_atol.s \
	ft_bzero.s \
	ft_cat.s \
	ft_isalnum.s \
	ft_isalpha.s \
	ft_isascii.s \
	ft_isdigit.s \
	ft_islower.s \
	ft_isprint.s \
	ft_isspace.s \
	ft_isupper.s \
	ft_memcpy.s \
	ft_memset.s \
	ft_puts.s \
	ft_strcat.s \
	ft_strchr.s \
	ft_strcmp.s \
	ft_strcpy.s \
	ft_strdup.s \
	ft_strjoin.s \
	ft_strlen.s \
	ft_tolower.s \
	ft_toupper.s
OBJS := $(SRCS:%.s=$(VPATH)/%.o)
DEPS := $(OBJS:.o=.d)

all: $(NAME)

$(NAME): $(NAME)($(OBJS))
	ranlib $@

$(OBJS): Makefile

clean:
	$(RM) $(OBJS) $(DEPS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean

-include $(DEPS)
