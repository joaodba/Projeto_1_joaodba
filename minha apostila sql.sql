
#SQL - Server



**ATALHOS**

* CTRL + S = Salva o script
* CTRL + F = Pesquisa ou substitui informação dentro da consulta ou todas as consutlas abertas
* CTRL + R = Remove ou exibe janela de consultaSELECT =  Realiza uma consulta na base de dados com retorno.



## Tipos de Dados SQL

| Numeros Exatos |   Data e Hora   | Cadeia de Caracteres |  Unicode  |
| :------------: | :-------------: | :------------------: | :-------: |
|      int       |    **date**     |         char         |   nchar   |
|     money      | datetimeoffaset |     **varchar**      | nvarchar  |
|    decimal     |    datetime2    |         text         |   ntext   |
|  **numeric**   |  smalldatetime  |       Unicode        |  Binario  |
|      bit       |    datetime     |        nchar         |  binary   |
|    smallint    |      time       |       nvarchar       | varbinary |
|   smallmoney   |     Numeros     |        ntext         |  imagem   |
|     bigint     |    **float**    |                      |           |
|    tinyint     |      real       |                      |           |



##SELECT (SELECIONAR) = Realiza um consulta no banco de dados.

```sql
SELECT * FROM nome_da_tabela
--O '*' (asteristico) significa selecionar todas as linhas com base na condição após o 'where'
```

```sql
SELECT * FROM nome_da_tabela WHERE nome_da_coluna LIKE = nome_da_informação
--consulta com base em uma condição
```

```sql
SELECT nome_da_coluna1, nome_da_coluna2 FROM nome_da_tabela where nome_da_coluna_condição like 'A'
--consulta com retorno de 2 tabelas com base em uma condição
```

~~~sql
SELECT * FROM nome_da_tabela where (SELECT nome_da_coluna2 FROM nome_tabela2 where nome_coluna2 like = 'A'  )
--consulta com condição usando outro select
~~~



## SELECT DISTINCT (SELECIONAR ÚNICO) = Realiza uma consulta com valores nao duplicados, se estiver duplicados retornará apenas um deles.

```sql
SELECT DISTINCT * FROM nome_da_tabela;
--percorre toda a tabela e retorna valores sem duplicidade
```

```sql
SELECT DISTINCT nome_da_coluna1, nome_da_coluna2 FROM nome_da_tabela
--percorre toda a tabela e retorna valores sem duplicidade apenas das colunas fornecidas
```



## WHERE (AQUI) = É uma cláusula para fazer um consulta em uma coluna específica, com uma condição.

```sql
SELECT * FROM nome_da_tabela
WHERE nome_da_coluna like 'joao'
--percorre toda a tabela e retorna as linhas que possui o nome joão na coluna 1
```

```sql
SELECT nome_da_tabela FROM nome_da_tabela
WHERE nome_da_coluna2 = 1;
--condição direta sem 'like'
```



## AND, OR, NOT, AND NOT( E, OU, E NAO) = São operadores usados em consultas para trazer mais valores, ou usados como condição para trazer esses valores.

**AND**

```sql
SELECT * FROM nome_da_tabela WHERE condição1 AND condição2 AND condition3 ...
--retorna os dados com base nas condições estabelecidas
```

**OR**

```sql
SELECT * FROM nome_da_tabela WHERE condição1 OR condição2 OR condition3 OR ...
----retorna os dados com base nas condições estabelecidas, uma após a outra, caso a primeira nao tenha resultado positivo
```

**NOT**

```sql
SELECT * FROM nome_da_tabela WHERE NOT nome_da_coluna1 = 3
--retorna os dados, con exceção da linha em que contém a condição
```

**AND NOT**

~~~sql
SELECT * FROM nome_da_tabela WHERE NOT coluna1 ='dado1' AND NOT coluna2 ='dado2'
--retorna todos os dados com excelção das duas condições
~~~



##ORDER BY( ORDENE POR ) = É usado para retornar a consulta em ordem crescente ou decrescente.

**Crescente**

```sql
SELECT * FROM tabela ORDER BY coluna ASC
```

**Decrescente**

```sql
SELECT * FROM tabela ORDER BY coluna DESC
```



##INSERT INTO ( INSERIR DENTRO!!! ) = Inserir  um novo valor na tabela 

```sql
INSERT INTO nome_tabela (coluna1, coluna2) VALUES (valor1, valor2)
--irá inserir dois valores nas colunas específicadas
```



##NULL, NOT NULL ( VAZIO, NAO VAZIO)

~~~sql
SELECT  coluna1, coluna2 FROM tabela
   WHERE coluna1 IS NULL;
--essa consulta está informando que a coluna 1 RETORNARÁ valores nulos
~~~

~~~sql
SELECT coluna1, coluna2 FROM tabela
   WHERE coluna2 IS NOT NULL;
--essa consulta está informando que a coluna 2 NÃO tratá valores nulos
~~~



##UPDATE ( ATUALIZAR!!! ) = Substitui as informações em uma ou mais tabelas

```sql
UPDATE tabela1
SET nome_coluna = 'valor novo'
WHERE coluna_condição = 'valor'
```

**Exemplo**

**Tabela (funcionarios)**

| **ID** | **Nome**        | **Departamento** |
| ------ | --------------- | ---------------- |
| 1      | Pedro Henrique  | Compras          |
| 2      | Lucas da Silva  | Administrativo   |
| 3      | Luana Gabriela  | Comercial        |
| 4      | Renato Lazuna   | Administrativo   |
| 5      | Rafaela Barrosa | Administrativo   |
| 6      | Arline da Costa | Comercial        |
| 7      | Giseli Pascoa   | Comercial        |
| 8      | Renan Pereira   | Compras          |

**Tabela (supervisor)**

| **Id_funcionario** | **data_admissao** |
| ------------------ | ----------------- |
| 1                  | 2012-05-05        |
| 2                  | 2015-04-01        |
| 3                  | 2015-01-01        |
| 4                  | 2017-01-01        |
| 5                  | 2017-02-01        |
| 6                  | 2017-01-01        |

~~~sql
UPDATE
  funcionario F
SET
  departamento = 'Supervisão Comercial'
WHERE id IN
  ( SELECT id_funcionario 
   FROM supervisor S 
   WHERE S.id_funcionario = F.id 
   AND F.departamento = 'Comercial')
--essa query fará com que todos os funcionários do departamento 'comercial' sejam 'supervisores'
~~~



