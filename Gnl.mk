# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Gnl.mk                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oevtushe <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/07 13:50:55 by oevtushe          #+#    #+#              #
#    Updated: 2018/03/12 10:10:49 by oevtushe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FT_DIR			?= libft

GNL_DIR			?= .
GNL_DEPF		:= get_next_line.h
GNL_SRCF 		:= get_next_line.c

GNL_DEPS		:= $(addprefix $(GNL_DIR)/,$(GNL_DEPF))
GNL_SRCS		:= $(addprefix $(GNL_DIR)/,$(GNL_SRCF))
GNL_OBJS_DIR	:= $(GNL_DIR)/objs
GNL_OBJS 		:= $(GNL_SRCS:$(GNL_DIR)/%.c=$(GNL_OBJS_DIR)/%.o)

# Var for relative path. Simply run make as
# make FPTH=<relative path> to correct output of directories.
RPTH	?= $(GNL_DIR)
