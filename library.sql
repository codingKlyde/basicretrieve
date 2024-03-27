-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 04:37 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(2) NOT NULL,
  `ISBN` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Title` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Category` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Author` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Publisher` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `ISBN`, `Title`, `Category`, `Author`, `Publisher`, `Year`) VALUES
(1, 'A-0010-Z', 'Harry Potter and the Philosopher’s Stone', 'Fantasy', 'J. K. Rowling', 'Bloomsbury', 1997),
(2, 'A-0020-Z', 'Harry Potter and the Chamber of Secrets', 'Fantasy', 'J. K. Rowling', 'Bloomsbury', 2002),
(3, 'A-0030-Z', ' Harry Potter and the Prisoner of Azkaban', 'Fantasy', 'J. K. Rowling', 'Bloomsbury', 2004),
(4, 'A-0040-Z', 'Harry Potter and the Goblet of Fire', 'Fantasy', 'J. K. Rowling', 'Bloomsbury', 2005),
(5, 'A-0050-Z', 'Harry Potter and the Order of the Phoenix', 'Fantasy', 'J. K. Rowling', 'Bloomsbury', 2007),
(6, 'A-0060-Z', 'Harry Potter and the Half-Blood Prince', 'Fantasy', 'J. K. Rowling', 'Bloomsbury', 2009),
(7, 'A-0070-Z', 'Harry Potter and the Deathly Hallows', 'Fantasy', 'J. K. Rowling', 'Bloomsbury', 2010);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