##DELETE ( DELETAR!!! ) = Apagar os dados da tabela

```sql
DELETE FROM nome_tabela WHERE nome_coluna = 'valor'
--colocar WHERE logo após DELETE EX: DELETE WHERE
```



## SELECT TOP ( SELECIONA OS PRIMERIOS ) = Seleciona uma quantidada específica de linhas da tabela

~~~sql
SELECT top 10 * FROM nome_tabela
--seleciona as primeiras 10 linhas da tabela
~~~

~~~sql
SELECT TOP 15 nome_coluna FROM nome_tabela
--seleciona as primeiras 15 linhas apenas da coluna especificada
~~~



##MIN ( MÍNIMO ) = Seleciona o menor valor da condição 

```sql
SELECT MIN(nome_coluna) FROM tabela WHERE condição;
--consulta mínimo valor com condição
```

~~~sql
select MIN(nome_coluna) from tabela
--consulta mínimo valor sem condição
~~~



##MAX ( MÁXIMO ) = Seleciona o maior valor

```sql
SELECT MAX(nome_da_coluna) FROM nome_tabela WHERE condição;
--retorna o maior valor da coluna com base em uma condição
```



##COUNT ( CONTAR ) = Faz a contagem dos valores

```sql
SELECT COUNT(nome_coluna) FROM nome_tabela;
--retorna a quantidade de linhas da tabela
```

~~~sql
select COUNT(coluna_x) from coluna_y with(nolock) where coluna_x = 'valor'
--a consulta acima conta quantas veses aparece a informação 'valor' da coluna_x na tabela_y
~~~



##AVG ( MÉDIA ) = Faz uma média dos valores

```sql
SELECT AVG(coluna) FROM tabela
--retorna o valor médio de uma coluna numérica
```



##SUM ( SOMAR ) = Soma todos os valores

```sql
--retorna a soma total de uma coluna numérica
SELECT SUM(column_name) FROM table_name WHERE condition;
```



##LIKE ( PARECIDO ) = É usado em uma cláusula "where" como uma condição para retornar um ou mais valores específicos

```sql
SELECT coluna1, coluna2 FROM tabela WHERE coluna1 LIKE 13;
--retornar a consulta con a condição da coluna ter o valor 13

/*### OUTROS EXEMPLOS ###*/
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE condição 1 AND condição 2;
--com condição OR
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE condição 1 OR condição 2
--procura clientes com o nome começando com 'F'
SELECT * FROM Customers
WHERE CustomerName LIKE 'F%';
--procura clientes com o nome terminando com 'F'
SELECT * FROM Customers
WHERE CustomerName LIKE '%F';
--procura clientes que possuam 'ei' em qual quer posição
SELECT * FROM Customers
WHERE CustomerName LIKE '%ei%';
--procura clientes que possuem 'u' na 3º posição, '_' = um caracter
SELECT * FROM Customers
WHERE CustomerName LIKE '__u%';
--procura cliente que começar com 'a' e termina com 'o'
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';
--procura cliente que NÃO POSSUI 'a'
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';
--seleciona todos que iniciam com b,c, ou d
SELECT * FROM Customers
WHERE City LIKE '[bcd]%';
```



##IN ( EM ) = Usado como uma condição para uma valor que está 'em' um determinado campo

```sql
SELECT * FROM tabela WHERE coluna_país IN ('Brasil', 'Alemanha', 'Japão')
--Seleciona todos os clientes que são dos paises entre ( )
SELECT coluna1, coluna2 FROM tabela WHERE coluna3 in (valor_condição1, valor_condição2)
--seleciona os valores da coluna 1 e coluna 2 com base nos valores que estão na coluna 3 da mesma tabela
```



##BETWEEN ( ESTEJA ENTRE )  = Usado como condição para procurar um valor que estar 'entre' dois determinados valores

```sql
SELECT * FROM Produtos WHERE Price BETWEEN 10 AND 20;
--seleciona todos os preços que estão entre 10 e 20
```

Outro

```sql
--seleciona produtos que estão entre 10 e 20, mas não possuem o ID 1,2,3
SELECT * FROM Produtos
WHERE Preço BETWEEN 10 AND 20
AND CategoriaID NOT IN (1,2,3);
```

Exemplo com texto

```sql
SELECT * FROM Produtos
WHERE NomeProduto BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY NomeProduto;
```



##ALIAS ( APELIDO TEMPORARIO )

```sql
--cria um nome temporário para a tabela
SELECT Coluna1 AS alias_name
FROM nome_tabela;
```

Exemplo

```sql
SELECT ClienteID AS ID, NomeCLiente AS Cliente
FROM Clientes;
```



## IS NULL, IS NOT NULL ( É VAZIO, NÃO É VAZIO ) = É  usado para testar valores nulos dentro da tabela

Ex (is null): **select** coluna **from** tabela **where** coluna **is** **null**;

Ex (is not null): **select** coluna **from** tabela **where** coluna **is** **not** **null**;

```sql
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;
```

```sql
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;
```



##Group BY ( AGRUPE POR ) = Faz o agrupamento de linhas de uma tabela, com base na linha de outra coluna da mesma tabela

Geralmente usado com uma condição como:

* Count
* Sum
* AVG

~~~sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
~~~

Ex: Conte Produtos da HP tem na coluna A, com base na coluna B

| Coluna A | Coluna B |
| -------- | -------- |
| HP       | Notebook |
| HP       | Notebook |
| HP       | Gabinete |
| HP       | Notebook |
| HP       | Notebook |
| HP       | Gabinete |
| HP       | Gabinete |

~~~sql
select count(ColunaA) from table with(nolock) Group By ColunaB
--5
--4
~~~



##HAVING ( HAVENDO ) = Cláusula similar á cláusula 'where', usada após o  'GROUP BY'

~~~sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
~~~

EX: A instrução SQL a seguir lista o número de clientes em cada país. Incluir apenas países com mais de 5 clientes:

| CustomerID | CustomerName                       | ContactName        | Address                       | City        | PostalCode | Country |
| ---------- | ---------------------------------- | ------------------ | ----------------------------- | ----------- | ---------- | ------- |
| 1          | Alfreds Futterkiste                | Maria Anders       | Obere Str. 57                 | Berlin      | 12209      | Germany |
| 2          | Ana Trujillo Emparedados y helados | Ana Trujillo       | Avda. de la Constitución 2222 | México D.F. | 05021      | Mexico  |
| 3          | Antonio Moreno Taquería            | Antonio Moreno     | Mataderos 2312                | México D.F. | 05023      | Mexico  |
| 4          | Around the Horn                    | Thomas Hardy       | 120 Hanover Sq.               | London      | WA1 1DP    | UK      |
| 5          | Berglunds snabbköp                 | Christina Berglund | Berguvsvägen 8                | Luleå       | S-958 22   | Sweden  |

