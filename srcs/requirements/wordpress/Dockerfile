# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/02 16:06:20 by nagrivan          #+#    #+#              #
#    Updated: 2021/06/02 16:25:51 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
	apt-get -y install openssl unzip wget

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xvzf latest.tar.gz && rm -rf latest.tar.gz \
	&& mv wordpress/ var/www/html/

EXPOSE 9000

CMD 