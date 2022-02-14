CREATE DATABASE DB_GENERATION;


USE DB_GENERATION;

CREATE TABLE tbl_alunos (
ra INT NOT NULL AUTO_INCREMENT,
nome_aluno VARCHAR(255) NOT NULL,
curso VARCHAR(255) NOT NULL,
matricula INT NOT NULL,
nota FLOAT NOT NULL,
PRIMARY KEY (ra)
);


INSERT INTO tbl_alunos(nome_aluno, curso, matricula, nota)
VALUES
("Gabriel", "JAVA", 1, 7.5),
("Ana", "JAVA", 2, 8.5),
("Maria", "JAVA", 3, 3),
("Lucas", "JAVA", 4, 1),
("Leticia", "JAVA", 5, 10),
("Rafael", "JAVA", 6, 2),
("Miguel", "JAVA", 7, 4),
("Geovanna", "JAVA", 7, 6);


SELECT  nome_aluno AS `Nome`,ra AS `Resgistro do Aluno`,nota
FROM tbl_alunos
WHERE nota >= 7;


SELECT  nome_aluno AS `Nome`,ra AS `Resgistro do Aluno`,nota
FROM tbl_alunos
WHERE nota <= 7;


ALTER TABLE tbl_alunos CHANGE COLUMN ra  ra  INT NOT NULL;
SELECT * FROM tbl_alunos;