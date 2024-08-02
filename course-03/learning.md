# Informações

Eu já conhecia o conteúdo deste curso devido a outros cursos de Git e Github realizados na mesma plataforma e devido a experiências pessoais. Portanto só acompanhei as explicações para revisão dos conteúdos.

**Verificar repositório**

https://github.com/denisfreitas999/Git-Github-Rep

## **Partes aproveitadas do curso**

- **Informação sobre Pull Requests e Issues**
1. Ao colocar na descrição da Pull Request a palavra `FIX #Código-Da-Issue`, quando a pull request for realizada a issue é fechada automaticamente.
***
- **Criação de Workflow no GitHub Actions (CI)**
***
- **Protegendo a branch principal em** `Settings > Branches`
***
-  **Ativando alertas do Dependabot em** `Settings > Security > Code Security and Analysis`
1. Habilitar a opção `Dependabot Alerts`, que é uma ferramenta do github para mantermos as nossas dependências atualizadas e seguras.
2. Indo até a aba `Security` em `Vulnerabilty alerts > Dependabots` conseguimos verificar os níveis de vulnerabilidade das dependências do nosso projeto.
***
- **Automatizando atualizações de segurança**
1. Acessar a opção `Settings > Security > Code Security and Analysis`
2. Habilitar a opção `Dependabot security updates`. Fazendo isso, o dependabot tentará resolver cada um dos alertas de segurança para remover as vulnerabilidades das dependências do projeto.
3. Acessar a aba de `Pull Requests` e confirmar os merges do dependabot para correção das dependências.
***
- **Atualizando versões das dependências com o Dependabot**
1. Acessar a opção `Settings > Security > Code Security and Analysis`
2. Habilitar a opção `Dependabot versions updates`. Fazendo isso, o dependabot criará pull requests que atualizarão as dependências do projeto para as versões mais recentes.
3. Colocar o gerenciador de pacotes e o intervalo de frequência em que é verificado se é necessário atualizar as dependências. Verifique o arquivo `dependabot.yml` no path: `course-03\.github\workflow\dependabot.yml`
4. Por fim, realizar o merge com as configurações do `dependabot.yml` com a branch principal