#!/bin/bash

file="/app/wordpress/wp-config.php"
sed -i "s/listen = \/run\/php\/php7.4-fpm.sock/listen = 0.0.0.0:9000/" /etc/php/7.4/fpm/pool.d/www.conf

if [ ! -f "$file" ];
then
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
			&& chmod +x wp-cli.phar \
			&& mv wp-cli.phar /usr/local/bin/wp
	wp core download --path=wordpress --allow-root
	wp config create --path=wordpress --dbname=$DATABASE_NAME --dbuser=$DATABASE_USER --dbpass=$DATABASE_PASS  --dbhost=mariadb --skip-check --allow-root
	while ! wp db check --path=wordpress --allow-root
       	do
		sleep 1
	done 
	wp core install --path=wordpress --url=$ADMIN_URL --title=$ADMIN_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root
	wp user create $USER_NAME $USER_EMAIL --path=wordpress --role=$USER_ROLE --user_pass=$USER_PASS --allow-root
else
	echo "WordPress Files Exist!."
fi

exec php-fpm8.2 -F
