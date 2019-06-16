# Starter-Symfony-2019



### Configure Server
```bash
- Change .env/.test to local test
- Change .env to connect with your Database
```

### Installation
```bash
- git clone 
- composer install
- curl install
- PHP >= 7.1
```

### Run this project
```bash
- php bin/console server:run
```

### Create & update of the BDD
```bash
- php bin/console doctrine:database:create
- php bin/console d:s:u --dump-sql
- php bin/console d:s:u --force
```

### If you need add fixtures
```bash
- php bin/console doctrine:fixtures:load
```