Script:

~~~sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;
~~~

--select
select * fom tabela

select * from pessoa_trabalho
select * from pessoa_endereco
select * from pessoa_dados

select * from pessoa_trabalho
select * from pessoa_endereco
```sql
SELECT * FROM nome_da_tabela
--O '*' (asteristico) significa selecionar todas as linhas com base na condição após o 'where'
select * from pessoa_trabalho

SELECT * FROM nome_da_tabela WHERE nome_da_coluna LIKE = nome_da_informação
--consulta com base em uma condição
select * from pessoa_trabalho where funcao='advogado'

SELECT nome_da_coluna1, nome_da_coluna2 FROM nome_da_tabela where nome_da_coluna_condição like 'A'
--consulta com retorno de 2 tabelas com base em uma condição
select codigo_cliente,ramo from pessoa_trabalho where ramo='financeiro'

--SELECT * FROM nome_da_tabela where (SELECT nome_da_coluna2 FROM nome_tabela2 where nome_coluna2 like = 'A'  )
--consulta com condição usando outro select
--select * from pessoa_trabalho where (select rua from pessoa_endereco where rua='centro')

SELECT DISTINCT * FROM nome_da_tabela;
--percorre toda a tabela e retorna valores sem duplicidade
Select DISTINCT * from pessoa_trabalho;

SELECT DISTINCT nome_da_coluna1, nome_da_coluna2 FROM nome_da_tabela
--percorre toda a tabela e retorna valores sem duplicidade apenas das colunas fornecidas
SELECT DISTINCT ramo,funcao FROM pessoa_trabalho;

SELECT * FROM nome_da_tabela
WHERE nome_da_coluna like 'joao'
--percorre toda a tabela e retorna as linhas que possui o nome joão na coluna 1
select * from pessoa_dados where nome_pessoa like 'joao'

SELECT * from pessoa_dados
SELECT * from pessoa_endereco

select * from pessoa_dados
select codigo_cliente,nome_pessoa,cpf_pessoa from pessoa_dados where cpf_pessoa='76585312509'

SELECT * FROM nome_da_tabela WHERE condição1 AND condição2 AND condition3 ...
--retorna os dados com base nas condições estabelecidas
select * from pessoa_dados where nome_pessoa='maria' and cpf_pessoa='33422311278' and numero_telefone='91943345566'

SELECT * FROM nome_da_tabela WHERE condição1 OR condição2 OR condition3 OR ...
----retorna os dados com base nas condições estabelecidas, uma após a outra, caso a primeira nao tenha resultado positivo
select * from pessoa_dados WHERE nome_pessoa='maria' or nome_pessoa='joao'

SELECT * FROM nome_da_tabela WHERE NOT nome_da_coluna1 = 3
--retorna os dados, con exceção da linha em que contém a condição
select * from pessoa_dados WHERE NOT codigo_cliente = 1024

SELECT * FROM nome_da_tabela WHERE NOT coluna1 ='dado1' AND NOT coluna2 ='dado2'
--retorna todos os dados com excelção das duas condições
SELECT * FROM pessoa_dados WHERE NOT nome_pessoa='MARIA' AND NOT nome_pessoa='JOAO'

SELECT * FROM tabela ORDER BY coluna ASC
SELECT * FROM pessoa_dados ORDER BY nome_pessoa ASC

SELECT * FROM tabela ORDER BY coluna DESC
SELECT * FROM pessoa_dados ORDER BY nome_pessoa DESC

INSERT INTO nome_tabela (coluna1, coluna2) VALUES (valor1, valor2)
--irá inserir dois valores nas colunas específicadas
INSERT INTO pessoa_dados (codigo_cliente,nome_pessoa,cpf_pessoa,numero_telefone) VALUES (1019,'PIERRE',' ',' ');

UPDATE tabela1
SET nome_coluna = 'valor novo'
WHERE coluna_condição = 'valor'

UPDATE pessoa_dados
SET numero_telefone = '91987352394'
WHERE codigo_cliente = '1019'



select * from Funcionarios
insert into Funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (1,'Pedro Henrique','Compras');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (2,'Lucas da Silva','Administrativo');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (3,'Luana Gabriela','Comercial');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (4,'Renato Lazuna','Administrativo');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (5,'Rafaela Barrosa','Administrativo');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (6,'Arline da Costa','Comercial');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (7,'Gisele Pascoa','Comercial');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (8,'Renan Pereira','Compras');

create table Supervisor
(
	Id_funcionario int not null,
	data_admissao datetime 
);
select * from supervisor

insert into supervisor (Id_funcionario,data_admissao) values (1,'2012-05-05');
insert into supervisor (Id_funcionario,data_admissao) values (2,'2015-01-01');
insert into supervisor (Id_funcionario,data_admissao) values (3,'2017-01-01');
insert into supervisor (Id_funcionario,data_admissao) values (4,'2017-02-01');
insert into supervisor (Id_funcionario,data_admissao) values (5,'2017-01-01');

update supervisor
set data_admissao='2015-05-05'
where Id_funcionario=1

select * from funcionarios
UPDATE
  Funcionarios
SET
  Departamento = 'Supervisores'
WHERE Id_funcionario IN
  ( SELECT id_funcionario 
   FROM Funcionarios
   WHERE id_funcionario = Id_funcionario
   AND departamento = 'Comercial');
--essa query fará com que todos os funcionários do departamento 'comercial' sejam 'supervisores'
	

SELECT top 5 * FROM Funcionarios
--seleciona as primeiras 10 linhas da tabela

##MIN ( MÍNIMO ) = Seleciona o menor valor da condição 

```sql
SELECT MIN(codigo_cliente) FROM pessoa_endereco where numero=23;
--consulta mínimo valor com condição

select * from pessoa_endereco

```sql
SELECT COUNT(codigo_cliente) FROM pessoa_endereco;
--retorna a quantidade de linhas da tabela
```sql
SELECT AVG(numero) FROM pessoa_endereco
--retorna o valor médio de uma coluna numérica

select * from pessoa_endereco

