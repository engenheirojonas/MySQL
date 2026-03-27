#COMMANDOS DDL#
						# create database #

# pra criar o banco de dados #
create database Exp_Gesescola; 

# Para certificar se o banco de dados que vou criar nao existe ainda #
create database IF NOT EXISTS  Exp_Gesescola; 

# Usar ou explorar um determinado banco de dados na lista #
use exp_Geshosp;

						# create table #
                        
create table pacientes (
idPaciente int auto_increment,
NomePaciente varchar(50),
SexoPaciente enum ('M','F'),
PRIMARY KEY (idPaciente)
);

create table Fonc (
idMed int auto_increment,
NomeMed varchar(50),
PRIMARY KEY (idMed)
);

								# DROP #

# serve para apagar a tabela #
drop table pacientes;

# serve para apagar o banco de dados #
drop database gesescola;

# Certificar que o banco de dados exist antes de executar opçao apagar #
drop database IF EXISTS gesescola;

# Certificar que o banco de dados exist antes de executar opçao apagar #
drop table IF EXISTS pacientes;



								# ALTER #
                                
# Exemplo para aumentar #
Alter Table Medicamentos
Add column Dosagem varchar(10);

# Exemplo para apagar #
Alter Table Medicamentos
Drop column Dosagem;

# Modificar o tipo primitivo e o tamanho #
Alter Table Medicamentos
Modify Column Dosagem varchar(15) not null default ' ';

# Modificar o nome da coluna #
Alter Table pacientes
CHANGE Column SexoPaciente SexoPac enum ('M','F');

# Renomear uma tabela #
Alter Table Fonc
RENAME TO Funcionarios;
                                