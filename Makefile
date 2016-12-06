build:
	docker-compose -p humhub build

ps:
	docker-compose -p humhub ps

start:
	docker-compose -p humhub up -d

stop:
	docker-compose -p humhub stop

restart:
	stop start

bash:
	docker exec -it humhub_php_1 bash

remove_all_containers:
	docker rm -v $$(docker ps -a | grep humhub | cut -d " " -f 1)

init_dev:
	docker exec humhub_php_1 bash -c "cd /var/www/html/; ./init --env=Development --overwrite=y"

init_prod:
	docker exec humhub_php_1 bash -c "cd /var/www/html/; ./init --env=Production --overwrite=y"

composer_install:
	docker exec -t humhub_php_1 bash -c "cd /var/www/html/; composer install --no-interaction --prefer-dist;"

composer_update:
	docker exec -t humhub_php_1 bash -c "cd /var/www/html/; composer update --no-interaction --prefer-dist;"

# пропишет права доступа для общедоступных директорий
dirs:
	chmod -R a+rw assets uploads protected/runtime protected/runtime/logs protected/modules protected/config

# создает структуру БД и наполняет ее тестовыми данными
db_create:
	docker exec -t humhub_php_1 bash -c "mysql -h mysql -u root -p123 -e \"CREATE DATABASE IF NOT EXISTS humhub CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'\""
	docker exec -t humhub_php_1 bash -c "cd /var/www/html/protected/; php yii db/create;"