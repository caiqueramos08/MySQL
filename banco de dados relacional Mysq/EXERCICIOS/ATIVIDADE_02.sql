
CREATE DATABASE DB_DELIVERY;


USE DB_DELIVERY;

CREATE TABLE produtos(
id_produto INT NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR(255),
valor_produto FLOAT NOT NULL,
tipo_produto VARCHAR(255),
estoque INT NOT NULL,
PRIMARY KEY (id_produto)
);

INSERT INTO produtos (nome_produto, valor_produto, tipo_produto, estoque)
VALUES
("CERVEJA", 100.00, "BEBIDA ACOLICA", 200),
("Pera", 200.00, "FRUTA", 300),
("SUCO", 500.00, "BEBIDA", 500),
("CARNE", 600.00, "COMIDA", 100),
("PASTA DE DENTE", 800.00, "HIGIENICO", 300);


SELECT  nome_produto AS `Nome da Fruta`,tipo_produto AS `Tipo Do Produto`,id_produto as `Código Produto`,valor_produto `Valor`
FROM produtos
WHERE valor_produto > 500.00;


SELECT  nome_produto AS `Nome da Fruta`,tipo_produto AS `Tipo Do Produto`,id_produto as `Código Produto`,valor_produto `Valor`
FROM produtos
WHERE valor_produto <= 500.00;


ALTER TABLE produtos CHANGE COLUMN nome_produto nome_produto VARCHAR(240) NOT NULL; 

SELECT * FROM produtos;