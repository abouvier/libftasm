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
ifeq ($(shell uname),Darwin)
ASFLAGS = -fmacho64 -D__APPLE__ --prefix _
else
ASFLAGS = -felf64
endif
CPPFLAGS = -MD $(@:.o=.d) -Isrc/
builddir = build
srcdir = src
SRCS = ft_bzero.s ft_strcat.s ft_isalpha.s ft_isupper.s ft_islower.s \
ft_isdigit.s ft_isalnum.s ft_isascii.s ft_isprint.s ft_toupper.s ft_tolower.s \
ft_puts.s ft_strlen.s ft_memset.s ft_memcpy.s ft_strdup.s ft_cat.s ft_strchr.s \
ft_strcmp.s ft_isspace.s ft_atoi.s ft_atol.s ft_strjoin.s
OBJS := $(patsubst %.s,$(builddir)/%.o,$(SRCS))
DEPS := $(OBJS:.o=.d)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $?
	ranlib $@

$(OBJS): Makefile | $(builddir)

$(builddir):
	mkdir -p $@

$(builddir)/%.o: $(srcdir)/%.s
	$(AS) $(ASFLAGS) $(CPPFLAGS) $(OUTPUT_OPTION) $<

clean:
	$(RM) -R $(builddir)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean

-include $(DEPS)
