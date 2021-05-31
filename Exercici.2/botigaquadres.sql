-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: botigaquadres
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
-- Table structure for table `comprador`
--

DROP TABLE IF EXISTS `comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprador` (
  `idComprador` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `cognom` varchar(45) NOT NULL,
  `dni` varchar(9) NOT NULL,
  PRIMARY KEY (`idComprador`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprador`
--

LOCK TABLES `comprador` WRITE;
/*!40000 ALTER TABLE `comprador` DISABLE KEYS */;
INSERT INTO `comprador` VALUES (1,'nom1','cognom1','12345678A'),(2,'nom2','cognom2','12345678B'),(3,'nom3','cognom3','12345678C');
/*!40000 ALTER TABLE `comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `quadre_comprador`
--

DROP TABLE IF EXISTS `quadre_comprador`;
/*!50001 DROP VIEW IF EXISTS `quadre_comprador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quadre_comprador` AS SELECT 
 1 AS `idStock`,
 1 AS `preu`,
 1 AS `autor`,
 1 AS `nom`,
 1 AS `cognom`,
 1 AS `dni`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `quadrexcomprador`
--

DROP TABLE IF EXISTS `quadrexcomprador`;
/*!50001 DROP VIEW IF EXISTS `quadrexcomprador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quadrexcomprador` AS SELECT 
 1 AS `idStock`,
 1 AS `preu`,
 1 AS `autor`,
 1 AS `NomComprador`,
 1 AS `CognomComprador`,
 1 AS `DNIComprador`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `idStock` int(11) NOT NULL AUTO_INCREMENT,
  `preu` decimal(10,0) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `idCompra` int(11) DEFAULT NULL,
  PRIMARY KEY (`idStock`),
  KEY `fk_comprador_idx` (`idCompra`),
  CONSTRAINT `fk_comprador` FOREIGN KEY (`idCompra`) REFERENCES `comprador` (`idComprador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1000,'Picasso',NULL),(2,2000,'Rembrandt',NULL),(3,3000,'Monet',1),(4,3000,'Anònim',NULL),(5,4000,'Van Gogh',NULL);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `quadre_comprador`
--

/*!50001 DROP VIEW IF EXISTS `quadre_comprador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quadre_comprador` AS select `s`.`idStock` AS `idStock`,`s`.`preu` AS `preu`,`s`.`autor` AS `autor`,`c`.`nom` AS `nom`,`c`.`cognom` AS `cognom`,`c`.`dni` AS `dni` from (`stock` `s` join `comprador` `c` on((`s`.`idCompra` = `c`.`idComprador`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quadrexcomprador`
--

/*!50001 DROP VIEW IF EXISTS `quadrexcomprador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quadrexcomprador` AS select `s`.`idStock` AS `idStock`,`s`.`preu` AS `preu`,`s`.`autor` AS `autor`,`c`.`nom` AS `NomComprador`,`c`.`cognom` AS `CognomComprador`,`c`.`dni` AS `DNIComprador` from (`stock` `s` join `comprador` `c` on((`s`.`idCompra` = `c`.`idComprador`))) */;
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

-- Dump completed on 2021-05-31 12:01:09
