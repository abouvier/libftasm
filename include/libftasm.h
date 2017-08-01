/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abouvier <abouvier@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/28 18:00:44 by abouvier          #+#    #+#             */
/*   Updated: 2015/02/04 02:01:25 by abouvier         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
# define LIBFTASM_H

# include <stddef.h>

/*
** Part 1
*/

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, const char *s2);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);

/*
** Part 2
*/

size_t	ft_strlen(const char *s);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char	*ft_strdup(const char *s1);

/*
** Part 3
*/

void	ft_cat(int fd);

/*
** Bonus
*/

int		ft_isupper(int c);
int		ft_islower(int c);
char	*ft_strchr(const char *s, int c);
int		ft_strcmp(const char *s1, const char *s2);
int		ft_isspace(int c);
int		ft_atoi(const char *str);
long	ft_atol(const char *str);
char	*ft_strjoin(const char *s1, const char *s2);
char	*ft_strcpy(char *dst, const char *src);

#endif
