HumHub - Social Network Kit
===========================

[![Build Status](https://travis-ci.org/humhub/humhub.svg?branch=master)](https://travis-ci.org/humhub/humhub)
[![Yii2](https://img.shields.io/badge/Powered_by-Yii_Framework-green.svg?style=flat)](http://www.yiiframework.com/)

HumHub is a feature rich and highly flexible OpenSource Social Network Kit written in PHP.

It's perfect for individual:
- Social Intranets
- Enterprise Social Networks
- Private Social Networks

More information:
- [Homepage & Demo](http://www.humhub.org)
- [Documentation & Class Reference](http://www.humhub.org/docs)
- [Licence](http://www.humhub.org/licences)

Запуск приложения из контейнера:
```bash
# стягиваем репозитарий
git clone git@github.com:sima-land/humhub.git humhub

cd humhub

make build
make start

# стягиваем зависмости
make composer_install

# проставляем права для доступа к общим директориям
make dirs

# создаем структуру БД с демонстрационными данными
make db_create
```

В /etc/hosts прописываем "127.0.0.1 www.humhub.local humhub.local".
В браузере открываем страницу humhub.local:8010.