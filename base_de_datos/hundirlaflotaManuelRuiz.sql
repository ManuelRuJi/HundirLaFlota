-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hundirlaflota
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jugadas`
--

DROP TABLE IF EXISTS `jugadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadas` (
  `partida` int NOT NULL,
  `jugador` varchar(255) NOT NULL,
  `n_jugada` int NOT NULL,
  `fila` int DEFAULT NULL,
  `columna` int DEFAULT NULL,
  `resultado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`partida`,`jugador`,`n_jugada`),
  CONSTRAINT `jugadas_ibfk_1` FOREIGN KEY (`partida`, `jugador`) REFERENCES `jugadorespartida` (`partida`, `jugador`),
  CONSTRAINT `jugadas_chk_1` CHECK ((`resultado` in (_utf8mb4'AGUA',_utf8mb4'TOCADO',_utf8mb4'HUNDIDO'))),
  CONSTRAINT `jugadas_chk_2` CHECK (((`fila` >= 0) and (`fila` <= 9))),
  CONSTRAINT `jugadas_chk_3` CHECK (((`columna` >= 0) and (`columna` <= 9)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadas`
--

LOCK TABLES `jugadas` WRITE;
/*!40000 ALTER TABLE `jugadas` DISABLE KEYS */;
INSERT INTO `jugadas` VALUES (1,'ale',1,1,6,'TOCADO'),(1,'ale',3,2,6,'TOCADO'),(1,'ale',5,3,6,'HUNDIDO'),(1,'ale',7,4,1,'TOCADO'),(1,'ale',9,6,9,'TOCADO'),(1,'ale',11,4,0,'TOCADO'),(1,'ale',13,4,2,'TOCADO'),(1,'ale',15,4,3,'TOCADO'),(1,'ale',17,7,9,'HUNDIDO'),(1,'ale',19,7,3,'AGUA'),(1,'ale',21,9,3,'TOCADO'),(1,'ale',23,9,4,'TOCADO'),(1,'ale',25,4,4,'HUNDIDO'),(1,'ale',27,9,5,'AGUA'),(1,'ale',29,9,2,'TOCADO'),(1,'ale',31,9,1,'HUNDIDO'),(1,'ale',33,1,2,'AGUA'),(1,'ale',35,2,8,'AGUA'),(1,'ale',37,3,9,'TOCADO'),(1,'ale',39,2,9,'TOCADO'),(1,'mari',2,1,4,'AGUA'),(1,'mari',4,4,6,'AGUA'),(1,'mari',6,2,8,'TOCADO'),(1,'mari',8,3,8,'HUNDIDO'),(1,'mari',10,8,3,'TOCADO'),(1,'mari',12,8,2,'AGUA'),(1,'mari',14,7,3,'TOCADO'),(1,'mari',16,6,3,'HUNDIDO'),(1,'mari',18,6,7,'TOCADO'),(1,'mari',20,7,7,'TOCADO'),(1,'mari',22,8,7,'HUNDIDO'),(1,'mari',24,4,2,'TOCADO'),(1,'mari',26,3,2,'TOCADO'),(1,'mari',28,2,2,'TOCADO'),(1,'mari',30,1,2,'HUNDIDO'),(1,'mari',32,1,5,'TOCADO'),(1,'mari',34,2,5,'TOCADO'),(1,'mari',36,3,5,'TOCADO'),(1,'mari',38,4,5,'TOCADO'),(1,'mari',40,5,5,'HUNDIDO'),(2,'manuel',1,1,5,'AGUA'),(2,'manuel',3,0,2,'TOCADO'),(2,'manuel',5,0,3,'TOCADO'),(2,'mari',2,0,4,'TOCADO'),(2,'mari',4,0,5,'HUNDIDO'),(2,'mari',6,4,5,'AGUA'),(3,'mari',1,3,4,'AGUA'),(3,'mari',3,5,6,'AGUA'),(3,'mari',5,7,3,'TOCADO'),(3,'mari',7,7,4,'TOCADO'),(3,'mari',9,7,5,'AGUA'),(3,'mari',11,7,2,'HUNDIDO'),(3,'mari',13,8,7,'AGUA'),(3,'mari',15,3,1,'TOCADO'),(3,'mari',17,4,1,'AGUA'),(3,'mari',19,2,1,'AGUA'),(3,'mari',21,3,2,'TOCADO'),(3,'mari',23,3,0,'HUNDIDO'),(3,'mari',25,5,3,'AGUA'),(3,'mari',27,3,6,'AGUA'),(3,'mari',29,5,8,'AGUA'),(3,'mari',31,1,8,'AGUA'),(3,'mari',33,3,8,'AGUA'),(3,'mari',35,2,7,'TOCADO'),(3,'mari',37,2,8,'AGUA'),(3,'mari',39,2,6,'TOCADO'),(3,'mari',41,2,5,'TOCADO'),(3,'mari',43,2,4,'HUNDIDO'),(3,'mari',45,5,5,'AGUA'),(3,'mari',47,9,3,'AGUA'),(3,'mari',49,7,7,'AGUA'),(3,'mari',51,1,1,'TOCADO'),(3,'mari',53,0,1,'HUNDIDO'),(3,'mari',55,0,4,'AGUA'),(3,'mari',57,9,6,'AGUA'),(3,'mari',59,0,6,'AGUA'),(3,'mari',61,7,9,'AGUA'),(3,'mari',63,8,0,'AGUA'),(3,'mari',65,4,5,'TOCADO'),(3,'usuario',2,5,5,'TOCADO'),(3,'usuario',4,5,4,'AGUA'),(3,'usuario',6,5,6,'AGUA'),(3,'usuario',8,6,5,'TOCADO'),(3,'usuario',10,7,5,'TOCADO'),(3,'usuario',12,8,5,'HUNDIDO'),(3,'usuario',14,3,2,'TOCADO'),(3,'usuario',16,3,3,'AGUA'),(3,'usuario',18,3,1,'AGUA'),(3,'usuario',20,4,2,'AGUA'),(3,'usuario',22,2,2,'HUNDIDO'),(3,'usuario',24,7,7,'AGUA'),(3,'usuario',26,7,2,'TOCADO'),(3,'usuario',28,7,1,'AGUA'),(3,'usuario',30,8,2,'TOCADO'),(3,'usuario',32,9,2,'TOCADO'),(3,'usuario',34,6,2,'TOCADO'),(3,'usuario',36,5,2,'HUNDIDO'),(3,'usuario',38,3,6,'AGUA'),(3,'usuario',40,3,8,'AGUA'),(3,'usuario',42,4,7,'AGUA'),(3,'usuario',44,2,5,'TOCADO'),(3,'usuario',46,2,4,'AGUA'),(3,'usuario',48,2,6,'TOCADO'),(3,'usuario',50,2,7,'HUNDIDO'),(3,'usuario',52,6,8,'AGUA'),(3,'usuario',54,0,4,'AGUA'),(3,'usuario',56,0,7,'AGUA'),(3,'usuario',58,0,1,'AGUA'),(3,'usuario',60,5,0,'TOCADO'),(3,'usuario',62,6,0,'TOCADO'),(3,'usuario',64,4,0,'AGUA'),(3,'usuario',66,7,0,'HUNDIDO'),(4,'ale',1,4,4,'AGUA'),(4,'ale',3,4,3,'TOCADO'),(4,'ale',5,5,3,'TOCADO'),(4,'ale',7,6,3,'TOCADO'),(4,'ale',9,7,3,'TOCADO'),(4,'ale',11,8,3,'AGUA'),(4,'ale',13,3,3,'HUNDIDO'),(4,'ale',15,2,7,'AGUA'),(4,'ale',17,1,7,'AGUA'),(4,'ale',19,1,6,'TOCADO'),(4,'ale',21,1,5,'TOCADO'),(4,'ale',23,1,4,'HUNDIDO'),(4,'ale',25,3,0,'TOCADO'),(4,'ale',27,2,0,'TOCADO'),(4,'ale',29,4,0,'HUNDIDO'),(4,'ale',31,7,6,'TOCADO'),(4,'ale',33,6,6,'TOCADO'),(4,'ale',35,5,6,'TOCADO'),(4,'ale',37,4,6,'HUNDIDO'),(4,'ale',39,3,8,'TOCADO'),(4,'ale',41,4,8,'HUNDIDO'),(4,'mari',2,4,2,'AGUA'),(4,'mari',4,5,5,'AGUA'),(4,'mari',6,7,2,'AGUA'),(4,'mari',8,2,7,'AGUA'),(4,'mari',10,2,4,'AGUA'),(4,'mari',12,1,2,'AGUA'),(4,'mari',14,7,7,'TOCADO'),(4,'mari',16,6,7,'TOCADO'),(4,'mari',18,5,7,'HUNDIDO'),(4,'mari',20,3,9,'AGUA'),(4,'mari',22,3,8,'TOCADO'),(4,'mari',24,3,7,'AGUA'),(4,'mari',26,2,8,'TOCADO'),(4,'mari',28,1,8,'HUNDIDO'),(4,'mari',30,7,5,'AGUA'),(4,'mari',32,6,3,'TOCADO'),(4,'mari',34,5,3,'TOCADO'),(4,'mari',36,4,3,'TOCADO'),(4,'mari',38,2,5,'AGUA'),(4,'mari',40,2,6,'TOCADO'),(6,'mari',1,4,4,'AGUA'),(7,'manuel',2,4,4,'AGUA'),(7,'manuel',4,1,2,'TOCADO'),(7,'manuel',6,0,7,'AGUA'),(7,'manuel',8,1,3,'TOCADO'),(7,'manuel',10,1,4,'TOCADO'),(7,'manuel',12,1,5,'HUNDIDO'),(7,'manuel',14,7,1,'AGUA'),(7,'manuel',16,7,6,'TOCADO'),(7,'manuel',18,6,6,'AGUA'),(7,'manuel',20,7,5,'TOCADO'),(7,'manuel',22,7,7,'TOCADO'),(7,'manuel',24,7,8,'TOCADO'),(7,'manuel',26,7,4,'HUNDIDO'),(7,'manuel',28,4,7,'AGUA'),(7,'manuel',30,4,1,'TOCADO'),(7,'manuel',32,4,2,'AGUA'),(7,'manuel',34,4,0,'HUNDIDO'),(7,'manuel',36,8,2,'AGUA'),(7,'manuel',38,9,4,'AGUA'),(7,'manuel',40,9,6,'AGUA'),(7,'manuel',42,3,6,'TOCADO'),(7,'manuel',44,3,7,'TOCADO'),(7,'manuel',46,3,8,'AGUA'),(7,'manuel',48,3,5,'HUNDIDO'),(7,'manuel',50,6,2,'AGUA'),(7,'manuel',52,1,8,'AGUA'),(7,'manuel',54,8,0,'AGUA'),(7,'manuel',56,9,1,'TOCADO'),(7,'manuel',58,2,9,'AGUA'),(7,'manuel',60,0,9,'AGUA'),(7,'manuel',62,9,2,'TOCADO'),(7,'manuel',64,0,8,'AGUA'),(7,'manuel',66,1,9,'AGUA'),(7,'manuel',68,2,8,'AGUA'),(7,'mari',1,7,6,'AGUA'),(7,'mari',3,3,7,'AGUA'),(7,'mari',5,0,0,'TOCADO'),(7,'mari',7,0,1,'HUNDIDO'),(7,'mari',9,3,0,'AGUA'),(7,'mari',11,2,0,'TOCADO'),(7,'mari',13,2,1,'TOCADO'),(7,'mari',15,7,3,'AGUA'),(7,'mari',17,2,2,'TOCADO'),(7,'mari',19,2,3,'TOCADO'),(7,'mari',21,2,4,'HUNDIDO'),(7,'mari',23,8,4,'AGUA'),(7,'mari',25,7,4,'AGUA'),(7,'mari',27,5,3,'AGUA'),(7,'mari',29,1,6,'AGUA'),(7,'mari',31,5,5,'AGUA'),(7,'mari',33,9,3,'AGUA'),(7,'mari',35,4,3,'TOCADO'),(7,'mari',37,4,4,'TOCADO'),(7,'mari',39,4,5,'TOCADO'),(7,'mari',41,4,6,'HUNDIDO'),(7,'mari',43,6,1,'AGUA'),(7,'mari',45,6,8,'TOCADO'),(7,'mari',47,6,7,'TOCADO'),(7,'mari',49,6,6,'HUNDIDO'),(7,'mari',51,2,7,'AGUA'),(7,'mari',53,0,6,'AGUA'),(7,'mari',55,8,6,'AGUA'),(7,'mari',57,8,1,'AGUA'),(7,'mari',59,9,7,'AGUA'),(7,'mari',61,8,8,'AGUA'),(7,'mari',63,1,9,'TOCADO'),(7,'mari',65,2,9,'TOCADO'),(7,'mari',67,3,9,'AGUA'),(7,'mari',69,0,9,'HUNDIDO'),(8,'mari',1,4,7,'AGUA'),(9,'ale',1,1,2,'TOCADO'),(9,'ale',3,1,3,'TOCADO'),(9,'usuario',2,6,4,'AGUA'),(10,'mari',2,9,9,'AGUA'),(10,'usuario',1,4,5,'AGUA'),(13,'ale',2,5,2,'AGUA'),(13,'ale',4,4,6,'TOCADO'),(13,'ale',6,3,6,'TOCADO'),(13,'ale',8,2,6,'AGUA'),(13,'mari',1,5,4,'AGUA'),(13,'mari',3,3,7,'TOCADO'),(13,'mari',5,4,7,'TOCADO'),(13,'mari',7,5,7,'TOCADO'),(13,'mari',9,2,5,'AGUA'),(14,'ale',2,4,4,'AGUA'),(14,'ale',4,6,6,'AGUA'),(14,'ale',6,7,3,'AGUA'),(14,'ale',8,2,7,'AGUA'),(14,'ale',10,3,2,'AGUA'),(14,'ale',12,5,1,'TOCADO'),(14,'ale',14,5,3,'AGUA'),(14,'ale',16,6,1,'AGUA'),(14,'ale',18,4,1,'TOCADO'),(14,'ale',20,3,1,'TOCADO'),(14,'ale',22,2,1,'HUNDIDO'),(14,'ale',24,8,5,'AGUA'),(14,'ale',26,1,3,'AGUA'),(14,'ale',28,4,7,'AGUA'),(14,'ale',30,8,8,'AGUA'),(14,'ale',32,3,3,'AGUA'),(14,'ale',34,8,2,'TOCADO'),(14,'ale',36,8,1,'AGUA'),(14,'ale',38,8,3,'AGUA'),(14,'ale',40,7,2,'TOCADO'),(14,'ale',42,9,2,'HUNDIDO'),(14,'ale',44,6,4,'AGUA'),(14,'ale',46,3,5,'AGUA'),(14,'ale',48,5,5,'AGUA'),(14,'ale',50,2,4,'AGUA'),(14,'ale',52,0,2,'AGUA'),(14,'ale',54,6,8,'AGUA'),(14,'ale',56,9,5,'AGUA'),(14,'ale',58,0,5,'AGUA'),(14,'ale',60,9,7,'AGUA'),(14,'ale',62,8,4,'AGUA'),(14,'ale',64,7,5,'TOCADO'),(14,'ale',66,7,6,'TOCADO'),(14,'ale',68,7,4,'AGUA'),(14,'ale',70,7,7,'TOCADO'),(14,'ale',72,7,8,'TOCADO'),(14,'ale',74,7,9,'HUNDIDO'),(14,'ale',76,4,9,'AGUA'),(14,'ale',78,4,8,'AGUA'),(14,'ale',80,5,7,'AGUA'),(14,'ale',82,5,9,'AGUA'),(14,'manuel',1,2,2,'AGUA'),(14,'manuel',3,1,8,'AGUA'),(14,'manuel',5,6,4,'TOCADO'),(14,'manuel',7,6,3,'TOCADO'),(14,'manuel',9,6,2,'TOCADO'),(14,'manuel',11,6,1,'TOCADO'),(14,'manuel',13,6,5,'AGUA'),(14,'manuel',15,6,0,'HUNDIDO'),(14,'manuel',17,3,6,'TOCADO'),(14,'manuel',19,2,6,'TOCADO'),(14,'manuel',21,1,6,'AGUA'),(14,'manuel',23,4,6,'HUNDIDO'),(14,'manuel',25,8,7,'AGUA'),(14,'manuel',27,9,2,'AGUA'),(14,'manuel',29,1,3,'AGUA'),(14,'manuel',31,4,4,'AGUA'),(14,'manuel',33,4,8,'TOCADO'),(14,'manuel',35,5,8,'TOCADO'),(14,'manuel',37,6,8,'AGUA'),(14,'manuel',39,3,8,'TOCADO'),(14,'manuel',41,2,8,'HUNDIDO'),(14,'manuel',43,8,4,'AGUA'),(14,'manuel',45,3,1,'AGUA'),(14,'manuel',47,0,2,'AGUA'),(14,'manuel',49,0,5,'AGUA'),(14,'manuel',51,4,2,'AGUA'),(14,'manuel',53,8,5,'AGUA'),(14,'manuel',55,9,7,'AGUA'),(14,'manuel',57,2,0,'AGUA'),(14,'manuel',59,8,2,'AGUA'),(14,'manuel',61,8,0,'AGUA'),(14,'manuel',63,3,3,'AGUA'),(14,'manuel',65,0,7,'AGUA'),(14,'manuel',67,1,4,'AGUA'),(14,'manuel',69,9,4,'TOCADO'),(14,'manuel',71,9,5,'TOCADO'),(14,'manuel',73,9,6,'HUNDIDO'),(14,'manuel',75,1,1,'AGUA'),(14,'manuel',77,8,9,'AGUA'),(14,'manuel',79,9,1,'AGUA'),(14,'manuel',81,0,9,'TOCADO'),(14,'manuel',83,0,8,'HUNDIDO'),(15,'manuel',2,0,0,'AGUA'),(15,'manuel',4,0,1,'AGUA'),(15,'manuel',6,0,2,'AGUA'),(15,'manuel',8,0,3,'AGUA'),(15,'manuel',10,0,4,'AGUA'),(15,'manuel',12,0,5,'AGUA'),(15,'manuel',14,1,5,'AGUA'),(15,'manuel',16,2,5,'AGUA'),(15,'manuel',18,2,6,'AGUA'),(15,'manuel',20,2,7,'AGUA'),(15,'manuel',22,1,7,'AGUA'),(15,'manuel',24,0,7,'AGUA'),(15,'manuel',26,0,8,'AGUA'),(15,'manuel',28,0,9,'AGUA'),(15,'manuel',30,1,9,'AGUA'),(15,'manuel',32,2,9,'AGUA'),(15,'mari',1,0,2,'TOCADO'),(15,'mari',3,1,2,'TOCADO'),(15,'mari',5,2,2,'TOCADO'),(15,'mari',7,3,2,'TOCADO'),(15,'mari',9,4,2,'HUNDIDO'),(15,'mari',11,0,7,'TOCADO'),(15,'mari',13,1,7,'TOCADO'),(15,'mari',15,2,7,'HUNDIDO'),(15,'mari',17,4,8,'TOCADO'),(15,'mari',19,5,8,'TOCADO'),(15,'mari',21,6,8,'TOCADO'),(15,'mari',23,7,8,'HUNDIDO'),(15,'mari',25,9,7,'TOCADO'),(15,'mari',27,9,6,'HUNDIDO'),(15,'mari',29,7,5,'TOCADO'),(15,'mari',31,6,5,'TOCADO'),(15,'mari',33,5,5,'HUNDIDO'),(17,'ale',1,9,9,'AGUA'),(19,'ale',1,1,5,'AGUA'),(19,'ale',3,0,5,'TOCADO'),(19,'ale',5,0,4,'TOCADO'),(19,'ale',7,0,6,'HUNDIDO'),(19,'manuel',2,1,3,'TOCADO'),(19,'manuel',4,1,4,'TOCADO'),(19,'manuel',6,1,5,'HUNDIDO'),(20,'ale',1,3,5,'TOCADO'),(20,'ale',3,2,5,'AGUA'),(20,'ale',5,3,4,'TOCADO'),(20,'ale',10,4,6,'AGUA'),(20,'ale',12,4,5,'AGUA'),(20,'ale',14,4,4,'AGUA'),(20,'manuel',2,2,4,'AGUA'),(20,'manuel',4,3,5,'TOCADO'),(20,'manuel',6,3,5,'TOCADO'),(20,'manuel',11,3,5,'TOCADO'),(20,'manuel',13,4,5,'TOCADO'),(20,'manuel',15,5,5,'HUNDIDO'),(21,'ale',1,4,6,'AGUA'),(21,'ale',3,3,3,'TOCADO'),(21,'ale',5,4,3,'TOCADO'),(21,'ale',7,2,3,'HUNDIDO'),(21,'ale',9,3,9,'TOCADO'),(21,'ale',11,2,9,'TOCADO'),(21,'ale',13,1,9,'HUNDIDO'),(21,'ale',15,7,7,'TOCADO'),(21,'ale',17,8,7,'HUNDIDO'),(21,'ale',19,7,2,'AGUA'),(21,'ale',21,7,3,'TOCADO'),(21,'ale',23,8,3,'TOCADO'),(21,'ale',25,6,3,'TOCADO'),(21,'ale',27,9,3,'HUNDIDO'),(21,'ale',29,7,1,'TOCADO'),(21,'ale',31,6,1,'TOCADO'),(21,'ale',33,5,1,'TOCADO'),(21,'ale',35,4,1,'TOCADO'),(21,'ale',37,3,1,'HUNDIDO'),(21,'manuel',2,3,4,'AGUA'),(21,'manuel',4,3,7,'TOCADO'),(21,'manuel',6,4,7,'TOCADO'),(21,'manuel',8,5,7,'HUNDIDO'),(21,'manuel',10,3,1,'AGUA'),(21,'manuel',12,4,1,'TOCADO'),(21,'manuel',14,5,1,'TOCADO'),(21,'manuel',16,6,1,'TOCADO'),(21,'manuel',18,7,1,'TOCADO'),(21,'manuel',20,8,1,'HUNDIDO'),(21,'manuel',22,7,4,'TOCADO'),(21,'manuel',24,6,4,'HUNDIDO'),(21,'manuel',26,7,7,'TOCADO'),(21,'manuel',28,7,8,'TOCADO'),(21,'manuel',30,7,9,'HUNDIDO'),(21,'manuel',32,1,4,'TOCADO'),(21,'manuel',34,1,5,'TOCADO'),(21,'manuel',36,1,3,'TOCADO'),(22,'ale',2,1,0,'AGUA'),(22,'manuel',1,3,6,'AGUA');
/*!40000 ALTER TABLE `jugadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `nombre` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES ('ale','ale'),('manuel','manuel'),('mari','mari'),('usuario','usuario');
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadorespartida`
--

DROP TABLE IF EXISTS `jugadorespartida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadorespartida` (
  `partida` int NOT NULL,
  `jugador` varchar(255) NOT NULL,
  `turno` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`partida`,`jugador`),
  KEY `jugador` (`jugador`),
  CONSTRAINT `jugadorespartida_ibfk_1` FOREIGN KEY (`partida`) REFERENCES `partidas` (`ID_Partida`),
  CONSTRAINT `jugadorespartida_ibfk_2` FOREIGN KEY (`jugador`) REFERENCES `jugadores` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadorespartida`
--

LOCK TABLES `jugadorespartida` WRITE;
/*!40000 ALTER TABLE `jugadorespartida` DISABLE KEYS */;
INSERT INTO `jugadorespartida` VALUES (19,'ale',0),(19,'manuel',0),(20,'ale',0),(20,'manuel',0),(21,'ale',0),(21,'manuel',0),(22,'ale',0),(22,'manuel',1);
/*!40000 ALTER TABLE `jugadorespartida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas` (
  `ID_Partida` int NOT NULL AUTO_INCREMENT,
  `ganador` varchar(255) DEFAULT NULL,
  `terminada` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID_Partida`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
INSERT INTO `partidas` VALUES (1,'mari',1),(2,'en_juego',0),(3,'usuario',1),(4,'ale',1),(5,'ale',1),(6,'mari',1),(7,'mari',1),(8,'en_juego',0),(9,'ale',1),(10,'usuario',1),(11,'ale',1),(12,'manuel',1),(13,'en_juego',0),(14,'manuel',1),(15,'mari',1),(16,'en_juego',0),(17,'en_juego',0),(18,'en_juego',0),(19,'manuel',1),(20,'ale',1),(21,'ale',1),(22,'en_juego',0);
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicion_barcos`
--

DROP TABLE IF EXISTS `posicion_barcos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posicion_barcos` (
  `partida` int NOT NULL,
  `jugador` varchar(255) NOT NULL,
  `fila` int NOT NULL,
  `columna` int NOT NULL,
  PRIMARY KEY (`partida`,`jugador`,`fila`,`columna`),
  CONSTRAINT `posicion_barcos_ibfk_1` FOREIGN KEY (`partida`, `jugador`) REFERENCES `jugadorespartida` (`partida`, `jugador`),
  CONSTRAINT `posicion_barcos_chk_1` CHECK (((`fila` >= 0) and (`fila` <= 9))),
  CONSTRAINT `posicion_barcos_chk_2` CHECK (((`columna` >= 0) and (`columna` <= 9)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion_barcos`
--

LOCK TABLES `posicion_barcos` WRITE;
/*!40000 ALTER TABLE `posicion_barcos` DISABLE KEYS */;
INSERT INTO `posicion_barcos` VALUES (1,'ale',1,2),(1,'ale',1,5),(1,'ale',2,2),(1,'ale',2,5),(1,'ale',2,8),(1,'ale',3,2),(1,'ale',3,5),(1,'ale',3,8),(1,'ale',4,2),(1,'ale',4,5),(1,'ale',5,5),(1,'ale',6,3),(1,'ale',6,7),(1,'ale',7,3),(1,'ale',7,7),(1,'ale',8,3),(1,'ale',8,7),(1,'mari',1,6),(1,'mari',2,6),(1,'mari',2,9),(1,'mari',3,6),(1,'mari',3,9),(1,'mari',4,0),(1,'mari',4,1),(1,'mari',4,2),(1,'mari',4,3),(1,'mari',4,4),(1,'mari',4,9),(1,'mari',6,9),(1,'mari',7,9),(1,'mari',9,1),(1,'mari',9,2),(1,'mari',9,3),(1,'mari',9,4),(2,'manuel',0,4),(2,'manuel',0,5),(2,'manuel',3,2),(2,'manuel',3,3),(2,'manuel',3,4),(2,'manuel',3,5),(2,'manuel',3,6),(2,'manuel',6,1),(2,'manuel',6,2),(2,'manuel',6,3),(2,'manuel',6,4),(2,'manuel',8,0),(2,'manuel',8,1),(2,'manuel',8,2),(2,'manuel',8,5),(2,'manuel',8,6),(2,'manuel',8,7),(2,'mari',0,2),(2,'mari',0,3),(2,'mari',0,4),(2,'mari',2,2),(2,'mari',2,3),(2,'mari',2,4),(2,'mari',2,5),(2,'mari',2,6),(2,'mari',5,1),(2,'mari',6,1),(2,'mari',7,1),(2,'mari',7,3),(2,'mari',7,4),(2,'mari',7,5),(2,'mari',8,1),(2,'mari',8,8),(2,'mari',9,8),(3,'mari',2,2),(3,'mari',2,5),(3,'mari',2,6),(3,'mari',2,7),(3,'mari',3,2),(3,'mari',5,0),(3,'mari',5,2),(3,'mari',5,5),(3,'mari',6,0),(3,'mari',6,2),(3,'mari',6,5),(3,'mari',7,0),(3,'mari',7,2),(3,'mari',7,5),(3,'mari',8,2),(3,'mari',8,5),(3,'mari',9,2),(3,'usuario',0,1),(3,'usuario',1,1),(3,'usuario',2,4),(3,'usuario',2,5),(3,'usuario',2,6),(3,'usuario',2,7),(3,'usuario',3,0),(3,'usuario',3,1),(3,'usuario',3,2),(3,'usuario',4,4),(3,'usuario',4,5),(3,'usuario',4,6),(3,'usuario',4,7),(3,'usuario',4,8),(3,'usuario',7,2),(3,'usuario',7,3),(3,'usuario',7,4),(4,'ale',0,6),(4,'ale',1,3),(4,'ale',1,4),(4,'ale',1,6),(4,'ale',1,8),(4,'ale',2,6),(4,'ale',2,8),(4,'ale',3,3),(4,'ale',3,6),(4,'ale',3,8),(4,'ale',4,3),(4,'ale',5,3),(4,'ale',5,7),(4,'ale',6,3),(4,'ale',6,7),(4,'ale',7,3),(4,'ale',7,7),(4,'mari',1,4),(4,'mari',1,5),(4,'mari',1,6),(4,'mari',2,0),(4,'mari',3,0),(4,'mari',3,3),(4,'mari',3,8),(4,'mari',4,0),(4,'mari',4,3),(4,'mari',4,6),(4,'mari',4,8),(4,'mari',5,3),(4,'mari',5,6),(4,'mari',6,3),(4,'mari',6,6),(4,'mari',7,3),(4,'mari',7,6),(5,'ale',1,2),(5,'ale',1,7),(5,'ale',2,2),(5,'ale',2,4),(5,'ale',2,7),(5,'ale',3,2),(5,'ale',3,4),(5,'ale',3,7),(5,'ale',4,0),(5,'ale',4,4),(5,'ale',4,7),(5,'ale',5,0),(5,'ale',5,4),(5,'ale',6,0),(5,'ale',6,4),(5,'ale',9,0),(5,'ale',9,1),(5,'mari',0,4),(5,'mari',1,4),(5,'mari',2,2),(5,'mari',2,4),(5,'mari',2,8),(5,'mari',3,2),(5,'mari',3,4),(5,'mari',3,8),(5,'mari',4,2),(5,'mari',4,4),(5,'mari',4,8),(5,'mari',5,8),(5,'mari',6,2),(5,'mari',7,2),(5,'mari',7,4),(5,'mari',8,4),(5,'mari',9,4),(6,'ale',1,6),(6,'ale',1,8),(6,'ale',2,6),(6,'ale',2,8),(6,'ale',3,6),(6,'ale',3,8),(6,'ale',4,8),(6,'ale',5,2),(6,'ale',5,8),(6,'ale',6,2),(6,'ale',7,2),(6,'ale',8,8),(6,'ale',8,9),(6,'ale',9,0),(6,'ale',9,1),(6,'ale',9,2),(6,'ale',9,3),(6,'mari',0,7),(6,'mari',0,8),(6,'mari',0,9),(6,'mari',2,3),(6,'mari',3,3),(6,'mari',4,3),(6,'mari',4,5),(6,'mari',5,5),(6,'mari',6,1),(6,'mari',6,5),(6,'mari',7,1),(6,'mari',7,5),(6,'mari',8,1),(6,'mari',8,5),(6,'mari',8,8),(6,'mari',9,1),(6,'mari',9,8),(7,'manuel',0,0),(7,'manuel',0,1),(7,'manuel',0,9),(7,'manuel',1,9),(7,'manuel',2,0),(7,'manuel',2,1),(7,'manuel',2,2),(7,'manuel',2,3),(7,'manuel',2,4),(7,'manuel',2,9),(7,'manuel',4,3),(7,'manuel',4,4),(7,'manuel',4,5),(7,'manuel',4,6),(7,'manuel',6,6),(7,'manuel',6,7),(7,'manuel',6,8),(7,'mari',1,2),(7,'mari',1,3),(7,'mari',1,4),(7,'mari',1,5),(7,'mari',3,5),(7,'mari',3,6),(7,'mari',3,7),(7,'mari',4,0),(7,'mari',4,1),(7,'mari',7,4),(7,'mari',7,5),(7,'mari',7,6),(7,'mari',7,7),(7,'mari',7,8),(7,'mari',9,0),(7,'mari',9,1),(7,'mari',9,2),(8,'mari',0,3),(8,'mari',1,3),(8,'mari',1,7),(8,'mari',1,8),(8,'mari',1,9),(8,'mari',2,3),(8,'mari',3,3),(8,'mari',5,5),(8,'mari',6,5),(8,'mari',7,5),(8,'mari',7,9),(8,'mari',8,5),(8,'mari',8,9),(8,'mari',9,0),(8,'mari',9,1),(8,'mari',9,2),(8,'mari',9,5),(8,'usuario',0,6),(8,'usuario',0,7),(8,'usuario',0,9),(8,'usuario',1,9),(8,'usuario',2,2),(8,'usuario',2,3),(8,'usuario',2,4),(8,'usuario',2,9),(8,'usuario',3,9),(8,'usuario',4,5),(8,'usuario',4,9),(8,'usuario',5,5),(8,'usuario',6,5),(8,'usuario',8,3),(8,'usuario',8,4),(8,'usuario',8,5),(8,'usuario',8,6),(9,'ale',1,3),(9,'ale',1,4),(9,'ale',1,7),(9,'ale',2,1),(9,'ale',2,7),(9,'ale',3,1),(9,'ale',3,7),(9,'ale',4,1),(9,'ale',4,7),(9,'ale',7,4),(9,'ale',7,5),(9,'ale',7,6),(9,'ale',7,7),(9,'ale',7,8),(9,'ale',9,0),(9,'ale',9,1),(9,'ale',9,2),(9,'usuario',1,2),(9,'usuario',1,3),(9,'usuario',1,4),(9,'usuario',1,5),(9,'usuario',1,6),(9,'usuario',1,9),(9,'usuario',2,9),(9,'usuario',3,9),(9,'usuario',4,3),(9,'usuario',4,4),(9,'usuario',4,5),(9,'usuario',4,6),(9,'usuario',5,0),(9,'usuario',5,1),(9,'usuario',7,2),(9,'usuario',8,2),(9,'usuario',9,2),(10,'mari',1,0),(10,'mari',2,0),(10,'mari',4,1),(10,'mari',4,2),(10,'mari',4,3),(10,'mari',5,7),(10,'mari',6,7),(10,'mari',7,0),(10,'mari',7,1),(10,'mari',7,2),(10,'mari',7,7),(10,'mari',8,7),(10,'mari',9,0),(10,'mari',9,1),(10,'mari',9,2),(10,'mari',9,3),(10,'mari',9,4),(10,'usuario',2,1),(10,'usuario',2,8),(10,'usuario',3,1),(10,'usuario',3,8),(10,'usuario',4,1),(10,'usuario',4,8),(10,'usuario',5,1),(10,'usuario',5,3),(10,'usuario',5,4),(10,'usuario',5,5),(10,'usuario',6,1),(10,'usuario',8,0),(10,'usuario',8,5),(10,'usuario',8,6),(10,'usuario',8,7),(10,'usuario',8,8),(10,'usuario',9,0),(11,'ale',1,1),(11,'ale',2,1),(11,'ale',2,6),(11,'ale',3,1),(11,'ale',3,6),(11,'ale',3,8),(11,'ale',4,1),(11,'ale',4,6),(11,'ale',4,8),(11,'ale',5,1),(11,'ale',5,4),(11,'ale',5,8),(11,'ale',6,4),(11,'ale',6,8),(11,'ale',7,4),(11,'ale',9,1),(11,'ale',9,2),(11,'usuario',0,2),(11,'usuario',1,2),(11,'usuario',2,2),(11,'usuario',3,2),(11,'usuario',4,7),(11,'usuario',5,0),(11,'usuario',5,1),(11,'usuario',5,2),(11,'usuario',5,3),(11,'usuario',5,4),(11,'usuario',5,7),(11,'usuario',6,7),(11,'usuario',9,0),(11,'usuario',9,1),(11,'usuario',9,7),(11,'usuario',9,8),(11,'usuario',9,9),(12,'manuel',1,1),(12,'manuel',2,1),(12,'manuel',2,7),(12,'manuel',2,8),(12,'manuel',2,9),(12,'manuel',3,1),(12,'manuel',4,1),(12,'manuel',5,1),(12,'manuel',5,6),(12,'manuel',6,6),(12,'manuel',7,6),(12,'manuel',8,0),(12,'manuel',8,1),(12,'manuel',8,2),(12,'manuel',8,3),(12,'manuel',8,8),(12,'manuel',9,8),(12,'usuario',0,0),(12,'usuario',0,1),(12,'usuario',0,2),(12,'usuario',2,8),(12,'usuario',3,5),(12,'usuario',3,8),(12,'usuario',4,5),(12,'usuario',4,8),(12,'usuario',5,2),(12,'usuario',5,3),(12,'usuario',5,5),(12,'usuario',6,5),(12,'usuario',9,2),(12,'usuario',9,3),(12,'usuario',9,4),(12,'usuario',9,5),(12,'usuario',9,6),(13,'ale',0,1),(13,'ale',0,2),(13,'ale',0,3),(13,'ale',0,5),(13,'ale',0,6),(13,'ale',0,7),(13,'ale',0,8),(13,'ale',0,9),(13,'ale',3,7),(13,'ale',4,3),(13,'ale',4,7),(13,'ale',5,3),(13,'ale',5,7),(13,'ale',6,3),(13,'ale',6,7),(13,'ale',8,2),(13,'ale',9,2),(13,'mari',0,0),(13,'mari',0,1),(13,'mari',2,8),(13,'mari',3,0),(13,'mari',3,6),(13,'mari',3,8),(13,'mari',4,0),(13,'mari',4,6),(13,'mari',4,8),(13,'mari',5,0),(13,'mari',5,6),(13,'mari',5,8),(13,'mari',6,6),(13,'mari',6,8),(13,'mari',8,1),(13,'mari',8,2),(13,'mari',8,3),(14,'ale',0,8),(14,'ale',0,9),(14,'ale',2,6),(14,'ale',2,8),(14,'ale',3,6),(14,'ale',3,8),(14,'ale',4,6),(14,'ale',4,8),(14,'ale',5,8),(14,'ale',6,0),(14,'ale',6,1),(14,'ale',6,2),(14,'ale',6,3),(14,'ale',6,4),(14,'ale',9,4),(14,'ale',9,5),(14,'ale',9,6),(14,'manuel',0,6),(14,'manuel',0,7),(14,'manuel',0,8),(14,'manuel',2,1),(14,'manuel',3,1),(14,'manuel',3,6),(14,'manuel',3,7),(14,'manuel',4,1),(14,'manuel',5,1),(14,'manuel',7,2),(14,'manuel',7,5),(14,'manuel',7,6),(14,'manuel',7,7),(14,'manuel',7,8),(14,'manuel',7,9),(14,'manuel',8,2),(14,'manuel',9,2),(15,'manuel',0,2),(15,'manuel',0,7),(15,'manuel',1,2),(15,'manuel',1,7),(15,'manuel',2,2),(15,'manuel',2,7),(15,'manuel',3,2),(15,'manuel',4,2),(15,'manuel',4,8),(15,'manuel',5,5),(15,'manuel',5,8),(15,'manuel',6,5),(15,'manuel',6,8),(15,'manuel',7,5),(15,'manuel',7,8),(15,'manuel',9,6),(15,'manuel',9,7),(15,'mari',0,6),(15,'mari',1,6),(15,'mari',4,3),(15,'mari',5,3),(15,'mari',6,3),(15,'mari',6,5),(15,'mari',6,6),(15,'mari',6,7),(15,'mari',6,8),(15,'mari',7,0),(15,'mari',8,0),(15,'mari',8,4),(15,'mari',8,5),(15,'mari',8,6),(15,'mari',8,7),(15,'mari',8,8),(15,'mari',9,0),(16,'manuel',0,9),(16,'manuel',1,4),(16,'manuel',1,5),(16,'manuel',1,6),(16,'manuel',1,7),(16,'manuel',1,9),(16,'manuel',4,2),(16,'manuel',5,2),(16,'manuel',6,2),(16,'manuel',6,4),(16,'manuel',6,5),(16,'manuel',6,6),(16,'manuel',7,2),(16,'manuel',7,9),(16,'manuel',8,2),(16,'manuel',8,9),(16,'manuel',9,9),(16,'mari',0,6),(16,'mari',0,7),(16,'mari',0,8),(16,'mari',3,4),(16,'mari',3,5),(16,'mari',3,6),(16,'mari',3,7),(16,'mari',3,8),(16,'mari',6,3),(16,'mari',6,4),(16,'mari',6,8),(16,'mari',7,8),(16,'mari',8,0),(16,'mari',8,1),(16,'mari',8,2),(16,'mari',8,8),(16,'mari',9,8),(17,'ale',0,4),(17,'ale',1,0),(17,'ale',1,1),(17,'ale',1,2),(17,'ale',1,4),(17,'ale',2,4),(17,'ale',3,4),(17,'ale',5,0),(17,'ale',5,1),(17,'ale',5,7),(17,'ale',6,7),(17,'ale',7,7),(17,'ale',8,1),(17,'ale',8,2),(17,'ale',8,3),(17,'ale',8,7),(17,'ale',9,7),(17,'mari',0,0),(17,'mari',1,0),(17,'mari',1,4),(17,'mari',2,0),(17,'mari',2,2),(17,'mari',2,4),(17,'mari',3,0),(17,'mari',3,2),(17,'mari',3,4),(17,'mari',4,0),(17,'mari',4,8),(17,'mari',5,8),(17,'mari',6,3),(17,'mari',6,8),(17,'mari',7,3),(17,'mari',7,8),(17,'mari',8,3),(18,'mari',3,4),(18,'mari',3,5),(18,'mari',3,6),(18,'mari',3,7),(18,'mari',5,3),(18,'mari',5,5),(18,'mari',5,6),(18,'mari',5,7),(18,'mari',5,8),(18,'mari',5,9),(18,'mari',6,3),(18,'mari',7,1),(18,'mari',8,1),(18,'mari',8,7),(18,'mari',8,8),(18,'mari',8,9),(18,'mari',9,1),(18,'usuario',0,0),(18,'usuario',0,1),(18,'usuario',0,2),(18,'usuario',0,3),(18,'usuario',0,4),(18,'usuario',3,9),(18,'usuario',4,9),(18,'usuario',5,9),(18,'usuario',6,2),(18,'usuario',6,3),(18,'usuario',6,4),(18,'usuario',7,0),(18,'usuario',8,0),(18,'usuario',8,3),(18,'usuario',8,4),(18,'usuario',8,5),(18,'usuario',8,6),(19,'ale',1,3),(19,'ale',1,4),(19,'ale',1,5),(19,'ale',2,8),(19,'ale',2,9),(19,'ale',3,2),(19,'ale',3,3),(19,'ale',3,4),(19,'ale',3,5),(19,'ale',3,6),(19,'ale',5,7),(19,'ale',5,8),(19,'ale',5,9),(19,'ale',8,5),(19,'ale',8,6),(19,'ale',8,7),(19,'ale',8,8),(19,'manuel',0,4),(19,'manuel',0,5),(19,'manuel',0,6),(19,'manuel',1,8),(19,'manuel',2,4),(19,'manuel',2,8),(19,'manuel',3,0),(19,'manuel',3,4),(19,'manuel',3,8),(19,'manuel',4,0),(19,'manuel',4,4),(19,'manuel',4,8),(19,'manuel',6,1),(19,'manuel',6,2),(19,'manuel',6,3),(19,'manuel',6,4),(19,'manuel',6,5),(20,'ale',2,0),(20,'ale',2,1),(20,'ale',3,5),(20,'ale',4,5),(20,'ale',4,7),(20,'ale',4,9),(20,'ale',5,5),(20,'ale',5,7),(20,'ale',5,9),(20,'ale',6,7),(20,'ale',6,9),(20,'ale',7,2),(20,'ale',7,7),(20,'ale',7,9),(20,'ale',8,2),(20,'ale',8,9),(20,'ale',9,2),(20,'manuel',0,1),(20,'manuel',1,1),(20,'manuel',1,6),(20,'manuel',1,7),(20,'manuel',1,8),(20,'manuel',3,2),(20,'manuel',3,3),(20,'manuel',3,4),(20,'manuel',3,5),(20,'manuel',3,6),(20,'manuel',7,5),(20,'manuel',7,6),(20,'manuel',7,7),(20,'manuel',7,8),(20,'manuel',8,1),(20,'manuel',8,2),(20,'manuel',8,3),(21,'ale',1,2),(21,'ale',1,3),(21,'ale',1,4),(21,'ale',1,5),(21,'ale',3,7),(21,'ale',4,1),(21,'ale',4,7),(21,'ale',5,1),(21,'ale',5,7),(21,'ale',6,1),(21,'ale',6,4),(21,'ale',7,1),(21,'ale',7,4),(21,'ale',7,7),(21,'ale',7,8),(21,'ale',7,9),(21,'ale',8,1),(21,'manuel',1,9),(21,'manuel',2,3),(21,'manuel',2,9),(21,'manuel',3,1),(21,'manuel',3,3),(21,'manuel',3,9),(21,'manuel',4,1),(21,'manuel',4,3),(21,'manuel',5,1),(21,'manuel',6,1),(21,'manuel',6,3),(21,'manuel',7,1),(21,'manuel',7,3),(21,'manuel',7,7),(21,'manuel',8,3),(21,'manuel',8,7),(21,'manuel',9,3),(22,'ale',0,0),(22,'ale',1,0),(22,'ale',2,0),(22,'ale',2,2),(22,'ale',3,0),(22,'ale',3,2),(22,'ale',4,0),(22,'ale',4,2),(22,'ale',5,2),(22,'ale',5,4),(22,'ale',5,5),(22,'ale',5,6),(22,'ale',7,5),(22,'ale',8,5),(22,'ale',9,5),(22,'ale',9,7),(22,'ale',9,8),(22,'manuel',0,6),(22,'manuel',0,7),(22,'manuel',0,8),(22,'manuel',3,2),(22,'manuel',4,2),(22,'manuel',5,2),(22,'manuel',5,6),(22,'manuel',6,2),(22,'manuel',6,4),(22,'manuel',6,6),(22,'manuel',7,2),(22,'manuel',7,4),(22,'manuel',7,6),(22,'manuel',8,4),(22,'manuel',9,4),(22,'manuel',9,7),(22,'manuel',9,8);
/*!40000 ALTER TABLE `posicion_barcos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-27 17:49:31
