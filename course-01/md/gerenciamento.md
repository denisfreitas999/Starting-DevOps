**Etapa 01**

    - Entendendo que um sistema operacional exerce o papel de gerenciar a utilização dos recursos de um hardware;
    - Conhecendo as diferentes distribuições do Linux para selecionar a opção mais adequada em um determinado caso de uso;
    - Instalando um sistema operacional em uma máquina virtual para realização de testes e estudos;
    - Utilizando o protocolo SSH para acessar servidores remotamente.

**Etapa 02**

Comandos Linux:

- mkdir: criação de diretórios
- history: histórico de comandos inseridos e executados no terminal
- cd: comando de navegação entre diretórios
- touch: comando para criação de arquivos
- cat: Escrita/Leitura de arquivos

```bash
$ cat < arquivo.txt
Escrevendo dentro do arquivo TXT
Para sair pressione `ctrl + d`
```
```bash
$ cat arquivo.txt
Escrevendo dentro do arquivo TXT
Para sair pressione `ctrl + d`
$
```
- echo: Escrita em arquivos
```shell
$ echo Hello World > arquivo.md
```
- nano: Ferramenta de edição de texto
- tar: Compactador/Descompactador de diretórios/arquivos
```bash
-- Compactando os diretórios help e teste.
$ tar -czf compactado.tar.gz help teste
```
```bash
-- Descompactando o arquivo compactado.tar.gz
$ tar -xzf compactado.tar.gz
```
- mv: Move diretórios/arquivos
```shell
-- Movendo o diretório compactado para o diretório devops
$ mv compactado.tar.gz /home/denisfreitas999/devops
```
- rm: Remove diretórios/arquivos
```bash
-- Removendo a pasta teste e arquivos dentro dela de forma recursiva
$ rm -r teste/
```
