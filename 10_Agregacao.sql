CREATE DATABASE SECAO14;
USE SECAO14;

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	JANEIRO FLOAT(10,2),
	FEVEREIRO FLOAT(10,2),
	MARCO FLOAT(10,2)
);

INSERT INTO VENDEDORES VALUES(NULL,'CARLOS','M',76234.78,88346.87,5756.90);
INSERT INTO VENDEDORES VALUES(NULL,'MARIA','F',5865.78,6768.87,4467.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO','M',78769.78,6685.87,6664.90);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA','F',5779.78,446886.87,8965.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANDERSON','M',676545.78,77544.87,578665.90);
INSERT INTO VENDEDORES VALUES(NULL,'IVONE','F',57789.78,44774.87,68665.90);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO','M',4785.78,66478.87,6887.90);
INSERT INTO VENDEDORES VALUES(NULL,'CELIA','F',89667.78,57654.87,5755.90);


/*MAX, MAIOR VALOR DA COLUNA*/

SELECT MAX(FEVEREIRO) FROM VENDEDORES;

/*MIN, MAIOR VALOR DA COLUNA*/

SELECT MIN(FEVEREIRO) FROM VENDEDORES;

/*AVG, VALOR MÉDIO DA COLUNA*/

SELECT AVG(FEVEREIRO) FROM VENDEDORES;

/*VÁRIAS JUNTAS*/

SELECT MAX(FEVEREIRO) AS MAX_,
	   MIN(FEVEREIRO) AS MIN_,
	   AVG(FEVEREIRO) AS AVG_
	   FROM VENDEDORES;
	     
	   
/*TRUNCATE*/

SELECT MAX(FEVEREIRO) AS MAX_,
	   MIN(FEVEREIRO) AS MIN_,
	   TRUNCATE(AVG(FEVEREIRO), 2) AS AVG_
FROM VENDEDORES;  
	   
/*SUM, SOMA DE TODOS*/

SELECT SUM(JANEIRO),
	   SUM(FEVEREIRO),
	   SUM(MARCO)
FROM VENDEDORES;

/*VENDAS POR SEXO*/
SELECT SEXO, SUM(MARCO) 
FROM VENDEDORES 
GROUP BY SEXO;

/*VENDEDOR QUE VENDEU MENOS EM MARCO*/
SELECT MIN(MARCO)
FROM VENDEDORES;

SELECT NOME, MARCO 
FROM VENDEDORES
WHERE MARCO = (SELECT MIN(MARCO)
FROM VENDEDORES);

/*VENDEDOR QUE VENDEU MAIS EM MARCO*/
SELECT NOME, MARCO
FROM VENDEDORES
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDORES);


/*VENDEDOR QUE VENDEU MAIS QUE VALOR MÉDIO DE FEVEREIRO*/
SELECT NOME, JANEIRO
FROM VENDEDORES
WHERE JANEIRO > (SELECT AVG(JANEIRO) FROM VENDEDORES);


SELECT NOME, FEVEREIRO
FROM VENDEDORES
WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES);


SELECT NOME, MARCO
FROM VENDEDORES
WHERE MARCO > (SELECT AVG(MARCO) FROM VENDEDORES);


/*RELATÓRIO*/
DELIMITER $
CREATE PROCEDURE RELATORIO()
BEGIN
	SELECT NOME, 
		   JANEIRO,
		   FEVEREIRO,
		   MARCO,
		   (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
		   (JANEIRO+FEVEREIRO+MARCO) * 0.25 AS "DESCONTO 25%",
		   TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3, 2) AS MEDIA
	FROM VENDEDORES;
END
$
DELIMITER;