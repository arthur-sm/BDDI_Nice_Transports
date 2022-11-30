# TRABALHO 01:  Nice Transports
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
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

Arquivo PDF do Protótipo Balsamiq feito para Empresa Nice Transports("Empresa Nice Transports")

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
 **a) O sistema proposto poderá fornecer quais tipos de relatórios e informações?** 
 
O sistema proposto tem com foco fornecer  informações relacionadas à quantidade de passageiros a cada instante, tempo de espera e duração dos trajetos. O sistema também será capaz de apontar data de aquisição dos veículos, localização de cada ponto de ônibus e percurso de cada linha, bem como quais ônibus estão alocados em cada uma.
    
 **b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!**
    
    - Relatórios sobre tempo médio de espera por ônibus em cada Cidade;
    - Relatório de lotação por horário;
    - Relatórios sobre linhas mais utilizadas pelos passageiros;
    - Relatórios sobre quantidade de pontos por Cidade/Bairro;
    - Relatórios de tempo de conclusão do trajeto por linha;
 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
[Tabela de dados da Empresa Nice Transports](https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/arquivos/4.3_Tabelas%20de%20Dados%20do%20Sistema.ods?raw=true)
    
    
### 5.MODELO CONCEITUAL<br>
    As entidades aplicadas no modelo conceitual foram: Onibus, Ponto_de_Onibus, Cliente, Linha e Endereco.
    As principais entidades do sistema em densenvolvimento são: Onibus, Passageiro e Ponto_de_Onibus.
    Principais fluxos de informação/entidades do sistema: Relação entre Onibus e Ponto_de_Onibus, Passa, Relações entre Cliente e Ponto_de_Onibus, Sai e Entra, e Relações entre Passageiro e Ônibus, Recebe e Entrega.
 
 
![Alt text](https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/NiceTransports_Conceitual.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Clara Maestri] Modelo conceitual compreensível, considero as cardinalidades aceitáveis para a proposta e as palavras utilizadas no modelo conferem bom entendimento. No geral, atende a ideia do sistema. 

#### 5.2 Descrição dos dados 
    [objeto]: [Onibus]
    Onibus: Tabela que armazena as informações relativas ao tipo de veículo de transporte utilizado pela impresa para locomoção de seus clientes.<br>
    Placa: Campo com placa atual de cada veículo.<br>
    Qntd_Assentos: Campo que mostra quantidade de assentos disponpiveis no ônibus.<br>
    Data_Compra: Campo apontando data (Dia/Mês/Ano) de compra do ônibus.<br>

    [objeto]: [Ponto_de_Onibus]
    Ponto_de_Onibus: Tabela com informações sobre os locais onde os ônibus devem parar para embarque/desembarque, de acordo com solicitado pelos clientes.
    Qntd_Assentos: Quantidade de assentos disponíveis naquele ponto de ônibus.

    [objeto]: [Cliente]
    Cliente: Tabela com ID de uma pessoa que deseja utilizar (no caso de estar em um ponto de ônibus) ou está utilizando (no caso de estar em um ônibus) o serviço da empresa. O sistema é capaz de identificar indivíduos e distinguir elas.
    Hashcode: Link da imagem onde foi reconhecido um cliente pela primeira vez durante um trajeto.

    [objeto]: [Linha]
    Linha: Tabela com informações sobre um conjunto de ônibus que seguem uma rota de Pontos de Ônibus específica.
    Nome: Campo que define o nome da Linha de Ônibus.
    Data_Criacao: Campo que aponta data de criação da Linha.

    [objeto]: [Endereco]
    Endereco: Tabela com um conjunto de dados que ajudam a definir a localização de um ponto de ônibus.<br>
    Cidade: Campo contendo uma das cidades da Grande Vitória.
    Bairro: Campo que descreve um bairro específico da cidade.
    Tipo_Via_Urbana: Campo que aponta se a via descrita é uma Rua ou Avenida<br> 
    Nome_Via_Urbana: Campo que mostra nome de uma Via Urbana localizada no bairro<br>

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/NiceTransports_Logico.png?raw=true "Modelo Logico")

