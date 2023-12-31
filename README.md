#  Trabalho de Bases de Dados (SCC0240)

# Inclusão digital em escolas

Ciro Grossi Falsarella 11795593 <br>
Eduardo Garcia de Gaspari Valdejão 11795676 <br>
Gabriel Rosati Bryan Tavares 11355831 <br>
Henrico Lazuroz Moura de Almeida 12543502 <br>
Victor Lucas de Almeida Fernandes 12675399

## Introdução

Com a digitalização do mundo, a educação ficou cada vez mais
dependente da internet e de dispositivos digitais, tais como
celulares, tablets e computadores pessoais. Porém, a realidade
brasileira é outra. Parte dos alunos não possuem acesso ao mundo
digital, seja porque não têm acesso às ferramentas necessárias
dentro de casa, ou porque as escolas não são capazes de prover tais
tecnologias. Nesse contexto, a escassez de recursos resulta na
marginalização de parte da população, precarizando o ensino básico
no país. Para atender a essa demanda, propomos a execução de um
sistema colaborativo de compartilhamento de hardware para inclusão
digital em escolas.

Nesse sistema, as escolas se cadastram e ficam responsáveis
por cadastrar os seus alunos. Nesse primeiro momento, o foco
principal é em descobrir o grau de acesso dos alunos ao digital.
Além do mais, as escolas poderão usar de posts para expor as suas
demandas para a digitalização. Assim, construiremos um feed de
rolagem com solicitações e demandas das diferentes escolas para a
inserção no digital.

Com o intuito de auxiliar, surgem os colaboradores, que podem
oferecer seus itens para as escolas. Dessa forma, aqueles que
quiserem ajudar, podem procurar no feed por demanda aparelhos
semelhantes aos que querem doar. Alternativamente, os colaboradores
podem usar posts para exporem os produtos que tem disponíveis,
construindo um feed de doações. Destarte, aqueles que desejam doar
equipamentos podem descobrir quais instituições estudantis eles
conseguem ajudar.

Para facilitar o processo de escolha entre os diferentes
colaboradores e escolas, existirá um sistema de avaliação. Após cada
doação, ambas as partes deverão dar uma nota para a outra parte.
Dessa forma, será possível escolher para quem os produtos serão
enviados com confiança.
Portanto, o sistema facilita que escolas sejam digitalmente
incluídas por meio da exibição das necessidades tecnológicas das
escolas, dos sobressalentes de colaboradores e da classificação dos
usuários. Sendo assim, o software conectará as peças tecnológicas
sobressalentes com quem mais precisa delas.

## Diagrama Entidade-Relacionamento

![image](https://github.com/victorlfernandes/Hardware-sharing-system/assets/87901904/ac832479-9155-4cc0-96a7-c96e9a0ec623)

## Esquema Relacional

![image](https://github.com/victorlfernandes/Hardware-sharing-system/assets/87901904/cd39c378-8b23-4116-a669-372ac600840b)

## Consultas

Desenvolvemos as seguintes consultas para o nosso sistema:

- Categorias de itens doados em um certo período
- Doações feitas para escolas com menos de 3 alunos
- Chat entre usuários, envolvendo um post
- Maiores avaliações de todos os usuários
- Usuários que foram avaliados por todos os colaboradores

## Aplicação

### Descrição
A interface da aplicação foi projetada em linha de comando,
porém com fácil utilização pelo usuário, através de mensagens
de ajuda e uma simples interação.
A linguagem de programação utilizada foi Python 3, junto com a
biblioteca Psycopg2, para integração com o SGBD Postgresql.

### Requisitos
Para executar a aplicação, é necessário estar em um sistema
operacional Windows, Linux ou MacOS, com Python 3 instalado e
configurado no PATH do sistema.
Além disso, é necessário possuir Docker instalado e
configurado na máquina, para que seja possível iniciar e
executar o banco de dados.
Por fim, é necessário instalar a biblioteca Psycopg2, através
do seguinte comando:
 **pip3 install psycopg2-binary**

### Utilização
Para executar a aplicação, primeiramente é preciso iniciar o
banco de dados. Para isso, é necessário estar com o Docker
executando e rodar o seguinte comando, no diretório Docker do
projeto: **docker-compose up**

Para executar a aplicação, basta rodar o seguinte comando no
diretório raiz do projeto:
**python3 app.py**

Desta forma, a aplicação iniciará e solicitará para que o
usuário entre com um dos comandos disponíveis:
- registrar: funcionalidade para registrar um novo usuário
no sistema. Serão requisitados os dados referentes a
entidade Usuário, como “email” e “nome”;
- buscar: funcionalidade para retornar a média das notas de
avaliações de um determinado usuário, informado pelo
usuário;
- sair: funcionalidade para encerrar a aplicação.

