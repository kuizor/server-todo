CREATE DATABASE  IF NOT EXISTS `proyect_E_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `proyect_E_development`;
-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: proyect_E_development
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_details`
--

DROP TABLE IF EXISTS `category_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `meme_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_category_details_on_category_id` (`category_id`),
  KEY `index_category_details_on_meme_id` (`meme_id`),
  CONSTRAINT `fk_rails_42e7d9579d` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_rails_9dc35bfeab` FOREIGN KEY (`meme_id`) REFERENCES `memes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_details`
--

LOCK TABLES `category_details` WRITE;
/*!40000 ALTER TABLE `category_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_details`
--

DROP TABLE IF EXISTS `email_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_email_details_on_user_id` (`user_id`),
  KEY `index_email_details_on_email_id` (`email_id`),
  CONSTRAINT `fk_rails_89525e9cf3` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`),
  CONSTRAINT `fk_rails_94e1da5b99` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_details`
--

LOCK TABLES `email_details` WRITE;
/*!40000 ALTER TABLE `email_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memes`
--

DROP TABLE IF EXISTS `memes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_top` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_buttom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_meme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_memes_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_0dd3229ca9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memes`
--

LOCK TABLES `memes` WRITE;
/*!40000 ALTER TABLE `memes` DISABLE KEYS */;
INSERT INTO `memes` VALUES (4,'Dv99KQ','Prueba5003','Hasta Cuando?','http://i.memecaptain.com/gend_images/PalV_Q.jpg','PRIVATED',27,1,'2016-02-03 04:40:45','2016-02-05 05:29:48'),(5,'Dv99KQ','Prueba5004','Hasta Cuando?','http://i.memecaptain.com/gend_images/K7FBvg.jpg','PRIVATED',24,2,'2016-02-03 19:41:58','2016-02-05 05:27:06'),(6,'Dv99KQ','Prueba5005','Hasta Cuando?','http://memecaptain.com/pending_gend_images/JMTTdg','PUBLIC',26,2,'2016-02-03 19:43:25','2016-02-05 15:54:28'),(7,'Dv99KQ','Prueba5006','Hasta Cuando?','http://memecaptain.com/pending_gend_images/XzwTbA','PUBLIC',40,1,'2016-02-04 00:15:02','2016-02-05 15:54:07'),(8,'Dv99KQ','Prueba5006','Hasta Cuando?','http://memecaptain.com/pending_gend_images/YmF7cA',NULL,0,NULL,'2016-02-05 16:13:20','2016-02-05 16:13:20'),(9,'Dv99KQ','Prueba5008','Hasta Cuando?','http://memecaptain.com/pending_gend_images/fOpZbw',NULL,0,NULL,'2016-02-05 16:17:25','2016-02-05 16:17:25'),(10,'Dv99KQ','Prueba5010','Hasta Cuando?','http://memecaptain.com/pending_gend_images/UeNSfw',NULL,0,NULL,'2016-02-05 16:21:58','2016-02-05 16:21:58'),(11,'Dv99KQ','Prueba5011','Hasta Cuando?','http://memecaptain.com/pending_gend_images/yFQR4w',NULL,0,NULL,'2016-02-05 16:22:38','2016-02-05 16:22:38'),(12,'Dv99KQ','Prueba5012','Hasta Cuando?','http://memecaptain.com/pending_gend_images/QKcWRQ.jpg',NULL,0,NULL,'2016-02-05 16:23:57','2016-02-05 16:23:57'),(13,'Dv99KQ','Prueba5016','Hasta Cuando?','http://memecaptain.com/pending_gend_images/MVgquA.jpg',NULL,0,NULL,'2016-02-05 18:38:57','2016-02-05 18:38:57'),(14,'Dv99KQ','Prueba5017','Hasta Cuando?','http://memecaptain.com/pending_gend_images/j8qLkg',NULL,0,NULL,'2016-02-05 19:14:13','2016-02-05 19:14:13'),(15,'Dv99KQ','Prueba5018','Hasta Cuando?','http://memecaptain.com/pending_gend_images/mqO0xw.jpg',NULL,0,NULL,'2016-02-05 19:21:59','2016-02-05 19:21:59'),(16,'Dv99KQ','Prueba5019','Hasta Cuando?','http://memecaptain.com/pending_gend_images/LrJ-Yw.jpg',NULL,0,NULL,'2016-02-05 19:39:14','2016-02-05 19:39:14'),(17,'Dv99KQ','Prueba5020','Hasta Cuando?','http://memecaptain.com/pending_gend_images/rKCqkA.jpg',NULL,0,NULL,'2016-02-05 19:41:42','2016-02-05 19:41:42'),(18,'Dv99KQ','Prueba5021','Hasta Cuando?','http://memecaptain.com/pending_gend_images/241_Dw.jpg',NULL,0,NULL,'2016-02-05 19:45:00','2016-02-05 19:45:00'),(19,'Dv99KQ','Prueba5022','Hasta Cuando?','http://memecaptain.com/pending_gend_images/3lHMFw.jpg',NULL,0,NULL,'2016-02-05 19:54:10','2016-02-05 19:54:10'),(20,'Dv99KQ','Prueba5023','Hasta Cuando?','http://memecaptain.com/pending_gend_images/p02t6w.jpg',NULL,0,NULL,'2016-02-05 19:56:40','2016-02-05 19:56:40'),(21,'Dv99KQ','Aprendiendo API','Prueba5024','http://memecaptain.com/pending_gend_images/2xH4qQ.jpg',NULL,0,NULL,'2016-02-05 20:02:52','2016-02-05 20:02:52'),(22,'Dv99KQ','Aprendiendo API','Prueba5025','http://memecaptain.com/pending_gend_images/bfzRPw.jpg',NULL,0,NULL,'2016-02-05 20:04:58','2016-02-05 20:04:58'),(23,'Dv99KQ','Aprendiendo API','Prueba5026','http://memecaptain.com/pending_gend_images/ib4LxQ.jpg',NULL,0,NULL,'2016-02-05 20:07:46','2016-02-05 20:07:46'),(24,'Dv99KQ','Aprendiendo API','Prueba5027','http://memecaptain.com/pending_gend_images/u1oLOA.jpg',NULL,0,NULL,'2016-02-05 20:13:16','2016-02-05 20:13:16');
/*!40000 ALTER TABLE `memes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160131045421'),('20160131045440'),('20160131045459'),('20160131045525'),('20160131045551'),('20160202030223'),('20160202030318'),('20160202042041'),('20160205152620');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_details`
--

DROP TABLE IF EXISTS `tag_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meme_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tag_details_on_meme_id` (`meme_id`),
  KEY `index_tag_details_on_tag_id` (`tag_id`),
  CONSTRAINT `fk_rails_8698f7c222` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `fk_rails_f76d3103d0` FOREIGN KEY (`meme_id`) REFERENCES `memes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_details`
--

LOCK TABLES `tag_details` WRITE;
/*!40000 ALTER TABLE `tag_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Miguel','123','c0992d14-0ae4-4115-9fd1-2d80347dacb6','ADMIN','2016-02-03 04:09:29','2016-02-04 00:12:59'),(2,'Carlos','123',NULL,'USER','2016-02-03 15:52:28','2016-02-03 23:52:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meme_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_votes_on_meme_id` (`meme_id`),
  KEY `index_votes_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_b26102026b` FOREIGN KEY (`meme_id`) REFERENCES `memes` (`id`),
  CONSTRAINT `fk_rails_c9b3bef597` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (1,6,1,'2016-02-05 15:34:31','2016-02-05 15:54:28'),(2,5,2,'2016-02-05 15:38:05','2016-02-05 15:38:05');
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-07 11:23:22
