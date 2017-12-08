#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "get_next_line.h"

int		main(int argc, char **argv)
{
	int		fd;
	char	*line;

	if (argc != 2)
	{
		ft_putendl_fd("using: ./gnl file.txt", 2);
		return (1);
	}
	line = NULL;
	fd = open(argv[1], O_RDONLY);
	get_next_line(fd, &line);
	ft_putendl(line);
	close(fd);
	return (0);
}
