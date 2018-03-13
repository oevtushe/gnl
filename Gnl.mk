# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Gnl.mk                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oevtushe <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/07 13:50:55 by oevtushe          #+#    #+#              #
#    Updated: 2018/03/13 14:44:49 by oevtushe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FT_DIR			?= ../libft

GNL_DIR			?= .
RPTH			?= $(GNL_DIR)

include $(FT_DIR)/Libft.mk

GNL_DEPF		:= get_next_line.h
GNL_SRCF 		:= get_next_line.c

GNL_DEPS		:= $(addprefix $(GNL_DIR)/,$(GNL_DEPF))
GNL_SRCS		:= $(addprefix $(GNL_DIR)/,$(GNL_SRCF))
GNL_OBJS_DIR	:= $(GNL_DIR)/objs
GNL_OBJS 		:= $(GNL_SRCS:$(GNL_DIR)/%.c=$(GNL_OBJS_DIR)/%.o)
