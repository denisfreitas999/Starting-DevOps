# Docker: Tópicos sobre Containers e Virtualização

Construindo e gerindo containers com o Docker.

## Conteúdos adicionais
- [Desvendando o DockerFile](https://www.alura.com.br/artigos/desvendando-o-dockerfile)
- [Compondo uma aplicação com o docker compose](https://www.alura.com.br/artigos/compondo-uma-aplicacao-com-o-docker-compose)

## Papel do Docker Hub como Registry de Imagens
O [Docker Hub](https://hub.docker.com/) é um registry público que armazena, gerencia e distribui imagens Docker. Ele permite que desenvolvedores compartilhem e acessem uma vasta coleção de imagens pré-configuradas, facilitando a criação de containers. O [Docker Hub](https://hub.docker.com/) é essencial para o ciclo de vida de desenvolvimento baseado em containers, atuando como uma fonte central de imagens confiáveis e reutilizáveis.

## Diferença entre Containers e Máquinas Virtuais
Containers e máquinas virtuais são soluções de virtualização que proporcionam isolamento de ambientes. A principal diferença é que as máquinas virtuais virtualizam o hardware completo, incluindo o sistema operacional, enquanto os containers compartilham o kernel do sistema operacional host, isolando apenas os processos no nível do usuário. Isso faz com que os containers sejam mais leves e eficientes em termos de recursos.

## Containers Compartilham o Mesmo Kernel do Sistema Operacional
Containers utilizam o mesmo kernel do sistema operacional host, isolando apenas os processos do espaço do usuário. Isso permite que múltiplos containers rodem simultaneamente com overhead mínimo, ao contrário das máquinas virtuais que exigem um kernel separado para cada instância.

## Containers como Solução Eficiente para Encapsulamento de Aplicações
Containers são uma solução eficiente para encapsular aplicações junto com suas dependências. Eles garantem que o ambiente de execução seja consistente, independentemente do sistema operacional do host, mantendo o conteúdo do container isolado e independente do sistema subjacente.

## Função dos Namespaces no Isolamento de Containers
Os namespaces são um recurso fundamental no Docker que garante o isolamento dos containers em relação ao host. Eles criam ambientes separados para recursos como processos, IDs de usuário, sistema de arquivos e rede, garantindo que cada container opere de forma independente e sem interferência com outros containers ou com o sistema host.

## Utilizando Comandos Docker para Gerenciamento de Containers
O Docker fornece uma série de comandos para a criação, gerenciamento e verificação do status de containers. Comandos como `docker run`, `docker ps` e `docker stop` são essenciais para interagir com containers, permitindo que desenvolvedores iniciem, monitorem e encerrem containers de forma eficiente.

## Abordando alguns conceitos docker

`CONTAINER ID`: O `CONTAINER ID` é um identificador único atribuído a cada container Docker. Ele é usado para referenciar e gerenciar containers específicos em comandos Docker. O ID é gerado automaticamente quando um container é criado e é útil para executar ações como iniciar, parar ou remover containers.

`IMAGE`: A `IMAGE` (imagem) é um modelo somente leitura que contém o sistema de arquivos e as configurações necessárias para criar um container. Imagens Docker são usadas como base para iniciar containers e podem incluir o sistema operacional, aplicações e dependências necessárias.

`COMMAND`: O `COMMAND` é o comando que foi especificado para ser executado quando o container é iniciado. Este comando pode ser definido na Dockerfile ou passado diretamente no momento da execução do container. Ele define o processo principal que o container executará.

`CREATED`: O campo `CREATED` indica a data e a hora em que o container foi criado. Essa informação é útil para saber quando um container foi instanciado, o que pode ajudar no gerenciamento e na organização dos containers.

`STATUS`: O `STATUS` mostra o estado atual do container. Ele pode indicar se o container está em execução, parado ou em outro estado. Informações adicionais podem incluir há quanto tempo o container está no estado atual ou se ele está reiniciando.

`PORTS`: O campo `PORTS` exibe as portas do container que foram mapeadas para as portas do host. Isso permite que serviços em containers sejam acessados a partir do sistema host ou da rede externa. O mapeamento de portas é essencial para interações entre containers e serviços externos.

`NAMES`: O `NAMES` é o nome atribuído ao container, que pode ser definido pelo usuário ou gerado automaticamente pelo Docker. Nomes facilitam a referência aos containers em comandos e ajudam a identificar containers específicos de maneira mais amigável do que o ID do container.


## Abordando alguns comandos docker

## `docker run`
O comando `docker run` é usado para criar e iniciar um container a partir de uma imagem Docker. Se a imagem não estiver disponível localmente, o Docker irá baixá-la automaticamente. Este comando também permite configurar o container com opções adicionais, como mapeamento de portas e volumes.
```
Exemplo demonstra a execução de uma container ubuntu com um tempo programado para 1 dia de vida.

$ docker run ubuntu sleep 1d
```

O comando `docker run -d -P` é usado para criar e iniciar um container a partir da imagem `docker/example-voting-app-vote`. A opção `-d` (detached) faz com que o container seja executado em segundo plano, permitindo que o terminal seja liberado para outros comandos. A opção `-P` (publish all exposed ports) mapeia automaticamente todas as portas expostas no Dockerfile para portas aleatórias no host. Isso significa que o container será iniciado com suas portas expostas mapeadas para portas do host, mas essas portas são alocadas automaticamente e não são especificadas pelo usuário.
```
$ docker run -d -P docker/example-voting-app-vote
```
O comando `docker run -d -p 3000:80` também cria e inicia um container a partir da imagem `docker/example-voting-app-vote`. A opção `-d` faz com que o container seja executado em segundo plano. A opção `-p 3000:80` (publish) mapeia explicitamente a porta 80 do container para a porta 3000 do host. Isso permite que você acesse o serviço no container através da porta 3000 no host. A especificação do mapeamento de portas é útil quando você deseja controlar quais portas do container são expostas no host e quais portas são usadas para acessar os serviços do container.
```
$ docker run -d -p 3000:80 docker/example-voting-app-vote
```

## `docker pull`
O comando `docker pull` é utilizado para baixar uma imagem do Docker Hub ou de outro registro Docker para o seu ambiente local. Ele é útil quando você deseja ter a imagem disponível para uso posterior sem iniciar um container imediatamente.

## `docker ps` 
O comando `docker ps` exibe uma lista de todos os containers Docker que estão em execução. Ele mostra detalhes importantes, como o ID do container, o nome da imagem, o status, e as portas expostas.

## `docker ps -a`
O comando `docker ps -a` lista todos os containers Docker, incluindo aqueles que estão parados. Isso permite ver o histórico completo dos containers criados e seus respectivos estados.

## `docker stop`
O comando `docker stop` é utilizado para interromper a execução de um container. Ele envia um sinal de término (SIGTERM) ao processo principal do container, permitindo que ele seja encerrado de forma ordenada. Se o processo não for finalizado em um determinado período, o Docker enviará um sinal de interrupção forçada (SIGKILL) para garantir que o container seja interrompido.
```
Onde awesome_golick é o NAME de um container ubuntu. O parâmetro -t=0 faz o container parar na mesma hora em que é executado o comando.

$ docker stop -t=0 awesome_golick
```

O comando `docker stop $(docker container ls -q)` é utilizado para parar todos os containers Docker que estão em execução. Ele funciona da seguinte forma:

- `docker container ls -q`: Lista os IDs de todos os containers que estão atualmente em execução, sem mostrar informações adicionais como nomes ou status.
- `$(...)`: Substitui a saída do comando dentro dos parênteses na linha de comando principal.
- `docker stop`: Recebe uma lista de IDs de containers e envia um sinal para parar cada um deles.

Combinando esses componentes, o comando `docker stop $(docker container ls -q)` para todos os containers em execução ao listar seus IDs e então aplicar o comando `docker stop` a essa lista.
```
$ docker stop $(docker container ls -q)
```
## `docker start`
 O comando `docker start` é usado para iniciar um container que foi previamente parado. Ao contrário do `docker run`, ele não cria um novo container, mas simplesmente reinicia um container existente a partir de seu estado anterior, preservando suas configurações e dados.

## `docker exec -it`
O comando `docker exec -it` é usado para executar um comando em um container em execução. A opção `-it` combina dois parâmetros:
- `-i` (interativo) mantém o STDIN aberto.
- `-t` (pseudo-terminal) aloca um terminal.

Isso permite que você execute comandos interativos dentro do container, como abrir um shell. No exemplo fornecido, `awesome_golick` é o nome do container e `bash` é o comando que será executado.

```
Onde awesome_golick é o NAME de um container ubuntu.

$ docker exec -it awesome_golick bash
```
## `docker pause`
O comando `docker pause` é utilizado para pausar a execução de todos os processos em um container. Quando um container é pausado, seu estado é preservado, mas ele não pode continuar a executar novos processos até ser retomado. No exemplo fornecido, `awesome_golick` é o nome do container a ser pausado.

```
Onde awesome_golick é o NAME de um container ubuntu.

$ docker pause awesome_golick
```

## `docker unpause`
O comando `docker unpause` é utilizado para retomar a execução de um container que foi pausado com o comando `docker pause`. Ele restaura o funcionamento normal do container, permitindo que todos os processos sejam retomados. No exemplo fornecido, `awesome_golick` é o nome do container a ser retomado.

```
Onde awesome_golick é o NAME de um container ubuntu.

$ docker pause awesome_golick
```

## `docker rm`
O comando `docker rm` é utilizado para remover um container que foi parado. O comando exclui o container e libera os recursos associados a ele. No exemplo fornecido, `64b790cd05e4` é o ID do container que será removido.

```
Onde 64b790cd05e4 é o CONTAINER ID de um container ubuntu.

$ docker rm 64b790cd05e4
```

##  `docker image ls`
O comando `docker image ls` é utilizado para listar todas as imagens Docker disponíveis localmente no sistema. Ele exibe informações detalhadas, como o nome da imagem, a tag, o ID da imagem, a data de criação e o tamanho. Este comando é útil para visualizar e gerenciar as imagens que estão armazenadas no ambiente local.

##  `docker history`
O comando `docker history` mostra o histórico de uma imagem Docker específica, incluindo todas as camadas que foram criadas durante o processo de construção da imagem. O histórico exibe detalhes como o comando utilizado para criar cada camada, o tamanho das camadas, e a data de criação. Isso é útil para entender como uma imagem foi construída e para depurar problemas relacionados a imagens.

##  `docker inspect`
O comando `docker inspect` fornece informações detalhadas sobre um objeto Docker, como containers, imagens, volumes, ou redes. O comando retorna um JSON com todos os detalhes técnicos, como configurações de rede, volumes montados, argumentos de entrada, entre outros. Isso é extremamente útil para diagnósticos e compreensão profunda da configuração e estado de um container ou outro objeto Docker.

## `docker login -u`
O comando `docker login -u` é utilizado para fazer login no Docker Hub (ou em outro registry Docker). O `-u` especifica o nome de usuário que será utilizado para a autenticação. No exemplo, o comando `docker login -u denisfreitas999` inicia o processo de login para o usuário `denisfreitas999`. Após inserir este comando, será solicitada a senha associada ao nome de usuário, permitindo a autenticação no Docker Hub.

```bash
$ docker login -u denisfreitas999
```

## `docker push`
O comando `docker push` é utilizado para enviar uma imagem Docker local para um registry, como o Docker Hub. No exemplo, o comando `docker push denisfreitas999/allbooks:1.1` faz o upload da imagem `denisfreitas999/allbooks` com a tag `1.1` para o Docker Hub, tornando-a disponível para outros usuários ou para ser usada em diferentes ambientes. Esse comando requer que você esteja autenticado com sucesso no registry através do `docker login`.

```bash
$ docker push denisfreitas999/allbooks:1.1
```

## Criando imagem do projeto allbooks no docker

Para ter acesso ao frontend do projeto allbooks, consulte a pasta `course-02`. 

**Criando a imagem**: Dentro da pasta do frontend utilizando o `nano` foi criado um arquivo de configuração `Dockerfile`:

```Docker
FROM node:20
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
ENTRYPOINT npm start
```

**Buildando imagem**: Para construir a imagem utilizei o comando `docker build -t denisfreitas999/allbooks:1.1 .`.

O comando `docker build -t denisfreitas999/allbooks:1.1 .` é utilizado para construir uma imagem Docker a partir de um Dockerfile localizado no diretório atual (indicado pelo `.`). A opção `-t` permite atribuir um nome e uma tag à imagem, neste caso, `denisfreitas999/allbooks:1.1`. Isso facilita a referência à imagem posteriormente, tanto para execução quanto para envio a um registry como o Docker Hub.

**Executando a imagem como um container**: Executei a imagem como um container com o comando `docker run -d -p 8080:3000 denisfreitas999/allbooks:1.1`.

O comando `docker run -d -p 8080:3000 denisfreitas999/allbooks:1.1` é utilizado para criar e executar um container a partir da imagem `denisfreitas999/allbooks:1.1`. A opção `-d` (detached) faz com que o container seja executado em segundo plano, e a opção `-p 8080:3000` mapeia a porta 3000 do container para a porta 8080 do host, permitindo que o serviço executado dentro do container seja acessado através da porta 8080 no host. Isso é útil para acessar uma aplicação web que está rodando no container através do navegador ou de outra ferramenta de rede.

## Mecanismos de Persistência

### **Mecanismo bind/mount**

O comando a seguir cria e inicia um container Docker utilizando um mecanismo de persistência conhecido como bind mount.
```
$ docker run -it --mount type=bind,source=/home/denisfreitas999/volume-docker,target=/app ubuntu bash
```

- `--mount type=bind,source=/home/denisfreitas999/volume-docker,target=/app`: A opção `--mount` é utilizada para montar um diretório do sistema de arquivos do host dentro do container. 
  - `type=bind` especifica que estamos utilizando um bind mount, que liga um diretório do host ao container.
  - `source=/home/denisfreitas999/volume-docker` define o caminho no sistema de arquivos do host que será montado.
  - `target=/app` define o caminho dentro do container onde o diretório do host será montado.

Este mecanismo permite que os dados no diretório `/home/denisfreitas999/volume-docker` no host sejam acessíveis e modificáveis a partir do diretório `/app` no container. As alterações feitas dentro do container (no diretório `/app`) são refletidas diretamente no sistema de arquivos do host (no diretório `/home/denisfreitas999/volume-docker`), permitindo a persistência dos dados além do ciclo de vida do container.

- `-it`: As opções `-i` e `-t` são utilizadas juntas para permitir a interação com o container através de um terminal.

- `ubuntu bash`: Especifica que o container será criado a partir da imagem Ubuntu e abrirá um shell bash para interação.

Este comando é útil quando você deseja que os dados gerados ou modificados dentro de um container sejam persistidos no sistema de arquivos do host, garantindo que eles permaneçam disponíveis mesmo após o container ser removido ou parado.


### **Mecanismo de Volumes**

O Docker oferece uma forma de persistir dados usando volumes, que são armazenados em um local específico no sistema de arquivos do host e gerenciados pelo Docker. Isso permite que os dados sejam compartilhados entre containers ou persistidos mesmo após o container ser removido.

#### `docker volume ls`
O comando `docker volume ls` é utilizado para listar todos os volumes existentes no Docker. Ele exibe os nomes de todos os volumes criados, tanto automaticamente quanto manualmente, permitindo que você veja os recursos de armazenamento que estão disponíveis no ambiente Docker.

#### `docker volume create novo_volume`
O comando `docker volume create novo_volume` cria um novo volume chamado `novo_volume`. Volumes são armazenados em uma localização padrão no sistema de arquivos do Docker e podem ser montados em um ou mais containers. Eles são uma maneira eficiente de persistir dados entre reinicializações de containers.

#### `docker run -it --mount source=novo_volume,target=/app ubuntu bash`
Este comando cria e inicia um container utilizando o volume `novo_volume` para persistência de dados.

- `--mount source=novo_volume,target=/app`: Monta o volume `novo_volume` no diretório `/app` dentro do container. Isso significa que qualquer dado gravado em `/app` será armazenado no volume e persistirá após o container ser removido.

Assim como no exemplo de bind mount, este comando permite a interação com o container via terminal, onde o volume criado será utilizado para armazenar os dados de forma persistente.

#### `docker volume inspect novo_volume`
O comando `docker volume inspect novo_volume` exibe informações detalhadas sobre o volume `novo_volume`, incluindo sua localização no sistema de arquivos do host, as opções de montagem e qualquer container que esteja utilizando o volume. Este comando é útil para entender onde e como os dados estão sendo armazenados e gerenciados pelo Docker.

### **Mecanismo TMPFS**

O TMPFS é um tipo especial de sistema de arquivos que reside na memória volátil, o que significa que os dados armazenados nele são temporários e desaparecerão quando o container for parado ou reiniciado. Isso é útil para armazenar dados sensíveis ou temporários que não precisam ser persistidos após o ciclo de vida do container.

#### `docker run -it --tmpfs=/app ubuntu bash`
Este comando cria e inicia um container Docker com um sistema de arquivos TMPFS montado no diretório `/app` dentro do container.

- `--tmpfs=/app`: A opção `--tmpfs` monta um sistema de arquivos temporário (TMPFS) em memória no diretório especificado, que neste caso é `/app`. Todos os dados escritos em `/app` durante a execução do container serão armazenados na memória, proporcionando acesso rápido, mas serão perdidos quando o container for encerrado.

- `ubuntu bash`: Especifica que o container será criado a partir da imagem Ubuntu e abrirá um shell bash para interação.

O uso de TMPFS é ideal para cenários onde você precisa de um armazenamento rápido e temporário, como para arquivos temporários que são gerados e consumidos durante a execução de um processo no container e que não precisam ser mantidos após o término desse processo.