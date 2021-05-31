-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: culdampolla
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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `adreça` varchar(45) NOT NULL,
  `telefón` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dataRegistre` date NOT NULL DEFAULT '0000-00-00',
  `idrecomanat` int(11) DEFAULT NULL,
  PRIMARY KEY (`idClient`),
  KEY `fk_recomanat_idx` (`idrecomanat`),
  CONSTRAINT `fk_recomanat` FOREIGN KEY (`idrecomanat`) REFERENCES `clients` (`idClient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Ezequiel Ibarra','Glorieta Lorem ipsum dolor, 169 14ºH',87701149,'email@email1','2020-01-01',5),(2,'Natália Bustos','Travesía Lorem ipsum dolor sit, 211B',74156461,'email@email2','2020-01-01',NULL),(3,'Helena Cerdan','Pasaje Lorem ipsum, 117A 15ºG',65034087,'email@email3','2020-01-01',NULL),(4,'Francesc Hurtado','Pasadizo Lorem ipsum dolor, 149',62486447,'email@email4','2020-01-01',7),(5,'Adil Maldonado','Carretera Lorem ipsum dolor, 267A 6ºC',76499528,'email@email5','2020-01-01',2),(6,'Gerardo Nuñez','Carrer Lorem, 160 6ºG',83376391,'email@email6','2020-01-01',NULL),(7,'Patrocinio Olmo','Paseo Lorem ipsum dolor, 170B 2ºD',89628573,'email@email7','2020-01-01',NULL),(8,'Joana Echevarria','Rambla Lorem ipsum dolor sit, 81B 7ºF',61789836,'email@email8','2020-01-01',10),(9,'Iban Hinojosa','Glorieta Lorem ipsum dolor sit, 23A 17ºB',73347781,'email@email9','2020-01-01',NULL),(10,'Saul Arias','Ronda Lorem ipsum dolor, 69A',89002907,'email@email10','2020-01-01',NULL),(11,'Angela Berenguer','Camino Lorem ipsum dolor, 63A 19ºE',89002905,'email@email11','2020-01-01',4);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientxrecomanador`
--

