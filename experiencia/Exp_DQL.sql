
										# EXERCICIOS CentroForm #

											# EXERCICIOS 1 #
Select * from Agentes;

# visualizar a lista com nome de todas as professoras e seus dados #
Select * from Agentes
where Sexo_Ag = 'F'
order by NomeComp_Ag;

# visualizar apenas a lista com nome de todas as professoras #
Select NomeComp_Ag from Agentes
where Sexo_Ag = 'F'
order by NomeComp_Ag;

# visualizar a lista com os dados de todos aqueles que nasceram entre 1/01/2005 e 31/12/2010 #
Select * from Agentes
where DataNasc_Ag between '2005-01-01' and '2010-12-31'
order by DataNasc_Ag asc; 

# visualizar apenas a lista de todos homens programadores #
Select NomeComp_Ag from Agentes
where Cargo_Ag = 'Programador' And Sexo_Ag = 'M'
order by NomeComp_Ag;

# visualizar os dados de todas os homens que nasceram no brasil e cujo nome tem uma letra m #
Select * from Agentes
where NomeComp_Ag like '%m%' And Sexo_Ag = 'M' And Natural_Ag = 'Brasil';

/* visualizar a lista com nomes e nacionalidade 
de todos os homens que tem SAMBO no nome, e que tem uma altura menos que 1.30 */
Select NomeComp_Ag, Natural_Ag from Agentes
where NomeComp_Ag like '%Sambo%' and Altura_Ag >= '1.30' And Sexo_Ag = 'M' 
order by NomeComp_Ag; 

/* visualizar a lista com nomes e nacionalidade 
de todos os homens que tem SAMBO no nome, e que tem uma altura menos que 1.30 mas que nao nasceram no brasil */
Select NomeComp_Ag, Natural_Ag from Agentes
where NomeComp_Ag like '%Sambo%' and Altura_Ag >= '1.30' And Sexo_Ag = 'M' and Natural_Ag != 'Brasil'
order by NomeComp_Ag; 

# visualizar a maior altura entre todas as pessoas registradas #	
select max(Altura_Ag) from Agentes;		

# visualizar a maior altura entre os homens que moram no brasil #	
select max(Altura_Ag) from Agentes			
where Natural_Ag = 'Brasil' And Sexo_Ag = 'M';

# visualizar a media da altura de todas as pessoas registradas #
select avg(Altura_Ag) from Agentes;

# visualizar a media da altura de todos os homens registrados #
select avg(Altura_Ag) from Agentes where Sexo_Ag = 'M'; 

# visualizar a media da altura de todas as mulheres registradas #
select avg(Altura_Ag) from Agentes where Sexo_Ag = 'F'; 

/* visualizar a lista com os dados de todas as mulheres 
nao brasileiras que nasceram entre 1/01/2005 e 31/12/2010 */
Select * from Agentes
where  Sexo_Ag = 'F'And Natural_Ag <> 'Brasil' and DataNasc_Ag between '2010-01-01' and '2020-12-31';

/* visualizar a maior altura entre todas as mulheres 
nao brasileiras que nasceram entre 1/01/2005 e 31/12/2010 */
Select max(Altura_Ag) from Agentes
where  Sexo_Ag = 'F'And Natural_Ag <> 'Brasil' and DataNasc_Ag between '2010-01-01' and '2020-12-31';

# Quantas mulheres tem mais de 1.45 m de altura #
select count(*) from Agentes
where Sexo_Ag = 'F'And Altura_Ag > '1.40';


												# EXERCICIOS 2 #

# visualizar os cargos e seus respectivos quantitativos (quantos sao os professores, secretario,...) #
Select Cargo_Ag, count(*) from Agentes
group by Cargo_Ag;

# visualizar quantas pessoas nasceram depois de 1/01/2006 #
Select count(*) from Agentes
where DataNasc_Ag > '2006-01-01';

# visualizar quantos homens nasceram depois de 1/01/2006 #
Select count(*) from Agentes
where DataNasc_Ag > '2006-01-01' AND Sexo_Ag = 'M';

# visualizar quantas mulheres nasceram depois de 1/01/2006 #
Select count(*) from Agentes
where DataNasc_Ag > '2006-01-01' AND Sexo_Ag = 'F';

/* visualizar uma lista de pais de origem e o total de pessoas nascidas la */
select Natural_Ag, count(*) from Agentes
group by Natural_Ag
order by count(*) desc;

/* visualizar uma lista de pais de origem e o total 
de pessoas nascidas la fora do Brasil */
select Natural_Ag, count(*) from Agentes
where Natural_Ag <> 'Brasil'
group by Natural_Ag
having count(Natural_Ag) > 3
order by count(*) desc;

/* visualizar uma lista agrupada pela altura das pessoas */
select Altura_Ag, count(*) from Agentes
group by Altura_Ag;

/* visualizar uma lista agrupada pela altura das pessoas que temha mais de 1.30 m */
select Altura_Ag, count(*) from Agentes
where Altura_Ag > '1.30'
group by Altura_Ag;


/* visualizar uma lista agrupada pela altura das
 pessoas que temha mais de 1.30 m e somente o numero de pessoas que tem uma 
 altura acima da Media */
select Altura_Ag, count(*) from Agentes
where Altura_Ag > '1.30'
group by Altura_Ag
having Altura_Ag > (select avg(Altura_Ag) from Agentes);


/* visualizar uma lista agrupada pela altura das pessoas 
e que nasceram depois de 01/01/2010 */
select Altura_Ag, count(*) from Agentes
where DataNasc_Ag > '2010-01-01'
group by Altura_Ag;


/* visualizar uma lista agrupada pela altura das pessoas 
e que nasceram depois de 01/01/2010 considerando somente as pessoas que tem
uma altura acima da media */
select Altura_Ag, count(*) from Agentes
where DataNasc_Ag > '2010-01-01'
group by Altura_Ag
having Altura_Ag > (select avg(Altura_Ag) from Agentes);