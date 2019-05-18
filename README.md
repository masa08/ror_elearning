# Rails E-learning Site

## Build
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