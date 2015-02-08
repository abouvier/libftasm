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
ASFLAGS = -f macho64 --prefix _ -p include/libftasm.s
SRCDIR = src
SRCS = ft_bzero.s ft_strcat.s ft_isalpha.s ft_isupper.s ft_islower.s \
	ft_isdigit.s ft_isalnum.s ft_isascii.s ft_isprint.s ft_toupper.s \
	ft_tolower.s ft_puts.s ft_strlen.s ft_memset.s ft_memcpy.s ft_strdup.s \
	ft_cat.s ft_strchr.s ft_strcmp.s ft_isspace.s ft_atoi.s ft_atol.s \
	ft_strjoin.s
INCDIR = include
INCS = libftasm.s
INCS := $(addprefix $(INCDIR)/,$(INCS))
OBJDIR = obj
OBJS := $(patsubst %.s,$(OBJDIR)/%.o,$(SRCS))

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $?
	ranlib $@

$(OBJS): Makefile | $(OBJDIR)

$(OBJDIR):
	mkdir -p $@

$(OBJDIR)/%.o: $(SRCDIR)/%.s $(INCS)
	$(AS) $(ASFLAGS) $(OUTPUT_OPTION) $<

clean:
	$(RM) -R $(OBJDIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean
