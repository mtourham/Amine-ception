FROM debian:buster

RUN apt upgrade && apt update && apt install -y wget php7.3 php7.3-fpm php7.3-mysql mariadb-client
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN mkdir -p /run/php && mkdir -p /var/www/html/wordpress
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY tools/wp_conf.sh .
EXPOSE 9000
RUN chmod +x wp_conf.sh
ENTRYPOINT ["sh","wp_conf.sh"]