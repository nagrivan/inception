# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 14:39:16 by nagrivan          #+#    #+#              #
#    Updated: 2021/06/27 15:44:18 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER-COMP = srcs/docker-compose.yml

start:
	@docker-compose -f ${DOCKER-COMP} up -d

stop:
	@docker-compose -f ${DOCKER-COMP} down
	
re:
	@docker-compose -f ${DOCKER-COMP} up -d --build