SELECT rua, numero,cidade
FROM pessoa_endereco
WHERE rua LIKE 'centro' and cidade='belem';
--com condição OR
SELECT rua, numero
FROM pessoa_endereco
WHERE rua LIKE 'centro' OR cidade='cameta';
--procura clientes com o nome começando com 'F'
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE 'F%';
--procura clientes com o nome terminando com 'F'
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE '%o';
--procura clientes que possuam 'ei' em qual quer posição
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE '%er%';
--procura clientes que possuem 'u' na 3º posição, '_' = um caracter
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE '__u%';
--procura cliente que começar com 'a' e termina com 'o'
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE 'a%o';
--procura cliente que NÃO POSSUI 'a'
SELECT * FROM pessoa_dados
WHERE nome_pessoa NOT LIKE 'a%';
--seleciona todos que iniciam com b,c, ou d
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE '[bcd]%';
```

select * from cadastros
##IN ( EM ) = Usado como uma condição para uma valor que está 'em' um determinado campo

```sql
SELECT * FROM cadastros WHERE country IN ('France', 'Germany', 'Canada');
--Seleciona todos os clientes que são dos paises entre ( )

SELECT customername, contactname FROM cadastros WHERE postalcode in ('5021', 'Germany', '67000', 'France');
--seleciona os valores da coluna 1 e coluna 2 com base nos valores que estão na coluna 3 da mesma tabela
```

##BETWEEN ( ESTEJA ENTRE )  = Usado como condição para procurar um valor que estar 'entre' dois determinados valores

select * from produtos
SELECT * FROM Produtos WHERE prince BETWEEN 10 AND 20;
--seleciona todos os preços que estão entre 10 e 20
```

	select * from produtos
Exemplo com texto

SELECT * FROM cadastros
WHERE customername BETWEEN 'Antonio Moreno Taqueria' AND 'Bs Beverages'
ORDER BY contactname;

##ALIAS ( APELIDO TEMPORARIO )
select * from pedidos
--cria um nome temporário para a tabela
SELECT employeeId AS teste
FROM pedidos;
```

Exemplo
select * from cadastros
SELECT customerID AS ID, contactname AS Cadastro
FROM cadastros;
```

Geralmente usado com uma condição como:

* Count
* Sum
* AVG
select * from cadastros
~~~sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
~~~

Ex: Conte Produtos da HP tem na coluna A, com base na coluna B

| Coluna A | Coluna B |
| -------- | -------- |
| HP       | Notebook |
| HP       | Notebook |
| HP       | Gabinete |
| HP       | Notebook |
| HP       | Notebook |
| HP       | Gabinete |
| HP       | Gabinete |

~~~sql
select count(ColunaA) from table with(nolock) Group By ColunaB
--5
--4
~~~



##HAVING ( HAVENDO ) = Cláusula similar á cláusula 'where', usada após o  'GROUP BY'

~~~sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
~~~

EX: A instrução SQL a seguir lista o número de clientes em cada país. Incluir apenas países com mais de 5 clientes:

Script:

~~~sql
SELECT COUNT Country
FROM Cadastros
GROUP BY Country
HAVING COUNT Country > 3;



select nome, admissao from cadfun where ADMISSAO between '09/01/1980' and '11/12/1980';

select nome, admissao from cadfun where ADMISSAO between '05/01/1980' and '10/12/2022';

select nome, admissao from cadfun 
where ADMISSAO between '05/01/1980' and '10/12/2022' order by nome asc;

select nome, admissao from cadfun
where ADMISSAO between '05/01/1980' and '10/12/2022' order by nome desc;

select nome, admissao from cadfun
where ADMISSAO between '01/10/2016' and '22/10/2016';

select nome, admissao from cadfun
where DEPTO='5';

select nome, DEPTO, admissao from cadfun
where admissao between '05/01/1980' and '10/12/2022' and DEPTO='5';

select nome,depto, lower(nome) from cadfun where (depto='3') or (depto='5');

select nome, admissao,DEPTO from cadfun
where ADMISSAO between ('05/01/1900') and ('31/10/2022') and DEPTO='3' or depto='5';

select nome, DEPTO, FUNCAO,ADMISSAO from cadfun
where ADMISSAO between ('01/08/1900') and ('15/10/2022') and FUNCAO='analista';



SELECT * FROM cadfun

SELECT DEPTO, COUNT(*) FROM cadfun GROUP BY DEPTO;

SELECT FUNCAO, COUNT(*) FROM CADFUN GROUP BY FUNCAO;

SELECT DEPTO, SUM(SALARIO) FROM cadfun GROUP BY DEPTO;

SELECT DEPTO, SUM(SALARIO) FROM cadfun WHERE DEPTO IN ('2','4') GROUP BY DEPTO;

SELECT DEPTO, SUM(SALARIO) FROM cadfun GROUP BY DEPTO HAVING SUM(SALARIO) > 8000;

SELECT * FROM morto
SELECT * FROM cadfun

SELECT CODFUN, NOME FROM cadfun UNION SELECT CODFUN, NOME FROM MORTO;

INSERT INTO MORTO VALUES (21,'EPAMINONDAS DA SILVA','4','PROGRAMADOR',1155.00,'10/10/2016',2);

SELECT CODFUN, NOME FROM cadfun UNION SELECT CODFUN, NOME FROM MORTO;
SELECT CODFUN, NOME FROM cadfun UNION ALL SELECT CODFUN, NOME FROM MORTO;


SELECT NOME, CIDADE, ESTADO FROM cliente;

