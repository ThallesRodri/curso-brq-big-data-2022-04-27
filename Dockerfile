# Partindo da imagem ubuntu
FROM ubuntu:latest

# run serve para rodar umm script na criação da imagem docker
# update para atualizar todas a dependencias que use essa imagem
# "-y" para aceitar tudo automaticamente
#"/" é uma quebra de linha, pro comando não ficar tudo em linha só
RUN apt-get update && apt-get install python3-pip -y \
    && apt-get install nano -y

# Criar uma pasta no CONTAINER
RUN mkdir /nova-pasta

# Ao iniciar o container, o mesmo apresenta o console
ENTRYPOINT ["/bin/bash"]  

# Construir a image (digitar no terminal): docker build -t minha-imagem .
# Rodar a imagem (no terminal): docker run --name mi(pode ser qualquer nome) -it minha-imagem
#   docker run --name mi -it minha-imagem

##################################################################################

# Criar volume
    # docker run --name mi -it -v ${PWD}/volume:/meu-volume minha-imagem
    