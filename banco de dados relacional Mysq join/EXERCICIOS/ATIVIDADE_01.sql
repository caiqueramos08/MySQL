CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE  TABLE  tb_classe (
    id_classe BIGINT AUTO_INCREMENT,
    nome VARCHAR ( 20 ) NOT NULL ,
    atributo VARCHAR ( 20 ) NOT NULL ,
   PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem(
	id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    forca INT,
    arma VARCHAR(20),
    mundo VARCHAR(20),
    fk_classe INT NOT NULL,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe (nome, atributo)
VALUES 
("Arqueiro", "Leal-Bom"),
("Guerreiro", "Leal-Neutro"),
("Mago", "Neutro-Neutro"),
("Bárbaro", "Caótico-Bom"),
("Druída", "Neutro-Bom");

ALTER TABLE tb_personagem ADD CONSTRAINT fk_classe
FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe);



INSERT INTO tb_personagem (nome,forca, arma, mundo, fk_classe)
VALUES 
("Grandror",70,"Machado","Dorione",4),
("Mark",40,"Bastard Sword","Menione",2),
("Danca",28,"Besta veloz","Lóthlorien",1),
("Gandalph",31,"Cajado","Nistritch",3),
("Rosarhad",30,"Magnífica flecha","Lóthlorien",1),
("Varanis",36,"Cajado branco","Valfenda",5),
("Elria",23,"Arco sagrado","Lóthlorien",1),
("Odwolf",85,"Battleaxe","Dorione",4);

SELECT *FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem
WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem
WHERE nome LIKE '%c%';


SELECT tb_personagem.nome AS nome_jogador,arma,mundo
FROM tb_personagem -- ESQUERDA
INNER JOIN tb_classe -- DIREITA
ON  tb_personagem.id_personagem = tb_classe.id_classe;

SELECT arma AS Arma, ataque, defesa
FROM tb_personagem AS P
INNER JOIN tb_classe AS C
ON P.id_personagem = C.id_classe
WHERE C.nome LIKE 'Arqueiro'
ORDER BY ataque DESC;

SELECT tb_personagem.nome AS Caracter, ataque, defesa 
FROM tb_personagem 
INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe 
WHERE tb_classe.nome = "Arqueiro";
