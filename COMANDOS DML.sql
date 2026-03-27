# COMANDOS DML #

						# INSERT INTO #

# serve par inserir dados reais nas estruturas do banco de dados #

insert into medicamentos
(idMed,NomeMed,Dosagem)
values
(Default, 'Jonas', 'Unica');

# para inserir varios dados simultaneamente #

insert into medicamentos
(idMed,NomeMed,Dosagem)
values
(Default, 'Rosa', '1x/dia'),
(Default, 'Eliana', '2x/dia'),
(Default, 'Vitor', '3x/dia'),
(Default, 'Jorge', '1x/dia');

								
						# UPDATE #
                        
# serve para modificar os registros (dados) inseridos nas estruturas (campos) das tabelas #

# para modificar o registro de apenas uma coluna #
update clientes
set NomeCliente = 'Josefina' 
where idCliente = '1';

# outra forma mais complexo #
UPDATE `exp_gesfarma`.`clientes` SET `NomeCliente` = 'Vitor85' WHERE (`idCliente` = '27');

# para modificar o registro de apenas uma coluna limitando as modificaçoes apenas para uma linha #
update clientes
set NomeCliente = 'Josefina' 
where idCliente = '1'
limit 1;

# para modificar o registro de duas colunas ou mais colunas mas somente numa linha #
update clientes
set NomeCliente = 'Josefina', SexoCliente = 'F'
where idCliente = '1'
limit 1;

/*mas podemos modificar os registros das colunas de varias linhas mas isso é muito perigoso
- primeiramente vamos desligar o safe update do workbench
  (Clicar no menu "Edit" depois "Prederences" depois "SQL Editor" depois "desmarcar Safe Updates" - )
- depois clicar no menu Reconnect to DBMS
e depois inserir o codigo seguinte */

# para modificar colunas de todas linhas ao mesmo tempo tendo o registro dum campo especifico como alvo #
update clientes
set NomeCliente = 'Pedro', SexoCliente = 'F'
where NomeCliente = 'Josefina';

# para modificar colunas de uma linha aumentamos limit 1, de duas primeiras linhas limit 2 #
update clientes
set NomeCliente = 'Pedro', SexoCliente = 'F'
where NomeCliente = 'Josefina'
limit 1;
# Mas depois de terminar de executar esta operaçao torne a ligar o safe update do workbench e depois clicar no menu Reconnect to DBMS #


							# DELETE #
                                                    
# Serve para apagar registros ou dados no banco de dados para uma so unica linha #

Delete from  clientes
where idCliente = '1';

# Serve para apagar registros ou dados no banco de dados em varias linhas #

/*mas podemos apagar os registros das colunas de varias linhas mas isso é muito perigoso
- primeiramente vamos desligar o safe update do workbench
  (Clicar no menu "Edit" depois "Prederences" depois "SQL Editor" depois "desmarcar Safe Updates" - )
- depois clicar no menu Reconnect to DBMS
e depois inserir o codigo seguinte */

Delete from  clientes
where NomeCliente = 'Rosa'; # isso apagara todas as linhas onde haver registro Rosa como registro do campo #

# para apagar varias linhas limitadamente #

Delete from  clientes
where NomeCliente = 'Rosa'
limit 3; 


						# TRUNCATE #
                        
# Serve para apagar registros de todas as linhas duma tabela, so dados da tabela e nao a estrutura #

truncate table clientes;