### 7	MODELO FÍSICO<br>
[Script do modelo físico das tabelas](https://github.com/arthur-sm/BDDI_Nice_Transports/raw/master/arquivos/Scripts/modelo_fisico.sql "Modelo Físico - Nice Transports")

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
    a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
    (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
    b) Criar um novo banco de dados para testar a restauracao 
    (em caso de falha na restauração o grupo não pontuará neste quesito)
    c) formato .SQL
[Script de insert nas tabelas](https://github.com/arthur-sm/BDDI_Nice_Transports/raw/master/arquivos/Scripts/insert.sql "Script de insert nas tabelas - Nice Transports")

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
**Tabelas**: "onibus", "linha", "percorre", "alocado", "endereco", "ponto_de_onibus", "passa", "entrega", "cliente", "recebe", "chega" e "deixa"

**Principais consultas**:

    --Tempo médio de espera de ônibus por cidade (tabelas: chega, deixa, ponto_de_onibus e endereco)
    select e.cidade, avg(d.datahora - c.datahora) from chega c
    join deixa d on d.fk_cliente_id = c.fk_cliente_id
    join ponto_de_onibus p on p.id = c.fk_ponto_de_onibus_id
    join endereco e on e.id = p.fk_endereco_id
    group by e.cidade

![resultado da consulta 1](https://github.com/arthur-sm/BDDI_Nice_Transports/raw/master/images/Consultas/media_espera_cidade.png "Tempo médio de espera de ônibus por cidade")

    --top 5 Linhas mais utilizadas pelos clientes: linha, alocado e recebe
    select l.nome, count(r.*) from linha l
    join alocado a on a.fk_linha_id = l.id
    join recebe r on r.fk_onibus_id = a.fk_onibus_id
    group by l.nome
    order by count(r.*) desc
    fetch first 5 rows only

![resultado da consulta 2](https://github.com/arthur-sm/BDDI_Nice_Transports/raw/master/images/Consultas/top5_linhas_utilizadas.png "top 5 Linhas mais utilizadas pelos clientes")

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

    select * from public.onibus;
    select * from public.linha;
    select * from public.percorre;
    select * from public.alocado;
    select * from public.endereco;
    select * from public.ponto_de_onibus;
    select * from public.passa;
    select * from public.entrega;
    select * from public.cliente;
    select * from public.recebe;
    select * from public.chega;
    select * from public.deixa;

# Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

    -- seleciona os ônibus com menor quantidade de assentos na tabela
    select * from onibus where qntd_assentos < 40;
    
    -- seleciona com endereço na serra
    select p.id, e.cidade, e.bairro, e.tipo_via_urbana, e.nome_via_urbana, p.numero from ponto_de_onibus p
    join endereco e on e.id = p.fk_endereco_id 
    where e.cidade = 'Serra'
    
    -- seleciona linhas inativas
    select * from percorre where ativo = false;
    
    -- seleciona pontos de ônibus com menos assentos
    select * from ponto_de_onibus where qntd_assentos < 12;

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
**a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not**

    select * from endereco where cidade = 'Vitória' and tipo_via_urbana = 'Rua';
    
    select * from onibus where qntd_assentos > 40 or data_compra = '2015-07-09'; 
    
    select * from ponto_de_onibus where numero > 20 and qntd_assentos > 10;
    
    select * from percorre where not ativo = false;
    
    select * from endereco where not tipo_via_urbana = 'Rua';

**b) Criar no mínimo 3 consultas com operadores aritméticos**

    --Ônibus próximos de precisarem serem aposentados (15 anos de serviço)
    SELECT id, placa, data_compra FROM onibus
    where data_compra < now() - INTERVAL '14 year';
    
    --Capacidade máxima de cada ônibus (pessoas em pé + sentadas)
    SELECT id, placa, (qntd_assentos + 16) capacidade_maxima FROM Onibus
    
    --Tempo médio de espera por dia
    SELECT to_char(c.datahora, 'dd-MM-yyyy'), avg(d.datahora - c.datahora) from chega c
    join deixa d on d.fk_cliente_id = c.fk_cliente_id
    group by to_char(c.datahora, 'dd-MM-yyyy'), to_char(d.datahora, 'dd-MM-yyyy')

**c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas**

    --Alter no nome da coluna 'Numero' para que fique mais claro qual a info presente no campo
    ALTER TABLE ponto_de_onibus
    RENAME COLUMN Numero TO Numero_Endereco
    
    --Alter no nome da coluna 'Hashcode' devido a alteração no conteúdo alocado do campo
    ALTER TABLE cliente
    RENAME COLUMN Hashcode TO Link_Imagem
    
    --Alter no nome da coluna 'tipo_via_urbana' para uma opção mais simples e apropriada
    Alter Table Endereco
    RENAME COLUMN tipo_via_urbana TO Logradouro
    
    --Alter no nome da coluna 'nome_via_urbana' para algo mais simples e apropriado 
    Alter Table Endereco
    RENAME COLUMN nome_via_urbana to Nome

    Alter table Chega rename column datahora to datahora_chegada;
    Alter table Cliente rename column link_imagem to link_hashcode;
    Alter table Deixa rename column datahora to datahora_deixa;

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
**a) Criar outras 5 consultas que envolvam like ou ilike**

    --seleciona placas cujo nome termina com 8
    select * from linha where nome like '%8'; 
    
    -- seleciona endereços no qual o nome da via começa com a letra a
    select * from endereco where nome ilike 'a%';
    
    -- seleciona bairros com "jardim" no nome (jardim camburi, jardim da penha, jardim américa.. etc.)
    select * from endereco where bairro ilike 'jARDiM%';
    
    -- selecion ônibus com placa inciando com a letra k 
    select * from onibus where placa ilike 'k%';
    
    -- seleciona endereços cuja cidade começa com a letra v (vitória ou vila velha)
    select * from endereco where cidade ilike 'v%';

**b) Criar uma consulta para cada tipo de função data apresentada.**

      --seleciona id e data de compra dos ônibus
      select id, data_compra from onibus;
     
      --seleciona nome e data de criação das linhas
      select nome, data_criacao from linha;
     
      -- seleciona o id do ônibus e do ponto e a data/hora no qual o ônibus passou no ponto
      select fk_onibus_id as onibus, fk_ponto_de_onibus_id as id_do_ponto, datahora as data_passagem from passa;
     
      -- seleciona o id do ônibus e o horário de entrega de clientes
      select fk_onibus_id as onibus, datahora as data_entega from entrega;
     
      -- seleciona o id do ônibus e o horário de recebimento de clientes
      select fk_onibus_id as onibus, datahora as data_recebimento from recebe;
     
      -- seleciona o id do ponto e o horário de chegada de clientes
      select fk_ponto_de_onibus_id as ponto, datahora_chegada as data_chegada from chega;
    
      -- seleciona o id do ponto e o horário que o cliente deixa o ponto
      select fk_ponto_de_onibus_id as ponto, datahora_deixa as data_deixa from deixa;

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
**a) Criar minimo 3 de exclusão**

    delete Onibus where Placa in ('JKB1530','KJF8291')
    delete Ponto_de_Onibus where qntd_assentos <= 10
    delete Percorre where Ativo = 0

