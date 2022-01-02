# m1 cpu용 
# FROM --platform=linux/x86_64 mysql:5.7

FROM mariadb:10.2.10

ADD ./db/conf.d /etc/mysql/conf.d
COPY ./db/initdb.d /docker-entrypoint-initdb.d
COPY ./back/.env.example .env.example
