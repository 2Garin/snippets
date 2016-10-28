#!/usr/bin/env bash

path="REPO_PATH"

cd "$path" && \

git pull && \

#composer install --no-dev && \
composer install && \

#./yii migrate/up --interactive=0  && \
./yii migrate/up && \

./yii rbac/init
