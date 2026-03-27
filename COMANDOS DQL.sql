
											# SELECT #
                                            
/* serve para visualizar os dados inseridos ou existentes num banco de dados fazendo 
uma pergunta ao servidor e que o mesmo acbara sempre por responder */

Select * from clientes;

/* visualiza os dados de apenas algumas tabelas selecionadas ou filtrar 
a visualizaçao dos dados por preferencia */
Select NomeCliente, ender from clientes;

	/* AS FUNÇOES DO COMANDO 'SELECT' */

			# ORDER BY #

# visualiza os dados baseando na ordem alfabetica doum campo especifico de a para z #
Select * from clientes
order by NomeCliente; 

# ou #
Select * from clientes
order by NomeCliente asc; 

# visualiza os dados baseando na ordem alfabetica doum campo especifico z para a #
Select * from clientes
order by NomeCliente desc; 
# atençao aqui a palavra desc nao é o comando desc ou describe mas sim um parametro apenas #

# filtrar e ordenar com apenas um campo #
Select ender, NomeCliente  from clientes
order by ender; 

# ou ordenar alfabeticamente com 2 campos #
Select ender, NomeCliente  from clientes
order by ender, NomeCliente; 


			# WHERE #

/*muito importante, filtrar por linha ou por dados ou registro dum campo*/
Select * from clientes
where SexoCliente = 'F'
order by ender, NomeCliente; 

/* filtrar apenas as colunas da linha do registro dum campo, neste caso a coluna da 
pesquisa lançada nao aparece se nao for incluido na linha select */
Select ender, NomeCliente from clientes
where SexoCliente = 'F'
order by ender, NomeCliente; 

/* filtrar os dados cujo registro do campo  de pesquisa 
sao inferiores a um numero dado especifico */
Select * from clientes
where ano <= '2012'
order by ender, NomeCliente; 

# ou ordenar essa pesquisa seletiva #
Select ano, NomeCliente, ender from clientes
where ano <= '2011'
order by ano, NomeCliente, ender; 

/* operadores relacionais basicoa 
<= inferior ou igual
< inferior
>= superior ou igual
> superior
= igual
!= ou <> diferente */



/*filtrar por ano especifico e apenas de um mes muito especifico*/
select * from venda
where year(DataVenda) = 2025 and month(DataVenda) = 1;	

/*filtrar por ano especifico e apenas de um mes muito 
especifico e um tipo de fatura muito especifico*/
select * from venda
where year(DataVenda) = 2025 and month(DataVenda) = 2 and TipoRecibo = 'FT';	



																# OPERADORES LOGICOS : AND, OR #

# Visualizar onde somente ano inferior a 2012 e sexocliente diferente da letra M #
Select ano, NomeCliente, ender from clientes
where ano < '2012' and sexocliente != 'M'
order by ano, NomeCliente, ender; 

/* Visualizar onde ano inferior a 2012 ou sexocliente diferente da letra M, 
aqui pode variar cumpre uma condiçao e nao outra ou o contrario */
Select ano, NomeCliente, ender from clientes
where ano < '2012' or sexocliente != 'M'
order by ano, NomeCliente, ender; 


				# INTERVALOS : BETWEEN, IN #

# SELECIONAR OS INTERVALOS, somente os dados enre A e F que sao A,B,C,D,E,F #
Select ano, NomeCliente from clientes
where ano between '2011' and '2013'
order by ano asc, NomeCliente asc; 

/* SELECIONAR tipos de registros especificos para varias linhas onde a 
pesquisa do select sera somente dentro do mencionado */
Select ano, NomeCliente from clientes
where ano in ( 2011, 2013)
order by ano asc, NomeCliente asc; 


				# AGREGAÇOES : LIKE, DISTINCT, COUNT, MAX, MIN, SUM, AVG, GROUP  #
                
/* LIKE Serve para fazer pesquisas por letra do registro dum campo especifico */

# SELECIONAR REGISTROS QUE COMEÇAM COM UMA MESMA #
Select * from clientes
where NomeCliente like 'E%';

# SELECIONAR REGISTROS QUE TERMINAM COM UMA MESMA #
Select * from clientes
where NomeCliente like '%a';

/* SELECIONAR REGISTROS QUE tem uma mesma letra especifica (por exemplo letra A ou O)
 em qualquer parte da palavra do registro (no inicio, no meio ou no fim) */
Select * from clientes
where NomeCliente like '%O%';

/* SELECIONAR REGISTROS QUE tem uma letra especifica (por exemplo letra A ou O)
 em qualquer parte da palavra do registro (no inicio, no meio ou no fim) */
Select * from clientes
where NomeCliente like '%O%';

/* SELECIONAR REGISTROS QUE NAO TEM letra especifica (por exemplo letra A ou O)
 em qualquer parte da palavra do registro (no inicio, no meio ou no fim) */
Select * from clientes
where NomeCliente not like '%O%';

/* SELECIONAR REGISTROS que terminam com numeros exemplo php6*/
Select * from clientes
where NomeCliente like '%a_';
# o _ obriga que tenha pelo menos um caracter, numero ou letra ou operador #


/*DISTINCTServe pra agrupar REGISTROS REPETITIVOS num so, 
por exemplo varias pessoas nasceram no brasil, alemanha, portugal
mas eu so quero saber saber quais sao os paises de onde provem os nossos candidatos
teremos apenas a lista dos paises e nao o pais de cada candidato
vai considerar apenas uma ocorrencia de cada valor repetitivo dentro dum registro
*/

Select distinct ano from clientes		# teremos os anos em que houve registro e nao o ano de cado registro #
order by ano;							# a lista sera visualizado do mais pequeno ao mais grande #

Select distinct SexoCliente from clientes 		# teremos os sexos registrados no nosso banco de dados e nao o sexo consoante cada registro #
order by SexoCliente;	

# Em cima teremos os sexos registrados no nosso banco de dados e nao o sexo consoante cada registro, veja diferença em baixo #
Select SexoCliente from clientes
order by SexoCliente;	


/* COUNT
Serve para visualizar o numero dos registros registrados na tabela */

select count(*) from clientes;			# vai indicar o numero dos registros que tem esta tabela #

select count(*) from clientes where ano <= '2012';		# vai indicar o numero dos registros tenham sido feito antes de 2012 #


/* MAX
Serve para visualizar o numero maior nos registros registrados na tabela */

select max(Idade) from clientes;			# vai visualizar a idade maximo uma vez ja registrada #	

select max(Idade) from clientes where ano = '2010';			# vai visualizar a idade maximo uma vez ja registrada num ano especico #	

select NomeCliente, max(Idade) from clientes where ano = '2010'; 			# vai visualizar o nome e a idade maximo uma vez ja registrada #	


/* MIN
Serve para visualizar o numero menor nos registros registrados na tabela */

select min(Idade) from clientes;			# vai visualizar a idade minimo uma vez ja registrada #	

select *, min(Idade) from clientes where ano = '2011';			# vai visualizar a idade minimo uma vez ja registrada num ano especico #	

select *, max(Idade) from clientes where ano = '2011'; 			# vai visualizar todos campo do registro que tem uma idade minimo uma vez ja registrada #	


/* SUM
Serve para somar os dados duma colunua inteira de todos os registros */
select sum(Idade) from clientes;

select sum(Idade) from clientes where ano = '2012'; 		# para um certo ano especifico #	


/* AVG
Serve para fazer a MEDIA dos dados duma colunua inteira de todos os registros */
select avg(Idade) from clientes;

select avg(Idade) from clientes where ano = '2012'; 		# para um certo ano especifico #


/* GROUP
Serve para unir os registros que tem um mesmo dado de campo determinado
agrupar é diferente de DISTINCT apesar de parecer apresentar mesmos resultados*/	
select ano from clientes
GROUP by ano;

# apresenta o numero de vezes em que dum valor agrupado #
select Ender, count(*) from clientes		
GROUP by ender;					

# agrupa os valores iguais do campo ano mencionando o numero de vezes em que se repetem#
Select ano, Idade, count(*) from clientes where ano = 2010
group by ano;	##

/* agrupa os valores iguais do campo ano mencionando o numero de vezes em que se repetem
mas visualizandoapenas os anos que tiverem uma count acima de 2 por exemplo
se o ano for registrado mais de duas vezes nao ira aparecer a qui */
select ano, count(*) from clientes
group by ano
having count(ano) <= 2
order by count(*) desc;

/* em vez de tendo (HAVING) count menos posso dizer tendo ano menos, 
e so funciona se é o ano que eu tou agrupar (group by ano) */
select ano, count(*) from clientes
group by ano
having ano > 2012
order by count(*) desc;

/* selecione o agrupamento (group by ano) e a contagem repetitivo (count(*)) 
de cada agrupamento de ano onde a idade seja seja < ou > a um numero por exemplo 10 */
select ano, count(*) from clientes
where Idade > 50
group by ano
having ano < 2015
order by count(*) desc;

/* selecione o agrupamento (group by Idade) e a contagem repetitivo (count(*)) 
de cada agrupamento de Idade onde a media da idade esteja acima da media dos valores 
do campo Idade e visualizar apenas a contagem do ano superior ao 2010 */
select Idade, count(*) from clientes
where ano > 2010
group by Idade
having Idade > (select avg(Idade) from clientes) ;



/*visualizar o agrupamento de dados especificos filtrando 
por ano especifico e apenas de um mes muito especifico*/
select * from venda
where year(DataVenda) = 2025 and month(DataVenda) = 1
group by NrFatura ;	


                                
										# DESCRIBE 'ou' desc #      
# serve para visualizar a descriçao da estrutura duma tabela (colunas e tipos primitivos) #                                
describe Medicamentos;                                
desc Medicamentos;

describe pacientes;
desc pacientes;


												# Show #
# serve para visualizar a lista das tabelas do banco de dados ou os bancos de dados disponiveis no servidor #

# para listar as tabelas do banco de dados selecionado #
show tables;

# para listar os bancos de dados disponiveis no servidor #
show databases;

# para visualizar o detalhes da criaçao dos campos duma tabela #
show create table clientes;

# para visualizar o detalhes da criaçao das tabelas dum banco de dados #
show create database exp_gesfarma;