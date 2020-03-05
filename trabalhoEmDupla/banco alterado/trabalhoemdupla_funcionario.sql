CREATE DATABASE  IF NOT EXISTS `trabalhoemdupla` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `trabalhoemdupla`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trabalhoemdupla
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `funcionario` (
  `cod` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `SobreNome` varchar(50) DEFAULT NULL,
  `Endereco` varchar(80) DEFAULT NULL,
  `Cpf` varchar(50) DEFAULT NULL,
  `DateNasc` date DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `CodSupervisor` int(11) DEFAULT NULL,
  `NumeroDepartamento` int(11) DEFAULT NULL,
  `Pais` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  KEY `FuncioDepartamento` (`CodSupervisor`),
  KEY `FuncioDep` (`NumeroDepartamento`),
  CONSTRAINT `FuncioDep` FOREIGN KEY (`NumeroDepartamento`) REFERENCES `departamento` (`NumeroDepartamento`) ON UPDATE CASCADE,
  CONSTRAINT `FuncioDepartamento` FOREIGN KEY (`CodSupervisor`) REFERENCES `funcionario` (`cod`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'João','Silva','Rua das Flores 751 – São Paulo','12345678966','1965-01-09','M',8000.00,NULL,5,NULL),(2,'Fernando','Wong','Rua da Lapa 34 – São Paulo','33344555587','1955-12-08','M',4000.00,1,2,NULL),(3,'Ronaldo','Lima','Rua Rebouças 65 – Piracicaba','66688444476','1962-09-15','M',3000.00,1,3,NULL),(4,'Joice','Leite','Avenida Lucas Obes 74 – São Paulo','45345345376','1972-07-31','F',2500.00,2,5,NULL);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-17 22:00:23
