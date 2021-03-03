USE SECAO08;

SELECT NOME, EMAIL, CIDADE, ESTADO
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE;

SELECT NOME, EMAIL, CIDADE, ESTADO
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F';

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
	
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE;