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



