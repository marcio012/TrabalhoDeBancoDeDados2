-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: trabalhoDb2
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Fornecedores`
--

DROP TABLE IF EXISTS `Fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Fornecedores` (
  `frn` int(11) NOT NULL,
  `fnome` varchar(50) NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  PRIMARY KEY (`frn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornecedores`
--

LOCK TABLES `Fornecedores` WRITE;
/*!40000 ALTER TABLE `Fornecedores` DISABLE KEYS */;
INSERT INTO `Fornecedores` VALUES (1,'Acal da Construcao',1,'Fortaleza'),(2,'Normatel',1,'Caucaia'),(3,'Fort Tudo',1,'Maracanaú'),(4,'Deposito Santo Antonio',1,'Fortaleza'),(5,'Deposito O Baxinho',1,'Maracanaú');
/*!40000 ALTER TABLE `Fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Malotes`
--

DROP TABLE IF EXISTS `Malotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Malotes` (
  `frn` int(11) NOT NULL,
  `pnr` int(11) NOT NULL,
  `jnr` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  PRIMARY KEY (`frn`,`pnr`,`jnr`),
  KEY `jnr_idx` (`jnr`),
  KEY `fnr_idx` (`frn`),
  KEY `pnr_idx` (`pnr`),
  CONSTRAINT `fnr` FOREIGN KEY (`frn`) REFERENCES `fornecedores` (`frn`),
  CONSTRAINT `jnr` FOREIGN KEY (`jnr`) REFERENCES `projetos` (`jrn`),
  CONSTRAINT `pnr` FOREIGN KEY (`pnr`) REFERENCES `pecas` (`pnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Malotes`
--

LOCK TABLES `Malotes` WRITE;
/*!40000 ALTER TABLE `Malotes` DISABLE KEYS */;
INSERT INTO `Malotes` VALUES (1,2,3,1),(1,5,2,0),(2,1,4,4),(3,3,2,6),(4,4,1,2),(5,4,1,2);
/*!40000 ALTER TABLE `Malotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pecas`
--

DROP TABLE IF EXISTS `Pecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Pecas` (
  `pnr` int(11) NOT NULL,
  `pnome` varchar(50) NOT NULL,
  `cor` varchar(50) NOT NULL,
  `peso` double NOT NULL,
  `cidade` varchar(50) NOT NULL,
  PRIMARY KEY (`pnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pecas`
--

LOCK TABLES `Pecas` WRITE;
/*!40000 ALTER TABLE `Pecas` DISABLE KEYS */;
INSERT INTO `Pecas` VALUES (1,'Furadeira de impacto','vermelha',2.5,'Fortaleza'),(2,'Britadeira','preta',10,'Caucaia'),(3,'Parafusadeira Magica','azul',1,'Maracanaú'),(4,'Grua de vento','amarela',35,'Fortaleza'),(5,'Craft Table','vermelha',50,'Fortaleza'),(6,'Martelo do Thor','preto',1000,'Nova Floresta');
/*!40000 ALTER TABLE `Pecas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Projetos`
--

DROP TABLE IF EXISTS `Projetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Projetos` (
  `jrn` int(11) NOT NULL,
  `jnome` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  PRIMARY KEY (`jrn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projetos`
--

LOCK TABLES `Projetos` WRITE;
/*!40000 ALTER TABLE `Projetos` DISABLE KEYS */;
INSERT INTO `Projetos` VALUES (1,'Reforma da Casa Dona Maria','Fortaleza'),(2,'Reforma Praça Dom Bosco','Caucaia'),(3,'Metrofor','Maracanaú'),(4,'Metrofor - Fortaleza','Fortaleza');
/*!40000 ALTER TABLE `Projetos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-21 11:03:37
