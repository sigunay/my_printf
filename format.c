/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   format.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sigunay <sigunay@student.42kocaeli.com.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/21 12:07:50 by sigunay           #+#    #+#             */
/*   Updated: 2023/12/28 16:24:45 by sigunay          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

int	ft_putchar(char c)
{
	return (write(1, &c, 1));
}

int	ft_putstr(char *str)
{
	int	i;

	i = -1;
	if (!str)
		return (write(1, "(null)", 6));
	while (str[++i])
	{
		if (ft_putchar(str[i]) < 0)
			return (-1);
	}
	return (i);
}

int	ft_putnbr(int nbr)
{
	int	print_count;
	int	tmp;

	print_count = 0;
	tmp = 0;
	if (nbr == -2147483648)
		return (write(1, "-2147483648", 11));
	if (nbr < 0)
	{
		if (ft_putchar('-') < 0)
			return (-1);
		nbr *= -1;
		tmp++;
	}
	if (nbr > 9)
	{
		print_count += tmp;
		tmp = ft_putnbr(nbr / 10);
		if (tmp < 0)
			return (-1);
	}
	if (ft_putchar(nbr % 10 + 48) < 0)
		return (-1);
	print_count += tmp + 1;
	return (print_count);
}

int	ft_putnbr_unsigned(unsigned int nbr)
{
	int	print_count;
	int	tmp;

	tmp = 0;
	print_count = 0;
	if (nbr > 9)
	{
		tmp = ft_putnbr_unsigned(nbr / 10);
		if (tmp < 0)
			return (-1);
		print_count += tmp;
	}
	if (ft_putchar(nbr % 10 + 48) < 0)
		return (-1);
	return (print_count + 1);
}
