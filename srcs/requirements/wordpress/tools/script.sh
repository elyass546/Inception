#!/bin/bash

# create directory to use in nginx container later and also to setup the wordpress conf
mkdir /var/www/
mkdir /var/www/html

cd /var/www/html


rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar 

mv wp-cli.phar /usr/local/bin/wp


wp core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

mv /wp-config.php /var/www/html/wp-config.php

sed -i -r "s/db1/$db_name/1"   wp-config.php
sed -i -r "s/user/$db_user/1"  wp-config.php
sed -i -r "s/pwd/$db_pwd/1"    wp-config.php

wp core install --url=$wp_url/ --title=$wp_title --admin_user=$wp_admin --admin_password=$wp_admin_pwd --admin_email=$wp_admin_email --skip-email --allow-root

wp user create $wp_user $wp_user_email --role=author --user_pass=$wp_user_pwd --allow-root

wp user create $wp_test $wp_test_email --role=author --user_pass=$wp_test --allow-root

wp plugin install redis-cache --activate --allow-root

wp plugin update --all --allow-root

wp theme install twentytwentytwo --activate --allow-root

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

wp redis enable --allow-root

mkdir /run/php

/usr/sbin/php-fpm7.3 -F
