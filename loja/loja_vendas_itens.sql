CREATE DATABASE  IF NOT EXISTS `loja` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `loja`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: loja
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vendas_itens`
--

DROP TABLE IF EXISTS `vendas_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_itens` (
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quant` double DEFAULT NULL,
  `valor_unit` double DEFAULT NULL,
  `total_item` double DEFAULT NULL,
  PRIMARY KEY (`id_venda`,`id_produto`),
  KEY `idDoProduto` (`id_produto`),
  CONSTRAINT `idDaVenda` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id_venda`) ON UPDATE CASCADE,
  CONSTRAINT `idDoProduto` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_itens`
--

LOCK TABLES `vendas_itens` WRITE;
/*!40000 ALTER TABLE `vendas_itens` DISABLE KEYS */;
INSERT INTO `vendas_itens` VALUES (1,111,2,100,200),(2,111,1,100,100),(2,119,2,100,200),(3,115,4,25,100),(3,118,2,75,150),(4,119,2,100,180),(5,111,2,100,200),(5,112,5,7,35),(5,116,1,16,15),(5,117,5,10,50),(5,119,2,100,200),(6,111,1,100,100),(6,114,1,75,75),(6,115,1,25,25),(7,115,2,25,50),(8,117,4,10,40),(8,118,2,75,150),(9,119,4,100,400);
/*!40000 ALTER TABLE `vendas_itens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-08 16:56:23
