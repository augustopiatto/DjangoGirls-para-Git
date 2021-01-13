#!/bin/bash

docker build -t dockeraugustopiatto .
docker stop dockeraugustopiatto
docker run -d --rm -p 8000:8000 \
  --env-file $HOME/augustopiatto.env \
  --name dockeraugustopiatto \
  -v $(pwd)/dkdata:/dkdata \
  dockeraugustopiatto start.sh