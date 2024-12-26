-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2024 at 11:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questiondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_title` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `right_answer` varchar(255) NOT NULL,
  `difficulty_level` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question_title`, `option1`, `option2`, `option3`, `option4`, `right_answer`, `difficulty_level`, `category`) VALUES
(1, 'What is a class in Java?', 'A function', 'An object', 'A data structure', 'A loop', 'An object', 'Easy', 'java'),
(2, 'What does OOP stand for?', 'Object-Oriented Programming', 'Object Ordering Process', 'Operating Overloaded Pointers', 'Order of Operations', 'Object-Oriented Programming', 'Easy', 'java'),
(3, 'What is a list in Python?', 'A type of loop', 'A built-in function', 'A data structure', 'An object', 'A data structure', 'Easy', 'python'),
(4, 'Which data structure uses First-In-First-Out (FIFO) order?', 'Stack', 'Queue', 'Array', 'LinkedList', 'Queue', 'Medium', 'python'),
(5, 'What is a constructor?', 'A member of a class', 'A loop in Python', 'A data type', 'A special method', 'A special method', 'Medium', 'java'),
(6, 'Which sorting algorithm has the worst-case time complexity of O(n^2)?', 'Merge Sort', 'Quick Sort', 'Heap Sort', 'All of the above', 'Quick Sort', 'Medium', 'General'),
(7, 'In Java, what is used to create an instance of a class?', 'Class', 'Method', 'Object', 'Constructor', 'Constructor', 'Easy', 'java'),
(8, 'Which keyword is used to define a variable that won’t be reassigned?', 'static', 'final', 'constant', 'immutable', 'final', 'Easy', 'java'),
(9, 'What is the output of 4**3 in Python?', '7', '64', '81', '12', '64', 'Easy', 'python'),
(10, 'What does the term \"polymorphism\" refer to in programming?', 'Using multiple inheritance', 'Ability to take multiple forms', 'Manipulating data', 'Using multiple programming languages', 'Ability to take multiple forms', 'Medium', 'java'),
(11, 'What is the purpose of the \"self\" parameter in Python class methods?', 'It refers to the current instance of the class', 'It is used to call parent class methods', 'It is a keyword for loops', 'It is a data type', 'It refers to the current instance of the class', 'Medium', 'python'),
(12, 'Which of the following is not a primitive data type in Java?', 'int', 'boolean', 'char', 'string', 'string', 'Medium', 'java'),
(13, 'What is the time complexity of a binary search?', 'O(n)', 'O(log n)', 'O(n^2)', 'O(1)', 'O(log n)', 'Easy', 'General'),
(14, 'What keyword is used to inherit a class in Python?', 'extends', 'inherits', 'super', 'class', 'class', 'Easy', 'python'),
(15, 'Which type of loop is ideal for situations where the number of iterations is known?', 'for loop', 'while loop', 'do-while loop', 'until loop', 'for loop', 'Easy', 'java'),
(16, 'What is the purpose of \"import\" in Python?', 'To export data', 'To create a backup', 'To include external modules', 'To print output', 'To include external modules', 'Easy', 'python'),
(17, 'In Java, which access modifier provides the widest visibility?', 'public', 'private', 'protected', 'package-private', 'public', 'Easy', 'java'),
(18, 'What is a lambda function in Python?', 'A function that uses the \"lambda\" keyword', 'A function with multiple return values', 'A function with no parameters', 'An anonymous inline function', 'An anonymous inline function', 'Medium', 'python'),
(19, 'What is a linked list?', 'A type of array', 'A linear data structure', 'A collection of objects', 'A group of classes', 'A linear data structure', 'Medium', 'java'),
(20, 'Which operator is used to concatenate strings in Python?', '&', '+', '*', '++', '+', 'Easy', 'python'),
(21, 'What does JVM stand for?', 'Java Virtual Machine', 'Just Virtual Memory', 'JavaScript Virtual Machine', 'Java Version Manager', 'Java Virtual Machine', 'Easy', 'java'),
(22, 'In Python, what is the main difference between a tuple and a list?', 'Tuples are mutable, lists are not', 'Lists are ordered, tuples are not', 'Tuples can store mixed data types, lists cannot', 'Lists have a fixed size, tuples do not', 'Tuples can store mixed data types, lists cannot', 'Medium', 'python'),
(23, 'What is the purpose of the \"finally\" block in a try-catch-finally statement?', 'To handle exceptions', 'To define a fallback value', 'To execute code regardless of exceptions', 'To terminate the program', 'To execute code regardless of exceptions', 'Medium', 'java'),
(24, 'What is a dictionary in Python?', 'A sorted collection of elements', 'A data structure used for searching', 'An ordered sequence of elements', 'A key-value store', 'A key-value store', 'Easy', 'python'),
(25, 'Which keyword is used to define a subclass in Java?', 'child', 'extends', 'inherits', 'subclass', 'extends', 'Easy', 'java'),
(26, 'What is the purpose of the \"pass\" statement in Python?', 'To stop the execution of a loop', 'To indicate an empty code block', 'To raise an exception', 'To terminate the program', 'To indicate an empty code block', 'Easy', 'python'),
(27, 'What is the size of float and double in java?', '32 and 64', '32 and 32', '64 and 64', '64 and 32', '32 and 64', 'Easy', 'java');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `title`) VALUES
(1, 'JavaQuiz');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `quiz_id` int(11) NOT NULL,
  `questions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`quiz_id`, `questions_id`) VALUES
(1, 17),
(1, 19),
(1, 5),
(1, 21),
(1, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD KEY `FKcgp9e1c6ww3t383aui4w8feae` (`quiz_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `FKcgp9e1c6ww3t383aui4w8feae` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
