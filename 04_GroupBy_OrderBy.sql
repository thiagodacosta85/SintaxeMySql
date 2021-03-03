create database exercicio;
use exercicio;
create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );
insert into funcionarios values (1,'Kelley','rkelley0@soundcloud.com','Feminino','Computadores','10/2/2009',67470,'Structural Engineer',2);
insert into funcionarios values (2,'Armstrong','sarmstrong1@infoseek.co.jp','Masculino','Esporte','3/31/2008',71869,'Financial Advisor',2);
insert into funcionarios values (3,'Carr','fcarr2@woothemes.com','Masculino','Automotivo','7/12/2009',101768,'Recruiting Manager',3);
insert into funcionarios values (4,'Murray','jmurray3@gov.uk','Feminino','Joalheria','12/25/2014',96897,'Desktop Support Technician',3);
insert into funcionarios values (5,'Ellis','jellis4@sciencedirect.com','Feminino','Alimentícios','9/19/2002',63702,'Software Engineer III',7);

1
SELECT COUNT(*), DEPARTAMENTO
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
ORDER BY 1;

SELECT NOME, DEPARTAMENTO FROM FUNCIONARIOS 
WHERE DEPARTAMENTO = 'ROUPAS' OR 
DEPARTAMENTO = 'FILMES';

2
SELECT COUNT(*), DEPARTAMENTO 
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
ORDER BY 1;

SELECT NOME, SEXO, EMAIL, DEPARTAMENTO FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'LAR' AND SEXO = 'FEMININO'
OR 
DEPARTAMENTO = 'FILMES' AND SEXO = 'FEMININO'
ORDER BY 4;

3
SELECT COUNT(*), SEXO
FROM FUNCIONARIOS
GROUP BY SEXO
ORDER BY 1;

SELECT COUNT(*), DEPARTAMENTO
FROM FUNCIONARIOS 
GROUP BY DEPARTAMENTO
ORDER BY 1;

SELECT * FROM FUNCIONARIOS
WHERE SEXO = 'MASCULINO' OR
DEPARTAMENTO = 'JARDIM';