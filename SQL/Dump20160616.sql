-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: domotica
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `Dispositivo`
--

DROP TABLE IF EXISTS `Dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dispositivo` (
  `idDispositivo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idDispositivo`)
) ENGINE=InnoDB AUTO_INCREMENT=3456767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dispositivo`
--

LOCK TABLES `Dispositivo` WRITE;
/*!40000 ALTER TABLE `Dispositivo` DISABLE KEYS */;
INSERT INTO `Dispositivo` VALUES (3456765,'LAMPARA','Lampara de noche para acompañar tus noches de trabajo y/o estudio.',0,'dormitorio'),(3456766,'BOMBILLO','Luces del jardín, ya no tendrás que salir para apagar las luces',1,'jardin');
/*!40000 ALTER TABLE `Dispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Registro`
--

DROP TABLE IF EXISTS `Registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registro` (
  `idRegistro` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idRegistro`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registro`
--

LOCK TABLES `Registro` WRITE;
/*!40000 ALTER TABLE `Registro` DISABLE KEYS */;
INSERT INTO `Registro` VALUES (21,'Se apagÃƒÂ³BOMBILLO de  jardin','james.garzon','2016-06-16 02:22:18'),(22,'Se encendióBOMBILLO de  jardin','james.garzon','2016-06-16 02:22:42'),(23,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:23:11'),(24,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:25:29'),(25,'Se apagó LAMPARA de dormitorio','james.garzon','2016-06-16 02:25:31'),(26,'Se encendió LAMPARA de dormitorio','james.garzon','2016-06-16 02:25:33'),(27,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:25:34'),(28,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:39:27'),(29,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:40:19'),(30,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:40:47'),(31,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:40:49'),(32,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:41:16'),(33,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:42:12'),(34,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:42:17'),(35,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:42:30'),(36,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:42:35'),(37,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:43:15'),(38,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:43:20'),(39,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:43:27'),(40,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:43:35'),(41,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:44:07'),(42,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:44:21'),(43,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:44:27'),(44,'Se apagó LAMPARA de dormitorio','james.garzon','2016-06-16 02:44:35'),(45,'Se encendió LAMPARA de dormitorio','james.garzon','2016-06-16 02:44:47'),(46,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:44:49'),(47,'Se apagó LAMPARA de dormitorio','james.garzon','2016-06-16 02:45:20');
/*!40000 ALTER TABLE `Registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `nombreUsuario` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nombreUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-16 10:10:58
