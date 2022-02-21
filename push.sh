#!/bin/bash

echo "Pushing $BRANCH..."

cat ./pass | docker login https://dockreg.knst.su/ --username ms_push --password-stdin

docker build -t ms_nginx.$BRANCH .
docker tag ms_nginx.$BRANCH dockreg.knst.su/ms_nginx.$BRANCH
docker push dockreg.knst.su/ms_nginx.$BRANCH