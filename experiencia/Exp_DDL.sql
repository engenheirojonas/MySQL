
create database IF NOT EXISTS  Exp_GesFarma;

use Exp_GesFarma;

create table Clientes (
idCliente int auto_increment,
NomeCliente varchar(50),
SexoCliente enum ('M','F'),
Ender varchar(30),
ano year,
Idade tinyint,
PRIMARY KEY (idCliente)
);


drop table Clientes;

desc Clientes;


Alter Table alunos
Add column Endereço varchar(10) AFTER NomeAluno;

Alter Table alunos
Add primary key(idAluno);


Alter Table alunos
Modify Column idAluno int auto_increment;

Alter Table Clientes
Add column Ender varchar(30);






														# EXERCICIOS CentroForm #
                                                        
create database Exp_CentroForm; 
use Exp_CentroForm;

create table Agentes (
id_Ag int auto_increment,
NomeComp_Ag varchar(50) not null,
Sexo_Ag enum ('M','F') not null,
DataNasc_Ag datetime not null,
Natural_Ag varchar(50) not null,
Altura_Ag decimal(4,2) not null,
Cargo_Ag varchar(50) not null,
PRIMARY KEY (id_Ag)
);

drop table Agentes;

desc Agentes;

Alter Table Agentes
Modify Column Altura_Ag decimal(3,2) not null;

Alter Table Agentes
Modify Column DataNasc_Ag date not null;