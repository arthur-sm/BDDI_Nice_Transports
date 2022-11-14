# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Antonio_Felipe_Coutinho_Gavazza:antoniofelipegavazza@gmail.com<br>
Arthur_Santos_Miguel:arthursm40@gmail.com<br>
Clara_Maestri:claramaestri.11@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

> A empresa de transporte público "Nice Transports" tem como objetivo oferecer conforto e acessibilidade aos passageiros dos ônibus. Dito isso, um dos maiores desafios para o alcance das premissas da empresa definitivamente é a superlotação, sendo necessário o desenvolvimento e implementação de um sistema para mitigar esse problema. A motivação para desenvolvermos o sistema é a proximidade deste com nossa realidade, já que utilizamos diretamente o transporte rodoviário público, sendo extremamente benéfico para nós e o restante da população em geral utilizar da tecnologia para tornar a locomoção cotidiana mais fácil e confortável para todos. O sistema da "Nice Transports" prevê um gerenciamento da acessibilidade, ocupação e lotação dos ônibus, seja esta de assentos ou de passageiros em pé, além de um controle e manutenção dos veículos de cada linha. Para isso, será necessário armazenar informações sobre o percurso das linhas, número de passageiros presentes (em pé e em assentos), viagens, pontos de parada e utilização dos veículos. O pagamento da passagem na roleta estará diretamente ligado ao registro de passageiros. Também deverão ser gerados relatórios sobre os dados recebidos, os quais serão tratados pelos analistas e gerentes. 
 

### 3.MINI-MUNDO<br>

> A Nice Transports é uma empresa de transporte metropolitano que enfrenta superlotação em algumas de suas linhas de ônibus. A fim de sanar esse problema, busca analisar as rotas que apresentam maior número de passageiros, veículos que operam com lotação constantemente e o tempo de espera em cada ponto de ônibus. De infraestrutura, a empresa tem ônibus, terminais de ônibus e pontos de ônibus, os quais formam a logística de transporte entre municípios na região da Grande Vitória. Tanto os ônibus quanto os terminais e pontos possuem câmeras. Todos os ônibus são acessíveis para pessoas com deficiência, tem número máximo de pessoas sentadas (correspondente à quantidade de cadeiras disponíveis) e número máximo de pessoas em pé (16 pessoas), não podendo parar para receber mais passageiros caso esteja na lotação máxima. Os ônibus são registrados com sua data de início de utilização, linha, rota e frota. Deve ser monitorado o tempo médio de duração do percurso e de chegada do ônibus em cada ponto. Dados sobre viagens devem ser atualizados e disponibilizados em relatórios diariamente. O pagamento da passagem é feito dentro do próprio ônibus, com uso de cartão na roleta, a qual deverá registrar o número de passageiros que a linha recebeu. Os funcionários atendidos pelo sistema serão os analistas e gerentes da empresa. Analistas serão responsáveis pela análise dos relatórios gerados pelo sistema, gerando um parecer sobre o que causou e o que deve ser feito em casos de lotação constante e/ou tempo de espera elevado. O gerente utilizará essas informações para definir mudanças nas rotas ou na quantidade de ônibus alocados em cada linha.

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/EmpresaDevcom.pdf?raw=true "Empresa Devcom")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
   a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
 
O sistema proposto poderá fornecer relatórios e informações relacionadas à estrutura dos veículos utilizados (ex: necessidade de manutenção), a ocupação dos assentos e a lotação geral dos ônibus, as viagens realizadas, rotas e linhas. 
    
 b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
    - Relatório sobre horários com maior lotação;
    - Relatórios sobre condições e manutenção dos veículos;
    - Relatórios sobre linhas mais utilizadas pelos passageiros;
    - Relatórios sobre linhas que mais necessitam manutenção dos veículos;
    - Relatórios sobre a quantidade de linhas que atendem cada rota;


 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
    
### 5.MODELO CONCEITUAL<br>
    As entidades aplicadas no modelo conceitual foram: Onibus, Ponto_de_Onibus, Cliente, Linha e Endereco.<br>
    As principais entidades do sistema em densenvolvimento são: Onibus, Passageiro e Ponto_de_Onibus.<br>
    Principais fluxos de informação/entidades do sistema: Relação entre Onibus e Ponto_de_Onibus, Passa, Relação entre Cliente e Ponto_de_Onibus, Abriga, e Relação entre Passageiro e Ônibus, Utiliza.
 
 
![Alt text](https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/NiceTransports_Conceitual.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [Onibus]
    Onibus: Tabela que armazena as informações relativas ao tipo de veículo de transporte utilizado pela impresa para locomoção de seus clientes.<br>
    Placa: Campo com placa atual de cada veículo.<br>
    Max_Passageiros_Sentados: Campo que mostra quantidade de assentos disponpiveis no ônibus.<br>
    Data_Compra: Campo apontando data (Dia/Mês/Ano) de compra do ônibus.<br>

    [objeto]: [Ponto_de_Onibus]
    Ponto_de_Onibus: Tabela com informações sobre os locais onde os ônibus devem parar para embarque/desembarque, de acordo com solicitado pelos clientes.<br>
    EhTerminal: Campo que define se o ponto de ônibus é considerado um Terminal (1) ou Não (0)

    [objeto]: [Cliente]
    Cliente: Tabela com ID de uma pessoa que deseja utilizar (no caso de estar em um ponto de ônibus) ou está utilizando (no caso de estar em um ônibus) o serviço da empresa. O sistema é capaz de identificar indivíduos e distinguir elas.<br>

    [objeto]: [Linha]
    Linha: Tabela com informações sobre um conjunto de ônibus que seguem uma rota de Pontos de Ônibus específica.<br>
    Nome: Campo que define o nome da Linha de Ônibus<br>
    Data_Criacao: Campo que aponta data de criação da Linha<br>

    [objeto]: [Endereco]
    Endereco: Tabela com um conjunto de dados que ajudam a definir a localização de um ponto de ônibus.<br>
    Cidade: Campo contendo uma das cidades da Grande Vitória.<br>
    Bairro: Campo que descreve um bairro específico da cidade.<br>
    Tipo_Via_Urbana: Campo que aponta se a via descrita é uma Rua ou Avenida<br> 
    Nome_Via_Urbana: Campo que mostra nome de uma Via Urbana localizada no bairro<br>

### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


