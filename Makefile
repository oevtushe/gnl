NAME=gnl
DEPS=get_next_line.h
SRCS=get_next_line.c main.c
OBJS=$(SRCS:.c=.o)
KEYS=-Wall -Werror -Wextra
LIBS=libft.a
LIB_DIR=libft/

all: $(LIBS) $(NAME) 

$(NAME): $(OBJS)
	gcc $(KEYS) -o $(NAME) $(OBJS) -L./$(LIB_DIR) -lft -I./libft -I./

$(LIBS):
	@$(MAKE) -C $(LIB_DIR)

%.o: %.c $(DEPS)
	gcc $(KEYS) -c $(SRCS) -I./libft -I./

clean:
	/bin/rm -f $(OBJS)
	@$(MAKE) -C $(LIB_DIR) clean

fclean: clean
	/bin/rm -f $(NAME)
	@$(MAKE) -C $(LIB_DIR) fclean

re: fclean
	make
	@$(MAKE) -C $(LIB_DIR) re

