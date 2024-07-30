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


**Etapa 03**

- Automatização de tarefas com scripts shell (verificar backup.sh na pasta scripts)

```bash
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$ chmod +x backup.sh
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$ bash backup.sh
tar: Removing leading `/' from member names
Backup concluído em backup_20240730_140241.tar.gz
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$ ls
arquivo.md  arquivo.txt  arquivo_2.txt  backup.sh  backup_20240730_140241.tar.gz  compactado.tar.gz  help
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$ tar -tzf backup_20240730_140241.tar.gz
home/denisfreitas999/devops/
home/denisfreitas999/devops/help/
home/denisfreitas999/devops/help/infos/
home/denisfreitas999/devops/help/infos/infos.txt
home/denisfreitas999/devops/help/helpers/
home/denisfreitas999/devops/backup.sh
home/denisfreitas999/devops/arquivo_2.txt
home/denisfreitas999/devops/arquivo.txt
home/denisfreitas999/devops/compactado.tar.gz
home/denisfreitas999/devops/backup_20240730_140241.tar.gz
home/denisfreitas999/devops/arquivo.md
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$ ls
arquivo.md  arquivo.txt  arquivo_2.txt  backup.sh  backup_20240730_140241.tar.gz  compactado.tar.gz  help
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$
```

- Utilizando condicional (verificar compactador na pasta scripts)

```bash
denisfreitas999@DESKTOP-HLKUBTJ:~$ nano
denisfreitas999@DESKTOP-HLKUBTJ:~$ ls
compactador  devops  projetos
denisfreitas999@DESKTOP-HLKUBTJ:~$ chmod +x compactador
denisfreitas999@DESKTOP-HLKUBTJ:~$ ls
compactador  devops  projetos
denisfreitas999@DESKTOP-HLKUBTJ:~$ ./compactador
O programa, ./compactador requer nome do arquivo e arquivos a serem compactados
denisfreitas999@DESKTOP-HLKUBTJ:~$ cd devops
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$ ls
arquivo.md  arquivo.txt  arquivo_2.txt  backup.sh  backup_20240730_140241.tar.gz  compactado.tar.gz  help
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$ pwd
/home/denisfreitas999/devops
denisfreitas999@DESKTOP-HLKUBTJ:~/devops$ cd
denisfreitas999@DESKTOP-HLKUBTJ:~$ ls
compactador  devops  projetos
denisfreitas999@DESKTOP-HLKUBTJ:~$ ./compactador saida.tar.gz /home/denisfreitas999/devops/arquivo.txt /home/denisfreitas999/devops/arquivo_2.txt
tar: Removing leading `/' from member names
tar: Removing leading `/' from hard link targets
denisfreitas999@DESKTOP-HLKUBTJ:~$ ls
compactador  devops  projetos  saida.tar.gz
denisfreitas999@DESKTOP-HLKUBTJ:~$ tar -tzf saida.tar.gz
home/denisfreitas999/devops/arquivo.txt
home/denisfreitas999/devops/arquivo_2.txt
denisfreitas999@DESKTOP-HLKUBTJ:~$
```

- Atividades

1. Elabore um script simples que exiba uma mensagem de boas-vindas quando executado.
2. Construa um script que seja capaz de criar uma cópia de segurança de um diretório específico.
3. Crie um script que solicite ao usuário o nome de um diretório e, em seguida, o crie.
4. Escreva um script que aceite um nome de arquivo como argumento e verifique se o arquivo existe.
5. Desenvolva um script que utilize um loop para contar de 1 a 5.

**Verificar a pasta scripts**

***
