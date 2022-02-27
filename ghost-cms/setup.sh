#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "$0 <domain>"
    exit 1
fi

sed -e "s/<domain>/$1/g" docker-compose.yml.in >docker-compose.yml

echo "URL: https://$1"