INSERT INTO cliente VALUES ('820','MECANICA SAO PAULO', 'R. DO MACUCO, 99','SANTO ANTONIO','ES','29810-020');
INSERT INTO cliente VALUES ('170','POSTO BRASIL LTDA', 'AV. IMPERIO, 85','GUAGIRUS','BA','42837-000');
INSERT INTO cliente VALUES ('340','TRANSP. CARGA PESADA LTDA', 'AV. DOS AUTONOMISTAS, 1000','OSASCO','SP','06020-010');
INSERT INTO cliente VALUES ('100','MICROS INFORMATICA S/A', 'R. DAS PALMEIRAS, 4 - LOJA 2','SAO PAULO','SP','01226-010');
INSERT INTO cliente VALUES ('750','IMOBILIARIA PAVAO', 'AV. BRASIL, 105','RIO DO PRADO','MG','39940-111');
INSERT INTO cliente VALUES ('860','ASSIS CONTABIL S/C LTDA', 'R. DO MONUMENTO, 550','SANTO AMARO','BA','44200-090');
INSERT INTO cliente VALUES ('230','SUPERMERCADO BOTAFOGO', 'R. DA LAGOA, 999','RIO DAS OSTRAS','RJ','28890-540');
INSERT INTO cliente VALUES ('150','MARCONDES E IRMAO LTDA', 'R. DO ORATORIO, 66','ROSARIO OESTE','MT','78470-010');
INSERT INTO cliente VALUES ('800','DOCEIRA PAO DE ACUCAR', 'R. MARTINS PENA, 200','SANTO ANDRE','SP','09190-700');
INSERT INTO cliente VALUES ('990','METALURGICA FOGO E FERRO', 'R. ARTUR BERNANDES, 3500','SANTO ANDRE','SP','09193-410');
INSERT INTO cliente VALUES ('500','JOSE DANTAS E FILHOS S/C LTDA', 'AV. IPIRANGA, 1000','LUCRECIA','RN','59805-010');
INSERT INTO cliente VALUES ('300','PCTEC - MICROCOMPUTADORES S/A', 'R. CAIS DO PORTO, ARMAZEM 3','SANTOS','SP','11000-005');


SELECT * FROM venda
SELECT * FROM cliente

SELECT venda.DUPLIC, cliente.NOME from cliente, venda
where cliente.CODCLI = venda.CODCLI;

SELECT  cliente.NOME, venda.DUPLIC, venda.VALOR from cliente, venda
where cliente.CODCLI = venda.CODCLI ORDER BY cliente.NOME

select * from cadfun;

select AVG(FILHOS) FROM cadfun;

select AVG(FILHOS) FROM cadfun
WHERE DEPTO='5';

SELECT COUNT(salario) FROM cadfun
WHERE DEPTO='5';

SELECT nome, salario, depto FROM cadfun
WHERE DEPTO='5';

SELECT sum(salario) FROM cadfun
WHERE funcao='analista';

SELECT max(salario) FROM cadfun
WHERE depto='5';

SELECT sum(salario) FROM cadfun
WHERE funcao='analista';

SELECT sum(salario) FROM cadfun
WHERE funcao='analista' and depto='2';

SELECT NOME, admissao from cadfun
where day(admissao)=10;

SELECT NOME, admissao from cadfun
where  day(admissao)>5 and day(admissao)<10;

SELECT NOME, admissao from cadfun
where  day(admissao)>5 and day(admissao)<10 order by NOME;

SELECT NOME, admissao from cadfun
where  day(admissao)>5 and day(admissao)<10 order by NOME desc;

SELECT NOME, admissao from cadfun
where  admissao<='20/09/2006';

SELECT NOME, admissao, datename(month,ADMISSAO) from cadfun
where depto='5';

select nome, depto, lower(nome) from cadfun
where depto='3' or depto='5';

SELECT NOME, admissao, depto from cadfun
where  day(admissao)>5 and day(admissao)<10 and depto='3' or depto='5';

SELECT NOME, admissao, depto from cadfun
where  day(admissao)>30 and day(admissao)<20 and depto='3' or depto='5';


--select
select * fom tabela

select * from pessoa_trabalho
select * from pessoa_endereco
select * from pessoa_dados

select * from pessoa_trabalho
select * from pessoa_endereco
```sql
SELECT * FROM nome_da_tabela
--O '*' (asteristico) significa selecionar todas as linhas com base na condição após o 'where'
select * from pessoa_trabalho

SELECT * FROM nome_da_tabela WHERE nome_da_coluna LIKE = nome_da_informação
--consulta com base em uma condição
select * from pessoa_trabalho where funcao='advogado'

SELECT nome_da_coluna1, nome_da_coluna2 FROM nome_da_tabela where nome_da_coluna_condição like 'A'
--consulta com retorno de 2 tabelas com base em uma condição
select codigo_cliente,ramo from pessoa_trabalho where ramo='financeiro'

--SELECT * FROM nome_da_tabela where (SELECT nome_da_coluna2 FROM nome_tabela2 where nome_coluna2 like = 'A'  )
--consulta com condição usando outro select
--select * from pessoa_trabalho where (select rua from pessoa_endereco where rua='centro')

SELECT DISTINCT * FROM nome_da_tabela;
--percorre toda a tabela e retorna valores sem duplicidade
Select DISTINCT * from pessoa_trabalho;

SELECT DISTINCT nome_da_coluna1, nome_da_coluna2 FROM nome_da_tabela
--percorre toda a tabela e retorna valores sem duplicidade apenas das colunas fornecidas
SELECT DISTINCT ramo,funcao FROM pessoa_trabalho;

SELECT * FROM nome_da_tabela
WHERE nome_da_coluna like 'joao'
--percorre toda a tabela e retorna as linhas que possui o nome joão na coluna 1
select * from pessoa_dados where nome_pessoa like 'joao'

SELECT * from pessoa_dados
SELECT * from pessoa_endereco

select * from pessoa_dados
select codigo_cliente,nome_pessoa,cpf_pessoa from pessoa_dados where cpf_pessoa='76585312509'

SELECT * FROM nome_da_tabela WHERE condição1 AND condição2 AND condition3 ...
--retorna os dados com base nas condições estabelecidas
select * from pessoa_dados where nome_pessoa='maria' and cpf_pessoa='33422311278' and numero_telefone='91943345566'

SELECT * FROM nome_da_tabela WHERE condição1 OR condição2 OR condition3 OR ...
----retorna os dados com base nas condições estabelecidas, uma após a outra, caso a primeira nao tenha resultado positivo
select * from pessoa_dados WHERE nome_pessoa='maria' or nome_pessoa='joao'

SELECT * FROM nome_da_tabela WHERE NOT nome_da_coluna1 = 3
--retorna os dados, con exceção da linha em que contém a condição
select * from pessoa_dados WHERE NOT codigo_cliente = 1024

SELECT * FROM nome_da_tabela WHERE NOT coluna1 ='dado1' AND NOT coluna2 ='dado2'
--retorna todos os dados com excelção das duas condições
SELECT * FROM pessoa_dados WHERE NOT nome_pessoa='MARIA' AND NOT nome_pessoa='JOAO'

SELECT * FROM tabela ORDER BY coluna ASC
SELECT * FROM pessoa_dados ORDER BY nome_pessoa ASC

SELECT * FROM tabela ORDER BY coluna DESC
SELECT * FROM pessoa_dados ORDER BY nome_pessoa DESC

INSERT INTO nome_tabela (coluna1, coluna2) VALUES (valor1, valor2)
--irá inserir dois valores nas colunas específicadas
INSERT INTO pessoa_dados (codigo_cliente,nome_pessoa,cpf_pessoa,numero_telefone) VALUES (1019,'PIERRE',' ',' ');

UPDATE tabela1
SET nome_coluna = 'valor novo'
WHERE coluna_condição = 'valor'

UPDATE pessoa_dados
SET numero_telefone = '91987352394'
WHERE codigo_cliente = '1019'



select * from Funcionarios
insert into Funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (1,'Pedro Henrique','Compras');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (2,'Lucas da Silva','Administrativo');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (3,'Luana Gabriela','Comercial');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (4,'Renato Lazuna','Administrativo');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (5,'Rafaela Barrosa','Administrativo');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (6,'Arline da Costa','Comercial');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (7,'Gisele Pascoa','Comercial');
insert into funcionarios (Id_funcionario,Nome_funcionario,Departamento) values (8,'Renan Pereira','Compras');

create table Supervisor
(
  Id_funcionario int not null,
  data_admissao datetime 
);
select * from supervisor

insert into supervisor (Id_funcionario,data_admissao) values (1,'2012-05-05');
insert into supervisor (Id_funcionario,data_admissao) values (2,'2015-01-01');
insert into supervisor (Id_funcionario,data_admissao) values (3,'2017-01-01');
insert into supervisor (Id_funcionario,data_admissao) values (4,'2017-02-01');
insert into supervisor (Id_funcionario,data_admissao) values (5,'2017-01-01');

update supervisor
set data_admissao='2015-05-05'
where Id_funcionario=1

select * from funcionarios
UPDATE
  Funcionarios
SET
  Departamento = 'Supervisores'
WHERE Id_funcionario IN
  ( SELECT id_funcionario 
   FROM Funcionarios
   WHERE id_funcionario = Id_funcionario
   AND departamento = 'Comercial');
--essa query fará com que todos os funcionários do departamento 'comercial' sejam 'supervisores'
  

SELECT top 5 * FROM Funcionarios
--seleciona as primeiras 10 linhas da tabela

##MIN ( MÍNIMO ) = Seleciona o menor valor da condição 

```sql
SELECT MIN(codigo_cliente) FROM pessoa_endereco where numero=23;
--consulta mínimo valor com condição

