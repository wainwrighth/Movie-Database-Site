-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: mysql.cs.uky.edu    Database: hjwa223
-- ------------------------------------------------------
-- Server version	5.5.5-10.0.28-MariaDB-0ubuntu0.16.04.1

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
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crew` (
  `movie_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (1,1,'Tony Scott'),(1,2,'Don Simpson'),(1,2,'Jerry Bruckheimer'),(1,3,'Jim Cash'),(1,3,'Jack Epps, Jr.'),(1,4,'Tom Cruise'),(1,4,'Val Kilmer'),(1,5,'Chris Lebenzon'),(1,5,'Billy Weber'),(2,1,'Tony Bancroft'),(2,1,'Barry Cook'),(2,2,'Pam Coats'),(2,2,'Chris Bender'),(2,3,'Chris Sanders'),(2,3,'Philip LaZebnik'),(2,4,'Mulan'),(2,5,'Micheal Kelly'),(3,1,'John Musker'),(3,1,'Ron Clements'),(3,2,'Howard Ashman'),(3,3,'Roger Allers'),(3,3,'Gerrit Graham'),(3,4,'Ariel'),(3,5,'Mark Hester'),(4,1,'Victor Fleming'),(4,1,'Mervyn LeRoy'),(4,2,'William Horning'),(4,3,'Bert Lahr'),(4,3,'Jack Haley'),(4,4,'Judy Garland'),(4,4,'Ray Bolger'),(4,5,'Blanche Sewell'),(5,1,'John McTiernan'),(5,2,'Joel Silver'),(5,3,'Jeb Stuart'),(5,3,'Steve Souza'),(5,4,'Bruce Willis'),(5,4,'Alan Rickman'),(5,5,'Frank Urioste'),(6,1,'Richard Donner'),(6,2,'Joel Silver'),(6,3,'Jeffrey Boam'),(6,3,'Robert Kamen'),(6,4,'Mel Gibson'),(6,4,'Danny Glover'),(6,5,'Battle Davis'),(7,1,'John Lee Hancock'),(7,2,'Gil Netter'),(7,3,'John Lee Hancock'),(7,4,'Sandra Bullock'),(7,4,'Tim McGraw'),(7,5,'Mark Livolsi'),(8,1,'Peter Barsocchini'),(8,2,'Don Schain'),(8,3,'Gordon Lonsdale'),(8,4,'Zac Efron'),(8,4,'Vanessa Hudgens'),(8,5,'Seth Flaum'),(9,1,'Roger Allers'),(9,2,'Don Hahn'),(9,3,'Irene Mecchi'),(9,4,'Matthew Broderick'),(9,4,'James Earl Jones'),(9,5,'Ivan Bilancio'),(10,1,'Stephen Herek'),(10,2,'John Hughes'),(10,3,'John Hughes'),(10,4,'Glenn Close'),(10,4,'Jeff Daniels'),(10,5,'Trudy Ship');
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `movie_id` int(11) NOT NULL,
  `genre` varchar(50) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Drama'),(1,'Action'),(2,'Fantasy'),(2,'Comedy'),(2,'Drama'),(3,'Fantasy'),(3,'Romance'),(4,'Fantasy'),(4,'Adventure'),(5,'Thriller'),(5,'Action'),(6,'Thriller'),(6,'Action'),(7,'Drama'),(7,'Sport'),(8,'Drama'),(8,'Music'),(9,'Drama'),(9,'Music'),(10,'Drama'),(10,'Adventure');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `release_date` varchar(50) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `summary` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Top Gun','1986-05-16','109','English','Movie about two best friends who are Naval pilots'),(2,'Mulan','1998-06-19','88','English','Girl disgraces family, but makes up for it big time'),(3,'Little Mermaid','1989-11-17','92','English','Mermaid wants legs to date a guy, makes huge mistake'),(4,'Wizard of Oz','1932-08-25','112','English','Girl gets knocked out by twister and hallucinates'),(5,'Die Hard','1988-06-15','132','English','John McClane puts his terrorist hunting skills to the test'),(6,'Lethal Weapon 3','1992-05-15','120','English','Two best friend cops take down an arms dealer'),(7,'The Blind Side','2009-11-20','129','English','Homeless child becomes an NFL player'),(8,'High School Musical','2006-01-20','98','English','High Schoolers sing about whether singing about singing not being cool'),(9,'Lion King','1994-06-15','89','English','Lion cub loses father and disgraces uncle in vengance rampage'),(10,'101 Dalmatians','1996-11-27','103','English','Dogs help take down evil woman trying to kill them for their fur');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `movie_id` int(11) NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'pilot'),(1,'friends'),(1,'navy'),(1,'planes'),(1,'war'),(2,'animated'),(2,'war'),(2, 'dragon'),(2,'daughter'),(2,'family'),(3,'sing'),(3,'love'),(3,'voice'),(3,'mermaid'),(3,'ocean'),(4,'witch'),(4,'lost'),(4,'home'),(4,'twister'),(4,'singing'),(5,'thrill'),(5,'action'),(5,'building'),(5,'cops'),(5,'terrorism'),(6,'guns'),(6,'action'),(6,'friends'),(6,'cops'),(6,'terrorism'),(7,'lost'),(7,'homeless'),(7,'school'),(7,'football'),(7,'family'),(8,'love'),(8,'play'),(8,'basketball'),(8,'school'),(8,'singing'),(9,'friends'),(9,'lions'),(9,'lost'),(9,'revenge'),(9,'family'),(10,'captive'),(10,'woman'),(10,'family'),(10,'evil'),(10,'dogs');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rating`
--

DROP TABLE IF EXISTS `user_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_rating` (
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` varchar(512) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `user_rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rating`
--

