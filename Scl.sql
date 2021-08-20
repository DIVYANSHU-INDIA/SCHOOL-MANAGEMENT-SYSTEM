-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `class` int(2) DEFAULT NULL,
  `Section` char(1) DEFAULT NULL,
  `total` int(2) DEFAULT NULL,
  `boys` int(2) DEFAULT NULL,
  `girls` int(2) DEFAULT NULL,
  `classteacher` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (12,'A',15,12,3,'Mr. Sudhanshu Shukla'),(12,'B',11,7,4,'Mr. S K Tripathi'),(12,'C',8,5,3,'Mr. Ramesh Chandra'),(11,'A',11,6,5,'Mrs. Neena Gupta'),(11,'B',9,6,3,'Mr. A K Sinha'),(11,'C',6,4,2,'Mrs. Babita'),(10,'A',3,2,1,'Mrs. Meena Kunwar'),(10,'B',5,3,2,'Mr. Bhupendra Singh'),(9,'A',2,1,1,'Mrs. Vimal Singh'),(9,'B',2,0,2,'Ms. Prema Thapa'),(8,'A',1,1,0,'Mrs. Khudeja Ahmed'),(8,'B',2,1,1,'Mrs. Kavita Devi'),(7,'A',2,0,2,'Mr. P C Ghildiyal'),(7,'B',2,2,0,'Mr. Chandan Singh'),(6,'A',3,1,2,'Mr. Kamal Kishore'),(6,'B',2,1,1,'Mrs. Ruchi Agarwal'),(5,'A',2,1,1,'Mrs. Neelam Bisht'),(5,'B',2,2,0,'Mrs. Meena Chauhan'),(4,'A',3,1,2,'Mrs. Suman Ghai'),(4,'B',2,1,1,'Mrs. Kalpana Pandey'),(3,'A',2,1,1,'Mrs. Charanjit Kaur'),(3,'B',1,1,0,'Mrs. Sonal Naidu'),(2,'A',1,1,0,'Mrs. Seema Saini'),(2,'B',1,0,1,'Mrs.Sarita'),(1,'A',1,1,0,'Ms. Saroj Saini'),(1,'B',1,0,1,'Mr. Rama Kushwaha');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examschedule`
--

DROP TABLE IF EXISTS `examschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examschedule` (
  `nameofexam` varchar(40) DEFAULT NULL,
  `natureofexam` varchar(50) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `tentivedates` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examschedule`
--

