-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bookstore
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bookstore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
USE `bookstore` ;

-- -----------------------------------------------------
-- Table `bookstore`.`lottery_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`lottery_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`prize`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`prize` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `description` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`lottery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`lottery` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lottery_type` INT NOT NULL,
  `dates` DATETIME NOT NULL,
  `prize` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `lottery_type` (`lottery_type` ASC) VISIBLE,
  INDEX `prize` (`prize` ASC) VISIBLE,
  CONSTRAINT `lottery_ibfk_1`
    FOREIGN KEY (`lottery_type`)
    REFERENCES `bookstore`.`lottery_type` (`id`),
  CONSTRAINT `lottery_ibfk_2`
    FOREIGN KEY (`prize`)
    REFERENCES `bookstore`.`prize` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`ticket` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lottery` INT NOT NULL,
  `numbers` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `lottery` (`lottery` ASC) VISIBLE,
  CONSTRAINT `ticket_ibfk_1`
    FOREIGN KEY (`lottery`)
    REFERENCES `bookstore`.`lottery` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`result`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`result` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lottery` INT NOT NULL,
  `numbers` VARCHAR(256) NOT NULL,
  `winner` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `lottery` (`lottery` ASC) VISIBLE,
  INDEX `winner` (`winner` ASC) VISIBLE,
  CONSTRAINT `result_ibfk_1`
    FOREIGN KEY (`lottery`)
    REFERENCES `bookstore`.`lottery` (`id`),
  CONSTRAINT `result_ibfk_2`
    FOREIGN KEY (`winner`)
    REFERENCES `bookstore`.`ticket` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
