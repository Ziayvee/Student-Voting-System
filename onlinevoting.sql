SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `onlinevoting`
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');



CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `party` varchar(100) NOT NULL,
  `votes` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `position`, `party`, `votes`, `image`, `course`) VALUES
(35, 'Joylene Agman', 'Representative', 'Happy', 4, 'candidate3.png', 'BSCS'),
(36, 'Solomon Mabong', 'Representative', 'Happy', 0, 'candidate4.png', 'BSCS'),
(37, 'Erah Marisse Tubel', 'Senator', 'Happy', 3, 'candidate2.png', 'BSCS'),
(38, 'Jean Dela Cerna', 'Senator', 'Joyful', 2, 'candidate2.png', 'BSCS'),
(39, 'Remelo Santa Ana', 'Business-Manager', 'Happy', 3, 'candidate4.png', 'BSCS'),
(40, 'Mark Dela Pena', 'Business-Manager', 'Joyful', 1, 'candidate1.png', 'BSCS'),
(41, 'Carlos Gerongco', 'PRO', 'Happy', 2, 'candidate4.png', 'BSCS'),
(42, 'Christopher Gerongco', 'PRO', 'Joyful', 2, 'candidate1.png', 'BSCS'),
(43, 'Pamela Ruben', 'Auditor', 'Happy', 3, 'candidate3.png', 'BSCS'),
(44, 'Jezraelita Sarelibo', 'Auditor', 'Joyful', 1, 'candidate2.png', 'BSCS'),
(45, 'Andrea Paulyn Ronquillo', 'Treasurer', 'Happy', 3, 'candidate2.png', 'BSCS'),
(46, 'Christian Dancel', 'Treasurer', 'Joyful', 1, 'candidate4.png', 'BSCS'),
(47, 'Arabella Morgado', 'Secretary', 'Happy', 2, 'candidate2.png', 'BSCS'),
(48, 'Ehciel Vergara', 'Secretary', 'Joyful', 1, 'candidate3.png', 'BSCS'),
(49, 'Isagani Llorente', 'Vice-President', 'Happy', 3, 'candidate4.png', 'BSCS'),
(50, 'Armando Gardoce', 'Vice-President', 'Joyful', 1, 'candidate1.png', 'BSCS'),
(51, 'Dexter Alolod', 'President', 'Happy', 2, 'candidate1.png', 'BSCS'),
(52, 'Mateo Navarro', 'President', 'Joyful', 2, 'candidate4.png', 'BSCS');



CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `course` (`id`, `name`) VALUES
(1, 'BSCS'),
(2, 'BSIT'),
(3, 'BSHM'),
(4, 'BSCE'),
(5, 'BSCrim');



