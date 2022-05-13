#!/bin/bash

## '--rm' quando esse container morrer, ele é removido
docker run --rm --network --name consumer consumer

docker run --rm --name producer producer