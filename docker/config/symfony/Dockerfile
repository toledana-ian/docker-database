FROM alpine:3.15

WORKDIR /var/www/application/

RUN apk update
RUN apk upgrade

RUN apk add build-base
RUN apk add bash
RUN apk add curl
RUN apk add mariadb-client

RUN apk add libpq-dev
RUN apk add libxml2-dev
RUN apk add icu-dev

RUN apk add php7
RUN apk add php7-fpm
RUN apk add php7-opcache
RUN apk add php7-calendar
RUN apk add php7-intl
RUN apk add php7-mysqli
RUN apk add php7-pdo
RUN apk add php7-pdo_mysql
RUN apk add php7-session
RUN apk add php7-json
RUN apk add php7-phar
RUN apk add php7-mbstring
RUN apk add php7-ctype
RUN apk add php7-iconv
RUN apk add php7-tokenizer
RUN apk add php7-dom
RUN apk add php7-xml
RUN apk add php7-xmlwriter
RUN apk add php7-simplexml

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN alias composer='php /usr/bin/composer'

RUN composer self-update

RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony/bin/symfony /usr/local/bin/symfony

CMD ["bash", "/init.sh"]

EXPOSE 80