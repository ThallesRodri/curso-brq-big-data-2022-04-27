#!/bin/bash

## '--rm' quando esse container morrer, ele é removido
docker run --rm -d --network singlenode_default --name consumer consumer 

docker run --rm -d --network singlenode_default   --name producer producer 