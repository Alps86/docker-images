FROM composer as vendor

WORKDIR /code

RUN chown www-data: /code

USER www-data

ONBUILD COPY --chown=www-data:www-data ./composer.json .
ONBUILD COPY --chown=www-data:www-data ./composer.lock .

ONBUILD RUN composer install