select * from pessoa_endereco

```sql
SELECT COUNT(codigo_cliente) FROM pessoa_endereco;
--retorna a quantidade de linhas da tabela
```sql
SELECT AVG(numero) FROM pessoa_endereco
--retorna o valor médio de uma coluna numérica

select * from pessoa_endereco

SELECT rua, numero,cidade
FROM pessoa_endereco
WHERE rua LIKE 'centro' and cidade='belem';
--com condição OR
SELECT rua, numero
FROM pessoa_endereco
WHERE rua LIKE 'centro' OR cidade='cameta';
--procura clientes com o nome começando com 'F'
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE 'F%';
--procura clientes com o nome terminando com 'F'
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE '%o';
--procura clientes que possuam 'ei' em qual quer posição
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE '%er%';
--procura clientes que possuem 'u' na 3º posição, '_' = um caracter
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE '__u%';
--procura cliente que começar com 'a' e termina com 'o'
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE 'a%o';
--procura cliente que NÃO POSSUI 'a'
SELECT * FROM pessoa_dados
WHERE nome_pessoa NOT LIKE 'a%';
--seleciona todos que iniciam com b,c, ou d
SELECT * FROM pessoa_dados
WHERE nome_pessoa LIKE '[bcd]%';
```

select * from cadastros
##IN ( EM ) = Usado como uma condição para uma valor que está 'em' um determinado campo

```sql
SELECT * FROM cadastros WHERE country IN ('France', 'Germany', 'Canada');
--Seleciona todos os clientes que são dos paises entre ( )

SELECT customername, contactname FROM cadastros WHERE postalcode in ('5021', 'Germany', '67000', 'France');
--seleciona os valores da coluna 1 e coluna 2 com base nos valores que estão na coluna 3 da mesma tabela
```

##BETWEEN ( ESTEJA ENTRE )  = Usado como condição para procurar um valor que estar 'entre' dois determinados valores

select * from produtos
SELECT * FROM Produtos WHERE prince BETWEEN 10 AND 20;
--seleciona todos os preços que estão entre 10 e 20
```

  select * from produtos
Exemplo com texto

SELECT * FROM cadastros
WHERE customername BETWEEN 'Antonio Moreno Taqueria' AND 'Bs Beverages'
ORDER BY contactname;

##ALIAS ( APELIDO TEMPORARIO )
select * from pedidos
--cria um nome temporário para a tabela
SELECT employeeId AS teste
FROM pedidos;
```

Exemplo
select * from cadastros
SELECT customerID AS ID, contactname AS Cadastro
FROM cadastros;
```

Geralmente usado com uma condição como:

* Count
* Sum
* AVG
select * from cadastros
~~~sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
~~~

Ex: Conte Produtos da HP tem na coluna A, com base na coluna B

| Coluna A | Coluna B |
| -------- | -------- |
| HP       | Notebook |
| HP       | Notebook |
| HP       | Gabinete |
| HP       | Notebook |
| HP       | Notebook |
| HP       | Gabinete |
| HP       | Gabinete |

~~~sql
select count(ColunaA) from table with(nolock) Group By ColunaB
--5
--4
~~~



##HAVING ( HAVENDO ) = Cláusula similar á cláusula 'where', usada após o  'GROUP BY'

~~~sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
~~~

EX: A instrução SQL a seguir lista o número de clientes em cada país. Incluir apenas países com mais de 5 clientes:

Script:

~~~sql
SELECT COUNT Country
FROM Cadastros
GROUP BY Country
HAVING COUNT Country > 3;



select nome, admissao from cadfun where ADMISSAO between '09/01/1980' and '11/12/1980';

select nome, admissao from cadfun where ADMISSAO between '05/01/1980' and '10/12/2022';

select nome, admissao from cadfun 
where ADMISSAO between '05/01/1980' and '10/12/2022' order by nome asc;

select nome, admissao from cadfun
where ADMISSAO between '05/01/1980' and '10/12/2022' order by nome desc;

select nome, admissao from cadfun
where ADMISSAO between '01/10/2016' and '22/10/2016';

select nome, admissao from cadfun
where DEPTO='5';

