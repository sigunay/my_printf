/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printptr.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sigunay <sigunay@student.42kocaeli.com.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/26 15:19:08 by sigunay           #+#    #+#             */
/*   Updated: 2023/12/28 16:23:21 by sigunay          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <unistd.h>

int	ft_ptr(unsigned long int num, int stp)
{
	int	print_count;

	print_count = 0;
	if (stp)
	{
		if (write(1, "0x", 2) < 0)
			return (-1);
		print_count += 2;
	}
	if (num >= 16)
		print_count += ft_ptr(num / 16, 0);
	ft_putchar("0123456789abcdef"[num % 16]);
	return (print_count + 1);
}

int	ft_puthex(unsigned int num, char c)
{
	int	print_count;
	int	tmp;

	print_count = 0;
	if (num >= 16)
	{
		tmp = ft_puthex(num / 16, c);
		if (tmp < 0)
			return (-1);
		print_count += tmp;
	}
	if (c == 'x')
	{
		if (ft_putchar("0123456789abcdef" [num % 16]) < 0)
			return (-1);
	}
	if (c == 'X')
	{
		if (ft_putchar("0123456789ABCDEF" [num % 16]) < 0)
			return (-1);
	}
	return (print_count + 1);
}
