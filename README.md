# lumen-api

## Install
Run `docker-compose up -d`  
Run `docker exec -it api bash`
Inside container run `cd /www/api && composer install && exit`
Access `http://localhost/`  
The database dump is located on the root path of this repo `dump.sql` (~~completely forgot about create migrations~~)