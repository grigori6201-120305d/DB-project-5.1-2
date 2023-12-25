-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Reflectance
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Reflectance
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Reflectance` DEFAULT CHARACTER SET utf8 ;
USE `Reflectance` ;

-- -----------------------------------------------------
-- Table `Reflectance`.` LaserIrradiation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Reflectance`.` LaserIrradiation` (
  `Wavelength` DOUBLE NOT NULL,
  `Type` VARCHAR(2) NOT NULL,
  `Fresh` DOUBLE NULL,
  `Pulse1` DOUBLE NULL,
  `Pulse2` DOUBLE NULL,
  `Pulse3` DOUBLE NULL,
  `Pulse5` DOUBLE NULL,
  PRIMARY KEY (`Wavelength`, `Type`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Reflectance`.`Parameters`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Reflectance`.`Parameters` (
  `Type` VARCHAR(2) NOT NULL,
  `LaserPulses` INT NOT NULL,
  `NormalizedIntensity` DOUBLE NULL,
  `Slope` DOUBLE NULL,
  `BandDepth` DOUBLE NULL,
  PRIMARY KEY (`Type`, `LaserPulses`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Reflectance`.`ScaledReflectance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Reflectance`.`ScaledReflectance` (
  `Wavelength` DOUBLE NOT NULL,
  `Type` VARCHAR(2) NOT NULL,
  `Fresh` DOUBLE NULL,
  `Pulse1` DOUBLE NULL,
  `Pulse5` DOUBLE NULL,
  PRIMARY KEY (`Wavelength`, `Type`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Reflectance`.`VacuumAmbientDiff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Reflectance`.`VacuumAmbientDiff` (
  `Wavelength` DOUBLE NOT NULL,
  `CMAmbient` DOUBLE NULL,
  `CMVacuum` DOUBLE NULL,
  `CIAmbient` DOUBLE NULL,
  `CIVacuum` DOUBLE NULL,
  PRIMARY KEY (`Wavelength`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Reflectance`.`DifferenceSpectra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Reflectance`.`DifferenceSpectra` (
  `Wavelength` DOUBLE NOT NULL,
  `CMVacuumAmbientDiff` DOUBLE NULL,
  `CIVacuumAmbientDiff` DOUBLE NULL,
  PRIMARY KEY (`Wavelength`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;