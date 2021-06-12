# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 15:45:59 by nagrivan          #+#    #+#              #
#    Updated: 2021/06/12 14:28:14 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y

RUN apt-get -y install nginx openssl unzip wget vim

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=/O=/OU=School21/CN=nagrivan" \
	-newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt

COPY . .

RUN cp conf/nginx.conf etc/nginx/sites-available/nginx.conf

EXPOSE 443