LOCK TABLES `examschedule` WRITE;
/*!40000 ALTER TABLE `examschedule` DISABLE KEYS */;
INSERT INTO `examschedule` VALUES ('FAI','Pen Paper test','III to X','Jully 2013'),('Unit Test I','Pen Paper test','XI to XII','Jully 2013'),('FA II','Project/Assignment','III to X','April to June 2013'),('SA I','Pen Paper Test','III to X','September 2013'),('Unit Test II','Pen Paper Test','XI to XII','September 2013'),('FA III','Pen Paper Test','VI to X','January 2014'),('Half Yealy/I Pre-Board','Pen Paper Test','XI to XII','November 2013'),('FA IV','Project/ Assignment','III to X','october to December 2013'),('III Unit Test/I Pre-Board','Pen Paper Test','XI to XII','January 2014'),('Practical Exam','External (board)',' XII','Last week January 2014'),('Practical Exam','Internal',' XII','Last week January 2014'),('SA II','Pen Paper Test','III to X','Commencement in I week 2014'),('Annual Exam','Pen Paper Test','XI','Commencement in I week 2014');
/*!40000 ALTER TABLE `examschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feestructure`
--

DROP TABLE IF EXISTS `feestructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feestructure` (
  `class` varchar(50) DEFAULT NULL,
  `tutionfee` int(3) DEFAULT NULL,
  `vvn` int(3) DEFAULT NULL,
  `comp` int(3) DEFAULT NULL,
  `total` int(4) DEFAULT NULL,
  `ttotal` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feestructure`
--

LOCK TABLES `feestructure` WRITE;
/*!40000 ALTER TABLE `feestructure` DISABLE KEYS */;
INSERT INTO `feestructure` VALUES ('I to II',NULL,500,NULL,500,1500),('III to V',NULL,500,100,600,1800),('VI to VIII',NULL,500,100,600,1800),('IX to X (Boys)',200,500,100,800,2400),('IX to X (Girls)',NULL,500,100,600,1800),('XI to XII (comm & hum. Boys)',300,500,100,900,2700),('XI to XII (comm & hum. Girls)',NULL,500,100,600,1800),('XI to XII (Science with computer, Boys)',400,500,150,1050,3150),('XI to XII (Science with computer, Girls)',NULL,500,150,650,1950),('XI to XII (Science without computer, Boys)',400,500,100,1000,3000),('XI to XII (Science without computer, Girls)',NULL,500,100,600,1800);
/*!40000 ALTER TABLE `feestructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `sno` int(3) DEFAULT NULL,
  `holiday` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,'ID-e-milad','2013-01-25','Friday'),(2,'Rebublic Day','2013-01-26','Saturday'),(3,'Holi','2013-03-27','Wednesday'),(4,'Good Friday','2013-03-29','Friday'),(5,'ram Navami','2013-04-19','Friday'),(6,'Mahaveer jayanti','2013-04-24','Wednesday'),(7,'Budha Purnima','2013-05-25','Saturday'),(8,'Idul Fitr','2013-08-09','Friday'),(9,'Independance Day','2013-08-15','Thurusday'),(10,'Janmastami','2013-08-28','Wednesday'),(11,'Mahatma Gandhi Birthday','2013-10-02','Wednesday'),(12,'Dusherra','2013-10-13','sunday'),(13,'Idul Zahan','2013-10-16','Wednesday'),(14,'Diwali','2013-11-03','sunday'),(15,'Moharram','2013-11-14','Thurusday'),(16,'Guru Nanak Birthday','2013-11-17','sunday'),(17,'Christmas Day','2013-12-25','Wednesday');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `adm_no` int(4) NOT NULL,
  `roll_no` int(2) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `Fathername` varchar(20) NOT NULL,
  `class` int(2) DEFAULT NULL,
  `section` char(1) DEFAULT NULL,
  `Contact_no` char(10) DEFAULT NULL,
  PRIMARY KEY (`adm_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,1,'Tejam Vishwajit','Tejam V S',12,'A','8954596202'),(2,2,'Aniket Singh','Ankit Singh',12,'A','9765678900'),(3,3,'Vinay','Vijay',12,'A','9807654567'),(4,4,'Vipin','Ankush',12,'A','9678954345'),(5,1,'Vikas','Sanjay',11,'A','7898765432'),(6,1,'Amrit Singh','Prashant Singh',12,'B','9870543245'),(7,7,'Dinesh Kumar','Rakesh',12,'A','8765456789'),(8,6,'Priyanka Kumari','Akash Kumar',12,'A','8976543210'),(9,8,'Priti','Prashant',12,'A','7890678965'),(10,9,'Harish','Manan',12,'A','8765434567'),(11,10,'Sumit','Danesh',12,'A','9808765345'),(12,11,'Ramesh','Suresh',12,'A','7896123456'),(13,12,'Vinay','Krishna',12,'A','7656725341'),(14,13,'Vaibhav','Nitin',12,'A','8970654334'),(15,14,'Sudarshan','Ramesh',12,'A','8767895432'),(16,15,'Sonali','Girish',12,'A','7677890754'),(17,2,'Arush','Amit',11,'A','8985546789'),(18,3,'Sunita','Tarun',11,'A','8978987890'),(19,11,'Harsh','James',11,'A','8975623398'),(20,4,'Pinky','Pawan',11,'A','9876789098'),(21,5,'Suraj','krishna',11,'A','8989890098'),(22,6,'Umesh','Ramesh',11,'A','9876543210'),(23,7,'Kiran','Ankur',11,'A','7876566789'),(24,8,'Tamana','Farhan',11,'A','7399933302'),(25,9,'Akhilesh','Ajay',11,'A','8982233109'),(26,10,'Nitisha','Nitin',11,'A','8123456798'),(27,2,'Sonam','Darshan',12,'B','8899007789'),(28,5,'Chandra Mohan','Jagdish',12,'A','7877623167'),(29,3,'Sonakshi','Chandan',12,'B','9997839660'),(30,4,'Sahil','Yogesh',12,'B','9907238812'),(31,5,'Andrew','Peter',12,'B','8829301348'),(32,6,'Vinod','Ishant',12,'B','7811223344'),(33,7,'Vishwas','Andrew',12,'B','9923349980'),(34,8,'kailash','Ramesh',12,'B','8122299900'),(35,9,'Sumitra','Harshwardhan',12,'B','9991002333'),(36,10,'Akansha','Ankit',12,'B','7388193308'),(37,11,'Ankush','Boman',12,'B','9728376678'),(38,1,'Priya','Lucky',12,'C','9811122233'),(39,2,'Shubham','Girish',12,'C','8933922309'),(40,3,'Sapna','Sohan',12,'C','7867568890'),(41,4,'Arvind','Samarth',12,'C','9990888909'),(42,5,'Ashish','Ankur',12,'C','9803342533'),(43,6,'Saurabh','Firoz',12,'C','8822993300'),(44,7,'Shivani','Saket',12,'C','8989898989'),(45,8,'Satish','Kishan',12,'C','8090989878'),(46,1,'Arush','Ayush',11,'B','8878989898'),(47,2,'Vishal','Saurabh',11,'B','7689789878'),(48,3,'Harris','Robert',11,'B','7878766677'),(49,4,'Nishant','Prashant',11,'B','9223322332'),(50,5,'Yash','Raj',11,'B','8989221234'),(51,6,'Sakshi','Abhishek',11,'B','8889990009'),(52,7,'Divya','Dinesh',11,'B','7778234567'),(53,8,'Lalita','Gopi',11,'B','8897898667'),(54,9,'Vishnu','Sahil',11,'B','9844456788'),(55,1,'Ganesh','Lalit',11,'C','9992999399'),(56,2,'Gaurav','Deepak',11,'C','9987876543'),(57,3,'Vijay','Vipin',11,'C','8989332435'),(58,4,'Ravi','Gaurav',11,'C','9092237834'),(59,5,'Ravina','Watson',11,'C','7822341189'),(60,6,'Uma','Kishore',11,'C','8911232234'),(61,1,'Varun','Arun',10,'A','8234567890'),(62,2,'Rohini','Rohit',10,'A','7879890987'),(63,3,'Mohit','Amit',10,'A','7689744567'),(64,4,'Sherlock','Holmes',10,'B','8907896785'),(65,5,'Merry','Curie',10,'B','7822314567'),(66,1,'Chandu','Mandu',10,'B','8972231234'),(67,2,'Sayli','Ashok',10,'B','7682233445'),(68,3,'Monty','Bunty',10,'B','8223344556'),(69,1,'Sam','Ram',9,'A','7922099890'),(70,2,'Sweety','Parvesh',9,'A','9998880009'),(71,1,'Varsha','Tejam V S',9,'B','8944783988'),(72,2,'Vaishali','Kamal',9,'B','9888907789'),(73,1,'Krishna','Bhupendra',8,'A','8872234890'),(74,1,'Peterson','Mantu',8,'B','8892213345'),(75,2,'Mamta','Manish',8,'B','8922098765'),(76,1,'Zoya','Zameer',7,'A','9919827678'),(77,2,'Dipika','Ehsan',7,'A','7351277889'),(78,1,'Samsher','Akbar',7,'B','8902347689'),(79,2,'Samir','David',7,'B','8999908788'),(80,1,'Sameksha','Devendra',6,'A','9988077654'),(81,2,'Dharmesh','Vikas',6,'A','7896755678'),(82,3,'Ritu','Sam',6,'A','9911891189'),(83,1,'Henry','Hugo',6,'B','9876789098'),(84,2,'Laura','Lyons',6,'B','9991112229'),(85,1,'Priyanka','Pratik',5,'A','9997806302'),(86,2,'Diyanshu','Bikas',5,'A','9567676767'),(87,1,'Birju','Bhupee',5,'B','9870986543'),(88,2,'Nitin','Naitik',5,'B','7866675674'),(89,1,'Arushi','Ankit Jain',4,'A','8977766656'),(90,2,'Ayushi','Arvind',4,'A','8123459990'),(91,3,'Raj','Rajesh',4,'A','7867564534'),(92,1,'Sweta','Sunil',4,'B','7388878690'),(93,2,'Manish','Akash Singh',4,'B','9996758879'),(94,1,'Mohini','Lucifer',3,'A','9012390123'),(95,2,'Soham','Dev',3,'A','9990787890'),(96,1,'Harpreet','Manpreet',3,'B','8923456789'),(97,1,'Aziz','Qhureshi',2,'A','8765434329'),(98,1,'Sohini','Mohan',2,'B','9898989898'),(99,1,'Sajid','Javed',1,'A','9977668908'),(100,1,'Sawitri','Satish',1,'B','8897786543');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacher_id` int(3) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `post` char(3) DEFAULT NULL,
  `subject` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Mr. S. Shukla','PGT','Biology'),(2,'Dr. V R Pandey','PGT','Hindi'),(3,'Mr. S K Tripathi','PGT','Geography'),(4,'Mr. A.K. Sinha','PGT','History'),(5,'Mr. Ramesh Chandra','PGT','English'),(6,'Mr. Mam Chand','PGT','Mathematics'),(7,'Smt. Babita','PGT','Accounts'),(8,'Smt. Babita','PGT','Business'),(9,'Smt. Neena Gupta','PGT','Physics'),(10,'Ms. Sangeeta Khorana','PGT','Chemistry'),(11,'Mr. Ramesh Chandra','PGT','I P'),(12,'Mr. P C Ghildiyal','TGT','English'),(13,'Smt. Khudeja Ahmed','TGT','English'),(14,'Mr. Bhupendra Singh','TGT','Mathematics'),(15,'Mr. Chandan Singh','TGT','Mathematics'),(16,'Ms. Prema Thapa','TGT','S.St'),(17,'Smt. Kavita Devi','TGT','Sanskrit'),(18,'Mrs. Meena Kunwar','TGT','Hindi'),(19,'Mrs. Vimal Singh','TGT','Hindi'),(20,'Mr. Kamal Kishore','TGT','Science'),(21,'Mr. M P S Negi','TGT','W E'),(22,'Smt. Ruchi Agarwal','TGT','Librarian'),(23,'Mr. P M Singh','TGT','Art'),(24,'Mr. Karan Singh','TGT','P E'),(25,'Smt. Neelam Bisht','PRT','Hindi'),(26,'Mr. Chakshuspati Awasthi','PGT','Economics'),(27,'Smt. Meena Chauhan','PRT','English'),(28,'Smt. Vandana Dhasmana','PRT','E V S'),(29,'Mrs. Suman Ghai','PRT','A H P L'),(30,'Mrs. Kalpana Pandey','PRT','Art'),(31,'Mrs. Ranjana kanojia','PRT','English'),(32,'Ms. Saroj Kumari Saini','PRT','Hindi'),(33,'Mrs. Charanjit Kaur','PRT','A H P L'),(34,'Mrs. Sonal Naidu','PRT','Mathematics'),(35,'Mrs. Seema Saini','PRT','Mathematics'),(36,'Mr. Rama Darsh Kushwaha','PRT','Music'),(37,'Mrs. Sarita','PRT','E V S');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-30  5:40:59
