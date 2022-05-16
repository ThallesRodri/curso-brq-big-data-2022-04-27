#!/bin/bash

## '--rm' quando esse container morrer(serparado), ele é removido.
## '-d' ele roda o comando e passa pro próximo comando, não fica travando o terminal
## o último nome é como se chama o container quando criamos o build
docker run --rm -d --network singlenode_default --name consumer consumer 

docker run --rm -d --network singlenode_default   --name producer producer 