build-composer:
	docker build -t localhost:5000/composer-base:latest -f php/composer/Dockerfile ./php/composer
	docker push localhost:5000/composer-base:latest

build-php:
	docker build -t localhost:5000/php-base:latest -f php/fpm/Dockerfile ./php/fpm
	docker push localhost:5000/php-base:latest

build-nginx:
	docker build -t localhost:5000/nginx-base:latest -f nginx/Dockerfile ./nginx
	docker push localhost:5000/nginx-base:latest

