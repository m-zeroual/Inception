FROM debian:bookworm

RUN	apt update && apt install nginx openssl -y

WORKDIR	/etc/nginx/ssl
RUN	openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/ssl/key.pem -out /etc/nginx/ssl/cert.crt -sha256 -days 365 -nodes -subj "/C=MA"

COPY	./conf/config.conf /etc/nginx/conf.d/

ENTRYPOINT	["nginx", "-g", "daemon off;"]
