
CREATE DATABASE RH_DB;


USE RH_DB;

CREATE TABLE FUNCIONARIOS (
id_funcionario INT NOT NULL AUTO_INCREMENT,
nome_funcio VARCHAR(255),
cpf_funcio VARCHAR(255),
email_funcio VARCHAR(255),
salario_funcio FLOAT NULL,
PRIMARY KEY (id_funcionario)
);


INSERT INTO FUNCIONARIOS (nome_funcio, cpf_funcio, email_funcio, salario_funcio)
VALUES
("Gabriela", "999.999.999-99", "Gabriela@gmail.com", "2800.00"),
("joao maria", "999.999.999-99", "joao_maria@gmail.com", "1500.00"),
("Ana carolina", "999.999.999-99", "Ana@gmail.com", "1200.00"),
("giovanna", "999.999.999-99", "giovanna@gmail.com", "3000.00"),
("nathalia", "999.999.999-99", "nathalia@gmail.com", "2800.00");



SELECT  nome_funcio AS `Funcionario`,salario_funcio AS 'salario'
FROM FUNCIONARIOS
WHERE salario >= 2000.00;


SELECT  nome_funcio AS `Funcionario`,salario_funcio AS 'salario'
FROM FUNCIONARIOS
WHERE salario < 2000.00;


ALTER TABLE FUNCIONARIOS CHANGE COLUMN id_funcionario  id_funcionario  INT NOT NULL; -- meu primary key passa a ter que ser definido pelo usuario.
SELECT * FROM FUNCIONARIOS;