**b) Criar minimo 3 de atualização**

    update Onibus set data_compra=NOW()
    update Endereco set cidade='Vitoria' where cidade='Vitória'
    update Linha set Nome = 'NO29' where Nome = 'AO63'

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
**a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado**

    select * FROM Onibus onb
    join Alocado alc on alc.fk_onibus_id = onb.id
    join Linha lin on lin.id = alc.fk_linha_id
    join Percorre per on per.fk_linha_id = lin.id
    join ponto_de_onibus pdo on pdo.id = per.fk_ponto_de_onibus_id
    join passa pss on pss.fk_ponto_de_onibus_id = pdo.id
    join endereco edr on edr.id = pdo.id
    join chega cga on cga.fk_ponto_de_onibus_id = pdo.id
    join deixa dxa on dxa.fk_ponto_de_onibus_id = cga.fk_ponto_de_onibus_id
    join cliente cnt on cnt.id = dxa.fk_cliente_id
    join recebe rcb on rcb.fk_cliente_id = cnt.id
    join entrega ent on ent.fk_cliente_id = cnt.id

**b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho**

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

    --conta a quantidade de ônibus por quantidade de assentos 
    select qntd_assentos, count(placa) as qtd_onibus from onibus 
    group by qntd_assentos; 
    
    --conta quantas linhas foram criadas em cada mês
    select to_char(data_criacao, 'MM-yyyy') as mes_ano, count(nome) as qtd_linhas from linha 
    group by to_char(data_criacao, 'MM-yyyy');
    
    --conta quantas entregas de clientes os ônibus realizaram em cada hora
    select to_char(datahora, 'HH') as hora, count(id) as qtd_entregas from entrega 
    group by to_char(datahora, 'HH')
    order by count(id) desc    
    
    -- conta quantos endereços por logradouro 
    select count(id) as qtd_enderecos, logradouro from endereco 
    group by logradouro;
    
    -- conta quantos endereços por cidade 
    select count(id) as qtd_enderecos, cidade from endereco 
    group by cidade;
    -- agrupa os horários em que um cliente deixou o ponto com um intervalo de 15min
     select to_char(to_timestamp(floor((extract('epoch' from datahora_deixa) / 900 )) * 300) 
      AT TIME ZONE 'UTC', 'HH24:MI') as datadeixou, count(*) from deixa
      group by datadeixou;

