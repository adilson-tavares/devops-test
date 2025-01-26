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

## Introdução

Este é um teste para que possamos ver as suas habilidades como DevOps.

Nesse teste você deverá configurar um servidor, aplicar os principais recursos de segurança e trabalhar com Infra as Code

[SPOILER] As instruções de entrega e apresentação do challenge estão no final deste Readme (=

### Antes de começar
 
- Considere como deadline da avaliação a partir do início do teste. Caso tenha sido convidado a realizar o teste e não seja possível concluir dentro deste período, avise a pessoa que o convidou para receber instruções sobre o que fazer.
- Documentar todo o processo de investigação para o desenvolvimento da atividade (README.md no seu repositório); os resultados destas tarefas são tão importantes do que o seu processo de pensamento e decisões à medida que as completa, por isso tente documentar e apresentar os seus hipóteses e decisões na medida do possível.


## **Parte 1 - Configuração do Servidor**

A sua tarefa consiste em configurar um servidor baseado na nuvem e instalar e configurar alguns componentes básicos.


1. Configurar grupo de segurança na AWS
2. Configuração da redes para o Servidor
3. Configurar um servidor AWS (recomenda-se o freetier) executando uma versão Ubuntu LTS.
4. Instalar e configurar qualquer software que você recomendaria em uma configuração de servidor padrão sob as perspectivas de segurança, desempenho, backup e monitorização.
5. Instalar e configurar o nginx para servir uma página web HTML estática.



## **Part 2 – Infra as Code**

Como diferencial, você poderá configurar toda a infra-estrutura com ferramentas como:

- Ansible
- Terraform
- AWS CDK ou CloudFormation

Ao ter o projeto executando em um servidor e aplicando as melhores práticas de segurança com grupos de segurança e as configurações de rede criando completamente por código.


## **Part 3 – Continuous Delivery**

Desenhar e construir uma pipeline para apoiar a entrega contínua da aplicação de monitorização construída na Parte 2 no servidor configurado na Parte 1. Descrever a pipeline utilizando um diagrama de fluxo e explicar o objetivo e o processo de seleção usado em cada uma das ferramentas e técnicas específicas que compõem a sua pipeline. 

## Readme do Repositório

- Deve conter o título do projeto
- Uma descrição sobre o projeto em frase
- Deve conter uma lista com linguagem, framework e/ou tecnologias usadas
- Como instalar e usar o projeto (instruções)
- Não esqueça o [.gitignore](https://www.toptal.com/developers/gitignore)
- Se está usando github pessoal, referencie que é um challenge by coodesh:  

>  This is a challenge by [Coodesh](https://coodesh.com/)

## Finalização e Instruções para a Apresentação

1. Adicione o link do repositório com a sua solução no teste
2. Verifique se o Readme está bom e faça o commit final em seu repositório;
3. Envie e aguarde as instruções para seguir. Sucesso e boa sorte. =)

## Suporte

Use a [nossa comunidade](https://discord.gg/rdXbEvjsWu) para tirar dúvidas sobre o processo ou envie uma mensagem diretamente a um especialista no chat da plataforma. 
