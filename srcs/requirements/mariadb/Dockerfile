FROM debian:bookworm

RUN	apt update && apt install mariadb-server -y 
 
WORKDIR	/mariadb
COPY	./tools/mariadb_script.sh .

ENTRYPOINT	["bash", "mariadb_script.sh"]
