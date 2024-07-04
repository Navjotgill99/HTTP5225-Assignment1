-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2024 at 02:20 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `AuthorID` int(11) NOT NULL,
  `AuthorName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`AuthorID`, `AuthorName`) VALUES
(1, 'Rebecca Yarros'),
(2, 'Britney Spears'),
(3, 'Barbra Streisand'),
(4, 'Matthew Perry'),
(5, 'Adam Wallace'),
(6, 'Delia Owens'),
(7, 'Prince Harry The Duke of Sussex'),
(8, 'Brandon Sanderson'),
(9, 'Brandon Sanderson; Dan Wells'),
(10, 'Stephen King'),
(11, 'Taylor Jenkins Reid'),
(12, 'Colleen Hoover'),
(13, 'Andrzej Sapkowski'),
(14, 'Brittany Maher; Cassandra Speer'),
(15, 'Ann Patchett'),
(16, 'James Clear'),
(17, 'Erin Morgenstern'),
(18, 'Emily Henry'),
(19, 'Tamsyn Muir'),
(20, 'Fredrik Backman'),
(21, 'Walter Isaacson'),
(22, 'John Grisham'),
(23, 'Billy Walters'),
(24, 'Lara Adrian'),
(25, 'Rick Riordan'),
(26, 'Alex Michaelides'),
(27, 'Ashley Audrain'),
(28, 'Elin Hilderbrand'),
(29, 'V.E. Schwab'),
(30, 'Jeff Kinney'),
(31, 'Colleen Hoover; Tarryn Fisher'),
(32, 'Suzanne Collins'),
(33, 'Benjamin Hall');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Price` decimal(5,2) DEFAULT NULL,
  `Rating` decimal(2,1) DEFAULT NULL,
  `YearOfPublication` int(11) DEFAULT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `AuthorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Title`, `Price`, `Rating`, `YearOfPublication`, `Genre`, `URL`, `AuthorID`) VALUES