CREATE TABLE `list_stu_num` (
  `id` int(11) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `list_stu_num` (`id`, `id_number`, `status`, `name`, `course`) VALUES
(6, '2021-06030', 'used', 'Mascariola, Perly Petilo', 'BSCS'),
(7, '2021-06031', 'used', 'Fernandez, Louiela ', 'BSCS'),
(8, '2021-06032', 'used', 'Mabong, Solomon  ', 'BSCS'),
(9, '2021-06033', 'used', 'Sarelibo, Jezraelita G', 'BSCS'),
(10, '2021-06034', 'used', 'Ruben, Pamela ', 'BSCS');



CREATE TABLE `party` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `party` (`id`, `name`, `description`) VALUES
(2, 'Happy', 'Happy Party list'),
(3, 'Joyful', 'Joyful Party List');


CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `position` (`id`, `name`) VALUES
(1, 'President'),
(2, 'Vice-President'),
(3, 'Secretary'),
(4, 'Treasurer'),
(5, 'Auditor'),
(6, 'PRO'),
(7, 'Business-Manager'),
(8, 'Senator'),
(9, 'Representative');


CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `students` (`id`, `name`, `course`, `username`, `password`, `status`, `question`, `answer`) VALUES
(8, 'Mascariola, Perly Petilo', 'BSCS', '2021-06030', '12345', 'voted', 'what is your favorite color', 'black'),
(9, 'Fernandez, Louiela ', 'BSCS', '2021-06031', '12345', 'voted', 'what is your favorite color', 'red'),
(10, 'Mabong, Solomon  ', 'BSCS', '2021-06032', '12345', 'notvoted', 'what is your favorite color', 'green'),
(11, 'Sarelibo, Jezraelita G', 'BSCS', '2021-06033', '12345', 'voted', '', ''),
(12, 'Ruben, Pamela ', 'BSCS', '2021-06034', '12345', 'voted', '', '');



CREATE TABLE `votedetails` (
  `id` int(11) NOT NULL,
  `candidate` varchar(100) NOT NULL,
  `voters` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `votedetails` (`id`, `candidate`, `voters`) VALUES
(1, 'Argie Policarpio', 'C-08769-15'),
(2, 'Amy Serviano', 'C-08769-15'),
(3, 'Carlo Mesa', 'C-08769-15'),
(4, 'Liezel Barabas', 'C-08769-15'),
(5, 'iuiu', 'C-08769-15'),
(6, 'mn mnmn', 'C-08769-15'),
(7, 'kluiu', 'C-08769-15'),
(8, 'Mirrian Santiago', 'C-08769-15'),
(9, 'Bong Revilla', 'C-08769-15'),
(10, 'Baliling Demagiba', 'C-08769-15'),
(11, 'Argie Policarpio', '2021-06030'),
(12, 'Amy Serviano', '2021-06030'),
(13, 'Jano Gibs', '2021-06030'),
(14, 'Liezel Barabas', '2021-06030'),
(15, 'iuiu', '2021-06030'),
(16, 'mn mnmn', '2021-06030'),
(17, 'kluiu', '2021-06030'),
(18, 'llplpl', '2021-06030'),
(19, 'Kako Lacson', '2021-06030'),
(20, 'Mateo Navarro', '2021-06030'),
(21, 'Armando Gardoce', '2021-06030'),
(22, 'Arabella Morgado', '2021-06030'),
(23, 'Christian Dancel', '2021-06030'),
(24, 'Pamela Ruben', '2021-06030'),
(25, 'Carlos Gerongco', '2021-06030'),
(26, 'Mark Dela Pena', '2021-06030'),
(27, 'Jean Dela Cerna', '2021-06030'),
(28, 'Joylene Agman', '2021-06030'),
(29, 'Dexter Alolod', '2021-06031'),
(30, 'Isagani Llorente', '2021-06031'),
(31, 'Ehciel Vergara', '2021-06031'),
(32, 'Andrea Paulyn Ronquillo', '2021-06031'),
(33, 'Pamela Ruben', '2021-06031'),
(34, 'Christopher Gerongco', '2021-06031'),
(35, 'Remelo Santa Ana', '2021-06031'),
(36, 'Erah Marisse Tubel', '2021-06031'),
(37, 'Jean Dela Cerna', '2021-06031'),
(38, 'Joylene Agman', '2021-06031'),
(39, 'Mateo Navarro', '2021-06033'),
(40, 'Isagani Llorente', '2021-06033'),
(41, '0', '2021-06033'),
(42, 'Andrea Paulyn Ronquillo', '2021-06033'),
(43, 'Jezraelita Sarelibo', '2021-06033'),
(44, 'Christopher Gerongco', '2021-06033'),
(45, 'Remelo Santa Ana', '2021-06033'),
(46, 'Erah Marisse Tubel', '2021-06033'),
(47, 'Joylene Agman', '2021-06033'),
(48, 'Dexter Alolod', '2021-06034'),
(49, 'Isagani Llorente', '2021-06034'),
(50, 'Arabella Morgado', '2021-06034'),
(51, 'Andrea Paulyn Ronquillo', '2021-06034'),
(52, 'Pamela Ruben', '2021-06034'),
(53, 'Carlos Gerongco', '2021-06034'),
(54, 'Remelo Santa Ana', '2021-06034'),
(55, 'Erah Marisse Tubel', '2021-06034'),
(56, 'Joylene Agman', '2021-06034');

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `list_stu_num`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `party`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `votedetails`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;


ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `list_stu_num`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


ALTER TABLE `votedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