DROP TABLE IF EXISTS `clientxrecomanador`;
/*!50001 DROP VIEW IF EXISTS `clientxrecomanador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientxrecomanador` AS SELECT 
 1 AS `client`,
 1 AS `recomanador`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empleats`
--

DROP TABLE IF EXISTS `empleats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleats` (
  `idEmpleat` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmpleat`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleats`
--

LOCK TABLES `empleats` WRITE;
/*!40000 ALTER TABLE `empleats` DISABLE KEYS */;
INSERT INTO `empleats` VALUES (1,'Sharon Pobes Rubayo'),(2,'Stella Ural Tablada'),(3,'Lizeth Encina Almansa'),(4,'Erédira Viaña Viña'),(5,'Angelines Caller Diguja'),(6,'Tivisay Bizoso Orive'),(7,'Cornelia Estancion Villafañe'),(8,'Letizia Bajuelo Arguiso'),(9,'Traudel Mesia Saz'),(10,'Cándido Cobides Azcoitia');
/*!40000 ALTER TABLE `empleats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveidor`
--

DROP TABLE IF EXISTS `proveidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveidor` (
  `idProveidor` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `adreça` varchar(100) NOT NULL,
  `telefón` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  `NIF` varchar(9) NOT NULL,
  PRIMARY KEY (`idProveidor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveidor`
--

LOCK TABLES `proveidor` WRITE;
/*!40000 ALTER TABLE `proveidor` DISABLE KEYS */;
INSERT INTO `proveidor` VALUES (1,'empresaA','Acceso Lorem ipsum dolor, 252A 6ºD, Barcelona,08028,Espanya.',606007478,876007464,'29642676T'),(2,'empresaB','Carrer Lorem ipsum, 5A 4ºG, Barcelona,08028,Espanya.',446007471,246258458,'31090567H'),(3,'empresaC','Pasaje Lorem ipsum, 10, Barcelona,08028,Espanya.',478578458,986745847,'74513197M'),(4,'empresaD','Avenida Lorem ipsum dolor, 10 11ºD, Barcelona,08028,Espanya.',586007598,746074482,'83190761Z'),(5,'empresaE','Vía Lorem ipsum dolor, 125, Barcelona,08028,Espanya.',896007748,226001475,'5409835M'),(6,'empresaF','Paseo Lorem ipsum dolor sit, 267B 14ºH, Barcelona,08028,Espanya.',226001475,896007748,'76285594E'),(7,'empresaG','Vía Lorem ipsum dolor sit, 38B, Barcelona,08028,Espanya.',746074482,586007598,'37503178E'),(8,'empresaH','Carretera Lorem, 282, Barcelona,08028,Espanya.',986745847,478578458,'6885596V'),(9,'empresaI','Avenida Lorem, 150B, Barcelona,08028,Espanya.',246258458,446007471,'6477229S'),(10,'empresaJ','Travesía Lorem, 138A, Barcelona,08028,Espanya.',876007464,606007478,'84720514Z');
/*!40000 ALTER TABLE `proveidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulleres`
--

DROP TABLE IF EXISTS `ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulleres` (
  `idUlleres` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) NOT NULL,
  `graduació` decimal(10,2) NOT NULL,
  `tipusMuntura` varchar(45) NOT NULL,
  `colorMuntura` varchar(45) NOT NULL,
  `colorVidre` varchar(45) NOT NULL,
  `preu` decimal(10,2) NOT NULL,
  `idproveidor` int(11) NOT NULL,
  `idempleat` int(11) NOT NULL,
  PRIMARY KEY (`idUlleres`),
  KEY `fk_idprov_idx` (`idproveidor`),
  KEY `fk_idempleat_idx` (`idempleat`),
  CONSTRAINT `fk_empleat` FOREIGN KEY (`idempleat`) REFERENCES `empleats` (`idEmpleat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_proveidor` FOREIGN KEY (`idproveidor`) REFERENCES `proveidor` (`idProveidor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulleres`
--

LOCK TABLES `ulleres` WRITE;
/*!40000 ALTER TABLE `ulleres` DISABLE KEYS */;
INSERT INTO `ulleres` VALUES (1,'Maui Jim',0.20,'flotant','negre','blau',120.20,1,5),(2,'Gucci',0.18,'pasta','gris','negre',200.00,5,9),(3,'Ombak',0.06,'metàl·lica','blanc','cendra',150.15,9,10),(4,'Ray-Ban',0.11,'flotant','blau','ocre',300.00,1,6),(5,'Hawkers',0.17,'pasta','negre','crema',149.20,2,7),(6,'Oakley',0.22,'metàl·lica','vermell','blau',351.10,8,3),(7,'Dolce & Gabbanna',0.10,'flotant','rosa','negre',200.00,3,4),(8,'Christian Dior',0.15,'pasta','verd','beix',200.50,7,1),(9,'Prada',0.10,'flotant','blanc','gris',225.90,4,1),(10,'Norris',0.09,'metàl·lica','negre','marró',300.00,6,2);
/*!40000 ALTER TABLE `ulleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ulleresxproveidor`
--

DROP TABLE IF EXISTS `ulleresxproveidor`;
/*!50001 DROP VIEW IF EXISTS `ulleresxproveidor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ulleresxproveidor` AS SELECT 
 1 AS `NomProveidor`,
 1 AS `MarcaUlleres`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `venedorxulleres`
--

DROP TABLE IF EXISTS `venedorxulleres`;
/*!50001 DROP VIEW IF EXISTS `venedorxulleres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `venedorxulleres` AS SELECT 
 1 AS `NomVenedor`,
 1 AS `idUlleres`,
 1 AS `MarcaUlleres`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `clientxrecomanador`
--

/*!50001 DROP VIEW IF EXISTS `clientxrecomanador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientxrecomanador` AS select `e`.`nom` AS `client`,`a`.`nom` AS `recomanador` from (`clients` `e` left join `clients` `a` on((`a`.`idrecomanat` = `e`.`idClient`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ulleresxproveidor`
--

/*!50001 DROP VIEW IF EXISTS `ulleresxproveidor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ulleresxproveidor` AS select `p`.`nom` AS `NomProveidor`,`u`.`marca` AS `MarcaUlleres` from (`proveidor` `p` join `ulleres` `u` on((`p`.`idProveidor` = `u`.`idproveidor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `venedorxulleres`
--

/*!50001 DROP VIEW IF EXISTS `venedorxulleres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `venedorxulleres` AS select `e`.`nom` AS `NomVenedor`,`u`.`idUlleres` AS `idUlleres`,`u`.`marca` AS `MarcaUlleres` from (`empleats` `e` join `ulleres` `u` on((`e`.`idEmpleat` = `u`.`idUlleres`))) */;
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

-- Dump completed on 2021-05-31 12:44:55
