# Infra Challenge | DevOps-Test

## Introdução

Este projeto foi desenvolvido para automatizar o processo de criação e deployyment de um aplicação estatica que utiliza **HTML**, para cria uma pagina web, **Nginx** como servidor web para disponibilizar o conteudo, **Docker** para container da aplicação. **Terraform** para criar a infraestrutura em nuvem, além disso o proceso de **CI/CD** foi criado utilizando **GitHub Actions**, o que permite integração e entregas continuas.

### Cenário
1. Configurar grupo de segurança na AWS
2. Configuração da redes para o Servidor
3. Configurar um servidor AWS (recomenda-se o freetier) executando uma versão Ubuntu LTS.
4. Instalar e configurar qualquer software que você recomendaria em uma configuração de servidor padrão sob as perspectivas de segurança, desempenho, backup e monitorização.
5. Instalar e configurar o nginx para servir uma página web HTML estática.

### Infraestrtura na Cloud AWS

![AWS](./app/assets/image/aws-diagram.png)

### Pipeline do gitHub Actions para Cloud

![Pipeline](./app/assets/image/pipeline.png)

## Requisitos 

Para executar este projeto localmente, você precisa instalar na sua máquina as seguinte ferramentas:

**DOCKER**:  para o [WINDOWS](https://docs.docker.com/desktop/setup/install/windows-install) para disdribuições linux [LINUX/UBUNTU](https://docs.docker.com/engine/install/ubuntu) ou para [MAC](https://docs.docker.com/desktop/setup/install/mac-install)

**DOCKER COMPOSE**: para Windos e Mac, [Docker Compose](https://docs.docker.com/desktop/setup/install/mac-install) já está incluso no [Docker Desktop] (https://www.docker.com/products/docker-desktop).
Para [Linux](https://www.docker.com/products/docker-desktop), siga documentação oficial.

**DOCKER HUB**: se ainda não possui uma conta no Docker Hub, acesse [Sign Up Docker APP](https://app.docker.com/signup/)

**AWS CLI**: se ainda não possui baixe também o [AWS CLI](https://docs.aws.amazon.com/pt_br/cli/v1/userguide/cli-chap-install.html)

**Terraform**: para instalar consulte o [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

**Git**: para instalar o git no seu dispositivo consute o link [Git Install](https://github.com/git-guides/install-git)
**Github Actions**: para saber mais sore GitHub Action acess [GitHub Actions Start](https://docs.github.com/en/actions/writing-workflows/quickstart)

## Como testar este projeto em sem computador

1 - Clonando este repositorio para sua maquina do [GITHUB](https://github.com/adilson-tavares/devops-test), depois siga para passos de build e execução.

2 - Fazendo o download da imagem no link abaixo:
[IMAGE NGINX](https://hub.docker.com/repository/docker/tavarescruz/nginx/tags)

- Ou faça o com o comando **docker pull** para baixar a imagem: 

```bash
docker pull tavarescruz/nginx
```
- Para rodar o container faça com o **docker run**:

```bash
docker run -it --rm -d -p 8081:80 --name nginx-web  tavarescruz/nginx

```

- **Acessando a Aplicação**:
   Acesse a url: [localhost:8181](http://localhost:8081)

### Build e Execução do Projeto
 
Tendo feito a instalação do requisitos nos tópico anteriores.

Agora você pode continuar.

#### Se fez o clone usando git: 

Vá até o seu repositorio onde fez clone, acesse o diretorio do projeto e siga as instruções:

**Criando a imagem**

- Utilize o comando abaixo, pra criar uma imagem docker:
```bash
  docker build -t <nome-imagem> -f Dockerfile . 

```
**Rode container com imagem que você gerou**

- Execute o container com a imagem criada anteriormente:

```bash
  docker run -it --rm -d -p 8081:80 --name <nome-do-container>  <nome-da-imagem>

```

- **Acessando a Aplicação**:
   Acesse a url: [localhost:8181](http://localhost:8181)

- **Resultado esperado**:
![DevOps](./app/assets/image/visulizacao-localhost.png)


#### Utilizando Docker Compose

- Acesse o diretorio do projeto, e realize o seguintes passo:

**Faça o build  e crie o container**:

```bash
  docker compose up --build 

```

**Acesse a url**: [localhost:8181](http://localhost:8181)

**Para remover faça**:
```bash
  docker compose down -v 

```

## Configurando projeto para Deploy CI/CD - GitHub Actions

1 - Faça um fork do projeto [DevOps Test](https://github.com/adilson-tavares/devops-test/fork)

#### Seguintes secrets precisam ser criadas

- Vá par ao github, acesse a guia configurações, crie sua secret, veja o passo a passo em [Secret Gihub Action](https://docs.github.com/pt/actions/security-for-github-actions/security-guides/using-secrets-in-github-actions)

- Veja como utilizar secrets em [Usando Secrets Workflows](https://docs.github.com/pt/actions/security-for-github-actions/security-guides/using-secrets-in-github-actions#using-secrets-in-a-workflow)

### Para o DockerHub

**DOCKERHUB_USERNAME** - Adicione o valor do seu username do DockerHub
**DOCKERHUB_TOKEN** - Adicione o valor do token/password do seu DockerHub

### Para a AWS WEb Services

- Criar seu usuário IAM de conta AWS com acesso programatico, veja aqui [Criar IAM user AWS](https://docs.aws.amazon.com/pt_br/keyspaces/latest/devguide/access.credentials.IAM.html)

- Criar as credenciais par ausuario, [Criar chave de acesso IAM](https://docs.aws.amazon.com/pt_br/keyspaces/latest/devguide/create.keypair.html), neste passo lembre-se de baixar e salvar suas credenciais em **local seguro**!

- Fazer o setup da credenciais com aws configure, veja como configura o [AWS CLI](https://docs.aws.amazon.com/pt_br/cli/v1/userguide/cli-configure-files.html) 

Voce deve ter algo como:
```bash

[default]
aws_access_key_id=ASIAIOSFODNN7EXAMPLE
aws_secret_access_key=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
aws_session_token = IQoJb3JpZ2luX2IQoJb3JpZ2luX2IQoJb3JpZ2luX2IQoJb3JpZ2luX2IQoJb3JpZVERYLONGSTRINGEXAMPLE

```
E, então crie as secrets, github actions: 

**AWS_ACCESS_KEY_ID** - Adicione o valor do aws_access_key_id da credencial do seu usuário da AWS
**AWS_SECRET_ACCESS_KEY** - Adicione o valor do aws_secret_access_key da credencial do seu usuário da AWS

**Observaçôes importantes**:  

- Altere também para seu repositorio do dockerhub, para gerar as tags corretamente, faça como aqui [repossitorio](https://github.com/adilson-tavares/devops-test/blob/309ff40354e539be698c1beb656ca2d8ad3dc4fd/.github/workflows/main.yml#L26)

- Você pode controlar a execução do Terraform no pipeline, por meio da seguinte variável **TERRAFORM_RUN**, se **true** executa, caso contrário ignora.

- Você também pode desejar ignorar o step de instalacão do docker, por meio da seguinte variável **INSTALL_DOCKER**, se **true** executa, tendo realizado ao menos uma vez este, basta deixar **false** que ele ignora o step..


>  This is a challenge by [Coodesh](https://coodesh.com/)