-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: FJKM
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','@dm1n@dm1n'),(2,'admin','admin123'),(3,'admin','admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asa`
--

DROP TABLE IF EXISTS `asa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asa` (
  `id_asa` int NOT NULL AUTO_INCREMENT,
  `asa` varchar(50) NOT NULL,
  PRIMARY KEY (`id_asa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asa`
--

LOCK TABLES `asa` WRITE;
/*!40000 ALTER TABLE `asa` DISABLE KEYS */;
INSERT INTO `asa` VALUES (1,'A.F.F'),(2,'K.F.T.M');
/*!40000 ALTER TABLE `asa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dada`
--

DROP TABLE IF EXISTS `dada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dada` (
  `id_dada` int NOT NULL AUTO_INCREMENT,
  `nom_dada` varchar(255) NOT NULL,
  `prenom_dada` varchar(255) NOT NULL,
  `daty_dada` date NOT NULL,
  `lieu_dada` varchar(100) NOT NULL,
  `profession_dada` varchar(255) NOT NULL,
  `sexe_dada` int NOT NULL,
  `situation_dada` int NOT NULL,
  `adresse_dada` varchar(255) NOT NULL,
  `email_dada` varchar(100) NOT NULL,
  `faritra_dada` int NOT NULL,
  `batisa_dada` int NOT NULL,
  `mpandray_dada` int NOT NULL,
  `andraikitra_dada` varchar(100) NOT NULL,
  `taranaka_dada` int NOT NULL,
  `sampana_dada` int NOT NULL,
  `rantsana_dada` int NOT NULL,
  `asa_dada` int NOT NULL,
  PRIMARY KEY (`id_dada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dada`
--

LOCK TABLES `dada` WRITE;
/*!40000 ALTER TABLE `dada` DISABLE KEYS */;
/*!40000 ALTER TABLE `dada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dadaNodimandry`
--

DROP TABLE IF EXISTS `dadaNodimandry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dadaNodimandry` (
  `id_dada` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `sexe` int NOT NULL,
  `situation` int NOT NULL,
  PRIMARY KEY (`id_dada`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dadaNodimandry`
--