(1, 'Iron Flame (The Empyrean, 2)', '18.42', '4.1', 2023, 'Fantasy Romance', 'amazon.com/Iron-Flame-Empyrean-Rebecca-Yarros/dp/', 1),
(2, 'Fourth Wing (The Empyrean, 1)', '16.99', '4.8', 2023, 'Fantasy', 'amazon.com/Fourth-Wing-Empyrean-Rebecca-Yarros/dp/', 1),
(3, 'The Woman in Me', '20.93', '4.5', 2023, 'Memoir', 'amazon.com/Woman-Me-Britney-Spears/dp/166800904X/', 2),
(4, 'My Name Is Barbra', '31.50', '4.5', 2023, 'Autobiography', 'amazon.com/My-Name-Barbra-Streisand/dp/0525429X/', 3),
(5, 'Friends, Lovers, and the Big Terrible Thing: A Memoir', '23.99', '4.4', 2023, 'Memoir', 'amazon.com/Friends-Lovers-Big-Terrible-Thing/dp/1250868857/', 4),
(6, 'How to Catch a Gingerbread Man', '8.99', '4.9', 2023, 'Children\'s', 'amazon.com/How-Catch-Gingerbread-Adam-Wallace/dp/1728278047/', 5),
(7, 'Where the Crawdads Sing', '9.98', '4.8', 2018, 'Mystery', 'amazon.com/Where-Crawdads-Sing-Delia-Owens/dp/0735219109/', 6),
(8, 'Spare', '19.22', '4.6', 2023, 'Memoir', 'amazon.com/Spare-Prince-Harry-Duke-Sussex/dp/0593593804/', 7),
(9, 'Yumi and the Nightmare Painter: A Cosmere Novel (Secret Projects Book 3)', '25.86', '4.7', 2023, 'Fantasy', 'amazon.com/Yumi-Nightmare-Painter-Cosmere-Projects/dp/1938570431/', 8),
(10, 'Dark One: Forgotten', '26.95', '4.7', 2023, 'Fantasy', 'amazon.com/Dark-One-Forgotten-Brandon-Sanderson/dp/193857061X/', 9),
(11, 'Holly: A Novel', '18.96', '4.6', 2023, 'Thriller', 'amazon.com/Holly-Novel-Stephen-King/dp/1668002177/', 10),
(12, 'Daisy Jones & The Six: A Novel', '12.93', '4.6', 2019, 'Fiction', 'amazon.com/Daisy-Jones-Six-Taylor-Jenkins-Reid/dp/1524798649/', 11),
(13, 'It Starts with Us: A Novel (It Ends with Us)', '12.87', '4.6', 2022, 'Romance', 'amazon.com/Starts-Us-Novel-Ends/dp/1668001227/', 12),
(14, 'The Witcher Boxed Set: Blood of Elves, The Time of Contempt, Baptism of Fire, The Tower of Swallows, Lady of the Lake, Season of Storms', '33.00', '4.9', 2020, 'Fantasy', 'amazon.com/Witcher-Boxed-Set-Baptism-Swallows/dp/0316703294/', 13),
(15, 'She Deserves Better: Raising Girls to Resist Toxic Teachings on Sex, Self, and Speaking Up', '10.96', '4.8', 2023, 'Christian Living', 'amazon.com/She-Deserves-Better-Resist-Teachings/dp/1496474503/', 14),
(16, 'Tom Lake: A Reese\'s Book Club Pick', '18.00', '4.5', 2023, 'Fiction', 'amazon.com/Tom-Lake-Reeses-Book-Club/dp/0063327527/', 15),
(17, 'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones', '11.98', '4.8', 2018, 'Self-Help', 'amazon.com/Atomic-Habits-Proven-Build-Break/dp/0735211299/', 16),
(18, 'The Night Circus', '13.29', '4.5', 2011, 'Fantasy', 'amazon.com/Night-Circus-Erin-Morgenstern/dp/0307744434/', 17),
(19, 'Happy Place', '14.99', '4.4', 2023, 'Romance', 'amazon.com/Happy-Place-Emily-Henry/dp/0593441273/', 18),
(20, 'Nona the Ninth (The Locked Tomb Series, 3)', '16.19', '4.5', 2022, 'Science Fiction', 'amazon.com/Nona-Ninth-Locked-Tomb-Tamsyn/dp/1250312805/', 19),
(21, 'Anxious People: A Novel', '8.79', '4.5', 2021, 'Fiction', 'amazon.com/Anxious-People-Novel-Fredrik-Backman/dp/1501160834/', 20),
(22, 'Elon Musk', '22.96', '4.4', 2023, 'Biography', 'amazon.com/Elon-Musk-Walter-Isaacson/dp/1982181281/', 21),
(23, 'The Exchange: After The Firm', '22.26', '4.4', 2023, 'Thriller', 'amazon.com/Exchange-After-Firm-John-Grisham/dp/038554895X/', 22),
(24, 'Gambler: Secrets from a Life at Risk', '25.60', '4.6', 2023, 'Biography', 'amazon.com/Gambler-Secrets-Life-at-Risk/dp/1476795378/', 23),
(25, 'Winter’s Heart: Book Nine of The Wheel of Time', '15.99', '4.7', 2023, 'Fantasy', 'amazon.com/Winters-Heart-Nine-Wheel-Time/dp/1250900083/', 24),
(26, 'The Chalice of the Gods (Percy Jackson and the Olympians)', '14.99', '4.7', 2023, 'Fantasy', 'amazon.com/Chalice-Percy-Jackson-Olympians/dp/1368098179/', 25),
(27, 'The Silent Patient', '14.99', '4.6', 2019, 'Thriller', 'amazon.com/Silent-Patient-Alex-Michaelides/dp/1250301696/', 26),
(28, 'The Whispers: A Novel', '19.69', '4.4', 2023, 'Thriller', 'amazon.com/Whispers-Novel-Ashley-Audrain/dp/1984882082/', 27),
(29, 'The Five-Star Weekend', '20.13', '4.5', 2023, 'Fiction', 'amazon.com/Five-Star-Weekend-Elin-Hilderbrand/dp/0316258775/', 28),
(30, 'The Invisible Life of Addie LaRue', '16.99', '4.5', 2020, 'Fantasy', 'amazon.com/Invisible-Life-Addie-LaRue/dp/0765387565/', 29),
(31, 'The Last Kids on Earth and the Cosmic Beyond', '11.99', '4.7', 2018, 'Adventure', 'amazon.com/Last-Kids-Earth-Cosmic-Beyond/dp/0425288714/', 30),
(32, 'Regretting You', '12.99', '4.5', 2020, 'Romance', 'amazon.com/Regretting-You-Colleen-Hoover/dp/1542016428/', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`AuthorID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `AuthorID` (`AuthorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `AuthorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `authors` (`AuthorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
