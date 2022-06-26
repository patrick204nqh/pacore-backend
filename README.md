# PACORE

#### Development setup

```
cp .env.example .env

docker build --no-cache -t patrick204nqh/pacore-backend --build-arg RAILS_PATH=/var/www/backend .
docker-compose up -d
```

- Precompile assets
```
bin/rake assets:clean && bin/rake assets:precompile
```
