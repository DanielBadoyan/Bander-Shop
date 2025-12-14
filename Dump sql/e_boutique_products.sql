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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `description` text,
  `prix` decimal(10,2) NOT NULL,
  `categorie_id` int DEFAULT NULL,
  `vendeur_id` int DEFAULT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image_url` varchar(255) DEFAULT NULL,
  `status` enum('disponible','vendu','retiré') DEFAULT 'disponible',
  `taille` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorie_id` (`categorie_id`),
  KEY `vendeur_id` (`vendeur_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`vendeur_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Bonnet Cthulhu','Bonnet vert avec motif Cthulhu',15.99,7,1,'2025-03-26 18:34:53','image/bonnet-cthulhu.jpg','vendu','Unique'),(2,'Bottes','Bottes en cuir marron',79.99,6,1,'2025-03-26 18:34:53','image/botte.jpg','vendu','42'),(3,'Chaussure','Chaussure de sport',59.99,6,1,'2025-03-26 18:34:53','image/chaussure.jpg','vendu','40'),(4,'Chaussure 2','Chaussure de ville',69.99,6,1,'2025-03-26 18:34:53','image/chaussure2.jpg','vendu','43'),(5,'Pantalon Léopard','Pantalon avec motif léopard',39.99,5,1,'2025-03-26 18:34:53','image/pantalon_leopard.jpg','vendu','M'),(6,'T-shirt','T-shirt avec motif',24.99,5,1,'2025-03-26 18:34:53','image/t-shirt.jpg','vendu','L'),(7,'chaussure Slazenger','CH',23.00,6,2,'2025-03-28 23:35:54','images/produits/7/1742823816.jpeg','disponible',NULL),(8,'ensemble lacoste','ENSEMBLE LACOSTE BLUE',129.00,8,2,'2025-03-28 23:38:16','images/produits/8/1742685027.jpeg','disponible',NULL),(9,'Maillot Ac Milan','maillot',43.00,9,2,'2025-03-28 23:41:17','images/produits/9/1741265841.jpeg','disponible',NULL),(10,'jean levis','Jean levis Femme taille 38',34.00,5,2,'2025-03-28 23:41:59','images/produits/10/1742822556.jpeg','disponible',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-31  9:52:14