**a) Criar minimo 2 envolvendo algum tipo de junção**

    select id as id_bus, placa from onibus inner join alocado
    on (onibus.id = alocado.fk_onibus_id)
    group by id;

    select bairro from endereco inner join ponto_de_onibus 
    on (endereco.id = ponto_de_onibus.fk_endereco_id)
    where logradouro = 'Rua'
    group by bairro ;

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
**a) Criar minimo 1 de cada tipo**

    select count(nome) as qtd_linhas, data_criacao  from linha left join percorre 
    on (linha.id = percorre.fk_linha_id)
    group by data_criacao;
 
    select count(numero_endereco) as qtd_pontos, qntd_assentos from ponto_de_onibus full join endereco 
    on (ponto_de_onibus.fk_endereco_id = endereco.id)
    group by qntd_assentos;
 
    select count(fk_cliente_id) as qtd_clientes, datahora from recebe right join cliente 
    on (recebe.fk_cliente_id = cliente.id)
    group by datahora;
 
    select count(fk_cliente_id) as qtd_clientes, datahora_chegada from chega right join cliente 
    on (chega.fk_cliente_id = cliente.id)
    group by datahora_chegada;

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
**a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)**

    --Lista de sentidos possíveis entre bairros em cada cidade
    SELECT E1.cidade, E1.bairro as Origem, E2.bairro as Destino
    FROM endereco E1, endereco E2
    WHERE E1.id <> E2.id
    AND E1.cidade = E2.cidade
    order by E1.cidade

**b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho**
 
    -- Mostra horário de chegada e saída do cliente do ponto de ônibus
    create view ChegadaSaida_Ponto as
    select c.datahora_chegada, d.datahora_deixa from chega c
    join deixa d on d.fk_cliente_id = c.fk_cliente_id

    select * from ChegadaSaida_Ponto
 
    --- Mostra horário em que um cliente foi deixado ou recebido
    create view Onibus_RecebeEntrega as
    select r.datahora as recebeu , e.datahora as entregou from recebe r
    join entrega e on r.fk_cliente_id = e.fk_cliente_id

    select * from Onibus_RecebeEntrega


#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
**a) Criar minimo 1 envolvendo GROUP BY**
**b) Criar minimo 1 envolvendo algum tipo de junção**
    
    SELECT E.cidade, E.bairro, E.logradouro, E.nome, P.numero_endereco FROM ponto_de_onibus P
    join endereco E on E.id = P.fk_endereco_id
    Where E.cidade in (select cidade from endereco where cidade <> 'Vitória')

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


