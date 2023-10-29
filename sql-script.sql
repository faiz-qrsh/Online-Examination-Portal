/*
SQLyog Community v11.52 (64 bit)
MySQL - 5.1.73-community : Database - onlineexamination
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlineexamination` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlineexamination`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminid` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `papers` */

DROP TABLE IF EXISTS `papers`;

CREATE TABLE `papers` (
  `paperid` int(11) NOT NULL AUTO_INCREMENT,
  `paper` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`paperid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `papers` */

insert  into `papers`(`paperid`,`paper`) values (1,'Advance Java'),(2,'Core Java'),(3,'C++'),(4,'PHP'),(5,'C '),(6,'Computer Networking');

/*Table structure for table `questionbank` */

DROP TABLE IF EXISTS `questionbank`;

CREATE TABLE `questionbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `paperid` int(11) NOT NULL,
  `question` text,
  `ans1` text,
  `ans2` text,
  `ans3` text,
  `ans4` text,
  `correctans` int(11) DEFAULT NULL,
  PRIMARY KEY (`qid`,`paperid`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

/*Data for the table `questionbank` */

insert  into `questionbank`(`qid`,`paperid`,`question`,`ans1`,`ans2`,`ans3`,`ans4`,`correctans`) values (1,1,'Collection is a','Language','Framework','Software','API and Framework',4),(2,1,'Servlet is a','Business component','Web component','client side script','None of the above',2),(3,1,'JSP stands for','Java Server Pages','Java Standard Pages','Javascript server pages','None of the above',1),(4,5,'Which class name is correct','int','My Calculator','class','My_Calculator',4),(5,5,'Which one of them is not an access modifier ','public','private','abstract','protected',3),(6,1,'Java does not support','Pointers','Inheritance','Abstraction','Encapsulation',1),(7,5,'All Keywords in C are','LowerCase letters','UpperCase letters','CamelCase letters','None',1),(8,5,'Who is father of C Language?','Bjarne Stroustrup','James A. Gosling','Dennis Ritchie ','Dr. E.F. Codd',3),(9,5,'C Language developed at _________?','AT ','AT ','Sun Microsystems in 1973','Cambridge University in 1972',1),(10,3,'Which of the following can perform conversions between pointers to related classes?','cast_static','dynamic_cast','static_cast and dynamic_cast','cast_dynamic',3),(11,3,'Which of the following type of class allows only one object of it to be created?','Virtual class','Abstract class','Singleton class','Friend class',3),(12,3,'Which of the following concept of oops allows compiler to insert arguments in a function call if it is not specified?','Call by value','Call by reference','Default arguments','Call by pointer',3),(13,5,'C programs are converted into machine language with the help of','An Editor','A compiler','An operating system','None of these.',2),(14,5,'C was primarily developed as','System programming language','General purpose language','Data processing language','None of the above.',1),(15,5,'Standard ANSI C recognizes ______ number of keywords?','30','32','36','40',2),(16,5,'Which one of the following is not a reserved keyword for C?','auto','case','main','default',3),(17,5,'A C variable cannot start with','A number','A special symbol other than underscore','Both of the above','An alphabet',3),(18,1,'Which of the following is not a correct variable type?','float','real','int','double',2),(19,1,' Which of the following concepts of OOPS means exposing only necessary information to client?','Encapsulation','Abstraction','Data hiding','Data binding',3),(20,5,'How many types of polymorphisms are supported by C  ?','1','2','3','4',2),(21,5,'Which of the following approach is adapted by C  ?','Top-down','Bottom-up','Right-left','Left-right',2),(22,3,'Which of the following is the correct class of the object cout?','iostream','istream','ostream','ifstream',3),(23,1,'Which Thread pool is used where container creates a thread pool to process the request?','Servlet','JSP','All of the above','None of the above',3),(24,1,'How many JDBC driver types does Sun define?','1','2','3','4',4),(25,1,'Where is metadata stored in MySQL?','In the MySQL database metadata','In the MySQL database metasql','In the MySQL database mysql','None of the above is correct',3),(26,1,'Which JDBC driver Type(s) can be used in either applet or servlet code?','Both Type 1 and Type 2','Both Type 1 and Type 3','Both Type 3 and Type 4','Type 4 only',3),(27,1,'What is not true of a Java bean?','There are no public instance variables.','All persistent values are accessed using getxxx and setxxx methods','It may have many constructors as necessary.','All of the above are true of a Java bean.',3),(28,1,'What programming language(s) or scripting language(s) does Java Server Pages(JSP) support?','VBScript only','Jscript only','Java only','All of the above are supported',3),(29,5,'What is object in C   ?','Object is part of syntax of a class','Object is datatype of a class','Object is an instance of a class','Object is function of a class',3),(30,3,'Which is more memory efficient ?','structure','union','both use same memory','depends on a programmer',2),(31,3,'The major goal of inheritance in C++  is?','To facilitate the reusability of code','To help modular programming','To facilitate the conversion of data types','To extend the capabilities of a class',1),(32,4,'PHP Stands for','Personal Home Page','Hypertext Preprocessor','Pretext Hypertext Processor','Preprocessor Home Page',2),(33,4,'PHP scripts are used in','Server-side scripting','Command-line scripting','Client-side GUI applications','All of the Above',4),(34,4,'PHP files have a default file extension of.','.html','.xml','.php','.ph',3),(35,4,'Which of the following data type is not seal or datetype supported by PHP','Array','String','Float','Boolean',1),(36,4,'Identify the variable scope that is not supported by PHP','Local variables','Function parameters','Hidden variables','Global variables',3),(37,2,'Java was developed by','James Gosling','Bill Gates','Thames Jhonson','Mark Zukerberg',1),(38,2,'JAR stands for?','Java Archive','Java Archive Runner','Java Application Runner','None of the above',1),(39,5,'What are the pillars of OOPS concept?','Abstraction,Inheritance, Encapsulation, Polymorphism','Atomicity, Inheritance, Encapsulation, Polymorphism','Abstraction, Inheritance, Polymorphism','None of the above',1),(40,1,'Why we use array as a parameter of main method','it is syntax','Can store multiple values','Both of the above','None of the above',2),(41,1,'Runnable is','Class','Method','Variable','Interface',4),(42,1,'Which statement is static and synchronized in JDBC API','executeQuery()','executeUpdate()','getConnection()','prepareCall()',3),(43,1,'The JDBC-ODBC bridge is','Multithreaded','Singlethreaded','Both of above','None of above',1),(44,1,'Which method executes only once','start() method','init() method','stop() method','destroy() method',2),(45,1,'All collection classes are available in','java.io package','java.lang package','java.awt package','java.util package',4),(46,1,'Thread class is available in','java.io package','java.lang package','java.awt package','java.util package',2),(47,1,'After the compilation of the java source code, which file is created by the JVM','.class','.java','.cdr','.doc',1),(48,1,'Which is the predefined package','Lang package','io package','util package','All of above',1),(49,1,'Which of the following command is used to compile the Java program','java','javac','javap','None of above',2),(51,2,'Command to execute a compiled java program is :','javac','java','run','execute',2),(52,2,'The java Compiler','creates executable','translates java source code to byte code','creates classes','produces java interpreter',2),(53,2,'The order of the three top level elements of the java source file are','Import,Package,Class','Class,Import,Package','Package,Import,Class','Random Order',3),(54,2,'Java uses ___ to represent characters','ASCII Code','Unicode','Byte code','None of the above',2),(55,5,'Which one is not supported by OOP?','Abstraction','Polymorphism','Encapsulation','Global Variables',4),(56,2,'Java Programs are','Platform-dependent','Interpreter-dependent','Platform-Independent','Interpreter-Independent',3),(57,2,'Object which can store group of other objects is called','Collection object','Java object','Package','Wrapper',1),(58,2,'Inheritance means','Sub class extends super class','Sub class extends Base class','Sub class create object of super class','All of the above',1),(59,2,'Which type of inheritance is not supported by java','Single','Multiple','Mulilevel','Hirarchical',2),(60,2,'String is the predefined','Method','Class','Variable','Object',2),(61,2,'Super is the predefined','Method','Keyword','Keyword and Method','None of above',3),(62,2,'Execution of the program is always begins with','Main method','class contain main method','parent class','default package',1),(63,2,'Java intermediate code is known as','First code','Mid code','Byte code','None of above',3),(64,2,'Interfaces helps in which type of inheritance','Multiple inheritance','Multilevel inheritance','Hierarchical inheritance','None of above',1),(65,2,'Which keyword is used while using interface','extend','implements','throw','throws',2),(66,2,'Which keyword represents object of the present class','interface','package','this','static',3),(67,2,'How many keywords are available in java','35','55','48','130',3),(68,2,'Smallest individual unit in java program is known as','string','literal','token','operator',3),(96,3,'IS-A relationship in C++  is','Inheritance','Encapsulation','Composition','None',1),(97,3,'When C++ was developed?','1970\'s','1980\'s','1990\'s','2000\'s',2),(98,3,'C++  was developed by?','Dennis Ritchie','Steve Jobs','Steve Smith','Bjarne Strostrup',4),(99,3,'C++  language is the combination of these two languages?','C and Simula67.','C and JAVA.','C and FORTRAN','C and B',1),(100,3,'What was the name of C++  before it?','C with Simula67.','C ','Extended C','C with Classes',4),(101,3,'In C++ ................ operator is used for Dynamic memory allocation.','Scope resolution','Conditional','New','Membership access',3),(102,3,'............... are one of the attributes of C++  that support run-time polymorphism.','Pointers','Derived classes','Virtual functions','Heap Tree',3),(104,3,'What punctuation ends most lines of C++  code?','. (dot)',': (colon)','\' (single quote)','; (semi-colon)',4),(105,3,'What is the only function all C++  programs must contain?','System()','Main()','Program()','Start()',2),(106,3,'In C++  programming strcmp() function is used for','Convert string to char','copy two strings','compare two strings ','none of these',3),(107,3,'In C++  programming a function can return','Single value','Double values','Many values','none of these',1),(108,5,'Which of the following is required to write and run C   program ?','Compiler','Text Editor','Operating system','All of the above',4),(109,3,'In C++  programming a pointer variable stores...........','Value of another value','Variable of another value','Address of another value','Address of another variable',4),(110,3,'In C++  programming array can be sorted by using','Quick Sort','Bubble Sort','Merge Sort','All of the above',4),(111,4,'Who is known as the father of PHP? ','Rasmus Lerdorf','Willam Makepiece','Drek Kolkevi','List Barely',1),(112,4,'Which of the following is not true? ','PHP can be used to develop web applications','PHP makes a website dynamic','PHP applications can not be compile','PHP can not be embedded into html',4),(114,4,'Which of the following method sends input to a script via a URL? ','Get','Post','Both','None',1),(115,4,'Is it possible to pass data from PHP to JavaScript?','No, because PHP is server-side, and JavaScript is client-side','No, because PHP is a loosely typed language','Yes, because JavaScript executes before PHP','Yes, because PHP can generate valid JavaScript',4),(116,4,'...... returns a new DateTime object.','getdate()','date_create()','date_sunrise()','date()',2),(117,4,'Variables always start with a ........ in PHP','Pond-sign','Yen-sign','Dollar-sign','Euro-sign',3),(118,4,'What is the difference between print() and echo()?','print() can be used as part of an expression, while echo() can’t','echo() can be used as part of an expression, while print() can’t','echo() can be used in the CLI version of PHP, while print() can’t','Both 1 and 2',4),(119,4,'Select the incorrect statement','classes are case-insensitive','functions are case-insensitive','variables are case-insensitive','constants are case-sensitive',3),(120,4,'Which of the following function is used to pick one or more random values from PHP Array? ','array_rand()','array_random()','Random_array()','Rand_array()',1),(121,4,'What function used to print statement in PHP?','echo();','printf','\"\"','none',1),(122,4,'PHP is','Partially cross-platform','Truly cross-platform','None of above','Cross-platform',2),(123,4,'The PHP syntax is most similar to:','PERL and C','Java script','VB Script','Visual Basic',1),(124,4,'Which of the following statement is not correct for PHP?','It is a server side scripting language','A PHP file may contain text, html tags or scripts','It can run on windows and Linux systems only','It is compatible with most of the common servers used today',3),(125,4,'Till which version of PHP, developers were forced to name their files in a global context?','PHP 4','PHP 5','PHP 5.2','PHP 5.3',4),(126,4,'What does SPL stand for?','Standard PHP Library','Source PHP Library','Standard PHP List','Source PHP List',1),(129,5,'What is right way to Initialize array?','int num[6] = { 2, 4, 12, 5, 45, 5 };','int n{} = { 2, 4, 12, 5, 45, 5 };','int n{6} = { 2, 4, 12 }; ','int n(6) = { 2, 4, 12, 5, 45, 5 };',1),(132,5,'Any C program','Must contain at least one function','Need not contain any function','Needs input data','None of the above',1),(133,5,'What is function?','Function is a block of statements that perform some specific task','Function is the fundamental modular unit,always used to perform a specific task','Function is a block of code that performs a specific task. It has a name and it is reusable','All of the above',4),(134,5,'The default parameter passing mechanism is','call by value','call by reference ','call by value result','None of the above',1),(135,5,'The function scanf() returns .........','The actual values read for each argument','1 ','0','The number of successful read input values',4),(136,6,'Protocols are','Agreements on how communication components and DTE','Logical communication channels used for transferring','Physical communication channels used for transfer','None of the above',1),(137,6,'Which data communication method is used to transmit the data over a serial communication link?','Simplex','Half-duplex','Full duplex','All of the above',3),(138,6,'Error detection at the data link level is achieved by','Bit Stuffing','Cyclic Redundancy Code','Hamming Code','Equalization',2),(139,6,'The topology with highest reliability is ?','Bus topology','Star topology','Ring Topology','Mesh Topology',4),(140,6,'Baud means?','The number of bits transmitted per unit time','The number of byted transmitted per unit time','The rate at which the signal changes','None of above',3),(141,6,'Start and stop bits are used in serial communication for','Error detection','Error correction','Synchronization','Slowing down the communication',3),(142,6,'In OSI model dialogue control and token management are responsibilities of ?','Session Layer','Network layer','Transport layer','Data link layer',1),(143,6,'How long is an IPv6 address?','32 bits','128 bits','128 bytes','64 bits',2),(145,6,'What is a stub network?','A network that has only one entry and exit point.','A network with only one entry and no exit point.','A network with more than one exit point.','A network with more than one exit and entry point.',1),(146,6,'Which of the following ISO level is more closely related to the physical communications facilities?','Application','Session','Networking','Data Link',4),(147,6,'The Network topology that supports bi-directional links between each possible node is','Ring','Star','Tree','Mesh',4),(148,6,'Which of the following services use TCP?','DHCP','SMTP','FTP','HTTP',2),(149,6,'In a broad Sense, a railway track is an example of','Simplex','Half Duplex','Full Duplex','All of these',2),(150,6,'Which network has connectivity range up to 10 meters?','LAN','PAN','MAN','WAN',2),(151,6,'Which class of IP address provides a maximum of only 254 host addresses per network ID?','Class A','Class B','Class C','Class D',3),(152,6,'Which of the following devices is a PC component that connects the computer to the network?','Bridge','NIC','DNS Server','Gateway',2),(153,6,'What is Unicode?','Represents symbol or characters used in any language','Only few languages are supported','Supports only few characters','Characters from A to Z',1),(154,6,'Time required for a message to travel from one device to another is known as:','Transit time','Dialogue time','Response time','Wait time',1);

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `userid` varchar(100) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `gender` char(6) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `mobileno` varchar(15) DEFAULT NULL,
  `sec_ques` varchar(50) DEFAULT NULL,
  `ans` varchar(40) DEFAULT NULL,
  `profilepics` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`firstname`,`lastname`,`userid`,`password`,`gender`,`dob`,`mobileno`,`sec_ques`,`ans`,`profilepics`) values ('Aditya ','aa','a','a',NULL,'16/2/1964','2354','What is your Favourite Color','asa','index.jpg'),('Aditya ','Gupta','adi1','adi','Male','20/6/1995','8742319425','What is your School Name','BJS','DSC_0137 copy.jpg'),('d','d','d','d','Female','19/12/1968','45','What is your Pet Name','s',''),('Divya','Gupta','divya16','12345','Female','16/10/1993','9807463449','What is your School Name','GHS','DSC_0137 copy.jpg'),('Pooja','Kesarwani','puja@','pk','Female','20/9/1991','7653987659','What is your Favourite Color','black','index.jpg'),('Soni','Gupta','soni1','soni','Female','1/4/1999','8484056756','What is your favourite color','blue','index.jpg');

/*Table structure for table `resultinfo` */

DROP TABLE IF EXISTS `resultinfo`;

CREATE TABLE `resultinfo` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `paper` varchar(100) DEFAULT NULL,
  `total_question` int(11) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

/*Data for the table `resultinfo` */

insert  into `resultinfo`(`result_id`,`user_id`,`paper`,`total_question`,`correct_answer`,`percentage`,`test_date`) values (86,'divya16','Core Java',12,6,50,'2017-03-31'),(97,'puja@','C++',5,1,20,'2017-03-31'),(98,'soni1','PHP',5,3,60,'2017-03-31'),(99,'divya16','Advance Java',13,3,23,'2017-04-01'),(100,'divya16','Core Java',1,1,100,'2017-04-01'),(101,'divya16','PHP',5,2,40,'2017-04-01'),(102,'puja@','PHP',5,0,0,'2017-04-04'),(103,'puja@','C ',5,0,0,'2017-04-04'),(105,'divya16','C ',10,1,10,'2017-04-04'),(109,'puja@','C',15,1,6,'2017-04-04');

/*Table structure for table `schedulerequest` */

DROP TABLE IF EXISTS `schedulerequest`;

CREATE TABLE `schedulerequest` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) DEFAULT NULL,
  `paper` varchar(100) DEFAULT NULL,
  `req_date` varchar(20) DEFAULT NULL,
  `test_code` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `schedulerequest` */