select nome, DEPTO, admissao from cadfun
where admissao between '05/01/1980' and '10/12/2022' and DEPTO='5';

select nome,depto, lower(nome) from cadfun where (depto='3') or (depto='5');

select nome, admissao,DEPTO from cadfun
where ADMISSAO between ('05/01/1900') and ('31/10/2022') and DEPTO='3' or depto='5';

select nome, DEPTO, FUNCAO,ADMISSAO from cadfun
where ADMISSAO between ('01/08/1900') and ('15/10/2022') and FUNCAO='analista';



SELECT * FROM cadfun

SELECT DEPTO, COUNT(*) FROM cadfun GROUP BY DEPTO;

SELECT FUNCAO, COUNT(*) FROM CADFUN GROUP BY FUNCAO;

SELECT DEPTO, SUM(SALARIO) FROM cadfun GROUP BY DEPTO;

SELECT DEPTO, SUM(SALARIO) FROM cadfun WHERE DEPTO IN ('2','4') GROUP BY DEPTO;

SELECT DEPTO, SUM(SALARIO) FROM cadfun GROUP BY DEPTO HAVING SUM(SALARIO) > 8000;

SELECT * FROM morto
SELECT * FROM cadfun

SELECT CODFUN, NOME FROM cadfun UNION SELECT CODFUN, NOME FROM MORTO;

INSERT INTO MORTO VALUES (21,'EPAMINONDAS DA SILVA','4','PROGRAMADOR',1155.00,'10/10/2016',2);

SELECT CODFUN, NOME FROM cadfun UNION SELECT CODFUN, NOME FROM MORTO;
SELECT CODFUN, NOME FROM cadfun UNION ALL SELECT CODFUN, NOME FROM MORTO;


SELECT NOME, CIDADE, ESTADO FROM cliente;

INSERT INTO cliente VALUES ('820','MECANICA SAO PAULO', 'R. DO MACUCO, 99','SANTO ANTONIO','ES','29810-020');
INSERT INTO cliente VALUES ('170','POSTO BRASIL LTDA', 'AV. IMPERIO, 85','GUAGIRUS','BA','42837-000');
INSERT INTO cliente VALUES ('340','TRANSP. CARGA PESADA LTDA', 'AV. DOS AUTONOMISTAS, 1000','OSASCO','SP','06020-010');
INSERT INTO cliente VALUES ('100','MICROS INFORMATICA S/A', 'R. DAS PALMEIRAS, 4 - LOJA 2','SAO PAULO','SP','01226-010');
INSERT INTO cliente VALUES ('750','IMOBILIARIA PAVAO', 'AV. BRASIL, 105','RIO DO PRADO','MG','39940-111');
INSERT INTO cliente VALUES ('860','ASSIS CONTABIL S/C LTDA', 'R. DO MONUMENTO, 550','SANTO AMARO','BA','44200-090');
INSERT INTO cliente VALUES ('230','SUPERMERCADO BOTAFOGO', 'R. DA LAGOA, 999','RIO DAS OSTRAS','RJ','28890-540');
INSERT INTO cliente VALUES ('150','MARCONDES E IRMAO LTDA', 'R. DO ORATORIO, 66','ROSARIO OESTE','MT','78470-010');
INSERT INTO cliente VALUES ('800','DOCEIRA PAO DE ACUCAR', 'R. MARTINS PENA, 200','SANTO ANDRE','SP','09190-700');
INSERT INTO cliente VALUES ('990','METALURGICA FOGO E FERRO', 'R. ARTUR BERNANDES, 3500','SANTO ANDRE','SP','09193-410');
INSERT INTO cliente VALUES ('500','JOSE DANTAS E FILHOS S/C LTDA', 'AV. IPIRANGA, 1000','LUCRECIA','RN','59805-010');
INSERT INTO cliente VALUES ('300','PCTEC - MICROCOMPUTADORES S/A', 'R. CAIS DO PORTO, ARMAZEM 3','SANTOS','SP','11000-005');


SELECT * FROM venda
SELECT * FROM cliente

SELECT venda.DUPLIC, cliente.NOME from cliente, venda
where cliente.CODCLI = venda.CODCLI;

SELECT  cliente.NOME, venda.DUPLIC, venda.VALOR from cliente, venda
where cliente.CODCLI = venda.CODCLI ORDER BY cliente.NOME

select * from cadfun;

select AVG(FILHOS) FROM cadfun;

select AVG(FILHOS) FROM cadfun
WHERE DEPTO='5';

SELECT COUNT(salario) FROM cadfun
WHERE DEPTO='5';

SELECT nome, salario, depto FROM cadfun
WHERE DEPTO='5';

SELECT sum(salario) FROM cadfun
WHERE funcao='analista';

SELECT max(salario) FROM cadfun
WHERE depto='5';

SELECT sum(salario) FROM cadfun
WHERE funcao='analista';

SELECT sum(salario) FROM cadfun
WHERE funcao='analista' and depto='2';

SELECT NOME, admissao from cadfun
where day(admissao)=10;

SELECT NOME, admissao from cadfun
where  day(admissao)>5 and day(admissao)<10;

SELECT NOME, admissao from cadfun
where  day(admissao)>5 and day(admissao)<10 order by NOME;

SELECT NOME, admissao from cadfun
where  day(admissao)>5 and day(admissao)<10 order by NOME desc;

SELECT NOME, admissao from cadfun
where  admissao<='20/09/2006';

SELECT NOME, admissao, datename(month,ADMISSAO) from cadfun
where depto='5';

select nome, depto, lower(nome) from cadfun
where depto='3' or depto='5';

SELECT NOME, admissao, depto from cadfun
where  day(admissao)>5 and day(admissao)<10 and depto='3' or depto='5';



-- junção das tabelas

select * from venda
select * from cliente

--consultar as duplicatas referente as tabelas venda e cliente
select venda.DUPLIC, cliente.NOME from cliente, venda
where cliente.CODCLI = venda.CODCLI;

-- ordenar por nome a consulta das tabelas venda e cliente
select venda.DUPLIC, cliente.NOME from cliente, venda
where cliente.CODCLI = venda.CODCLI order by cliente.NOME;

