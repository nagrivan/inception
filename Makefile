# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 14:39:16 by nagrivan          #+#    #+#              #
#    Updated: 2021/05/15 14:58:45 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

SRCS = ./srcs/Dockerfile

FLAGSTR = -it

PORT = 80:80

BUILD = docker build

START = docker run -p