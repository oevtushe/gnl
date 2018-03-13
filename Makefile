# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oevtushe <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/11 15:31:59 by oevtushe          #+#    #+#              #
#    Updated: 2018/03/13 14:44:48 by oevtushe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Run make like this:
# 	make <target> FT_DIR=<relative path to libft>

include Gnl.mk
include $(FT_DIR)/Pretty.mk

RM		:= rm -rf
CFLAGS	:= -Wall -Werror -Wextra
MFLAGS	:= --no-print-directory -C
CC		:= gcc

all: $(FT_OBJS) $(GNL_OBJS) 

obj: $(GNL_OBJS)

$(GNL_OBJS_DIR)/%.o: $(GNL_DIR)/%.c $(GNL_DEPS) $(FT_DEPS)
	@$(call COMPILE_P,$(@:%=$(RPTH)/%))
	@$(CC) $(CFLAGS) -o $@ -c $< -I$(FT_DEPS_DIR)

$(FT_OBJS_DIR)/%.o: $(FT_DIR)/%.c $(FT_DEPS)
	@$(call SUBMAKE_P,$(FT_DIR))
	@$(MAKE) obj RPTH=$(FT_DIR) $(MFLAGS) $(FT_DIR)

$(GNL_OBJS): |$(GNL_OBJS_DIR)

$(GNL_OBJS_DIR):
	@$(call DIR_CREATE_P,$(@:%=$(RPTH)/%))
	@mkdir $@

clean:
	@$(RM) $(GNL_OBJS_DIR)
	@$(MAKE) clean $(MFLAGS) $(FT_DIR)

fclean: clean
	@$(MAKE) fclean $(MFLAGS) $(FT_DIR)

re: fclean
	@$(MAKE)

.PHONY: all clean fclean re