-- inserindo mais dados para exemplificar a junção
insert into venda values ('235100',1500.00,'06/12/2015','500');
insert into venda values ('203052',9008.33,'22/08/2015','550');
insert into venda values ('922452',1211.98,'09/03/2016','340');
insert into venda values ('999820',3110.22,'05/11/2015','170');
insert into venda values ('223345',2112.11,'08/03/2016','230');
insert into venda values ('222228',2390.00,'10/07/2016','170');
insert into venda values ('111211',3535.00,'15/11/2016','230');
insert into venda values ('907754',2056.90,'30/10/2015','340');
insert into venda values ('347711',5092.55,'20/11/2016','170');
insert into venda values ('209967',9008.33,'10/05/2016','550');


SELECT * FROM cliente
SELECT * FROM venda

-- Consulta que mostra código, o nome a quantidade de titulos e o total da dívida de cada cliente.
select cliente.NOME, count(*) AS titulos, SUM(venda.VALOR) AS TOTAL
FROM cliente, venda where cliente.codcli = venda.codcli
group by cliente.nome;

-- Consulta numeros de titulos vencidos agrupados e ordenados pelo nome da tabela cliente
select cliente.NOME AS CLIENTE, COUNT(*) AS VENCIDOS
FROM cliente, venda where cliente.codcli = venda.codcli
AND VENCTO <='2003-12-31' group by cliente.nome ORDER BY cliente.NOME;

-- Consulta de duplicata em atrazo anterior a data 31/12/1999,
-- apresentando nome do cliente o valor da duplicata e dos juros
select cliente.NOME, venda.VALOR, venda.VALOR * 0.10 AS JUROS, venda.VALOR * 1.10 AS TOTAL
FROM cliente, venda where cliente.codcli = venda.codcli
AND VENCTO <='1999-12-31' ORDER BY cliente.NOME;

select * from cadfun

-- Visualização de Dados
-- Cria uma tabela virtual a partir dos dados da tabela cadfun

create view visao1 AS SELECT NOME,DEPTO,SALARIO FROM cadfun;

select * from visao1

-- Visão definida para apresentar os títulos em atraso a partir de 31/12/2005.

create view visao2 AS SELECT cliente.NOME AS CLIENTE,
COUNT(*) AS VENCIDOS FROM CLIENTE, VENDA WHERE cliente.CODCLI = venda.CODCLI
AND VENCTO <='2005-12-31' GROUP BY cliente.NOME;

SELECT * FROM visao2

-- Visão3 combinação completa de todos os dados das tabelas cliente e venda.

create view visao3 AS SELECT cliente.CODCLI, cliente.NOME, venda.DUPLIC,
venda.VALOR,venda.VENCTO FROM cliente, venda WHERE cliente.CODCLI = venda.CODCLI

SELECT * FROM visao3

--Indexação de Tabelas

create index indice1 on cadfun (nome);

alter table cadfun add CPF char(11);

update cadfun set CPF = '10020011199' WHERE CODFUN = 1;
update cadfun set CPF = '10020022299' WHERE CODFUN = 6;
update cadfun set CPF = '10020033399' WHERE CODFUN = 8;
update cadfun set CPF = '10020044499' WHERE CODFUN = 10;
update cadfun set CPF = '10020055599' WHERE CODFUN = 11;
update cadfun set CPF = '10020066699' WHERE CODFUN = 12;
update cadfun set CPF = '10020077799' WHERE CODFUN = 20;
update cadfun set CPF = '10020088899' WHERE CODFUN = 21;
update cadfun set CPF = '10022211199' WHERE CODFUN = 22;
update cadfun set CPF = '10022233399' WHERE CODFUN = 24;



create database curso;

-- Chave, relacionamento e cardialidade
-- Criar as tabelas cadpro e caddis

create table cadpro (
  CODPRO    INT     NOT NULL PRIMARY KEY,
  NUMEROPRO VARCHAR(40) NOT NULL,
  CPF     CHAR (11) NOT NULL UNIQUE,
);

create table caddis (
  CODDIS    CHAR(6)     NOT NULL,
  NUMEDIS VARCHAR(40) NOT NULL,
  CODPROF   INT     NOT NULL FOREIGN KEY REFERENCES cadpro(CODPRO)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
);
-- Inserindo dados na tabela cadpro
INSERT INTO cadpro VALUES(100,'SILVANA SOUZA','11122233399');
INSERT INTO cadpro VALUES(120,'RENATO DE ABREU','11122244477');
INSERT INTO cadpro VALUES(110,'JOSE PAULO SILVA','11122244488');
INSERT INTO cadpro VALUES(130,'PENELOPE DA SILVA','11122255566');
INSERT INTO cadpro VALUES(140,'JULIANA DE ALBUQUERQUE','11122266655');
INSERT INTO cadpro VALUES(150,'CARLOS MUNHOZ DA SILVA','11122277744');

--Inserindo dados na tabela caddis
INSERT INTO caddis VALUES ('CG-100','MATEMATICA',100);
INSERT INTO caddis VALUES ('CG-200','PORTUGUES',110);
INSERT INTO caddis VALUES ('TI-100','ALGORITMOS',120);
INSERT INTO caddis VALUES ('TI-205','LINGUAGEM DE PROGRAMAÇAO II',130);
INSERT INTO caddis VALUES ('TI-400','SISTEMAS OPERACIONAIS',140);
INSERT INTO caddis VALUES ('CG-110','FISICA',100);
INSERT INTO caddis VALUES ('CG-300','FILOSOFIA',110);
INSERT INTO caddis VALUES ('TI-200','LINGUAGEM DE PROGRAMACAO I',120);
INSERT INTO caddis VALUES ('TI-300','BANCO DE DADOS',130);
INSERT INTO caddis VALUES ('TI-500','PROGRAMACAO WEB',140);
INSERT INTO caddis VALUES ('CG-100','MATEMÁTICA',150);
INSERT INTO caddis VALUES ('CG-300','FILOSOFIA',150);


use curso

SELECT * FROM caddis;
SELECT * FROM cadpro;

-- Consulta apresentara a relação de disciplina ofertadas e os professores que as ministram
SELECT caddis.CODDIS, caddis.NUMEDIS, cadpro.NOMEPRO
FROM caddis, cadpro WHERE caddis.CODPROF = cadpro.CODPROP;

-- Procedimentos Armazenados
create procedure sp_saudacao AS
DECLARE @Mensagem CHAR(11)
SET @Mensagem = 'Alo Mundo'
PRINT @Mensagem

-- Execute o comando abaixo
exec sp_saudacao;

-- Outro exemplo
create procedure sp_dados AS
SELECT NOME, SALARIO FROM cadfun
--Execute o comando abaixo
exec sp_dados

