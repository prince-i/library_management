-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 10:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(20) NOT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `announcement_description` varchar(255) DEFAULT NULL,
  `date_announce` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archived_books`
--

CREATE TABLE `archived_books` (
  `id` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `date_publish` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `book_type` varchar(50) DEFAULT NULL,
  `book_qrcode` varchar(50) DEFAULT NULL,
  `book_qty` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `shelf` varchar(50) DEFAULT NULL,
  `acquisition_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archived_books`
--

INSERT INTO `archived_books` (`id`, `title`, `description`, `author`, `date_publish`, `category`, `book_type`, `book_qrcode`, `book_qty`, `location`, `shelf`, `acquisition_no`) VALUES
(2, 'english', 'english1', 'eng', '2022-06-05', 'sample', 'sample', 'englisheng', '5', 'a', 'a1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `id` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `date_publish` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `book_type` varchar(50) DEFAULT NULL,
  `book_qrcode` varchar(50) DEFAULT NULL,
  `book_qty` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `shelf` varchar(50) DEFAULT NULL,
  `acquisition_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`id`, `title`, `description`, `author`, `date_publish`, `category`, `book_type`, `book_qrcode`, `book_qty`, `location`, `shelf`, `acquisition_no`) VALUES
(2, 'english', 'sample', 'jj', '2022-10-27', 'sample', 'sample', 'english1jj', '1', 'LEFT', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `id` int(20) NOT NULL,
  `borrowers_id` varchar(50) DEFAULT NULL,
  `borrowed_by` varchar(50) DEFAULT NULL,
  `book_qrcode` varchar(50) DEFAULT NULL,
  `borrowed_date` varchar(50) DEFAULT NULL,
  `due_date` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `verify_by` varchar(50) DEFAULT NULL,
  `acknowledge_by` varchar(50) DEFAULT NULL,
  `returned_date` varchar(20) DEFAULT NULL,
  `status_count` varchar(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrowed_books`
--

INSERT INTO `borrowed_books` (`id`, `borrowers_id`, `borrowed_by`, `book_qrcode`, `borrowed_date`, `due_date`, `status`, `verify_by`, `acknowledge_by`, `returned_date`, `status_count`) VALUES
(2, 'student', NULL, 'english1jj', '2022-10-30', '2022-10-27', 'Borrow', 'student', NULL, NULL, '1'),
(7, 'a', NULL, 'english1jj', '2022-10-27', '2022-10-26', 'Borrow', 'a', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `borrower_details`
--

CREATE TABLE `borrower_details` (
  `id` int(20) NOT NULL,
  `borrowers_id` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `course_year` varchar(50) DEFAULT NULL,
  `points` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrower_details`
--

INSERT INTO `borrower_details` (`id`, `borrowers_id`, `full_name`, `gender`, `contact_no`, `course_year`, `points`) VALUES
(1, 'student', 'student01', 'Male', '00000000', 'IT', '0'),
(2, 'a', 'a', 'Male', '1', 'a', '0'),
(3, 'b', 'b', 'Male', '123', '4th', '0');

-- --------------------------------------------------------

--
-- Table structure for table `how_to_borrow`
--

CREATE TABLE `how_to_borrow` (
  `id` int(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `how_to_borrow`
--

INSERT INTO `how_to_borrow` (`id`, `description`) VALUES
(1, 'Go to the counter/librarian to scan your students QR code.'),
(2, 'Search for a book that you desire to borrow.'),
(3, 'Bring it back to the counter/Librarian for the scan of book'),
(4, 'Set a date when you will return the book'),
(5, 'Sign for verification of you who borrowed and will return the book.');

-- --------------------------------------------------------

--
-- Table structure for table `how_to_return`
--

CREATE TABLE `how_to_return` (
  `id` int(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `how_to_return`
--

INSERT INTO `how_to_return` (`id`, `description`) VALUES
(1, 'Go to the counter/librarian to scan your students QR code.'),
(2, 'Hand it over to the librarian the book you borrowed'),
(3, 'Sign for verification that you’ve return the book');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(20) NOT NULL,
  `rules` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `rules`) VALUES
(1, 'Loitering is not allowed'),
(2, 'Eating or drinking is prohibited'),
(3, 'Making unnecessary noise'),
(4, 'Damaging the books'),
(5, 'Taking the books without the permission');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(20) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `full_name`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(2, 'student01', 'student', 'student', 'student'),
(3, 'a', 'a', 'a', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archived_books`
--
ALTER TABLE `archived_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrower_details`
--
ALTER TABLE `borrower_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_to_borrow`
--
ALTER TABLE `how_to_borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_to_return`
--
ALTER TABLE `how_to_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `archived_books`
--
ALTER TABLE `archived_books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `borrower_details`
--
ALTER TABLE `borrower_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `how_to_borrow`
--
ALTER TABLE `how_to_borrow`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `how_to_return`
--
ALTER TABLE `how_to_return`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
