# Rails E-learning Site
In this web app, you can learn a language answering some questions.
<img width="1440" alt="スクリーンショット 2019-06-10 10 54 56" src="https://user-images.githubusercontent.com/19849423/59167874-56c62380-8b6e-11e9-8859-ba54ebb58a45.png">

## Technology
HTML/CSS/JavaScript/Ruby/Docker/Heloku/Mysql

## URL
https://masa-e-learning.herokuapp.com

## Build in your local
1. Execute below commands
```
$ git clone https://github.com/masa08/ror_elearning.git
$ cd ror_eleraning
$ docker-compose build
$ docker-compose up -d
$ docker exec -it ror-elearning_web_1 bash
$ rails db:create
$ rails db:migrate
$ rails db:seed
```
2. Access to localhost:3000

## Why I made this app
I made this app at 2018/6 as traning project before joining a job in Phillipines.