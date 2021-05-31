-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: amazon
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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `direccio` varchar(45) NOT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'nomAutor1','direccio1'),(2,'nomAutor2','direccio2'),(3,'nomAutor3','direccio3'),(4,'nomAutor4','direccio4'),(5,'nomAutor5','direccio5'),(6,'nomAutor6','direccio6'),(7,'nomAutor7','direccio7');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataleg`
--

DROP TABLE IF EXISTS `cataleg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cataleg` (
  `idCataleg` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `existencies` int(11) NOT NULL,
  `preu` decimal(10,0) NOT NULL,
  `idautor` int(11) NOT NULL,
  PRIMARY KEY (`idCataleg`),
  KEY `fk_autor_idx` (`idautor`),
  CONSTRAINT `fk_autor` FOREIGN KEY (`idautor`) REFERENCES `autor` (`idAutor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cataleg`
--

LOCK TABLES `cataleg` WRITE;
/*!40000 ALTER TABLE `cataleg` DISABLE KEYS */;
INSERT INTO `cataleg` VALUES (1,'nomLlibre1',1,10,7),(2,'nomLlibre2',2,20,7),(3,'nomLlibre3',3,30,6),(4,'nomLlibre4',4,40,4),(5,'nomLlibre5',5,51,3),(6,'nomLlibre6',6,61,3),(7,'nomLlibre7',7,71,1),(8,'nomLlibre8',8,81,6),(9,'nomLlibre9',9,91,2),(10,'nomLlibre10',10,100,4),(11,'nomLlibre11',11,110,5);
/*!40000 ALTER TABLE `cataleg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detall_cataleg_usuari`
--

DROP TABLE IF EXISTS `detall_cataleg_usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detall_cataleg_usuari` (
  `idDetall_cataleg_usuari` int(11) NOT NULL AUTO_INCREMENT,
  `idcataleg` int(11) NOT NULL,
  `idusuari` int(11) NOT NULL,
  PRIMARY KEY (`idDetall_cataleg_usuari`),
  KEY `fk_cataleg_idx` (`idcataleg`),
  KEY `fk_usuari_idx` (`idusuari`),
  CONSTRAINT `fk_cataleg` FOREIGN KEY (`idcataleg`) REFERENCES `cataleg` (`idCataleg`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuari` FOREIGN KEY (`idusuari`) REFERENCES `usuari` (`idUsuari`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detall_cataleg_usuari`
--

LOCK TABLES `detall_cataleg_usuari` WRITE;
/*!40000 ALTER TABLE `detall_cataleg_usuari` DISABLE KEYS */;
INSERT INTO `detall_cataleg_usuari` VALUES (1,2,1),(2,3,1);
/*!40000 ALTER TABLE `detall_cataleg_usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `llibresxcomprador`
--

DROP TABLE IF EXISTS `llibresxcomprador`;
/*!50001 DROP VIEW IF EXISTS `llibresxcomprador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `llibresxcomprador` AS SELECT 
 1 AS `NomLlibre`,
 1 AS `preu`,
 1 AS `NomAutor`,
 1 AS `NomComprador`,
 1 AS `emailComprador`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuari`
--

LOCK TABLES `usuari` WRITE;
/*!40000 ALTER TABLE `usuari` DISABLE KEYS */;
INSERT INTO `usuari` VALUES (1,'nomUsuari1','usuari1@email.com','psw1');
/*!40000 ALTER TABLE `usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `llibresxcomprador`
--

/*!50001 DROP VIEW IF EXISTS `llibresxcomprador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `llibresxcomprador` AS select `c`.`nom` AS `NomLlibre`,`c`.`preu` AS `preu`,`a`.`nom` AS `NomAutor`,`u`.`nom` AS `NomComprador`,`u`.`email` AS `emailComprador` from (((`cataleg` `c` join `autor` `a` on((`c`.`idautor` = `a`.`idAutor`))) join `detall_cataleg_usuari` `det` on((`c`.`idCataleg` = `det`.`idcataleg`))) join `usuari` `u` on((`det`.`idusuari` = `u`.`idUsuari`))) */;
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

-- Dump completed on 2021-05-31 12:32:19
