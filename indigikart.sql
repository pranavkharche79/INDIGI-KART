-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: gikart
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (8,'Satara','India','Maharastra','415001'),(9,'Satara','India','Maharastra','415001'),(10,'Satara','India','Maharastra','415001'),(11,'Satara','India','Maharastra','415001'),(12,'Satara','India','Maharashtra','415001');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin` (
  `userid` varchar(255) NOT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES ('admin','admin','Administrator');
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) DEFAULT NULL,
  `isactive` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (5,'Food',_binary '\0'),(6,'Food Stuff',_binary ''),(7,'	Agricultural ',_binary ''),(8,'	Handicraft ',_binary ''),(9,'Textile',_binary '\0'),(10,'Handloom',_binary '\0'),(11,'Manufactured',_binary ''),(12,'Sweets',_binary '\0'),(13,' Handlooms & Textiles',_binary ''),(14,'clothing',_binary '');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Satara','Male','Arjun Jagtap','9421874065','arjun@123','arjun'),(2,'Pune','Male','Shantanu Ghanwat','9403263513','shantanu@123','shantanu'),(3,'Pune','Male','Sudarshan satkar','8788272689','sudarshan@123','sudarshan'),(4,'Chandrapur','Male','Pranav Kharche','9325874707','pranav@123','pranav'),(5,'Yevatmal','Female','Vaishnavi Khobragade','7447715933','vaishnavi@123','vaishnavi'),(6,'Varansi','Male','Luv Yadav','7376441214','luv@123','luv');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qty` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `prod_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4p5c64mj3tsqj1v4ypeq3jans` (`orderId`),
  KEY `FKbthfjrpqoc6ebblrx54myfc3a` (`prod_id`),
  CONSTRAINT `FK4p5c64mj3tsqj1v4ypeq3jans` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderid`),
  CONSTRAINT `FKbthfjrpqoc6ebblrx54myfc3a` FOREIGN KEY (`prod_id`) REFERENCES `Product` (`prodid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDetails`
--

LOCK TABLES `OrderDetails` WRITE;
/*!40000 ALTER TABLE `OrderDetails` DISABLE KEYS */;
INSERT INTO `OrderDetails` VALUES (12,1,12,70);
/*!40000 ALTER TABLE `OrderDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `orderDate` datetime(6) DEFAULT NULL,
  `addressId` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `paymentId` int DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FKh9mg44fdpi0pwusk56r0xged5` (`addressId`),
  KEY `FKeokvurs5fbw7s13q8nmgpqx71` (`customerId`),
  KEY `FK3uouvmvg4j5yov27idsmpw468` (`paymentId`),
  CONSTRAINT `FK3uouvmvg4j5yov27idsmpw468` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`),
  CONSTRAINT `FKeokvurs5fbw7s13q8nmgpqx71` FOREIGN KEY (`customerId`) REFERENCES `Customer` (`id`),
  CONSTRAINT `FKh9mg44fdpi0pwusk56r0xged5` FOREIGN KEY (`addressId`) REFERENCES `Address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (12,'2024-02-20 16:39:58.675000',12,1,12);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `cardno` varchar(255) DEFAULT NULL,
  `nameoncard` varchar(255) DEFAULT NULL,
  `paymentdate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (8,658,'9765 3456 8735','Arjun Jagtap','2024-02-18 23:36:24.112000'),(9,2139,'123 3424 432321','Arjun Jagtap','2024-02-19 15:14:16.559000'),(10,1599,'','','2024-02-19 20:38:28.168000'),(11,2139,'dfg','dsfdsfds','2024-02-19 21:36:31.259000'),(12,1249,'6454545454545454','Arjun Jagtap','2024-02-20 16:39:58.664000');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `prodid` int NOT NULL AUTO_INCREMENT,
  `createdOn` datetime(6) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `qty` int NOT NULL,
  `cat_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  PRIMARY KEY (`prodid`),
  KEY `FKf6jqtf7fbsr0gil5ofrnbme0e` (`cat_id`),
  KEY `FKgf3xpxhjcicwl10q22x28h1tl` (`seller_id`),
  CONSTRAINT `FKf6jqtf7fbsr0gil5ofrnbme0e` FOREIGN KEY (`cat_id`) REFERENCES `Category` (`id`),
  CONSTRAINT `FKgf3xpxhjcicwl10q22x28h1tl` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (34,'2024-02-18 17:54:08.692821','\"Banglar Rasogolla is a delectable Bengali dessert renowned for its spongy texture and sweet syrup, embodying the rich culinary heritage of West Bengal, India.\"','https://res.cloudinary.com/dvizikqng/image/upload/v1708259036/lxnugrdeanai9hvzmwvk.jpg','Banglar Rasogolla',225,0,6,15),(40,'2024-02-18 18:22:27.048107','Kashmir Saffron, renowned for its vibrant color and distinct flavor, is the world\'s finest spice, cherished for culinary and medicinal purposes.','https://res.cloudinary.com/dvizikqng/image/upload/v1708260734/g6j1htjsrqiudtoxj1py.jpg','Kashmir Saffron',449,0,7,16),(41,'2024-02-18 18:25:41.612532','Nakshi Kantha: Traditional Bengali quilt, hand-stitched with vibrant threads, featuring intricate motifs, telling cultural stories through fabric artistry.','https://res.cloudinary.com/dvizikqng/image/upload/v1708260921/dj3k1lqjdxtjebzjwtow.jpg','Nakshi Kantha Bed Cover',1249,0,8,16),(42,'2024-02-18 18:44:07.256030','Juicy, sweet, tropical delight; vibrant orange flesh with a luscious aroma; mango, nature\'s succulent gift, bursts with refreshing flavor.','https://res.cloudinary.com/dvizikqng/image/upload/v1708261830/z8w3duyvzrtu6hpd3d3w.jpg','Alphonso (Mango)',1299,0,7,17),(43,'2024-02-18 19:11:58.588307','Ajara Ghansal Rice: Premium quality, aromatic grains, cultivated with care. Delivers rich taste and texture. A culinary delight for discerning palates.','https://res.cloudinary.com/dvizikqng/image/upload/v1708263603/z9t1dcx1x9dbjfikfodf.jpg','Ajara Ghansal Rice',679,0,7,18),(44,'2024-02-18 20:14:23.004706','xquisite Varanasi Soft Stone Jali Work: Intricately carved patterns on delicate soft stone, showcasing traditional craftsmanship and cultural elegance','https://res.cloudinary.com/dvizikqng/image/upload/v1708267375/qccgxrl6puz7te6ut3by.jpg',' Varanasi Soft Stone Jali Work',1636,0,8,19),(45,'2024-02-18 20:29:24.334742','Turmeric, a golden spice, boasts anti-inflammatory properties, adds vibrant color to dishes, and is renowned for its potential health benefits.','https://res.cloudinary.com/dvizikqng/image/upload/v1708268248/oxsgvyfahbco3pwygzzd.jpg','Turmeric',275,0,7,20),(46,'2024-02-18 20:39:28.632951','Gamosa of Assam: Traditional Assamese woven cotton towel, symbolizing honor, respect, and cultural identity, adorned with vibrant motifs and colors .','https://res.cloudinary.com/dvizikqng/image/upload/v1708268928/fyyshwcyu1y6tqvytfga.jpg','Gamosa of Assam',499,0,14,21),(47,'2024-02-18 20:59:26.439036','Exquisite Jhabua Kadaknath Black Chicken: Tender, flavorful, succulent meat, prized for its unique taste, perfect for gourmet dishes.','https://res.cloudinary.com/dvizikqng/image/upload/v1708270151/frczynfxs2pqg5nu6bsq.jpg','Jhabua Kadaknath Black Chicken Meat',1199,0,6,22),(48,'2024-02-18 21:10:12.842244','Exquisite Darjeeling tea: Fragrant, muscatel notes, amber infusion, delicate taste. Renowned for its unique flavor, a distinguished and revered brew.','https://res.cloudinary.com/dvizikqng/image/upload/v1708270757/drpcnoxmbzj16ln6dc4m.jpg','Darjeeling tea',329,-2,7,15),(50,'2024-02-18 21:14:48.924151','Aranmula Kannadi is a handmade metal mirror from Kerala, India, famous for its unique alloy and traditional craftsmanship, considered auspicious','https://res.cloudinary.com/dvizikqng/image/upload/v1708271074/pzpl8w52ykbqk3oizc3x.jpg','Aranmula Kannadi ',2497,0,11,15),(51,'2024-02-18 21:19:29.115790','Chanderi saree: Elegant, lightweight silk-cotton blend with sheer texture, intricate zari work, and vibrant motifs. Timeless charm, perfect for festivities.','https://res.cloudinary.com/dvizikqng/image/upload/v1708271332/f6phvdvfkbz3fkyi47jy.jpg','Chanderi sari',4999,0,14,15),(52,'2024-02-18 22:48:02.992880','Solapuri chaddar: Traditional handwoven blanket from Solapur, India. Soft, vibrant, and durable with unique patterns, providing warmth and comfort.','https://res.cloudinary.com/dvizikqng/image/upload/v1708276647/sfqwj6sqazzoqrs9nizn.jpg','Solapuri chaddar',799,0,11,15),(55,'2024-02-18 22:55:21.509999','Kotpad handloom: Indigenous weaving tradition. Natural dyes, tribal motifs. Sustainable fabric with cultural significance. Rich heritage, ethical craftsmanship.','https://res.cloudinary.com/dvizikqng/image/upload/v1708277105/y6132skvnn2ks7cllng4.jpg','Odisha Handloom Kotpad Cotton Saree',1199,0,13,15),(56,'2024-02-18 23:01:38.165155','Mysore silk: Luxurious silk fabric originating from Mysuru, India, known for its smooth texture, vibrant colors, and intricate gold zari designs.','https://res.cloudinary.com/dvizikqng/image/upload/v1708277445/hy3ptcdggdribflospw2.png','Mysore silk Saree',1799,0,13,16),(58,'2024-02-18 23:05:39.958950','Kota Doria: Handwoven Indian textile known for lightweight, translucent cotton or silk-cotton blend, originating from Rajasthan, India.','https://res.cloudinary.com/dvizikqng/image/upload/v1708277728/f6g1pgswkgxg6ceawj0i.jpg','Kota Doria Saree',1599,-1,13,16),(59,'2024-02-18 23:18:12.923807','Mysore Agarbathi: Fragrant, spiritual essence. Handcrafted in Mysuru, India, with rich aroma and traditional craftsmanship, enhancing moments of tranquility.','https://res.cloudinary.com/dvizikqng/image/upload/v1708278449/ofo9bfqupzon78y3snxv.jpg','Mysore Sandal Agarbathies',329,0,11,16),(60,'2024-02-18 23:22:12.355833','Bidriware: Indian metal handicraft with silver inlay, originated in Bidar, Karnataka. Known for its intricate designs and unique luster.','https://res.cloudinary.com/dvizikqng/image/upload/v1708278673/d3pdb8lsmsph4fhgdz98.jpg','Bidriware Showpiece',2139,-2,8,16),(61,'2024-02-18 23:26:16.643895','Dharwad Pedha is a sweet delicacy from Karnataka, India, known for its rich flavor, creamy texture, and nutty undertones.','https://res.cloudinary.com/dvizikqng/image/upload/v1708278929/idd7wqxowa5wmacj8r5c.jpg','Dharwad pedha',549,0,6,17),(63,'2024-02-18 23:29:34.792533','Spicy, crisp Indian snack originating from Bikaner, Rajasthan. Made with gram flour, spices, and deep-fried for a delightful, flavorful crunch.','https://res.cloudinary.com/dvizikqng/image/upload/v1708279158/iqdxjonln3gqtscmsrvx.jpg','Bikaneri Bhujia',249,0,6,17),(64,'2024-02-19 19:14:53.570568','Mysore Sandalwood Oil: A fragrant essence from rare sandalwood, renowned for its rich, sweet, and woody aroma, prized in perfumery.','https://res.cloudinary.com/dvizikqng/image/upload/v1708350205/xh8t9dggbsoalx6jebd0.png','Mysore Sandalwood Oil',389,0,11,17),(67,'2024-02-20 00:23:52.496350','Elegant Indian silk saree with vibrant colors, intricate zari or gold/silver thread work, and peacock motifs, representing Maharashtra\'s rich textile heritage.','https://res.cloudinary.com/dvizikqng/image/upload/v1708368818/mgmeqzhe5svmqzicnrj2.jpg','Paithani Soft Silk Saree',3159,0,14,20),(68,'2024-02-20 00:30:22.124528','Nashik wine, renowned for its rich flavor, is crafted in Maharashtra\'s vineyards, offering a delightful blend of quality and tradition.','https://res.cloudinary.com/dvizikqng/image/upload/v1708369164/tln5avcxhzetonalhdka.png','Nashik valley wine',2999,0,6,20),(70,'2024-02-20 00:35:08.121347','Traditional Maharashtrian headgear, Puneri Pagadi, symbolizes cultural pride. Elaborate and vibrant, it reflects heritage and regional identity.','https://res.cloudinary.com/dvizikqng/image/upload/v1708369496/z73anrnpof1mzktks4ug.jpg','Puneri Pagadi',1249,-1,14,20),(71,'2024-02-20 16:08:45.551356',' Traditional Thanjavur dolls: handcrafted, vibrant, intricate, depicting Indian culture, often portraying mythological characters and everyday life scenes.','https://res.cloudinary.com/dvizikqng/image/upload/v1708425493/r1lopxlu2p5bh7in4vjf.jpg','Thanjavur Doll',899,0,8,18);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `certificate` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `createdOn` datetime(6) DEFAULT NULL,
  `isactive` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (15,'https://res.cloudinary.com/dvizikqng/image/upload/v1708258512/swrsttv47f7a6ubrcxt5.jpg','Kolkata','2024-02-18 17:45:41.749331',_binary '','Shri. Sudip Mullick','9765432108','Sudip@123','sudip'),(16,'https://res.cloudinary.com/dvizikqng/image/upload/v1708260277/nlf4zciacwlg4t71v6wj.jpg','Srinagar','2024-02-18 18:14:38.547453',_binary '','Shri. Bilal Ahmed Kawoosa','9419155629','Bilal@123','bilal'),(17,'https://res.cloudinary.com/dvizikqng/image/upload/v1708261571/wgxd2jvdnfgz1754jial.jpg','Ratnagiri','2024-02-18 18:37:20.135276',_binary '','Smt. Saraswati Jayprakash Gandhi','9776543210','Saraswati@123','saraswati'),(18,'https://res.cloudinary.com/dvizikqng/image/upload/v1708263461/tfdgfmqsxb5emiiceg9k.jpg','kasar Kadagaon','2024-02-18 19:08:36.921855',_binary '','shri. Uttam Vasant Narvekar','9654321098','Uttam@123','uttam'),(19,'https://res.cloudinary.com/dvizikqng/image/upload/v1708267047/cvzq40hsuw8gpjgga7km.jpg','Varanasi','2024-02-18 20:08:51.006851',_binary '',' Deep Shankar Vyas','9421874066','Deep@123','deep'),(20,'https://res.cloudinary.com/dvizikqng/image/upload/v1708267947/ibmizsu1xu3bfxrcgz2w.jpg','Sangli','2024-02-18 20:22:57.271630',_binary '','Shri. Sarjerao Ishwara Patil','9607476976','Sarjerao@123','sarjerao'),(21,'https://res.cloudinary.com/dvizikqng/image/upload/v1708268661/sniaegcmqu6ycqkkhey4.jpg','Lakhimpur','2024-02-18 20:34:39.599068',_binary '','shri. Ajit Rajkhowa V','9419155629','Ajit@123','ajit'),(22,'https://res.cloudinary.com/dvizikqng/image/upload/v1708269768/woll3ovwdadf1vog7yu7.jpg','Jhabua','2024-02-18 20:52:50.235230',_binary '','Gramin Vikas Trust','9345678901','Vikas@123','vikas');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-21  9:41:50
