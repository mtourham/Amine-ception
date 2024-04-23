cd /var/www/html/wordpress

wp core download --allow-root

wp config create --allow-root --dbname=$DB_DATABASE --dbuser=$DB_USER \
    --dbpass=$DB_PASSWORD --dbhost=$DB_HOST

wp core install --allow-root --url=$WP_URL --title=inception --admin_user=$WP_USER --admin_password=$WP_PW --admin_email=$WP_MAIL

/usr/sbin/php-fpm7.3 -F -R