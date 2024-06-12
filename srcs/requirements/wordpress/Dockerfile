FROM debian:bookworm

RUN	apt update && apt install mariadb-client sendmail php-fpm php-mysql wget -y

WORKDIR /app

COPY	./tools/wordpress_script.sh .

ENTRYPOINT ["bash", "wordpress_script.sh"]