LOCK TABLES `dadaNodimandry` WRITE;
/*!40000 ALTER TABLE `dadaNodimandry` DISABLE KEYS */;
INSERT INTO `dadaNodimandry` VALUES (1,'Rakoto','nirina',1,1),(2,'lkjlk','jhkjhk',1,0),(3,'dada2','daa',0,0),(4,'dada1','daa',1,0),(5,'kjhkj','hkj',1,0),(6,'mickael','be',1,0),(7,'zaa','',1,0),(8,'','',0,1),(9,'kjkl','jklj',1,0),(10,'zaqerty','uy',0,1),(11,'','',0,1),(12,'kjhkj','frd',1,0),(13,'lk','kml',1,0),(14,'jhgjhjh','ccc',0,0);
/*!40000 ALTER TABLE `dadaNodimandry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fianakaviana`
--

DROP TABLE IF EXISTS `fianakaviana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fianakaviana` (
  `id_fianakaviana` int DEFAULT NULL,
  `id_dada` int NOT NULL,
  `id_neny` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fianakaviana`
--

LOCK TABLES `fianakaviana` WRITE;
/*!40000 ALTER TABLE `fianakaviana` DISABLE KEYS */;
/*!40000 ALTER TABLE `fianakaviana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neny`
--

DROP TABLE IF EXISTS `neny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neny` (
  `id_neny` int NOT NULL AUTO_INCREMENT,
  `nom_neny` varchar(255) NOT NULL,
  `prenom_neny` varchar(255) NOT NULL,
  `daty_neny` date NOT NULL,
  `lieu_neny` varchar(100) NOT NULL,
  `profession_neny` varchar(255) NOT NULL,
  `sexe_neny` int NOT NULL,
  `situaton_neny` int NOT NULL,
  `adresse_neny` varchar(255) NOT NULL,
  `email_neny` varchar(100) NOT NULL,
  `faritra_neny` int NOT NULL,
  `batisa_neny` int NOT NULL,
  `mpandray_neny` int NOT NULL,
  `andraikitra_neny` varchar(100) NOT NULL,
  `taranaka_neny` int NOT NULL,
  `sampana_neny` int NOT NULL,
  `rantsana_neny` int NOT NULL,
  `asa_neny` int NOT NULL,
  PRIMARY KEY (`id_neny`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neny`
--

LOCK TABLES `neny` WRITE;
/*!40000 ALTER TABLE `neny` DISABLE KEYS */;
/*!40000 ALTER TABLE `neny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rantsana`
--

DROP TABLE IF EXISTS `rantsana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rantsana` (
  `id_rantsana` int NOT NULL AUTO_INCREMENT,
  `rantsana` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rantsana`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rantsana`
--

LOCK TABLES `rantsana` WRITE;
/*!40000 ALTER TABLE `rantsana` DISABLE KEYS */;
INSERT INTO `rantsana` VALUES (1,'V.M'),(2,'A.R.M.M'),(3,'NY SALOHY');
/*!40000 ALTER TABLE `rantsana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safidy`
--

DROP TABLE IF EXISTS `safidy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safidy` (
  `id_safidy` int NOT NULL AUTO_INCREMENT,
  `safidy` varchar(10) NOT NULL,
  PRIMARY KEY (`id_safidy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safidy`
--

LOCK TABLES `safidy` WRITE;
/*!40000 ALTER TABLE `safidy` DISABLE KEYS */;
INSERT INTO `safidy` VALUES (1,'ENY'),(2,'TSIA');
/*!40000 ALTER TABLE `safidy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampana`
--

DROP TABLE IF EXISTS `sampana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sampana` (
  `id_sampana` int NOT NULL AUTO_INCREMENT,
  `sampana` varchar(50) NOT NULL,
  PRIMARY KEY (`id_sampana`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampana`
--

LOCK TABLES `sampana` WRITE;
/*!40000 ALTER TABLE `sampana` DISABLE KEYS */;
INSERT INTO `sampana` VALUES (1,'DORKASY'),(2,'S.A'),(3,'S.V.M'),(4,'S.L.K'),(5,'S.T.K'),(6,'SAFIF'),(7,'SAMPATI'),(8,'V.F.L');
/*!40000 ALTER TABLE `sampana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taranaka`
--

DROP TABLE IF EXISTS `taranaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taranaka` (
  `id_taranaka` int NOT NULL AUTO_INCREMENT,
  `taranaka` varchar(50) NOT NULL,
  PRIMARY KEY (`id_taranaka`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taranaka`
--

LOCK TABLES `taranaka` WRITE;
/*!40000 ALTER TABLE `taranaka` DISABLE KEYS */;
INSERT INTO `taranaka` VALUES (1,'Nodimandry'),(2,'Ankehitriny');
/*!40000 ALTER TABLE `taranaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zanaka`
--

DROP TABLE IF EXISTS `zanaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zanaka` (
  `id_zanaka` int NOT NULL AUTO_INCREMENT,
  `id_dada` int NOT NULL,
  `id_neny` int NOT NULL,
  `nom_zanaka` varchar(255) NOT NULL,
  `prenom_zanaka` varchar(255) NOT NULL,
  `daty_zanaka` date NOT NULL,
  `lieu_zanaka` varchar(100) NOT NULL,
  `profession_zanaka` varchar(255) NOT NULL,
  `sexe_zanaka` int NOT NULL,
  `situation_zanaka` int NOT NULL,
  `adresse_zanaka` varchar(255) NOT NULL,
  `email_zanaka` varchar(100) NOT NULL,
  `faritra_zanaka` int NOT NULL,
  `batisa_zanaka` int NOT NULL,
  `mpandray_zanaka` int NOT NULL,
  `andraikitra_zanaka` varchar(100) NOT NULL,
  `taranaka_zanaka` int NOT NULL,
  `sampana_zanaka` json NOT NULL,
  `rantsana_zanaka` json NOT NULL,
  `asa_zanaka` json NOT NULL,
  PRIMARY KEY (`id_zanaka`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zanaka`
--

LOCK TABLES `zanaka` WRITE;
/*!40000 ALTER TABLE `zanaka` DISABLE KEYS */;
/*!40000 ALTER TABLE `zanaka` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 17:03:40
