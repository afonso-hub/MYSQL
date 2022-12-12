
USE sucos;
// INSERIR DADOS NA TABELA:
use sucos;

INSERT INTO tbproduto(
 PRODUTO, 
 NOME, 
 EMBALAGEM, 
 TAMANHO, SABOR, PRECO_LISTA)  VALUES ('1040107', 'Light - 350 ml - melância', 
 'Lata', '350 ml', 'Melância', 4.56)

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

//CODIGO PARA ATUALIZARA TABELA, COM VALORES DIFERENTE:

USE sucos;

UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46;
WHERE PRODUTO = '544931';

UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
 INSERT INTO tbvendedores(MATRICULA, NOME, PERCENTUAL_COMISSAO)
 VALUES ('00233', 'João Geraldo da Fonseca', 0.10)
 
 INSERT INTO tbvendedores(MATRICULA, NOME, PERCENTUAL_COMISSAO)
 VALUES ('00235', 'Márcio Almeida Silva', 0.08)
 
 INSERT INTO tbvendedores(MATRICULA, NOME, PERCENTUAL_COMISSAO)
 VALUES ('00236', 'Cláudia Morais', 0.08) 

UPDATE tbvendedores SET PERCENTUAL_COMISSAO = 0.11 WHERE MATRICULA = '00236';
UPDATE tbvendedores SET NOME  = ' José Geraldo da Fonseca Junior' WHERE MATRICULA = '00233';


///DELETAR TABELA:///

DELETE FROM tbvendedores WHERE MATRICULA ='00233'

// PRIMARY QUERY  É UTILIZADA PARA NÃO PODER EXISTIR DADOS DUPLICADO///

USE sucos;

SELECT * FROM tbproduto;
ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);
DELETE FROM tbproduto WHERE PRODUTO = '1078680';

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

UPDATE tbproduto SET EMBALAGEM = 'Garrafa' WHERE PRODUTO = '1078680';


//ATIVIDADE 10/11/2022:


USE sucos;

ALTER TABLE tbcliente ADD PRIMARY KEY (CPF);

ALTER TABLE tbcliente ADD COLUMN (DATA_NASCIMENTO DATE);



INSERT INTO tbcliente (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
 VALUES ('00388934505', 'João da Silva', 'Rua projetada A número 10', '', 'Vila Roman', 'CARATINGA', 'Amazonas', '2222222', 30, 'M', 10000.00, 2000, 0, '1989-10-05');
 
 
 DROP TABLE  tbcliente;

CREATE TABLE tbvendedores
(MATRICULA VARCHAR(5),
NOME VARCHAR(100),
PERCENTUAL_COMISSAO FLOAT,
DATA_ADMISSÃO DATE,
DE_FERIAS BIT);

SELECT * FROM tbvendedores;

ALTER TABLE tbvendedores ADD PRIMARY KEY (MATRICULA);


 INSERT INTO tbvendedores(MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSÃO, DE_FERIAS)
 VALUES ('00237', 'Roberta Martins', 0.11, '2017-03-18', 1);
 
  INSERT INTO tbvendedores(MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSÃO, DE_FERIAS)
 VALUES ('00238', 'Péricles Alves', 0.11, '2016-08-21', 0);
 
 DELETE FROM tbvendedores WHERE MATRICULA ='00237'
 
INSERT INTO tbvendedores(MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSÃO, DE_FERIAS)
 VALUES ('00235', 'Márcio Almeida Silva', 0.08,'2014-08-14', 0);
 
 INSERT INTO tbvendedores(MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSÃO, DE_FERIAS)
 VALUES ('00236', 'Cláudia Morais ', 0.08, '2013-09-17', 1);

////TABLE PRODUTO:


USE sucos;

SELECT * FROM tbproduto;


INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES (
'1037797', 'Clean - 2 Litros - Laranja',
'PET', '2 Litros', 'Laranja', 16.01);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES (
'1000889', 'Sabor da Montanha - 700 ml - Uva',
'Garrafa', '700 ml', 'Uva', 6.31);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES (
'1004327', 'Videira do Campo - 1,5 Litros - Melância',
'PET', '1,5 Litros', 'Melância', 19.51);


USE sucos;

UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE PRODUTO = '544931';

UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';


USE sucos;

DELETE FROM tbproduto WHERE PRODUTO = '1078680';


USE sucos;

ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);


INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);


UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';



////CLIENTE :


USE sucos;

ALTER TABLE tbcliente ADD PRIMARY KEY (CPF);

ALTER TABLE tbcliente ADD COLUMN (DATA_NASCIMENTO DATE);


