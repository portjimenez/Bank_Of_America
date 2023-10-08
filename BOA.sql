-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: boa
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `datos_beneficiarios`
--

DROP TABLE IF EXISTS `datos_beneficiarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_beneficiarios` (
  `idBeneficiario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `NumeroResidencial` int DEFAULT NULL,
  `NumeroMovil` int DEFAULT NULL,
  `No.DocumentoPersonal` int DEFAULT NULL,
  `Prentesco` varchar(20) DEFAULT NULL,
  `Porcentaje` varchar(12) DEFAULT NULL,
  `idPersona` int DEFAULT NULL,
  PRIMARY KEY (`idBeneficiario`),
  KEY `Fk_Beneficiario_idx` (`idPersona`),
  CONSTRAINT `Fk_Beneficiario` FOREIGN KEY (`idPersona`) REFERENCES `datos_persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_beneficiarios`
--

LOCK TABLES `datos_beneficiarios` WRITE;
/*!40000 ALTER TABLE `datos_beneficiarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_beneficiarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_laborales`
--

DROP TABLE IF EXISTS `datos_laborales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_laborales` (
  `idLaboral` int NOT NULL AUTO_INCREMENT,
  `NombreEmpresa` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `NumeroTel` int DEFAULT NULL,
  `Extension` int DEFAULT NULL,
  `Cargo` varchar(45) DEFAULT NULL,
  `FechaIngreso` date DEFAULT NULL,
  `IngresosMensualesQuetzalez` int DEFAULT NULL,
  `idPersona` int DEFAULT NULL,
  PRIMARY KEY (`idLaboral`),
  KEY `idPersona_idx` (`idPersona`),
  CONSTRAINT `Fk_idPersona` FOREIGN KEY (`idPersona`) REFERENCES `datos_persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_laborales`
--

LOCK TABLES `datos_laborales` WRITE;
/*!40000 ALTER TABLE `datos_laborales` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_laborales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_persona`
--

DROP TABLE IF EXISTS `datos_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_persona` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `No.DocPersonal` varchar(31) DEFAULT NULL,
  `DireccionResidencia` varchar(50) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `NumeroResidencia` int DEFAULT NULL,
  `NumeroMovil` int DEFAULT NULL,
  `Cuenta` varchar(10) DEFAULT NULL,
  `NumeroSolicitud` int DEFAULT NULL,
  `FechaSolicitud` date DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_persona`
--

LOCK TABLES `datos_persona` WRITE;
/*!40000 ALTER TABLE `datos_persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_referencia`
--

DROP TABLE IF EXISTS `datos_referencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_referencia` (
  `idReferencia` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `NumeroResidencial` int DEFAULT NULL,
  `NumeroMovil` int DEFAULT NULL,
  `idPersona` int DEFAULT NULL,
  PRIMARY KEY (`idReferencia`),
  KEY `Fk_referencia_idx` (`idPersona`),
  CONSTRAINT `Fk_referencia` FOREIGN KEY (`idPersona`) REFERENCES `datos_persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_referencia`
--

LOCK TABLES `datos_referencia` WRITE;
/*!40000 ALTER TABLE `datos_referencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_referencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentos` (
  `idDocumento` int NOT NULL AUTO_INCREMENT,
  `CopiaDoc.Personal` varchar(45) DEFAULT NULL,
  `Fotografia` varchar(45) DEFAULT NULL,
  `idPersona` int DEFAULT NULL,
  PRIMARY KEY (`idDocumento`),
  KEY `Fk_documentos_idx` (`idPersona`),
  CONSTRAINT `Fk_documentos` FOREIGN KEY (`idPersona`) REFERENCES `datos_persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 11:36:05
