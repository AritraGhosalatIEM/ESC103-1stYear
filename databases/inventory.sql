-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	10.11.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `rate` double(6,2) unsigned DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `stock` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `name` (`name`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES
(1,'Apples',21.00,'kg',9600),
(2,'Barley',88.00,'kg',21747),
(3,'Beeswax',7.00,'kg',25891),
(4,'Cow Hide	',53.00,'kg',12242),
(5,'Eggs',18.00,'dozen',20746),
(6,'Flax',95.00,'kg',10030),
(7,'Fresh Water',18.00,'l',4175),
(8,'Honey',18.00,'l',9434),
(9,'Milk',14.00,'l',16442),
(10,'Pork	',60.00,'kg',8797),
(11,'Poultry Meat	',56.00,'kg',13077),
(12,'Rye',105.00,'kg',14011),
(13,'Vegetables',28.00,'kg',32356),
(14,'Wheat',84.00,'kg',1105),
(15,'Wool',35.00,'kg',17333),
(16,'Ash Lumber',42.00,'kg',19989),
(17,'Charcoal',18.00,'kg',6132),
(18,'Hickory Lumber	',105.00,'kg',1113),
(19,'Kindling',18.00,'kg',30737),
(20,'Maple Lumber	',95.00,'kg',30262),
(21,'Oak Bark',11.00,'kg',31731),
(22,'Oak Lumber',28.00,'kg',19793),
(23,'Pine Lumber	',53.00,'kg',8171),
(24,'Rosewood Lumber	',56.00,'kg',4324),
(25,'Spruce Lumber	',56.00,'kg',23463),
(26,'Walnut Lumber',35.00,'kg',23704),
(27,'Catnip',11.00,'kg',32175),
(28,'Rosemary',25.00,'g',3179),
(29,'Snakeroot',18.00,'g',22591),
(30,'St. John\'s wort',32.00,'g',25462),
(31,'Madder',32.00,'g',28548),
(32,'Bear Pelt',840.00,'kg',28012),
(33,'Beaver Pelt',560.00,'kg',21640),
(34,'Deer Pelt',420.00,'kg',24206),
(35,'Fox Pelt',350.00,'kg',18470),
(36,'Hare Meat',70.00,'kg',11852),
(37,'Hare Pelt',105.00,'kg',7780),
(38,'Wolf Pelt',455.00,'kg',13461),
(39,'Bear Claws',35.00,'unit',10274),
(40,'Bear Grease',35.00,'kg',9127),
(41,'Beaver Teeth',35.00,'unit',23863),
(42,'Bobcat Pelt',35.00,'unit',24434),
(43,'Bobcat Claws',35.00,'unit',23145),
(44,'Castoreum',105.00,'g',26625),
(45,'Cougar Pelt',105.00,'kg',19148),
(46,'Cougar Fangs',105.00,'unit',29180),
(47,'Deer Heart',35.00,'unit',26881),
(48,'Deer Marrow',35.00,'g',10918),
(49,'Deer Tail',1.00,'unit',19898),
(50,'Elk Antlers',70.00,'unit',548),
(51,'Elk Pelt',490.00,'kg',16872),
(52,'Elk Heart',35.00,'unit',10873),
(53,'Elk Meat',210.00,'kg',23359),
(54,'Fox Tail',70.00,'unit',4365),
(55,'Rabbit\'s Foot',NULL,'kg',13771),
(56,'Raccooon Pelt',14.00,'kg',12675),
(57,'Venison',140.00,'kg',8481),
(58,'Wolf Fangs',35.00,'unit',21801),
(59,'Clay',28.00,'kg',15829),
(60,'Copper ore',53.00,'kg',2723),
(61,'Gold Ore',123.00,'kg',674),
(62,'Iron Ore',42.00,'kg',24668),
(63,'Lead Ore',56.00,'kg',11074),
(64,'Limestone',35.00,'kg',22923),
(65,'Rock Salt',28.00,'kg',27252),
(66,'Silver Ore',112.00,'kg',14783),
(67,'Sand',11.00,'kg',7686),
(68,'Sulfur',77.00,'g',26792),
(69,'Black Powder',263.00,'g',18776),
(70,'Flour',175.00,'kg',12552),
(71,'Lindsey-Woolsey',228.00,'sqm',17963),
(72,'Flints',228.00,'g',23709),
(73,'Disinfectant',109.00,'l',2383),
(74,'Weapons Blades',158.00,'unit',9989),
(75,'Weapons Handles',193.00,'unit',6542),
(76,'Nails',140.00,'g',26520),
(77,'Buttons',193.00,'g',9901),
(78,'Belt Buckles',140.00,'unit',14347),
(79,'Dyes',123.00,'l',4323),
(80,'Sewing Threads',123.00,'m',23098),
(81,'Glass Bottles',105.00,'unit',2247),
(82,'Candles',95.00,'dozen',484),
(83,'Barrel',123.00,'unit',7014),
(84,'Paper',193.00,'sqm',28402),
(85,'Inks',123.00,'l',31445),
(86,'Spirits',233.00,'l',32540),
(87,'Ales',188.00,'l',23777),
(88,'Ciders',159.00,'l',18970),
(89,'Fine Clothing',1068.00,'sqm',31659),
(90,'Quilts',928.00,'sqm',24435),
(91,'Fine Shoes',753.00,'pair',17355),
(92,'Boots',595.00,'pair',31633),
(93,'Fine Hats',578.00,'unit',16068),
(94,'Wigs',648.00,'unit',1900),
(95,'Belts',420.00,'unit',29307),
(96,'Tool Belts',613.00,'unit',7804),
(97,'Meat Pies',497.00,'unit',26170),
(98,'Bread',434.00,'lbs',5306),
(99,'Jugged Hare',203.00,'unit',18099),
(100,'Shepherd\'s Pie',284.00,'unit',1339),
(101,'Salt',123.00,'kg',30194),
(102,'Deer Marrow Soup',193.00,'bowl',27255),
(103,'Salted Elk Meat',255.00,'kg',28949),
(104,'Silver Rings',204.00,'unit',31270),
(105,'Mining Tools',238.00,'collection',21284),
(106,'Lanterns',318.00,'unit',32308),
(107,'Woodworking Tools',244.00,'collection',6945),
(108,'Firearms',378.00,'collection',5082),
(109,'Officers\' Swords',408.00,'unit',1713),
(110,'Ship\'s Sails',308.00,'sqm',20491),
(111,'Swords',338.00,'unit',26946),
(112,'Horseshoes',176.00,'quartet',22960),
(113,'Fine Furniture',438.00,'collection',31412),
(114,'Torches',728.00,'unit',13279),
(115,'Furniture',280.00,'collection',20718),
(116,'Buckets',193.00,'unit',8644),
(117,'Crates',175.00,'unit',31843),
(118,'Playing Cards',630.00,'pack',20629),
(119,'Blankets',508.00,'sqm',9898),
(120,'Toy Dolls',438.00,'unit',29764),
(121,'Bricks',168.00,'1000',15713),
(122,'Glass Windows',396.00,'sqm',23505),
(123,'Water Drum',567.00,'l',112),
(124,'Bear Pendant',910.00,'unit',13656),
(125,'Bear Rug',665.00,'sqm',31371),
(126,'Mounted Elk Antlers',350.00,'pair',29228),
(127,'Wolf Pendant',735.00,'unit',2411),
(128,'Rabbit Foot Charm',364.00,'unit',21352),
(129,'Bobcat Pendant',315.00,'unit',29212),
(130,'Cougar Pendant',315.00,'unit',13109),
(131,'Hair Accessory',361.00,'collection',13935),
(132,'Bandages',791.00,'m',545),
(133,'Duffy\'s Elixir',578.00,'l',13185),
(134,'Cold Medicine',431.00,'l',28610),
(135,'Digestive Tonic',480.00,'l',21971),
(136,'Eye Drops',462.00,'l',17141),
(137,'Cough Syrup',403.00,'l',8406),
(138,'Skin Irritation Remedy',494.00,'l',18768),
(139,'Snakebite Antidote',403.00,'l',6763),
(140,'Insect Repellent',343.00,'l',26614),
(141,'Stomachache Remedy',361.00,'l',2295),
(142,'Pomade',375.00,'l',18344),
(143,'Soap',217.00,'kg',26621);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 16:09:36