INSERT INTO tbcliente (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, 
LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
VALUES ('00388934505','João da Silva','Rua projetada A número 10','',
'VILA ROMAN', 'CARATINGA', 'AMAZONAS','2222222',30,'M', 10000.00, 2000,
0, '1989-10-05');

-----------------------------------------------------------------------14/11/2022

USE sucos;

DROP TABLE tbcliente;

DROP TABLE tbproduto;

CREATE TABLE tbcliente
( CPF VARCHAR (11) ,
NOME VARCHAR (100) ,
ENDERECO1 VARCHAR (150) ,
ENDERECO2 VARCHAR (150) ,
BAIRRO VARCHAR (50) ,
CIDADE VARCHAR (50) ,
ESTADO VARCHAR (2) ,
CEP VARCHAR (8) ,
DATA_NASCIMENTO DATE,
IDADE SMALLINT,
SEXO VARCHAR (1) ,
LIMITE_CREDITO FLOAT ,
VOLUME_COMPRA FLOAT ,
PRIMEIRA_COMPRA BIT );

ALTER TABLE tbcliente ADD PRIMARY KEY (CPF);

CREATE TABLE tbproduto
(PRODUTO VARCHAR (20) ,
NOME VARCHAR (150) ,
EMBALAGEM VARCHAR (50) ,
TAMANHO VARCHAR (50) ,
SABOR VARCHAR (50) ,
PRECO_LISTA FLOAT);

ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);


INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','','Água Santa','Rio de Janeiro','RJ','22000000','2000-02-12',18,'M',100000,200000,1);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('2600586709','César Teixeira','Rua Conde de Bonfim','','Tijuca','Rio de Janeiro','RJ','22020001','2000-03-12',18,'M',120000,220000,0);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('95939180787','Fábio Carvalho','R. dos Jacarandás da Península','','Barra da Tijuca','Rio de Janeiro','RJ','22002020','1992-01-05',16,'M',90000,180000,1);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('9283760794','Edson Meilelles','R. Pinto de Azevedo','','Cidade Nova','Rio de Janeiro','RJ','22002002','1995-10-07',22,'M',150000,250000,1);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('7771579779','Marcelo Mattos','R. Eduardo Luís Lopes','','Brás','São Paulo','SP','88202912','1992-03-25',25,'M',120000,200000,1);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5576228758','Petra Oliveira','R. Benício de Abreu','','Lapa','São Paulo','SP','88192029','1995-11-14',22,'F',70000,160000,1);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('8502682733','Valdeci da Silva','R. Srg. Édison de Oliveira','','Jardins','São Paulo','SP','82122020','1995-10-07',22,'M',110000,190000,0);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('1471156710','Érica Carvalho','R. Iriquitia','','Jardins','São Paulo','SP','80012212','1990-09-01',27,'F',170000,245000,0);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('3623344710','Marcos Nougeuira','Av. Pastor Martin Luther King Junior','','Inhauma','Rio de Janeiro','RJ','22002012','1995-01-13',23,'M',110000,220000,1);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('50534475787','Abel Silva ','Rua Humaitá','','Humaitá','Rio de Janeiro','RJ','22000212','1995-09-11',22,'M',170000,260000,0);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5840119709','Gabriel Araujo','R. Manuel de Oliveira','','Santo Amaro','São Paulo','SP','80010221','1985-03-16',32,'M',140000,210000,1);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('94387575700','Walber Lontra','R. Cel. Almeida','','Piedade','Rio de Janeiro','RJ','22000201','1989-06-20',28,'M',60000,120000,1);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura','','Jardins','São Paulo','SP','81192002','1983-12-20',34,'M',200000,240000,0);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5648641702','Paulo César Mattos','Rua Hélio Beltrão','','Tijuca','Rio de Janeiro','RJ','21002020','1991-08-30',26,'M',120000,220000,0);
INSERT INTO tbcliente (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('492472718','Eduardo Jorge','R. Volta Grande','','Tijuca','Rio de Janeiro','RJ','22012002','1994-07-19',23,'M',75000,95000,1);

INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1040107','Light - 350 ml - Melância','Lata','350 ml','Melância',4.555);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1037797','Clean - 2 Litros - Laranja','PET','2 Litros','Laranja',16.008);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1000889','Sabor da Montanha - 700 ml - Uva','Garrafa','700 ml','Uva',6.309);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1004327','Videira do Campo - 1,5 Litros - Melância','PET','1,5 Litros','Melância',19.51);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1088126','Linha Citros - 1 Litro - Limão','PET','1 Litro','Limão',7.004);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('544931','Frescor do Verão - 350 ml - Limão','Lata','350 ml','Limão',2.4595);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1078680','Frescor do Verão - 470 ml - Manga','Garrafa','470 ml','Manga',5.1795);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1042712','Linha Citros - 700 ml - Limão','Garrafa','700 ml','Limão',4.904);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('788975','Pedaços de Frutas - 1,5 Litros - Maça','PET','1,5 Litros','Maça',18.011);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1002767','Videira do Campo - 700 ml - Cereja/Maça','Garrafa','700 ml','Cereja/Maça',8.41);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('231776','Festival de Sabores - 700 ml - Açai','Garrafa','700 ml','Açai',13.312);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('479745','Clean - 470 ml - Laranja','Garrafa','470 ml','Laranja',3.768);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1051518','Frescor do Verão - 470 ml - Limão','Garrafa','470 ml','Limão',3.2995);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1101035','Linha Refrescante - 1 Litro - Morango/Limão','PET','1 Litro','Morango/Limão',9.0105);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('229900','Pedaços de Frutas - 350 ml - Maça','Lata','350 ml','Maça',4.211);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1086543','Linha Refrescante - 1 Litro - Manga','PET','1 Litro','Manga',11.0105);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('695594','Festival de Sabores - 1,5 Litros - Açai','PET','1,5 Litros','Açai',28.512);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('838819','Clean - 1,5 Litros - Laranja','PET','1,5 Litros','Laranja',12.008);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('326779','Linha Refrescante - 1,5 Litros - Manga','PET','1,5 Litros','Manga',16.5105);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('520380','Pedaços de Frutas - 1 Litro - Maça','PET','1 Litro','Maça',12.011);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1041119','Linha Citros - 700 ml - Lima/Limão','Garrafa','700 ml','Lima/Limão',4.904);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('243083','Festival de Sabores - 1,5 Litros - Maracujá','PET','1,5 Litros','Maracujá',10.512);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('394479','Sabor da Montanha - 700 ml - Cereja','Garrafa','700 ml','Cereja',8.409);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('746596','Light - 1,5 Litros - Melância','PET','1,5 Litros','Melância',19.505);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('773912','Clean - 1 Litro - Laranja','PET','1 Litro','Laranja',8.008);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('826490','Linha Refrescante - 700 ml - Morango/Limão','Garrafa','700 ml','Morango/Limão',6.3105);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('723457','Festival de Sabores - 700 ml - Maracujá','Garrafa','700 ml','Maracujá',4.912);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('812829','Clean - 350 ml - Laranja','Lata','350 ml','Laranja',2.808);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('290478','Videira do Campo - 350 ml - Melância','Lata','350 ml','Melância',4.56);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('783663','Sabor da Montanha - 700 ml - Morango','Garrafa','700 ml','Morango',7.709);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('235653','Frescor do Verão - 350 ml - Manga','Lata','350 ml','Manga',3.8595);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1002334','Linha Citros - 1 Litro - Lima/Limão','PET','1 Litro','Lima/Limão',7.004);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1013793','Videira do Campo - 2 Litros - Cereja/Maça','PET','2 Litros','Cereja/Maça',24.01);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1096818','Linha Refrescante - 700 ml - Manga','Garrafa','700 ml','Manga',7.7105);
INSERT INTO tbproduto (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1022450','Festival de Sabores - 2 Litros - Açai','PET','2 Litros','Açai',38.012);



BETWEEN -> IGUAL OU MAIOR ENTRE O VALOR;

Quando usamos o comando BETWEEN (entre) já estávamos aprendendo mais ou menos sobre como funciona o filtro composto, 
visto que quando inserimos essa cláusula estamos impondo a seguinte condição:
 me retorne todos os registros que são maiores ou iguais ao valor indicado primeiro e menores ou iguais a outro valor especificado.
 
 SELECT * FROM tbproduto;

SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;
SELECT * FROM tbproduto WHERE PRECO_LISTA >= 16.007;
SELECT * FROM tbproduto WHERE PRECO_LISTA <= 16.009;


SELEÇÃO COMPOSTA QUE TEM MAID DE UMA CONDIÇÃO :
SELECT * FROM tbcliente WHERE (IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M')
 OR (cidade = 'Rio de Janeiro' OR BAIRRO = 'Jardins');
 
------ATIVIDADE 16/11/2022---------------------------------------------------------------------------------------------------------------------------------


EXEMPLO:  SELECT * FROM tab WHERE campo LIKE '<condição>';


 Quantos clientes possuem o último sobrenome Mattos?

 select * from tabela_de_clientes;
 
 SELECT * FROM tabela_de_clientes WHERE NOME LIKE '%Mattos';
 
 Por fim, faremos a consulta do texto “Maça” apenas para embalagens PET.
 
  SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maça%' AND EMBALAGEM='PET';
  
  
Quais são os bairros da cidade do Rio de Janeiro que possuem clientes? 7 bairros!

SELECT * FROM tabela_de_clientes;
SELECT DISTINCT BAIRRO FROM tabela_de_clientes WHERE ESTADO = 'RJ'; 

limit é usado para limitar numeros de consultas.
SELECT * FROM tabela LIMIT 5  -> Limitando a mostrar 5 linhas da tabela.

SELECT * FROM tabela LIMIT 2,3; -> Pegar apartir da 2 linha, 3 linhas.

Queremos obter as 10 primeiras vendas do dia 01/01/2017. Qual seria o comando SQL para obter este resultado?

 SELECT * FROM notas_fiscais WHERE DATA_VENDA = '2017-01-01' LIMIT 10;
 
 
C
Quando fazemos uma seleção de dados num banco, eles são exibidos na ordem natural
 que a informação está armazenada na tabela. Mas nós podemos, através do comando ORDER BY,
 fazer com que o resultado da consulta venha ordenado por determinados critérios. 
 Basta especificar o campo pelo qual se deseja organizar os dados, por exemplo:

SELECT * FROM tab ORDER BY campo;


SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC;


Qual (ou quais) foi (foram) a(s) maior(es) venda(s) do produto “Linha Refrescante - 1 Litro - Morango/Limão”, em quantidade? (Obtenha este resultado usando 2 SQLs).


SELECT CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, PRECO_DE_LISTA FROM tabela_de_produtos
WHERE NOME_DO_PRODUTO ='Linha Refrescante - 1 Litro - Morango/Limão';


SELECT * FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = 1101035 order by QUANTIDADE DESC;

------ATIVIDADE 22/11/2022---------------------------------------------------------------------------------------------------------------------------------

Aproveitando o exercício do vídeo anterior quantos itens de venda existem com a maior quantidade do produto '1101035'?


SELECT * FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '1101035';


SELECT CODIGO_DO_PRODUTO, MAX(QUANTIDADE) AS MAIOR_QUANTIDADE FROM itens_notas_fiscais 
WHERE CODIGO_DO_PRODUTO = '1101035';

SELECT COUNT(*) FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035' AND QUANTIDADE = 99;

Quais foram os clientes que fizeram mais de 2000 compras em 2016?

SELECT CPF, COUNT(*) FROM notas_fiscais WHERE YEAR(DATA_VENDA) = 2016 group by CPF  HAVING count(*) > 2000;



CASE
    WHEN <condição1> THEN <Valor1>
    WHEN <condição2> THEN <Valor2>
    (...)
    WHEN <condiçãoN> THEN <ValorN>
    ELSE ValorELSE
END

Veja o ano de nascimento dos clientes e classifique-os como: Nascidos antes de 1990 são velhos, 
nascidos entre 1990 e 1995 são jovens e nascidos depois de 1995 são crianças. 
Liste o nome do cliente e esta classificação.
RESP:
SELECT NOME,
CASE 
	 WHEN YEAR(DATA_DE_NASCIMENTO) < 1990 THEN 'VELHOS'
	 WHEN YEAR(DATA_DE_NASCIMENTO) >=1990 AND YEAR(DATA_DE_NASCIMENTO) <=1995  THEN 'JOVENS'
     ELSE 'CRIANÇA'
 END AS 'CLASSIFICAÇÃO IDADE' 
  FROM tabela_de_clientes;
  
  
  
  
jOINS 

SELECT A.NOME, B.HOBBY FROM 
TABELA_ESQUERDA A
INNER JOIN TABELA_DIREITA B
ON A.IDENTIFICADOR = B.IDENTIFICADOR;



Obtenha o faturamento anual da empresa. 
Leve em consideração que o valor financeiro das vendas consiste em multiplicar a quantidade pelo preço.
  
SELECT YEAR(DATA_VENDA),CAST(SUM(QUANTIDADE * PRECO) AS DECIMAL(20,2)) AS FATURAMENTO_ANUAL
FROM itens_notas_fiscais A INNER JOIN notas_fiscais B
ON A.NUMERO=B.NUMERO GROUP BY YEAR(DATA_VENDA);

 ---------------------------------23/11/2022-------------------------------------------------------------------------------------------------------------
 SUB-CONSULTAS :
 
SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;


Qual seria a consulta usando subconsulta que seria equivalente a:
  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000
  
  RESP:
  SELECT X.CPF, X.CONTADOR FROM 
(SELECT CPF, COUNT(*) AS CONTADOR FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF) X WHERE X.CONTADOR > 2000



--------------------------------------24/11/2022------------------------------------------------------------------------------------------------------------

Faça uma consulta listando o nome do cliente e o endereço completo (Com rua, bairro, cidade e estado):
	SELECT NOME, CONCAT(ENDERECO_1, ' ', BAIRRO, ' ', CIDADE,' ', ESTADO) AS COMPLETO FROM tabela_de_clientes
	
	
Crie uma consulta que mostre o nome e a idade atual dos clientes:
SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS    IDADE
FROM  tabela_de_clientes;



-------------------------------------25/11/2022-----------------------------------------------------------------------------------------------------------------
Na tabela de notas fiscais temos o valor do imposto.
Já na tabela de itens temos a quantidade e o faturamento. 
Calcule o valor do imposto pago no ano de 2016 arredondando para o menor inteiro.
RESP:
SELECT YEAR(DATA_VENDA) AS ANO, floor(SUM(((QUANTIDADE * PRECO) * B.IMPOSTO))) AS IMPOSTO_PAGO_ANO
FROM itens_notas_fiscais A
INNER JOIN notas_fiscais B ON A.NUMERO=B.NUMERO  WHERE YEAR(DATA_VENDA)=2016 GROUP BY YEAR(DATA_VENDA) ;

Listando expressão natural:


Queremos construir um SQL cujo resultado seja, para cada cliente:

“O cliente João da Silva faturou 120000 no ano de 2016”.

Somente para o ano de 2016.

RESP:
SELECT CONCAT('Cliente ', NOME,' faturou ', ROUND(SUM((QUANTIDADE*PRECO)),2),' no ano de ', YEAR(DATA_VENDA)) AS RESULTADO
FROM tabela_de_clientes A INNER JOIN notas_fiscais B ON A.CPF=B.CPF 
INNER JOIN itens_notas_fiscais C ON B.NUMERO = C.NUMERO WHERE YEAR(DATA_VENDA) = 2016 GROUP BY NOME;




---------------------------------------28/11/2022---------------------------------------------------------------------------------------------------------------------
/*A consulta do relatório*/


Nesta aula construímos um relatório que apresentou os clientes que tiveram vendas inválidas. 
Complemente este relatório listando somente os que tiveram vendas inválidas e calculando a diferença entre o limite de venda máximo e o realizado, em percentuais.

Dica:

Capture a SQL final da aula.

Filtre somente as linhas onde

(X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0

Liste a coluna de X.QUANTIDADE_LIMITE

Crie uma nova coluna fazendo a fórmula:

(1 - (X.QUANTIDADE_LIMITE/X.QUANTIDADE_VENDAS)) * 100

RESP:
SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_LIMITE,
CASE 
    WHEN (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0 THEN 'INVÁLIDA'
    ELSE 'VÁLIDA' 
END AS STATUS_VENDA, round((1-(X.QUANTIDADE_LIMITE/X.QUANTIDADE_VENDAS))*100,2) AS PORCENTUAL
FROM (
SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS , 
MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN TABELA_DE_CLIENTES TC 
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m')) X
WHERE (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0  ;

/*EXEMPLO */

SELECT VENDA_SABOR.SABOR, VENDA_SABOR.ANO, VENDA_SABOR.QUANTIDADE,
ROUND((VENDA_SABOR.QUANTIDADE/VENDA_TOTAL.QUANTIDADE) * 100, 2) AS PARTICIPACAO FROM 
(SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)) AS VENDA_SABOR
INNER JOIN 
(SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)) AS VENDA_TOTAL
ON VENDA_SABOR.ANO = VENDA_TOTAL.ANO
ORDER BY VENDA_SABOR.QUANTIDADE DESC


Vendas percentuais por tamanho:

Modifique o relatório mas agora para ver o ranking das vendas por tamanho.

Dica: Pode parecer difícil mas este é o exercício mais fácil de resolver.


SELECT  VENDA_SABOR.TAMANHO,VENDA_SABOR.ANO, VENDA_SABOR.QUANTIDADE,
ROUND((VENDA_SABOR.QUANTIDADE/VENDA_TOTAL.QUANTIDADE) * 100, 2) AS PARTICIPACAO FROM 
(SELECT TP.TAMANHO, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.TAMANHO, YEAR(NF.DATA_VENDA)) AS VENDA_SABOR
INNER JOIN 
(SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)) AS VENDA_TOTAL
ON VENDA_SABOR.ANO = VENDA_TOTAL.ANO
ORDER BY VENDA_TOTAL.QUANTIDADE 
;
