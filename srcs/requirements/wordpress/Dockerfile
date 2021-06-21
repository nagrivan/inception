# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nagrivan <nagrivan@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/02 16:06:20 by nagrivan          #+#    #+#              #
#    Updated: 2021/06/21 17:08:09 by nagrivan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
	apt-get -y install openssl unzip wget && \
	apt-get -y install php-fpm php-mysql php-gd php-mbstring redis-server php-xml php-redis php-pspell php-zip 

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xvzf latest.tar.gz && rm -rf latest.tar.gz \
	mkdir var/www/

COPY ./conf/ var/www/

#RUN cp /conf/wp-config.php /var/www/  && mv wordpress/ var/www/wordpress/

EXPOSE 9000