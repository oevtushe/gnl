/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oevtushe <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/24 13:14:27 by oevtushe          #+#    #+#             */
/*   Updated: 2018/03/12 14:03:05 by oevtushe         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _GET_NEXT_LINE_H
# define _GET_NEXT_LINE_H

# include "libft.h"
# define BUFF_SIZE 10

typedef struct	s_stream
{
	int		fd;
	char	*buff;
}				t_stream;

int				get_next_line(const int fd, char **line);
#endif
