/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sigunay <sigunay@student.42kocaeli.com.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/21 11:37:11 by sigunay           #+#    #+#             */
/*   Updated: 2024/01/04 16:21:02 by sigunay          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	formats(char format, va_list ag)
{
	if (format == 'c')
		return (ft_putchar(va_arg(ag, int)));
	if (format == 's')
		return (ft_putstr(va_arg(ag, char *)));
	if (format == 'p')
		return (ft_ptr(va_arg(ag, unsigned long long), 1));
	if (format == 'd' || format == 'i')
		return (ft_putnbr(va_arg(ag, int)));
	if (format == 'u')
		return (ft_putnbr_unsigned(va_arg(ag, unsigned int)));
	if (format == 'x')
		return (ft_puthex(va_arg(ag, unsigned int), 'x'));
	if (format == 'X')
		return (ft_puthex(va_arg(ag, unsigned int), 'X'));
	if (format == '%')
		return (ft_putchar('%'));
	return (0);
}

int	format_check(const char *format, va_list ag, int print_count)
{
	int	i;
	int	tmp;

	i = -1;
	while (format[++i])
	{
		if (format[i] == '%')
		{
			i++;
			tmp = formats(format[i], ag);
			if (tmp < 0)
				return (-1);
			print_count += tmp;
		}
		else
		{
			tmp = ft_putchar(format[i]);
			if (tmp < 0)
				return (-1);
			print_count += tmp;
		}
	}
	return (print_count);
}

int	ft_printf(const char *format, ...)
{
	va_list	ag;
	int		print_count;

	va_start(ag, format);
	print_count = 0;
	print_count = format_check(format, ag, print_count);
	if (print_count < 0)
		return (-1);
	va_end(ag);
	return (print_count);
}
