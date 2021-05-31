-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: exercici1
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
-- Table structure for table `avions`
--

DROP TABLE IF EXISTS `avions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avions` (
  `idAvio` int(11) NOT NULL AUTO_INCREMENT,
  `capacitat` int(11) NOT NULL,
  `model` varchar(45) NOT NULL,
  PRIMARY KEY (`idAvio`),
  UNIQUE KEY `idAvio_UNIQUE` (`idAvio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avions`
--

LOCK TABLES `avions` WRITE;
/*!40000 ALTER TABLE `avions` DISABLE KEYS */;
INSERT INTO `avions` VALUES (1,180,'A-321'),(2,190,'A-320'),(3,200,'A-319');
/*!40000 ALTER TABLE `avions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seients`
--

DROP TABLE IF EXISTS `seients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seients` (
  `idSeients` int(11) NOT NULL AUTO_INCREMENT,
  `avioId` int(11) NOT NULL,
  PRIMARY KEY (`idSeients`),
  UNIQUE KEY `idSeients_UNIQUE` (`idSeients`),
  KEY `fk_idavio_idx` (`avioId`),
  CONSTRAINT `fk_idavio` FOREIGN KEY (`avioId`) REFERENCES `avions` (`idAvio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seients`
--

LOCK TABLES `seients` WRITE;
/*!40000 ALTER TABLE `seients` DISABLE KEYS */;
INSERT INTO `seients` VALUES (2,1),(1,2);
/*!40000 ALTER TABLE `seients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_avions_seients`
--

DROP TABLE IF EXISTS `vista_avions_seients`;
/*!50001 DROP VIEW IF EXISTS `vista_avions_seients`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_avions_seients` AS SELECT 
 1 AS `idAvio`,
 1 AS `capacitat`,
 1 AS `model`,
 1 AS `idSeients`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_avions_seients`
--

/*!50001 DROP VIEW IF EXISTS `vista_avions_seients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_avions_seients` AS select `a`.`idAvio` AS `idAvio`,`a`.`capacitat` AS `capacitat`,`a`.`model` AS `model`,`s`.`idSeients` AS `idSeients` from (`avions` `a` join `seients` `s` on((`a`.`idAvio` = `s`.`avioId`))) */;
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

-- Dump completed on 2021-05-31 11:58:57
