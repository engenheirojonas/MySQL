use exp_gesfarma;


create table Medicamentos (
id_Med int auto_increment,
NomeMed varchar(50),
PRIMARY KEY (id_Med)
);


# auumentar uma chave estrangeira #

# Primeiro #

alter table clientes
add column Medicamentos_Preferidos int;

# Segundo #

alter table clientes
add foreign key (Medicamentos_Preferidos)
references Medicamentos (Id_Med);

										# JOIN #
/* serve para ajuntar e visualizar colunas de duas tabelas diferentes, 
sim isso é possivel só quando as tabelas ou entidades estao em relaçao */

# exemplo #
Select clientes.idCliente, clientes.NomeCliente, Medicamentos.NomeMed 
from Clientes join Medicamentos;

# Visualizar colunas de duas tabelas diferentes em verdadeira ordem sem duplicidades #

Select clientes.idCliente, clientes.NomeCliente, Medicamentos.NomeMed 
from Clientes join Medicamentos
on clientes.idcliente = medicamentos.id_med;

# ou pra reduzir  #

Select c.idCliente, c.NomeCliente, m.NomeMed 
from Clientes as c join Medicamentos as m
on c.idcliente = m.id_med;


/* Visualizar colunas de 3 tabelas diferentes
relacionando as, pela cardinalidade n n */

# criamos a terceira tabela fruto da cardinalidade n n #
create table Compras (
id_Vendas int auto_increment,
DataVenda date,
id_Med int not null,
idCliente int not null,

foreign key  (id_Med) references Medicamentos (id_Med),
foreign key  (idCliente) references Clientes (idCliente),

PRIMARY KEY (id_Vendas)
)default charset=utf8;

insert into Compras
(id_Vendas,DataVenda,id_Med,idCliente)
values
(Default, '2013-2-3','2','2');

select * from Compras;

# Visualizar colunas de duas tabelas diferentes em verdadeira ordem sem duplicidades #

Select c.NomeCliente, com.DataVenda, m.NomeMed 
from Clientes as c join Compras  as com
on c.idcliente = com.id_Vendas
join Medicamentos as m
on com.id_Vendas = com.id_Vendas;



											# INNER JOIN #
/* serve tamnbem para ajuntar e visualizar colunas de duas tabelas diferentes */

Select c.idCliente, c.NomeCliente, m.NomeMed 
from Clientes as c inner join Medicamentos as m
on c.idcliente = m.id_med;

										# OUTER JOIN #
/* serve tamnbem para ajuntar e visualizar colunas de duas tabelas diferentes 
visualizando mesmo aqueles registros que nao tem nenhuma ligaçao com os registros
de outra tabela ou entidade */

/* Preferindo visualizar todos os registros da entidade a esquerda da palavra join,
escrever se a left outer join  */

Select c.idCliente, c.NomeCliente, m.NomeMed 
from Clientes as c left outer join Medicamentos as m
on c.idcliente = m.id_med;

/* Preferindo visualizar todos os registros da entidade a direita da palavra join,
escrever se a rihht outer join  */

Select c.idCliente, c.NomeCliente, m.NomeMed 
from Clientes as c right outer join Medicamentos as m
on c.idcliente = m.id_med;

desc clientes;
desc Medicamentos;


Select * from Clientes;
Select * from Medicamentos;


# inserindo dados na tabela #

insert into medicamentos
(id_Med,NomeMed)
values
(Default, 'Paracetamol'),
(Default, 'Ibucap'),
(Default, 'ibuprofen'),
(Default, 'Quarten'),
(Default, 'Grippal'),
(Default, 'Wormex'),
(Default, 'Cyproz'),
(Default, 'Ampi');


# Atualizar os medicamentos preferidos para a tabela dos clientes#

update clientes set Medicamentos_Preferidos = '4' where idCliente = '4';
