-- MySQL Script generated by MySQL Workbench
-- 05/03/16 16:23:24
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema reis
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema reis
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `reis` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `reis` ;

-- -----------------------------------------------------
-- Table `reis`.`paciente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reis`.`paciente` ;
DROP TABLE IF EXISTS `reis`.`perfil` ;

CREATE TABLE IF NOT EXISTS `reis`.`paciente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(255) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `telefone_casa` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reis`.`login`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reis`.`login` ;

CREATE TABLE IF NOT EXISTS `reis`.`login` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `paciente_id` INT NOT NULL,
  PRIMARY KEY (`id`, `paciente_id`),
  INDEX `fk_login_paciente1_idx` (`paciente_id` ASC),
  CONSTRAINT `fk_login_paciente1`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `reis`.`paciente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reis`.`medicao_pressao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reis`.`medicao_pressao` ;

CREATE TABLE IF NOT EXISTS `reis`.`medicao_pressao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pressao_sistolica` DOUBLE NULL,
  `pressao_diastolica` DOUBLE NULL,
  `pressao_media` DOUBLE NULL,
  `taxa_pulso` DOUBLE NULL,
  `paciente_id` INT NOT NULL,
  PRIMARY KEY (`id`, `paciente_id`),
  INDEX `fk_medicao_pressao_paciente1_idx` (`paciente_id` ASC),
  CONSTRAINT `fk_medicao_pressao_paciente1`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `reis`.`paciente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reis`.`medicao_oximetro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reis`.`medicao_oximetro` ;

CREATE TABLE IF NOT EXISTS `reis`.`medicao_oximetro` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `spo2` DOUBLE NULL,
  `taxa_pulso` DOUBLE NULL,
  `paciente_id` INT NOT NULL,
  PRIMARY KEY (`id`, `paciente_id`),
  INDEX `fk_medicao_oximetro_paciente1_idx` (`paciente_id` ASC),
  CONSTRAINT `fk_medicao_oximetro_paciente1`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `reis`.`paciente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reis`.`medicao_balanca`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reis`.`medicao_balanca` ;

CREATE TABLE IF NOT EXISTS `reis`.`medicao_balanca` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `peso` DOUBLE NULL,
  `altura` DOUBLE NULL,
  `massa` DOUBLE NULL,
  `paciente_id` INT NOT NULL,
  PRIMARY KEY (`id`, `paciente_id`),
  INDEX `fk_medicao_balanca_paciente1_idx` (`paciente_id` ASC),
  CONSTRAINT `fk_medicao_balanca_paciente1`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `reis`.`paciente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
