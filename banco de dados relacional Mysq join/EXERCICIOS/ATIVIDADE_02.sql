SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE SCHEMA IF NOT EXISTS `db_pizzaria` DEFAULT CHARACTER SET utf8 ;
USE `db_pizzaria` ;

CREATE TABLE IF NOT EXISTS `db_pizzaria`.`tb_pizzaria` (
  `id_pizzaria` INT NOT NULL AUTO_INCREMENT,
  `produto` VARCHAR(45) NOT NULL,
  `sabor` VARCHAR(45) NOT NULL,
  `borda` VARCHAR(45) NOT NULL,
  `tamanho` VARCHAR(45) NOT NULL,
  `preco` DECIMAL NOT NULL,
  PRIMARY KEY (`id_pizzaria`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_pizzaria`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  `massa` VARCHAR(45) NOT NULL,
  `fk_pizzaria` INT NOT NULL,
  PRIMARY KEY (`id_categoria`, `fk_pizzaria`),
  INDEX `fk_tb_categoria_tb_pizzaria_idx` (`fk_pizzaria` ASC) VISIBLE,
  CONSTRAINT `fk_tb_categoria_tb_pizzaria`
    FOREIGN KEY (`fk_pizzaria`)
    REFERENCES `db_pizzaria`.`tb_pizzaria` (`id_pizzaria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO tb_pizzaria(produto, sabor, borda, tamanho, preco)
VALUES
("Pizza","Catupiry","Comum","Grande 8 Pedaços", 35.00),
("Pizza","Carne-Seca","Catupiry","Grande 8 Pedaços", 40.00),
("Pizza","Calabresa","Comum","Grande 8 Pedaços", 27.00),
("Pizza","Frango com Catupiry","Comum","Grande 8 Pedaços", 30.00),
("Pizza","Vegana","Comum","Grande 8 Pedaços", 50.00),
("Pizza","Chocolate","Comum","Grande 8 Pedaços", 35.00),
("Pizza","Floresta Negra","Comum","Grande 8 Pedaços", 40.00),
("Pizza","Chocolate Com Abacaxi","Comum","Grande 8 Pedaços", 60.00);


SELECT * FROM tb_pizzaria;

INSERT INTO tb_categoria(tipo, massa, fk_pizzaria)
VALUES
("Salgada","Folhada",1),
("Doce","Comum",8),
("Salgada","Comum",2),
("Salgada","Light",3),
("Salgada","Vegana",5);

SELECT * FROM tb_categoria;


SELECT tbp.sabor AS `Pizza`, tbp.preco AS `Valor`
FROM tb_pizzaria AS `tbp`
WHERE tbp.preco >= 45.00;


SELECT tbp.sabor AS `Pizza`, tbp.preco AS `Valor`
FROM tb_pizzaria AS `tbp`
WHERE tbp.preco between 29 and 60;


SELECT tbp.sabor AS `Sabor` , tbp.preco AS `Preço`
FROM tb_pizzaria AS `tbp`
WHERE tbp.sabor LIKE "C%";


SELECT * 
FROM tb_pizzaria AS `tbp`
INNER JOIN tb_categoria AS `tbc`