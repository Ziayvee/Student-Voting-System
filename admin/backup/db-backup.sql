DROP TABLE IF EXISTS admin;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO admin VALUES("1","admin","admin");



DROP TABLE IF EXISTS candidates;

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `party` varchar(100) NOT NULL,
  `votes` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO candidates VALUES("35","Joylene Agman","Representative","Happy","0","candidate3.png","BSCS");
INSERT INTO candidates VALUES("36","Solomon Mabong","Representative","Happy","0","candidate4.png","BSCS");
INSERT INTO candidates VALUES("37","Erah Marisse Tubel","Senator","Happy","0","candidate2.png","BSCS");
INSERT INTO candidates VALUES("38","Jean Dela Cerna","Senator","Joyful","0","candidate2.png","BSCS");
INSERT INTO candidates VALUES("39","Remelo Santa Ana","Business-Manager","Happy","0","candidate4.png","BSCS");
INSERT INTO candidates VALUES("40","Mark Dela Pena","Business-Manager","Joyful","0","candidate1.png","BSCS");
INSERT INTO candidates VALUES("41","Carlos Gerongco","PRO","Happy","0","candidate4.png","BSCS");
INSERT INTO candidates VALUES("42","Christopher Gerongco","PRO","Joyful","0","candidate1.png","BSCS");
INSERT INTO candidates VALUES("43","Pamela Ruben","Auditor","Happy","0","candidate3.png","BSCS");
INSERT INTO candidates VALUES("44","Jezraelita Sarelibo","Auditor","Joyful","0","candidate2.png","BSCS");
INSERT INTO candidates VALUES("45","Andrea Paulyn Ronquillo","Treasurer","Happy","0","candidate2.png","BSCS");
INSERT INTO candidates VALUES("46","Christian Dancel","Treasurer","Joyful","0","candidate4.png","BSCS");
INSERT INTO candidates VALUES("47","Arabella Morgado","Secretary","Happy","0","candidate2.png","BSCS");
INSERT INTO candidates VALUES("48","Ehciel Vergara","Secretary","Joyful","0","candidate3.png","BSCS");
INSERT INTO candidates VALUES("49","Isagani Llorente","Vice-President","Happy","0","candidate4.png","BSCS");
INSERT INTO candidates VALUES("50","Armando Gardoce","Vice-President","Joyful","0","candidate1.png","BSCS");
INSERT INTO candidates VALUES("51","Dexter Alolod","President","Happy","0","candidate1.png","BSCS");
INSERT INTO candidates VALUES("52","Mateo Navarro","President","Joyful","0","candidate4.png","BSCS");



DROP TABLE IF EXISTS course;

CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO course VALUES("1","BSCS");
INSERT INTO course VALUES("2","BSIT");
INSERT INTO course VALUES("3","BSHM");
INSERT INTO course VALUES("4","BSCE");
INSERT INTO course VALUES("5","BSCrim");



DROP TABLE IF EXISTS list_stu_num;

CREATE TABLE `list_stu_num` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_number` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;




DROP TABLE IF EXISTS party;

CREATE TABLE `party` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO party VALUES("2","Happy","Happy Party list");
INSERT INTO party VALUES("3","Joyful","Joyful Party List");



DROP TABLE IF EXISTS position;

CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO position VALUES("1","President");
INSERT INTO position VALUES("2","Vice-President");
INSERT INTO position VALUES("3","Secretary");
INSERT INTO position VALUES("4","Treasurer");
INSERT INTO position VALUES("5","Auditor");
INSERT INTO position VALUES("6","PRO");
INSERT INTO position VALUES("7","Business-Manager");
INSERT INTO position VALUES("8","Senator");
INSERT INTO position VALUES("9","Representative");



DROP TABLE IF EXISTS students;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;




DROP TABLE IF EXISTS votedetails;

CREATE TABLE `votedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate` varchar(100) NOT NULL,
  `voters` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO votedetails VALUES("1","Argie Policarpio","C-08769-15");
INSERT INTO votedetails VALUES("2","Amy Serviano","C-08769-15");
INSERT INTO votedetails VALUES("3","Carlo Mesa","C-08769-15");
INSERT INTO votedetails VALUES("4","Liezel Barabas","C-08769-15");
INSERT INTO votedetails VALUES("5","iuiu","C-08769-15");
INSERT INTO votedetails VALUES("6","mn mnmn","C-08769-15");
INSERT INTO votedetails VALUES("7","kluiu","C-08769-15");
INSERT INTO votedetails VALUES("8","Mirrian Santiago","C-08769-15");
INSERT INTO votedetails VALUES("9","Bong Revilla","C-08769-15");
INSERT INTO votedetails VALUES("10","Baliling Demagiba","C-08769-15");
INSERT INTO votedetails VALUES("11","Argie Policarpio","2021-06030");
INSERT INTO votedetails VALUES("12","Amy Serviano","2021-06030");
INSERT INTO votedetails VALUES("13","Jano Gibs","2021-06030");
INSERT INTO votedetails VALUES("14","Liezel Barabas","2021-06030");
INSERT INTO votedetails VALUES("15","iuiu","2021-06030");
INSERT INTO votedetails VALUES("16","mn mnmn","2021-06030");
INSERT INTO votedetails VALUES("17","kluiu","2021-06030");
INSERT INTO votedetails VALUES("18","llplpl","2021-06030");
INSERT INTO votedetails VALUES("19","Kako Lacson","2021-06030");



