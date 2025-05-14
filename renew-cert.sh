#!/bin/bash

# Execute from the directory containing this script
cd "$(dirname "$0")"

docker-compose run --rm certbot renew
docker-compose exec nginx nginx -s reload
