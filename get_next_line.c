#include "get_next_line.h"

int		get_next_line(const int fd, char **line)
{
	int		rd;
	int		place;
	char	buff[BUFF_SIZE];


	rd = read(fd, buff, BUFF_SIZE);
	place = (char*)ft_memchr(buff, '\n', rd) - buff;
	ft_putnbr(place);
	ft_putchar('\n');
	ft_putnbr(rd);
	ft_putchar('\n');
	(*line) = ft_strnew(place);
	ft_memcpy(*line, buff, place);
	return (1);
}