LOCK TABLES `user_rating` WRITE;
/*!40000 ALTER TABLE `user_rating` DISABLE KEYS */;
INSERT INTO `user_rating` VALUES (2,3,3,'Great movie really spoke to me'),(2,2,1,'Not a huge fan of this movie, bad plot'),(10,5,4,'Fantastic soundtrack on this movie, great!'),(8,3,2,'Cinemetography was forgetfull'),(5,1,3,'Opening scene was well done'),(4,8,4,'Movie is highly underated, one of my favorites'),(7,7,3,'Characters are well developed, plot is bad'),(4,5,3,'Too much dialogue, not enough dancing'),(5,3,4,'Action scenes are crazy in this movie'),(9,6,5,'I am a huge fan of lions, so this movie is amazing');
/*!40000 ALTER TABLE `user_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `DoB` varchar(16) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'SG','Steve Gibson','1967-09-12','M',0,'password'),(2,'AW','Anne Wellington','1997-12-23','F',1,'12345'),(3,'CS','Clark Stevens','1973-02-04','M',0,'secret12'),(4,'JS','John Smith','1993-07-07','M',1,'trumpet11'),(5,'SG2','Sharleene Gibson','1988-05-22','F',0,'PurpleSalsa89'),(6,'AW2','Alice Watson','1995-03-28','F',1,'NamelessEggplant33'),(7,'FS','Frank Sinatra','1918-04-21','M',0,'redBaronPizza'),(8,'HR','Harriet Richardson','1970-10-15','F',0,'DAREtoCare21'),(9,'MF','Mark Fernandez','1954-02-10','M',1,'cantGuessMyPassword1'),(10,'RR','Rick Rickman','1983-07-28','M',0,'MicrosoftExcel09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchlist` (
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlist`
--

LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
INSERT INTO `watchlist` VALUES (1,1),(1,2),(2,5),(6,2),(9,6),(8,2),(7,1),(9,9),(3,6),(4,3),(5,6),(6,6),(7,10),(8,8),(9,6),(10,1);
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22 16:26:28
