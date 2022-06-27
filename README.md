# PACORE

#### System dependencies
- Ruby 3.1.2
- Rails 7.0.3
- PostgreSQL 14
- NodeJS 16.15.1
- Yarn

#### Development setup
```
cp .env.example .env

docker build --no-cache -t patrick204nqh/pacore-backend --build-arg RAILS_PATH=/var/www/backend .
docker-compose up -d
```
