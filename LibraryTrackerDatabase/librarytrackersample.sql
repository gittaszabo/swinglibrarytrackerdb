CREATE DATABASE  IF NOT EXISTS `librarytrackersample` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `librarytrackersample`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: librarytrackersample
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(45) DEFAULT NULL,
  `title` longtext,
  `pages` int(11) DEFAULT NULL,
  `memberId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memberId_idx` (`memberId`),
  CONSTRAINT `memberId` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Arthur Conan Doyle','The Adventures of Sherlock Holmes',555,0,NULL),(3,'Katharine Fay Dewey','Star People',360,0,NULL),(4,'Bram Stoker','Dracula',323,41,'2019-08-25 00:00:00'),(5,'James Joyce','Ulysses',298,0,NULL),(6,'Charles Dickens','A Tale of Two Cities',294,42,'2019-08-21 00:00:00'),(7,'Robert Louis Stevenson','The Strange Case of Dr. Jekyll and Mr. Hyde',272,0,NULL),(8,'Mark Twain','The Adventures of Tom Sawyer',271,0,NULL),(9,'John T. McCutcheon','The Mysterious Stranger and Other Cartoons',269,0,NULL),(10,'Oscar Wilde','The Importance of Being Earnest: A Trivial Comedy for Serious People',265,0,NULL),(11,'Alexandre Dumas','The Count of Monte Cristo',260,41,'2019-12-12 00:00:00'),(13,'Oscar Wilde','The Picture of Dorian Gray',239,0,NULL),(14,'J. M. Barrie','Peter Pan',218,0,NULL),(15,'Franz Kafka','Metamorphosis',210,0,NULL),(16,'Mark Twain','Adventures of Huckleberry Finn',196,31,'2019-10-09 00:00:00'),(17,'Jane Austen','Emma',186,0,NULL),(18,'H. G. Wells','The Time Machine',179,0,NULL),(19,'Charles Dickens','Great Expectations',173,0,NULL),(20,'Charlotte Perkins Gilman','The Yellow Wallpaper',170,8,'2019-08-25 00:00:00'),(21,'Parley P. Pratt','The Millennium, and Other Poems',167,0,NULL),(22,'Kahlil Gibran','The Prophet',166,0,NULL),(23,'Robert Louis Stevenson','Treasure Island',165,0,NULL),(24,'L. Frank Baum','The Wonderful Wizard of Oz',162,0,NULL),(25,'Agatha Christie','The Murder on the Links',360,0,NULL),(26,'Emperor of Rome Marcus Aurelius','Meditations',158,41,'2019-08-21 00:00:00'),(27,'Frederick Douglass','Narrative of the Life of Frederick Douglass, an American Slave',157,0,NULL),(28,'Miguel de Cervantes Saavedra','Don Quixote',156,0,NULL),(29,'Fyodor Dostoyevsky','The Brothers Karamazov',156,0,NULL),(30,'William Shakespeare','The Complete Works of William Shakespeare',155,0,NULL),(31,'Plato','The Republic',153,0,NULL),(34,'Arthur Conan Doyle','A Study in Scarlet',145,0,NULL),(36,'Silvanus P. Thompson','Calculus Made Easy',142,0,NULL),(37,'Louisa May Alcott','Little Women',142,0,NULL),(38,'Agatha Christie','The Mysterious Affair at Styles',136,33,'2019-12-12 00:00:00'),(39,'Edna Brush Perkins','The White Heart of Mojave: An Adventure with the Outdoors of the Desert',135,0,NULL),(40,'Earl of Philip Dormer Stanhope Chesterfield','Principles of politeness, and of knowing the world',133,0,NULL),(41,'H. G. Wells','The War of the Worlds',133,40,'2019-08-17 00:00:00'),(42,'L. M. Montgomery','Anne of Green Gables',132,0,NULL),(43,'Jane Austen','Sense and Sensibility',122,0,NULL),(44,'Jean Toomer','Cane',121,0,NULL),(45,'Friedrich Wilhelm Nietzsche','Beyond Good and Evil',121,0,NULL),(46,'Charles Smedley','Life in Southern Prisons',120,0,NULL),(47,'Homer','The Odyssey',118,0,NULL),(48,'Fyodor Dostoyevsky','Notes from the Underground',117,0,NULL),(50,'James Joyce','Dubliners',115,0,NULL),(51,'Frances Hodgson Burnett','The Secret Garden',113,0,NULL),(52,'William C. Van Antwerp','The Stock Exchange from Within',111,0,NULL),(53,'H. G. Wells','30 Strange Stories',111,0,NULL),(54,'Daniel Defoe','The Life and Adventures of Robinson Crusoe',101,0,NULL),(55,'Kate Chopin','The Awakening, and Selected Short Stories',101,0,NULL),(57,'Thomas Hobbes','Leviathan',98,0,NULL),(58,'Charles Dickens','Oliver Twist',97,0,NULL),(59,'William Strunk','The Elements of Style',96,0,NULL),(60,'Ambrose Bierce','An Occurrence at Owl Creek Bridge',92,0,NULL),(61,'Jane Austen','Persuasion',91,0,NULL),(62,'Nathaniel Hawthorne','The Scarlet Letter',90,0,NULL),(63,'Henry James','The Turn of the Screw',87,0,NULL),(64,'Arthur Conan Doyle','The Hound of the Baskervilles',87,0,NULL),(65,'Washington Irving','The Legend of Sleepy Hollow',85,0,NULL),(66,'John Milton','Paradise Lost',85,0,NULL),(67,'Walt Whitman','Leaves of Grass',82,0,NULL),(68,'Voltaire','Candide',80,0,NULL),(69,'Charles Dickens','David Copperfield',79,34,'2019-09-14 00:00:00'),(70,'Conn Igulden','The emperor',123,0,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (0,'AVAILABLE','@'),(5,'Lang Petra','langp@hotmail.com'),(8,'Pataki Anita','patak@gmail.com'),(31,'Nagy Tibor Vince','nagytibor@yahoo.com'),(33,'Kis Norbert','kisN@yahoo.co.uk'),(34,'Garai Antal','garaiA@gmail.com'),(40,'Magyar Anna','magyaranna@yahoo.com'),(41,'Farkas Bertalan','bercibacsi@gmail.com'),(42,'Varga Lujza','vlujzi@gmail.com'),(43,'Szepesi Viola','szviola@yahoo.com'),(44,'Gombos Ferenc','feri@yahoo.com'),(45,'Szalai Antal','antalsz@gmail.com');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-17 13:31:31
