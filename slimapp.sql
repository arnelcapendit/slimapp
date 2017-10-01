-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 05:18 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slimapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bapt_tbl`
--

CREATE TABLE `bapt_tbl` (
  `id` int(11) NOT NULL,
  `date_of_baptismal` date NOT NULL,
  `name` varchar(500) NOT NULL,
  `parents` varchar(500) NOT NULL,
  `date_of_birth` date NOT NULL,
  `birth_place` varchar(500) NOT NULL,
  `sponsors` varchar(500) NOT NULL,
  `name_of_minister` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bapt_tbl`
--

INSERT INTO `bapt_tbl` (`id`, `date_of_baptismal`, `name`, `parents`, `date_of_birth`, `birth_place`, `sponsors`, `name_of_minister`) VALUES
(1, '2017-08-21', 'John Doe', 'Rachel smith', '2002-06-21', 'PGH', 'joey Smith', 'Karlo mendez');

-- --------------------------------------------------------

--
-- Table structure for table `conf_tbl`
--

CREATE TABLE `conf_tbl` (
  `id` int(11) NOT NULL,
  `date_of_conf` date NOT NULL,
  `name` varchar(500) NOT NULL,
  `age` int(11) NOT NULL,
  `place_of_parish` varchar(500) NOT NULL,
  `province` varchar(500) NOT NULL,
  `place_of_baptism` varchar(500) NOT NULL,
  `parents` varchar(500) NOT NULL,
  `sponsors` varchar(500) NOT NULL,
  `name_of_minister` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `corr_tbl`
--

CREATE TABLE `corr_tbl` (
  `id` int(11) NOT NULL,
  `kind` varchar(500) NOT NULL,
  `reference` varchar(500) NOT NULL,
  `discrepancy` varchar(500) NOT NULL,
  `orig_entries` varchar(500) NOT NULL,
  `approve_corr` varchar(500) NOT NULL,
  `approve_by` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `place` varchar(500) NOT NULL,
  `ref_no` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `phone`, `email`, `address`, `city`, `state`) VALUES
(18, '', '', '', '', '', '', ''),
(19, 'jabo', 'hernandez', '22222', 'test@gmail.com', 'abcd', 'efghij', 'abcdefghij'),
(20, 'lawrence', 'anthony', '22222', 'test@gmail.com', 'abcd', 'efghij', 'abcdefghij'),
(21, 'excell', 'nicolas', '22222', 'test@gmail.com', 'abcd', 'efghij', 'abcdefghij'),
(22, 'roxanne', 'cabanilla', '222222', 'roksiroks@gmail.com', 'abcd', 'efgh', 'jklmn'),
(23, 'urielle', 'myloves', '222', '1111', 'aaaa', 'bbb', 'ccc'),
(24, 'marj', 'dela cruz', '12345', 'marj@yahoo.com', 'aaaaa', 'abbbb', 'ccccc'),
(25, 'marjjjj', 'dela cruz', '12345', 'marj@yahoo.com', 'aaaaa', 'abbbb', 'ccccc');

-- --------------------------------------------------------

--
-- Table structure for table `funeral`
--

CREATE TABLE `funeral` (
  `id` int(11) NOT NULL,
  `name_of_deceased` varchar(500) NOT NULL,
  `date_of_death` date NOT NULL,
  `date_of_burial` date NOT NULL,
  `age` int(11) NOT NULL,
  `status` varchar(500) NOT NULL,
  `guardian` varchar(500) NOT NULL,
  `residence` varchar(500) NOT NULL,
  `sacrament` varchar(500) NOT NULL,
  `cause_of_death` varchar(500) NOT NULL,
  `place_of_interment` varchar(500) NOT NULL,
  `name_of_minister` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_isbn` varchar(100) NOT NULL,
  `book_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`book_id`, `book_name`, `book_isbn`, `book_category`) VALUES
(3, 'steno8', 'stn1001', 'Shorthand'),
(4, 'Python', 'bk003', 'Data Analysis'),
(5, 'steno', 'stn1001', 'Shorthand');

-- --------------------------------------------------------

--
-- Table structure for table `matrimony`
--

CREATE TABLE `matrimony` (
  `id` int(11) NOT NULL,
  `date_of_marr` date NOT NULL,
  `names` varchar(500) NOT NULL,
  `stat_before_marr` varchar(500) NOT NULL,
  `age` int(11) NOT NULL,
  `origin_residence` varchar(500) NOT NULL,
  `parents` varchar(500) NOT NULL,
  `sponsors` varchar(500) NOT NULL,
  `sponsors_residence` varchar(500) NOT NULL,
  `name_of_minister` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(500) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `password`, `datecreated`) VALUES
(1, 'katrine', 'perez', 'katperezz', 't3nd3r29', '2017-08-21 04:23:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bapt_tbl`
--
ALTER TABLE `bapt_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conf_tbl`
--
ALTER TABLE `conf_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corr_tbl`
--
ALTER TABLE `corr_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funeral`
--
ALTER TABLE `funeral`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `matrimony`
--
ALTER TABLE `matrimony`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bapt_tbl`
--
ALTER TABLE `bapt_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `conf_tbl`
--
ALTER TABLE `conf_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `corr_tbl`
--
ALTER TABLE `corr_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `funeral`
--
ALTER TABLE `funeral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `matrimony`
--
ALTER TABLE `matrimony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
