-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 04:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `date_publish` varchar(50) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `book_type` varchar(255) DEFAULT NULL,
  `book_qrcode` varchar(1000) DEFAULT NULL,
  `book_qty` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `shelf` varchar(50) DEFAULT NULL,
  `acquisition_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `id` int(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `date_publish` varchar(50) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `book_type` varchar(255) DEFAULT NULL,
  `book_qrcode` varchar(1000) DEFAULT NULL,
  `book_qty` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `shelf` varchar(50) DEFAULT NULL,
  `acquisition_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`id`, `title`, `description`, `author`, `date_publish`, `category`, `book_type`, `book_qrcode`, `book_qty`, `location`, `shelf`, `acquisition_no`) VALUES
(1, 'The Purpose Driven', 'Philosopy And Sociology', 'Warren Rick', '2002', 'Philosophy And Sociology', 'Philosophy And Sociology', 'The Purpose DrivenWarren Rick', '2', 'LEFT', '1', 'BV 4501.3 W37p 2002 c.2'),
(3, 'Marketing', 'Marketing', 'Roger A. Kerin, Steven W. Hartley, William Rudelius', '2013', 'Marketing Management', 'Marketing Management', 'MarketingC HF 5415 M29474 2013Roger A. Kerin, Steven W. Hartley, William Rudelius', '2', 'LEFT', '3', 'C HF 5415 M29474 2013'),
(4, 'Culinary Essential', 'Cooking', 'Hyde Park Category', '2006', 'Cooking', 'Cooking', 'Culinary EssentialC TX 651 C844Hyde Park Category', '2', 'LEFT', '6', 'C TX 651 C844'),
(5, 'Accounting', 'Accounting', 'Carl S. Warren, James M. Reeve, Jonathan E. Duchac', '2009', 'Accounting', 'Accounting', 'AccountingHF 5635 W35 2009Carl S. Warren, James M. Reeve, Jonathan E. Duchac', '1', 'LEFT', '4', 'HF 5635 W35 2009'),
(6, 'Physics', 'Physics', 'Kenneth W. Johnson', '2007', 'Physics', 'Physics', 'PhysicsQC 23.2 C876pKenneth W. Johnson', '2', 'LEFT', '5', 'QC 23.2 C876p'),
(7, 'Introduction to Operations Research', 'Operation Research ', 'Hillier Lieberman ', '2005', 'Operation Research ', 'Operation Research ', 'Introduction to Operations ResearchT 57.6 H544iHillier Lieberman ', '5', 'LEFT', '7', 'T 57.6 H544i'),
(8, 'Travel and Tourism Marketing', 'Tourism Management', 'Dotty Boen Oelkers', '2007', 'Tourism Management', 'Tourism Management', 'Travel and Tourism MarketingC G 155 A1 045 2007Dotty Boen Oelkers', '2', 'LEFT', '5', 'C G 155 A1 045 2007'),
(10, 'Software Engineering A Practice Approach', 'Software Engineering', 'Roger S. Pressman', '2022', 'Software Engineering', 'Software Engineering', 'Software Engineering A Practice ApproachQA 76.758 P737sRoger S. Pressman', '4', 'LEFT', '8', 'QA 76.758 P737s'),
(11, 'Database System Concepts', 'System Analysis and Design', 'Abraham Silberschatz, Henry F. Korth, S. Sudarshan', '2022', 'System Analysis and Design', 'System Analysis and Design', 'Database System ConceptsQA 76.9 S523d 2006Abraham Silberschatz, Henry F. Korth, S. Sudarshan', '6', 'LEFT', '6', 'QA 76.9 S523d 2006'),
(12, 'Computer Organization and Architecture', 'Database System', 'William Stallings', '2006', 'Database System', 'Database System', 'Computer Organization and ArchitectureQA 76.9 C643 S724c 2006William Stallings', '5', 'LEFT', '7', 'QA 76.9 C643 S724c 2006'),
(13, 'Discrete Mathematics and Its Application', 'Discrete Math', 'Kenneth H. Rosen', '2007', 'Mathematics', 'Mathematics', 'Discrete Mathematics and Its ApplicationQA 39.3 R673d 2007Kenneth H. Rosen', '4', 'LEFT', '8', 'QA 39.3 R673d 2007'),
(14, 'Java A Beginners Guide', 'Java Programming', 'Herbert Schildt', '2005', 'Java Programming', 'Java Programming', 'Java A Beginners GuideQA 76.73 J38 S344jHerbert Schildt', '2', 'LEFT', '4', 'QA 76.73 J38 S344j'),
(16, 'Java Programming and Object-Oriented Application Development', 'Computer Concepts', 'Richard A. Johnson', '2007', 'Computer Concepts', 'Computer Concepts', 'Java Programming and Object-Oriented Application DevelopmentC QA 76.64 J64Richard A. Johnson', '6', 'LEFT', '6', 'C QA 76.64 J64'),
(17, 'The New Work Place', 'Management', 'Daft Marcic', '2009', 'Management', 'Management', 'The New Work PlaceHD 31 D134m 2009Daft Marcic', '1', 'LEFT', '3', 'HD 31 D134m 2009'),
(18, 'Data Communications and Computer Networks A Business Users Approach', 'Data Communication', 'Curt M. White', '2007', 'Data Communication', 'Data Communication', 'Data Communications and Computer Networks A Business Users ApproachCurt M. White', '5', 'LEFT', '6', 'C TK 5105.5 W447');

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `id` int(20) NOT NULL,
  `borrowers_id` varchar(50) DEFAULT NULL,
  `book_qrcode` varchar(1000) DEFAULT NULL,
  `borrowed_date` varchar(50) DEFAULT NULL,
  `due_date` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `verify_by` varchar(50) DEFAULT NULL,
  `acknowledge_by` varchar(50) DEFAULT NULL,
  `returned_date` varchar(20) DEFAULT NULL,
  `status_count` varchar(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(2, 'a', 'a', 'Male', '1', 'a', '2'),
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archived_books`
--
ALTER TABLE `archived_books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

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
