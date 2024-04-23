FROM    debian:buster

ARG     DB_DATABASE DB_USER DB_PASSWORD

RUN     apt-get update && apt install -y mariadb-server

COPY    conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY    tools/ .

RUN     chmod +x conf.sh && ./conf.sh

RUN     service mysql start && mysql < khdma

EXPOSE  3306

ENTRYPOINT    ["mysqld"]