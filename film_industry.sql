-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 07:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `film_industry`
--

-- --------------------------------------------------------

--
-- Table structure for table `academy_awarded_actors`
--

CREATE TABLE `academy_awarded_actors` (
  `award_id` int(10) UNSIGNED NOT NULL,
  `awarded_actor_id` int(10) UNSIGNED DEFAULT NULL,
  `awarded_performance_id` int(10) UNSIGNED DEFAULT NULL,
  `year_of_winning` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academy_awarded_actors`
--

INSERT INTO `academy_awarded_actors` (`award_id`, `awarded_actor_id`, `awarded_performance_id`, `year_of_winning`) VALUES
(1, 1, 4, 1995),
(2, 6, 4, 1995),
(3, 6, 3, 1994),
(4, 5, 1, 1979),
(5, 4, 1, 1979),
(6, 3, 5, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actor_id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `nickname` varchar(60) DEFAULT NULL,
  `birth_year` year(4) DEFAULT NULL,
  `agent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actor_id`, `firstname`, `lastname`, `nickname`, `birth_year`, `agent`) VALUES
(1, 'Julie', 'Delpy', 'Jude', 1969, 5),
(2, 'Michael J.', 'Fox', 'Mike', 1961, 1),
(3, 'Hatidze', 'Muratova', 'Hatidze', 1964, 3),
(4, 'Marlon', 'Brando', 'Bud', 1924, 1),
(5, 'Al', 'Pacino', 'Sonny', 1940, 2),
(6, 'Juliette', 'Binoche', 'La Binoche', 1964, 3),
(7, 'Diane ', 'Keaton', 'Annie', 1946, 5),
(8, 'Robert', 'De Niro', 'Bobby D', 1943, 2),
(9, 'Jennifer', 'Aniston', 'Jen', 1969, 1),
(10, 'Ricky', 'Gervais', 'Dickers', 1961, 5);

-- --------------------------------------------------------

--
-- Table structure for table `actor_critic`
--

CREATE TABLE `actor_critic` (
  `id` int(10) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL,
  `mot_pic_id` int(10) UNSIGNED NOT NULL,
  `critic_id` int(4) UNSIGNED NOT NULL,
  `acting_grade` tinyint(4) DEFAULT NULL,
  `emotional_grade` tinyint(4) DEFAULT NULL,
  `expression_grade` tinyint(4) DEFAULT NULL,
  `commitment_grade` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor_critic`
--

INSERT INTO `actor_critic` (`id`, `actor_id`, `mot_pic_id`, `critic_id`, `acting_grade`, `emotional_grade`, `expression_grade`, `commitment_grade`) VALUES
(1, 1, 3, 3, 9, 8, 6, 4),
(2, 1, 4, 5, 6, 3, 2, 2),
(3, 2, 11, 2, 3, 4, 5, 10),
(4, 4, 1, 1, 10, 10, 10, 10),
(5, 9, 14, 4, 8, 8, 8, 5),
(6, 5, 2, 5, 9, 8, 10, 10),
(7, 10, 15, 2, 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `agent_id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `agency` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agent_id`, `firstname`, `lastname`, `agency`) VALUES
(1, 'Kevin', 'Huvane', 'Creative Artists Agency'),
(2, 'Ari ', 'Emanuel', 'WME'),
(3, 'Sharon', 'Jackson', 'WME'),
(4, 'Sam ', 'Gores', 'Paradigm Talent Agency'),
(5, 'Theresa', 'Peters', 'United Talent Agency');

-- --------------------------------------------------------

--
-- Table structure for table `critics`
--

CREATE TABLE `critics` (
  `critic_id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `login_code` int(10) UNSIGNED DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `critics`
--

INSERT INTO `critics` (`critic_id`, `firstname`, `lastname`, `login_code`, `password`) VALUES
(1, 'Leonard ', 'Maltin', 12345678, 'leo_maltin'),
(2, 'Armond ', 'White', 876543, 'armond_white'),
(3, 'Peter ', 'Travers', 5555666, 'peter_travers'),
(4, 'Judith ', 'Crist', 11111, 'judith_crist'),
(5, 'Pauline', 'Kael', 22222, 'pauline_kael');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `director_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `preferred_genre` varchar(20) DEFAULT NULL,
  `director_fee` int(10) UNSIGNED DEFAULT NULL,
  `level_of_expertise` tinyint(4) DEFAULT NULL,
  `motpic_directed_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`director_id`, `first_name`, `last_name`, `preferred_genre`, `director_fee`, `level_of_expertise`, `motpic_directed_id`) VALUES
(1, 'Francis Ford', 'Coppola ', 'Crime', 5500000, 10, 1),
(2, 'Krzysztof', 'Kieslowski', 'Drama', 500000, 8, 4),
(3, 'Roman', 'Polanski', 'Mystery', 7000000, 9, 2),
(4, 'Tamara', 'Kotevska', 'Documentary', 100000, 7, 5),
(5, 'Robert', 'Zemeckis', 'Adventure', 3000000, 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `motion_pictures`
--

CREATE TABLE `motion_pictures` (
  `motionpicture_id` int(10) UNSIGNED NOT NULL,
  `movie_name` varchar(40) DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `premiere_date` date DEFAULT NULL,
  `country_of_origin` varchar(20) DEFAULT NULL,
  `production` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motion_pictures`
--

INSERT INTO `motion_pictures` (`motionpicture_id`, `movie_name`, `genre`, `premiere_date`, `country_of_origin`, `production`) VALUES
(1, 'The Godfather', 'Crime', '1972-03-24', 'USA', 'Paramount Pictures'),
(2, 'The Godfather: Part II', 'Crime', '1974-12-18', 'USA', 'Paramount Pictures'),
(3, 'Three Colors: Blue', 'Drama', '1993-09-08', 'France', 'MK2 Productions'),
(4, 'Three Colors: Red', 'Drama', '1994-11-23', 'France', 'MK2 Productions'),
(5, 'Honeyland', 'Documentar', '2019-07-26', 'Macedonia', 'Trice Films'),
(6, 'Twenty-four', 'Action', '2001-05-11', 'USA', 'FOX movies'),
(7, 'Twenty-four: Legacy', 'Action', '2016-09-13', 'USA', 'FOX movies'),
(8, 'Glee', 'Musical', '2009-10-12', 'USA', 'FOX Broadcasting'),
(9, 'The Glee Project', 'Musical', '2011-08-26', 'USA', 'FOX Broadcasting'),
(10, 'Dark', 'Mystery', '2018-07-25', 'Germany', 'Netflix'),
(11, 'Back To The Future', 'Adventure', '1985-07-03', 'USA', 'Amblin Entertainment'),
(12, 'Back To The Future Part II', 'Adventure', '1989-11-22', 'USA', 'Amblin Entertainment'),
(13, 'Back To The Future Part III', 'Adventure', '1990-05-25', 'USA', 'Amblin Entertainment'),
(14, 'Friends', 'Comedy', '1994-11-16', 'USA', 'NBC'),
(15, 'The Office', 'Comedy', '2001-09-03', 'United Kingdom', 'BBC'),
(16, 'Money Heist', 'Crime', '2017-08-25', 'Spain', 'Netflix');

-- --------------------------------------------------------

--
-- Table structure for table `motion_picture_critic`
--

CREATE TABLE `motion_picture_critic` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `mot_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `critic_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motion_picture_critic`
--

INSERT INTO `motion_picture_critic` (`review_id`, `mot_picture_id`, `critic_id`, `rating`) VALUES
(1, 1, 1, 10),
(2, 1, 4, 8),
(3, 2, 4, 10),
(4, 2, 2, 9),
(5, 3, 5, 9),
(6, 10, 3, 10),
(7, 10, 5, 8),
(8, 14, 3, 8),
(9, 16, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `motion_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `city_premiere` varchar(20) DEFAULT NULL,
  `first_week_grossing$` int(11) DEFAULT NULL,
  `format` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `motion_picture_id`, `city_premiere`, `first_week_grossing$`, `format`) VALUES
(1, 1, 'New York', 30000000, '2D'),
(2, 2, 'Paris', 2000000, '2D'),
(3, 3, 'Berlin', 5000000, '2D'),
(4, 4, 'Paris', 7000000, '3D'),
(5, 5, 'Skopje', 2000000, '2D'),
(6, 11, 'London', 10000000, '3D'),
(7, 12, 'Beijing', 200000000, '3D'),
(8, 13, 'Los Angeles', 75000000, '3D');

-- --------------------------------------------------------

--
-- Table structure for table `plays_in`
--

CREATE TABLE `plays_in` (
  `plays_in_id` int(10) UNSIGNED NOT NULL,
  `performed_by_id` int(10) UNSIGNED DEFAULT NULL,
  `performed_in_id` int(10) UNSIGNED DEFAULT NULL,
  `actor_fee_$` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plays_in`
--

INSERT INTO `plays_in` (`plays_in_id`, `performed_by_id`, `performed_in_id`, `actor_fee_$`) VALUES
(1, 1, 3, 2500000),
(2, 1, 4, 5000000),
(3, 2, 11, 10000000),
(4, 2, 12, 15000000),
(5, 2, 13, 20000000),
(6, 3, 5, 30000),
(7, 4, 1, 2000000),
(8, 5, 2, 50000000),
(9, 5, 1, 15000000),
(10, 6, 3, 8000000),
(11, 6, 14, 300000),
(12, 7, 1, 20000000),
(13, 7, 8, 120000),
(14, 8, 1, 20000000),
(15, 8, 7, 500000),
(16, 9, 14, 150000000),
(17, 9, 10, 120000),
(18, 10, 15, 2000000),
(19, 10, 16, 8000000);

-- --------------------------------------------------------

--
-- Table structure for table `sequels`
--

CREATE TABLE `sequels` (
  `sequel_id` int(10) UNSIGNED NOT NULL,
  `first_movie_id` int(10) UNSIGNED DEFAULT NULL,
  `next_movie_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sequels`
--

INSERT INTO `sequels` (`sequel_id`, `first_movie_id`, `next_movie_id`) VALUES
(1, 1, 2),
(2, 3, 4),
(3, 6, 7),
(4, 6, 8),
(5, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tv_shows`
--

CREATE TABLE `tv_shows` (
  `tvshow_id` int(10) UNSIGNED NOT NULL,
  `mot_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `first_aired_on` varchar(20) DEFAULT NULL,
  `episode_number` smallint(6) UNSIGNED DEFAULT NULL,
  `season_number` tinyint(4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tv_shows`
--

INSERT INTO `tv_shows` (`tvshow_id`, `mot_picture_id`, `first_aired_on`, `episode_number`, `season_number`) VALUES
(1, 6, 'Fox TV', 195, 8),
(2, 7, 'Fox TV', 13, 1),
(3, 8, 'ABC TV', 121, 8),
(4, 9, 'ABC TV', 21, 2),
(5, 10, 'Netflix TV', 26, 3),
(6, 14, 'NBC TV', 235, 10),
(7, 15, 'BBC TWO', 14, 3),
(8, 16, 'Netflix TV', 31, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy_awarded_actors`
--
ALTER TABLE `academy_awarded_actors`
  ADD PRIMARY KEY (`award_id`),
  ADD KEY `FK_awarded_actor` (`awarded_actor_id`),
  ADD KEY `FK_awarded_performance` (`awarded_performance_id`);

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_id`),
  ADD KEY `FK_agent_id` (`agent`);

--
-- Indexes for table `actor_critic`
--
ALTER TABLE `actor_critic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_criticed` (`critic_id`),
  ADD KEY `FK_actor_reviewed` (`actor_id`),
  ADD KEY `FK_actor_performance_in` (`mot_pic_id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `critics`
--
ALTER TABLE `critics`
  ADD PRIMARY KEY (`critic_id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`director_id`),
  ADD KEY `FK_motpic_directed_id` (`motpic_directed_id`);

--
-- Indexes for table `motion_pictures`
--
ALTER TABLE `motion_pictures`
  ADD PRIMARY KEY (`motionpicture_id`);

--
-- Indexes for table `motion_picture_critic`
--
ALTER TABLE `motion_picture_critic`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FK_mot_picture_critic` (`mot_picture_id`),
  ADD KEY `FK_critic_name` (`critic_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `FK_isa_motionpicture` (`motion_picture_id`);

--
-- Indexes for table `plays_in`
--
ALTER TABLE `plays_in`
  ADD PRIMARY KEY (`plays_in_id`),
  ADD KEY `FK_performed_by` (`performed_by_id`),
  ADD KEY `FK_performed_in` (`performed_in_id`);

--
-- Indexes for table `sequels`
--
ALTER TABLE `sequels`
  ADD PRIMARY KEY (`sequel_id`),
  ADD KEY `FK_first_movie` (`first_movie_id`),
  ADD KEY `FK_sequel` (`next_movie_id`);

--
-- Indexes for table `tv_shows`
--
ALTER TABLE `tv_shows`
  ADD PRIMARY KEY (`tvshow_id`),
  ADD KEY `FK_tvshow` (`mot_picture_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academy_awarded_actors`
--
ALTER TABLE `academy_awarded_actors`
  MODIFY `award_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `actor_critic`
--
ALTER TABLE `actor_critic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `agent_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `critics`
--
ALTER TABLE `critics`
  MODIFY `critic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `director_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `motion_pictures`
--
ALTER TABLE `motion_pictures`
  MODIFY `motionpicture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `motion_picture_critic`
--
ALTER TABLE `motion_picture_critic`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plays_in`
--
ALTER TABLE `plays_in`
  MODIFY `plays_in_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sequels`
--
ALTER TABLE `sequels`
  MODIFY `sequel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tv_shows`
--
ALTER TABLE `tv_shows`
  MODIFY `tvshow_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academy_awarded_actors`
--
ALTER TABLE `academy_awarded_actors`
  ADD CONSTRAINT `FK_awarded_actor` FOREIGN KEY (`awarded_actor_id`) REFERENCES `actors` (`actor_id`),
  ADD CONSTRAINT `FK_awarded_performance` FOREIGN KEY (`awarded_performance_id`) REFERENCES `movies` (`movie_id`);

--
-- Constraints for table `actors`
--
ALTER TABLE `actors`
  ADD CONSTRAINT `FK_agent_id` FOREIGN KEY (`agent`) REFERENCES `agents` (`agent_id`);

--
-- Constraints for table `actor_critic`
--
ALTER TABLE `actor_critic`
  ADD CONSTRAINT `FK_actor_performance_in` FOREIGN KEY (`mot_pic_id`) REFERENCES `motion_pictures` (`motionpicture_id`),
  ADD CONSTRAINT `FK_actor_reviewed` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  ADD CONSTRAINT `FK_criticed` FOREIGN KEY (`critic_id`) REFERENCES `critics` (`critic_id`);

--
-- Constraints for table `directors`
--
ALTER TABLE `directors`
  ADD CONSTRAINT `FK_motpic_directed_id` FOREIGN KEY (`motpic_directed_id`) REFERENCES `motion_pictures` (`motionpicture_id`);

--
-- Constraints for table `motion_picture_critic`
--
ALTER TABLE `motion_picture_critic`
  ADD CONSTRAINT `FK_critic_name` FOREIGN KEY (`critic_id`) REFERENCES `critics` (`critic_id`),
  ADD CONSTRAINT `FK_mot_picture_critic` FOREIGN KEY (`mot_picture_id`) REFERENCES `motion_pictures` (`motionpicture_id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `FK_isa_motionpicture` FOREIGN KEY (`motion_picture_id`) REFERENCES `motion_pictures` (`motionpicture_id`);

--
-- Constraints for table `plays_in`
--
ALTER TABLE `plays_in`
  ADD CONSTRAINT `FK_performed_by` FOREIGN KEY (`performed_by_id`) REFERENCES `actors` (`actor_id`),
  ADD CONSTRAINT `FK_performed_in` FOREIGN KEY (`performed_in_id`) REFERENCES `motion_pictures` (`motionpicture_id`);

--
-- Constraints for table `sequels`
--
ALTER TABLE `sequels`
  ADD CONSTRAINT `FK_first_movie` FOREIGN KEY (`first_movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `FK_sequel` FOREIGN KEY (`next_movie_id`) REFERENCES `movies` (`movie_id`);

--
-- Constraints for table `tv_shows`
--
ALTER TABLE `tv_shows`
  ADD CONSTRAINT `FK_tvshow` FOREIGN KEY (`mot_picture_id`) REFERENCES `motion_pictures` (`motionpicture_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
