-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: xarxasocial
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Temporary view structure for view `amicsxusuari`
--

DROP TABLE IF EXISTS `amicsxusuari`;
/*!50001 DROP VIEW IF EXISTS `amicsxusuari`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `amicsxusuari` AS SELECT 
 1 AS `Relació`,
 1 AS `Usuari`,
 1 AS `Amic`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `detall_usuari_usuari`
--

DROP TABLE IF EXISTS `detall_usuari_usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detall_usuari_usuari` (
  `idusu1` int(11) NOT NULL,
  `idusu2` int(11) NOT NULL,
  `conegut` varchar(45) NOT NULL,
  PRIMARY KEY (`idusu1`,`idusu2`),
  KEY `fk_idusu1_idx` (`idusu1`,`idusu2`),
  KEY `fk_usu2_idx` (`idusu2`),
  CONSTRAINT `fk_usu1` FOREIGN KEY (`idusu1`) REFERENCES `usuari` (`idUsuari`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usu2` FOREIGN KEY (`idusu2`) REFERENCES `usuari` (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detall_usuari_usuari`
--

LOCK TABLES `detall_usuari_usuari` WRITE;
/*!40000 ALTER TABLE `detall_usuari_usuari` DISABLE KEYS */;
INSERT INTO `detall_usuari_usuari` VALUES (1,8,'familia'),(2,4,'col·legi'),(4,7,'familia'),(5,7,'col·legi'),(5,8,'col·legi'),(6,9,'veïns'),(7,8,'veïns'),(8,3,'col·legi'),(8,9,'festa'),(9,2,'col·legi'),(9,4,'festa'),(10,9,'familia');
/*!40000 ALTER TABLE `detall_usuari_usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotografia`
--

DROP TABLE IF EXISTS `fotografia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotografia` (
  `idFotografia` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `adreça` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `idusuari` int(11) NOT NULL,
  PRIMARY KEY (`idFotografia`),
  KEY `fk_usu_idx` (`idusuari`),
  CONSTRAINT `fk_usu` FOREIGN KEY (`idusuari`) REFERENCES `usuari` (`idUsuari`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotografia`
--

LOCK TABLES `fotografia` WRITE;
/*!40000 ALTER TABLE `fotografia` DISABLE KEYS */;
INSERT INTO `fotografia` VALUES (1,'nomFotografia1','adreçaFotografia1','urlFotografia1',4),(2,'nomFotografia2','adreçaFotografia2','urlFotografia2',8),(3,'nomFotografia3','adreçaFotografia3','urlFotografia3',9),(4,'nomFotografia4','adreçaFotografia4','urlFotografia4',4),(5,'nomFotografia5','adreçaFotografia5','urlFotografia5',2),(6,'nomFotografia6','adreçaFotografia6','urlFotografia6',1),(7,'nomFotografia7','adreçaFotografia7','urlFotografia7',6),(8,'nomFotografia8','adreçaFotografia8','urlFotografia8',7),(9,'nomFotografia9','adreçaFotografia9','urlFotografia9',12),(10,'nomFotografia10','adreçaFotografia10','urlFotografia10',3),(11,'nomFotografia11','adreçaFotografia11','urlFotografia11',3),(12,'nomFotografia12','adreçaFotografia12','urlFotografia12',8),(13,'nomFotografia13','adreçaFotografia13','urlFotografia13',5);
/*!40000 ALTER TABLE `fotografia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fotografiaxusuari`
--

DROP TABLE IF EXISTS `fotografiaxusuari`;
/*!50001 DROP VIEW IF EXISTS `fotografiaxusuari`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fotografiaxusuari` AS SELECT 
 1 AS `NomUsuari`,
 1 AS `url`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `Relació`,
 1 AS `Usuari`,
 1 AS `Amic`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuari`
--

DROP TABLE IF EXISTS `usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuari` (
  `idUsuari` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasenya` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsuari`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuari`
--

LOCK TABLES `usuari` WRITE;
/*!40000 ALTER TABLE `usuari` DISABLE KEYS */;
INSERT INTO `usuari` VALUES (1,'nom1','email1','contrasenya1'),(2,'nom2','email2','contrasenya7'),(3,'nom3','email3','contrasenya8'),(4,'nom4','email4','contrasenya9'),(5,'nom5','email5','contrasenya10'),(6,'nom6','email6','contrasenya11'),(7,'nom7','email7','contrasenya12'),(8,'nom8','email8','contrasenya13'),(9,'nom9','email9','contrasenya14'),(10,'nom10','email10','contrasenya2'),(11,'nom11','email11','contrasenya3'),(12,'nom12','email12','contrasenya4'),(13,'nom13','email13','contrasenya5'),(14,'nom14','email14','contrasenya6');
/*!40000 ALTER TABLE `usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `amicsxusuari`
--

/*!50001 DROP VIEW IF EXISTS `amicsxusuari`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `amicsxusuari` AS select `d`.`conegut` AS `Relació`,`u`.`nom` AS `Usuari`,`f`.`nom` AS `Amic` from ((`detall_usuari_usuari` `d` join `usuari` `u` on((`u`.`idUsuari` = `d`.`idusu1`))) join `usuari` `f` on((`f`.`idUsuari` = `d`.`idusu2`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fotografiaxusuari`
--

/*!50001 DROP VIEW IF EXISTS `fotografiaxusuari`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fotografiaxusuari` AS select `u`.`nom` AS `NomUsuari`,`f`.`url` AS `url` from (`fotografia` `f` join `usuari` `u` on((`f`.`idusuari` = `u`.`idUsuari`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `d`.`conegut` AS `Relació`,`u`.`nom` AS `Usuari`,`f`.`nom` AS `Amic` from ((`detall_usuari_usuari` `d` join `usuari` `u` on((`u`.`idUsuari` = `d`.`idusu1`))) join `usuari` `f` on((`f`.`idUsuari` = `d`.`idusu2`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-31 12:38:03
