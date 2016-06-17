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
  `GPIO` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDispositivo`)
) ENGINE=InnoDB AUTO_INCREMENT=7866545 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dispositivo`
--

LOCK TABLES `Dispositivo` WRITE;
/*!40000 ALTER TABLE `Dispositivo` DISABLE KEYS */;
INSERT INTO `Dispositivo` VALUES (4675,'LUZ','',0,'cocina',22),(6758765,'BAÑO','Baño que queda en la cocina, ummm curioso',0,'bano',6);
/*!40000 ALTER TABLE `Dispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GPIO`
--

DROP TABLE IF EXISTS `GPIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GPIO` (
  `idPin` int(11) NOT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idPin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GPIO`
--

LOCK TABLES `GPIO` WRITE;
/*!40000 ALTER TABLE `GPIO` DISABLE KEYS */;
INSERT INTO `GPIO` VALUES (4,0),(5,1),(6,0),(12,1),(13,0),(16,1),(17,0),(18,1),(19,1),(20,1),(21,1),(22,0),(23,1),(24,1),(25,0),(26,1),(27,0);
/*!40000 ALTER TABLE `GPIO` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registro`
--

LOCK TABLES `Registro` WRITE;
/*!40000 ALTER TABLE `Registro` DISABLE KEYS */;
INSERT INTO `Registro` VALUES (21,'Se apagÃƒÂ³BOMBILLO de  jardin','james.garzon','2016-06-16 02:22:18'),(22,'Se encendióBOMBILLO de  jardin','james.garzon','2016-06-16 02:22:42'),(23,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:23:11'),(24,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:25:29'),(25,'Se apagó LAMPARA de dormitorio','james.garzon','2016-06-16 02:25:31'),(26,'Se encendió LAMPARA de dormitorio','james.garzon','2016-06-16 02:25:33'),(27,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:25:34'),(28,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:39:27'),(29,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:40:19'),(30,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:40:47'),(31,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:40:49'),(32,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:41:16'),(33,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:42:12'),(34,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:42:17'),(35,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:42:30'),(36,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:42:35'),(37,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:43:15'),(38,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:43:20'),(39,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:43:27'),(40,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:43:35'),(41,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:44:07'),(42,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:44:21'),(43,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 02:44:27'),(44,'Se apagó LAMPARA de dormitorio','james.garzon','2016-06-16 02:44:35'),(45,'Se encendió LAMPARA de dormitorio','james.garzon','2016-06-16 02:44:47'),(46,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 02:44:49'),(47,'Se apagó LAMPARA de dormitorio','james.garzon','2016-06-16 02:45:20'),(48,'Se encendió LAMPARA de dormitorio','james.garzon','2016-06-16 09:00:35'),(49,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 09:00:40'),(50,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 10:22:53'),(51,'Se apagó LAMPARA de dormitorio','james.garzon','2016-06-16 10:23:24'),(52,'Se encendió LAMPARA de dormitorio','james.garzon','2016-06-16 10:23:26'),(53,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 10:24:25'),(54,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 10:24:38'),(55,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 10:25:13'),(56,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 10:25:48'),(57,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-16 10:57:19'),(58,'Se encendió BOMBILLO de jardin','james.garzon','2016-06-16 11:28:47'),(59,'Se encendió LAMPARA PATIO de jardin','james.garzon','2016-06-17 01:04:40'),(60,'Se apagó LAMPARA PATIO de jardin','james.garzon','2016-06-17 01:05:06'),(61,'Se apagó LAMPARA de dormitorio','james.garzon','2016-06-17 01:05:07'),(62,'Se apagó BOMBILLO de jardin','james.garzon','2016-06-17 01:05:08'),(63,'Se encendió LAMPARA PATIO de jardin','james.garzon','2016-06-17 01:06:54'),(64,'Se encendió LAMPARA DE NOCHE de dormitorio','james.garzon','2016-06-17 01:09:52'),(65,'Se apagó LAMPARA DE NOCHE de dormitorio','james.garzon','2016-06-17 01:09:55'),(66,'Se encendió LAMPARA DE NOCHE de dormitorio','james.garzon','2016-06-17 01:24:25'),(67,'Se apagó LAMPARA DE NOCHE de dormitorio','james.garzon','2016-06-17 01:24:27'),(68,'Se encendió LUZ JARDÍN de jardin','james.garzon','2016-06-17 01:51:06'),(69,'Se encendió LAMPARA DE NOCHE de dormitorio','james.garzon','2016-06-17 01:51:09'),(70,'Se apagó LUZ JARDÍN de jardin','james.garzon','2016-06-17 02:04:00'),(71,'Se encendió LUZ JARDÍN de jardin','james.garzon','2016-06-17 02:07:06'),(72,'Se apagó LUZ JARDÍN de jardin','james.garzon','2016-06-17 02:08:28'),(73,'Se encendió BAÑO de bano','james.garzon','2016-06-17 02:12:40'),(74,'Se apagó BAÑO de bano','james.garzon','2016-06-17 02:12:44'),(75,'Se encendió BAÑO de bano','james.garzon','2016-06-17 02:13:45'),(76,'Se encendió LUZ JARDÍN de jardin','james.garzon','2016-06-17 02:21:21'),(77,'Se apagó LUZ JARDÍN de jardin','james.garzon','2016-06-17 02:21:37'),(78,'encendió LUZ JARDÍN de jardin','james.garzon','2016-06-17 02:21:45'),(79,'apagó LUZ JARDÍN DEL EDÉN de ','james.garzon','2016-06-17 03:29:13'),(80,'apagó BAÑO de cocina','james.garzon','2016-06-17 03:39:37'),(81,'encendió BAÑO de cocina','james.garzon','2016-06-17 03:40:26'),(82,'encendió LUZ JARDÍN DEL EDÉN de jardin','james.garzon','2016-06-17 03:59:16'),(83,'encendió COCINA de cocina','james.garzon','2016-06-17 04:02:16'),(84,'apagó COCINA de cocina','james.garzon','2016-06-17 04:02:25'),(85,'encendió Bombillo de la sala de sala-principal','james.garzon','2016-06-17 04:56:09'),(86,'apagó Bombillo de la sala de sala-principal','james.garzon','2016-06-17 04:56:37'),(87,'encendió Bombillo de la sala de sala-principal','james.garzon','2016-06-17 04:56:40'),(88,'apagó Bombillo de la sala de sala-principal','james.garzon','2016-06-17 04:56:41'),(89,'apagó BAÑO de cocina','james.garzon','2016-06-17 04:58:27'),(90,'Creó el dispositivoLAMPARA FRONTALcon código: 456765','james.garzon','2016-06-17 05:19:58'),(91,'Creó el dispositivoLUZcon código: 4675','james.garzon','2016-06-17 05:20:30'),(92,'Creó el dispositivoBAÑOcon código: 6758765','james.garzon','2016-06-17 05:22:20');
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

-- Dump completed on 2016-06-17  5:23:43