insert  into `schedulerequest`(`sid`,`userid`,`paper`,`req_date`,`test_code`,`status`) values (24,'adi1','C','28/3/2017','SPECTRUM570615','Approved'),(25,'adi1','PHP','28/3/2017','SPECTRUM980950','Approved'),(33,'soni1','Computer Networking','31/3/2017','SPECTRUM190641','Approved'),(44,'divya16','C++','3/4/2017','SPECTRUM750872','Approved'),(45,'divya16','Computer Networking','3/4/2017','SPECTRUM558616','Approved'),(53,'puja@','Advance Java','4/4/2017','SPECTRUM446528','Approved'),(54,'divya16','PHP','4/4/2017','?','Pending'),(56,'adi1','Advance Java','4/4/2017','SPECTRUM284699','Approved'),(57,'adi1','Core Java','4/4/2017','SPECTRUM750800','Approved');

/*Table structure for table `testschedule` */

DROP TABLE IF EXISTS `testschedule`;

CREATE TABLE `testschedule` (
  `schid` int(30) NOT NULL AUTO_INCREMENT,
  `uid` varchar(30) NOT NULL,
  `paper` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `confirm` varchar(50) DEFAULT NULL,
  `testcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`schid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testschedule` */

/*Table structure for table `testusers` */

DROP TABLE IF EXISTS `testusers`;

CREATE TABLE `testusers` (
  `testcode` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`testcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testusers` */

insert  into `testusers`(`testcode`,`password`,`user_name`) values ('SPEC12345','spectech','Amit Singh'),('SPEC12346','spectech','Manoj Yadav');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
