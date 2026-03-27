
insert into clientes
(idCliente,NomeCliente,SexoCliente,Ender,ano,Idade)
values
(Default, 'Rosa', 'F','norte','2012','88'),
(Default, 'Eliana', 'F','oeste','2011','99'),
(Default, 'Vitor', 'M','leste','2010','45'),
(Default, 'Lucia5', 'F','norte','2012','78'),
(Default, 'Pedro2', 'F','oeste','2011','65'),
(Default, 'Joao8', 'M','leste','2010','25'),
(Default, 'Jorge4', 'F','norte','2012','90'),
(Default, 'Vitelson5', 'F','oeste','2011','101'),
(Default, 'Jordanio6', 'M','leste','2010','45'),
(Default, 'Ester7', 'M','sul','2013','52');


update clientes
set NomeCliente = 'Josefina' 
where idCliente = '1'
limit 1;

update clientes
set NomeCliente = 'Jocabel', SexoCliente = 'F'
where idCliente = '7'
limit 1;

update clientes
set NomeCliente = 'Jocabel Sambo', SexoCliente = 'F', Ender = 'Norte'
where idCliente = '7'
limit 1;

# mas podemos modificar os registros das colunas de varias linhas com alvo apenas uma linha #
update clientes
set NomeCliente = 'Belnas', SexoCliente = 'F'
where NomeCliente = 'Rosa'
limit 1;

# mas podemos modificar os registros das colunas de varias linhas ao mesmo tempo #
update clientes
set NomeCliente = 'Rosita', SexoCliente = 'F'
where NomeCliente = 'Eliana';

# mas podemos modificar os registros da coluna apenas da primeira linha alvo #
update clientes
set NomeCliente = 'Sidonia', SexoCliente = 'F'
where NomeCliente = 'Rosita'
limit 1;


# mas podemos modificar os registros apenas das primeiras duas colunas alvo #
update clientes
set NomeCliente = 'Ester', SexoCliente = 'F'
where NomeCliente = 'Jorge'
limit 2;

# apagar apenas uma linha #
Delete from  clientes
where NomeCliente = 'Rosa';

# apagar varias linhas #
Delete from  clientes
where NomeCliente = 'Rosa'
limit 2; 

truncate table clientes;




													# EXERCICIOS CentroForm #
 
 insert into Agentes
(id_Ag, NomeComp_Ag, Sexo_Ag, DataNasc_Ag, Natural_Ag, Altura_Ag, Cargo_Ag)
values
(Default, 'Jonas Sambo', 'M','2000-12-01','Portugal','1.80','Professor'),
(Default, 'Ester Sambo', 'F','2022-01-15','Alemanha','1.40','Professor'),
(Default, 'Jaquelina Pambo', 'F','2003-04-10','Brasil','1.55','Professor'),
(Default, 'Pedro Pambo', 'M','2010-05-05','Angola','1.63','Professor'),
(Default, 'Lucia Sambo', 'F','2016-08-03','Angola','1.13','Professor'),
(Default, 'Victor Sambo', 'M','2020-09-03','Portugal','1.22','Professor'),
(Default, 'Jorge Sambo', 'M','2018-09-23','Brasil','1.33','Professor'),
(Default, 'Jocabel Pambo', 'F','2000-02-08','Portugal','1.20','Professor'),
(Default, 'Pedro Sambo', 'M','2004-11-04','Brasil','1.40','Professor'),
(Default, 'Eliana Pambo', 'F','2007-09-01','Brasil','1.60','Professor'),
(Default, 'Juliena Pambo', 'F','2008-12-05','Angola','1.31','Professor'),
(Default, 'Pedrito Pambo', 'M','2014-04-25','Angola','1.35','Professor'),
(Default, 'Djems Pambo', 'M','2024-09-03','Brasil','1.32','Professor'),
(Default, 'Zilma Pambo', 'F','2018-05-01','Angola','1.20','Professor'),
(Default, 'Joaninha Pambo', 'F','2015-10-01','Portugal','1.41','Professor');


truncate table Agentes;