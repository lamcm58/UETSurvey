-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2017 at 05:46 PM
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
(1, 2, 1),
(2, 1, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `ip_address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `time`, `ip_address`, `actions`) VALUES
(1, '2017-10-22 22:38:42', '127.0.0.1', 'Admin admin imported list subjects successfully.'),
(2, '2017-10-22 22:44:40', '127.0.0.1', 'Admin admin with email admin@admin.com signed out successfully.'),
(3, '2017-10-22 22:44:49', '127.0.0.1', 'Admin admin with email admin@admin.com signed in successfully into the system.'),
(4, '2017-10-22 22:46:16', '127.0.0.1', 'Admin admin imported list students successfully.');

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
  `question_category` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `survey_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_code`, `question_type`, `question_content`, `answer`, `question_category`, `survey_id`, `created_at`, `updated_at`) VALUES
(1, 'SS0001_01', 1, 'Giảng đường đáp ứng yêu cầu của môn học', ' ', 'Cơ sở vật chất', 1, '2017-10-19 16:57:37', '2017-10-19 16:57:37'),
(2, 'SS0001_02', 1, 'Các trang thiết bị tại giảng đường đáp ứng yêu cầu giảng dạy và học tập', ' ', 'Cơ sở vật chất', 1, '2017-10-19 16:57:37', '2017-10-19 16:57:37'),
(3, 'SS0001_03', 1, 'Bạn được hỗ trợ kịp thời trong quá trình học môn này', ' ', 'Môn học', 1, '2017-10-19 16:57:37', '2017-10-19 16:57:37'),
(4, 'SS0001_04', 1, 'Mục tiêu của môn học nêu rõ kiến thức và kĩ năng người học cần đạt được', ' ', 'Môn học', 1, '2017-10-19 16:57:37', '2017-10-19 16:57:37'),
(5, 'SS0001_05', 1, 'Thời lượng môn học được phân bổ hợp lí cho các hình thức học tập', ' ', 'Môn học', 1, '2017-10-19 16:57:37', '2017-10-19 16:57:37'),
(6, 'SS0001_06', 1, 'Các tài liệu phục vụ môn học được cập nhật', ' ', 'Môn học', 1, '2017-10-19 16:57:37', '2017-10-19 16:57:37'),
(7, 'SS0001_07', 1, 'Môn học góp phần trang bị kiến thức, kĩ năng nghề nghiệp cho bạn', ' ', 'Môn học', 1, '2017-10-19 16:57:37', '2017-10-19 16:57:37'),
(8, 'SS0001_08', 1, 'Giảng viên hướng dẫn cho bạn phương pháp học tập khi bắt đầu môn học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:37', '2017-10-19 16:57:37'),
(9, 'SS0001_09', 1, 'Giảng viên hướng dẫn cho bạn phương pháp học tập khi bắt đầu môn học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(10, 'SS0001_10', 1, 'Phương pháp giảng dạy của giảng viên giúp bạn phát triển tư duy phê phán', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(11, 'SS0001_11', 1, 'Giảng viên tạo cơ hội để bạn chủ động tham gia vào quá trình học tập', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(12, 'SS0001_12', 1, 'Giảng viên giúp bạn phát triển kĩ năng làm việc độc lập', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(13, 'SS0001_13', 1, 'Giảng viên rèn luyện cho bạn phương pháp liên hệ giữa các vấn đề trong môn học với thực tiễn', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(14, 'SS0001_14', 1, 'Giảng viên sử dụng hiệu quả phương tiện dạy học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(15, 'SS0001_15', 1, 'Giảng viên quan tâm giáo dục tư cách, phẩm chất nghề nghiệp của người học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(16, 'SS0001_16', 1, 'Bạn hiểu những vấn đề được truyền tải trên lớp', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(17, 'SS0001_17', 1, 'Kết quả học tập của người học được đánh giá bằng nhiều hình thức phù hợp với tính chất và đặc thù môn học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(18, 'SS0001_18', 1, 'Nội dung kiểm tra đánh giá tổng hợp được các kiến thức và kĩ năng mà người học phải đạt được theo yêu cầu', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(19, 'SS0001_19', 1, 'Thông tin phản hồi từ kiểm tra đánh giá giúp bạn cải thiện kết quả học tập', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38'),
(20, 'SS0001_20', 2, 'Nếu có ý kiến khác vui lòng điền vào đây', ' ', 'Ý kiến đóng góp khác', 1, '2017-10-19 16:57:38', '2017-10-19 16:57:38');

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
(1, '11020343', 'Đồng Quang  Toán', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"4\";s:10:\"question-2\";s:1:\"5\";s:10:\"question-3\";s:1:\"4\";s:10:\"question-4\";s:1:\"4\";s:10:\"question-5\";s:1:\"3\";s:10:\"question-6\";s:1:\"4\";s:10:\"question-7\";s:1:\"4\";s:10:\"question-8\";s:1:\"4\";s:10:\"question-9\";s:1:\"3\";s:11:\"question-10\";s:1:\"5\";s:11:\"question-11\";s:1:\"5\";s:11:\"question-12\";s:1:\"5\";s:11:\"question-13\";s:1:\"5\";s:11:\"question-14\";s:1:\"4\";s:11:\"question-15\";s:1:\"4\";s:11:\"question-16\";s:1:\"4\";s:11:\"question-17\";s:1:\"5\";s:11:\"question-18\";s:1:\"5\";s:11:\"question-19\";s:1:\"4\";s:11:\"question-20\";N;}'),
(2, '13020105', 'Nguyễn Hữu  Đạt', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"3\";s:10:\"question-2\";s:1:\"4\";s:10:\"question-3\";s:1:\"4\";s:10:\"question-4\";s:1:\"4\";s:10:\"question-5\";s:1:\"5\";s:10:\"question-6\";s:1:\"5\";s:10:\"question-7\";s:1:\"5\";s:10:\"question-8\";s:1:\"4\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"5\";s:11:\"question-11\";s:1:\"5\";s:11:\"question-12\";s:1:\"5\";s:11:\"question-13\";s:1:\"4\";s:11:\"question-14\";s:1:\"5\";s:11:\"question-15\";s:1:\"5\";s:11:\"question-16\";s:1:\"5\";s:11:\"question-17\";s:1:\"5\";s:11:\"question-18\";s:1:\"4\";s:11:\"question-19\";s:1:\"4\";s:11:\"question-20\";N;}'),
(3, '14020008', 'Nguyễn Tuấn  Anh', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"2\";s:10:\"question-2\";s:1:\"3\";s:10:\"question-3\";s:1:\"3\";s:10:\"question-4\";s:1:\"4\";s:10:\"question-5\";s:1:\"4\";s:10:\"question-6\";s:1:\"3\";s:10:\"question-7\";s:1:\"5\";s:10:\"question-8\";s:1:\"5\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"4\";s:11:\"question-11\";s:1:\"3\";s:11:\"question-12\";s:1:\"4\";s:11:\"question-13\";s:1:\"5\";s:11:\"question-14\";s:1:\"4\";s:11:\"question-15\";s:1:\"4\";s:11:\"question-16\";s:1:\"4\";s:11:\"question-17\";s:1:\"4\";s:11:\"question-18\";s:1:\"4\";s:11:\"question-19\";s:1:\"5\";s:11:\"question-20\";N;}'),
(4, '14020021', 'Phan Văn  Bắc', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"4\";s:10:\"question-2\";s:1:\"4\";s:10:\"question-3\";s:1:\"5\";s:10:\"question-4\";s:1:\"5\";s:10:\"question-5\";s:1:\"5\";s:10:\"question-6\";s:1:\"4\";s:10:\"question-7\";s:1:\"5\";s:10:\"question-8\";s:1:\"5\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"4\";s:11:\"question-11\";s:1:\"4\";s:11:\"question-12\";s:1:\"5\";s:11:\"question-13\";s:1:\"5\";s:11:\"question-14\";s:1:\"5\";s:11:\"question-15\";s:1:\"4\";s:11:\"question-16\";s:1:\"4\";s:11:\"question-17\";s:1:\"5\";s:11:\"question-18\";s:1:\"5\";s:11:\"question-19\";s:1:\"4\";s:11:\"question-20\";N;}'),
(5, '14020026', 'Nguyễn Xuân  Bình', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"2\";s:10:\"question-2\";s:1:\"4\";s:10:\"question-3\";s:1:\"4\";s:10:\"question-4\";s:1:\"3\";s:10:\"question-5\";s:1:\"4\";s:10:\"question-6\";s:1:\"5\";s:10:\"question-7\";s:1:\"4\";s:10:\"question-8\";s:1:\"5\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"4\";s:11:\"question-11\";s:1:\"5\";s:11:\"question-12\";s:1:\"5\";s:11:\"question-13\";s:1:\"5\";s:11:\"question-14\";s:1:\"4\";s:11:\"question-15\";s:1:\"4\";s:11:\"question-16\";s:1:\"4\";s:11:\"question-17\";s:1:\"5\";s:11:\"question-18\";s:1:\"4\";s:11:\"question-19\";s:1:\"4\";s:11:\"question-20\";N;}'),
(6, '14020033', 'Phan Thị  Chinh', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"4\";s:10:\"question-2\";s:1:\"5\";s:10:\"question-3\";s:1:\"4\";s:10:\"question-4\";s:1:\"4\";s:10:\"question-5\";s:1:\"5\";s:10:\"question-6\";s:1:\"4\";s:10:\"question-7\";s:1:\"5\";s:10:\"question-8\";s:1:\"5\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"4\";s:11:\"question-11\";s:1:\"5\";s:11:\"question-12\";s:1:\"5\";s:11:\"question-13\";s:1:\"5\";s:11:\"question-14\";s:1:\"5\";s:11:\"question-15\";s:1:\"4\";s:11:\"question-16\";s:1:\"5\";s:11:\"question-17\";s:1:\"4\";s:11:\"question-18\";s:1:\"5\";s:11:\"question-19\";s:1:\"3\";s:11:\"question-20\";N;}'),
(7, '14020037', 'Nguyễn Văn  Chung', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"2\";s:10:\"question-2\";s:1:\"3\";s:10:\"question-3\";s:1:\"5\";s:10:\"question-4\";s:1:\"5\";s:10:\"question-5\";s:1:\"5\";s:10:\"question-6\";s:1:\"5\";s:10:\"question-7\";s:1:\"4\";s:10:\"question-8\";s:1:\"5\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"3\";s:11:\"question-11\";s:1:\"4\";s:11:\"question-12\";s:1:\"1\";s:11:\"question-13\";s:1:\"2\";s:11:\"question-14\";s:1:\"4\";s:11:\"question-15\";s:1:\"4\";s:11:\"question-16\";s:1:\"4\";s:11:\"question-17\";s:1:\"4\";s:11:\"question-18\";s:1:\"4\";s:11:\"question-19\";s:1:\"4\";s:11:\"question-20\";N;}'),
(8, '14020074', 'Nguyễn Văn  Dũng', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"2\";s:10:\"question-2\";s:1:\"3\";s:10:\"question-3\";s:1:\"4\";s:10:\"question-4\";s:1:\"5\";s:10:\"question-5\";s:1:\"4\";s:10:\"question-6\";s:1:\"3\";s:10:\"question-7\";s:1:\"4\";s:10:\"question-8\";s:1:\"4\";s:10:\"question-9\";s:1:\"3\";s:11:\"question-10\";s:1:\"4\";s:11:\"question-11\";s:1:\"4\";s:11:\"question-12\";s:1:\"4\";s:11:\"question-13\";s:1:\"3\";s:11:\"question-14\";s:1:\"4\";s:11:\"question-15\";s:1:\"4\";s:11:\"question-16\";s:1:\"4\";s:11:\"question-17\";s:1:\"4\";s:11:\"question-18\";s:1:\"4\";s:11:\"question-19\";s:1:\"3\";s:11:\"question-20\";N;}'),
(9, '14020656', 'Trần Quang  Duy', 'ELT3046 1', 'Mạng truyền thông máy tính 1', 22, 1, 'a:20:{s:10:\"question-1\";s:1:\"3\";s:10:\"question-2\";s:1:\"4\";s:10:\"question-3\";s:1:\"3\";s:10:\"question-4\";s:1:\"3\";s:10:\"question-5\";s:1:\"3\";s:10:\"question-6\";s:1:\"4\";s:10:\"question-7\";s:1:\"4\";s:10:\"question-8\";s:1:\"3\";s:10:\"question-9\";s:1:\"4\";s:11:\"question-10\";s:1:\"3\";s:11:\"question-11\";s:1:\"5\";s:11:\"question-12\";s:1:\"5\";s:11:\"question-13\";s:1:\"4\";s:11:\"question-14\";s:1:\"3\";s:11:\"question-15\";s:1:\"4\";s:11:\"question-16\";s:1:\"4\";s:11:\"question-17\";s:1:\"4\";s:11:\"question-18\";s:1:\"4\";s:11:\"question-19\";s:1:\"3\";s:11:\"question-20\";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `password`, `student_code`, `email`, `full_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '11020343', '$2y$10$Stb8Puz.DWh8HeK5Y0Zm/OgRZiIOs611Q9EgyLqa.LuuX3WiJ9AuW', '11020343', '11020343@vnu.edu.vn', 'Đồng Quang  Toán', NULL, NULL, NULL),
(2, '11020439', '$2y$10$RRaH9n66aDiczeaHxqlgwuAJtFhemqMlOoF1g6LOK.GlqCsSqwG4q', '11020439', '11020439@vnu.edu.vn', 'Dương Trí  Vinh', NULL, NULL, NULL),
(3, '11020516', '$2y$10$mGKZamRNYK6pxLS/5A2v1uhtiu4XojiwnPBxwDsCxxUfIiVH//DlO', '11020516', '11020516@vnu.edu.vn', 'Nguyễn Tiến  Thân', NULL, NULL, NULL),
(4, '12020408', '$2y$10$54bFFdXgTYrI0ZhYT5qyGeWmYzAOY1wvZohEXlShQKaUk.rakBVWW', '12020408', '12020408@vnu.edu.vn', 'Nguyễn Minh  Tuấn', NULL, NULL, NULL),
(5, '12020424', '$2y$10$IoIrMDvpI6gf5i4dyK1PN.QYtptkip8DShbPfz/fzD8yUTa4n9gP.', '12020424', '12020424@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(6, '12020425', '$2y$10$j0PXfozeAYGnXBRoXpaZ6.wwplXJ0lsmZsQIjre5YAsTqJnxdxQMe', '12020425', '12020425@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(7, '12020476', '$2y$10$mtpjQeAoSCjQ8NG5F5rpau1Z4OJzQ79nje8b7d.LhgoMIMXIp8ZTC', '12020476', '12020476@vnu.edu.vn', 'Hà Anh  Tuấn', NULL, NULL, NULL),
(8, '12020528', '$2y$10$qlHSMiC8E.ctKfdYk7JDqOiTqPvEx6Mz7q.FpYgRPix9.8JtTMXpm', '12020528', '12020528@vnu.edu.vn', 'Ngô Thành  Đạt', NULL, NULL, NULL),
(9, '12020643', '$2y$10$cUyXNhSzMTsPjpAZIH8ofOZ8gepIbABOyKkgl9MGLgl.6XInGEXhu', '12020643', '12020643@vnu.edu.vn', 'Hoàng Thị  Minh', NULL, NULL, NULL),
(10, '13020011', '$2y$10$h5MKxV1WxQnYzlNe1P1YlunGa2e0RypvWPj9lsbWBBtjxPB/TX0PO', '13020011', '13020011@vnu.edu.vn', 'Nguyễn Thế  Anh', NULL, NULL, NULL),
(11, '13020019', '$2y$10$YQj8viqzBS4yTd.fm185qeQ3iWWK/MPXMcRdUvmd6awzJZBn1/leu', '13020019', '13020019@vnu.edu.vn', 'Chu Trần  Bách', NULL, NULL, NULL),
(12, '13020020', '$2y$10$TUiyrUp0SHo3L0RfESkNFO.vEEAx/ikW0dBQU/jawwAhQ.JZ2nmmm', '13020020', '13020020@vnu.edu.vn', 'Nguyễn Việt  Bách', NULL, NULL, NULL),
(13, '13020021', '$2y$10$o74rTtUC/JiA6N6LTYd4h.xfnSzUShlIwTG.QZZRIVV1oaU2iEInK', '13020021', '13020021@vnu.edu.vn', 'Tạ Đăng  Băng', NULL, NULL, NULL),
(14, '13020030', '$2y$10$VE1Pt7hY68qGSYnZUCkkBe6ut3p7ta.s.2jTIAdPwz05moLKWjzE2', '13020030', '13020030@vnu.edu.vn', 'Trần Thị  Châm', NULL, NULL, NULL),
(15, '13020031', '$2y$10$GOo6sNTEY7xuUbrlVi3Md.Qn9GwGVTvVbgOCHXOx4h.zCnqag1fLu', '13020031', '13020031@vnu.edu.vn', 'Trịnh Thị  Châm', NULL, NULL, NULL),
(16, '13020036', '$2y$10$WqlLQ5GkGCo1FUWROm9S9enQHpPy/1wd8haPZw/sHmu0blxYltIze', '13020036', '13020036@vnu.edu.vn', 'Nông Thị  Chín', NULL, NULL, NULL),
(17, '13020037', '$2y$10$ety6f9uibNGjvnzP/IJ7Le2M3Cx75NNPD7A9gI5w.8vuhxasZ6Gaq', '13020037', '13020037@vnu.edu.vn', 'Mai Văn  Chính', NULL, NULL, NULL),
(18, '13020041', '$2y$10$JjBgy5jIWtQX1Ak5HWVyjej.i/nGxOQKNEE5QzPzK1GLFlBAvZ.p.', '13020041', '13020041@vnu.edu.vn', 'Phan Thị  Chúc', NULL, NULL, NULL),
(19, '13020042', '$2y$10$lWyEnM1texlsOD2WUJ54quStRb7L1h1nKtGb0JbtyzjI6F/5f/7PC', '13020042', '13020042@vnu.edu.vn', 'Hoàng Văn  Công', NULL, NULL, NULL),
(20, '13020058', '$2y$10$0IRqgDUJh/UWGwtiQpM7tuCRiN3yhbsXWHDKQZqRfaKLrfGs2zV9e', '13020058', '13020058@vnu.edu.vn', 'Phạm Thái  Cường', NULL, NULL, NULL),
(21, '13020062', '$2y$10$q2zdWSpaoMKQ5vMCvp0PR.GzCaNn0y6HtpdlV4kWXx/zNIcFG0ZWO', '13020062', '13020062@vnu.edu.vn', 'Nguyễn Thị  Diện', NULL, NULL, NULL),
(22, '13020075', '$2y$10$UEcX7es.4w7k/93xqhpXiO5nIRAJLWY5lHpvlf.j6w.OgQU.voTQC', '13020075', '13020075@vnu.edu.vn', 'Nguyễn Tiến  Duy', NULL, NULL, NULL),
(23, '13020087', '$2y$10$.KfepVCc6x..d3adso4TUuyUW0o.7y/vfuIxMdAcMDh5Wo/a.n1Hq', '13020087', '13020087@vnu.edu.vn', 'Trần Xuân  Dũng', NULL, NULL, NULL),
(24, '13020088', '$2y$10$d4LrEQeoRs4ePCitM7SSp.mmGZF5txAzLgc5rXnPFXwIBQRcYE2IC', '13020088', '13020088@vnu.edu.vn', 'Nguyễn Đình  Dục', NULL, NULL, NULL),
(25, '13020098', '$2y$10$dk5150oeLUas5SElbRAECe2bjMva88fMok93MWxCyMruq.GDsQCZe', '13020098', '13020098@vnu.edu.vn', 'Bùi Văn  Đạt', NULL, NULL, NULL),
(26, '13020103', '$2y$10$5bFozx39VqEnszvJobu.SeieRRoQRYo3LEUyTIHWZHv9rWSG1KtLO', '13020103', '13020103@vnu.edu.vn', 'Lê Văn  Đạt', NULL, NULL, NULL),
(27, '13020105', '$2y$10$CbLWfzD0zuYarkvUomwJuOPZ4wvfQVMMO3SYb6dUgjw7Fz0VEPmUK', '13020105', '13020105@vnu.edu.vn', 'Nguyễn Hữu  Đạt', NULL, NULL, NULL),
(28, '13020109', '$2y$10$eNNtJNJa6ji2MjbZfDvmKOH7DWaHJcHxrTZJRb9FGIsiw1TDQXgHi', '13020109', '13020109@vnu.edu.vn', 'Vũ Văn  Đặng', NULL, NULL, NULL),
(29, '13020110', '$2y$10$toFzzgiJPuFq9KmDzV4LDe83rSSp/ZiTqLCYM0O7q5jVRRoV4jA.i', '13020110', '13020110@vnu.edu.vn', 'Phạm Văn  Điện', NULL, NULL, NULL),
(30, '13020120', '$2y$10$EKLuCBlAImIS.8BY.Q/Tdu7MMt7xM.ZlHYFS4JKAASJ8x8274gQnG', '13020120', '13020120@vnu.edu.vn', 'Nguyễn Xuân  Đương', NULL, NULL, NULL),
(31, '13020129', '$2y$10$/jJg2pm4zdjrLXUxFzO6sOJ5Nc.czaUUNMN.Rjv201K.AQe/zFqoO', '13020129', '13020129@vnu.edu.vn', 'Lê Hồng  Giáp', NULL, NULL, NULL),
(32, '13020138', '$2y$10$ATCjPTm8Z2kDKczHoJKuM.zJnXOjCDpiTcUkRsvHe/NJ3CsgMcw8.', '13020138', '13020138@vnu.edu.vn', 'Đỗ Hoàng  Hải', NULL, NULL, NULL),
(33, '13020144', '$2y$10$GfTxLkIW3bPfGKfPOkz2ReR0qGZumSMbyACIiMl7siCzL8ZsNMZcq', '13020144', '13020144@vnu.edu.vn', 'Nghiêm Văn  Hân', NULL, NULL, NULL),
(34, '13020162', '$2y$10$EhTqrIifqnPRDLFMwR/oKO3/VMPt5Qf8OmnTgWtgIqVwPS6Y09FK.', '13020162', '13020162@vnu.edu.vn', 'Lê Công  Hiệp', NULL, NULL, NULL),
(35, '13020164', '$2y$10$oe/EvsKLx4KfTrGsEsy3A.VBREHRrhJUvEM.Df7KUrOfcFHb//2mC', '13020164', '13020164@vnu.edu.vn', 'Nguyễn Văn  Hiệp', NULL, NULL, NULL),
(36, '13020167', '$2y$10$cUf9hnlyQNCllgSgeVFJ3ujlaTYi3aOy8Mq5oQfJPv5Z/BlNEtTlq', '13020167', '13020167@vnu.edu.vn', 'Nguyễn Văn  Hiệu', NULL, NULL, NULL),
(37, '13020177', '$2y$10$zDYaIzmhfbSdWcyTbFNutOQPZvXUl.E9HGV8cX/pNJPTQ7YU98r1S', '13020177', '13020177@vnu.edu.vn', 'Trần Xuân  Hoàng', NULL, NULL, NULL),
(38, '13020187', '$2y$10$vDXF9R4hxbaN6syipBn.T.IbuAerX8zyrp1kVc/m0Fv9GDa5AjOOa', '13020187', '13020187@vnu.edu.vn', 'Nguyễn Thị  Huệ', NULL, NULL, NULL),
(39, '13020190', '$2y$10$kw.POAAAJ5Fc9RCeuA/ekOHMvqIKsfOmxm/dd9kcIb1sk0dRG.hje', '13020190', '13020190@vnu.edu.vn', 'Nguyễn Quang  Huy', NULL, NULL, NULL),
(40, '13020194', '$2y$10$8UTISTATWS0/N07FPN/wVe6aDQAqmSzFXCTXfFzqwoX6nREi7Vo7C', '13020194', '13020194@vnu.edu.vn', 'Bùi Thị  Huyền', NULL, NULL, NULL),
(41, '13020197', '$2y$10$uLXHg1IyaHwndl/o.3xnSOh6tpTJyqCRjiAkngf2NUWnb6GICNkge', '13020197', '13020197@vnu.edu.vn', 'Vũ Thị  Huyền', NULL, NULL, NULL),
(42, '13020206', '$2y$10$bGkF3VZ7gBE7QzfFDAareehsJB9BipBjNB5Jt3129NajRXklhXhTi', '13020206', '13020206@vnu.edu.vn', 'Phạm Thế  Hùng', NULL, NULL, NULL),
(43, '13020208', '$2y$10$mNnlaroHK2q5oyS33a4CSuh4sTbLUrymPUUFm0Zhg3m7f78imJrGu', '13020208', '13020208@vnu.edu.vn', 'Chu Thành  Hưng', NULL, NULL, NULL),
(44, '13020210', '$2y$10$szRJ3Tl/4MIFdyn6s0Gez.1dCq.nzN9YhVPXCfAx9Ejnv9b25NaFq', '13020210', '13020210@vnu.edu.vn', 'Lê Việt  Hưng', NULL, NULL, NULL),
(45, '13020224', '$2y$10$Dj0FoGAb3i2zFiHthwv2Y.sIYEQaTiYrq/Yb.HikAWU5ivQ01.q1O', '13020224', '13020224@vnu.edu.vn', 'Mai Duy  Khánh', NULL, NULL, NULL),
(46, '13020226', '$2y$10$CzKVqRRrzzdl91At/zetvewg7GhyDQMUwAwrA4VMz6JWsC2hYJHXu', '13020226', '13020226@vnu.edu.vn', 'Nguyễn Hoàng  Khánh', NULL, NULL, NULL),
(47, '13020235', '$2y$10$wrDW6BQlg4xdEgXMB6xjG./K2D99WLtgXq8BojFYgGhweOepi/RW.', '13020235', '13020235@vnu.edu.vn', 'Bùi Văn  Kỳ', NULL, NULL, NULL),
(48, '13020242', '$2y$10$2qzGRLUxZk7Wux.kDVDveeayHlyCdQm2xGkeOsBzxTB3E0qJxzCRu', '13020242', '13020242@vnu.edu.vn', 'Trần Thị  Liên', NULL, NULL, NULL),
(49, '13020250', '$2y$10$zQzPcuhx109RwWgj.CeRCeGCsNp/3FbVny3pvv/SNBnVS.n6hr58K', '13020250', '13020250@vnu.edu.vn', 'Nguyễn Việt  Linh', NULL, NULL, NULL),
(50, '13020251', '$2y$10$eXtZP5Kd4MGqUdTIz/QgQeft9oSFjUXLODOlNW9/NORQa1W6xgOYa', '13020251', '13020251@vnu.edu.vn', 'Phạm Tuấn  Linh', NULL, NULL, NULL),
(51, '13020254', '$2y$10$cOGVxqvhmxLMXbx8yc4thOl7VkWbyTgb42HVr5p2SHblTzXS9h0M.', '13020254', '13020254@vnu.edu.vn', 'Đặng Tiến  Long', NULL, NULL, NULL),
(52, '13020255', '$2y$10$4QTslDL8E2ULiU6R2xnEUeqPNeJ.5Av/Qzk1czqendLNIn59I2xOe', '13020255', '13020255@vnu.edu.vn', 'Nguyễn Đình  Long', NULL, NULL, NULL),
(53, '13020259', '$2y$10$EV23V1.Sl4TKmxocqWnWj.4OqBJcVC5XCuI40O9oATEJPP1vXq5Ym', '13020259', '13020259@vnu.edu.vn', 'Trần Đình  Long', NULL, NULL, NULL),
(54, '13020262', '$2y$10$i2Plqov.NZPI88mR0Jjiz.n3r.vHxFjUy3iL9TC6LoVfTHMGc41Eu', '13020262', '13020262@vnu.edu.vn', 'Vũ Thành  Long', NULL, NULL, NULL),
(55, '13020270', '$2y$10$AKO.9Jyn2pGnDTVcSb4IGeDmvPwCGZWyD3xzIPGIEP0DyANM4KCZS', '13020270', '13020270@vnu.edu.vn', 'Ngô Doãn  Lương', NULL, NULL, NULL),
(56, '13020274', '$2y$10$SIr9aK1Or1ealmH2dYrWV.Uzm9W1VRXDHDtYUlP/AtYMCOJq0i3ZG', '13020274', '13020274@vnu.edu.vn', 'Nguyễn Thị  Ly', NULL, NULL, NULL),
(57, '13020284', '$2y$10$CIhzgsrCWIlbvrg1zVKK6uEi7jDTJu/N9UVDVcMoKDZsbg.edmFnG', '13020284', '13020284@vnu.edu.vn', 'Nguyễn Duy  Minh', NULL, NULL, NULL),
(58, '13020289', '$2y$10$PAmVNzab8r45hSvHV8TYYOcdjBwzIiD43bKojmDqBwCWtjvoKaqV6', '13020289', '13020289@vnu.edu.vn', 'Đinh Vũ  Nam', NULL, NULL, NULL),
(59, '13020296', '$2y$10$.VEI2KzjkguU.ZSIFD8R.eF3/gsRrorTdW8U43c0ZH.uOgF1X5Q9y', '13020296', '13020296@vnu.edu.vn', 'Tạ Quang  Nam', NULL, NULL, NULL),
(60, '13020300', '$2y$10$Ud6Nboxw1yY/AxNqNSShj.60fh6n4wRXMBq9LWo5XVm1MYWBRfoYm', '13020300', '13020300@vnu.edu.vn', 'Nguyễn Trung  Nghĩa', NULL, NULL, NULL),
(61, '13020322', '$2y$10$32mrSZlm3Yuc.N/tWWN3UurhObFeRomZMxFXL4tNPUa8ra7ix.6oi', '13020322', '13020322@vnu.edu.vn', 'Phan Huy  Phát', NULL, NULL, NULL),
(62, '13020324', '$2y$10$OrnlvzlILAo2xiYUuFEXv.mGjjLhGRSmB0j/YXcQJ7bi0lXWzvElW', '13020324', '13020324@vnu.edu.vn', 'Bùi Minh  Phong', NULL, NULL, NULL),
(63, '13020326', '$2y$10$j1vrT0aUsAsSm4QMep4RKuW95lNX3Yr0HMg5x6IcS0oTZ.qhKaKMG', '13020326', '13020326@vnu.edu.vn', 'Nguyễn Kim  Phong', NULL, NULL, NULL),
(64, '13020328', '$2y$10$sOZTO8KlkZQYyJmhpO2VKecAb/Jkp.F0yVlHo09TGH9xQ1IwXPD0S', '13020328', '13020328@vnu.edu.vn', 'Vũ Hồng  Phú', NULL, NULL, NULL),
(65, '13020331', '$2y$10$ZYZStHBYgXlJBvL733iTrefcvie.xq6GU1a7kLxwSV.Po/hYEtGW.', '13020331', '13020331@vnu.edu.vn', 'Dương Xuân  Phương', NULL, NULL, NULL),
(66, '13020350', '$2y$10$yu4Tqit2nG0lAe7dw73avegEsljD5A8oyKYZxzI.ofxVIX7kMUOBa', '13020350', '13020350@vnu.edu.vn', 'Bùi Thị  Quỳnh', NULL, NULL, NULL),
(67, '13020357', '$2y$10$hepzy9RxBhI5UHFU0/aSVOMcDWV8q0mrbD6aL2MAb7kK3UiYUPWuS', '13020357', '13020357@vnu.edu.vn', 'Hoàng Thị Hồng  Sâm', NULL, NULL, NULL),
(68, '13020364', '$2y$10$mCuxwb6VwzWDuB39aEvFce.RBJWYCXmP7.INnI.agwy07jqsCpgnC', '13020364', '13020364@vnu.edu.vn', 'Phạm Ngọc  Sơn', NULL, NULL, NULL),
(69, '13020366', '$2y$10$6Ck0g0KN/XuKNvDXMBKJ9ehiTjIajtKjZ5IH1g4WOwhmUaX5zRjYe', '13020366', '13020366@vnu.edu.vn', 'Trương Đức  Tài', NULL, NULL, NULL),
(70, '13020375', '$2y$10$X3wnLAYOkz21AXu45lyi.eeLRghgjgFc.llBSBFo7.byUiU1UetZm', '13020375', '13020375@vnu.edu.vn', 'Nguyễn Văn  Tấn', NULL, NULL, NULL),
(71, '13020378', '$2y$10$qyZghQKBB3zSbNW/Fbp.MOTV/qqFvg/qz5qMqj28DkakihEc3iUM.', '13020378', '13020378@vnu.edu.vn', 'Lê Thế  Thao', NULL, NULL, NULL),
(72, '13020387', '$2y$10$ikSxktGWJuIm8dwOFjRse.uxVXtNRq2FVBsvy4V9G8yndfmNlEsOC', '13020387', '13020387@vnu.edu.vn', 'Trần Ngọc  Thành', NULL, NULL, NULL),
(73, '13020395', '$2y$10$SicdsXd2uEpIV7.XoyOh9u/3MBCBhkKX.edfficaI27JE1y3gMHsa', '13020395', '13020395@vnu.edu.vn', 'Nguyễn Văn  Thái', NULL, NULL, NULL),
(74, '13020400', '$2y$10$MvmyR3O1ECYza.KiBMpKSOR7X4n7L57q0ruDmAp6zsxK7JnKEOhY6', '13020400', '13020400@vnu.edu.vn', 'Cù Xuân  Thắng', NULL, NULL, NULL),
(75, '13020401', '$2y$10$X0r1dthl0Xo0RE.502Hdn.L2Dt.J4CLMAIfM/YD/FYSC4kQyQyAvO', '13020401', '13020401@vnu.edu.vn', 'Đinh Việt  Thắng', NULL, NULL, NULL),
(76, '13020408', '$2y$10$oixold2iFrYxkYbbG8z.k.iOOh8WEMwpiAPjkYPrctPIc0rPXwV2G', '13020408', '13020408@vnu.edu.vn', 'Phạm Văn  Thế', NULL, NULL, NULL),
(77, '13020414', '$2y$10$7mtmVyE.6yTxpHlXFLQ/u.4fZ29La8XxE/RWmKrUuSXBFbqjuJJBO', '13020414', '13020414@vnu.edu.vn', 'Bùi Văn  Thịnh', NULL, NULL, NULL),
(78, '13020418', '$2y$10$mHCpvDcL0X6dRzdnrRbKEeL2jUql.p8bw6yRY9NNZmLyPcxRd2P6C', '13020418', '13020418@vnu.edu.vn', 'Quản Quốc  Thịnh', NULL, NULL, NULL),
(79, '13020422', '$2y$10$xd7iM.hYsurB9X2pb4WHP.3WXZUBIkErHOgxN2A9EsS2eUGLE7aQu', '13020422', '13020422@vnu.edu.vn', 'Nguyễn Thị Hoài  Thu', NULL, NULL, NULL),
(80, '13020438', '$2y$10$hc7sYFNHuvFNc71sqpzD4ehijH9ggQxiJ/EAol7HEg5XKKJQYSbu6', '13020438', '13020438@vnu.edu.vn', 'Nguyễn Mạnh  Tiến', NULL, NULL, NULL),
(81, '13020454', '$2y$10$as0pquy1PsCaHQh95/FeO.zJxUCzVjceKAaDwqX.oDy/pMwMvVkia', '13020454', '13020454@vnu.edu.vn', 'Nguyễn Văn  Trịnh', NULL, NULL, NULL),
(82, '13020458', '$2y$10$mCJpyFONutq3aAACBTvkOumWTc0GfDUpA9yKx8xulZVv1N986XDMm', '13020458', '13020458@vnu.edu.vn', 'Trần Bình  Trọng', NULL, NULL, NULL),
(83, '13020460', '$2y$10$G.zXiYpMBkgLTlHyIPQWLeENKdFwf0R5f1UuVZLHU6SsVOtWHDvcK', '13020460', '13020460@vnu.edu.vn', 'Đặng Quang  Trung', NULL, NULL, NULL),
(84, '13020464', '$2y$10$rmlhH0mJtqmHtVW.p1mPvOT0ko9qVHZ14T0/16GEPZMa2dVDW0gNm', '13020464', '13020464@vnu.edu.vn', 'Nguyễn Văn  Trung', NULL, NULL, NULL),
(85, '13020466', '$2y$10$0fjPKUf28bGhLbjrPjBkoexYiXXJZD6G6TzivMKUiBw5aUiv6N3W.', '13020466', '13020466@vnu.edu.vn', 'Cao Đắc  Trường', NULL, NULL, NULL),
(86, '13020467', '$2y$10$Orsr72nlQ4NZHZUgn.UA2eDPQTGsdPtHj0Eef9ZQ0LJx1uGARWb6u', '13020467', '13020467@vnu.edu.vn', 'Đỗ Nho  Trường', NULL, NULL, NULL),
(87, '13020478', '$2y$10$fWX1yxOc1CNvyBESnt/DNe1tAAUwqGHgHlItQNF4LqfM9SXJzOKFC', '13020478', '13020478@vnu.edu.vn', 'Phạm Văn  Tuấn', NULL, NULL, NULL),
(88, '13020480', '$2y$10$hUh9v/sKXSXkWfDCO33XyumvTVsGSF2K8FC.W5BhCxG7t.tVYX/9O', '13020480', '13020480@vnu.edu.vn', 'Vũ Anh  Tuấn', NULL, NULL, NULL),
(89, '13020488', '$2y$10$JK0vkoglpi5IXJjOK21yTeBqIuQvY9I1056BP7vm94md4HGEF.1EK', '13020488', '13020488@vnu.edu.vn', 'Dương Đình  Tùng', NULL, NULL, NULL),
(90, '13020490', '$2y$10$JyIs4CPgT5bMVuRtYeipTOKF/CWntUm7AkYaXXR.ba4GJUt4OC3/C', '13020490', '13020490@vnu.edu.vn', 'Hoàng Văn  Tùng', NULL, NULL, NULL),
(91, '13020498', '$2y$10$7gPZJSnNVyYWlsNsm4/ZN.ucqrIWEM3x.tlC5WQ9h9Ab33vVBeuhy', '13020498', '13020498@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(92, '13020502', '$2y$10$zcQj9VyMBrrQ7XzIxYH7mOOaJlSYzSbZnDvRen/XZ3ysCftkeknqa', '13020502', '13020502@vnu.edu.vn', 'Hà Đức  Văn', NULL, NULL, NULL),
(93, '13020509', '$2y$10$94eMvKzhw8pC7I/wwXnM6ef5UsRfhpeKRXSNM7EGTq/.bDZMSDH5a', '13020509', '13020509@vnu.edu.vn', 'Bùi Quang  Vinh', NULL, NULL, NULL),
(94, '13020512', '$2y$10$dmLVxu285p2QBoqMv2XcBOvSgh.ZgccPUhiPC6rsj0fgHLImjc01G', '13020512', '13020512@vnu.edu.vn', 'Phạm Thị  Vui', NULL, NULL, NULL),
(95, '13020521', '$2y$10$Mhf0qhHX3zC7YFjkQYa2Xe29V6xWyYAEezSH7FSAeQ8KnHxM3gUa2', '13020521', '13020521@vnu.edu.vn', 'Nguyễn Duy  Anh', NULL, NULL, NULL),
(96, '13020540', '$2y$10$xDVvl8lsyIxxmuHZb7AJCu6Nnb6XRANTM1ubcdOttPi/p1ijP6bPS', '13020540', '13020540@vnu.edu.vn', 'Nguyễn Thanh  Hải', NULL, NULL, NULL),
(97, '13020544', '$2y$10$cjU5fv2AR0fwVRQ68u/w5uyKBmLKxKhIbHtHGQeO72Jo4F/OGqj66', '13020544', '13020544@vnu.edu.vn', 'Lê Đình  Hiệp', NULL, NULL, NULL),
(98, '13020551', '$2y$10$dWIdMxyhMu4yJRq/oumSfe7EbcbgNPO2XmwzqrGefLbKD/ynC/RuS', '13020551', '13020551@vnu.edu.vn', 'Nguyễn Đình  Nguyên', NULL, NULL, NULL),
(99, '13020553', '$2y$10$Z./JSbG6fncxjStUpQCStOH28/TpeJTEutHX/teagDUkYzKiKAXWO', '13020553', '13020553@vnu.edu.vn', 'Đặng Danh  Phương', NULL, NULL, NULL),
(100, '13020554', '$2y$10$O2rj2K6VTmb/QZ9hMYF5c.KSRk6Qkgks1jzjDBwcnEfTw6J3jXTBu', '13020554', '13020554@vnu.edu.vn', 'Nguyễn Khâm Hồng  Quang', NULL, NULL, NULL),
(101, '13020557', '$2y$10$qqdc2AlZYQYWVUjOhX1QYOP/Dq8x8TuvNo9f.EvmrZdCxowQfQpxu', '13020557', '13020557@vnu.edu.vn', 'Nguyễn Đình  Quyết', NULL, NULL, NULL),
(102, '13020559', '$2y$10$lkVpoGG4WE90Rk6eQ84nIekmvHPnHZJR0BsXuSyeTMwsNPBFYHw.q', '13020559', '13020559@vnu.edu.vn', 'Nguyễn Trường  Sinh', NULL, NULL, NULL),
(103, '13020560', '$2y$10$/UrDvABA8Rx6HyurWMgA..uBB8SxcyrLTQ/5MRJEahcAfQIeqTUKG', '13020560', '13020560@vnu.edu.vn', 'Thái Thế  Tài', NULL, NULL, NULL),
(104, '13020561', '$2y$10$0yNwikjtLsgI6PSJ0JSB2.9aarsF.juCgROFJ5P8S0pVOIwGH50Wy', '13020561', '13020561@vnu.edu.vn', 'Nguyễn Công  Thành', NULL, NULL, NULL),
(105, '13020566', '$2y$10$ijYKjg0mdfKuCDbu30R7ieGWv61MkosyP06cFd69mpybeONTUcfZu', '13020566', '13020566@vnu.edu.vn', 'Nguyễn Văn  Thiết', NULL, NULL, NULL),
(106, '13020580', '$2y$10$hrMPYku35jO.TKedbKflKeNvf22JKfkE0FjJxsoRiZH2WNBTWrzky', '13020580', '13020580@vnu.edu.vn', 'Trần Thế  Anh', NULL, NULL, NULL),
(107, '13020581', '$2y$10$MnFiUya0ieKkyqoZZIYjNO160SRsPRo3DbWnQAV7Ih2VeszzEi7N.', '13020581', '13020581@vnu.edu.vn', 'Lê Văn  Công', NULL, NULL, NULL),
(108, '13020589', '$2y$10$GNeulENMO3I6ez5ORkQYsu87uJ1kSoxy5S5XsmTkmwNGemWfuieRG', '13020589', '13020589@vnu.edu.vn', 'Vũ Phi  Hùng', NULL, NULL, NULL),
(109, '13020592', '$2y$10$ESVLLWaSgBpdXkR4yjxal.7.E3Ms5.ztHRH2SsptEznTe4pdeOqou', '13020592', '13020592@vnu.edu.vn', 'Phạm Văn  Khôi', NULL, NULL, NULL),
(110, '13020593', '$2y$10$dtRfhKoivyEwkmCxZ6NzOuzuJr05t3cDS2YDqPneXjvy/BZ1BAR5a', '13020593', '13020593@vnu.edu.vn', 'Nguyễn Thị  Khuyên', NULL, NULL, NULL),
(111, '13020598', '$2y$10$F28.9ecv4RCkM8A710A9OOWmj49vAkcdLmgOeZ1BF3daNQCUQdnVC', '13020598', '13020598@vnu.edu.vn', 'Đinh Khắc  Nguyên', NULL, NULL, NULL),
(112, '13020636', '$2y$10$v2Nciqgg6pXTCcQzJcbYSODitafc7BSGIWBqbENYJmNpz1EeSkkj.', '13020636', '13020636@vnu.edu.vn', 'Lê Ngọc  Phương', NULL, NULL, NULL),
(113, '13020649', '$2y$10$VMOKQkcEYnauBaMCaDqybO4RQiYo5vJtVjQ07BraBuiG4Qrme6je.', '13020649', '13020649@vnu.edu.vn', 'Nguyễn Quang  Linh', NULL, NULL, NULL),
(114, '13020652', '$2y$10$ZSef3ODbbSb93s90My0J6.TsM40tSkxpAh0Lbc9kaykQBlweEMDzq', '13020652', '13020652@vnu.edu.vn', 'Đặng Quang  Trung', NULL, NULL, NULL),
(115, '13020654', '$2y$10$cyitj6aHEYd4v047kEUE5e1ZPTgVsJH3PpNqaCPzVhyeyRFL29OCq', '13020654', '13020654@vnu.edu.vn', 'Phan Khắc  Vũ', NULL, NULL, NULL),
(116, '13020717', '$2y$10$2Xo6np0tGH3CoqEY8/Grnuk39n3LMchnqpV60Wrf0VndSGKUZAV9u', '13020717', '13020717@vnu.edu.vn', 'Đinh Văn  Học', NULL, NULL, NULL),
(117, '13020730', '$2y$10$3xdUUss9WFsaxxxNXf1QtOx9xijeoPN9Kcp4Gl6tX.xerW9BT017y', '13020730', '13020730@vnu.edu.vn', 'Lê Trường  Giang', NULL, NULL, NULL),
(118, '13020758', '$2y$10$cH0bgYuPck9Hj6C8RTvhlO/499uE278VUrliyZ2c98XL8CYNAGSOe', '13020758', '13020758@vnu.edu.vn', 'Thái Đình  Phúc', NULL, NULL, NULL),
(119, '13020768', '$2y$10$DCo1n9ki0TpBBVh8LOF3g.QhEJmW1iE9ZJE/kY7ILsxjylJIl6cCm', '13020768', '13020768@vnu.edu.vn', 'H.  Tharindu', NULL, NULL, NULL),
(120, '14020004', '$2y$10$O5s5PMENyAJR24zKh67MP.r0q.Jr04ZU31Zclb5WLvqYHFufg.FFW', '14020004', '14020004@vnu.edu.vn', 'Lê Thế  Anh', NULL, NULL, NULL),
(121, '14020008', '$2y$10$8qYM1DcMbfjnM4uuokyIo.1U7H.FIj8eCufEf0qwbPdED1C4abyfi', '14020008', '14020008@vnu.edu.vn', 'Nguyễn Tuấn  Anh', NULL, NULL, NULL),
(122, '14020010', '$2y$10$pKb6p2xrbv48MRYJI0X4zuEKfjnCEJdg0ZX636V1FQJQmADoI5DIm', '14020010', '14020010@vnu.edu.vn', 'Phan Hoàng  Anh', NULL, NULL, NULL),
(123, '14020021', '$2y$10$PY7aVRX765TdKeGsyfhQYOQye5Sl6zYFGGX5PlZSA2aWqA7g147yS', '14020021', '14020021@vnu.edu.vn', 'Phan Văn  Bắc', NULL, NULL, NULL),
(124, '14020026', '$2y$10$06qiKj0wjIs8KvTO8/Q1d.gT4ZaW/aknmzZLSdt/7Ujlsyoj5iE5W', '14020026', '14020026@vnu.edu.vn', 'Nguyễn Xuân  Bình', NULL, NULL, NULL),
(125, '14020029', '$2y$10$T/DEbwQOUeaQeS/s2PIpIOduHFm/SH2MPHS1uRWr/4DU150sWOsBu', '14020029', '14020029@vnu.edu.vn', 'Hà Quang  Chi', NULL, NULL, NULL),
(126, '14020033', '$2y$10$oTgt424lg8KGKG.sq.PNp.lMWqVn3a4UkCK8ISQ/kWYU803yf5gwS', '14020033', '14020033@vnu.edu.vn', 'Phan Thị  Chinh', NULL, NULL, NULL),
(127, '14020035', '$2y$10$JIOJcgB6pbnIAl.4eK3KWeLJwWYg6M/njwvUtahRJ2r/oPV.CGb5O', '14020035', '14020035@vnu.edu.vn', 'Phạm Đức  Chính', NULL, NULL, NULL),
(128, '14020037', '$2y$10$gOcyNh8nvSW2dUp3VmHGC.DMErwFshOjll62giPA3mUoTdgk.MGQy', '14020037', '14020037@vnu.edu.vn', 'Nguyễn Văn  Chung', NULL, NULL, NULL),
(129, '14020041', '$2y$10$adzGhB87H.Rlzffuow8oieUueT58SIvFgS7LZE.Po7IRdhKc/ysNW', '14020041', '14020041@vnu.edu.vn', 'Nguyễn Minh  Công', NULL, NULL, NULL),
(130, '14020054', '$2y$10$glBOvLwTx7Y4bg8dtqwAQuROJBNT87BD.X6xrz99r9XGj98eR5BI6', '14020054', '14020054@vnu.edu.vn', 'Kim Mạnh  Cường', NULL, NULL, NULL),
(131, '14020057', '$2y$10$9tL6FN11Nxmps6p.6SljEu0n78v3MQd8QORMYXCus6nlaHeuYjsve', '14020057', '14020057@vnu.edu.vn', 'Phạm Hữu  Cường', NULL, NULL, NULL),
(132, '14020068', '$2y$10$5HqbOP2XLdznNloRZteVHOSRqvQ52iiZMhJmPOTgzOs/OsuCifCPW', '14020068', '14020068@vnu.edu.vn', 'Phạm Thị  Duyên', NULL, NULL, NULL),
(133, '14020074', '$2y$10$VuEzaPFhQqIOAvCeo8cN5.VzsK4MUU8tAi3Yhez/LL.iY1fbRimQm', '14020074', '14020074@vnu.edu.vn', 'Nguyễn Văn  Dũng', NULL, NULL, NULL),
(134, '14020075', '$2y$10$mQxmgpTcTe94EdKiHUjSjOnJKuTdqhyid2C8Z4iYc9YjuvueFC70C', '14020075', '14020075@vnu.edu.vn', 'Nguyễn Việt  Dũng', NULL, NULL, NULL),
(135, '14020076', '$2y$10$WtCw8W8qoyUP7T8RkJM6ruYf29B7q2ikAJXcfEWoeqKHY6w4POAhC', '14020076', '14020076@vnu.edu.vn', 'Nguyễn Việt  Dũng', NULL, NULL, NULL),
(136, '14020083', '$2y$10$7siTKdB9037sF65NtMvud.lALy/QaWMeuW81EfHhF0/I388n3m4MW', '14020083', '14020083@vnu.edu.vn', 'Phạm Tùng  Dương', NULL, NULL, NULL),
(137, '14020096', '$2y$10$siquULd83/DbSH/KG8zFquKVbTKgsjqruxBQsCg7PJob3rG/oRz8C', '14020096', '14020096@vnu.edu.vn', 'Đỗ Tiến  Đạt', NULL, NULL, NULL),
(138, '14020097', '$2y$10$Q3TEnkHeV7.USm/hPuk6r.eZcW06ZyAwInmxLVVpLlgc1ZLerJ2eC', '14020097', '14020097@vnu.edu.vn', 'Đỗ Tiến  Đạt', NULL, NULL, NULL),
(139, '14020118', '$2y$10$UCWMZ/38NICgBDe2sZ/N2.E/NTtUZ.kTdUsyY96NdjLd6EV.9qyhi', '14020118', '14020118@vnu.edu.vn', 'Nguyễn Phùng  Được', NULL, NULL, NULL),
(140, '14020119', '$2y$10$gJAsr/PgVmLP42wNghWfjuoEY6Pqq5MBKvLkFP.fXIFd41dnvPpwu', '14020119', '14020119@vnu.edu.vn', 'Hoàng Tiến  Đức', NULL, NULL, NULL),
(141, '14020124', '$2y$10$UzVvmGBjd.Yo7TJ2.mvxsOieqatel098LdZhlpdsXFzHbwkMyiUQC', '14020124', '14020124@vnu.edu.vn', 'Trần Anh  Đức', NULL, NULL, NULL),
(142, '14020126', '$2y$10$EaxF.UfLU/lPP.N97A1f6e/14P5b1KWZ.hJh3hlta8HjEhzfIMzNq', '14020126', '14020126@vnu.edu.vn', 'Phan Bá  Giang', NULL, NULL, NULL),
(143, '14020128', '$2y$10$be17nl2QIFZ.IExs/mNhFOVmyBIKJu9qllSFTjmjj5FlMBhdIiWR6', '14020128', '14020128@vnu.edu.vn', 'Phạm Văn  Giáp', NULL, NULL, NULL),
(144, '14020129', '$2y$10$an9Hj3/BLpoZRnePFFO2AuQiLYQjgjEtBzxbp2gyUjiOOuA7TQbWm', '14020129', '14020129@vnu.edu.vn', 'Phạm Văn  Giỏi', NULL, NULL, NULL),
(145, '14020135', '$2y$10$CkrF8UW4rYCQbdREbOkw/.hzZdgKLO8p0q0zAY9M0jpQqCXPXJ.1e', '14020135', '14020135@vnu.edu.vn', 'Phạm Thị Thu  Hà', NULL, NULL, NULL),
(146, '14020137', '$2y$10$7tJU8.ZuiXD3.tw1UmHpguvZhexgAwqkBoZpiJiHUrbtoXVSHoj92', '14020137', '14020137@vnu.edu.vn', 'Vũ Ngọc  Hà', NULL, NULL, NULL),
(147, '14020141', '$2y$10$qGehhy4bUBP.e7g/krou2.MUoDGpD4a0o.WbQ00B/09FUoivwcc/2', '14020141', '14020141@vnu.edu.vn', 'Nguyễn Đình  Hải', NULL, NULL, NULL),
(148, '14020145', '$2y$10$oJrX1jhl5BjnzmOYyzd8O.H7OE10Lc2jBxXqj3oh/uUD1p9Xq8tVG', '14020145', '14020145@vnu.edu.vn', 'Nguyễn Thanh  Hải', NULL, NULL, NULL),
(149, '14020151', '$2y$10$Ey7Lj5DH7vgSV4Q/NGW1nupRQuiSqPT0WIy6CNyeMq/ByNFJ9SrzG', '14020151', '14020151@vnu.edu.vn', 'Phạm Thị  Hảo', NULL, NULL, NULL),
(150, '14020154', '$2y$10$e0X9DNISVIoOpXSPsz1x0uSaSAX1rkqJlF6CDHHNKXfe6pGtwDh/u', '14020154', '14020154@vnu.edu.vn', 'Dương Thị Thúy  Hằng', NULL, NULL, NULL),
(151, '14020173', '$2y$10$osB9d5Hhos9dNvX/EU6jculIEqmCrzlVefUfxbDyzHlhXmBhwiT4y', '14020173', '14020173@vnu.edu.vn', 'Nguyễn Văn  Hiếu', NULL, NULL, NULL),
(152, '14020183', '$2y$10$fzeygwO77GzoB39y61DKSeGT2hIqyfKbeOxdGpp1/LZkRhxxepkG.', '14020183', '14020183@vnu.edu.vn', 'Nguyễn Văn  Hiệu', NULL, NULL, NULL),
(153, '14020187', '$2y$10$8a5dCa7KdXs7YDzj8FHkreclTZdF6PLHqVzKJwEBLd.1lqpMfvzWK', '14020187', '14020187@vnu.edu.vn', 'Nguyễn Khánh  Hoà', NULL, NULL, NULL),
(154, '14020203', '$2y$10$TgS0LuHAOx8o9/67h3jivuqJbfVbmkMx/hZaaBR0Y9ATEXn07LYm6', '14020203', '14020203@vnu.edu.vn', 'Nguyễn Ngọc  Huân', NULL, NULL, NULL),
(155, '14020207', '$2y$10$7cEIfZViNp032Z2oDhnLTOBQDAtMY.m8p2nrNGk9QOzcNwoTRWL/a', '14020207', '14020207@vnu.edu.vn', 'Nguyễn Đức  Huy', NULL, NULL, NULL),
(156, '14020209', '$2y$10$HZVQwNINIumcYV9bwPIlCeiBZLRVFC//SxQ1S68TEjMM8ooT4oSK6', '14020209', '14020209@vnu.edu.vn', 'Nguyễn Quốc  Huy', NULL, NULL, NULL),
(157, '14020211', '$2y$10$jvKOnQ/wM0Nplmb3C0b5/.m3lNsS4OWc5KYjfVpTFDmuT.qEdzNSO', '14020211', '14020211@vnu.edu.vn', 'Vũ Văn  Huy', NULL, NULL, NULL),
(158, '14020215', '$2y$10$MP8H1ZTdXZsE3E0fYGBHNOditVP2IlL2N0cU9pMVQwEVeoCflA5wu', '14020215', '14020215@vnu.edu.vn', 'Nguyễn Đình  Hùng', NULL, NULL, NULL),
(159, '14020217', '$2y$10$/JO8GO.m.MHnj/eFYzJJj.iFwbTv.sOnsOcadC1Ex0sHr.PfjcKuO', '14020217', '14020217@vnu.edu.vn', 'Nguyễn Văn  Hùng', NULL, NULL, NULL),
(160, '14020220', '$2y$10$9HaowMuQNCpoy1at2d/WbOmjFRazlY8qoJkqb.66OpBGdKqgqU99C', '14020220', '14020220@vnu.edu.vn', 'Trần Mạnh  Hùng', NULL, NULL, NULL),
(161, '14020224', '$2y$10$.NjOfFAN/zAPGiiw59BNh.Vw0nnucY8DO8C12Rld3su8TpWVzOPQW', '14020224', '14020224@vnu.edu.vn', 'Nguyễn Khánh  Hưng', NULL, NULL, NULL),
(162, '14020235', '$2y$10$OxvTzVu..gFYnZPi5KYKK.jMBda6EK/GH3.3y6RQrbfg8zJrgfcLq', '14020235', '14020235@vnu.edu.vn', 'Phạm Việt  Khanh', NULL, NULL, NULL),
(163, '14020236', '$2y$10$J.p8uoibZTc6ywciSzM39ez46NxOCnChKhdbEXKJbAesxY00bYri.', '14020236', '14020236@vnu.edu.vn', 'Nguyễn Tuấn  Khải', NULL, NULL, NULL),
(164, '14020243', '$2y$10$syNi6tqGrx1YaB2jZeuvKuzl6ClXG8wMs9v3zEY/yOOueB81/7tPC', '14020243', '14020243@vnu.edu.vn', 'Nguyễn Văn  Khỏe', NULL, NULL, NULL),
(165, '14020254', '$2y$10$s5VPvAvj1aw7my4G8C8VVOooOh1QhMbHxkvSpRdh1JfQgS4scKt12', '14020254', '14020254@vnu.edu.vn', 'Nguyễn Duy  Linh', NULL, NULL, NULL),
(166, '14020264', '$2y$10$Q1fADskIsPINXYwjNwCRFeumr.syO03wo8uEGxVMAo.Zxv0MvClgq', '14020264', '14020264@vnu.edu.vn', 'Phạm Hoàng  Long', NULL, NULL, NULL),
(167, '14020270', '$2y$10$FhaXwn4wVekSL8NuUUWHc.adZeVcdqxK1fUQaFZk0unn1WfjLRBh2', '14020270', '14020270@vnu.edu.vn', 'Vũ Xuân  Lộc', NULL, NULL, NULL),
(168, '14020277', '$2y$10$aY3xpeOjaaASRrgSW0sUBu2.JcaTnWzpm1WI1XYULyaVGYZurYdz2', '14020277', '14020277@vnu.edu.vn', 'Trịnh Đức  Lương', NULL, NULL, NULL),
(169, '14020283', '$2y$10$5tjS7twwovlPLy.mN7oVAe1kN31oCuVR2NqjowG0fotjjL5HwEDIu', '14020283', '14020283@vnu.edu.vn', 'Nguyễn Duy  Lực', NULL, NULL, NULL),
(170, '14020284', '$2y$10$MK1WaOnmxsLY1FIjXExsqevedAEHvMomwwKbem2m/y8aVfScoNKvW', '14020284', '14020284@vnu.edu.vn', 'Nguyễn Khắc  Lực', NULL, NULL, NULL),
(171, '14020288', '$2y$10$R.WV0kr55j16j4lyG87vfe0IeqzS0ZrlBmho1RuPo4y3rI9ah0gce', '14020288', '14020288@vnu.edu.vn', 'Tống Thanh  Mai', NULL, NULL, NULL),
(172, '14020289', '$2y$10$Xgw0QkjdkN3EHjILXekG2uhu4LO99YuJhYTeAdmEZQT66cgNF8WHG', '14020289', '14020289@vnu.edu.vn', 'Nguyễn Văn  May', NULL, NULL, NULL),
(173, '14020291', '$2y$10$MDVE9v0szwfDf44ImBaIVuQ6.3IjDvGvhoRiDkAKuAOEud8Aw.xgm', '14020291', '14020291@vnu.edu.vn', 'Hoàng Kim  Mạnh', NULL, NULL, NULL),
(174, '14020296', '$2y$10$L9AuaCXN5EdPJ7uWzWsxh.6X4KMowOfBXi9qcf2R76b2d.01ZHNnK', '14020296', '14020296@vnu.edu.vn', 'Phùng Văn  Mạnh', NULL, NULL, NULL),
(175, '14020306', '$2y$10$.jQg5KPkw/TCSvs9mbUZguwBOr7RZHyr3CGXrRdT2og.3wRdklG32', '14020306', '14020306@vnu.edu.vn', 'Trịnh Đức  Minh', NULL, NULL, NULL),
(176, '14020310', '$2y$10$MzztG51Qzxq.5zw7bgIA9eP01QxzJ/n9RSd.A58uGjyjaHb7/buH6', '14020310', '14020310@vnu.edu.vn', 'Vũ Thị  Mơ', NULL, NULL, NULL),
(177, '14020313', '$2y$10$vL6pocjCmlUTW8Jb4CHVzurdDazbKsYOJyY0hdT5eh1mLJcf508mu', '14020313', '14020313@vnu.edu.vn', 'Hà Phương  Nam', NULL, NULL, NULL),
(178, '14020319', '$2y$10$Lbu8LU0VxnsPNT3agFlY0O6fRnc8.6eJzRV/kXhnq3sxwo7X68wXe', '14020319', '14020319@vnu.edu.vn', 'Trần Công  Nam', NULL, NULL, NULL),
(179, '14020324', '$2y$10$pzBNTBFpbyxMpq9Y687ExeggJNMekgD699q7z2eLqct1dXefz3SEK', '14020324', '14020324@vnu.edu.vn', 'Hoàng Trung  Nghĩa', NULL, NULL, NULL),
(180, '14020327', '$2y$10$nJr2VI1OWsNWCpMwYDj/peyZgReVHp2fREpdafaLnO9FKHP8y0.LS', '14020327', '14020327@vnu.edu.vn', 'Nguyễn Thị  Ngọc', NULL, NULL, NULL),
(181, '14020338', '$2y$10$ZEyfksDo05CF6oArzakDkewF8FQKjrjQipuETv4iiB9kmGMbUN8JK', '14020338', '14020338@vnu.edu.vn', 'Nguyễn Ngọc  Ninh', NULL, NULL, NULL),
(182, '14020339', '$2y$10$3HC/y7P/2kSbNbUo3j6Lvu979cqb5eGkjiGuOihi3NDHN0tGQB7qe', '14020339', '14020339@vnu.edu.vn', 'Khương Thị  Oanh', NULL, NULL, NULL),
(183, '14020340', '$2y$10$jLgw.1M/tS6toaJ6Ug4b2uDoP81hQiClUtToT8o2cRMv3MZc9fHmy', '14020340', '14020340@vnu.edu.vn', 'Nguyễn Đình  Phi', NULL, NULL, NULL),
(184, '14020346', '$2y$10$nL2QMbEGpc1ih.iutVjfTeRjFgY6Rq2WyJma3dgRzKs3DfjDgIGAq', '14020346', '14020346@vnu.edu.vn', 'Nguyễn Duy  Phú', NULL, NULL, NULL),
(185, '14020348', '$2y$10$s/RDeAKrirSYkZxI4DE.eennASNLiXSqnmPbVRHZ7rmXHHUHNrAV.', '14020348', '14020348@vnu.edu.vn', 'Nguyễn Văn  Phú', NULL, NULL, NULL),
(186, '14020356', '$2y$10$BEz7BZr/TopVKMSAo/YbnOOUkO.Gdx04TeDghxFHJNLgkWFK4ND/e', '14020356', '14020356@vnu.edu.vn', 'Nguyễn Thị Thu  Phương', NULL, NULL, NULL),
(187, '14020360', '$2y$10$3XEPez6u2i1lnJcYfB/Lr.kjtOGrAGPWd.QkssLBEYAvXtEhgdAaW', '14020360', '14020360@vnu.edu.vn', 'Lê Đăng  Phước', NULL, NULL, NULL),
(188, '14020369', '$2y$10$3VbMw/u.Wmjb2tc/de9Yh.p7NBhheegwscbQCIQ2Ryk73QK3EEyF6', '14020369', '14020369@vnu.edu.vn', 'Bùi Anh  Quân', NULL, NULL, NULL),
(189, '14020373', '$2y$10$QIIy8KRYeRMw1aq3UNoGWe38kv.owC9uskyIVoEERbRKyNPXBV4hq', '14020373', '14020373@vnu.edu.vn', 'Lữ Đoàn  Quân', NULL, NULL, NULL),
(190, '14020378', '$2y$10$4U4ue0o0lBg4KXtAUdk2FOG34.J7n1vC4kGfuGmirnA0Wc09Eul.e', '14020378', '14020378@vnu.edu.vn', 'Đinh Huy  Quyết', NULL, NULL, NULL),
(191, '14020379', '$2y$10$J1MVCJbN3yEQgTY.x0yrWOExIb/ByI/uxCSYrgsdH3LzDzWvRuA7u', '14020379', '14020379@vnu.edu.vn', 'Phạm Mạnh  Quyết', NULL, NULL, NULL),
(192, '14020380', '$2y$10$2T856trgIkUqJrawbPlvDeY5uPMgEEkqQEblp/ZFS7P2UR3mWjYNW', '14020380', '14020380@vnu.edu.vn', 'Phạm Văn  Quyết', NULL, NULL, NULL),
(193, '14020383', '$2y$10$w2AnBLtF.n1a9isZ.ZIrFetmdtMVIDbO661pOzLfqjM3mBN5I/63m', '14020383', '14020383@vnu.edu.vn', 'Lưu Văn  Quỳnh', NULL, NULL, NULL),
(194, '14020389', '$2y$10$nJ00vTvJTQ.JkKJsS8PK..UHSSvwTHWXWae5V4S5RAAlVU2Sec3OC', '14020389', '14020389@vnu.edu.vn', 'Dương Ngọc  Sơn', NULL, NULL, NULL),
(195, '14020390', '$2y$10$vBn9p6j370WEXcJo5Z0pjOSL18htCJR2KhgD7hSynynT8jQW1GaI2', '14020390', '14020390@vnu.edu.vn', 'Đào Xuân  Sơn', NULL, NULL, NULL),
(196, '14020393', '$2y$10$64bpUQ4wa6tmtHYaN70Xo.B1.4kxTXEV7jvhDCjhPSwtu5oBRL8oC', '14020393', '14020393@vnu.edu.vn', 'Nguyễn Hồng  Sơn', NULL, NULL, NULL),
(197, '14020395', '$2y$10$ynxYshrbeF86PTKro38xNO8KtX.lF1gOd/Vkih4uPJ5pf0kdBTm32', '14020395', '14020395@vnu.edu.vn', 'Phạm Thái  Sơn', NULL, NULL, NULL),
(198, '14020397', '$2y$10$HL69D1jL2YCSknjZ9lP6l.fanJTgA5bnb6A31G5sPhPrLvdee8Yju', '14020397', '14020397@vnu.edu.vn', 'Tạ Ngọc  Sơn', NULL, NULL, NULL),
(199, '14020405', '$2y$10$9oVnRrw9Y86VxE1BEvoFbuIs3eD6r7mJPZ7CTP466zy91T9DdLi0q', '14020405', '14020405@vnu.edu.vn', 'Nguyễn Văn  Tài', NULL, NULL, NULL),
(200, '14020410', '$2y$10$kflqiA.bVQKTvW4ZQjc9IeYM1KUZrOskPn0lNo94gHW9dpweF5u6W', '14020410', '14020410@vnu.edu.vn', 'Phạm Phương  Thanh', NULL, NULL, NULL),
(201, '14020412', '$2y$10$yUs5jAHqpIPHQR4WsfEEN.M7dTPwM8mz./wyIjaarzhSrYxHjgzt.', '14020412', '14020412@vnu.edu.vn', 'Vũ Thị Thanh  Thanh', NULL, NULL, NULL),
(202, '14020417', '$2y$10$XNsBmiVHeojHe09kxmhTaewsMa6PMSD5sbhtrqepzefZJOPTnOUBC', '14020417', '14020417@vnu.edu.vn', 'Nguyễn Tuấn  Thành', NULL, NULL, NULL),
(203, '14020420', '$2y$10$M99ns2WBJWcArl.bRPYf4OlJU6bO8AYaPBULikgxYVur0diHjv0yu', '14020420', '14020420@vnu.edu.vn', 'Nguyễn Văn  Thành', NULL, NULL, NULL),
(204, '14020421', '$2y$10$jAl8MjMacQPUWcju0ykOc.7Xy5PtNpsZGNGFH9NX54Umu4tihV3dO', '14020421', '14020421@vnu.edu.vn', 'Nguyễn Văn  Thành', NULL, NULL, NULL),
(205, '14020427', '$2y$10$Xl3BT2Q1ZPjpO20FvLRiuO0K7AaOTr4EZxI5saicdxJSZe3DDUTm2', '14020427', '14020427@vnu.edu.vn', 'Trần Thị Phương  Thảo', NULL, NULL, NULL),
(206, '14020428', '$2y$10$KbKl4/njx9PZSTK8bjGgSukk6dCewYyks6Hy.ijowlSj4NmUFSSXe', '14020428', '14020428@vnu.edu.vn', 'Vũ Thị  Thảo', NULL, NULL, NULL),
(207, '14020439', '$2y$10$g1Aa9qe0boF.idToULVT2Om.7qlRs8MbAbipfTtaCUqxarUwzQJdm', '14020439', '14020439@vnu.edu.vn', 'Lại Văn  Thế', NULL, NULL, NULL),
(208, '14020442', '$2y$10$5PCa4EbL4J.kGYR1FgssGu.OZ8Ce0bps1T9t5ah9kV1vHEzAlGtmy', '14020442', '14020442@vnu.edu.vn', 'Đỗ Văn  Thiện', NULL, NULL, NULL),
(209, '14020456', '$2y$10$24Qy.pfjjD9k30KvhRQl1Ozz0dgyLhaV1ZjBBvkZJrFDdKSY0EqaW', '14020456', '14020456@vnu.edu.vn', 'Nguyễn Văn  Thuật', NULL, NULL, NULL),
(210, '14020472', '$2y$10$fXsBzkVh4CVLFzCcWiNyEOkOIEypBX4gFArJSO7Dr0xImmZlo9f7u', '14020472', '14020472@vnu.edu.vn', 'Trần Văn  Tĩnh', NULL, NULL, NULL),
(211, '14020477', '$2y$10$YSeDwzlO7aHWCMEBxaqoyuWkpCds0IKZE/PIpnkD2nRKXrRYh91Ge', '14020477', '14020477@vnu.edu.vn', 'Trần Đức  Toàn', NULL, NULL, NULL),
(212, '14020479', '$2y$10$olsDyKGBVW5ZMXScMbiWgOY/pYmtVqjGo6oUFDH4gxqevT55h4naC', '14020479', '14020479@vnu.edu.vn', 'Nguyễn Văn  Tới', NULL, NULL, NULL),
(213, '14020480', '$2y$10$7FuWe1wY.rLgIHGsnjo9k.IZXMOaHiSAEExDEgvQRPWlBHsy8btfi', '14020480', '14020480@vnu.edu.vn', 'Lê Quỳnh  Trang', NULL, NULL, NULL),
(214, '14020484', '$2y$10$oooVcGiXJb9HQbgdU47K2ORGDkXiGgn1eFKP.Yc5EhDOd3nsMr1Dm', '14020484', '14020484@vnu.edu.vn', 'Nguyễn Thị Huyền  Trang', NULL, NULL, NULL),
(215, '14020486', '$2y$10$WjW8no8Vz8D9cjMPBZI0s.uF0Q8slt.TbolmRdF5beE.AwUBm8KYy', '14020486', '14020486@vnu.edu.vn', 'Lê Thị Kiều  Trinh', NULL, NULL, NULL),
(216, '14020490', '$2y$10$.6P3f0AZFBdl0mnsEm325OMu0wnttplzaqP7S3ckP0XgtZ9Jq46m6', '14020490', '14020490@vnu.edu.vn', 'Lê Đăng  Trung', NULL, NULL, NULL),
(217, '14020495', '$2y$10$qPtUbuyewsGYZ2OKPPdArOr0YCi6HSjopSzRZYsxhCoBJ5DDEtnqq', '14020495', '14020495@vnu.edu.vn', 'Trần Văn  Trung', NULL, NULL, NULL),
(218, '14020502', '$2y$10$81Cdr1FgfaLoDaFePo11u.mOzxLe1vgj4shU/eQuveXNMmmVp/r9G', '14020502', '14020502@vnu.edu.vn', 'Phạm Quang  Trường', NULL, NULL, NULL),
(219, '14020509', '$2y$10$dHoVPrXscreZ3YseYWm2Z.5axCCRdfFI6G1pWWWU1nSVGN1k8Q/My', '14020509', '14020509@vnu.edu.vn', 'Đào Anh  Tuấn', NULL, NULL, NULL),
(220, '14020513', '$2y$10$qkh0GimAQiRl9KEoV2nlf.e95JYAh1/LGPkvD.JR7u/nSkDyaoRdq', '14020513', '14020513@vnu.edu.vn', 'Lý Văn  Tuấn', NULL, NULL, NULL),
(221, '14020516', '$2y$10$/YQHqsV9mWrq.ygQ4MqYre3ydwTf/ymlhZDbRaWFNcZHgcsfzzaU6', '14020516', '14020516@vnu.edu.vn', 'Nguyễn Đức  Tuấn', NULL, NULL, NULL),
(222, '14020517', '$2y$10$1CDzqopujBqO/4r3fccGSeN77d7uClBb0mtPXhlYGA/LUArnfZ882', '14020517', '14020517@vnu.edu.vn', 'Nguyễn Mạnh  Tuấn', NULL, NULL, NULL),
(223, '14020522', '$2y$10$JiYSzo24eN0TaALp4JtnN.tm1HW9.LtJtJSxKvYWJEOe4WGp1t4KW', '14020522', '14020522@vnu.edu.vn', 'Nguyễn Thanh  Tuyền', NULL, NULL, NULL),
(224, '14020523', '$2y$10$vG1tENXCSiMv99Bj6Iei2eAAd5Xcddhb1CJ3VAbOagKim9DYGXhTW', '14020523', '14020523@vnu.edu.vn', 'Nguyễn Xuân  Tuyến', NULL, NULL, NULL),
(225, '14020537', '$2y$10$sqnAxf5.tWdq6los05rU5./mWG38G7pBXKh1eppx/QdxWaoy8pFX2', '14020537', '14020537@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(226, '14020543', '$2y$10$ikzSUheHF49nyFaMfSGoEuNfpPfLQAub08DpRv7pyN.CBOTpVfPp6', '14020543', '14020543@vnu.edu.vn', 'Phạm Đăng  Tưởng', NULL, NULL, NULL),
(227, '14020545', '$2y$10$HvRKqQqnunCoMg9zlV5NcOzQxGPvLLl0oL57gPe9fb4AO7xzo018e', '14020545', '14020545@vnu.edu.vn', 'Mai Thị Tố  Uyên', NULL, NULL, NULL),
(228, '14020546', '$2y$10$cEzy2xDGwrrGh./Lus2OkO40L7BTx0ZVfY3YWyMMEEcIa2T785BbK', '14020546', '14020546@vnu.edu.vn', 'Nguyễn Văn  Ước', NULL, NULL, NULL),
(229, '14020551', '$2y$10$1CALnbnbIR31C..pOXTK7OSv9bIUeZFrVF/e.wFly0fqcfszKIKVy', '14020551', '14020551@vnu.edu.vn', 'Nguyễn Mạnh  Việt', NULL, NULL, NULL),
(230, '14020560', '$2y$10$VVJDHfY/3RTX4cc/5ekJxuQk5.nPjhpZlXvGjDzBXz3Kzfii0DhSW', '14020560', '14020560@vnu.edu.vn', 'Chu Thừa  Vũ', NULL, NULL, NULL),
(231, '14020566', '$2y$10$jIdqogSs76e08NbMjhXe8Ooe4FypK83MTark/KVpkFzViP7Rt5VVK', '14020566', '14020566@vnu.edu.vn', 'Phan Văn  Vương', NULL, NULL, NULL),
(232, '14020574', '$2y$10$wW14GDhNUwI8O.gTfxo95.ThC5Q52ZhpdKZzhHLk0gxuJxdsv5oou', '14020574', '14020574@vnu.edu.vn', 'Nguyễn Việt  Anh', NULL, NULL, NULL),
(233, '14020580', '$2y$10$3cVwrxk/.AibksQR30ZJb.DFqO/Z.7aR06iqWU.bT6V7tQ1Bh0WF6', '14020580', '14020580@vnu.edu.vn', 'Trần Thị  Dung', NULL, NULL, NULL),
(234, '14020584', '$2y$10$csrxdGiaGIRbwjqM3Mq3auIjBmNmHazCYNIzhKEIRr6QeGcnSMO6S', '14020584', '14020584@vnu.edu.vn', 'Cao Đình  Đức', NULL, NULL, NULL),
(235, '14020587', '$2y$10$hbhDNqbYZmBrLRlH9oX4Xu92qVEv0b5Jht6zVexCYUMW9GqiZ7hb2', '14020587', '14020587@vnu.edu.vn', 'Nguyễn Công  Hoàn', NULL, NULL, NULL),
(236, '14020590', '$2y$10$Pymr4eKFZfpmcw7pcTwbVe0fMbxIYtcEIse5A3h0qn5/8UABl9L0S', '14020590', '14020590@vnu.edu.vn', 'Hồ Huy  Hùng', NULL, NULL, NULL),
(237, '14020592', '$2y$10$KHb/USQVm/Eis0Lm7upsyuZS0yOJUmzresEgP53c1bTKr3Ht1qzf6', '14020592', '14020592@vnu.edu.vn', 'Nguyễn Văn  Hưng', NULL, NULL, NULL),
(238, '14020595', '$2y$10$eCODYvxD6IMzbSqtNw3iCOOXmYje1PWeEhINp72nt2nRKTC7jOXyy', '14020595', '14020595@vnu.edu.vn', 'Võ Văn  Khôi', NULL, NULL, NULL),
(239, '14020606', '$2y$10$lWatBQPlVow08hBONPRe8.tKT0yHSwacRnhYjshIJXi.0bGbyYvz.', '14020606', '14020606@vnu.edu.vn', 'Hoàng Văn  Thanh', NULL, NULL, NULL),
(240, '14020609', '$2y$10$3UeyB95JFTLTfPkAncjFKeNXlHOD1LTZbqmVmA23MuccOWcn9ttuy', '14020609', '14020609@vnu.edu.vn', 'Nguyễn Minh  Thắng', NULL, NULL, NULL),
(241, '14020616', '$2y$10$8j6yoTHRgHwlkqLRcaprj.exsPgvkt.5F7dElMIxZcaqTss6yJqY.', '14020616', '14020616@vnu.edu.vn', 'Trần Hữu  Tuấn', NULL, NULL, NULL),
(242, '14020618', '$2y$10$YoE3Txxz4F5Oilok4vKZxempg5KstqGhkxE43uwjLblZfA0Mrfcv2', '14020618', '14020618@vnu.edu.vn', 'Đào Tuấn  Anh', NULL, NULL, NULL),
(243, '14020620', '$2y$10$TDSAHcEV70ugRgSnQbW.ReXOnVu14XX1RWE/FRQN6pTVkp1fnlSQO', '14020620', '14020620@vnu.edu.vn', 'Lê Thị  Duyên', NULL, NULL, NULL),
(244, '14020621', '$2y$10$RBNX3ODrgyuS2VDd3JsClOnvjm2gOYdfkTK9re3bi/xoIuDt4dWU.', '14020621', '14020621@vnu.edu.vn', 'Nguyễn Mỹ  Duyên', NULL, NULL, NULL),
(245, '14020623', '$2y$10$MCotChhN5KPnFGujRVDcZO2AXWptRrTEBM7MG6gbyK4ZENRR/P6ti', '14020623', '14020623@vnu.edu.vn', 'Phạm Đức  Dũng', NULL, NULL, NULL),
(246, '14020625', '$2y$10$4NEHUhJXGVkrI2vNw.JKYuQGMCWQeMLUXKsWQ5W.VXPyUX3x1FVA6', '14020625', '14020625@vnu.edu.vn', 'Lê Thị  Hiền', NULL, NULL, NULL),
(247, '14020634', '$2y$10$nqiEzEelfMQmo5a4VdsrcOjjAaa.cuclG6FlDOMy89ruAR6XpfFCC', '14020634', '14020634@vnu.edu.vn', 'Đỗ Xuân  Quý', NULL, NULL, NULL),
(248, '14020635', '$2y$10$yMkcqYNYL0vVM/q4F0wsIOYuyJu8V81pwufB1elZfKdEypG1nP8mq', '14020635', '14020635@vnu.edu.vn', 'Đồng Phú Khánh  Thành', NULL, NULL, NULL),
(249, '14020637', '$2y$10$l1ITBZIWpIKOuBEKG8yE2enEzdMoYNzibOfkNPHXc/qQu67PdAbK6', '14020637', '14020637@vnu.edu.vn', 'Đồng Thị  Thảo', NULL, NULL, NULL),
(250, '14020638', '$2y$10$BsTZxBYV6XGhO0GwuWblHOXAV97GJEcjJ1VINa/Ij4uezwJK3X/Ue', '14020638', '14020638@vnu.edu.vn', 'Nguyễn Xuân  Thuận', NULL, NULL, NULL),
(251, '14020643', '$2y$10$HYGyD/In8W2amG5FUvq4XO7clkqp9DKO4Eo5Bc9nxKdjseOxIVrXm', '14020643', '14020643@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(252, '14020646', '$2y$10$akqIRK110O/w2ztKc.ZoiepxAt0K5jszXmhgGRDxRDpbL5sIaUXEO', '14020646', '14020646@vnu.edu.vn', 'Bùi Thúy  Vân', NULL, NULL, NULL),
(253, '14020649', '$2y$10$tKwldvYBiH7L1XA31CC3PeasfFWxAueWCVcXb3cB3irPxmgmhFd.e', '14020649', '14020649@vnu.edu.vn', 'Nguyễn Đăng Tuấn  Anh', NULL, NULL, NULL),
(254, '14020652', '$2y$10$cQsYe76B6B3kBg5z3RE5DeTj9n7B3fi6PHKzT5GaBLcro0Jp7LGfa', '14020652', '14020652@vnu.edu.vn', 'Nguyễn Quang  Bách', NULL, NULL, NULL),
(255, '14020654', '$2y$10$Ue/taZ0ecS1lilgKurDbQuv5SKNlFNSRaAAn4Xy1LDg//d5dC1l.i', '14020654', '14020654@vnu.edu.vn', 'Nguyễn Hữu  Duẩn', NULL, NULL, NULL),
(256, '14020656', '$2y$10$Qev1Y.K4LZluhhnZQn/eH.YYeCNbdNJenAtfo0KFxy4blpw4BWnxW', '14020656', '14020656@vnu.edu.vn', 'Trần Quang  Duy', NULL, NULL, NULL),
(257, '14020657', '$2y$10$PQrqIM.67L5HJe26iQNNDeLO5tHqzP/vJhIyLqDzkZXIliPBE8zxe', '14020657', '14020657@vnu.edu.vn', 'Nguyễn Minh  Dương', NULL, NULL, NULL),
(258, '14020659', '$2y$10$Cy8E0ftb7orw8vPVuVHrb.OYJDG/tW7Hpeamz91d3hOrHLhJ/FDOi', '14020659', '14020659@vnu.edu.vn', 'Phí Thu  Hà', NULL, NULL, NULL),
(259, '14020678', '$2y$10$RbnPbnwo4KH3rCyNNUDOtOa1Mvb8QgYzwjxveCHZOrnSm3v.TWPQW', '14020678', '14020678@vnu.edu.vn', 'Vũ Văn  Thiết', NULL, NULL, NULL),
(260, '14020682', '$2y$10$AihWA6.8HOMrowL1RpR3cO/X8a.f6mVCZFsYmAtr.TUyQzd39gQtm', '14020682', '14020682@vnu.edu.vn', 'Nguyễn Hoàng  Tùng', NULL, NULL, NULL),
(261, '14020684', '$2y$10$i8FHGWI8sm0FYnvKoIi2f.xE0NclT4Lc3tL0jVefhhpyenTZTN9Ru', '14020684', '14020684@vnu.edu.vn', 'Hoàng Minh  Tú', NULL, NULL, NULL),
(262, '14020687', '$2y$10$6kb/lA5POImNH0SzqFAE3.y6POipdZGkmn3fDKMdQTGOE7PYBtTXu', '14020687', '14020687@vnu.edu.vn', 'Nguyễn Anh  Vũ', NULL, NULL, NULL),
(263, '14020692', '$2y$10$vdHeVgRaZmjvrnVC.lA10u8MxsltzqNc7vdZ8KzdUnHehi65.RJhK', '14020692', '14020692@vnu.edu.vn', 'Đinh Văn  Sao', NULL, NULL, NULL),
(264, '14020693', '$2y$10$zFxxY1DsIR1UjCEWnbqSLOXPJCNh1DxqWTdEjSWWKjE2sDzB9QywO', '14020693', '14020693@vnu.edu.vn', 'Nguyễn Tiến  Thành', NULL, NULL, NULL),
(265, '14020697', '$2y$10$7tXMAIX/UfoZp3BK9oYPYusqVWZnjyLasj7I/Xz6jee4yhnZUtgkK', '14020697', '14020697@vnu.edu.vn', 'Nguyễn Như  Cường', NULL, NULL, NULL),
(266, '14020814', '$2y$10$fqGuRtymcCeWrGcem15r9esJVrGNosOAL1.SGWCxT2fMuAxHkikAm', '14020814', '14020814@vnu.edu.vn', 'Phó Đại Nam  Phong', NULL, NULL, NULL),
(267, '14020832', '$2y$10$u2XM8xrq1nSYNcOqfR9lYu.2T9gpln3DRfzOfM2g89eDlHOdsEIvK', '14020832', '14020832@vnu.edu.vn', 'Dương Đức  Chính', NULL, NULL, NULL),
(268, '15020912', '$2y$10$WgUbZeZjbkiq3J6nq3WBgOIReODXWmBM4rTyuX5svZhCEk2mtr2ti', '15020912', '15020912@vnu.edu.vn', 'Nguyễn Đăng  Thế', NULL, NULL, NULL),
(269, '15020929', '$2y$10$QnUfgYhijzfiPJVmJaYiM.BkIwiOfTRNJCf0jHBYsL.ifChi95W2C', '15020929', '15020929@vnu.edu.vn', 'Cấn Tiến  Xuân', NULL, NULL, NULL),
(270, '15020936', '$2y$10$reRnEgonltNSXsnM0.OK6OhgBGiKw2grEeiW1/aLKyzWl/ETGecpq', '15020936', '15020936@vnu.edu.vn', 'Nguyễn Thanh  Cương', NULL, NULL, NULL),
(271, '15020963', '$2y$10$H38Dyr.54jh23Yd.h4wRlu1ObC11W/CjLkUqlxiJhCVIntzx7UM9K', '15020963', '15020963@vnu.edu.vn', 'Vũ Minh  Quang', NULL, NULL, NULL),
(272, '15020969', '$2y$10$91jztpCr9I5CIVGRUwARdOVPiHmMEs7VbSyZNGI8bHp1WKTAQ85S2', '15020969', '15020969@vnu.edu.vn', 'Trần Văn  Thiều', NULL, NULL, NULL),
(273, '15020970', '$2y$10$zDOiUqFwjBnBKI07W8YRpOwpWJW/3A77Xe5mvH/F2ilW8mOf0YTHK', '15020970', '15020970@vnu.edu.vn', 'Vũ Minh  Đức', NULL, NULL, NULL),
(274, '15020975', '$2y$10$HbMCMWqsHVPgteZfN4Y8.OFW7NHQVwppnbKL3ZXgO8yy7ycNs8n8O', '15020975', '15020975@vnu.edu.vn', 'Phạm Văn  Cường', NULL, NULL, NULL),
(275, '15021016', '$2y$10$8V/GBlo9VdQcliPHzLfQ0.KaRYmwmFIIiPm8Uh1zCDU9mdDfIrsI6', '15021016', '15021016@vnu.edu.vn', 'Phạm Thị Thu  Phương', NULL, NULL, NULL),
(276, '15021023', '$2y$10$UL.3tjdFoKbu2OlRMeyi8OoMzBxg0L1jRB5jMRSefzgdgLdA7sET6', '15021023', '15021023@vnu.edu.vn', 'Nguyễn Phương  Nam', NULL, NULL, NULL),
(277, '15021108', '$2y$10$0/gaEihZgOZ6gzGJ3qaNNOmoiXSjDsO0sOr49DDtc6Uon1jfUnyyO', '15021108', '15021108@vnu.edu.vn', 'Vũ Hoàng  Long', NULL, NULL, NULL),
(278, '15021327', '$2y$10$vnjO86V0PmgLQtTKWS.dMOwV0iFMbwfF.lt02RityqLb5e0j6ndWu', '15021327', '15021327@vnu.edu.vn', 'Trần Công  Minh', NULL, NULL, NULL),
(279, '15021476', '$2y$10$.T6OpGcNT.AD1I.qFXR.qO7WAIGdqpBE7eSDLHG5WtGge.ssqRyDO', '15021476', '15021476@vnu.edu.vn', 'Phạm Thị Quỳnh  Mai', NULL, NULL, NULL),
(280, '15021478', '$2y$10$sPDsER2Vw1kGT7/jts57DuoDlKkYs0vIfEPsFGIIX2xhhhQCi.mmi', '15021478', '15021478@vnu.edu.vn', 'Nguyễn Thế  Ngọc', NULL, NULL, NULL),
(281, '15021480', '$2y$10$qFSbUE4w.FTZwv6FCubvUujuZ2bdXyORdJaK5VDc8kvXnbCvObRmK', '15021480', '15021480@vnu.edu.vn', 'Vũ Ngọc  Quý', NULL, NULL, NULL),
(282, '15021486', '$2y$10$oJzMwAAWGtCuKxyOVcHPpOy.ArtlIZ4xM0/m4wDj5cpEm7nRty3PC', '15021486', '15021486@vnu.edu.vn', 'Nguyễn Đức  Toàn', NULL, NULL, NULL),
(283, '15021489', '$2y$10$7n6DkVknivvL.JKFc12x4OHi9hUXIA8IokS9AdKj5owzzwL.1wX7G', '15021489', '15021489@vnu.edu.vn', 'Trần Thế  Hoàng', NULL, NULL, NULL),
(284, '15021492', '$2y$10$/4EDRjnmBYwNG83FXVU1QO0WRs8Fg2p92kLVnforKtH/v8hBm5v.C', '15021492', '15021492@vnu.edu.vn', 'Nguyễn Văn  Nhất', NULL, NULL, NULL),
(285, '15021494', '$2y$10$BWhnX/I.zSpy8k3RSjyHgOGkbIHB.pYPFZCOZJzrXmgTTpKsKpc7K', '15021494', '15021494@vnu.edu.vn', 'Phan Chính  Quân', NULL, NULL, NULL),
(286, '15021499', '$2y$10$3SlP8ezpyRbeUg25uPdz5utYKS7LLv8bAkvQwaHDRwVRcVfyvkWUO', '15021499', '15021499@vnu.edu.vn', 'Trần Đức  Phương', NULL, NULL, NULL),
(287, '15021502', '$2y$10$YrLaWWXWum3mdlMXJu2LGOrW5wo0rE/IfQg89bUJVKSh7JXSE/o9O', '15021502', '15021502@vnu.edu.vn', 'Nguyễn Thị Minh  Thu', NULL, NULL, NULL),
(288, '15021507', '$2y$10$7byjo37s./JsNLUAWTW1w.FEw7eQLE1eK1NI/h6RXsFVPajtmEMSu', '15021507', '15021507@vnu.edu.vn', 'Nguyễn Lương  Bằng', NULL, NULL, NULL),
(289, '15021509', '$2y$10$4o1sxh3znQO7v5vYgU2HmOMvFFA6wrRR5e09WloUm1jjgbkQ.9TIy', '15021509', '15021509@vnu.edu.vn', 'Phạm Xuân  Lộc', NULL, NULL, NULL),
(290, '15021510', '$2y$10$ntMk.SWbYFu/1Z0m0F/QYOFiu9MWGp5mQJFhxJh5NeaIw3ZiP4ahe', '15021510', '15021510@vnu.edu.vn', 'Phạm Văn  Hiệu', NULL, NULL, NULL),
(291, '15021513', '$2y$10$Ng3s.QPLoowyw6fGJt.xcer3ju79Dq/6gQg2f7CfbNVL3cQ.wWQXi', '15021513', '15021513@vnu.edu.vn', 'Phạm Đình  Trung', NULL, NULL, NULL),
(292, '15021521', '$2y$10$4PUlWDZ0hPd9gF2fSWl41eaWIE/scjLjJjmRkfXFNl8xvPFEpDGye', '15021521', '15021521@vnu.edu.vn', 'Lê Hải  Châu', NULL, NULL, NULL),
(293, '15021523', '$2y$10$EISKztJbA/YqODIrM7O7uer7VYRfkZGA3NNm4ThidGJP/RysILfTm', '15021523', '15021523@vnu.edu.vn', 'Nguyễn Tiến  Đạt', NULL, NULL, NULL),
(294, '15021526', '$2y$10$luW6IxwTnXpwO0YIhQHx/uopgPOdrYwEkdAnSnhF2qpwIL8gKw09.', '15021526', '15021526@vnu.edu.vn', 'Nguyễn Đức  Thắng', NULL, NULL, NULL),
(295, '15021529', '$2y$10$yZayrQgWBAdkbptYdrbbJOEoAb2OlzpBQtzCMGev1zho1cF9I8EE2', '15021529', '15021529@vnu.edu.vn', 'Mai Trường  An', NULL, NULL, NULL),
(296, '15021531', '$2y$10$6BdbbvHW8Ea6QlOc.5lSc.71bTpM54zu3pkqimt.22tJyVNkxZftW', '15021531', '15021531@vnu.edu.vn', 'Nguyễn Duy  Quân', NULL, NULL, NULL),
(297, '15021533', '$2y$10$rl0dx96Naa1kfWNeQzdFj.4UYHtFDwICwcsva2wG34nSn92tH5Jaa', '15021533', '15021533@vnu.edu.vn', 'Bùi Đình  Duy', NULL, NULL, NULL),
(298, '15021534', '$2y$10$ml4DJFLnRsrZ0lnbG3ZT9OjYgaUHDknJgz8bZDkmS5IrY7bYBlnqu', '15021534', '15021534@vnu.edu.vn', 'Lương Thùy  Nhinh', NULL, NULL, NULL),
(299, '15021537', '$2y$10$PrDY3vLI8gN3cXQibiYGO.vYlQv0eQkQkOCaE/7yKDuqIzmylzGDu', '15021537', '15021537@vnu.edu.vn', 'Nguyễn Hoàng Khánh  Linh', NULL, NULL, NULL),
(300, '15021538', '$2y$10$EGY7giNUbTCF0lpsx8MYGetw1/KRcT/9EMK5FOhl0vpdptHdNDjBC', '15021538', '15021538@vnu.edu.vn', 'Trần Quốc  Nam', NULL, NULL, NULL),
(301, '15021541', '$2y$10$vPaPTz5/db7FPtrxIrM/sO2w6bYW68Uz7soccOIZWrPnhqtGmi9NS', '15021541', '15021541@vnu.edu.vn', 'Trần Xuân  Tuyến', NULL, NULL, NULL),
(302, '15021547', '$2y$10$I5jeg2gDxuVntRE2DBMo0OOn8FgxxXSw1YURjJyr3yvBWe5Wa2liS', '15021547', '15021547@vnu.edu.vn', 'Hoàng Thế  Hợp', NULL, NULL, NULL),
(303, '15021548', '$2y$10$Y.JmADwFiSMIepV6jWra..f9Xrvs43vAHhhyKTzZEL7JlmzQA5Mrm', '15021548', '15021548@vnu.edu.vn', 'Trịnh Vũ Tuấn  Anh', NULL, NULL, NULL),
(304, '15021556', '$2y$10$tbtOSU4SLSE5iW.2C0KPzuhPVz8I1d4BcvPAPwv7YQcMvRfJfg3QG', '15021556', '15021556@vnu.edu.vn', 'Đỗ Thành  Nam', NULL, NULL, NULL),
(305, '15021570', '$2y$10$L.bfJUhaTAjz0g974yqhg.UAW4HmJg/zswB0uJt3yAA1Z.wFnrPce', '15021570', '15021570@vnu.edu.vn', 'Hoàng Tuấn  Hùng', NULL, NULL, NULL),
(306, '15021574', '$2y$10$6v/soVrMqsP4C/lwypckmu38en6/wQ/MMYEnbk9Jb.7KwTLBa8kv.', '15021574', '15021574@vnu.edu.vn', 'Trần Văn  Đông', NULL, NULL, NULL),
(307, '15021577', '$2y$10$tyVlo/nS8.hbMkI1zW7K8.5LbIGMekTyxmKBZMSw.y9leZL8i4m6W', '15021577', '15021577@vnu.edu.vn', 'Ngô Tiến  Thành', NULL, NULL, NULL),
(308, '15021582', '$2y$10$fcesTKX7kWuHm7ZTrBSlxeKHDe6k60a.TMAdoBiGXpF//jvJUbQHa', '15021582', '15021582@vnu.edu.vn', 'Lưu Minh  Châu', NULL, NULL, NULL),
(309, '15021584', '$2y$10$/aqzDzM5UEsgHFr0XnsqLeIUKKatWqDoy0O6gnWXP4XeCD.4jc/MS', '15021584', '15021584@vnu.edu.vn', 'Vũ Minh  Trung', NULL, NULL, NULL),
(310, '15021593', '$2y$10$E7KHpfwml2UA8F0vp8UqvefiFhrJedzXUNzTQbCCtkgEUvZBWXLg2', '15021593', '15021593@vnu.edu.vn', 'Doãn Mạnh  Duy', NULL, NULL, NULL),
(311, '15021595', '$2y$10$XLFzhyC0z2z0DKsaAqzBuOAl4OhGnFQMuiVtKzWXqDcB.VKW8OONG', '15021595', '15021595@vnu.edu.vn', 'Phạm Quang  Nam', NULL, NULL, NULL),
(312, '15021818', '$2y$10$Pnb0mf.k02VFZkb/xwRv9O6OYnhT2SXNAn8mqsmzLA.7IS5iorb9G', '15021818', '15021818@vnu.edu.vn', 'Lê Hồng  Đông', NULL, NULL, NULL),
(313, '15021828', '$2y$10$C.qjZOomAunH8mN//h8W4OerMiug9SlgFKlsn/KTSX.eODtAEP8uO', '15021828', '15021828@vnu.edu.vn', 'Bùi Văn  Linh', NULL, NULL, NULL),
(314, '15021919', '$2y$10$E12QqiQrI6HhrKwRgCNpVOKT8c4tYYp2DUnjQ9D7UNCNQW0iP2kZ.', '15021919', '15021919@vnu.edu.vn', 'Nguyễn Thị Thu  Hương', NULL, NULL, NULL),
(315, '15021924', '$2y$10$IKPhGWmqYNsOgnEza7GpC.URiC.dr6MNwD65CfjmOCwdHgmzz4Bvi', '15021924', '15021924@vnu.edu.vn', 'Phan Anh  Dương', NULL, NULL, NULL),
(316, '15021930', '$2y$10$gqmu1p52xK5OE25L9K071.feyh6lBU9YowzYmuTpcIgmTHdYGlzJq', '15021930', '15021930@vnu.edu.vn', 'Phạm Thanh  Tú', NULL, NULL, NULL),
(317, '15021933', '$2y$10$mNXV27K9ZLVKmnNkMCVQkuqS3bD0uBjWMkX9G/5wjki3tTnELjuCG', '15021933', '15021933@vnu.edu.vn', 'Phạm Văn  Thịnh', NULL, NULL, NULL),
(318, '15021934', '$2y$10$MXXPuwAGtAC98l1H13fO7O9sTOMj7ePcq3eFDXYnWgpsMAuovdFSW', '15021934', '15021934@vnu.edu.vn', 'Nguyễn Văn  Chiến', NULL, NULL, NULL),
(319, '15021938', '$2y$10$7A/38bnBKbYqaXB0vvg6Q.mZXFU5n7Jka49c/s4lCal2clWsssLZu', '15021938', '15021938@vnu.edu.vn', 'Nguyễn Văn  Nam', NULL, NULL, NULL),
(320, '15021948', '$2y$10$2nE94VP8Xbdj5sC74f1YvuTgEF.LFft7nnKErWbu8iWxF2YsHcTZS', '15021948', '15021948@vnu.edu.vn', 'Nguyễn Mạnh  Linh', NULL, NULL, NULL),
(321, '15021951', '$2y$10$8allEFKdt14z8TXPOqt3tubMoTkjaxNHuUcwCMTErh.G7Djl3ROzq', '15021951', '15021951@vnu.edu.vn', 'Lưu Quỳnh  Trang', NULL, NULL, NULL),
(322, '15021952', '$2y$10$w42/4X4sDmklHEOMzWBvY.p4wWUFwUu9GIYX8c5imMoXNA7VVqKxi', '15021952', '15021952@vnu.edu.vn', 'Đinh Nguyễn Hoàng  Hiệp', NULL, NULL, NULL),
(323, '15021973', '$2y$10$tUtr3Z59izm55qjmwSnCvOAVBHY1LDfak51vLwolYpr9uI8HrTwty', '15021973', '15021973@vnu.edu.vn', ' Phạm Ngọc  Quang', NULL, NULL, NULL),
(324, '15021987', '$2y$10$1dmBTbiA1wtIgfUfcIacf.HvhLwIU/925Mo.VL3z2LMgqSri3OyhK', '15021987', '15021987@vnu.edu.vn', 'Trần Ngọc  Hoàn', NULL, NULL, NULL),
(325, '15021988', '$2y$10$lFr2pOtDBje4MLdjuaMfCOlVG1jXnIYbUr4yvQJaSlklK/ixsKSIm', '15021988', '15021988@vnu.edu.vn', 'Lê Văn  Lợi', NULL, NULL, NULL);
INSERT INTO `students` (`id`, `username`, `password`, `student_code`, `email`, `full_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(326, '15022245', '$2y$10$Mz3siEFyNj.QgJNOg8WVG.f04GpKh.ua9a67OLh/54sOb2rhEQ4Xi', '15022245', '15022245@vnu.edu.vn', 'Vương Quang  Huy', NULL, NULL, NULL),
(327, '15022247', '$2y$10$phamE0yzXqoaJJcwS55xLe6JOdAHJldvpHGpKiG5zJOkfWWrhA5yS', '15022247', '15022247@vnu.edu.vn', 'Nguyễn Vũ  Đức', NULL, NULL, NULL),
(328, '15022252', '$2y$10$KROKscGwaMVCV3kgx5yLC.P10VeBUpwdd3Mh5fPYLTNHnZTf4iGAG', '15022252', '15022252@vnu.edu.vn', 'Nguyễn Đức  Triều', NULL, NULL, NULL),
(329, '15022257', '$2y$10$ZXaipWayEMT0l3XrlKi8nOsVCWBKHbASe01A2bQa.u57QMYiiYpBq', '15022257', '15022257@vnu.edu.vn', 'Đào Thị Thanh  Thảo', NULL, NULL, NULL),
(330, '15022258', '$2y$10$7P/2U4Ux/UrMqsyjDjOiQePUmVOvFfeK6dSNmeNt6HtSNpU.djKFq', '15022258', '15022258@vnu.edu.vn', 'Nguyễn Bá Quang  Cường', NULL, NULL, NULL),
(331, '15022264', '$2y$10$hWqBSo7TaQSwu0bTwrEYTukMK.NLD50PStGe.9JZJVUTe9vgpi.Xq', '15022264', '15022264@vnu.edu.vn', 'Nguyễn Tiến  Trung', NULL, NULL, NULL),
(332, '15022269', '$2y$10$2E8wiSMPpnW1WYOsFopAs.Vd65zzDwB7QsV4x/iCu0H8IBf1rBbda', '15022269', '15022269@vnu.edu.vn', 'Nguyễn Thị  Hảo', NULL, NULL, NULL),
(333, '15022272', '$2y$10$VZWHi2Eq9QsSG4kvWVfUP.SeKoTpWX40DsPsuxfe2HrOtzQn2Ctuy', '15022272', '15022272@vnu.edu.vn', 'Bùi Ngọc  Thắng', NULL, NULL, NULL),
(334, '15022280', '$2y$10$LUbQl.cJZrvsJCd4P7zjae.iu8lx9t7zLG3BgzEddpqxBvppU.fgG', '15022280', '15022280@vnu.edu.vn', 'Nguyễn Xuân  Quyền', NULL, NULL, NULL),
(335, '15022281', '$2y$10$iBFJ7Li/hMgdff.KKdilpeVE0gNeuOMSUwd/tDHPRtHg.nKYlY/yS', '15022281', '15022281@vnu.edu.vn', 'Cao Duy  Văn', NULL, NULL, NULL),
(336, '15022286', '$2y$10$IQEn9zxWe/GzK.yuok4wv.3A.pkigzk2Qd0eDIeFVvx9rrrzehj2i', '15022286', '15022286@vnu.edu.vn', 'Vũ Huy  Phát', NULL, NULL, NULL),
(337, '15022288', '$2y$10$njG4z0p1OUFJDlAWwzRoFumbh532k9/pm5uDMvVYS7ASjVCiGFnNG', '15022288', '15022288@vnu.edu.vn', 'Phan Đức  Huân', NULL, NULL, NULL),
(338, '15022290', '$2y$10$F1j0209FwMK7StV..xivl.Wdkj.z7PjgcVCm9hjwVqV751nPieYgK', '15022290', '15022290@vnu.edu.vn', 'Trần Anh  Tuấn', NULL, NULL, NULL),
(339, '15022292', '$2y$10$9EQM8VrF8xI9UaiVC3xk9OvKXCr.9FNULwvlbhTbvfop9DS9cIxkS', '15022292', '15022292@vnu.edu.vn', 'Nguyễn Đức  Thắng', NULL, NULL, NULL),
(340, '15022295', '$2y$10$yB/oPDQDMli5ArOAlpKS9utBzSQ3yNEu/bb45mKPkfncbncejtvOq', '15022295', '15022295@vnu.edu.vn', 'Trần Công  Anh', NULL, NULL, NULL),
(341, '15022300', '$2y$10$fvV9nRWp6cRGMg7HgSFoIO39L8ID21Pj3f/pu9PaDUHLnVfdsjQoC', '15022300', '15022300@vnu.edu.vn', 'Nguyễn Thị Thu  Uyên', NULL, NULL, NULL),
(342, '15022306', '$2y$10$1/aPrYUsX86wTACFQPSHOOydj4ySCMYaGVSpRWgXXQiBxrZeVV2xW', '15022306', '15022306@vnu.edu.vn', 'Lương Thị  Thủy', NULL, NULL, NULL),
(343, '15022308', '$2y$10$/5aex8fFzMSrc/Maht0gSu0SKPVO774eLZ1v7IdptlOJghwtLaUNa', '15022308', '15022308@vnu.edu.vn', 'Lâm Hồng  Công', NULL, NULL, NULL),
(344, '15022706', '$2y$10$iQ1nqAVZ.iB9tgupJ8ihKu/Ry4nWcKkiQtgzQQvIPt.9TBTOSatrG', '15022706', '15022706@vnu.edu.vn', 'Nguyễn Ngô  Doanh', NULL, NULL, NULL),
(345, '15022708', '$2y$10$d9ONLX5mkG3jrPu/GfrZ3uh9hCC1uIqd32b.fV1qATswn5e2Q8eQy', '15022708', '15022708@vnu.edu.vn', 'Nguyễn Khắc  Minh', NULL, NULL, NULL),
(346, '15022709', '$2y$10$jVZkH9VQh0aqd4YLj3DZ7Ok66459MqdXkfQDwdlbT2o.pDiAK3kkC', '15022709', '15022709@vnu.edu.vn', 'Đặng Thị  Sáu', NULL, NULL, NULL),
(347, '15022713', '$2y$10$I/N4asw49zsxlBqDw/bRie88xQTQOjVmR9dYVYh4cXJqyayjwqdYy', '15022713', '15022713@vnu.edu.vn', 'Nguyễn Lương  Quyền', NULL, NULL, NULL),
(348, '15022720', '$2y$10$ByPuRr9YW5kMrC71a98TwuBByISzTCNgQQWQ/gpDiGdnJ8Nq9LQcW', '15022720', '15022720@vnu.edu.vn', 'Trần Chính  Đoàn', NULL, NULL, NULL),
(349, '15022725', '$2y$10$LXmktaMbtXPhBaV2igfYP.9Zx6jNDyQ4T2yrziK4DnFFHsl3kfYwK', '15022725', '15022725@vnu.edu.vn', 'Lê Anh  Tuấn', NULL, NULL, NULL),
(350, '15022726', '$2y$10$/H9VGZc72VoU8Pm7qSsdbOft74ItmMIGym/ZFL8Zn6CuhFTjp8cCe', '15022726', '15022726@vnu.edu.vn', 'Phạm Thế  Huy', NULL, NULL, NULL),
(351, '15022727', '$2y$10$WX2k/zNsMxo2nR7NWGy6CetGC0hJ.LJtrvnGYEV8rnsFdPN6pJ2xa', '15022727', '15022727@vnu.edu.vn', 'Nguyễn Văn  Quang', NULL, NULL, NULL),
(352, '15022736', '$2y$10$Y7tXIdQsCLNJXKEckAJVS.0bt6nT5MX4G2aFHx.2/13dp/wxa8gqW', '15022736', '15022736@vnu.edu.vn', 'Tạ Hoàng  Nguyên', NULL, NULL, NULL),
(353, '15022737', '$2y$10$uGvQe0NnNaf9gn3ee9bIp.PZqrwkq1bj0wBfaCFg6Sr9pr1W/a.Mm', '15022737', '15022737@vnu.edu.vn', 'Lã Văn  Hùng', NULL, NULL, NULL),
(354, '15022741', '$2y$10$0lPU/0VcZvTbVGzIsz7zSOK3fgi.hoy15zgDjrE1DuPL74SPyW.cW', '15022741', '15022741@vnu.edu.vn', 'Lương Đình  Bắc', NULL, NULL, NULL),
(355, '15022742', '$2y$10$P8HwXsv1aDL8S5KgDfC9bO0jHI4fP/NmCh57jApRKmShlSw7GEyUi', '15022742', '15022742@vnu.edu.vn', 'Đinh Thị  Hiếu', NULL, NULL, NULL),
(356, '15022748', '$2y$10$y2Ilg49YENj6eK3IluhREu1zKaoHRfX.VUYzXj2m25ebfKVgp/Aim', '15022748', '15022748@vnu.edu.vn', 'Nguyễn Danh  Hùng', NULL, NULL, NULL),
(357, '15022751', '$2y$10$oW7xpsDK9qwJBhq5ghDymu7gmal7vZymXNtor0/BlFRTrIlPKRPdG', '15022751', '15022751@vnu.edu.vn', 'Đỗ Thành  Long', NULL, NULL, NULL),
(358, '15022755', '$2y$10$ZUBDlczPZ7BYe/GyGzS3Tejpa..sfS9rGe6jiw2NW6NEc.S2bUMFO', '15022755', '15022755@vnu.edu.vn', 'Phạm Đình  Thành', NULL, NULL, NULL),
(359, '15022764', '$2y$10$2eOcsxMNZNmbQttAXEKPQuRMsdRTilYxmif4apztiPHQoS7CgQC7W', '15022764', '15022764@vnu.edu.vn', 'Trần Thị  Thơ', NULL, NULL, NULL),
(360, '15022773', '$2y$10$qbeGIx0bak4/06ZURFO8JujDPsp766nD5Acf48owxO/7GqLZ7E0oa', '15022773', '15022773@vnu.edu.vn', 'Đỗ Thị Thanh  Dịu', NULL, NULL, NULL),
(361, '15022807', '$2y$10$//2.9M5dZn1EUDiZpVxVNuzW8H3aRStUoE79Pgwi0YUTmExt6nVDu', '15022807', '15022807@vnu.edu.vn', 'Nguyễn Thu  Hằng', NULL, NULL, NULL),
(362, '15022808', '$2y$10$GqJEkuwy1SLhM9BPrwBOVOaqbLlNAy1bJtklMuFsf33HPMlMxGfR2', '15022808', '15022808@vnu.edu.vn', 'Nguyễn Văn  Chương', NULL, NULL, NULL),
(363, '15022809', '$2y$10$aB1wYRHPmspc7xDzz5LSfevgK5cUKKKcHc4fMzyUm8CP1mXNmIBo2', '15022809', '15022809@vnu.edu.vn', 'Nguyễn Văn  Ngọc', NULL, NULL, NULL),
(364, '15022811', '$2y$10$uoDRHXnGjm04QwSesf7CNeTIhZWuVA4WFFtex161HZ5hPDH2y.MlS', '15022811', '15022811@vnu.edu.vn', 'Đoàn  Lương', NULL, NULL, NULL),
(365, '15022812', '$2y$10$sGleGTrBuNrICtHCFgXWZujaXTTNlsXBMjJfgbvUZ01Ih/LpwrtLm', '15022812', '15022812@vnu.edu.vn', 'Nguyễn Thị  Hoài', NULL, NULL, NULL),
(366, '15022813', '$2y$10$TY7D9r/Gt.wWr4EexqDSpe8ZyF6OGG2XPnrN7YHKDYvAvcRZPv7C2', '15022813', '15022813@vnu.edu.vn', 'Trần Hoài  An', NULL, NULL, NULL),
(367, '15022815', '$2y$10$kGLH.yStBJl44CDwJFxI9OjHVexWHHE0TNX/c5R9mFHkuViMmwwfe', '15022815', '15022815@vnu.edu.vn', 'Tạ Trung  Kiên', NULL, NULL, NULL),
(368, '15022816', '$2y$10$NUNVZ55LQCuXr.3oWWv6lur029azjtTxvckrE/dUE6qP/xuk.9BEK', '15022816', '15022816@vnu.edu.vn', 'Vũ Văn  Đạt', NULL, NULL, NULL),
(369, '15022817', '$2y$10$nCi6B3hvpQFd/2WQttfc7OkLwd1ftPXJ2quD4d0JyL2wlE2nQz6Ia', '15022817', '15022817@vnu.edu.vn', 'Nguyễn Lưu  Hoàng', NULL, NULL, NULL),
(370, '15022818', '$2y$10$zSz9CUaUxIgmbVgaBsAqN.0k8nkS8H/WjfS/lFvM5porVmgrM6Tzm', '15022818', '15022818@vnu.edu.vn', 'Tạ Đình  Lượng', NULL, NULL, NULL),
(371, '15022869', '$2y$10$QZZ7frg5pzWFRLJqtSK/WeJObXlSAOnWnZRnFWB4C1cphWQUDWw/K', '15022869', '15022869@vnu.edu.vn', 'Khương Tuấn  Dũng', NULL, NULL, NULL),
(372, '16020803', '$2y$10$VsCFB0fjUdRrrVYARSlNL.Bb0dc4FhApZqfJ3y9ntpuh3Q1TtY0Ia', '16020803', '16020803@vnu.edu.vn', 'Vũ Đình  Thắng', NULL, NULL, NULL),
(373, '16021523', '$2y$10$XWwdRQ3e9JBGi9xcyAVogOjLt5EOX//hPHoZxTdhbP/xMcBWbYqd6', '16021523', '16021523@vnu.edu.vn', 'Nguyễn Văn  Thức', NULL, NULL, NULL),
(374, '16021526', '$2y$10$4z60oYnGGnRdx7UjDYPOCOAjomJ658S5LsjpsHmqwPoA.g2OoHTqu', '16021526', '16021526@vnu.edu.vn', 'Lê Văn  Tiến', NULL, NULL, NULL),
(375, '16021532', '$2y$10$.otRA1d3dkPWzBnHpuqaG.ziDRv5NpqxBrrBaDSPpkjiuLKlAgrKy', '16021532', '16021532@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(376, '16021536', '$2y$10$wMlBAxoKsdwP9Ez71eH/leA93xuMnsXLXriQUgJwwDZPYhng0q4w2', '16021536', '16021536@vnu.edu.vn', 'Hoàng Nguyễn Minh  Tuấn', NULL, NULL, NULL),
(377, '16021537', '$2y$10$DWV8axtiHzdRK8CpnxdyPeb.eT9Z1R7jUtW9MdACLFKTlBVnnL3Mi', '16021537', '16021537@vnu.edu.vn', 'Lê Hồng Anh  Tuấn', NULL, NULL, NULL),
(378, '16021538', '$2y$10$9lXc.XwKjXCfXXccjc0GYOQ/qMH/DZZVIPEWCwUTEwWRXn1vq6waO', '16021538', '16021538@vnu.edu.vn', 'Nguyễn Duy  Tuấn', NULL, NULL, NULL),
(379, '16021541', '$2y$10$XmDyQzV49wYY5jPO376AO.5z9MgJCSKcrkfdYpg3cQkZvxy7BWw3e', '16021541', '16021541@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(380, '16021542', '$2y$10$RcxWS9fCrHR0fJiSwV77YuSL1RL4hqsyL0iMfAvg.XyBOJpX9ZaL6', '16021542', '16021542@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(381, '16021544', '$2y$10$Y4oZv3yvfnTCrjNbORc0ceXaLJdSLwA95MNwfmcIXnX2CtBTKHLzu', '16021544', '16021544@vnu.edu.vn', 'Ngô Văn  Tuyến', NULL, NULL, NULL),
(382, '16021551', '$2y$10$WDCNbKX.upT39J1rfqTTKOweLZAOyE4lohrR0FnmVydlRrH2SxN4S', '16021551', '16021551@vnu.edu.vn', 'Đào Thế  Anh', NULL, NULL, NULL),
(383, '16021554', '$2y$10$ISXbocD20xpHyMp6PXFNz.LeBOTRcZsUCVebo74XixG1dkev0QEky', '16021554', '16021554@vnu.edu.vn', 'Phạm Tuấn  Anh', NULL, NULL, NULL),
(384, '16021562', '$2y$10$Cup4N0dqP4iZXcrPAFLLMeaX0LlmVHkS3MV/ClO6HrH6BRE9kuNnm', '16021562', '16021562@vnu.edu.vn', 'Nguyễn Ngọc  Doanh', NULL, NULL, NULL),
(385, '16021563', '$2y$10$BoaNq9hjbWiC0/qW6vd9xuOMyZfitObCrmEpl/FteNmblYU41pu.K', '16021563', '16021563@vnu.edu.vn', 'Trần Quý  Đông', NULL, NULL, NULL),
(386, '16021565', '$2y$10$2qZsdKjetGh/gEFMbFHfG.RlXCS9dUUDBauxh00p4eQzIkVQgRNTq', '16021565', '16021565@vnu.edu.vn', 'Phạm Ngô Tiến  Dũng', NULL, NULL, NULL),
(387, '16021570', '$2y$10$v1oO7o3l98tI/eqJw/OZPuOIU0mHN1fRbAv31BXyrDbTir31lcmly', '16021570', '16021570@vnu.edu.vn', 'Vương Xuân  Dương', NULL, NULL, NULL),
(388, '16021571', '$2y$10$QAXVIUjy2v2D7eLJ3R9h6eZp0qXGhV/0nnDmIr1PO7FUE1zRdWx5a', '16021571', '16021571@vnu.edu.vn', 'Trần Đại Trường  Giang', NULL, NULL, NULL),
(389, '16021572', '$2y$10$YeSqnh71bl7W56dQTsCepOSnWhYsEvwJEOPDRIHFj/6vot.ByB01y', '16021572', '16021572@vnu.edu.vn', 'Hoàng Thái  Hà', NULL, NULL, NULL),
(390, '16021574', '$2y$10$vJaPhxBs4PZezlUjBx5UB.JReJz5fN/NvKS.jnrJpVu4x9Zg9ZYLW', '16021574', '16021574@vnu.edu.vn', 'Nguyễn Minh  Hiền', NULL, NULL, NULL),
(391, '16021577', '$2y$10$5tFGZZwOfGixhqeRMxn/ruyI6Yw5TEJGBg/jS99dfJuCPw66qQYLq', '16021577', '16021577@vnu.edu.vn', 'Đỗ Minh  Hiếu', NULL, NULL, NULL),
(392, '16021580', '$2y$10$xc3gI9wm4ycNhuq1ZMPBBOb7mKdIfc9ndQyslfW9Xq32znHu1DGy.', '16021580', '16021580@vnu.edu.vn', 'Nguyễn Đắc  Hoàn', NULL, NULL, NULL),
(393, '16021585', '$2y$10$Ba8KKFnLp9czZf7ogmF6V.75wGtsjyPIPVXkLQ7PDEcyaki33im1.', '16021585', '16021585@vnu.edu.vn', 'Trương Xuân  Hội', NULL, NULL, NULL),
(394, '16021588', '$2y$10$5DjZIV.kCn0zSry026GGQugKSqPGdkpiFSXfpDo2Hx2B5UGHvz2R6', '16021588', '16021588@vnu.edu.vn', 'Nguyễn Việt  Hùng', NULL, NULL, NULL),
(395, '16021589', '$2y$10$IghQ4faoqMDNcDBWNQFKre2RKZI.4AQGZ4sHtVNCkJC3VJESg7GPG', '16021589', '16021589@vnu.edu.vn', 'Cao Hữu  Hưng', NULL, NULL, NULL),
(396, '16021591', '$2y$10$et5yM8Sh8GAPbY0U/nKOpuicq6Ra3VCH7Ny08ETRPNA9fn/gcStCG', '16021591', '16021591@vnu.edu.vn', 'Lê Duy  Hưng', NULL, NULL, NULL),
(397, '16021594', '$2y$10$VD3L8K.cdSCiRaP8w3bCc.0zAJbc.VIg1AVOzknlmN35/dhFfqlTK', '16021594', '16021594@vnu.edu.vn', 'Nguyễn Công  Huynh', NULL, NULL, NULL),
(398, '16021597', '$2y$10$4RUd0BQxTmAUz7ZDvcTHsOmDAU3A9P5Aff/dfpfBqy3y6OkIaiDeG', '16021597', '16021597@vnu.edu.vn', 'Đào Ngọc  Lâm', NULL, NULL, NULL),
(399, '16021601', '$2y$10$dnkGVY1UqEcQ78WpxFBKku4JYk/6tZk1jWwoM9h7JuoWK3dLDY6TG', '16021601', '16021601@vnu.edu.vn', 'Ninh Thị Nhật  Lệ', NULL, NULL, NULL),
(400, '16021602', '$2y$10$CZfIVcXREHifMYflYweEOO949TD16ghwLZcmkAF1pw.cTW2RqysiG', '16021602', '16021602@vnu.edu.vn', 'Đỗ Huy  Linh', NULL, NULL, NULL),
(401, '16021605', '$2y$10$08rWQYOpnL30OUuCZ1ZtcOlcRvyNCgGpgWRETTTpZYwMfEE3hvmW6', '16021605', '16021605@vnu.edu.vn', 'Nguyễn Đăng Bảo  Long', NULL, NULL, NULL),
(402, '16021607', '$2y$10$i9wmvl4Fa1gvwFHqPu/4xeVI3uUVzuzAUKNeNYDWuWy.IV58m26z.', '16021607', '16021607@vnu.edu.vn', 'Đồng Thị Thanh  Lương', NULL, NULL, NULL),
(403, '16021610', '$2y$10$hJX4P8qd0VIsehcYy0TNzOY8dCJ5jFik.7wLEXacBO5GUjJ9dScGC', '16021610', '16021610@vnu.edu.vn', 'Phạm Tiến  Mạnh', NULL, NULL, NULL),
(404, '16021614', '$2y$10$zdEmwriamUvzCcsw6IRZxOrUBtu7Rw.CXr.fvqej2.CDevTlBvFJG', '16021614', '16021614@vnu.edu.vn', 'Bùi Phương  Nam', NULL, NULL, NULL),
(405, '16021616', '$2y$10$FYyGfein4uiYdo.JFqJ0HONtAc5AijQ6.2QAK6K.d17SdTKpiGVBa', '16021616', '16021616@vnu.edu.vn', 'Trương Văn  Nam', NULL, NULL, NULL),
(406, '16021617', '$2y$10$F9DXfok1LypGBcaXbEi65.KIoXBHxH.w445pHuo9puHX8WDlLZsIi', '16021617', '16021617@vnu.edu.vn', 'Nguyễn Thị Thúy  Nga', NULL, NULL, NULL),
(407, '16021621', '$2y$10$BXMqtqe9tPiN34Ftd.NVyuQcKLcNMWADauiL0Ue/swM.dZmVuwX0i', '16021621', '16021621@vnu.edu.vn', 'Bùi Thị Hồng  Nhung', NULL, NULL, NULL),
(408, '16021622', '$2y$10$NMBmS8jI3.EVpiR/QxvaxuUrDfagyJtpcPw28rG1IlGIurwxr8/pe', '16021622', '16021622@vnu.edu.vn', 'Tăng Thị  Nhung', NULL, NULL, NULL),
(409, '16021623', '$2y$10$7LNtN8Qm767HGkA3KIBmiOpNXwsaLUUc4HYkroQaCmfBR0DgjGYbS', '16021623', '16021623@vnu.edu.vn', 'Kiều Thanh  Phong', NULL, NULL, NULL),
(410, '16021626', '$2y$10$eVVoA/ReceI7Ut6OvJxH5OdEgMOHesYuF.8a4D5aPErkCi7UHr2IS', '16021626', '16021626@vnu.edu.vn', 'Đỗ Hữu  Phúc', NULL, NULL, NULL),
(411, '16021628', '$2y$10$JsGnv83a.76JM6fIrzbRbeCC0a48XCc1uuCDWtgq2E5fZjqk7Yjgu', '16021628', '16021628@vnu.edu.vn', 'Phan Tiến  Phước', NULL, NULL, NULL),
(412, '16021629', '$2y$10$w/kdkFrOC4wesn423BBsBO.m5cb/OqeIGvH5g.lZVbeQiXijOgkZG', '16021629', '16021629@vnu.edu.vn', 'Ngô Minh  Phương', NULL, NULL, NULL),
(413, '16021636', '$2y$10$LsG1LBFksSuufisxi1A20eI7TSzTZOTmJHVJNIbEnEogbj7UNB.a.', '16021636', '16021636@vnu.edu.vn', 'Phạm Văn  Quyến', NULL, NULL, NULL),
(414, '16021637', '$2y$10$UwqEahY7x/6pK3qlZedQgen9bE7gBA9Y28I7rhurVIZ84LtJbwyBu', '16021637', '16021637@vnu.edu.vn', 'Phạm Xuân  Quỳnh', NULL, NULL, NULL),
(415, '16021644', '$2y$10$QRitsfF1zbqozP4jOu5TsugaNSNfoRkS6/1BX00SUJcgBdKQjVmKa', '16021644', '16021644@vnu.edu.vn', 'Phan Văn  Thắng', NULL, NULL, NULL),
(416, '16021647', '$2y$10$RVVHqMRPV8npCWxJ3718CePnOQwkZamSAUoNWH9EfmVnsj5KnDTPi', '16021647', '16021647@vnu.edu.vn', 'Đồng Văn  Thành', NULL, NULL, NULL),
(417, '16021650', '$2y$10$J13PiO9ueF8tvZEi5txrBeismxjBf1g/9e1ZOW6B9Wk39FiTcR6Eq', '16021650', '16021650@vnu.edu.vn', 'Nguyễn Khắc  Thành', NULL, NULL, NULL),
(418, '16021652', '$2y$10$huIB9H2ATgQ6MfEucg4MYesyr9KBWKc0clxeruKWk/GSVaVWdddgq', '16021652', '16021652@vnu.edu.vn', 'Nguyễn Thị Thanh  Thư', NULL, NULL, NULL),
(419, '16021655', '$2y$10$PDKJa8vIDm/6G4NwLjt5puRMO0i8Mw5nPJB0fzNPW4nXXFOy0pdCe', '16021655', '16021655@vnu.edu.vn', 'Lê Đức  Toàn', NULL, NULL, NULL),
(420, '16021658', '$2y$10$GI8W.oYp0GkjmCy2X/8jL..mRabs0FNWZ/pQj6NqUz0WLZwDgexWa', '16021658', '16021658@vnu.edu.vn', 'Mai Phúc  Triệu', NULL, NULL, NULL),
(421, '16021659', '$2y$10$/FRHNp9yhCP3bW40Bip3N.GCOyruKsobALubb4Sm/v5Qp0JZW6IhG', '16021659', '16021659@vnu.edu.vn', 'Đinh Bá  Trung', NULL, NULL, NULL),
(422, '16021672', '$2y$10$mnHr/NVlbzQSjNTriVZ8HuCsD244iy1f4jzLitJOiX2QfkBXGXBC.', '16021672', '16021672@vnu.edu.vn', 'Trần Tiến  Anh', NULL, NULL, NULL),
(423, '16021678', '$2y$10$9yLg4.mrSL4pYEWZWWWkAOtqpsSY/Yrc6Ep.pHTEqfzp3.D0mkSb6', '16021678', '16021678@vnu.edu.vn', 'Trần Thị Linh  Chi', NULL, NULL, NULL),
(424, '16021682', '$2y$10$AipHvML4prd.D3SN75xISekVv7q.oncZ6.WAMeAUpKjHg8Mux/1pW', '16021682', '16021682@vnu.edu.vn', 'Hà Văn  Đăng', NULL, NULL, NULL),
(425, '16021690', '$2y$10$4dCq7v7Aef4Zww3YiWMMm.DZleUun4I4KNcVLTz8htYMBXSbxNUGi', '16021690', '16021690@vnu.edu.vn', 'Dương Tuấn  Dũng', NULL, NULL, NULL),
(426, '16021693', '$2y$10$Vn0DmLNUoKHPFsgBNHn8qOSDDNx77IL8hCxqEiMdLe/YoDmPNSukW', '16021693', '16021693@vnu.edu.vn', 'Phan Lạc  Dương', NULL, NULL, NULL),
(427, '16021715', '$2y$10$2.kcTugrbmVy6g4neS1THuVwZH3uHkIobzrTu7M3tFdD7Aqs0pUyK', '16021715', '16021715@vnu.edu.vn', 'Phan Ngọc  Huy', NULL, NULL, NULL),
(428, '16021721', '$2y$10$I8X1yAGmr27GwLlYK/itB.YyXA0xbDsUVS9t.HzX8IlcZaUFyq1Ui', '16021721', '16021721@vnu.edu.vn', 'Vũ Thị Ngọc  Khánh', NULL, NULL, NULL),
(429, '16021726', '$2y$10$jxitN/iJYcRCJGLOR3TKCOh8zPabJ7F74bg1Rt0IVLKJY9afvqP1.', '16021726', '16021726@vnu.edu.vn', 'Nguyễn Thế  Lâm', NULL, NULL, NULL),
(430, '16021730', '$2y$10$9Cdk9PJwil.DVxNGUtME3.5OlVQ.2n4LNg6vPqoRb0WJ0Eg8hi0U6', '16021730', '16021730@vnu.edu.vn', 'Trần Quyền  Linh', NULL, NULL, NULL),
(431, '16021740', '$2y$10$lSaCYkE1hEJmP5o76zrNCO.a.EvY6jfH/tVZvoo5UKu43dtiJXcKS', '16021740', '16021740@vnu.edu.vn', 'Nguyễn Nghĩa  Minh', NULL, NULL, NULL),
(432, '16021743', '$2y$10$ij9rfNP9wqQwKKHAUODTNeUz0RexA8vZ/b9q/B2l8dlLxENfWgo4q', '16021743', '16021743@vnu.edu.vn', 'Lê Trọng  Nghĩa', NULL, NULL, NULL),
(433, '16021745', '$2y$10$zE9hnjAVAGnWMAaD6O1q3ejtfH.ajTOoT3VeQiZ/GGAM7eNbyH7Z6', '16021745', '16021745@vnu.edu.vn', 'Nguyễn Sỹ  Nhân', NULL, NULL, NULL),
(434, '16021746', '$2y$10$qL9jL82sz39yUCkJZ4WsPuo0lV1pIWhoUPvJxdDiKFKGZmxZgiSjK', '16021746', '16021746@vnu.edu.vn', 'Hà Thị Hồng  Nhung', NULL, NULL, NULL),
(435, '16021767', '$2y$10$12zr8ZtozjkQgIB0UluOueXl22F/UnI/YHx23QRL9QfQJjvwxXv.G', '16021767', '16021767@vnu.edu.vn', 'Nguyễn Thị  Thoa', NULL, NULL, NULL),
(436, '16021768', '$2y$10$ed.cEzaBvwq43TOglouEIe0rLV0oPPRKQSRjdfC9qCGez5mLfgjla', '16021768', '16021768@vnu.edu.vn', 'Nguyễn Quang  Thông', NULL, NULL, NULL),
(437, '16021769', '$2y$10$VksHBaKOG2Hr1tZVK2itbOKxIUB.5esHltiMd7wBWDueFLWoURJDe', '16021769', '16021769@vnu.edu.vn', 'Nguyễn Thị  Thường', NULL, NULL, NULL),
(438, '16021779', '$2y$10$6kzcIM7VOzg7WgU0Aquw8.addjyUFfaaU1g6Ea7Rm9Wc6Jfabd0uS', '16021779', '16021779@vnu.edu.vn', 'Hoàng Lê Anh  Tuấn', NULL, NULL, NULL),
(439, '16021787', '$2y$10$8xfM4L2d/akF5CEGOmLo0OEXTetmDLeLzVgYo0veENohlTvT7yoNy', '16021787', '16021787@vnu.edu.vn', 'Nguyễn Trọng  Vinh', NULL, NULL, NULL),
(440, '16021824', '$2y$10$KREuv5TppbNyplCN3kwuLuu05VnDMEkTK.H7xkSkAj3NNBvO.JZcO', '16021824', '16021824@vnu.edu.vn', 'Đỗ Thành  Đạt', NULL, NULL, NULL),
(441, '16021832', '$2y$10$ufDi4cJA906h6PzxMMvBM.X6AmJLsOjnlcLtagi6CNiFimtVCzGdu', '16021832', '16021832@vnu.edu.vn', 'Nguyễn Gia  Phong', NULL, NULL, NULL),
(442, '16021843', '$2y$10$/SZRYUVt7MBeHy4byz2Yc.tTO4BfzZBQBSRZRki.Ej87oIe1Zv9YC', '16021843', '16021843@vnu.edu.vn', 'Nguyễn Thị Hoàng  Oanh', NULL, NULL, NULL),
(443, '16021861', '$2y$10$OpPw6GvHWz1zkW1GrelFL.U7J2BclceNUmeAkXnTXwvVP2Z69PkF.', '16021861', '16021861@vnu.edu.vn', 'Đặng Mỹ  Duyên', NULL, NULL, NULL),
(444, '16021878', '$2y$10$5U6BxVQ1C/1tPNveOMT3dO/cCsiaqTohncDOByTOOFzvf1FxZKX4e', '16021878', '16021878@vnu.edu.vn', 'Hoàng Đình  Nam', NULL, NULL, NULL),
(445, '16021890', '$2y$10$hwojH06oL7ZFN9WtcRWgQOVNCoezWwpCF4R6PS8ARFqhabxiAFi5u', '16021890', '16021890@vnu.edu.vn', 'Nguyễn Văn  Thắng', NULL, NULL, NULL),
(446, '16021941', '$2y$10$HPHOLGPP.x8If9qlk5ppSujQ6.BZ3smDDeDx7Z97L5MEYWTaPDsK2', '16021941', '16021941@vnu.edu.vn', 'Nguyễn Đức  Toàn', NULL, NULL, NULL),
(447, '16021942', '$2y$10$Z2NV6Pe.VccQlgS1VCZnD.lWvBrvwjetiM8eK5EzTFTEuy7KL3gCC', '16021942', '16021942@vnu.edu.vn', 'Ngô Thị Huyền  Trang', NULL, NULL, NULL),
(448, '16022150', '$2y$10$IsAbsKE5aTVViO5VyQeYlOZUQNSD6xYDKu4OaPaWXwcvidxwkt1oG', '16022150', '16022150@vnu.edu.vn', 'Trần Hoàng  Anh', NULL, NULL, NULL),
(449, '16022164', '$2y$10$5ZwwIHL1t6rzbxKTe3jfTOEPUrNPF1WbDU3ZEYxcXZxD09EwTJgJ6', '16022164', '16022164@vnu.edu.vn', 'Lê Quang  Đạt', NULL, NULL, NULL),
(450, '16022171', '$2y$10$I4fvlwwOxiQkPawTOqaIh.58eaWncMpIE6CzUflcjzuX1.ARCHcHa', '16022171', '16022171@vnu.edu.vn', 'Ngô Thị  Hiền', NULL, NULL, NULL),
(451, '16022173', '$2y$10$1o.qjYRh/DPhBCdXQ9c0NOOeptgopbn3MPd24IbVOL4AxAXWCoCo6', '16022173', '16022173@vnu.edu.vn', 'Lê Xuân  Hiếu', NULL, NULL, NULL),
(452, '16022183', '$2y$10$OuV7NZcQPza.Ken2BhXv1uvqY0HVMr7u6lxo0U90DWN/AlVqXuuP2', '16022183', '16022183@vnu.edu.vn', 'Vũ Đăng  Huy', NULL, NULL, NULL),
(453, '16022191', '$2y$10$vtwUte.QLD9bhQTTZwr57OHdEB5RRUxHqpud.dEPKlQzgzlqR2WU.', '16022191', '16022191@vnu.edu.vn', 'Lê Nam  Khánh', NULL, NULL, NULL),
(454, '16022193', '$2y$10$Xzgypo6OhhotL6RkpgB6zePA4z52IMqvgtNuFjlU1ouFsmQGd9qQK', '16022193', '16022193@vnu.edu.vn', 'Nguyễn Ngọc  Lâm', NULL, NULL, NULL),
(455, '16022194', '$2y$10$oBfZLRBmZ8uZXBot9YdDYOwOKX7oOSjF53IpG/gfr9oYoaU5t6cei', '16022194', '16022194@vnu.edu.vn', 'Đoàn Nho  Lâm', NULL, NULL, NULL),
(456, '16022199', '$2y$10$Dpu4/ParJw5/6G.7fAms/e4OcjDcFaQRDnxywhOlvhczWcfo5K73i', '16022199', '16022199@vnu.edu.vn', 'Vũ Quyền  Linh', NULL, NULL, NULL),
(457, '16022215', '$2y$10$HB1XUEnFxG8l3y8W6WrjEu72CTOeH2j9YaSMh2piBs8EaUSjyZHSu', '16022215', '16022215@vnu.edu.vn', 'Nguyễn Hữu  Phúc', NULL, NULL, NULL),
(458, '16022221', '$2y$10$Nw6fsNYppXxVOWkWSSKB3uvXJdTVYZu4M/q8kGXjFn5npOpunJ4dO', '16022221', '16022221@vnu.edu.vn', 'Vũ Đức  Sơn', NULL, NULL, NULL),
(459, '16022222', '$2y$10$jZRUn3CWmg/aB9LRkDHkMO80ri3bD9Wt2Zm0N1X0o2lYqNFJIhsqS', '16022222', '16022222@vnu.edu.vn', 'Trần Ngọc  Tân', NULL, NULL, NULL),
(460, '16022227', '$2y$10$54eWWwT27dsWVmcnj5C05uCfeu/IiVMrDT.Z7DIUySeNrNySeYQmG', '16022227', '16022227@vnu.edu.vn', 'Vũ Viết  Tuân', NULL, NULL, NULL),
(461, '16022400', '$2y$10$Dy/OMjr.eZbW99CN3nB6fOwV4XWQvC8V64Wr5u2nRfNxOnbvSi4Aa', '16022400', '16022400@vnu.edu.vn', 'Nguyễn Sơn  Trường', NULL, NULL, NULL),
(462, '16022423', '$2y$10$G835j6Sx7YVQ28xv45aZFewN5XRsf2MItViQy7l0JpltAQ/G.VK1O', '16022423', '16022423@vnu.edu.vn', 'Nguyễn Viết Tiến  Anh', NULL, NULL, NULL),
(463, '16022424', '$2y$10$ckoE1g5kCZdQbTR8WfDfguPwU5FxxtpSSLFA.8KIS1mgH0uGsZcJO', '16022424', '16022424@vnu.edu.vn', 'Nguyễn Thanh  Bình', NULL, NULL, NULL),
(464, '16022428', '$2y$10$.e2wjdmja0Z9Tnordptzh.4aDObXVti1VBPVYDygyHTHeuzAyHfKK', '16022428', '16022428@vnu.edu.vn', 'Nguyễn Văn  Diên', NULL, NULL, NULL),
(465, '16022429', '$2y$10$N4eqzz9SQ24h0usQy/7Z3.hHCDkHKYsBYtAgIZnGrzq8qvMBNXkCq', '16022429', '16022429@vnu.edu.vn', 'Vũ Minh  Dũng', NULL, NULL, NULL),
(466, '16022433', '$2y$10$6arTZyC45qF0Qc4.vHNWh.GcdluqIgSQkgk1krFkwu43ZvwCcKieK', '16022433', '16022433@vnu.edu.vn', 'Nguyễn Thị  Hoài', NULL, NULL, NULL),
(467, '16022435', '$2y$10$IcKqM4KU2gLFFnnTQ7Xige72LcFQNDmb7F5BmSFPQO2uEYTktXhQK', '16022435', '16022435@vnu.edu.vn', 'Doãn Đoàn Đại  Hùng', NULL, NULL, NULL),
(468, '16022436', '$2y$10$RdDx3PvOYFVT.eQ4NXvcBeprF4AX5yrdz9FVtUmHm7wUJm3TTLxHi', '16022436', '16022436@vnu.edu.vn', 'Nguyễn Huy  Hùng', NULL, NULL, NULL),
(469, '16022441', '$2y$10$uXxZr8Y/6Q7tcnnVyx91HO3Rpo5mWIkYcpzuXn6uVKQM55ZP.dJ7O', '16022441', '16022441@vnu.edu.vn', 'Nguyễn Duy  Hưng', NULL, NULL, NULL),
(470, '16022442', '$2y$10$7ihXZKxumZt78KmJ.QXbKODvWCgY7B0TVumIUHCv2wy8HJnh6qA7e', '16022442', '16022442@vnu.edu.vn', 'Hà Ngọc  Linh', NULL, NULL, NULL),
(471, '16022443', '$2y$10$517ZCI5t4xFFQHUKFLf/levzPqWrhIAQJPJ8I7QA52AM3IEnl2dwC', '16022443', '16022443@vnu.edu.vn', 'Kiều Thanh  Nam', NULL, NULL, NULL),
(472, '16022445', '$2y$10$gWatgSWyHkO3S91pJlC1s.C5UVPciaD2jbIZW1k3u94fnuConahf2', '16022445', '16022445@vnu.edu.vn', 'Phan Văn  Tài', NULL, NULL, NULL),
(473, '16022448', '$2y$10$wyhl54MxGPs.vIICTxHYbeISeBzk328EZagUWOUls/GJp6OKC5BRq', '16022448', '16022448@vnu.edu.vn', 'Đặng Thanh  Tuấn', NULL, NULL, NULL),
(474, '16022450', '$2y$10$/TXzXkYoNjrElI6cVbJZtusIHvrUUc8fOC.jReeXDMfBjXgXba1.y', '16022450', '16022450@vnu.edu.vn', 'Tưởng Công  Thành', NULL, NULL, NULL),
(475, '16022451', '$2y$10$/vgEP3ABfWZZizATTXKeM.YvM5zCGGbh93wtAajUKCsfEPb5WiNHW', '16022451', '16022451@vnu.edu.vn', 'Ngô Doãn  Thông', NULL, NULL, NULL),
(476, '16022452', '$2y$10$bjbouMQjLnix8I6TZ3NESeCGI1z8o/1vFt3VQNclFi9ku5Y.TRiFe', '16022452', '16022452@vnu.edu.vn', 'Trần Thị Anh  Thư', NULL, NULL, NULL),
(477, '16022453', '$2y$10$NWwji90h98gE9xkCUl5H.eUTZCkySCLOxlTRycB.la/K37JD/aWaS', '16022453', '16022453@vnu.edu.vn', 'Mai Ngọc  Trinh', NULL, NULL, NULL),
(478, '16022456', '$2y$10$iHE0KKDh9i2Ro697x9VUo.0hKY1QbVQZRk1SbGIjJoqQ/p4/mcjYO', '16022456', '16022456@vnu.edu.vn', 'Nguyễn Hoa  Vinh', NULL, NULL, NULL),
(479, '16022458', '$2y$10$xEj5rs4G0eIzu5lzZegBOeW.5VQqK1Np6HcZZSUZk2VI0kjIVp1ay', '16022458', '16022458@vnu.edu.vn', 'Nguyễn Đình  Ánh', NULL, NULL, NULL),
(480, '16022459', '$2y$10$i6ua996PON4BMYzsMM4FGe1lJHQA81ngYDeoCN2CYrtr9CIWYzhBe', '16022459', '16022459@vnu.edu.vn', 'Nguyễn Văn  Điệp', NULL, NULL, NULL),
(481, '16022460', '$2y$10$JEImgKvNhJjbiksVI3V6Ieof3nM9RoDrdn.d1wzAVRKirfGrkl9su', '16022460', '16022460@vnu.edu.vn', 'Trần Thị Thu  Hà', NULL, NULL, NULL),
(482, '16022463', '$2y$10$bYSZ6VWOLUNt3Hk5CzqUBO5PTLKs5F49/PSdDmNs7AEIe8MskYZTO', '16022463', '16022463@vnu.edu.vn', 'Nguyễn Thị Thu  Huyền', NULL, NULL, NULL),
(483, '16022465', '$2y$10$LO7R9DAJ5jMFUhhCfBU9lO9f4Z09FGYecxRYRu6urqfob6libV0C6', '16022465', '16022465@vnu.edu.vn', 'Tạ Đức  Mạnh', NULL, NULL, NULL),
(484, '16022466', '$2y$10$cZyP5NTve9PW8hNqD2sXI.KhbtTtIw1SqxJ4Pa1yiZk.JWWWTAjUy', '16022466', '16022466@vnu.edu.vn', 'Nguyễn Văn  Quân', NULL, NULL, NULL),
(485, '16022470', '$2y$10$GoLLE8Xmbs3ikzhS30QLOuK8YUMCdkgICl4Ykm62pzPPCUziRdjPa', '16022470', '16022470@vnu.edu.vn', 'Nguyễn Tân  Sơn', NULL, NULL, NULL),
(486, '16022481', '$2y$10$6vV3EnndlII/dOD4DsmQguNp5i22kzkoOUOBt4n44hhz9wufJ6fUe', '16022481', '16022481@vnu.edu.vn', 'Nguyễn Thị Thu  Hà', NULL, NULL, NULL),
(487, '16022482', '$2y$10$vb/bIVuVamQCcalDiDjpTe4GrM20sfXkzvgU0ghqjNw7xwCwkzLo.', '16022482', '16022482@vnu.edu.vn', 'Đoàn Hồng  Phúc', NULL, NULL, NULL),
(488, '16022483', '$2y$10$IXaCgSqycHKnxeuQ1TWEKuLGiJb2Gt/I69Wt6Dn5aVV8Vj1sd4kHO', '16022483', '16022483@vnu.edu.vn', 'Nguyễn Bá  Toàn', NULL, NULL, NULL),
(489, '16022497', '$2y$10$EqKiXVT.OztupyFDmQLRmuFt4CVE60tYF0wLaqUBMfImBNpoCXX36', '16022497', '16022497@vnu.edu.vn', 'Đỗ Quốc  Trọng', NULL, NULL, NULL),
(490, '16022500', '$2y$10$robT7G/8DLqwGTdQ73LbbOdktQbJ4O02fB7fnrJ/8ARk8s1nXmOaC', '16022500', '16022500@vnu.edu.vn', 'Nguyễn Đình  Cường', NULL, NULL, NULL),
(491, '16022502', '$2y$10$NK.jxSr.wVUpYUqtGkxSvOFeaWQTCFE3xqZ5UlV3h.rdaObi3h6Wa', '16022502', '16022502@vnu.edu.vn', 'Nguyễn Hồng  Quang', NULL, NULL, NULL);

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
(1, 121, 22),
(2, 123, 22),
(3, 124, 22),
(4, 126, 22),
(5, 128, 22),
(6, 133, 22),
(7, 256, 22),
(8, 243, 22),
(9, 244, 22),
(10, 132, 22),
(11, 137, 22),
(12, 138, 22),
(13, 27, 22),
(14, 234, 22),
(15, 139, 22),
(16, 143, 22),
(17, 144, 22),
(18, 145, 22),
(19, 146, 22),
(20, 149, 22),
(21, 150, 22),
(22, 246, 22),
(23, 151, 22),
(24, 152, 22),
(25, 235, 22),
(26, 154, 22),
(27, 236, 22),
(28, 158, 22),
(29, 156, 22),
(30, 157, 22),
(31, 238, 22),
(32, 165, 22),
(33, 169, 22),
(34, 173, 22),
(35, 174, 22),
(36, 172, 22),
(37, 176, 22),
(38, 177, 22),
(39, 178, 22),
(40, 180, 22),
(41, 182, 22),
(42, 266, 22),
(43, 189, 22),
(44, 190, 22),
(45, 191, 22),
(46, 192, 22),
(47, 194, 22),
(48, 198, 22),
(49, 199, 22),
(50, 201, 22),
(51, 203, 22),
(52, 249, 22),
(53, 206, 22),
(54, 240, 22),
(55, 250, 22),
(56, 209, 22),
(57, 210, 22),
(58, 1, 22),
(59, 215, 22),
(60, 217, 22),
(61, 225, 22),
(62, 221, 22),
(63, 222, 22),
(64, 260, 22),
(65, 251, 22),
(66, 223, 22),
(67, 226, 22),
(68, 227, 22),
(69, 262, 22),
(70, 231, 22),
(71, 252, 22),
(72, 120, 23),
(73, 130, 23),
(74, 265, 23),
(75, 134, 23),
(76, 140, 23),
(77, 141, 23),
(78, 258, 23),
(79, 163, 23),
(80, 179, 23),
(81, 98, 23),
(82, 181, 23),
(83, 185, 23),
(84, 187, 23),
(85, 263, 23),
(86, 200, 23),
(87, 248, 23),
(88, 264, 23),
(89, 205, 23),
(90, 119, 23),
(91, 219, 23),
(92, 5, 23),
(93, 121, 26),
(94, 126, 26),
(95, 128, 26),
(96, 133, 26),
(97, 256, 26),
(98, 244, 26),
(99, 132, 26),
(100, 137, 26),
(101, 138, 26),
(102, 234, 26),
(103, 145, 26),
(104, 149, 26),
(105, 150, 26),
(106, 151, 26),
(107, 152, 26),
(108, 235, 26),
(109, 236, 26),
(110, 158, 26),
(111, 156, 26),
(112, 157, 26),
(113, 238, 26),
(114, 165, 26),
(115, 169, 26),
(116, 173, 26),
(117, 174, 26),
(118, 172, 26),
(119, 176, 26),
(120, 180, 26),
(121, 266, 26),
(122, 189, 26),
(123, 190, 26),
(124, 191, 26),
(125, 192, 26),
(126, 194, 26),
(127, 198, 26),
(128, 199, 26),
(129, 201, 26),
(130, 203, 26),
(131, 249, 26),
(132, 206, 26),
(133, 240, 26),
(134, 250, 26),
(135, 209, 26),
(136, 210, 26),
(137, 215, 26),
(138, 217, 26),
(139, 225, 26),
(140, 221, 26),
(141, 222, 26),
(142, 260, 26),
(143, 251, 26),
(144, 223, 26),
(145, 226, 26),
(146, 227, 26),
(147, 262, 26),
(148, 231, 26),
(149, 121, 28),
(150, 123, 28),
(151, 124, 28),
(152, 126, 28),
(153, 128, 28),
(154, 19, 28),
(155, 344, 28),
(156, 133, 28),
(157, 256, 28),
(158, 243, 28),
(159, 244, 28),
(160, 132, 28),
(161, 25, 28),
(162, 137, 28),
(163, 138, 28),
(164, 8, 28),
(165, 27, 28),
(166, 234, 28),
(167, 139, 28),
(168, 143, 28),
(169, 144, 28),
(170, 145, 28),
(171, 146, 28),
(172, 149, 28),
(173, 150, 28),
(174, 246, 28),
(175, 151, 28),
(176, 152, 28),
(177, 235, 28),
(178, 154, 28),
(179, 236, 28),
(180, 158, 28),
(181, 156, 28),
(182, 157, 28),
(183, 238, 28),
(184, 165, 28),
(185, 169, 28),
(186, 173, 28),
(187, 174, 28),
(188, 172, 28),
(189, 176, 28),
(190, 177, 28),
(191, 178, 28),
(192, 180, 28),
(193, 182, 28),
(194, 266, 28),
(195, 189, 28),
(196, 190, 28),
(197, 191, 28),
(198, 192, 28),
(199, 194, 28),
(200, 198, 28),
(201, 199, 28),
(202, 201, 28),
(203, 203, 28),
(204, 249, 28),
(205, 206, 28),
(206, 240, 28),
(207, 250, 28),
(208, 209, 28),
(209, 210, 28),
(210, 215, 28),
(211, 216, 28),
(212, 217, 28),
(213, 225, 28),
(214, 221, 28),
(215, 222, 28),
(216, 4, 28),
(217, 260, 28),
(218, 251, 28),
(219, 226, 28),
(220, 227, 28),
(221, 262, 28),
(222, 231, 28),
(223, 252, 28),
(224, 120, 29),
(225, 130, 29),
(226, 265, 29),
(227, 134, 29),
(228, 140, 29),
(229, 141, 29),
(230, 258, 29),
(231, 163, 29),
(232, 179, 29),
(233, 181, 29),
(234, 185, 29),
(235, 187, 29),
(236, 263, 29),
(237, 200, 29),
(238, 248, 29),
(239, 264, 29),
(240, 205, 29),
(241, 219, 29);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_class_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `code`, `name`, `subject_class_code`, `course_id`, `teacher_name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ELT2028', 'Chuyên nghiệp trong công nghệ', 'ELT2028 1', '16176', 'TS. Hoàng Văn Xiêm', 2, NULL, NULL),
(2, 'ELT2029', 'Toán trong công nghệ', 'ELT2029 1', '16176', 'PGS.TS. Nguyễn Linh Trung', 2, NULL, NULL),
(3, 'ELT2029', 'Toán trong công nghệ', 'ELT2029 2', '16176', 'TS. Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(4, 'ELT2030', 'Kỹ thuật điện', 'ELT2030 1', '16176', 'PGS.TS. Chử Đức Trình', 2, NULL, NULL),
(5, 'ELT2031', 'Mô hình hóa và mô phỏng', 'ELT2031 1', '16176', 'TS. Hoàng Văn Xiêm', 2, NULL, NULL),
(6, 'ELT2032', 'Linh kiện điện tử', 'ELT2032 1', '16176', 'TS. Nguyễn Thăng Long', 2, NULL, NULL),
(7, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 1', '16176', 'TS. Nguyễn Hồng Thịnh', 2, NULL, NULL),
(8, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 2', '16176', 'TS. Lưu Mạnh Hà', 2, NULL, NULL),
(9, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 3', '16176', 'TS. Đinh Thị Thái Mai', 2, NULL, NULL),
(10, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 4', '16176', 'TS. Nguyễn Hồng Thịnh', 2, NULL, NULL),
(11, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 5', '16176', 'TS. Lê Vũ Hà', 2, NULL, NULL),
(12, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 6', '16176', 'TS. Nguyễn Hồng Thịnh', 2, NULL, NULL),
(13, 'ELT2037', 'Thực tập thiết kế hệ thống', 'ELT2037 1', '16176', 'GS.TS. Bạch Gia Dương', 2, NULL, NULL),
(14, 'ELT2038', 'Đề tài và kỹ thuật hệ thống', 'ELT2038 1', '16176', 'PGS.TS. Nguyễn Quốc Tuấn', 2, NULL, NULL),
(15, 'ELT2040', 'Điện tử tương tự', 'ELT2040 1', '16176', 'PGS.TS. Trần Quang Vinh', 2, NULL, NULL),
(16, 'ELT2041', 'Điện tử số', 'ELT2041 1', '16176', 'GS.TS. Bạch Gia Dương', 2, NULL, NULL),
(17, 'ELT2050', 'Nguyên lý kỹ thuật điện tử', 'ELT2050 1', '16176', 'ThS. Nguyễn Vinh Quang', 2, NULL, NULL),
(18, 'ELT3043', 'Truyền thông', 'ELT3043 1', '16176', 'TS. Đinh Triều Dương', 2, NULL, NULL),
(19, 'ELT3043', 'Truyền thông', 'ELT3043 2', '16176', 'PGS.TS. Trịnh Anh  Vũ', 2, NULL, NULL),
(20, 'ELT3043', 'Truyền thông', 'ELT3043 3', '16176', 'PGS.TS. Trịnh Anh  Vũ', 2, NULL, NULL),
(21, 'ELT3045', 'Nhập môn hệ thống và mạch cao tần', 'ELT3045 1', '16176', 'TS. Trần Cao Quyền', 2, NULL, NULL),
(22, 'ELT3046', 'Mạng truyền thông máy tính 1', 'ELT3046 1', '16176', 'TS. Đinh Thị Thái Mai', 2, NULL, NULL),
(23, 'ELT3046', 'Mạng truyền thông máy tính 1', 'ELT3046 2', '16176', 'TS. Nguyễn Nam Hoàng', 2, NULL, NULL),
(24, 'ELT3047', 'Kiến trúc máy tính', 'ELT3047 1', '16176', 'ThS. Phạm Đình Tuân', 2, NULL, NULL),
(25, 'ELT3047', 'Kiến trúc máy tính', 'ELT3047 2', '16176', 'ThS. Phạm Đình Tuân', 2, NULL, NULL),
(26, 'ELT3048', 'Hệ thống Vi xử lý', 'ELT3048', '16176', 'PGS.TS. Trần Đức Tân & ThS. Đặng Anh Việt', 2, NULL, NULL),
(27, 'ELT3049', 'Hệ thống điều khiển số', 'ELT3049', '16176', 'TS. Phạm Minh Triển', 2, NULL, NULL),
(28, 'ELT3051', 'Kỹ thuật điều khiển', 'ELT3051 1', '16176', 'ThS. Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(29, 'ELT3051', 'Kỹ thuật điều khiển', 'ELT3051 2', '16176', 'ThS. Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(30, 'ELT3056', 'Truyền thông vô tuyến', 'ELT3056 1', '16176', 'TS. Đinh Triều Dương', 2, NULL, NULL),
(31, 'ELT3060', 'Kỹ thuật cao tần', 'ELT3060 1', '16176', 'TS. Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(32, 'ELT3060', 'Kỹ thuật cao tần', 'ELT3060 2', '16176', 'TS. Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(33, 'ELT3062', 'Mạng truyền thông máy tính 2', 'ELT3062', '16176', 'PGS.TS. Nguyễn Quốc Tuấn', 2, NULL, NULL),
(34, 'ELT3062', 'Mạng truyền thông máy tính 2', 'ELT3062 1', '16176', 'PGS.TS. Nguyễn Quốc Tuấn', 2, NULL, NULL),
(35, 'ELT3063', 'Mô hình hóa và mô phỏng mạng', 'ELT3063', '16176', 'TS. Nguyễn Nam Hoàng', 2, NULL, NULL),
(36, 'ELT3067', 'Truyền thông quang', 'ELT3067 1', '16176', 'PGS.TS. Nguyễn Quốc Tuấn', 2, NULL, NULL),
(37, 'ELT3069', 'Thiết kế hệ thống máy tính nhúng ', 'ELT3069', '16176', 'TS. Nguyễn Kiêm Hùng', 2, NULL, NULL),
(38, 'ELT3071', 'Hệ thống nhúng thời gian thực', 'ELT3071', '16176', 'PGS.TS. Trần Xuân Tú', 2, NULL, NULL),
(39, 'ELT3073', 'Thiết kế và mô phỏng hệ thống điều khiển', 'ELT3073', '16176', 'TS. Phạm Minh Triển & ThS. Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(40, 'ELT3079', 'Thiết kế mạch tích hợp số', 'ELT3079 1', '16176', 'GS.TS. Bạch Gia Dương', 2, NULL, NULL),
(41, 'ELT3086', 'Thực tập chuyên đề', 'ELT3086 1', '16176', 'Khoa ĐTVT', 2, NULL, NULL),
(42, 'ELT3086', 'Thực tập chuyên đề', 'ELT3086 2', '16176', 'Khoa ĐTVT', 2, NULL, NULL),
(43, 'ELT3086', 'Thực tập chuyên đề', 'ELT3086 3', '16176', 'Khoa ĐTVT', 2, NULL, NULL),
(44, 'ELT3086', 'Thực tập chuyên đề', 'ELT3086 4', '16176', 'Khoa ĐTVT', 2, NULL, NULL),
(45, 'ELT3089', 'Lý thuyết và kỹ thuật anten', 'ELT3089 1', '16176', 'TS. Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(46, 'ELT3100', 'Hệ thống vi cơ điện tử', 'ELT3100 1', '16176', 'TS. Bùi Thanh Tùng', 2, NULL, NULL),
(47, 'ELT3102', 'Thực tập điện tử tương tự', 'ELT3102 1', '16176', 'ĐTVT', 2, NULL, NULL),
(48, 'EMA2006', 'Matlab và ứng dụng', 'EMA2006 1', '16176', 'PGS.TS. Đặng Thế Ba', 3, NULL, NULL),
(49, 'EMA2006', 'Matlab và ứng dụng', 'EMA2006 2', '16176', 'ThS. Nguyễn Cao Sơn', 3, NULL, NULL),
(50, 'EMA2007', 'Cơ học vật rắn biến dạng', 'EMA2007 1', '16176', 'GS.TSKH. Nguyễn Đình Đức', 3, NULL, NULL),
(51, 'EMA2008', 'Cơ học chất lỏng', 'EMA2008 1', '16176', 'PGS.TS. Trần Thu Hà', 3, NULL, NULL),
(52, 'EMA2011', 'Phương pháp tính trong kỹ thuật', 'EMA2011 1', '16176', 'PGS.TS. Đặng Thế Ba', 3, NULL, NULL),
(53, 'EMA2011', 'Phương pháp tính trong kỹ thuật', 'EMA2011 2', '16176', 'TS. Trần Dương Trí', 3, NULL, NULL),
(54, 'EMA2012', 'Sức bền vật liệu và cơ học kết cấu', 'EMA2012 1', '16176', 'PGS.TS. Đào Như Mai', 3, NULL, NULL),
(55, 'EMA2012', 'Sức bền vật liệu và cơ học kết cấu', 'EMA2012 2', '16176', 'ThS. Nguyễn Cao Sơn', 3, NULL, NULL),
(56, 'EMA2013', 'Lý thuyết điều khiển tự động', 'EMA2013 1', '16176', 'TS. Nguyễn Ngọc Linh', 3, NULL, NULL),
(57, 'EMA2013', 'Lý thuyết điều khiển tự động', 'EMA2013 2', '16176', 'TS. Nguyễn Ngọc Linh', 3, NULL, NULL),
(58, 'EMA2021', 'Linh kiện bán dẫn và vi mạch', 'EMA2021 2', '16176', 'ThS. Phạm Đình Tuân', 3, NULL, NULL),
(59, 'EMA2032', 'Hình hoạ kỹ thuật và CAD', 'EMA2032 1', '16176', 'TS. Trần Thanh Tùng', 3, NULL, NULL),
(60, 'EMA2032', 'Hình hoạ kỹ thuật và CAD', 'EMA2032 2', '16176', 'TS. Trần Thanh Tùng', 3, NULL, NULL),
(61, 'EMA2035', 'Kỹ thuật mô hình - mô phỏng', 'EMA2035 1', '16176', 'PGS.TS. Đinh Văn Mạnh', 3, NULL, NULL),
(62, 'EMA2036', 'Cơ học kỹ thuật 1', 'EMA2036 1', '16176', 'TS. Bùi Hồng Sơn', 3, NULL, NULL),
(63, 'EMA2036', 'Cơ học kỹ thuật 1', 'EMA2036 2', '16176', 'PGS.TS. Đào Như Mai', 3, NULL, NULL),
(64, 'EMA2039', 'Thủy khí động lực ứng dụng', 'EMA2039 1', '16176', 'PGS.TS. Hà Ngọc Hiến', 3, NULL, NULL),
(65, 'EMA2041', 'Phương trình vi phân và đạo hàm riêng', 'EMA2041 1', '16176', 'TS. Trần Dương Trí', 3, NULL, NULL),
(66, 'EMA2041', 'Phương trình vi phân và đạo hàm riêng', 'EMA2041 2', '16176', 'TS. Trần Thanh Tùng', 3, NULL, NULL),
(67, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 1', '16176', 'TS. Đặng Cao Cường', 3, NULL, NULL),
(68, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 2', '16176', 'TS. Hoàng Thị Điệp', 3, NULL, NULL),
(69, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 3', '16176', 'TS. Hoàng Thị Điệp', 3, NULL, NULL),
(70, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 4', '16176', 'TS. Đặng Cao Cường', 3, NULL, NULL),
(71, 'EMA3004', 'Công nghệ CAD/CAM/CNC', 'EMA3004 1', '16176', 'TS. Trần Anh Quân', 3, NULL, NULL),
(72, 'EMA3005', 'Công nghệ chế tạo máy', 'EMA3005 1', '16176', 'TS. Trần Anh Quân', 3, NULL, NULL),
(73, 'EMA3006', 'Công nghệ gia công phi truyền thống và tạo mẫu nhanh', 'EMA3006 1', '16176', 'TS. Trần Ngọc Hưng', 3, NULL, NULL),
(74, 'EMA3012', 'Cơ học chất lỏng thực nghiệm', 'EMA3012 1', '16176', 'PGS.TS. Bùi Đình Trí', 3, NULL, NULL),
(75, 'EMA3028', 'Kỹ thuật xung -số - tương tự và kỹ thuật đo và điều khiển', 'EMA3028 1', '16176', 'ThS. Phạm Đình Tuân', 3, NULL, NULL),
(76, 'EMA3035', 'Máy công cụ - CNC', 'EMA3035 1', '16176', 'TS. Trần Thanh Tùng', 3, NULL, NULL),
(77, 'EMA3038', 'Nhập môn công nghệ vũ trụ', 'EMA3038 1', '16176', 'PGS.TS. Phạm Anh Tuấn & ThS. Nguyễn Hữu Điệp', 3, NULL, NULL),
(78, 'EMA3062', 'Điều khiển PLC', 'EMA3062 1', '16176', 'PGS.TS. Phạm Mạnh Thắng', 3, NULL, NULL),
(79, 'EMA3065', 'Điện tử công suất', 'EMA3065 1', '16176', 'ThS. Hoàng Văn Mạnh', 3, NULL, NULL),
(80, 'EMA3071', 'Ứng dụng máy tính trong đo lường và điều khiển', 'EMA3071 1', '16176', 'ThS. Hoàng Văn Mạnh', 3, NULL, NULL),
(81, 'EMA3083', 'Hệ thống cơ điện tử', 'EMA3083 1', '16176', 'TS. Nguyễn Ngọc Linh', 3, NULL, NULL),
(82, 'EMA3084', 'Vi xử lý và vi điều khiển', 'EMA3084 1', '16176', 'PGS.TS. Phạm Mạnh Thắng', 3, NULL, NULL),
(83, 'EMA3085', 'Robot công nghiệp', 'EMA3085 1', '16176', 'ThS. Đặng Anh Việt', 3, NULL, NULL),
(84, 'EMA3091', 'Động lực học sông và đồ án', 'EMA3091 1', '16176', 'PGS.TS. Trần Thu Hà', 3, NULL, NULL),
(85, 'EMA3092', 'Động lực học - môi trường không khí và đồ án', 'EMA3092 1', '16176', 'GS.TSKH. Dương Ngọc Hải & PGS.TS. Đặng Thế Ba', 3, NULL, NULL),
(86, 'EMA3093', 'Máy - thiết bị thủy khí và đồ án', 'EMA3093 1', '16176', 'TS. Nguyễn Hoàng Quân', 3, NULL, NULL),
(87, 'EMA3094', 'Thủy động lực học - môi trường biển', 'EMA3094 1', '16176', 'PGS.TS. Đỗ Ngọc Quỳnh & PGS.TS. Đinh Văn Mạnh', 3, NULL, NULL),
(88, 'EMA3095', 'Đồ án thủy động lực học - môi trường biển', 'EMA3095 1', '16176', 'PGS.TS. Đỗ Ngọc Quỳnh & PGS.TS. Đinh Văn Mạnh', 3, NULL, NULL),
(89, 'EMA3096', 'Công trình biển ngoài khơi, độ tin cậy và đồ án', 'EMA3096 1', '16176', 'PGS.TS. Đào Như Mai & PGS.TS. Nguyễn Việt Khoa', 3, NULL, NULL),
(90, 'EMA3097', 'Công trình biển ven bờ (đê, cảng, đường ống, bể chứa) và đồ án', 'EMA3097 1', '16176', 'TS. Nguyễn Trường Giang', 3, NULL, NULL),
(91, 'EMA3101', 'Kết cấu thiết bị bay và đồ án', 'EMA3101 1', '16176', 'ThS. Bùi Nam Dương', 3, NULL, NULL),
(92, 'EMA3102', 'Cảm biến, điều khiển vệ tinh và đồ án', 'EMA3102 1', '16176', 'TS. Lê Xuân Huy & ThS. Trịnh Hoàng Quân', 3, NULL, NULL),
(93, 'EMA3103', 'Thiết kế, tích hợp vệ tinh nhỏ và đồ án', 'EMA3103 1', '16176', 'PGS.TS. Phạm Anh Tuấn & ThS. Phan Hoài Thư', 3, NULL, NULL),
(94, 'EMA3117', 'Cơ học vật liệu Composite', 'EMA3117 1', '16176', 'ThS. Vũ Thị Thùy Anh', 3, NULL, NULL),
(95, 'EMA3118', 'Lý thuyết tấm và vỏ', 'EMA3118 1', '16176', 'NCS. Phạm Hồng Công', 3, NULL, NULL),
(96, 'EMA3119', 'Các phương pháp số trong cơ học vật liệu và kết cấu', 'EMA3119 1', '16176', 'TS. Đỗ Văn Thơm', 3, NULL, NULL),
(97, 'EMA3120', 'Động lực học trong công trình', 'EMA3120 1', '16176', 'NCS. Trần Quốc Quân', 3, NULL, NULL),
(98, 'EMA3121', 'Lý thuyết dẻo', 'EMA3121 1', '16176', 'GS.TSKH. Nguyễn Đình Đức & NCS. Trần Quốc Quân', 3, NULL, NULL),
(99, 'EMA4050', 'Đồ án tốt nghiệp/tương đương', 'EMA4050 1', '16176', 'CHKT', 3, NULL, NULL),
(100, 'EPN1095', 'Vật lý đại cương 1', 'EPN1095 8', '16176', 'PGS.TS. Hoàng Nam Nhật', 3, NULL, NULL),
(101, 'EPN2002', 'Kỹ thuật hóa học và ứng dụng', 'EPN2002 1', '16176', 'PGS.TS. Nguyễn Phương Hoài Nam', 3, NULL, NULL),
(102, 'EPN2004', 'Mô hình hóa và mô phỏng trong', 'EPN2004 1', '16176', 'TS. Đặng Đình Long', 3, NULL, NULL),
(103, 'EPN2014', 'Vật lý bán dẫn và linh kiện', 'EPN2014 1', '16176', 'GS.TS. Nguyễn Năng Định', 3, NULL, NULL),
(104, 'EPN2023', 'Các phương pháp toán lý', 'EPN2023 1', '16176', 'PGS.TS. Hoàng Nam Nhật', 3, NULL, NULL),
(105, 'EPN2025', 'Kỹ thuật màng mỏng và công', 'EPN2025 1', '16176', 'PGS.TS. Phạm Đức Thắng', 3, NULL, NULL),
(106, 'EPN2029', 'Khoa học vật liệu đại cương', 'EPN2029 1', '16176', 'GS.TS. Nguyễn Năng Định', 3, NULL, NULL),
(107, 'EPN2050', 'Vật lý phân tử', 'EPN2050 1', '16176', 'GS.TS. Nguyễn Năng Định', 3, NULL, NULL),
(108, 'EPN3001', 'Chẩn đoán phân tử', 'EPN3001', '16176', 'TS. Hà Thị Quyến', 3, NULL, NULL),
(109, 'EPN3002', 'Công nghệ ADN tái tổ hợp ', 'EPN3002', '16176', 'TS. Hà Thị Quyến', 3, NULL, NULL),
(110, 'EPN3003', 'Công nghệ nano sinh học', 'EPN3003', '16176', 'TS. Trần Đăng Khoa', 3, NULL, NULL),
(111, 'EPN3005', 'Các chip sinh học', 'EPN3005', '16176', 'TS. Lê Thị Hiên', 3, NULL, NULL),
(112, 'EPN3006', 'Các hệ vi cơ điện tử và ứng dụng', 'EPN3006 1', '16176', 'TS. Bùi Đình Tú', 3, NULL, NULL),
(113, 'EPN3009', 'Các vật liệu polymer chức năng cấu trúc nano', 'EPN3009 1', '16176', 'PGS.TS. Nguyễn Phương Hoài Nam', 3, NULL, NULL),
(114, 'EPN3010', 'Các vật liệu từ tính cấu trúc nano và kỹ thuật spin điện tử', 'EPN3010 1', '16176', 'PGS.TS. Đỗ Thị Hương Giang', 3, NULL, NULL),
(115, 'EPN3017', 'Quang phổ chất rắn', 'EPN3017 1', '16176', 'PGS.TS. Trần Hồng Nhung & TS. Nguyễn Thị Yến Mai', 3, NULL, NULL),
(116, 'EPN3020', 'Quang tử nano', 'EPN3020 1', '16176', 'PGS.TS. Trần Hồng Nhung & TS. Nghiêm Thị Hà Liên', 3, NULL, NULL),
(117, 'EPN3021', 'Sinh học phân tử', 'EPN3021', '16176', 'TS. Hà Thị Quyến', 3, NULL, NULL),
(118, 'EPN3022', 'Sinh học đại cương', 'EPN3022 1', '16176', 'GS.TS. Lê Trần Bình', 3, NULL, NULL),
(119, 'EPN3024', 'Thiết bị quang tử', 'EPN3024 1', '16176', 'PGS.TS. Nguyễn Kiên Cường & PGS.TS. Đỗ Quang Hòa', 3, NULL, NULL),
(120, 'EPN3027', 'Thực hành các phương pháp thực nghiệm nano sinh học', 'EPN3027', '16176', 'TS. Lê Thị Hiên & TS. Hà Thị Quyến', 3, NULL, NULL),
(121, 'EPN3029', 'Thực tập chuyên đề Công nghệ quang tử', 'EPN3029 1', '16176', 'PGS.TS. Nguyễn Kiên Cường & TS. Nghiêm Thị Hà Liên', 3, NULL, NULL),
(122, 'EPN3030', 'Thực tập chuyên đề Công nghệ nano', 'EPN3030 1', '16176', 'TS. Phạm Thị Thu Trang & TS. Đặng Đình Long & ThS. Lê Việt Cường & ThS. Nguyễn Thị Minh Hồng', 3, NULL, NULL),
(123, 'EPN3035', 'Vật liệu bán dẫn cấu trúc nano', 'EPN3035 1', '16176', 'GS.TS. Nguyễn Năng Định & TS. Phạm Thị Thu Trang', 3, NULL, NULL),
(124, 'EPN3037', 'Vật liệu nano sinh học', 'EPN3037', '16176', 'TS. Lê Thị Hiên', 3, NULL, NULL),
(125, 'EPN3038', 'Vật liệu quang tử hữu cơ nano', 'EPN3038 1', '16176', 'PGS.TS. Nguyễn Kiên Cường', 3, NULL, NULL),
(126, 'EPN3039', 'Vật lý và công nghệ laser', 'EPN3039 1', '16176', 'PGS.TS. Phạm Văn Hội & TS. Nguyễn Thị Yến Mai', 3, NULL, NULL),
(127, 'EPN3052', 'Vật liệu gốm kỹ thuật', 'EPN3052 1', '16176', 'PGS.TS. Phạm Đức Thắng', 3, NULL, NULL),
(128, 'EPN3053', 'Kỹ thuật bảo vệ vật liệu và ứng dụng', 'EPN3053 1', '16176', 'TS. Đinh Văn Châu', 3, NULL, NULL),
(129, 'INT1003', 'Tin học cơ sở 1', 'INT1003 10', '16176', 'ThS. Đào Kiến Quốc', 1, NULL, NULL),
(130, 'INT1003', 'Tin học cơ sở 1', 'INT1003 11', '16176', 'ThS. Nguyễn Việt Tân', 1, NULL, NULL),
(131, 'INT1003', 'Tin học cơ sở 1', 'INT1003 12', '16176', 'ThS. Đào Kiến Quốc', 1, NULL, NULL),
(132, 'INT1003', 'Tin học cơ sở 1', 'INT1003 13', '16176', 'TS. Nguyễn Thị Hợi', 1, NULL, NULL),
(133, 'INT1003', 'Tin học cơ sở 1', 'INT1003 14', '16176', 'TS. Nguyễn Văn Nam', 1, NULL, NULL),
(134, 'INT1003', 'Tin học cơ sở 1', 'INT1003 15', '16176', 'TS. Lê Thị Hợi', 1, NULL, NULL),
(135, 'INT1003', 'Tin học cơ sở 1', 'INT1003 2', '16176', 'TS. Nguyễn Văn Thắng', 1, NULL, NULL),
(136, 'INT1003', 'Tin học cơ sở 1', 'INT1003 5', '16176', 'ThS. Đào Kiến Quốc', 1, NULL, NULL),
(137, 'INT1003', 'Tin học cơ sở 1', 'INT1003 6', '16176', 'ThS. Nguyễn Việt Tân', 1, NULL, NULL),
(138, 'INT1003', 'Tin học cơ sở 1', 'INT1003 7', '16176', 'ThS. Lê Hồng Hải', 1, NULL, NULL),
(139, 'INT1003', 'Tin học cơ sở 1', 'INT1003 8', '16176', 'TS. Nguyễn Thị Nhật Thanh', 1, NULL, NULL),
(140, 'INT1003', 'Tin học cơ sở 1', 'INT1003 9', '16176', 'ThS. Đào Kiến Quốc', 1, NULL, NULL),
(141, 'INT1003 ', 'Tin học cơ sở 1', 'INT1003 1', '16176', 'TS. Nguyễn Văn Thắng', 1, NULL, NULL),
(142, 'INT1003 ', 'Tin học cơ sở 1', 'INT1003 3', '16176', 'TS. Nguyễn Việt Anh', 1, NULL, NULL),
(143, 'INT1003 ', 'Tin học cơ sở 1', 'INT1003 4', '16176', 'TS. Nguyễn Văn Thắng', 1, NULL, NULL),
(144, 'INT1006', 'Tin học cơ sở 4', 'INT1006 1', '16176', 'ThS. Hồ Đắc Phương', 1, NULL, NULL),
(145, 'INT1006', 'Tin học cơ sở 4', 'INT1006 2', '16176', 'TS. Bùi Ngọc Thăng', 1, NULL, NULL),
(146, 'INT1006', 'Tin học cơ sở 4', 'INT1006 3', '16176', 'TS. Vũ Thị Hồng Nhạn', 1, NULL, NULL),
(147, 'INT1006', 'Tin học cơ sở 4', 'INT1006 4', '16176', 'ThS. Hồ Đắc Phương', 1, NULL, NULL),
(148, 'INT1006', 'Tin học cơ sở 4', 'INT1006 5', '16176', 'TS. Ngô Thị Duyên', 1, NULL, NULL),
(149, 'INT1006', 'Tin học cơ sở 4', 'INT1006 6', '16176', 'TS. Trần Quốc Long', 1, NULL, NULL),
(150, 'INT1006', 'Tin học cơ sở 4', 'INT1006 7', '16176', 'TS. Lê Nguyên Khôi', 1, NULL, NULL),
(151, 'INT1006', 'Tin học cơ sở 4', 'INT1006 8', '16176', 'TS. Nguyễn Ngọc An', 1, NULL, NULL),
(152, 'INT1006', 'Tin học cơ sở 4', 'INT1006 9', '16176', 'TS. Lê Nguyên Khôi', 1, NULL, NULL),
(153, 'INT1050', 'Toán học rời rạc', 'INT1050 1', '16176', 'TS. Đặng Thanh Hải', 1, NULL, NULL),
(154, 'INT1050', 'Toán học rời rạc', 'INT1050 2', '16176', 'TS. Đỗ Đức Đông', 1, NULL, NULL),
(155, 'INT1050', 'Toán học rời rạc', 'INT1050 3', '16176', 'TS. Hà Minh Hoàng', 1, NULL, NULL),
(156, 'INT2020', 'Phân tích thiết kế các HTTT', 'INT2020 1', '16176', 'ThS. Dư Phương Hạnh', 1, NULL, NULL),
(157, 'INT2039', 'Thực hành Phân tích thiết kế các HTTT', 'INT2039', '16176', 'ThS. Dư Phương Hạnh', 1, NULL, NULL),
(158, 'INT2040', 'Thực hành Quản lý Dự án HTTT', 'INT2040', '16176', 'TS. Nguyễn Thị Hậu', 1, NULL, NULL),
(159, 'INT2044', 'Lý thuyết thông tin', 'INT2044 1', '16176', 'PGS.TS. Nguyễn Phương Thái', 1, NULL, NULL),
(160, 'INT2044', 'Lý thuyết thông tin', 'INT2044 2', '16176', 'PGS.TS. Nguyễn Phương Thái', 1, NULL, NULL),
(161, 'INT2203', 'Cấu trúc dữ liệu và giải thuật', 'INT2203 1', '16176', 'PGS.TS. Phạm Bảo Sơn', 1, NULL, NULL),
(162, 'INT2203', 'Cấu trúc dữ liệu và giải thuật', 'INT2203 2', '16176', 'TS. Lê Quang Hiếu', 1, NULL, NULL),
(163, 'INT2203', 'Cấu trúc dữ liệu và giải thuật', 'INT2203 3', '16176', 'TS. Lê Nguyên Khôi', 1, NULL, NULL),
(164, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 1', '16176', 'TS. Võ Đình Hiếu', 1, NULL, NULL),
(165, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 2', '16176', 'TS. Tô Văn Khánh', 1, NULL, NULL),
(166, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 3', '16176', 'TS. Tô Văn Khánh', 1, NULL, NULL),
(167, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 4', '16176', 'TS. Vũ Diệu Hương', 1, NULL, NULL),
(168, 'INT2204', 'Lập trình hướng đối tượng ', 'INT2204 5', '16176', 'TS. Vũ Diệu Hương', 1, NULL, NULL),
(169, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 6', '16176', ' TS. Võ Đình Hiếu', 1, NULL, NULL),
(170, 'INT2205', 'Kiến trúc máy tính', 'INT2205 1', '16176', 'PGS.TS. Nguyễn Ngọc Hóa', 1, NULL, NULL),
(171, 'INT2205', 'Kiến trúc máy tính', 'INT2205 2', '16176', 'PGS.TS. Nguyễn Trí Thành', 1, NULL, NULL),
(172, 'INT2205', 'Kiến trúc máy tính', 'INT2205 3', '16176', 'PGS.TS. Nguyễn Đình Việt', 1, NULL, NULL),
(173, 'INT2205', 'Kiến trúc máy tính', 'INT2205 4', '16176', 'TS. Trần Trọng Hiếu', 1, NULL, NULL),
(174, 'INT2205', 'Kiến trúc máy tính', 'INT2205 5', '16176', 'PGS.TS. Nguyễn Trí Thành', 1, NULL, NULL),
(175, 'INT2205', 'Kiến trúc máy tính', 'INT2205 6', '16176', ' TS. Trần Trọng Hiếu', 1, NULL, NULL),
(176, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 1', '16176', 'ThS. Vũ Bá Duy', 1, NULL, NULL),
(177, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 2', '16176', 'ThS. Vũ Bá Duy', 1, NULL, NULL),
(178, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 3', '16176', 'ThS. Vũ Bá Duy', 1, NULL, NULL),
(179, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 4', '16176', 'PGS.TS. Nguyễn Hải Châu', 1, NULL, NULL),
(180, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 5', '16176', 'TS. Nguyễn Thị Hậu', 1, NULL, NULL),
(181, 'INT3011', 'Các vấn đề hiện đại trong KHMT', 'INT3011 1', '16176', 'PGS.TS. Hoàng Xuân Huấn', 1, NULL, NULL),
(182, 'INT3058', 'Thực tập chuyên ngành', 'INT3058', '16176', 'CNTT', 1, NULL, NULL),
(183, 'INT3093', 'An toàn và an ninh mạng', 'INT3093 2', '16176', 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(184, 'INT3110', 'Phân tích và thiết kế hướng đối tượng', 'INT3110 1', '16176', 'PGS. TS. Trương Ninh Thuận', 1, NULL, NULL),
(185, 'INT3111', 'Quản lý dự án phần mềm', 'INT3111 1', '16176', 'PGS.TS. Phạm Ngọc Hùng', 1, NULL, NULL),
(186, 'INT3115', 'Thiết kế giao diện người dùng', 'INT3115 1', '16176', 'TS. Ngô Thị Duyên', 1, NULL, NULL),
(187, 'INT3117', 'Kiểm thử và đảm bảo chất lượng phần mềm', 'INT3117 1', '16176', 'PGS.TS. Trương Anh Hoàng', 1, NULL, NULL),
(188, 'INT3207', 'Kho dữ liệu', 'INT3207 1', '16176', 'TS. Bùi Quang Hưng', 1, NULL, NULL),
(189, 'INT3209', 'Khai phá dữ liệu', 'INT3209 1', '16176', 'PGS.TS. Phan Xuân Hiếu', 1, NULL, NULL),
(190, 'INT3209', 'Khai phá dữ liệu', 'INT3209 2', '16176', 'PGS.TS. Hà Quang Thuỵ', 1, NULL, NULL),
(191, 'INT3213', 'Nhập môn an toàn thông tin', 'INT3213 1', '16176', 'TS. Lê Phê Đô', 1, NULL, NULL),
(192, 'INT3216', 'Phân tích, đánh giá hiệu năng hệ thống máy tính', 'INT3216 1', '16176', 'PGS.TS. Nguyễn Hải Châu', 1, NULL, NULL),
(193, 'INT3220', 'Các chủ đề hiện đại của HTTT', 'INT3220 1', '16176', 'PGS.TS. Nguyễn Hải Châu', 1, NULL, NULL),
(194, 'INT3301', 'Thực hành hệ điều hành mạng', 'INT3301 1', '16176', 'ThS. Ngô Lê Minh', 1, NULL, NULL),
(195, 'INT3303', 'Mạng không dây', 'INT3303 1', '16176', 'ThS. Hồ Đắc Phương', 1, NULL, NULL),
(196, 'INT3304', 'Lập trình mạng', 'INT3304 1', '16176', 'TS. Nguyễn Hoài Sơn', 1, NULL, NULL),
(197, 'INT3305', 'Truyền thông đa phương tiện', 'INT3305 1', '16176', 'PGS.TS. Bùi Thế Duy', 1, NULL, NULL),
(198, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 1', '16176', 'ThS. Nguyễn Nam Hải', 1, NULL, NULL),
(199, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 2', '16176', 'TS. Lê Đình Thanh', 1, NULL, NULL),
(200, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 3', '16176', 'TS. Nguyễn Việt Anh', 1, NULL, NULL),
(201, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 4', '16176', 'TS. Lê Đình Thanh', 1, NULL, NULL),
(202, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 5', '16176', 'TS. Hoàng Xuân Tùng', 1, NULL, NULL),
(203, 'INT3307', 'An toàn và an ninh mạng', 'INT3307 1', '16176', 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(204, 'INT3307', 'An toàn và an ninh Mạng', 'INT3307 2', '16176', 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(205, 'INT3308', 'Đánh giá hiệu năng mạng', 'INT3308 1', '16176', 'TS. Nguyễn Văn Nam', 1, NULL, NULL),
(206, 'INT3309', 'Phân tích và thiết kế mạng máy tính', 'INT3309 1', '16176', 'TS. Nguyễn Hoài Sơn', 1, NULL, NULL),
(207, 'INT3310', 'Quản trị Mạng', 'INT3310 1', '16176', 'TS. Dương Lê Minh', 1, NULL, NULL),
(208, 'INT3310', 'Quản trị mạng', 'INT3310 2', '16176', 'ThS. Đỗ Hoàng Kiên', 1, NULL, NULL),
(209, 'INT3314', 'Thực tập chuyên ngành Truyền thông và Mạng máy tính', 'INT3314 1', '16176', 'CNTT', 1, NULL, NULL),
(210, 'INT3317', 'Thực hành an ninh mạng', ' INT3317 1', '16176', 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(211, 'INT3317', 'Thực hành an ninh mạng', ' INT3317 1', '16176', 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(212, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 1', '16176', 'GS. TS. Nguyễn Thanh Thủy', 1, NULL, NULL),
(213, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 2', '16176', 'TS. Nguyễn Văn Vinh', 1, NULL, NULL),
(214, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 3', '16176', 'TS. Nguyễn Văn Vinh', 1, NULL, NULL),
(215, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 4', '16176', 'GS. TS. Nguyễn Thanh Thủy', 1, NULL, NULL),
(216, 'INT3403', 'Đồ họa máy tính', 'INT3403 1', '16176', 'TS. Ma Thị Châu', 1, NULL, NULL),
(217, 'INT3404', 'Xử lý ảnh', 'INT3404 1', '16176', 'PGS.TS. Lê Thanh Hà', 1, NULL, NULL),
(218, 'INT3405', 'Học máy', 'INT3405 1', '16176', 'PGS.TS. Hoàng Xuân Huấn', 1, NULL, NULL),
(219, 'INT3406', 'Xử lý ngôn ngữ tự nhiên', 'INT3406 1', '16176', 'TS. Nguyễn Văn Vinh', 1, NULL, NULL),
(220, 'INT3406', 'Xử lý ngôn ngữ tự nhiên', 'INT3406 2', '16176', 'PGS.TS. Nguyễn Phương Thái', 1, NULL, NULL),
(221, 'INT3409', 'Robot', 'INT3409 1', '16176', 'TS. Nguyễn Đỗ Văn', 1, NULL, NULL),
(222, 'INT3412', 'Thị giác máy tính', 'INT3412 1', '16176', 'PGS.TS. Lê Thanh Hà', 1, NULL, NULL),
(223, 'INT3501', 'Khoa học dịch vụ', 'INT3501 1', '16176', 'PGS.TS. Hà Quang Thuỵ', 1, NULL, NULL),
(224, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 1', '16176', 'PGS.TS. Trương Anh Hoàng', 1, NULL, NULL),
(225, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 2', '16176', 'TS. Đặng Đức Hạnh', 1, NULL, NULL),
(226, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 3', '16176', 'PGS.TS. Trương Ninh Thuận', 1, NULL, NULL),
(227, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 4', '16176', 'GS. TS. Nguyễn Thanh Thủy', 1, NULL, NULL),
(228, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 5', '16176', 'PGS.TS. Lê Sỹ Vinh', 1, NULL, NULL),
(229, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 6', '16176', 'TS. Nguyễn Hoài Sơn', 1, NULL, NULL),
(230, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 7', '16176', 'TS. Trần Trúc Mai', 1, NULL, NULL),
(231, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 8', '16176', 'PGS.TS. Nguyễn Ngọc Hóa', 1, NULL, NULL),
(232, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 9', '16176', 'PGS.TS. Nguyễn Trí Thành', 1, NULL, NULL),
(233, 'INT3508', 'Thực tập chuyên ngành', 'INT3508 1', '16176', ' Khoa CNTT', 1, NULL, NULL),
(234, 'INT3510', 'Chuẩn kỹ năng của CNTT', 'INT3510 1', '16176', ' Khoa CNTT', 1, NULL, NULL),
(235, 'INT3512', 'Lập trình thi đấu', 'INT3512 1', '16176', 'TS. Lê Huy Bình', 1, NULL, NULL),
(236, 'INT4051', 'Niên luận', 'INT4051 1', '16176', ' Khoa CNTT', 1, NULL, NULL),
(237, 'INT4054', 'Đồ án tốt nghiệp', 'INT4054 1', '16176', ' Khoa CNTT', 1, NULL, NULL),
(238, 'MAT1041', 'Giải tích 1', 'MAT1041 1', '16176', 'ThS. Nguyễn Văn Quang', 1, NULL, NULL),
(239, 'MAT1041', 'Giải tích 1', 'MAT1041 15', '16176', 'TS. Trần Thanh Hải', 1, NULL, NULL),
(240, 'MAT1041', 'Giải tích 1', 'MAT1041 2', '16176', 'PGS.TS. Trần Thu Hà', 1, NULL, NULL),
(241, 'MAT1041', 'Giải tích 1', 'MAT1041 3', '16176', 'ThS. Nguyễn Văn Quang', 1, NULL, NULL),
(242, 'MAT1041', 'Giải tích 1', 'MAT1041 4', '16176', 'PGS.TS. Trần Thu Hà', 1, NULL, NULL),
(243, 'MAT1041', 'Giải tích 1', 'MAT1041 6', '16176', 'PGS.TS. Nguyễn Việt Khoa', 1, NULL, NULL),
(244, 'MAT1041', 'Giải tích 1', 'MAT1041 7', '16176', 'ThS. Nguyễn Văn Quang', 1, NULL, NULL),
(245, 'MAT1041', 'Giải tích 1', 'MAT1041 8', '16176', 'TS. Lã Đức Việt', 1, NULL, NULL),
(246, 'MAT1093', 'Đại số', 'MAT1093 1', '16176', 'TS. Nguyễn Duy Tân', 1, NULL, NULL),
(247, 'MAT1093', 'Đại số', 'MAT1093 10', '16176', 'Trần Nam Trung', 1, NULL, NULL),
(248, 'MAT1093', 'Đại số', 'MAT1093 11', '16176', 'Hà Minh Lam', 1, NULL, NULL),
(249, 'MAT1093', 'Đại số', 'MAT1093 12', '16176', 'TS. Nguyễn Bích Vân', 1, NULL, NULL),
(250, 'MAT1093', 'Đại số', 'MAT1093 13', '16176', 'Trần Nam Trung', 1, NULL, NULL),
(251, 'MAT1093', 'Đại số', 'MAT1093 14', '16176', 'Hà Minh Lam', 1, NULL, NULL),
(252, 'MAT1093', 'Đại số', 'MAT1093 15', '16176', 'Trần Giang Nam', 1, NULL, NULL),
(253, 'MAT1093', 'Đại số', 'MAT1093 2', '16176', 'TS. Nguyễn Anh Tú', 1, NULL, NULL),
(254, 'MAT1093', 'Đại số', 'MAT1093 3', '16176', 'Đoàn Trung Cường', 1, NULL, NULL),
(255, 'MAT1093', 'Đại số', 'MAT1093 4', '16176', 'Đào Quang Khải', 1, NULL, NULL),
(256, 'MAT1093', 'Đại số', 'MAT1093 6', '16176', 'Nguyễn Hoàng Thạch', 1, NULL, NULL),
(257, 'MAT1093', 'Đại số', 'MAT1093 7', '16176', 'Nguyễn Tất Thắng', 1, NULL, NULL),
(258, 'MAT1093', 'Đại số', 'MAT1093 9', '16176', 'Nguyễn Tất Thắng', 1, NULL, NULL),
(259, 'MAT1099', 'Phương pháp tính', 'MAT1099', '16176', 'TS. Lê Phê Đô', 1, NULL, NULL),
(260, 'MAT1099', 'Phương pháp tính', 'MAT1099 1', '16176', 'ThS. Nguyễn Cảnh Hoàng', 1, NULL, NULL),
(261, 'MAT1099', 'Phương pháp tính', 'MAT1099 2', '16176', 'TS. Lê Phê Đô', 1, NULL, NULL),
(262, 'MAT1100', 'Tối ưu hóa', 'MAT1100 1', '16176', 'TS. Đỗ Đức Đông', 1, NULL, NULL),
(263, 'MAT1100', 'Tối ưu hóa', 'MAT1100 2', '16176', 'PGS.TS. Hoàng Xuân Huấn', 1, NULL, NULL),
(264, 'MAT1101', 'Xác suất thống kê ', 'MAT1101 1', '16176', 'TS. Đặng Thanh Hải', 1, NULL, NULL),
(265, 'MAT1101', 'Xác suất thống kê ', 'MAT1101 2', '16176', 'TS. Đặng Cao Cường', 1, NULL, NULL),
(266, 'MAT1101', 'Xác suất thống kê ', 'MAT1101 3', '16176', 'TS. Lê Phê Đô', 1, NULL, NULL),
(267, 'MNS1052', 'Khoa học quản lý đại cương', 'MNS1052 1', '16176', 'ThS. Tạ Thị Bích Ngọc', 1, NULL, NULL),
(268, 'MNS1052', 'Khoa học quản lý đại cương', 'MNS1052 2', '16176', 'ThS. Tạ Thị Bích Ngọc', 1, NULL, NULL),
(269, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 1', '16176', 'PGS.TS. Nguyễn Phương Hoài Nam', 1, NULL, NULL),
(270, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 10', '16176', 'TS. Phạm Thị Thu Trang', 1, NULL, NULL),
(271, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 11', '16176', 'TS. Bùi Đình Tú', 1, NULL, NULL),
(272, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 12', '16176', 'PGS.TS. Đỗ Thị Hương Giang', 1, NULL, NULL),
(273, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 13', '16176', 'PGS.TS. Nguyễn Thế Hiện', 1, NULL, NULL),
(274, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 14', '16176', 'TS. Đinh Văn Châu', 1, NULL, NULL),
(275, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 2', '16176', 'PGS.TS. Nguyễn Kiên Cường', 1, NULL, NULL),
(276, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 3', '16176', 'PGS.TS. Nguyễn Kiên Cường', 1, NULL, NULL),
(277, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 4', '16176', 'TS. Bùi Đình Tú', 1, NULL, NULL),
(278, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 5', '16176', 'TS. Bùi Nguyên Quốc Trình', 1, NULL, NULL),
(279, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 6', '16176', 'TS. Đặng Đình Long', 1, NULL, NULL),
(280, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 7', '16176', 'PGS.TS. Hoàng Nam Nhật', 1, NULL, NULL),
(281, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 9', '16176', 'TS. Trần Mậu Danh', 1, NULL, NULL),
(282, 'PHY1104', 'Thực hành Vật lý đại cương', 'PHY1104 1', '16176', 'ĐHKHTN', 1, NULL, NULL),
(283, 'PHY1104', 'Thực hành Vật lý đại cương', 'PHY1104 2', '16176', 'ĐHKHTN', 1, NULL, NULL),
(284, 'PHY1104', 'Thực hành Vật lý đại cương', 'PHY1104 3', '16176', 'ĐHKHTN', 1, NULL, NULL),
(285, 'PHY1104', 'Thực hành Vật lý đại cương', 'PHY1104 4', '16176', 'ĐHKHTN', 1, NULL, NULL),
(286, 'PHY1105', 'Vật lý hiện đại', 'PHY1105 1', '16176', 'TS. Đặng Đình Long', 1, NULL, NULL),
(287, 'PHY1105', 'Vật lý hiện đại', 'PHY1105 2', '16176', 'TS. Đặng Đình Long', 1, NULL, NULL);

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
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 1),
(38, 38, 1),
(39, 39, 1),
(40, 40, 1),
(41, 41, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(45, 45, 1),
(46, 46, 1),
(47, 47, 1),
(48, 129, 1),
(49, 130, 1),
(50, 131, 1),
(51, 132, 1),
(52, 133, 1),
(53, 134, 1),
(54, 135, 1),
(55, 136, 1),
(56, 137, 1),
(57, 138, 1),
(58, 139, 1),
(59, 140, 1),
(60, 141, 1),
(61, 142, 1),
(62, 143, 1),
(63, 144, 1),
(64, 145, 1),
(65, 146, 1),
(66, 147, 1),
(67, 148, 1),
(68, 149, 1),
(69, 150, 1),
(70, 151, 1),
(71, 152, 1),
(72, 153, 1),
(73, 154, 1),
(74, 155, 1),
(75, 156, 1),
(76, 157, 1),
(77, 158, 1),
(78, 159, 1),
(79, 160, 1),
(80, 161, 1),
(81, 162, 1),
(82, 163, 1),
(83, 164, 1),
(84, 165, 1),
(85, 166, 1),
(86, 167, 1),
(87, 168, 1),
(88, 169, 1),
(89, 170, 1),
(90, 171, 1),
(91, 172, 1),
(92, 173, 1),
(93, 174, 1),
(94, 175, 1),
(95, 176, 1),
(96, 177, 1),
(97, 178, 1),
(98, 179, 1),
(99, 180, 1),
(100, 181, 1),
(101, 182, 1),
(102, 183, 1),
(103, 184, 1),
(104, 185, 1),
(105, 186, 1),
(106, 187, 1),
(107, 188, 1),
(108, 189, 1),
(109, 190, 1),
(110, 191, 1),
(111, 192, 1),
(112, 193, 1),
(113, 194, 1),
(114, 195, 1),
(115, 196, 1),
(116, 197, 1),
(117, 198, 1),
(118, 199, 1),
(119, 200, 1),
(120, 201, 1),
(121, 202, 1),
(122, 203, 1),
(123, 204, 1),
(124, 205, 1),
(125, 206, 1),
(126, 207, 1),
(127, 208, 1),
(128, 209, 1),
(129, 210, 1),
(130, 211, 1),
(131, 212, 1),
(132, 213, 1),
(133, 214, 1),
(134, 215, 1),
(135, 216, 1),
(136, 217, 1),
(137, 218, 1),
(138, 219, 1),
(139, 220, 1),
(140, 221, 1),
(141, 222, 1),
(142, 223, 1),
(143, 224, 1),
(144, 225, 1),
(145, 226, 1),
(146, 227, 1),
(147, 228, 1),
(148, 229, 1),
(149, 230, 1),
(150, 231, 1),
(151, 232, 1),
(152, 233, 1),
(153, 234, 1),
(154, 235, 1),
(155, 236, 1),
(156, 237, 1),
(157, 238, 1),
(158, 239, 1),
(159, 240, 1),
(160, 241, 1),
(161, 242, 1),
(162, 243, 1),
(163, 244, 1),
(164, 245, 1),
(165, 246, 1),
(166, 247, 1),
(167, 248, 1),
(168, 249, 1),
(169, 250, 1),
(170, 251, 1),
(171, 252, 1),
(172, 253, 1),
(173, 254, 1),
(174, 255, 1),
(175, 256, 1),
(176, 257, 1),
(177, 258, 1),
(178, 259, 1),
(179, 260, 1),
(180, 261, 1),
(181, 262, 1),
(182, 263, 1),
(183, 264, 1),
(184, 265, 1),
(185, 266, 1),
(186, 267, 1),
(187, 268, 1),
(188, 269, 1),
(189, 270, 1),
(190, 271, 1),
(191, 272, 1),
(192, 273, 1),
(193, 274, 1),
(194, 275, 1),
(195, 276, 1),
(196, 277, 1),
(197, 278, 1),
(198, 279, 1),
(199, 280, 1),
(200, 281, 1),
(201, 282, 1),
(202, 283, 1),
(203, 284, 1),
(204, 285, 1),
(205, 286, 1),
(206, 287, 1),
(207, 48, 1),
(208, 49, 1),
(209, 50, 1),
(210, 51, 1),
(211, 52, 1),
(212, 53, 1),
(213, 54, 1),
(214, 55, 1),
(215, 56, 1),
(216, 57, 1),
(217, 58, 1),
(218, 59, 1),
(219, 60, 1),
(220, 61, 1),
(221, 62, 1),
(222, 63, 1),
(223, 64, 1),
(224, 65, 1),
(225, 66, 1),
(226, 67, 1),
(227, 68, 1),
(228, 69, 1),
(229, 70, 1),
(230, 71, 1),
(231, 72, 1),
(232, 73, 1),
(233, 74, 1),
(234, 75, 1),
(235, 76, 1),
(236, 77, 1),
(237, 78, 1),
(238, 79, 1),
(239, 80, 1),
(240, 81, 1),
(241, 82, 1),
(242, 83, 1),
(243, 84, 1),
(244, 85, 1),
(245, 86, 1),
(246, 87, 1),
(247, 88, 1),
(248, 89, 1),
(249, 90, 1),
(250, 91, 1),
(251, 92, 1),
(252, 93, 1),
(253, 94, 1),
(254, 95, 1),
(255, 96, 1),
(256, 97, 1),
(257, 98, 1),
(258, 99, 1),
(259, 100, 1),
(260, 101, 1),
(261, 102, 1),
(262, 103, 1),
(263, 104, 1),
(264, 105, 1),
(265, 106, 1),
(266, 107, 1),
(267, 108, 1),
(268, 109, 1),
(269, 110, 1),
(270, 111, 1),
(271, 112, 1),
(272, 113, 1),
(273, 114, 1),
(274, 115, 1),
(275, 116, 1),
(276, 117, 1),
(277, 118, 1),
(278, 119, 1),
(279, 120, 1),
(280, 121, 1),
(281, 122, 1),
(282, 123, 1),
(283, 124, 1),
(284, 125, 1),
(285, 126, 1),
(286, 127, 1),
(287, 128, 1);

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
(1, 'SS0001', '﻿Khảo sát môn học cuối học kỳ', '2017-12-19 23:59:59', '2017-10-19 16:57:37', '2017-10-19 16:57:37');

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
(1, 1, 22, 121, 1),
(2, 1, 22, 123, 1),
(3, 1, 22, 124, 1),
(4, 1, 22, 126, 1),
(5, 1, 22, 128, 1),
(6, 1, 22, 133, 1),
(7, 1, 22, 256, 1),
(8, 1, 22, 243, 0),
(9, 1, 22, 244, 0),
(10, 1, 22, 132, 0),
(11, 1, 22, 137, 0),
(12, 1, 22, 138, 0),
(13, 1, 22, 27, 1),
(14, 1, 22, 234, 0),
(15, 1, 22, 139, 0),
(16, 1, 22, 143, 0),
(17, 1, 22, 144, 0),
(18, 1, 22, 145, 0),
(19, 1, 22, 146, 0),
(20, 1, 22, 149, 0),
(21, 1, 22, 150, 0),
(22, 1, 22, 246, 0),
(23, 1, 22, 151, 0),
(24, 1, 22, 152, 0),
(25, 1, 22, 235, 0),
(26, 1, 22, 154, 0),
(27, 1, 22, 236, 0),
(28, 1, 22, 158, 0),
(29, 1, 22, 156, 0),
(30, 1, 22, 157, 0),
(31, 1, 22, 238, 0),
(32, 1, 22, 165, 0),
(33, 1, 22, 169, 0),
(34, 1, 22, 173, 0),
(35, 1, 22, 174, 0),
(36, 1, 22, 172, 0),
(37, 1, 22, 176, 0),
(38, 1, 22, 177, 0),
(39, 1, 22, 178, 0),
(40, 1, 22, 180, 0),
(41, 1, 22, 182, 0),
(42, 1, 22, 266, 0),
(43, 1, 22, 189, 0),
(44, 1, 22, 190, 0),
(45, 1, 22, 191, 0),
(46, 1, 22, 192, 0),
(47, 1, 22, 194, 0),
(48, 1, 22, 198, 0),
(49, 1, 22, 199, 0),
(50, 1, 22, 201, 0),
(51, 1, 22, 203, 0),
(52, 1, 22, 249, 0),
(53, 1, 22, 206, 0),
(54, 1, 22, 240, 0),
(55, 1, 22, 250, 0),
(56, 1, 22, 209, 0),
(57, 1, 22, 210, 0),
(58, 1, 22, 1, 1),
(59, 1, 22, 215, 0),
(60, 1, 22, 217, 0),
(61, 1, 22, 225, 0),
(62, 1, 22, 221, 0),
(63, 1, 22, 222, 0),
(64, 1, 22, 260, 0),
(65, 1, 22, 251, 0),
(66, 1, 22, 223, 0),
(67, 1, 22, 226, 0),
(68, 1, 22, 227, 0),
(69, 1, 22, 262, 0),
(70, 1, 22, 231, 0),
(71, 1, 22, 252, 0),
(72, 1, 23, 120, 0),
(73, 1, 23, 130, 0),
(74, 1, 23, 265, 0),
(75, 1, 23, 134, 0),
(76, 1, 23, 140, 0),
(77, 1, 23, 141, 0),
(78, 1, 23, 258, 0),
(79, 1, 23, 163, 0),
(80, 1, 23, 179, 0),
(81, 1, 23, 98, 0),
(82, 1, 23, 181, 0),
(83, 1, 23, 185, 0),
(84, 1, 23, 187, 0),
(85, 1, 23, 263, 0),
(86, 1, 23, 200, 0),
(87, 1, 23, 248, 0),
(88, 1, 23, 264, 0),
(89, 1, 23, 205, 0),
(90, 1, 23, 119, 0),
(91, 1, 23, 219, 0),
(92, 1, 23, 5, 0),
(93, 1, 23, 120, 0),
(94, 1, 23, 130, 0),
(95, 1, 23, 265, 0),
(96, 1, 23, 134, 0),
(97, 1, 23, 140, 0),
(98, 1, 23, 141, 0),
(99, 1, 23, 258, 0),
(100, 1, 23, 163, 0),
(101, 1, 23, 179, 0),
(102, 1, 23, 98, 0),
(103, 1, 23, 181, 0),
(104, 1, 23, 185, 0),
(105, 1, 23, 187, 0),
(106, 1, 23, 263, 0),
(107, 1, 23, 200, 0),
(108, 1, 23, 248, 0),
(109, 1, 23, 264, 0),
(110, 1, 23, 205, 0),
(111, 1, 23, 119, 0),
(112, 1, 23, 219, 0),
(114, 1, 26, 121, 0),
(115, 1, 26, 126, 0),
(116, 1, 26, 128, 0),
(117, 1, 26, 133, 0),
(118, 1, 26, 256, 0),
(119, 1, 26, 244, 0),
(120, 1, 26, 132, 0),
(121, 1, 26, 137, 0),
(122, 1, 26, 138, 0),
(123, 1, 26, 234, 0),
(124, 1, 26, 145, 0),
(125, 1, 26, 149, 0),
(126, 1, 26, 150, 0),
(127, 1, 26, 151, 0),
(128, 1, 26, 152, 0),
(129, 1, 26, 235, 0),
(130, 1, 26, 236, 0),
(131, 1, 26, 158, 0),
(132, 1, 26, 156, 0),
(133, 1, 26, 157, 0),
(134, 1, 26, 238, 0),
(135, 1, 26, 165, 0),
(136, 1, 26, 169, 0),
(137, 1, 26, 173, 0),
(138, 1, 26, 174, 0),
(139, 1, 26, 172, 0),
(140, 1, 26, 176, 0),
(141, 1, 26, 180, 0),
(142, 1, 26, 266, 0),
(143, 1, 26, 189, 0),
(144, 1, 26, 190, 0),
(145, 1, 26, 191, 0),
(146, 1, 26, 192, 0),
(147, 1, 26, 194, 0),
(148, 1, 26, 198, 0),
(149, 1, 26, 199, 0),
(150, 1, 26, 201, 0),
(151, 1, 26, 203, 0),
(152, 1, 26, 249, 0),
(153, 1, 26, 206, 0),
(154, 1, 26, 240, 0),
(155, 1, 26, 250, 0),
(156, 1, 26, 209, 0),
(157, 1, 26, 210, 0),
(158, 1, 26, 215, 0),
(159, 1, 26, 217, 0),
(160, 1, 26, 225, 0),
(161, 1, 26, 221, 0),
(162, 1, 26, 222, 0),
(163, 1, 26, 260, 0),
(164, 1, 26, 251, 0),
(165, 1, 26, 223, 0),
(166, 1, 26, 226, 0),
(167, 1, 26, 227, 0),
(168, 1, 26, 262, 0),
(169, 1, 26, 231, 0),
(170, 1, 28, 121, 0),
(171, 1, 28, 123, 0),
(172, 1, 28, 124, 0),
(173, 1, 28, 126, 0),
(174, 1, 28, 128, 0),
(175, 1, 28, 19, 0),
(176, 1, 28, 344, 0),
(177, 1, 28, 133, 0),
(178, 1, 28, 256, 0),
(179, 1, 28, 243, 0),
(180, 1, 28, 244, 0),
(181, 1, 28, 132, 0),
(182, 1, 28, 25, 0),
(183, 1, 28, 137, 0),
(184, 1, 28, 138, 0),
(185, 1, 28, 8, 0),
(186, 1, 28, 27, 0),
(187, 1, 28, 234, 0),
(188, 1, 28, 139, 0),
(189, 1, 28, 143, 0),
(190, 1, 28, 144, 0),
(191, 1, 28, 145, 0),
(192, 1, 28, 146, 0),
(193, 1, 28, 149, 0),
(194, 1, 28, 150, 0),
(195, 1, 28, 246, 0),
(196, 1, 28, 151, 0),
(197, 1, 28, 152, 0),
(198, 1, 28, 235, 0),
(199, 1, 28, 154, 0),
(200, 1, 28, 236, 0),
(201, 1, 28, 158, 0),
(202, 1, 28, 156, 0),
(203, 1, 28, 157, 0),
(204, 1, 28, 238, 0),
(205, 1, 28, 165, 0),
(206, 1, 28, 169, 0),
(207, 1, 28, 173, 0),
(208, 1, 28, 174, 0),
(209, 1, 28, 172, 0),
(210, 1, 28, 176, 0),
(211, 1, 28, 177, 0),
(212, 1, 28, 178, 0),
(213, 1, 28, 180, 0),
(214, 1, 28, 182, 0),
(215, 1, 28, 266, 0),
(216, 1, 28, 189, 0),
(217, 1, 28, 190, 0),
(218, 1, 28, 191, 0),
(219, 1, 28, 192, 0),
(220, 1, 28, 194, 0),
(221, 1, 28, 198, 0),
(222, 1, 28, 199, 0),
(223, 1, 28, 201, 0),
(224, 1, 28, 203, 0),
(225, 1, 28, 249, 0),
(226, 1, 28, 206, 0),
(227, 1, 28, 240, 0),
(228, 1, 28, 250, 0),
(229, 1, 28, 209, 0),
(230, 1, 28, 210, 0),
(231, 1, 28, 215, 0),
(232, 1, 28, 216, 0),
(233, 1, 28, 217, 0),
(234, 1, 28, 225, 0),
(235, 1, 28, 221, 0),
(236, 1, 28, 222, 0),
(237, 1, 28, 4, 0),
(238, 1, 28, 260, 0),
(239, 1, 28, 251, 0),
(240, 1, 28, 226, 0),
(241, 1, 28, 227, 0),
(242, 1, 28, 262, 0),
(243, 1, 28, 231, 0),
(244, 1, 28, 252, 0),
(245, 1, 29, 120, 0),
(246, 1, 29, 130, 0),
(247, 1, 29, 265, 0),
(248, 1, 29, 134, 0),
(249, 1, 29, 140, 0),
(250, 1, 29, 141, 0),
(251, 1, 29, 258, 0),
(252, 1, 29, 163, 0),
(253, 1, 29, 179, 0),
(254, 1, 29, 181, 0),
(255, 1, 29, 185, 0),
(256, 1, 29, 187, 0),
(257, 1, 29, 263, 0),
(258, 1, 29, 200, 0),
(259, 1, 29, 248, 0),
(260, 1, 29, 264, 0),
(261, 1, 29, 205, 0),
(262, 1, 29, 219, 0);

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
(1, 'admin', 'admin@admin.com', '$2y$10$mSuVsuReUsk/u35XWt8qUOfX/hIs2NQ9R/V4AAX0Yv7VBiL7k3FoS', 'bSx9JDBq9Umb1OPgMreXDUgyRW94b3EDAkesAedWOEjFOUu8UxlLuRvDI2qd', '2017-10-05 17:50:18', '2017-10-22 15:01:30'),
(2, 'lamcm', 'lamcm@gmail.com', '$2y$10$3on5Z2DxjuW3TtB5srPDQurty0hA0SZd1qC0HLUYJkBTZjL6C/Pnq', 'WV7xfNHZgZzM5Bvh74vK6aTcb21uKlvVivGIPMqfFMHJOEGj1dXwrFFvFTBa', '2017-10-05 17:50:18', NULL),
(3, 'huync', 'huync@gmail.com', '$2y$10$JBNTaR/K9.7Li03zGdkgCuVVS9N6EABInA/u2PRntpWtBW/nEbpQG', NULL, '2017-10-05 17:50:19', NULL);

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
-- Indexes for table `histories`
--
ALTER TABLE `histories`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `students_subjects`
--
ALTER TABLE `students_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `subjects_surveys`
--
ALTER TABLE `subjects_surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surveys_details`
--
ALTER TABLE `surveys_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

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
-- Constraints for table `subjects_surveys`
--
ALTER TABLE `subjects_surveys`
  ADD CONSTRAINT `subjects_surveys_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_surveys_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
