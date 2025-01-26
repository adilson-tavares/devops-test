# Infra Challenge 20240202

## Introdução

## Requisitos 

Para executar este projeto localmente, você precisa instalar na sua máquina as seguinte ferramentas:

**DOCKER**:  para o [WINDOWS](https://docs.docker.com/desktop/setup/install/windows-install) para disdribuições linux [LINUX/UBUNTU](https://docs.docker.com/engine/install/ubuntu) ou para [MAC](https://docs.docker.com/desktop/setup/install/mac-install)

**DOCKER COMPOSE**: para Windos e Mac, [Docker Compose](https://docs.docker.com/desktop/setup/install/mac-install) já está incluso no [Docker Desktop] (https://www.docker.com/products/docker-desktop).
Para [Linux](https://www.docker.com/products/docker-desktop), siga documentação oficial.

## Como testar este projeto

1 - Clonando este repositorio para sua maquina do [GITHUB](https://github.com/adilson-tavares/devops-test), depois siga para passos de build e execução.

2 - Fazendo o download da imagem no link abaixo:
[IMAGE NGINX](https://hub.docker.com/repository/docker/tavarescruz/nginx/tags)

- Comando para baixar a imagem: 
```bash
docker pull tavarescruz/nginx
```

## Build e Execução do Projeto
 
Tendo feito a instalação do requisitos nos tópico anteriores.

Agora você pode continuar.

### Se fez o clone usando git: 

Vá até o seu repositorio onde fez clone, acesse o diretorio do projeto e siga as instruções:

**Criando a imagem**

- Utilize o comando abaixo, pra criar uma iamgem docker:
```bash
  docker build -t <nome-imagem> -f Dockerfile . 

```

- Execute o container com a imagem criada anteriormente:

```bash
  docker run -it --rm -d -p 8081:80 --name <nome-do-container>  <nome-da-imagem>

```

### Se você baixou a imagem, faça: 

- Execute o Container com comando **docker run**:
    ```bash
    docker run -it --rm -d -p 8081:80 --name nginx-web  tavarescruz/nginx

    ```
- **Acessando a Aplicação**:
   Acesse a url: [localhost:8181](http://localhost:8181)

- **Resultado esperado**:
![DevOps](app/assests/image/visulizacao-localhost.png)


## Utilizando Docker Compose

- Acesse o diretorio do projeto, e realize o seguintes passo:

**Faça o build  e crie o container**:

```bash
  docker compose up --build 

```

**Para remover faça**:
```bash
  docker compose down -v 

```

**Acesse a url**: [localhost:8181](http://localhost:8181)