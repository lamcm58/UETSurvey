-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2017 at 04:43 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Khoa Công Nghệ Thông Tin'),
(2, 'Khoa Điện Tử Viễn Thông'),
(3, 'Khoa Cơ Học Kỹ Thuật');

-- --------------------------------------------------------

--
-- Table structure for table `categories_surveys`
--

CREATE TABLE `categories_surveys` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `survey_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_surveys`
--

INSERT INTO `categories_surveys` (`id`, `category_id`, `survey_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_07_152644_create_subjects_table', 1),
(4, '2017_08_07_152850_create_surveys_table', 1),
(5, '2017_08_07_152911_create_questions_table', 1),
(6, '2017_08_07_152935_create_students_table', 1),
(7, '2017_08_07_153019_create_results_table', 1),
(8, '2017_08_20_201000_create_students_surveys_table', 1),
(9, '2017_08_26_212944_create_students_subjects_table', 1),
(10, '2017_08_27_211238_create_surveys_details_table', 1),
(11, '2017_08_29_205326_create_subjetcs_surveys_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_type` tinyint(3) UNSIGNED NOT NULL,
  `question_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `survey_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_code`, `question_type`, `question_content`, `answer`, `survey_id`, `created_at`, `updated_at`) VALUES
(1, 'S0001_01', 1, 'Phòng học đáp ứng yêu cầu của môn học', ' ', 1, '2017-09-10 15:12:23', '2017-09-10 15:12:23'),
(2, 'S0001_02', 1, 'Các trang thiết bị tại giảng đường đáp ứng yêu cầu giảng dạy và học tập', ' ', 1, '2017-09-10 15:12:23', '2017-09-10 15:12:23'),
(3, 'S0001_03', 1, 'Bạn được hỗ trợ kịp thời trong quá trình học môn này', ' ', 1, '2017-09-10 15:12:23', '2017-09-10 15:12:23'),
(4, 'S0001_04', 1, 'Mục tiêu của môn học nêu rõ kiến thức và kĩ năng người học cần đạt được', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(5, 'S0001_05', 1, 'Thời lượng môn học được phân bổ hợp lí cho các hình thức học tập', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(6, 'S0001_06', 1, 'Các tài liệu phục vụ môn học được cập nhật', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(7, 'S0001_07', 1, 'Môn học góp phần trang bị kiến thức, kĩ năng nghề nghiệp cho bạn', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(8, 'S0001_08', 1, 'Giảng viên hướng dẫn cho bạn phương pháp học tập khi bắt đầu môn học', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(9, 'S0001_09', 1, 'Phương pháp giảng dạy của giảng viên giúp bạn phát triển tư duy phê phán', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(10, 'S0001_10', 1, 'Giảng viên tạo cơ hội để bạn chủ động tham gia vào quá trình học tập', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(11, 'S0001_11', 1, 'Giảng viên giúp bạn phát triển kĩ năng làm việc độc lập', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(12, 'S0001_12', 1, 'Giảng viên rèn luyện cho bạn phương pháp liên hệ giữa các vấn đề trong môn học với thực tiễn', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(13, 'S0001_13', 1, 'Giảng viên sử dụng hiệu quả phương tiện dạy học', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(14, 'S0001_14', 1, 'Giảng viên quan tâm giáo dục tư cách, phẩm chất nghề nghiệp của người học', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(15, 'S0001_15', 1, 'Bạn hiểu những vấn đề được truyền tải trên lớp', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(16, 'S0001_16', 1, 'Kết quả học tập của người học được đánh giá bằng nhiều hình thức phù hợp với tính chất và đặc thù môn học', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(17, 'S0001_17', 1, 'Nội dung kiểm tra đánh giá tổng hợp được các kiến thức và kĩ năng mà người học phải đạt được theo yêu cầu', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(18, 'S0001_18', 1, 'Thông tin phản hồi từ kiểm tra đánh giá giúp bạn cải thiện kết quả học tập', ' ', 1, '2017-09-10 15:12:24', '2017-09-10 15:12:24'),
(19, 'S0001_19', 2, 'Nếu có ý kiến khác vui lòng điền vào đây', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_class_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `student_answers` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_code`, `student_name`, `subject_class_code`, `subject_name`, `subject_id`, `survey_id`, `student_answers`) VALUES
(1, 'aNkeWF39', 'Faye Kovacek', 'ELT4053 1', 'Khóa luận tốt nghiệp', 39, 1, 'a:19:{s:10:\"question-1\";s:1:\"3\";s:10:\"question-2\";s:1:\"4\";s:10:\"question-3\";s:1:\"4\";s:10:\"question-4\";s:1:\"4\";s:10:\"question-5\";s:1:\"5\";s:10:\"question-6\";s:1:\"5\";s:10:\"question-7\";s:1:\"5\";s:10:\"question-8\";s:1:\"5\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"4\";s:11:\"question-11\";s:1:\"5\";s:11:\"question-12\";s:1:\"5\";s:11:\"question-13\";s:1:\"5\";s:11:\"question-14\";s:1:\"5\";s:11:\"question-15\";s:1:\"5\";s:11:\"question-16\";s:1:\"5\";s:11:\"question-17\";s:1:\"5\";s:11:\"question-18\";s:1:\"4\";s:11:\"question-19\";s:21:\"Chất lượng tốt\";}'),
(2, 'M2nijNtv', 'Mathew Wintheiser', 'ELT4053 1', 'Khóa luận tốt nghiệp', 39, 1, 'a:19:{s:10:\"question-1\";s:1:\"2\";s:10:\"question-2\";s:1:\"3\";s:10:\"question-3\";s:1:\"4\";s:10:\"question-4\";s:1:\"4\";s:10:\"question-5\";s:1:\"5\";s:10:\"question-6\";s:1:\"5\";s:10:\"question-7\";s:1:\"5\";s:10:\"question-8\";s:1:\"5\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"5\";s:11:\"question-11\";s:1:\"4\";s:11:\"question-12\";s:1:\"5\";s:11:\"question-13\";s:1:\"5\";s:11:\"question-14\";s:1:\"5\";s:11:\"question-15\";s:1:\"5\";s:11:\"question-16\";s:1:\"4\";s:11:\"question-17\";s:1:\"4\";s:11:\"question-18\";s:1:\"4\";s:11:\"question-19\";s:5:\"Tốt\";}');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `password`, `student_code`, `class`, `email`, `full_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mina35', '$2y$10$Z6tu4w8R5O6F.hfz9z3kuOjRv2TpLNzAxqPLWQF47RgqL60VGppD.', 'F95a2jGm', 'Jerde-Goyette', 'adelia26@gmail.com', 'George Schowalter', NULL, '2017-09-06 15:57:45', '2017-09-06 15:57:45'),
(2, 'nhills', '$2y$10$3wAFcPwR1xwfFW8JWvG00eGHnq8dT2.AzKVQjYpccbu3t7Q.2BJT2', '9yI9fJTY', 'Baumbach, Parker and O\'Keefe', 'cedrick.gottlieb@hotmail.com', 'Sheridan Runte', NULL, '2017-09-06 15:57:45', '2017-09-06 15:57:45'),
(3, 'max61', '$2y$10$VVvvuWe3cg/xZjBB5i57Nu5KLHGaxXq/eilkwNz2zxgvllq4LhEl.', 'M2nijNtv', 'Halvorson-Klocko', 'lily12@huel.info', 'Mathew Wintheiser', 'apgc3UG21vxiywtbD6UIvy2LC36y66wMH6WXR6sMQZoWOGYXdX2xaFzRUdg7', '2017-09-06 15:57:45', '2017-09-06 15:57:45'),
(4, 'javonte32', '$2y$10$iuk.SO4Ft5vEDYkOq2/WYuFygVO5nIU2O6f/Xpj6l0XNKmrbWuhyi', '8DpTmDRc', 'Shanahan-Schamberger', 'darryl.turcotte@hotmail.com', 'Esther Bartoletti', NULL, '2017-09-06 15:57:45', '2017-09-06 15:57:45'),
(5, 'mraz.walton', '$2y$10$DUzpHWKybVCBS8j1lJthDu7WH6OpfhomC2RusX0OpIZyNmgmZ5jhu', 'uWqcn8mF', 'Barrows, Kub and Langworth', 'twalsh@hotmail.com', 'Christelle Kassulke', 'RJ0RMpZFBzCiVjr6qHcSfajq649GabsQY0E04MP9Zn5zm23X73RpUyz0Ea9z', '2017-09-06 15:57:46', '2017-09-06 15:57:46'),
(6, 'emmalee.mertz', '$2y$10$l8arcqrjs4DHnCsyh2f5SefNpGZGfnFulo.LB0BbRoJV8oIGD0m6O', '3Uv8sChZ', 'Osinski PLC', 'hackett.harmony@gmail.com', 'Isobel Tremblay', NULL, '2017-09-06 15:57:46', '2017-09-06 15:57:46'),
(7, 'janelle32', '$2y$10$Ze3MoP0kotHDn2ekRXuKmOCYOcQriCyJFEgwzRvcQ/wgfUFIZIpAy', 'C6zMXziH', 'Mills, Schmeler and Braun', 'hirthe.caden@runolfsdottir.biz', 'Tillman Considine', NULL, '2017-09-06 15:57:46', '2017-09-06 15:57:46'),
(8, 'bosco.sibyl', '$2y$10$WYBlVyTTOh9sxVFFvRJoE.msK8prlV5xW8iGKjn8r9y97DuaTx1AC', 'EVr1MNPw', 'Beatty-Rogahn', 'olen53@nolan.com', 'Hope Grimes', NULL, '2017-09-06 15:57:46', '2017-09-06 15:57:46'),
(9, 'kunze.abbie', '$2y$10$VqNZAQskBnSyeZnKbq/M3elq2WFdUkhBX9sgwmS8WWEof9qWpyX7.', 'aNkeWF39', 'Howell LLC', 'hirthe.colby@goyette.com', 'Faye Kovacek', 'WSfcL93j38DHKNT5MKUxBYvtCugtPXaxoEBXMV8xPqtqZFfbf8fRi6D77Eus', '2017-09-06 15:57:46', '2017-09-06 15:57:46'),
(10, 'jmcclure', '$2y$10$5Pbwgy8bCBny8PkeIdM8WeS3UAePn0toyYQGZZw3Dg5E7zOwKjJ7i', 'szvD8xh3', 'Sporer and Sons', 'bemmerich@hotmail.com', 'Elena Hintz', NULL, '2017-09-06 15:57:47', '2017-09-06 15:57:47'),
(11, 'claude.lubowitz', '$2y$10$q64n6.YyQUpN6IrNN3BH9Ob7WM19f9PfrvPXmjywQW8fCavP/Q0oC', 'VLtB7m09', 'Volkman, Schiller and Keebler', 'rabshire@yahoo.com', 'Asa Crist', NULL, '2017-09-06 15:57:47', '2017-09-06 15:57:47'),
(12, 'xkris', '$2y$10$kJRnVB9J7cbu4Q5DHriJauLyMY/Y2I1enyCiv2aIDqEOcnP32SM6K', 'ASbt9YwS', 'Hegmann, Waelchi and Kub', 'jovan.hegmann@gmail.com', 'Tracy Beer', NULL, '2017-09-06 15:57:47', '2017-09-06 15:57:47'),
(13, 'will.kiarra', '$2y$10$7i9vI00gKtuTTHOVjYGF8uymBCkokbzP4AWLuTLA7GCAS3FV7B6r.', 'J4q6BVzc', 'Crist-McGlynn', 'ebergstrom@yahoo.com', 'Cassandre McCullough', NULL, '2017-09-06 15:57:47', '2017-09-06 15:57:47'),
(14, 'mayer.joy', '$2y$10$gQ7pjrMZycMyK/18pf66R.GU2t/lqvQjM367iEtFdfH7EK46C7E5y', 'Z6Lcmaxp', 'Roob-Ferry', 'morar.dallas@paucek.net', 'Loren Rath', NULL, '2017-09-06 15:57:48', '2017-09-06 15:57:48'),
(15, 'orn.carley', '$2y$10$SUkn0qCpOslqqM23aOnC0.b5HoUDPu8p/uvJL8YHyHAEsI3DU89Y2', 'EGnHlFxv', 'Kassulke-Barton', 'nader.ludie@hauck.org', 'Braulio Conn', NULL, '2017-09-06 15:57:48', '2017-09-06 15:57:48'),
(16, 'wilderman.cory', '$2y$10$Czo/gs0yYeUbM3C5iWhgUekpowrdrrSXLzWNSzvZ95c1.D7oMsvru', 'SAxu7XK7', 'Lakin, Bauch and Wolf', 'lesch.antonietta@hotmail.com', 'Alejandrin Daugherty', NULL, '2017-09-06 15:57:48', '2017-09-06 15:57:48'),
(17, 'rosalinda26', '$2y$10$pFULn7oAmrl.42mPlFk9EeNs9OmJH7rP/dQsRZ.oXOoyeC1wsK4fy', 'IA4xPRXG', 'O\'Kon-Lubowitz', 'zlangworth@hackett.com', 'Dock Nikolaus', NULL, '2017-09-06 15:57:48', '2017-09-06 15:57:48'),
(18, 'verdie63', '$2y$10$CtwVE1N.bFSfMnYc96NZf.WSRcMb43GTzKFQKYSFYfTVjAj6UkJCu', '0cphsSwG', 'Stroman-Skiles', 'darryl.thompson@abshire.com', 'Bonita Bosco', NULL, '2017-09-06 15:57:48', '2017-09-06 15:57:48'),
(19, 'vdietrich', '$2y$10$oBAKzQifJaJqljy74MFa6eq/z.DIIar792P9TOd8o4Lf7LOa63j6S', 'pzGhIZaC', 'Lockman-Fritsch', 'hintz.ethel@yahoo.com', 'Neal Moore', NULL, '2017-09-06 15:57:49', '2017-09-06 15:57:49'),
(20, 'dejuan70', '$2y$10$y9Cag8LR.fzUg422.3EOJuyVR/NtdiPo667dRfQFz93np8ktnl9tq', 'nNTIWfaT', 'Kohler-Adams', 'dgorczany@yahoo.com', 'Brennan Brekke', NULL, '2017-09-06 15:57:49', '2017-09-06 15:57:49'),
(21, 'mariane37', '$2y$10$g/AlbcECl7.Vxtc/2X28XO5tKd5MWxLD8TLm7UcdEJYseJmAq5Fb2', 'J2l6Ti0h', 'Bogisich, Mertz and Deckow', 'zulauf.macie@gmail.com', 'Ollie Green', NULL, '2017-09-06 15:57:49', '2017-09-06 15:57:49'),
(22, 'donavon.hauck', '$2y$10$ZLyhhPNu7QVi4VdcwwrfruPnJ87Tw8f/SlDN2Z5SSiI7v/amXkxti', 'vErBbNHW', 'Stanton-Adams', 'brooke97@krajcik.com', 'Lysanne Corkery', NULL, '2017-09-06 15:57:49', '2017-09-06 15:57:49'),
(23, 'hoppe.ora', '$2y$10$R/EKklxAePmToFo3XeFUkuZENiVYW0iHgFqhNiW3PII5tUT4.aMbi', 'UgU9HjeM', 'Goldner Inc', 'lenny.bogisich@cronin.com', 'Jace O\'Connell', NULL, '2017-09-06 15:57:50', '2017-09-06 15:57:50'),
(24, 'johathan.wiza', '$2y$10$a3iSmnCj9u2gg8q3cHmhOeX35hyYLEFNVvLShCQfLcYrKL0Ug20lO', 'R5wUJt67', 'Schaefer-Botsford', 'laron99@yahoo.com', 'Verna Connelly', NULL, '2017-09-06 15:57:50', '2017-09-06 15:57:50'),
(25, 'joyce09', '$2y$10$Xh7JGAsPBU8hyUCmsXXCIe0omfRldLrlnVyVgegyfuqVDm4LkhLJe', 'fWymxnw9', 'Erdman-Auer', 'pollich.alaina@hotmail.com', 'Lamont Crooks', NULL, '2017-09-06 15:57:50', '2017-09-06 15:57:50'),
(26, 'hprice', '$2y$10$MCn2ef0M5HFqmCZkW0Ie2.nafcCH.hI2eKNSMS2lfjcUd25sSP842', 'Tsgg6vWn', 'Labadie PLC', 'moriah.nienow@hotmail.com', 'Jeremie Conroy', NULL, '2017-09-06 15:57:50', '2017-09-06 15:57:50'),
(27, 'davion.homenick', '$2y$10$wZDLZfRtdqTycsFeUN7mZeWEQWyBbdavkjFkReA8GHUYOUORH/TZu', 'uenJqH9i', 'Deckow, Mertz and Boyle', 'alta64@gmail.com', 'Eriberto Murray', NULL, '2017-09-06 15:57:50', '2017-09-06 15:57:50'),
(28, 'sauer.dorothea', '$2y$10$T6XJDH31KyEzs3TWdiU1beHBFeM4dwnSLXbnBPPZyNL0PgFDEeqQS', 'vUcrVEnv', 'Johnson-Koss', 'jgutmann@hotmail.com', 'Era Schuster', NULL, '2017-09-06 15:57:51', '2017-09-06 15:57:51'),
(29, 'bkuvalis', '$2y$10$pb8bQCZViMHhm/dcTpjt/OS3cd.RFSlINIpB3VR8QIr9aimYKw6OC', 'IJIICKUT', 'Terry LLC', 'mvonrueden@glover.com', 'Peggie Veum', NULL, '2017-09-06 15:57:51', '2017-09-06 15:57:51'),
(30, 'green.justen', '$2y$10$iin0apeEJdDchuIZ/gM/JO0YF6pPZOd7ZwS7OuUDaH/DUiGXkz2Ny', 'pIaKguij', 'Prosacco-Cole', 'bvon@nikolaus.com', 'Einar Prohaska', NULL, '2017-09-06 15:57:51', '2017-09-06 15:57:51'),
(31, 'ookeefe', '$2y$10$Pj.JUqYDZ9ieFa.eiZlaieYgH8rjBYLFk1exm9xfjL1J4S9g8dWEa', 'OVbGb8sg', 'Frami-Denesik', 'tboyle@auer.biz', 'Audrey Cremin', NULL, '2017-09-06 15:57:51', '2017-09-06 15:57:51'),
(32, 'rowena.conn', '$2y$10$yRP3U4RVwWhNO5/2i4inS.rylorHGMEEHUgrwYPVJR4ZA3UVOW/Ay', '3pvpMz7b', 'O\'Kon Group', 'rempel.wilfred@hotmail.com', 'Keven Abbott', NULL, '2017-09-06 15:57:52', '2017-09-06 15:57:52'),
(33, 'stanford.aufderhar', '$2y$10$kP2NgIow1WvkLL4OWrgOBuRL3P/rZD463txvQRs5ojCOc9J9Q2p3G', 'NtfncRbN', 'Kshlerin LLC', 'jerald.boyer@halvorson.org', 'Rene Gerhold', NULL, '2017-09-06 15:57:52', '2017-09-06 15:57:52'),
(34, 'gbauch', '$2y$10$MMnvPQqUznWlzcK4whXoMOF.sVclvRG1T1dATdghSTG4bgvUowdUi', 'jwOdfLgI', 'Volkman-Heller', 'angelica29@flatley.net', 'Hank Beer', NULL, '2017-09-06 15:57:52', '2017-09-06 15:57:52'),
(35, 'reichmann', '$2y$10$l8.weQIcunZKRGNyjc7c.uaqTqC2TKB0FxblzxEl2idjAXKIyBIwe', 'plXZz8LG', 'Kshlerin, Harvey and Turcotte', 'wchamplin@windler.com', 'Mercedes McLaughlin', NULL, '2017-09-06 15:57:52', '2017-09-06 15:57:52'),
(36, 'dorthy27', '$2y$10$9FzFWKCEkbwSw5qB.Cwna.cZ8eUVyTkfVx0H0qZwCVZ.7LHmGJ0fe', 'HxdrFfID', 'Murazik, Osinski and Walker', 'zsporer@yahoo.com', 'Darrion Lind', NULL, '2017-09-06 15:57:52', '2017-09-06 15:57:52'),
(37, 'alden.auer', '$2y$10$.QH2BisrI9PVI81sVE9u9uWUELwSF4US7mjGkZ0iegpWSJn.IDxxW', 'hcPXv4hy', 'Gleichner, Lehner and Paucek', 'fdurgan@hotmail.com', 'Randall Stracke', NULL, '2017-09-06 15:57:53', '2017-09-06 15:57:53'),
(38, 'fswaniawski', '$2y$10$96LJg7uO4AXJqgvpOPE8ce4/hLFbFXPm9Pj1URWDnChTELlLZmlzW', '1k2Ufc7a', 'Watsica, Treutel and Bins', 'frosenbaum@gmail.com', 'Saul O\'Conner', NULL, '2017-09-06 15:57:53', '2017-09-06 15:57:53'),
(39, 'ycole', '$2y$10$NQFXrn2UovvYil8CceUaW./kE0zXF8kE4PvIuUHTZIgaUbeg.DWQG', '0ni4NbbR', 'Boyle Ltd', 'sophie36@moore.com', 'Kariane Bradtke', NULL, '2017-09-06 15:57:53', '2017-09-06 15:57:53'),
(40, 'vfeil', '$2y$10$Z.hz5eX63YNNWuUvSzJbIOrU3C6S8NH5S5dJxUCNUqtdla907XJjG', 'n6SwnCvi', 'Reichel, Vandervort and Hartmann', 'rohan.kathleen@cassin.info', 'Angelica Kozey', NULL, '2017-09-06 15:57:53', '2017-09-06 15:57:53'),
(41, 'xbednar', '$2y$10$S25Hcb6sEN2y3loGPpEfUeXWSzBap10Gmng/lEoU1tJx3SK7hzaSG', 'MF9IXaLb', 'Lynch-Spinka', 'winifred.schmidt@welch.com', 'Virgil Hoeger', NULL, '2017-09-06 15:57:54', '2017-09-06 15:57:54'),
(42, 'qbuckridge', '$2y$10$vhBanCAimo6MoSbX1WnbZuj4ZbF/aVgaljH.nI2PV3c/szpjzMVoe', 'XGSRuI37', 'Ritchie-Hermiston', 'kassulke.cristopher@willms.com', 'Shakira Wyman', NULL, '2017-09-06 15:57:54', '2017-09-06 15:57:54'),
(43, 'eldora.lynch', '$2y$10$dbsuRdzfBabMux3jOWqOvebLU6PqId9jH7WSCY9MRIT8AWvoCKIQa', 'weRC7Ugr', 'Jacobs, Kessler and Miller', 'hettinger.rosalind@hotmail.com', 'Isabell Torphy', NULL, '2017-09-06 15:57:54', '2017-09-06 15:57:54'),
(44, 'adan.wiegand', '$2y$10$NzSF0FCB2S8LwwhMsbywKemguKKHcWwLR2cva8VrswrcrebucYKlq', '1caHrwtO', 'Feeney PLC', 'waino.goldner@yahoo.com', 'Gino Simonis', NULL, '2017-09-06 15:57:54', '2017-09-06 15:57:54'),
(45, 'earl.reinger', '$2y$10$3Bk4wQMpNU54V5.zkerjfu9TGAfvLRiMqSl2cKEeXuLuVnyc4DmNe', 'cQNlmO96', 'Schowalter-Effertz', 'borer.trace@gmail.com', 'Ewell Homenick', NULL, '2017-09-06 15:57:54', '2017-09-06 15:57:54'),
(46, 'cremin.jesus', '$2y$10$5E./ok5QMqZ8Tk4mzrt5kuA0d7c6kwJpitkGokAxRrrs5UVo7k9x6', 'VxLpuYlr', 'Lebsack, Beier and Lind', 'vlebsack@hotmail.com', 'Rylee Boyer', NULL, '2017-09-06 15:57:55', '2017-09-06 15:57:55'),
(47, 'williamson.ida', '$2y$10$8lkCUBORmsou4y9q/tIZy.HryoZIJC26BEpMiZoubApnBvXwEADqS', 'SZjZITgq', 'Hartmann, Kohler and Goyette', 'duncan76@yahoo.com', 'Agustina Kulas', NULL, '2017-09-06 15:57:55', '2017-09-06 15:57:55'),
(48, 'wilbert25', '$2y$10$wuVBayagLAnvC3J86gzvnecNsx.SzMZCxAmBdAKfibA4x.NANFdA2', 'fyAZnf6N', 'Smith and Sons', 'cydney.zemlak@hotmail.com', 'Aida Dicki', NULL, '2017-09-06 15:57:55', '2017-09-06 15:57:55'),
(49, 'vpredovic', '$2y$10$L0BQYNmXzmNi86vUt46D9..zf1qmxvqSNejB6wBVddsnE8d6qMqyO', 'iNNQBgmO', 'Gerlach-Marquardt', 'welch.dandre@gmail.com', 'Elisabeth Wilkinson', NULL, '2017-09-06 15:57:55', '2017-09-06 15:57:55'),
(50, 'avery.rowe', '$2y$10$qPfWQbVIKYTgTNn8PoKDG.Lr1/C1nbRAH.HESDISRYOIvh/iebbnu', 'N2Q1s2u5', 'Cartwright, Jacobs and Schuster', 'carroll.annabelle@gmail.com', 'Lia Schaden', NULL, '2017-09-06 15:57:56', '2017-09-06 15:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `students_subjects`
--

CREATE TABLE `students_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students_subjects`
--

INSERT INTO `students_subjects` (`id`, `student_id`, `subject_id`) VALUES
(1, 1, 118),
(2, 1, 134),
(3, 1, 114),
(4, 1, 44),
(5, 1, 88),
(6, 1, 61),
(7, 2, 17),
(8, 2, 13),
(9, 2, 141),
(10, 2, 11),
(11, 2, 102),
(12, 2, 75),
(13, 3, 47),
(14, 3, 101),
(15, 3, 98),
(16, 3, 141),
(17, 3, 148),
(18, 3, 39),
(19, 4, 144),
(20, 4, 43),
(21, 4, 50),
(22, 4, 108),
(23, 4, 132),
(24, 4, 22),
(25, 5, 97),
(26, 5, 16),
(27, 5, 37),
(28, 5, 72),
(29, 5, 58),
(30, 5, 43),
(31, 6, 78),
(32, 6, 106),
(33, 6, 112),
(34, 6, 62),
(35, 6, 66),
(36, 6, 119),
(37, 7, 28),
(38, 7, 28),
(39, 7, 58),
(40, 7, 25),
(41, 7, 151),
(42, 7, 138),
(43, 8, 28),
(44, 8, 145),
(45, 8, 84),
(46, 8, 21),
(47, 8, 32),
(48, 8, 65),
(49, 9, 9),
(50, 9, 39),
(51, 9, 45),
(52, 9, 108),
(53, 9, 21),
(54, 9, 147),
(55, 10, 122),
(56, 10, 23),
(57, 10, 137),
(58, 10, 51),
(59, 10, 76),
(60, 10, 132),
(61, 11, 126),
(62, 11, 35),
(63, 11, 125),
(64, 11, 20),
(65, 11, 3),
(66, 11, 134),
(67, 12, 80),
(68, 12, 10),
(69, 12, 30),
(70, 12, 138),
(71, 12, 161),
(72, 12, 16),
(73, 13, 58),
(74, 13, 82),
(75, 13, 16),
(76, 13, 31),
(77, 13, 19),
(78, 13, 85),
(79, 14, 27),
(80, 14, 133),
(81, 14, 95),
(82, 14, 18),
(83, 14, 7),
(84, 14, 153),
(85, 15, 54),
(86, 15, 164),
(87, 15, 10),
(88, 15, 3),
(89, 15, 75),
(90, 15, 66),
(91, 16, 12),
(92, 16, 7),
(93, 16, 92),
(94, 16, 7),
(95, 16, 69),
(96, 16, 77),
(97, 17, 120),
(98, 17, 21),
(99, 17, 154),
(100, 17, 45),
(101, 17, 93),
(102, 17, 63),
(103, 18, 162),
(104, 18, 150),
(105, 18, 26),
(106, 18, 5),
(107, 18, 65),
(108, 18, 60),
(109, 19, 16),
(110, 19, 128),
(111, 19, 84),
(112, 19, 16),
(113, 19, 79),
(114, 19, 141),
(115, 20, 30),
(116, 20, 13),
(117, 20, 148),
(118, 20, 162),
(119, 20, 123),
(120, 20, 127),
(121, 21, 74),
(122, 21, 61),
(123, 21, 10),
(124, 21, 26),
(125, 21, 119),
(126, 21, 122),
(127, 22, 74),
(128, 22, 114),
(129, 22, 135),
(130, 22, 52),
(131, 22, 127),
(132, 22, 59),
(133, 23, 54),
(134, 23, 132),
(135, 23, 60),
(136, 23, 100),
(137, 23, 56),
(138, 23, 71),
(139, 24, 11),
(140, 24, 69),
(141, 24, 74),
(142, 24, 151),
(143, 24, 39),
(144, 24, 43),
(145, 25, 124),
(146, 25, 80),
(147, 25, 115),
(148, 25, 17),
(149, 25, 139),
(150, 25, 138),
(151, 26, 134),
(152, 26, 67),
(153, 26, 135),
(154, 26, 35),
(155, 26, 69),
(156, 26, 25),
(157, 27, 44),
(158, 27, 53),
(159, 27, 141),
(160, 27, 131),
(161, 27, 47),
(162, 27, 62),
(163, 28, 160),
(164, 28, 52),
(165, 28, 76),
(166, 28, 17),
(167, 28, 19),
(168, 28, 29),
(169, 29, 147),
(170, 29, 117),
(171, 29, 20),
(172, 29, 57),
(173, 29, 30),
(174, 29, 154),
(175, 30, 54),
(176, 30, 49),
(177, 30, 67),
(178, 30, 162),
(179, 30, 98),
(180, 30, 164),
(181, 31, 28),
(182, 31, 95),
(183, 31, 42),
(184, 31, 150),
(185, 31, 93),
(186, 31, 153),
(187, 32, 26),
(188, 32, 3),
(189, 32, 31),
(190, 32, 127),
(191, 32, 106),
(192, 32, 127),
(193, 33, 21),
(194, 33, 51),
(195, 33, 92),
(196, 33, 25),
(197, 33, 160),
(198, 33, 45),
(199, 34, 40),
(200, 34, 102),
(201, 34, 136),
(202, 34, 143),
(203, 34, 89),
(204, 34, 25),
(205, 35, 47),
(206, 35, 136),
(207, 35, 132),
(208, 35, 35),
(209, 35, 71),
(210, 35, 59),
(211, 36, 142),
(212, 36, 127),
(213, 36, 143),
(214, 36, 30),
(215, 36, 12),
(216, 36, 49),
(217, 37, 113),
(218, 37, 86),
(219, 37, 45),
(220, 37, 124),
(221, 37, 79),
(222, 37, 16),
(223, 38, 132),
(224, 38, 102),
(225, 38, 56),
(226, 38, 20),
(227, 38, 85),
(228, 38, 141),
(229, 39, 141),
(230, 39, 52),
(231, 39, 123),
(232, 39, 154),
(233, 39, 23),
(234, 39, 148),
(235, 40, 56),
(236, 40, 137),
(237, 40, 126),
(238, 40, 97),
(239, 40, 107),
(240, 40, 164),
(241, 41, 137),
(242, 41, 100),
(243, 41, 84),
(244, 41, 69),
(245, 41, 155),
(246, 41, 110),
(247, 42, 43),
(248, 42, 91),
(249, 42, 30),
(250, 42, 163),
(251, 42, 125),
(252, 42, 61),
(253, 43, 24),
(254, 43, 50),
(255, 43, 56),
(256, 43, 57),
(257, 43, 152),
(258, 43, 133),
(259, 44, 139),
(260, 44, 73),
(261, 44, 20),
(262, 44, 39),
(263, 44, 103),
(264, 44, 22),
(265, 45, 135),
(266, 45, 132),
(267, 45, 85),
(268, 45, 63),
(269, 45, 102),
(270, 45, 38),
(271, 46, 143),
(272, 46, 109),
(273, 46, 101),
(274, 46, 120),
(275, 46, 87),
(276, 46, 155),
(277, 47, 64),
(278, 47, 5),
(279, 47, 136),
(280, 47, 113),
(281, 47, 9),
(282, 47, 55),
(283, 48, 102),
(284, 48, 142),
(285, 48, 31),
(286, 48, 62),
(287, 48, 41),
(288, 48, 156),
(289, 49, 146),
(290, 49, 61),
(291, 49, 91),
(292, 49, 149),
(293, 49, 124),
(294, 49, 6),
(295, 50, 144),
(296, 50, 34),
(297, 50, 144),
(298, 50, 96),
(299, 50, 11),
(300, 50, 134);

-- --------------------------------------------------------

--
-- Table structure for table `students_surveys`
--

CREATE TABLE `students_surveys` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `survey_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_class_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_quantity` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `code`, `name`, `subject_class_code`, `student_quantity`, `teacher_name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ELF2040', 'Điện tử tương tự', 'ELF2040 1', '62', 'ThS.Nguyễn Vinh Quang', 2, NULL, NULL),
(2, 'ELF2041', 'Điện tử số', 'ELF2041 1', '62', 'ThS.Phạm Đình Tuân', 2, NULL, NULL),
(3, 'ELT 3046', 'Mạng truyền thông máy tính 1', 'ELT 3046 1', '80', 'ThS.Đinh Thị Thái Mai', 2, NULL, NULL),
(4, 'ELT 3048', 'Hệ thống vi xử lý', 'ELT 3048 1', '71', 'PGS.TS.Trần Đức Tân', 2, NULL, NULL),
(5, 'ELT 3051', 'Kỹ thuật điều khiển', 'ELT 3051 1', '80', 'ThS.Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(6, 'ELT2028', 'Chuyên nghiệp trong Công nghệ', 'ELT2028', '54', 'TS.Phạm Minh Triển', 2, NULL, NULL),
(7, 'ELT2030', 'Kỹ thuật điện', 'ELT2030 1', '17', 'PGS.TS.Chử Đức Trình', 2, NULL, NULL),
(8, 'ELT2031', 'Mô hình hóa và mô phỏng', 'ELT2031 1', '70', 'TS.Hoàng Văn Xiêm', 2, NULL, NULL),
(9, 'ELT2031', 'Mô hình hóa và mô phỏng', 'ELT2031 2', '25', 'TS.Hoàng Văn Xiêm', 2, NULL, NULL),
(10, 'ELT2031', 'Mô hình hóa và mô phỏng', 'ELT2031 3', '72', 'ThS.Đinh Thị Thái Mai', 2, NULL, NULL),
(11, 'ELT2032', 'Linh kiện điện tử', 'ELT2032 1', '17', 'TS.Nguyễn Thăng Long', 2, NULL, NULL),
(12, 'ELT2033', 'Kỹ thuật điện tử', 'ELT2033 1', '40', 'TS. Phùng Mạnh Dương', 2, NULL, NULL),
(13, 'ELT2034', 'Thiết kế điện tử số', 'ELT2034 1', '50', 'ThS. Nguyễn Vinh Quang', 2, NULL, NULL),
(14, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 1', '90', 'TS.Nguyễn Hồng Thịnh', 2, NULL, NULL),
(15, 'ELT2036', 'Kỹ thuật điện từ', 'ELT2036 1', '62', 'TS.Trần Cao Quyền', 2, NULL, NULL),
(16, 'ELT2036', 'Kỹ thuật điện từ', 'ELT2036 2', '17', 'TS.Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(17, 'ELT2040', 'Điện tử tương tự', 'ELT2040', '28', 'ThS.Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(18, 'ELT3043', 'Truyền thông', 'ELT3043', '30', 'TS.Đinh Triều Dương', 2, NULL, NULL),
(19, 'ELT3044', 'Xử lý tín hiệu số', 'ELT3044 1', '80', 'TS.Nguyễn Hồng Thịnh', 2, NULL, NULL),
(20, 'ELT3044', 'Xử lý tín hiệu số', 'ELT3044 2', '70', 'TS.Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(21, 'ELT3044', 'Xử lý tín hiệu số', 'ELT3044 3', '30', 'PGS.TS.Nguyễn Linh Trung & PGS.TS.Trần Đức Tân', 2, NULL, NULL),
(22, 'ELT3045', 'Nhập môn hệ thống và mạch cao tần', 'ELT3045 1', '50', 'TS.Trần Cao Quyền', 2, NULL, NULL),
(23, 'ELT3046', 'Mạng truyền thông máy tính 1', 'ELT3046', '30', 'TS.Nguyễn Nam Hoàng PGS.TS.Nguyễn Quốc Tuấn', 2, NULL, NULL),
(24, 'ELT3047', 'Kiến trúc máy tính', 'ELT3047', '30', 'PGS. Trần Quang Vinh & ThS.Đặng Anh Việt', 2, NULL, NULL),
(25, 'ELT3051', 'Kỹ thuật điều khiển', 'ELT3051', '30', 'TS.Phùng Mạnh Dương & ThS.Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(26, 'ELT3057', 'Truyền thông số mã hóa', 'ELT3057 1', '50', 'PGS.TS.Trịnh Anh Vũ', 2, NULL, NULL),
(27, 'ELT3057', 'Truyền thông số và mã hóa ', 'ELT3057 2', '25', 'PGS.TS.Trịnh Anh Vũ', 2, NULL, NULL),
(28, 'ELT3057', 'Truyền thông số và mã hóa', 'ELT3057 3', '80', 'TS.Hoàng Văn Xiêm', 2, NULL, NULL),
(29, 'ELT3060', 'Kỹ thuật cao tần', 'ELT3060 1', '50', 'TS.Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(30, 'ELT3067', 'Truyền thông quang', 'ELT3067 1', '70', 'ThS.Bùi Trung Ninh', 2, NULL, NULL),
(31, 'ELT3071', 'Hệ thống nhúng thời gian thực', 'ELT3071 1', '71', 'ThS.Đặng Anh Việt', 2, NULL, NULL),
(32, 'ELT3079', 'Thiết kế mạch tích hợp số', 'ELT3079 1', '25', 'PGS.TS.Bạch Gia Dương', 2, NULL, NULL),
(33, 'ELT3079', 'Thiết kế mạch tích hợp số', 'ELT3079 2', '20', 'PGS.TS.Trần Xuân Tú & TS.Nguyễn Kiêm Hùng', 2, NULL, NULL),
(34, 'ELT3080', 'Truyền thông di động', 'ELT3080 1', '56', 'TS.Nguyễn Nam Hoàng & ThS.Đinh Thị Thái Mai', 2, NULL, NULL),
(35, 'ELT3102', 'Thực tập Kỹ thuật Điện tử tương tự', 'ELT3102 1', '20', 'ThS. Nguyễn Thị Thanh Vân ', 2, NULL, NULL),
(36, 'ELT3103', 'Thực tập Kỹ thuật Điện tử số', 'ELT3103 1', '20', 'ThS. Nguyễn Thị Thanh Vân ', 2, NULL, NULL),
(37, 'ELT3144', 'Xử lý tín hiệu số', 'ELT3144 1', '70', 'PGS.TS.Trần Đức Tân', 2, NULL, NULL),
(38, 'ELT3144', 'Xử lý tín hiệu số', 'ELT3144 2', '80', 'TS.Nguyễn Hồng Thịnh', 2, NULL, NULL),
(39, 'ELT4053', 'Khóa luận tốt nghiệp', 'ELT4053 1', '40', 'ĐTVT', 2, NULL, NULL),
(40, 'EMA2004', 'Cơ học môi trường liên tục', 'EMA2004 1', '70', 'GS.TSKH.Nguyễn Đình Đức', 3, NULL, NULL),
(41, 'EMA2005', 'Kỹ thuật điện và điện tử', 'EMA2005 1', '70', 'TS.Bùi Thanh Tùng', 3, NULL, NULL),
(42, 'EMA2011', 'Phương pháp tính trong kỹ thuật', 'EMA2011 1', '70', 'PGS.TS.Đặng Thế Ba', 3, NULL, NULL),
(43, 'EMA2015', 'Phương pháp thực nghiệm trong cơ học', 'EMA2015 1', '70', 'GS.TSKH.Nguyễn Tiến Khiêm', 3, NULL, NULL),
(44, 'EMA2017', 'Nhiệt động lực học kỹ thuật', 'EMA2017 1', '70', 'PGS.TS.Nguyễn Thế Hiện', 3, NULL, NULL),
(45, 'EMA2022', 'Cơ sở công nghệ chế tạo máy', 'EMA2022 1', '100', 'TS.Trần Anh Quân', 3, NULL, NULL),
(46, 'EMA2024', 'Kỹ thuật đo lường và cảm biến', 'EMA2024 1', '100', 'TS.Nguyễn Ngọc Linh', 3, NULL, NULL),
(47, 'EMA2026', 'Cơ sở kỹ thuật điện', 'EMA2026 1', '70', 'PGS.TS.Chử Đức Trình', 3, NULL, NULL),
(48, 'EMA2027', 'Nhập môn cơ điện tử', 'EMA2027 1', '70', 'TS.Đỗ Trần Thắng', 3, NULL, NULL),
(49, 'EMA2027', 'Nhập môn cơ điện tử', 'EMA2027 2', '100', 'TS.Đỗ Trần Thắng', 3, NULL, NULL),
(50, 'EMA2030', 'Cơ sở dữ liệu và GIS', 'EMA2030 1', '70', 'PGS.TS.Nguyễn Thị Việt Liên', 3, NULL, NULL),
(51, 'EMA2032', 'Hình hoạ kỹ thuật và CAD', 'EMA2032 1', '70', 'ThS.Nguyễn Cao Sơn', 3, NULL, NULL),
(52, 'EMA2033', 'Cơ sở thiết kế máy', 'EMA2033 1', '70', 'ThS.Vũ Thị Thùy Anh', 3, NULL, NULL),
(53, 'EMA2033', 'Cơ sở thiết kế máy', 'EMA2033 2', '100', 'ThS.Vũ Thị Thùy Anh', 3, NULL, NULL),
(54, 'EMA2037', 'Cơ học kỹ thuật 2', 'EMA2037 1', '70', 'TS.Bùi Hồng Sơn', 3, NULL, NULL),
(55, 'EMA2037', 'Cơ học kỹ thuật 2', 'EMA2037 2', '70', 'PGS.TS.Đào Như Mai', 3, NULL, NULL),
(56, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 1', '54', 'ThS.Hoàng Thị Điệp', 3, NULL, NULL),
(57, 'EMA3015', 'Cơ học vật liệu composite', 'EMA3015 1', '30', 'ThS. Nguyễn Cao Sơn', 3, NULL, NULL),
(58, 'EMA3020', 'Robot', 'EMA3020 1', '30', 'TS. Đỗ Trần Thắng', 3, NULL, NULL),
(59, 'EMA3049', 'Thực tập kỹ thuật định hướng Thủy khí công nghiệp và môi trường', 'EMA3049 1', '30', 'Khoa CHKT', 3, NULL, NULL),
(60, 'EMA3050', 'Thực tập kỹ thuật định hướng Cơ học kỹ thuật biển', 'EMA3050 1', '30', 'Khoa CHKT', 3, NULL, NULL),
(61, 'EMA3051', 'Thực tập kỹ thuật định hướng Cơ điện tử', 'EMA3051 1', '30', 'Khoa CHKT', 3, NULL, NULL),
(62, 'EMA3053', 'Thực tập tốt nghiệp định hướng Thủy khí công nghiệp và môi trường', 'EMA3053 1', '30', 'Khoa CHKT', 3, NULL, NULL),
(63, 'EMA3054', 'Thực tập tốt nghiệp định hướng Cơ học kỹ thuật biển', 'EMA3054 1', '30', 'Khoa CHKT', 3, NULL, NULL),
(64, 'EMA3055', 'Thực tập tốt nghiệp định hướng Cơ điện tử', 'EMA3055 1', '30', 'Thực tập theo lịch của Khoa CHKT', 3, NULL, NULL),
(65, 'EMA3063', 'Điều khiển kết cấu', 'EMA3063 1', '30', 'TS. Lã Đức Việt', 3, NULL, NULL),
(66, 'EMA3064', 'Điều khiển điện, thuỷ khí', 'EMA3064 1', '35', 'TS.Nguyễn Hoàng Quân', 3, NULL, NULL),
(67, 'EMA3068', 'Động cơ và cơ sở truyền động điện', 'EMA3068 1', '30', 'TS. Nguyễn Ngọc Linh', 3, NULL, NULL),
(68, 'EMA3087', 'Mô phỏng và thiết kế robot', 'EMA3087 1', '35', 'TS.Đỗ Trần Thắng', 3, NULL, NULL),
(69, 'EMA3089', 'Vi điều khiển và hệ thống nhúng', 'EMA3089 1', '35', 'PGS.TS.Phạm Mạnh Thắng & ThS.Hoàng Văn Mạnh', 3, NULL, NULL),
(70, 'EMA3090', 'Kỹ thuật hiển thị máy tính', 'EMA3090 1', '70', 'PGS.TS.Đinh Văn Mạnh', 3, NULL, NULL),
(71, 'EMA3092', 'Động lực học - môi trường không khí và đồ án', 'EMA3092 1', '30', 'GS. TSKH. Dương Ngọc Hải & PGS. TS. Đặng Thế Ba', 3, NULL, NULL),
(72, 'EMA3122', 'Ổn định tĩnh của kết cấu', 'EMA3122 1', '30', 'TS. Đoàn Hồng Đức', 3, NULL, NULL),
(73, 'EMA3123', 'Ổn định động lực học của kết cấu', 'EMA3123 1', '30', 'GS. TSKH. Nguyễn Đình Đức & CN.Trần Quốc Quân', 3, NULL, NULL),
(74, 'EMA3126', 'Thực tập kỹ thuật định hướng Vật liệu và kết cấu tiên tiến', 'EMA3126 1', '30', 'Khoa CHKT', 3, NULL, NULL),
(75, 'EMA3127', 'Thực tập tốt nghiệp định hướng Vật liệu và kết cấu tiên tiến', 'EMA3127 1', '30', 'Khoa CHKT', 3, NULL, NULL),
(76, 'EMA4001', 'Thực tập kỹ thuật', 'EMA4001 1', '78', 'Khoa CHKT', 3, NULL, NULL),
(77, 'EMA4002', 'Thực tập xưởng', 'EMA4002 1', '78', 'Khoa CHKT', 3, NULL, NULL),
(78, 'EPN2001', 'Các phương pháp phân tích vật liệu', 'EPN2001 1', '34', 'PGS.TS.Nguyễn Phương Hoài Nam', 3, NULL, NULL),
(79, 'EPN2005', 'Quang điện tử', 'EPN2005 1', '34', 'TS.Trần Quốc Tiến', 3, NULL, NULL),
(80, 'EPN2006', 'Thực hành công nghệ', 'EPN2006 1', '34', 'TS.Phạm Thị Thu Trang', 3, NULL, NULL),
(81, 'EPN2006', 'Thực hành công nghệ', 'EPN2006 2', '34', 'ThS.Nguyễn Thị Minh Hồng', 3, NULL, NULL),
(82, 'EPN2006', 'Thực hành công nghệ', 'EPN2006 3', '34', 'TS.Lê Thị Hiên', 3, NULL, NULL),
(83, 'EPN2007', 'Thông tin quang', 'EPN2007 1', '34', 'PGS.TS.Vũ Doãn Miên', 3, NULL, NULL),
(84, 'EPN2009', 'Tin học vật lý', 'EPN2009 1', '34', 'TS.Bùi Đình Tú', 3, NULL, NULL),
(85, 'EPN2011', 'Vật l‎ý các hiện tượng từ và ứng dụng', 'EPN2011 1', '54', 'PGS.TS.Phạm Đức Thắng', 3, NULL, NULL),
(86, 'EPN2015', 'Vật lý lượng tử', 'EPN2015 1', '54', 'PGS.TS.Nguyễn Thị Bảo Ngọc', 3, NULL, NULL),
(87, 'EPN2017', 'Khoa học vật liệu đại cương', 'EPN2017 1', '54', 'GS.TS.Nguyễn Năng Định', 3, NULL, NULL),
(88, 'EPN2024', 'Cơ sở vật lý của một số thiết bị y tế', 'EPN2024 1', '34', 'PGS.TS.Phạm Đức Thắng', 3, NULL, NULL),
(89, 'EPN2051', 'Seminar và thảo luận nhóm về công nghệ nano và ứng dụng', 'EPN2051 1', '34', 'PGS.TS.Nguyễn Phương Hoài Nam &TS.Phạm Thị Thu Trang', 3, NULL, NULL),
(90, 'EPN3040', 'Polyme dẫn', 'EPN3040 1', ' 10', 'PGS.TS.Nguyễn Kiên Cường', 3, NULL, NULL),
(91, 'EPN3042', 'Niên luận ', 'EPN3042 1', '10 ', 'TS.Lê Thị Hiên', 3, NULL, NULL),
(92, 'EPN3050', 'Công nghệ chế tạo pin mặt trời', 'EPN3050 1', ' 10', 'GS.TS.Nguyễn Năng Định & TS.Phạm Thị Thu Trang', 3, NULL, NULL),
(93, 'INT1006', 'Tin học cơ sở 4', 'INT1006 1', '90', 'TS.Vũ Thị Hồng Nhạn', 1, NULL, NULL),
(94, 'INT1006', 'Tin học cơ sở 4', 'INT1006 2', '80', 'TS.Bùi Ngọc Thăng', 1, NULL, NULL),
(95, 'INT1050', 'Toán học rời rạc', 'INT1050 2', '90', 'TS.Đỗ Đức Đông', 1, NULL, NULL),
(96, 'INT1050', 'Toán học rời rạc', 'INT1050 3', '80', 'TS.Đặng Thanh Hải', 1, NULL, NULL),
(97, 'INT1050', 'Toán học rời rạc', 'INT1050 5', '80', 'TS.Lê Phê Đô', 1, NULL, NULL),
(98, 'INT2038', 'Quản lý dự án HTTT', 'INT2038 1', '40', 'PGS.TS.Nguyễn Ngọc Hóa', 1, NULL, NULL),
(99, 'INT2044', 'Lý thuyết thông tin', 'INT2044 1', '55', 'TS.Lê Nguyên Khôi', 1, NULL, NULL),
(100, 'INT2202', 'Lập trình nâng cao', 'INT2202 1', '80', 'TS.Nguyễn Văn Vinh', 1, NULL, NULL),
(101, 'INT2202', 'Lập trình nâng cao', 'INT2202 3', '90', 'TS.Trần Thị Minh Châu', 1, NULL, NULL),
(102, 'INT2202', 'Lập trình nâng cao', 'INT2202 4', '60', 'TS.Lê Quang Hiếu', 1, NULL, NULL),
(103, 'INT2203', 'Cấu trúc dữ liệu và giải thuật', 'INT2203 2', '70', 'TS.Nguyễn Thị Nhật Thanh', 1, NULL, NULL),
(104, 'INT2206', 'Nguyên lý hệ điều hành', 'INT2206 1', '80', 'TS.Nguyễn Thị Hậu', 1, NULL, NULL),
(105, 'INT2206', 'Nguyên lý hệ điều hành', 'INT2206 2', '80', 'TS.Phan Xuân Hiếu', 1, NULL, NULL),
(106, 'INT2208', 'Công nghệ phần mềm', 'INT2208 1', '80', 'PGS.TS.Trương Anh Hoàng', 1, NULL, NULL),
(107, 'INT2208', 'Công nghệ phần mềm', 'INT2208 2', '80', 'PGS.TS.Trương Anh Hoàng', 1, NULL, NULL),
(108, 'INT2208', 'Công nghệ phần mềm', 'INT2208 3', '80', 'PGS.TS.Phạm Ngọc Hùng', 1, NULL, NULL),
(109, 'INT2209', 'Mạng máy tính', 'INT2209 1', '80', 'TS.Nguyễn Văn Nam', 1, NULL, NULL),
(110, 'INT2209', 'Mạng máy tính', 'INT2209 2', '80', 'ThS.Hồ Đắc Phương', 1, NULL, NULL),
(111, 'INT2209', 'Mạng máy tính', 'INT2209 3', '80', 'TS.Nguyễn Hoài Sơn', 1, NULL, NULL),
(112, 'INT3106', 'Phương pháp hình thức', 'INT3106 1', '70', 'TS.Đặng Văn Hưng', 1, NULL, NULL),
(113, 'INT3108', 'Lập trình nhúng và thời gian thực ', 'INT3108 1', '75', 'ThS.Nguyễn Việt Tân', 1, NULL, NULL),
(114, 'INT3109', 'Thu thập và phân tích yêu cầu', 'INT3109 1', '75', 'TS.Đặng Đức Hạnh', 1, NULL, NULL),
(115, 'INT3110', 'Phân tích và thiết kế hướng đối tượng', 'INT3110 1', '80', 'PGS.TS.Trương Ninh Thuận', 1, NULL, NULL),
(116, 'INT3110', 'Phân tích và thiết kế hướng đối tượng', 'INT3110 2', '80', 'TS.Tô Văn Khánh', 1, NULL, NULL),
(117, 'INT3110', 'Phân tích và thiết kế hướng đối tượng', 'INT3110 3', '80', 'TS.Tô Văn Khánh', 1, NULL, NULL),
(118, 'INT3201', 'Cơ sở các HTTT', 'INT3201 1', '50', 'PGS.TS.Hà Quang Thụy', 1, NULL, NULL),
(119, 'INT3202', 'Hệ quản trị cơ sở dữ liệu', 'INT3202 1', '80', 'ThS.Lê Hồng Hải', 1, NULL, NULL),
(120, 'INT3202', 'Hệ quản trị cơ sở dữ liệu', 'INT3202 2', '80', 'ThS.Lê Hồng Hải', 1, NULL, NULL),
(121, 'INT3206', 'Cơ sở dữ liệu phân tán', 'INT3206 1', '75', 'ThS.Vũ Bá Duy', 1, NULL, NULL),
(122, 'INT3207', 'Kho dữ liệu', 'INT3207 1', '75', 'TS.Bùi Quang Hưng', 1, NULL, NULL),
(123, 'INT3208', 'Xử lý phân tích thông tin trực tuyến', 'INT3208 1', '40', 'PGS.TS.Nguyễn Trí Thành', 1, NULL, NULL),
(124, 'INT3213', 'Nhập môn an toàn thông tin', 'INT3213 1', '50', 'PGS.TS.Trịnh Nhật Tiến', 1, NULL, NULL),
(125, 'INT3216', 'Phân tích, đánh giá hiệu năng hệ thống máy tính', 'INT3216 1', '50', 'PGS.TS. Nguyễn Hải Châu', 1, NULL, NULL),
(126, 'INT3301', 'Thực hành hệ điều hành mạng', 'INT3301 1', '35', 'TS.Lê Đình Thanh', 1, NULL, NULL),
(127, 'INT3303', 'Mạng không dây', 'INT3303 1', '50', 'TS.Nguyễn Hoài Sơn', 1, NULL, NULL),
(128, 'INT3305', 'Thực hành an ninh mạng', 'INT3305 1', '35', 'TS.Nguyễn Đại Thọ', 1, NULL, NULL),
(129, 'INT3307', 'An toàn và an ninh Mạng ', 'INT3307 1', '56', 'TS.Nguyễn Đại Thọ', 1, NULL, NULL),
(130, 'INT3310', 'Quản trị Mạng', 'INT3310 1', '50', 'ThS.Đinh Hữu Nghĩa', 1, NULL, NULL),
(131, 'INT3313', 'Các vấn đề hiện đại của Truyền thông và Mạng máy tính', 'INT3313 1', '25', 'TS.Dương Lê Minh', 1, NULL, NULL),
(132, 'INT3313', 'Các vấn đề hiện đại của Truyền thông và Mạng máy tính', 'INT3313 2', '25', 'TS.Nguyễn Đại Thọ', 1, NULL, NULL),
(133, 'INT3318', 'Các thiết bị mạng và môi trường truyền', 'INT3318 1', '70', 'ThS.Ngô Lê Minh', 1, NULL, NULL),
(134, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 1', '80', 'PGS.TS.Phạm Bảo Sơn', 1, NULL, NULL),
(135, 'INT3402', 'Chương trình dịch', 'INT3402 1', '50', 'PGS.TS.Nguyễn Phương Thái', 1, NULL, NULL),
(136, 'INT3403', 'Đồ họa máy tính', 'INT3403 1', '70', 'TS.Ma Thị Châu', 1, NULL, NULL),
(137, 'INT3403', 'Đồ họa máy tính', 'INT3403 2', '50', 'PGS.TS.Phạm Bảo Sơn', 1, NULL, NULL),
(138, 'INT3404', 'Xử lý ảnh', 'INT3404 1', '50', 'TS.Lê Thanh Hà', 1, NULL, NULL),
(139, 'INT3405', 'Học máy', 'INT3405 1', '50', 'PGS.TS.Hoàng Xuân Huấn', 1, NULL, NULL),
(140, 'INT3414', 'Chuyên đề Công nghệ', 'INT3414 1', '50', 'TS.Trần Quốc Long', 1, NULL, NULL),
(141, 'INT3505', 'Kiến trúc hướng dịch vụ', 'INT3505 1', '70', 'TS.Võ Đình Hiếu', 1, NULL, NULL),
(142, 'INT3506', 'Các hệ thống thương mại điện tử', 'INT3506 1', '70', 'TS.Trần Trọng Hiếu', 1, NULL, NULL),
(143, 'INT3506', 'Các hệ thống thương mại điện tử', 'INT3506 2', '75', 'TS.Bùi Quang Hưng', 1, NULL, NULL),
(144, 'INT3508', 'Thực tập chuyên ngành', 'INT3508 1', '50', 'Khoa CNTT', 1, NULL, NULL),
(145, 'INT3509', 'Dự án', 'INT3509 1', '150', 'CNTT', 1, NULL, NULL),
(146, 'INT3512', 'Lập trình thi đấu', 'INT3512 1', '30', 'ThS.Hồ Đắc Phương', 1, NULL, NULL),
(147, 'INT4050', 'Khóa luận tốt nghiệp', 'INT4050 1', '50', 'CNTT', 1, NULL, NULL),
(148, 'MAT1042', 'Giải tích 2', 'MAT1042 1', '31', 'PGS.TS.Trần Thu Hà', 1, NULL, NULL),
(149, 'MAT1042', 'Giải tích 2', 'MAT1042 2', '80', 'TS.Lã Đức Việt', 1, NULL, NULL),
(150, 'MAT1042', 'Giải tích 2', 'MAT1042 3', '80', 'ThS.Nguyễn Văn Quang', 1, NULL, NULL),
(151, 'MAT1042', 'Giải tích 2', 'MAT1042 8', '90', 'TS.Lê Phê Đô', 1, NULL, NULL),
(152, 'MAT1042', 'Giải tích 2', 'MAT1042 9', '90', 'TS.Lã Đức Việt', 1, NULL, NULL),
(153, 'MAT1093', 'Đại số', 'MAT1093 1', '90', 'TS.Nguyễn Anh Tú', 1, NULL, NULL),
(154, 'MAT1093', 'Đại số', 'MAT1093 2', '90', 'ThS.Hoàng Thế Tuấn', 1, NULL, NULL),
(155, 'MAT1093', 'Đại số', 'MAT1093 3', '90', 'ThS.Hoàng Thế Tuấn', 1, NULL, NULL),
(156, 'MAT1093', 'Đại số', 'MAT1093 4', '90', 'ThS.Dư Thành Hưng', 1, NULL, NULL),
(157, 'MAT1100', 'Tối ưu hóa', 'MAT1100', '54', 'TS.Đỗ Đức Đông', 1, NULL, NULL),
(158, 'MAT1101', 'Xác suất thống kê ', 'MAT1101', '60', 'TS.Đặng Thanh Hải', 1, NULL, NULL),
(159, 'MAT1101', 'Xác suất thống kê', 'MAT1101 1', '80', 'PGS.TS.Lê Sỹ Vinh', 1, NULL, NULL),
(160, 'PHY1100', 'Cơ – Nhiệt', 'PHY1100 4', '90 ', 'PGS.TS.Nguyễn Kiên Cường', 1, NULL, NULL),
(161, 'PHY1103', 'Điện và Quang', 'PHY1103 1', '31', 'PGS.TS. Đỗ Thị Hương Giang', 1, NULL, NULL),
(162, 'PHY1103', 'Điện và Quang', 'PHY1103 2', '80', 'PGS.TS.Hoàng Nam Nhật', 1, NULL, NULL),
(163, 'PHY1103', 'Điện và Quang ', 'PHY1103 3', '80', 'TS.Đặng Đình Long', 1, NULL, NULL),
(164, 'PHY1103', 'Điện và Quang', 'PHY1103 9', '90', 'GS.TS.Nguyễn Năng Định', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects_surveys`
--

CREATE TABLE `subjects_surveys` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `survey_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects_surveys`
--

INSERT INTO `subjects_surveys` (`id`, `subject_id`, `survey_id`) VALUES
(2, 1, 1),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 1),
(8, 7, 1),
(9, 8, 1),
(10, 9, 1),
(11, 10, 1),
(12, 11, 1),
(13, 12, 1),
(14, 13, 1),
(15, 14, 1),
(16, 15, 1),
(17, 16, 1),
(18, 17, 1),
(19, 18, 1),
(20, 19, 1),
(21, 20, 1),
(22, 21, 1),
(23, 22, 1),
(24, 23, 1),
(25, 24, 1),
(26, 25, 1),
(27, 26, 1),
(28, 27, 1),
(29, 28, 1),
(30, 29, 1),
(31, 30, 1),
(32, 31, 1),
(33, 32, 1),
(34, 33, 1),
(35, 34, 1),
(36, 35, 1),
(37, 36, 1),
(38, 37, 1),
(39, 38, 1),
(40, 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` int(10) UNSIGNED NOT NULL,
  `survey_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_day` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `survey_code`, `survey_name`, `expired_day`, `created_at`, `updated_at`) VALUES
(1, '﻿SS0001', '\nKhảo sát môn học cuối học kỳ', '2017-09-01 23:59:59', '2017-09-10 15:12:23', '2017-09-10 15:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `surveys_details`
--

CREATE TABLE `surveys_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `survey_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `student_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_done` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys_details`
--

INSERT INTO `surveys_details` (`id`, `survey_id`, `subject_id`, `student_id`, `is_done`) VALUES
(1, 1, 3, 11, 0),
(2, 1, 3, 15, 0),
(3, 1, 3, 32, 0),
(4, 1, 5, 18, 0),
(5, 1, 5, 47, 0),
(6, 1, 6, 49, 0),
(7, 1, 7, 14, 0),
(8, 1, 7, 16, 0),
(9, 1, 7, 16, 0),
(10, 1, 9, 9, 0),
(11, 1, 9, 47, 0),
(12, 1, 10, 12, 0),
(13, 1, 10, 15, 0),
(14, 1, 10, 21, 0),
(15, 1, 11, 2, 0),
(16, 1, 11, 24, 1),
(17, 1, 11, 50, 0),
(18, 1, 12, 16, 0),
(19, 1, 12, 36, 0),
(20, 1, 13, 2, 0),
(21, 1, 13, 20, 0),
(22, 1, 16, 5, 0),
(23, 1, 16, 12, 0),
(24, 1, 16, 13, 0),
(25, 1, 16, 19, 0),
(26, 1, 16, 19, 0),
(27, 1, 16, 37, 0),
(28, 1, 17, 2, 0),
(29, 1, 17, 25, 0),
(30, 1, 17, 28, 0),
(31, 1, 18, 14, 0),
(32, 1, 19, 13, 0),
(33, 1, 19, 28, 0),
(34, 1, 20, 11, 0),
(35, 1, 20, 29, 0),
(36, 1, 20, 38, 0),
(37, 1, 20, 44, 0),
(38, 1, 21, 8, 0),
(39, 1, 21, 9, 0),
(40, 1, 21, 17, 0),
(41, 1, 21, 33, 0),
(42, 1, 22, 4, 0),
(43, 1, 22, 44, 0),
(44, 1, 23, 10, 0),
(45, 1, 23, 39, 0),
(46, 1, 24, 43, 0),
(47, 1, 25, 7, 0),
(48, 1, 25, 26, 0),
(49, 1, 25, 33, 0),
(50, 1, 25, 34, 0),
(51, 1, 26, 18, 0),
(52, 1, 26, 21, 0),
(53, 1, 26, 32, 0),
(54, 1, 27, 14, 0),
(55, 1, 28, 7, 0),
(56, 1, 28, 7, 0),
(57, 1, 28, 8, 0),
(58, 1, 28, 31, 0),
(59, 1, 29, 28, 0),
(60, 1, 30, 12, 0),
(61, 1, 30, 20, 0),
(62, 1, 30, 29, 0),
(63, 1, 30, 36, 0),
(64, 1, 30, 42, 0),
(65, 1, 31, 13, 0),
(66, 1, 31, 32, 0),
(67, 1, 31, 48, 0),
(68, 1, 32, 8, 0),
(69, 1, 34, 50, 0),
(70, 1, 35, 11, 0),
(71, 1, 35, 26, 0),
(72, 1, 35, 35, 0),
(73, 1, 37, 5, 0),
(74, 1, 38, 45, 0),
(75, 1, 39, 3, 1),
(76, 1, 39, 9, 1),
(77, 1, 39, 24, 0),
(78, 1, 39, 44, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$k/sD1OBlD1mEvxsf89CTpuiqyLDtkPrrZiFuR9.gmkGzqS9FNVb12', 'tXsEXFIgsnF8MqcCVEcbmXhlZYWKjTZLGllSQwkPuvPH0s4nFqlNx6uGYLPU', '2017-09-04 08:21:36', NULL),
(2, 'lamcm', 'lamcm@gmail.com', '$2y$10$dyf72kPcc8J2YvdDvONx1eSImg5yF0xoCJG5KljClFvn9/xtJQ7xe', NULL, '2017-09-04 08:21:36', NULL),
(3, 'huync', 'huync@gmail.com', '$2y$10$hVg5m2oXofWPtFWp5DTjUuN2mdQO8oR7AuNc6ZjphmGf5lzHIKGvK', NULL, '2017-09-04 08:21:36', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_surveys`
--
ALTER TABLE `categories_surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_survey_id_foreign` (`survey_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `students_subjects`
--
ALTER TABLE `students_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_subjects_student_id_foreign` (`student_id`),
  ADD KEY `students_subjects_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `students_surveys`
--
ALTER TABLE `students_surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_surveys_student_id_foreign` (`student_id`),
  ADD KEY `students_surveys_survey_id_foreign` (`survey_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_surveys`
--
ALTER TABLE `subjects_surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_surveys_subject_id_foreign` (`subject_id`),
  ADD KEY `subjects_surveys_survey_id_foreign` (`survey_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys_details`
--
ALTER TABLE `surveys_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories_surveys`
--
ALTER TABLE `categories_surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `students_subjects`
--
ALTER TABLE `students_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `students_surveys`
--
ALTER TABLE `students_surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `subjects_surveys`
--
ALTER TABLE `subjects_surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surveys_details`
--
ALTER TABLE `surveys_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students_subjects`
--
ALTER TABLE `students_subjects`
  ADD CONSTRAINT `students_subjects_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students_surveys`
--
ALTER TABLE `students_surveys`
  ADD CONSTRAINT `students_surveys_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_surveys_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subjects_surveys`
--
ALTER TABLE `subjects_surveys`
  ADD CONSTRAINT `subjects_surveys_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_surveys_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
