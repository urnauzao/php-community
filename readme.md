# Docker + PHP + Nginx + Mysql + Postgres + Redis
Está imagem foi desenvolvida afim de facilitar a vida do desenvolvedor PHP, permitindo assim que de forma fácil um dev consiga executar todo o ambiente de desenvolvimento PHP. 

## Requisitos
- Ter o Docker instalando em sua máquina. Este passo a passo funciona tanto para ambiente Linux como para Windows e macOS.
- Caso você deseje subir uma imagem customizada para seu próprio Docker Hub é necessário então ter uma conta no [Docker Hub](https://hub.docker.com).


## Atenção
- Não execute os comandos de docker-compose se este repositório estiver dentro de um subsistema Linux, como o WSL.

- Caso o comando `sh` não sirva para você executar os scripts, então experimente utilizar `./script-...`.



## 1º Passo
Verificar se o Docker está sendo executado em sua máquina. 
Caso não esteja você deve iniciar o Docker, para isso basta basta:
- Abrir Docker Desktop, ou em ambiente Linux:
> sudo service docker start


## 2º Passo
Se você não for fazer `build` de uma nova imagem PHP + Nginx, então você pode pular para o `8º Passo`
Caso vá customizar sua imagem Docker, então acesse o arquivo [Dockerfile](./Dockerfile) e realize as alterações desejadas.


## 3º Passo
Depois de feiras as alteraçãoes agora vamos contruir a imagem. Para isso execute:
> docker-compose build web

Ou você pode executar diretamente o script:
> sh script-build-docker-compose.sh


## 4º Passo
Com a imagem criada corretamente, você agora pode fazer um teste de execução.
> docker run web


## 5º Passo
Se o teste de execução der certo, então é hora testarmos subir todo o ambiente do Docker Compose.
Para isso vamos executar agora
> docker-compose up -d

Ou você pode executar diretamente o script:
> sh script-start-docker-compose.sh

Quando quiser `parar` a execução desse ambiente execute:
> sh script-drop-docker-compose.sh


## 6º Passo
Estando tudo ok, agora é hora de subirmos a imagem para o Dockerhub, assim ela fica disponível para ser acessada em diversos ambientes.
É importante no `docker-compose.yml` ser alterado o nome da imagem para o de seu repositório.
Estando pronto, execute:
> sh script-push-docker-compose.sh

## 7º Passo
Devemos ir ao Docker Hub e verificar se nossa imagem já está corretamente em nosso repositório.

## 8º Passo
Agora é hora de ajustarmos nossas aplicações dentro do ambiente.

Para isso iremos usar a pasta `applications`, nela devemos salvar colocar cada projeto PHP, e é importante que cada projeto PHP tenha uma pasta `public`, pois é nestá pasta public que o Nginx irá consultar o index.php.

Assim, você pode clonar um projeto já existente dentro de `applications`, ou pode usar o script abaixo para gerar uma aplicação Laravel do zero. Certifique-se de ter o Composer e o PHP instalado em sua máquina para executar.
> sh script-new-project-laravel.sh

## 9º Passo
Agora é hora de configurar o Nginx para que ele consiga encontrar suas aplicações.
Para isso execute:
> sh script-generate_sites.sh

Ao executar esse script, você deverá informar qual o nome da pasta de sua aplicação em `applications`. E também deverá informar uma porta que não esteja sendo utilizada no sistema. Recomendamos utilizar as portas entre 8080 e 8089.

## 10º Passo
Com todas essas configurações feitas, agora é hora de colocar a aplicação em execução.
> script-start-docker-compose

## 11º Passo
Para derrubar a aplicação execute:
> sh script-drop-docker-compose.sh

## Outras informações
Caso precise remover as configuções de sites do Nginx, acesse a pasta docker/nginx/sites e lá encontre remove as configurações `.conf` que desejar.
