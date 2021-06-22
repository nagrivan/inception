# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 15:45:59 by nagrivan          #+#    #+#              #
#    Updated: 2021/06/22 14:58:09 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
	apt-get -y install nginx openssl unzip wget

RUN apt-get -y install vim

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=/O=/OU=School21/CN=nagrivan" \
	-newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt

COPY . .

RUN cp conf/default etc/nginx/sites-available/default

EXPOSE 443

CMD bash tools/nginx_start.sh