-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: stube
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuari`
--

LOCK TABLES `usuari` WRITE;
/*!40000 ALTER TABLE `usuari` DISABLE KEYS */;
INSERT INTO `usuari` VALUES (1,'nomUsuari1','usu1@usu1.com','123'),(2,'nomUsuari2','usu2@usu2.com','123'),(3,'nomUsuari3','usu3@usu3.com','123'),(4,'nomUsuari4','usu4@usu4.com','123'),(5,'nomUsuari5','usu5@usu5.com','123'),(6,'nomUsuari6','usu6@usu6.com','123');
/*!40000 ALTER TABLE `usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `idVideos` int(11) NOT NULL AUTO_INCREMENT,
  `titol` varchar(45) NOT NULL,
  `descripcio` varchar(100) NOT NULL,
  `url` varchar(45) NOT NULL,
  `identificador` varchar(45) NOT NULL,
  `idUsu` int(11) NOT NULL,
  PRIMARY KEY (`idVideos`),
  KEY `fk_usu_idx` (`idUsu`),
  CONSTRAINT `fk_usu` FOREIGN KEY (`idUsu`) REFERENCES `usuari` (`idUsuari`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'titol1','descripcio1','https://www.exemple1.com','id1-abcd',2),(2,'titol2','descripcio2','https://www.exemple2.com','id2-abcd',2),(3,'titol3','descripcio3','https://www.exemple3.com','id3-abcd',2),(4,'titol4','descripcio4','https://www.exemple4.com','id4-abcd',2),(5,'titol5','descripcio5','https://www.exemple5.com','id5-abcd',2),(6,'titol6','descripcio6','https://www.exemple6.com','id6-abcd',1),(7,'titol7','descripcio7','https://www.exemple7.com','id7-abcd',3),(8,'titol8','descripcio8','https://www.exemple8.com','id8-abcd',4),(9,'titol9','descripcio9','https://www.exemple9.com','id9-abcd',5),(10,'titol10','descripcio10','https://www.exemple10.com','id10-abcd',5),(11,'titol11','descripcio11','https://www.exemple11.com','id11-abcd',6),(12,'titol12','descripcio12','https://www.exemple12.com','id12-abcd',3);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `videosxusuari`
--

DROP TABLE IF EXISTS `videosxusuari`;
/*!50001 DROP VIEW IF EXISTS `videosxusuari`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `videosxusuari` AS SELECT 
 1 AS `titol`,
 1 AS `descripcio`,
 1 AS `url`,
 1 AS `identificador`,
 1 AS `nomUsuari`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `videosxusuari`
--

/*!50001 DROP VIEW IF EXISTS `videosxusuari`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `videosxusuari` AS select `v`.`titol` AS `titol`,`v`.`descripcio` AS `descripcio`,`v`.`url` AS `url`,`v`.`identificador` AS `identificador`,`u`.`nom` AS `nomUsuari` from (`videos` `v` join `usuari` `u` on((`v`.`idUsu` = `u`.`idUsuari`))) */;
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

-- Dump completed on 2021-05-31 12:18:11
