# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 14:39:16 by nagrivan          #+#    #+#              #
#    Updated: 2021/06/26 19:05:35 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER-COMP = srcs/docker-compose.yml

start:
	@docker-compose -f ${DOCKER-COMP} up -d

down:
	@docker-compose -f ${DOCKER-COMP} down
	
re:
	@docker-compose -f ${DOCKER-COMP} up -d --build