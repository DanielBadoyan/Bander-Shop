-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: e_boutique
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `order_steps`
--

DROP TABLE IF EXISTS `order_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_steps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `etape_nom` varchar(100) NOT NULL,
  `date_etape` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` enum('en_attente','complete') DEFAULT 'en_attente',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_steps_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_steps`
--

LOCK TABLES `order_steps` WRITE;
/*!40000 ALTER TABLE `order_steps` DISABLE KEYS */;
INSERT INTO `order_steps` VALUES (1,1,'Commande confirmée','2025-03-28 23:23:19','complete'),(2,1,'En préparation','2025-03-28 23:23:19','complete'),(3,1,'Expédiée','2025-03-28 23:23:19','en_attente'),(4,1,'En livraison','2025-03-28 23:23:19','en_attente'),(5,1,'Livrée','2025-03-28 23:23:19','en_attente'),(6,2,'Commande confirmée','2025-03-28 23:34:44','complete'),(7,2,'En préparation','2025-03-28 23:34:44','complete'),(8,2,'Expédiée','2025-03-28 23:34:44','en_attente'),(9,2,'En livraison','2025-03-28 23:34:44','en_attente'),(10,2,'Livrée','2025-03-28 23:34:44','en_attente'),(11,3,'Commande confirmée','2025-03-29 14:12:12','complete'),(12,3,'En préparation','2025-03-29 14:12:12','complete'),(13,3,'Expédiée','2025-03-29 14:14:03','en_attente'),(14,3,'En livraison','2025-03-29 14:14:03','en_attente'),(15,3,'Livrée','2025-03-29 14:14:03','en_attente'),(16,3,'Commande annulée','2025-03-29 14:14:03','complete');
/*!40000 ALTER TABLE `order_steps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-31  9:52:13
