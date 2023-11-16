CREATE DATABASE  IF NOT EXISTS `rinaconect` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `rinaconect`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rinaconect
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `Administrador` int(11) NOT NULL,
  PRIMARY KEY (`Administrador`),
  CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Administrador`) REFERENCES `usuario` (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen` (
  `Almacen` varchar(50) NOT NULL,
  `RUT` bigint(20) NOT NULL,
  `Capacidad_m3` smallint(6) NOT NULL,
  `Capacidad_Kg` smallint(6) NOT NULL,
  PRIMARY KEY (`Almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
INSERT INTO `almacen` VALUES ('1',85565,100,6000),('2',55855,223,12541),('3',76648,132,7222);
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen_camion`
--

DROP TABLE IF EXISTS `almacen_camion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen_camion` (
  `Camion` int(11) NOT NULL,
  `Almacen` int(11) NOT NULL,
  PRIMARY KEY (`Camion`,`Almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_camion`
--

LOCK TABLES `almacen_camion` WRITE;
/*!40000 ALTER TABLE `almacen_camion` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen_camion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camion`
--

DROP TABLE IF EXISTS `camion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camion` (
  `Camion` int(11) NOT NULL,
  `Capacidad_Kg` smallint(6) NOT NULL,
  `Capacidad_m3` smallint(6) NOT NULL,
  PRIMARY KEY (`Camion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camion`
--

LOCK TABLES `camion` WRITE;
/*!40000 ALTER TABLE `camion` DISABLE KEYS */;
/*!40000 ALTER TABLE `camion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camionero`
--

DROP TABLE IF EXISTS `camionero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camionero` (
  `Camionero` int(11) NOT NULL,
  PRIMARY KEY (`Camionero`),
  CONSTRAINT `camionero_ibfk_1` FOREIGN KEY (`Camionero`) REFERENCES `usuario` (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camionero`
--

LOCK TABLES `camionero` WRITE;
/*!40000 ALTER TABLE `camionero` DISABLE KEYS */;
/*!40000 ALTER TABLE `camionero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Cliente` int(11) NOT NULL,
  PRIMARY KEY (`Cliente`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `usuario` (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_pedido`
--

DROP TABLE IF EXISTS `cliente_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_pedido` (
  `Pedido` int(11) NOT NULL,
  PRIMARY KEY (`Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_pedido`
--

LOCK TABLES `cliente_pedido` WRITE;
/*!40000 ALTER TABLE `cliente_pedido` DISABLE KEYS */;
INSERT INTO `cliente_pedido` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `cliente_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `Departamento` tinyint(4) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'montevideo');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidad` (
  `Localidad` smallint(6) NOT NULL,
  `Pedido` int(11) NOT NULL,
  `Departamento` tinyint(4) NOT NULL,
  PRIMARY KEY (`Localidad`),
  KEY `Departamento` (`Departamento`),
  CONSTRAINT `localidad_ibfk_1` FOREIGN KEY (`Departamento`) REFERENCES `departamento` (`Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete`
--

DROP TABLE IF EXISTS `paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete` (
  `Paquete_id` int(11) NOT NULL,
  `Peso_Kg` smallint(6) NOT NULL,
  `Volumen_m3` smallint(6) NOT NULL,
  `ID` int(11) NOT NULL,
  `Pedido` int(11) NOT NULL,
  PRIMARY KEY (`Paquete_id`),
  UNIQUE KEY `ID` (`ID`),
  KEY `Pedido` (`Pedido`),
  CONSTRAINT `paquete_ibfk_1` FOREIGN KEY (`Pedido`) REFERENCES `pedido` (`Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete`
--

LOCK TABLES `paquete` WRITE;
/*!40000 ALTER TABLE `paquete` DISABLE KEYS */;
INSERT INTO `paquete` VALUES (1,1,73,188739,1),(2,13,3,998273,2),(3,1,3,233578,3);
/*!40000 ALTER TABLE `paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete_camion`
--

DROP TABLE IF EXISTS `paquete_camion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete_camion` (
  `Paquete` int(11) NOT NULL,
  PRIMARY KEY (`Paquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete_camion`
--

LOCK TABLES `paquete_camion` WRITE;
/*!40000 ALTER TABLE `paquete_camion` DISABLE KEYS */;
/*!40000 ALTER TABLE `paquete_camion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `Pedido` int(11) NOT NULL,
  `Direccion_de_envio` varchar(50) NOT NULL,
  `Almacen` varchar(50) NOT NULL,
  `Localidad` smallint(6) NOT NULL,
  PRIMARY KEY (`Pedido`),
  KEY `Localidad` (`Localidad`),
  KEY `Almacen` (`Almacen`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Localidad`) REFERENCES `localidad` (`Localidad`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`Almacen`) REFERENCES `almacen` (`Almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'Salto 2515','1',1),(2,'18 de Julio 2677','2',2),(3,'Jose Garibalidi y Blandengues 2564','3',3);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Cedula` int(11) NOT NULL,
  `Contrasena` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Fec_Nacimiento` date NOT NULL,
  PRIMARY KEY (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2951940,'perro','alex','morena','1990-03-07'),(5949313,'sabanas','ana','silva','2003-04-02'),(9937808,'pastel','bruno','peres','1993-07-23');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rinaconect'
--

--
-- Dumping routines for database 'rinaconect'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 22:01:59
