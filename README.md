![Archived](https://img.shields.io/badge/Current_Status-archived-blue?style=flat)

# Coturn server as Docker container

## Build

``` sh
docker build -t linagora/coturn .
```

## Configure

Use a `.env` file with the help of the `--env-file` run option to define several variables:

```
# The public external IP the coturn server is exposed on
COTURN_EXTERNAL_IP=83.34.54.93
COTURN_REALM=coturn.open-paas.org
COTURN_SERVER_NAME=coturn.open-paas.org
COTURN_LISTENING_PORT=3478
```

## Run

```sh
docker run --env-file .env.local --name coturn -p 3478:3478 -d linagora/coturn
```

## TODO:

- Certificates
- Realm

