-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2017 at 07:05 PM
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
(1, '11020343', '$2y$10$O9RK3UInq43aYY1zVOFUuuu3Nu4aO8QkXX6e9ZfQKMHVUgTbcHlEC', '11020343', '11020343@vnu.edu.vn', 'Đồng Quang  Toán', NULL, NULL, NULL),
(2, '11020439', '$2y$10$vve5MXLNszonda4hu21Wh.WT6/VdaHgmR3SIuTPnBsbTBDtiKE.C2', '11020439', '11020439@vnu.edu.vn', 'Dương Trí  Vinh', NULL, NULL, NULL),
(3, '11020516', '$2y$10$vVLJMGDFshJjnou0i8gOqef/If0BO2RAcBs92h23jLutxQq6fHFVO', '11020516', '11020516@vnu.edu.vn', 'Nguyễn Tiến  Thân', NULL, NULL, NULL),
(4, '12020408', '$2y$10$RgDNO7FONve93.CySv/Zqu/gFTdBSQyoztGWeKSvOco6qy30388Ay', '12020408', '12020408@vnu.edu.vn', 'Nguyễn Minh  Tuấn', NULL, NULL, NULL),
(5, '12020424', '$2y$10$ckCnuDJEmIknSjN8c55wX.193GP0tbgy4SMfwGPrK0g8PLo0j1pQm', '12020424', '12020424@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(6, '12020425', '$2y$10$PssA3RLfHMW.D6762DpBMuh4zT2QogEXcjQ9QaaKgSmL5sAwxy1Wy', '12020425', '12020425@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(7, '12020476', '$2y$10$HbcG7jDlaGudQ31389Rthu5Me6aU5K1PrEbcUmrE7zmi5nxmu.4mS', '12020476', '12020476@vnu.edu.vn', 'Hà Anh  Tuấn', NULL, NULL, NULL),
(8, '12020528', '$2y$10$czrKSOHiwUyGPe.hkqc3VeSc1zEnGWHqSpgms25N6J0N2mZ63kTBi', '12020528', '12020528@vnu.edu.vn', 'Ngô Thành  Đạt', NULL, NULL, NULL),
(9, '12020643', '$2y$10$HjOfpHRlgiQWmatiXNJlXe8rKmLx89T6xUZXqGOnuKKHC73D6q9Vu', '12020643', '12020643@vnu.edu.vn', 'Hoàng Thị  Minh', NULL, NULL, NULL),
(10, '13020011', '$2y$10$rnnYx6qvBMf3ovrqCVksLeza8agcF7WGWrLV4ugzoci363YGX64.y', '13020011', '13020011@vnu.edu.vn', 'Nguyễn Thế  Anh', NULL, NULL, NULL),
(11, '13020019', '$2y$10$MB4E30d3syopBPmkOLP0A.q52jszHMc7iX0kJbVoIHcWbaTH0g.le', '13020019', '13020019@vnu.edu.vn', 'Chu Trần  Bách', NULL, NULL, NULL),
(12, '13020020', '$2y$10$syZ0SEuhnzGFFW9ffFBzPOhST6XWmYLvZh.o.qgg6jqpNvNNOPAgi', '13020020', '13020020@vnu.edu.vn', 'Nguyễn Việt  Bách', NULL, NULL, NULL),
(13, '13020021', '$2y$10$MQE1TW4ZFEJ/e3z8jeetJOdjekYUVQjddxJh947T7HPexpHRNBIXq', '13020021', '13020021@vnu.edu.vn', 'Tạ Đăng  Băng', NULL, NULL, NULL),
(14, '13020030', '$2y$10$.tGx.ptFAWeh0wezSYDIrutkBP1m.xdO3jGJLTilUyiMk.YVMF4dO', '13020030', '13020030@vnu.edu.vn', 'Trần Thị  Châm', NULL, NULL, NULL),
(15, '13020031', '$2y$10$39rLYBrFolPz9lX8/4IX0.ORL7/TNVWdlLEeCc5gDk1xdI0p8ypx.', '13020031', '13020031@vnu.edu.vn', 'Trịnh Thị  Châm', NULL, NULL, NULL),
(16, '13020036', '$2y$10$sIaaN.JVMOgvUzAWA2yvKe7otd7/NRvbhOGk9yLuzXHb3QhGjF.8i', '13020036', '13020036@vnu.edu.vn', 'Nông Thị  Chín', NULL, NULL, NULL),
(17, '13020037', '$2y$10$Sb5YFRcjcQ6XjNXzqwDSouSTtia92SJIvqlgpsmpjZtz/w7hak9J2', '13020037', '13020037@vnu.edu.vn', 'Mai Văn  Chính', NULL, NULL, NULL),
(18, '13020041', '$2y$10$PA0/7JHYE3wi.Oz9K0MI4.JINfyy2qSv28bgV9n6qP.EpOGCndDom', '13020041', '13020041@vnu.edu.vn', 'Phan Thị  Chúc', NULL, NULL, NULL),
(19, '13020042', '$2y$10$GBB0MzTs4XuU3ySlyYr53.jQToIp98mQtEj0nx3zCFs6VhuiAy6rW', '13020042', '13020042@vnu.edu.vn', 'Hoàng Văn  Công', NULL, NULL, NULL),
(20, '13020058', '$2y$10$DzXQK6vH6QHQpo21JTQ40ut8/zfw/lhiAgWhdW9z.Gq41wfUDqQOC', '13020058', '13020058@vnu.edu.vn', 'Phạm Thái  Cường', NULL, NULL, NULL),
(21, '13020062', '$2y$10$YnFJFd36he7/F.mWudRTdOmqrYKzr0VHULMbPISunFnV9EmO1biJ.', '13020062', '13020062@vnu.edu.vn', 'Nguyễn Thị  Diện', NULL, NULL, NULL),
(22, '13020075', '$2y$10$vAcbrgc.ag1GkWIv9lN0SOgGWsXQMK5LCldcZqUodYFf15DrM16wy', '13020075', '13020075@vnu.edu.vn', 'Nguyễn Tiến  Duy', NULL, NULL, NULL),
(23, '13020087', '$2y$10$gid3nGpHeTlH.Zi/3.p8nul6.ZHypazQwO28JS.AjE38BbcGFi3h2', '13020087', '13020087@vnu.edu.vn', 'Trần Xuân  Dũng', NULL, NULL, NULL),
(24, '13020088', '$2y$10$0H07qQIbp9W/HXuaQ/d6uOY.1gKBVCC9AD/W.Ts7rWeFFw1VJHBN6', '13020088', '13020088@vnu.edu.vn', 'Nguyễn Đình  Dục', NULL, NULL, NULL),
(25, '13020098', '$2y$10$HQMeHchw93PloIMZclYSq.ekBZWi1MVffPb.W9iKimzOhwFyns4Iu', '13020098', '13020098@vnu.edu.vn', 'Bùi Văn  Đạt', NULL, NULL, NULL),
(26, '13020103', '$2y$10$p9oA9G./yr0YjE74nv7obexnCPJefueccD.YDpsVfG/kjPYo8/H6u', '13020103', '13020103@vnu.edu.vn', 'Lê Văn  Đạt', NULL, NULL, NULL),
(27, '13020105', '$2y$10$uSEKFd7iP8koBKhFag5GP.CZJ9IT2DDUtGEcR5ieHS2ZyfRUjtyE6', '13020105', '13020105@vnu.edu.vn', 'Nguyễn Hữu  Đạt', NULL, NULL, NULL),
(28, '13020109', '$2y$10$xiTGYfh/qoocKSVEQqypre0yZjS1QPApK1UdGXDFKxjBZ19bE7WFC', '13020109', '13020109@vnu.edu.vn', 'Vũ Văn  Đặng', NULL, NULL, NULL),
(29, '13020110', '$2y$10$i.77ZYyk63l.eHdiOn0iUugfay.bUFn9x7yZ8JYNrOfVq9Um0wQ9G', '13020110', '13020110@vnu.edu.vn', 'Phạm Văn  Điện', NULL, NULL, NULL),
(30, '13020120', '$2y$10$c3V8j3UaHqXKwv7RtaQt1e9Nf.mME6Q/4V5gnwtV7KQQjwcdU67f2', '13020120', '13020120@vnu.edu.vn', 'Nguyễn Xuân  Đương', NULL, NULL, NULL),
(31, '13020129', '$2y$10$LhFguz6NGfaFxYDC.GOuQuqosh0FIoaIF2.xgY8y/70PIssy4PAXy', '13020129', '13020129@vnu.edu.vn', 'Lê Hồng  Giáp', NULL, NULL, NULL),
(32, '13020138', '$2y$10$up9TBGtDljBWObJT3w9svO9DV3PWifUJrNF9lD/HWp192NYzT9rnG', '13020138', '13020138@vnu.edu.vn', 'Đỗ Hoàng  Hải', NULL, NULL, NULL),
(33, '13020144', '$2y$10$KLcWZ0PGoM5RGKfk8h0h6.4rj4WonPHiugLpxypJRsS2u4/8JAMje', '13020144', '13020144@vnu.edu.vn', 'Nghiêm Văn  Hân', NULL, NULL, NULL),
(34, '13020162', '$2y$10$teiOxO0r839Nc1enLnI36.N6PuWVvqJz9eyMte2JaNqr9A1N3LKR.', '13020162', '13020162@vnu.edu.vn', 'Lê Công  Hiệp', NULL, NULL, NULL),
(35, '13020164', '$2y$10$uOzfSrS4cC6CRwpCcvbUmONL5Vtsodjfvt/6l0.sRt1xu8pjup7M2', '13020164', '13020164@vnu.edu.vn', 'Nguyễn Văn  Hiệp', NULL, NULL, NULL),
(36, '13020167', '$2y$10$uum632P8.gAnZfo0eQBYNuTqTF7Z2bY/WhO2UPC7Xq6L9c3OUusz2', '13020167', '13020167@vnu.edu.vn', 'Nguyễn Văn  Hiệu', NULL, NULL, NULL),
(37, '13020177', '$2y$10$DZ7ndtMXde8IUtKnAxzQm.0ZcAEf68DBPOKJou9MvE57ewWWuJF7K', '13020177', '13020177@vnu.edu.vn', 'Trần Xuân  Hoàng', NULL, NULL, NULL),
(38, '13020187', '$2y$10$pfmq4s9wt9M8XUoZJ0gRw.tSfwUK76jmkidejpugErGLm6sKQifX2', '13020187', '13020187@vnu.edu.vn', 'Nguyễn Thị  Huệ', NULL, NULL, NULL),
(39, '13020190', '$2y$10$SQ.XNbBrC2dZBmte4wfrcuL/gu210tiQiQvh32KDUyXN68lMh8rua', '13020190', '13020190@vnu.edu.vn', 'Nguyễn Quang  Huy', NULL, NULL, NULL),
(40, '13020194', '$2y$10$7aoy32S3GpRyZiTLgYgfau7DsZ5Jk5E8HkPVsd7TJd8au1QxPSfmy', '13020194', '13020194@vnu.edu.vn', 'Bùi Thị  Huyền', NULL, NULL, NULL),
(41, '13020197', '$2y$10$JVMXau9GPZO1nl9lPGlZ6.fnbGAmr4IJ5RdDtw1AHUZ51i1VN0Tzu', '13020197', '13020197@vnu.edu.vn', 'Vũ Thị  Huyền', NULL, NULL, NULL),
(42, '13020206', '$2y$10$OQum0NtTJ0WEVeu5bIb4wOXJslUEDn8mLgowG8I4c5b7iL9AOspjq', '13020206', '13020206@vnu.edu.vn', 'Phạm Thế  Hùng', NULL, NULL, NULL),
(43, '13020208', '$2y$10$qMAHlMAaks9dSRoGpDoTZe8jYEqrEbhc14J.W.nMRpP4kWXdvEvsW', '13020208', '13020208@vnu.edu.vn', 'Chu Thành  Hưng', NULL, NULL, NULL),
(44, '13020210', '$2y$10$UmweaCEvFHI.hHQUrqbYROJXTVtkMuC587iHbhqCtVBb6VAGIaSIS', '13020210', '13020210@vnu.edu.vn', 'Lê Việt  Hưng', NULL, NULL, NULL),
(45, '13020224', '$2y$10$gwEeu5r2aKDeQ0mCm8KhEu6rJxIUYYC8oRHV06NPM837ZWqff5LKS', '13020224', '13020224@vnu.edu.vn', 'Mai Duy  Khánh', NULL, NULL, NULL),
(46, '13020226', '$2y$10$aFvsN7DUnLW9dexuA8nw9ODSu.5eg8kXufzRU1o3b0HR6D6M.HAda', '13020226', '13020226@vnu.edu.vn', 'Nguyễn Hoàng  Khánh', NULL, NULL, NULL),
(47, '13020235', '$2y$10$XnfmKnVTHzLuYChOhpbpDuJTPN/9EBFaxmZsVtfP4c8IQ1BUH5HXC', '13020235', '13020235@vnu.edu.vn', 'Bùi Văn  Kỳ', NULL, NULL, NULL),
(48, '13020242', '$2y$10$zpiRxEcvOVeYmACsUdOZwOEaPalkivOlr57QGkWe1Zy/cy2C74lA2', '13020242', '13020242@vnu.edu.vn', 'Trần Thị  Liên', NULL, NULL, NULL),
(49, '13020250', '$2y$10$yCvvfiDTFJ7WREsYRUQYTuKYB/xPveXHnQl8QiqpoJsWF8ZLzI8Oi', '13020250', '13020250@vnu.edu.vn', 'Nguyễn Việt  Linh', NULL, NULL, NULL),
(50, '13020251', '$2y$10$UTDXnxUFdjtcCTJDrwtxTuOvdRrkdIt16Hvx6coXIJY6oGoUlXMJe', '13020251', '13020251@vnu.edu.vn', 'Phạm Tuấn  Linh', NULL, NULL, NULL),
(51, '13020254', '$2y$10$xIY9YVh/.fqULIKREV4mpuZNRkeNvkPSpc2jke.2YNRIMX2bdaJM.', '13020254', '13020254@vnu.edu.vn', 'Đặng Tiến  Long', NULL, NULL, NULL),
(52, '13020255', '$2y$10$Maj/ojGBCFXL4S7yv1M6Y.tRhY7J/96l66GRnvH4AfkCyfx5vq6Wi', '13020255', '13020255@vnu.edu.vn', 'Nguyễn Đình  Long', NULL, NULL, NULL),
(53, '13020259', '$2y$10$rkA.h4CdbtXE6n6Zrq35jeB5Wfj6ioJD6G7Bp4dIeEG8pY0AO.S12', '13020259', '13020259@vnu.edu.vn', 'Trần Đình  Long', NULL, NULL, NULL),
(54, '13020262', '$2y$10$P/G5Sn4zK0M0GaEyvGKE1OeuUdHn2fmuF/lZGk/qHm/20DjcpZxBu', '13020262', '13020262@vnu.edu.vn', 'Vũ Thành  Long', NULL, NULL, NULL),
(55, '13020270', '$2y$10$4Y6BWM/yBHDqyvhV1AGI1eKOE8qbQBqCNq7HNsg5nVXU8KLPw1L/q', '13020270', '13020270@vnu.edu.vn', 'Ngô Doãn  Lương', NULL, NULL, NULL),
(56, '13020274', '$2y$10$nP.9JOnsueQ7r1U1qsURJOBC213GqaL2eovuPj5BK8hXgnGrDIiZ.', '13020274', '13020274@vnu.edu.vn', 'Nguyễn Thị  Ly', NULL, NULL, NULL),
(57, '13020284', '$2y$10$0lR49dKovvCcnHlCjRHpgOGnGNr66Ko01yQ.2Vm2ucmoLzLnEu0Pe', '13020284', '13020284@vnu.edu.vn', 'Nguyễn Duy  Minh', NULL, NULL, NULL),
(58, '13020289', '$2y$10$ONcrShatvjRW.fTFIRKdLOiU5Jq/QpJR5jRBipjZJg5wpMl.y2qZq', '13020289', '13020289@vnu.edu.vn', 'Đinh Vũ  Nam', NULL, NULL, NULL),
(59, '13020296', '$2y$10$KnvcXPjNXMgd4NwWgwZTUu2LyF57FTpleaQeH3bE8bemLLFLJTbmC', '13020296', '13020296@vnu.edu.vn', 'Tạ Quang  Nam', NULL, NULL, NULL),
(60, '13020300', '$2y$10$saom7GsYRrKhky4gtwpT0u5YrQjbdbQMF0mVTS0Ddq6xEwwAcYK5S', '13020300', '13020300@vnu.edu.vn', 'Nguyễn Trung  Nghĩa', NULL, NULL, NULL),
(61, '13020322', '$2y$10$eveH4cDkRmCBpGER4Dswzu5ycy4eEi3Zf0V4KyDL7UtiEb1G6y.CG', '13020322', '13020322@vnu.edu.vn', 'Phan Huy  Phát', NULL, NULL, NULL),
(62, '13020324', '$2y$10$6g1x9lWXXcZ837dkY012Bu1qMIQIVmFryAg/bB5p4tNqN6c3m2WBG', '13020324', '13020324@vnu.edu.vn', 'Bùi Minh  Phong', NULL, NULL, NULL),
(63, '13020326', '$2y$10$KZ5ba/mcaeasFl2bNqRT/.8Q5kTzUqPGuR2wEeGEkpuO/k9kzrkMS', '13020326', '13020326@vnu.edu.vn', 'Nguyễn Kim  Phong', NULL, NULL, NULL),
(64, '13020328', '$2y$10$BQX8iZx/x/IMzHqtpZJJI.bPZhZpmoJHsb7OcKgYascMI72zMyO3q', '13020328', '13020328@vnu.edu.vn', 'Vũ Hồng  Phú', NULL, NULL, NULL),
(65, '13020331', '$2y$10$.NmCK.zOX/rVmkKfixgu3O.1UIzKoCxpYRfTfCJiIJV/HNaxQpmsW', '13020331', '13020331@vnu.edu.vn', 'Dương Xuân  Phương', NULL, NULL, NULL),
(66, '13020350', '$2y$10$TNKSh4Tr1WK1SgNswksvb.Nz5G.iU0IGrCarj9EUgWuSfy5Kdej3C', '13020350', '13020350@vnu.edu.vn', 'Bùi Thị  Quỳnh', NULL, NULL, NULL),
(67, '13020357', '$2y$10$feB6lNaNo5NZzaRgif1JuONO47hBeMJoF3iPNt2794Ez1As9.nMI6', '13020357', '13020357@vnu.edu.vn', 'Hoàng Thị Hồng  Sâm', NULL, NULL, NULL),
(68, '13020364', '$2y$10$AIFyhkon5qnsy9j7U43g.elU6Uu7dQ5NwOq36D6YICq8LPkP1yA8K', '13020364', '13020364@vnu.edu.vn', 'Phạm Ngọc  Sơn', NULL, NULL, NULL),
(69, '13020366', '$2y$10$CJJCT8YWxfhzlWl22xnu2OVZU/QSS5QL6JKkfBqVa7K3KFN2JjEgq', '13020366', '13020366@vnu.edu.vn', 'Trương Đức  Tài', NULL, NULL, NULL),
(70, '13020375', '$2y$10$d6a2OS7HVcbSbO98FK5XoOrRqT2k0ap7iZbGnoKNFC7Zvx5XHrGR.', '13020375', '13020375@vnu.edu.vn', 'Nguyễn Văn  Tấn', NULL, NULL, NULL),
(71, '13020378', '$2y$10$Rebufhp1m4KRR5X1YtpUW.P.HYRqbKIuN42VYAKB7.t9xiqvGK/ny', '13020378', '13020378@vnu.edu.vn', 'Lê Thế  Thao', NULL, NULL, NULL),
(72, '13020387', '$2y$10$X5YiM3kXLShw8v1v2rS/Cev4RY4CIswAYGdrEJvVc51rj2HBTvqCu', '13020387', '13020387@vnu.edu.vn', 'Trần Ngọc  Thành', NULL, NULL, NULL),
(73, '13020395', '$2y$10$M8iBRCF.ul2aDfYpuwM0c.rvuRbWLLApjRBcsucI5/On1Rss7jNle', '13020395', '13020395@vnu.edu.vn', 'Nguyễn Văn  Thái', NULL, NULL, NULL),
(74, '13020400', '$2y$10$9aRcbpjyO5xzL2Lt1.RXJeOMyqjEqjVRM85VNJkaoowVbX8Sj0qA6', '13020400', '13020400@vnu.edu.vn', 'Cù Xuân  Thắng', NULL, NULL, NULL),
(75, '13020401', '$2y$10$qQBkAyp8ukEmjHt2fVQmMe6EfOTOvCIWqT.NBu3cVZd/HEXMDk1wm', '13020401', '13020401@vnu.edu.vn', 'Đinh Việt  Thắng', NULL, NULL, NULL),
(76, '13020408', '$2y$10$5Da5qGYpwP2ZtHTXJxRghOXaF7SLdtmJ0DaU8njaYFDbAtg0lY1Ne', '13020408', '13020408@vnu.edu.vn', 'Phạm Văn  Thế', NULL, NULL, NULL),
(77, '13020414', '$2y$10$LvNglM1Wvzc.3SmXOJG9v.kTK1WO8d4nlMEOOzxDAIhCAO6r8LO/e', '13020414', '13020414@vnu.edu.vn', 'Bùi Văn  Thịnh', NULL, NULL, NULL),
(78, '13020418', '$2y$10$lG3/jJTNo3xQiOPOsQ9xh.tPhS0cDvUde73pSj7cqVxMzB8pwj6uy', '13020418', '13020418@vnu.edu.vn', 'Quản Quốc  Thịnh', NULL, NULL, NULL),
(79, '13020422', '$2y$10$XVF4MGZn/SZu.o2LbeXHfO9yTkrhPGteRRPqFl8UyykgHc1kaEMhK', '13020422', '13020422@vnu.edu.vn', 'Nguyễn Thị Hoài  Thu', NULL, NULL, NULL),
(80, '13020438', '$2y$10$Ih57rz56R5R1uRw4v3j/aedjoOp3EnUhr9BT4bGqSidzYvNVlENOW', '13020438', '13020438@vnu.edu.vn', 'Nguyễn Mạnh  Tiến', NULL, NULL, NULL),
(81, '13020454', '$2y$10$H7FtQoLyEJMWrvCLAU3C/.2otytt.fl2UxALu3KIKqjUaMCM3mzqe', '13020454', '13020454@vnu.edu.vn', 'Nguyễn Văn  Trịnh', NULL, NULL, NULL),
(82, '13020458', '$2y$10$jDdIqlp2oWkN9GgecKg8AOlQLIa/xl0O9AVIuSeCOeuPy8iTdGyFm', '13020458', '13020458@vnu.edu.vn', 'Trần Bình  Trọng', NULL, NULL, NULL),
(83, '13020460', '$2y$10$4d0gRARNVJ7ytr0Rbwgtve1fApBGsfMfz9UigW47pdeUz5nTv341a', '13020460', '13020460@vnu.edu.vn', 'Đặng Quang  Trung', NULL, NULL, NULL),
(84, '13020464', '$2y$10$FajP2BKOe5yQjjimLRgeHOaN8YS25Nc2WmyE5IGGsXjc.mDYDRnMu', '13020464', '13020464@vnu.edu.vn', 'Nguyễn Văn  Trung', NULL, NULL, NULL),
(85, '13020466', '$2y$10$3Wju7plKLfXlL7ALQqR3qehZoDgVTqpnlIpAMLZbciPuZQ4c7SjUC', '13020466', '13020466@vnu.edu.vn', 'Cao Đắc  Trường', NULL, NULL, NULL),
(86, '13020467', '$2y$10$WAqGaBTxt9fs243IJ6CwOu0CGzWjbdJ3FqxvErlricdtKh8QS0p2m', '13020467', '13020467@vnu.edu.vn', 'Đỗ Nho  Trường', NULL, NULL, NULL),
(87, '13020478', '$2y$10$km/mJK/.Doe9PmJGhg3BNuX.qDDLcKJdfcOY/.4dUuk9p93nM10XG', '13020478', '13020478@vnu.edu.vn', 'Phạm Văn  Tuấn', NULL, NULL, NULL),
(88, '13020480', '$2y$10$J27NAUaLLfG9M7r3Cgb9oeckAGNCqQ3m1ZeTGYFwnMCvi9rKQzUNK', '13020480', '13020480@vnu.edu.vn', 'Vũ Anh  Tuấn', NULL, NULL, NULL),
(89, '13020488', '$2y$10$u9lEDsFctX5VTLiK4lrJX.GSjmcw9J7aS9aDH1tEXfc4MO8InxprC', '13020488', '13020488@vnu.edu.vn', 'Dương Đình  Tùng', NULL, NULL, NULL),
(90, '13020490', '$2y$10$0FCh/V/fVoka7vu1A86Dl.EC0ItzZpNU2sd7wKawHy2WXL5Ed1O0C', '13020490', '13020490@vnu.edu.vn', 'Hoàng Văn  Tùng', NULL, NULL, NULL),
(91, '13020498', '$2y$10$R8EUHT5XagebuglDqiiPy.ub22by.0IRBoTR5vEmV6dsm5SyUGRyW', '13020498', '13020498@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(92, '13020502', '$2y$10$u77eKzxuB7A7HQ1G4UItreKYQter49kp49qen7fDOxq/t7/Dsa9i.', '13020502', '13020502@vnu.edu.vn', 'Hà Đức  Văn', NULL, NULL, NULL),
(93, '13020509', '$2y$10$ev8j0XWWsi.IIt/rGfHFpuu2rH2mtDdrKR1OcvtSgQRro7RGpjJLu', '13020509', '13020509@vnu.edu.vn', 'Bùi Quang  Vinh', NULL, NULL, NULL),
(94, '13020512', '$2y$10$L5FpzULlITP4Hh4CW.nYI.MBhEvJZbcxTVlrdKMpfqWiTGtY/R4Na', '13020512', '13020512@vnu.edu.vn', 'Phạm Thị  Vui', NULL, NULL, NULL),
(95, '13020521', '$2y$10$nK/pPNoLB3auN0CLmJZLVOrU0PNGlBa2pbUyIGfihSAVi8EFR7lx2', '13020521', '13020521@vnu.edu.vn', 'Nguyễn Duy  Anh', NULL, NULL, NULL),
(96, '13020540', '$2y$10$1PG0dEi72vCVN.vOqS446Ovuu5lQPLCA7WJbU8c5bnczeqIdf7CdW', '13020540', '13020540@vnu.edu.vn', 'Nguyễn Thanh  Hải', NULL, NULL, NULL),
(97, '13020544', '$2y$10$ircNMcX5wd7zUU1g.ohXbuaQ4WaRH24emepF0LciLschx/MLh/4ka', '13020544', '13020544@vnu.edu.vn', 'Lê Đình  Hiệp', NULL, NULL, NULL),
(98, '13020551', '$2y$10$RW0A6XSOqwy/DYWDay45R.2zi0GX0IKPDnQvtvqvol9EKAUUQSNgG', '13020551', '13020551@vnu.edu.vn', 'Nguyễn Đình  Nguyên', NULL, NULL, NULL),
(99, '13020553', '$2y$10$PJkDWMbg6.iaM5YVu0MlSetUyMaenq5Coa2RC/LZfiN300EytSgpG', '13020553', '13020553@vnu.edu.vn', 'Đặng Danh  Phương', NULL, NULL, NULL),
(100, '13020554', '$2y$10$ucEhLHOJVUeOfzXTKBFpxeCbkz/0meJpTzV4ASJizF0rejiGbmRCK', '13020554', '13020554@vnu.edu.vn', 'Nguyễn Khâm Hồng  Quang', NULL, NULL, NULL),
(101, '13020557', '$2y$10$CXB4v5TqQc39H5aG3DaNL.z0nYVd.scG.34nZOM00jybFjqOnlwZW', '13020557', '13020557@vnu.edu.vn', 'Nguyễn Đình  Quyết', NULL, NULL, NULL),
(102, '13020559', '$2y$10$umQ/m.y0Zc5ZwN7DQift4ucP6XL6m98WlTGMzVKGVp2JIKLT8Asre', '13020559', '13020559@vnu.edu.vn', 'Nguyễn Trường  Sinh', NULL, NULL, NULL),
(103, '13020560', '$2y$10$H5nsoKeyXf0esTd98VXmmOFuUpkMFJf6fuoQ2mFe1mDPMDskoTk02', '13020560', '13020560@vnu.edu.vn', 'Thái Thế  Tài', NULL, NULL, NULL),
(104, '13020561', '$2y$10$Adj.oraIGHTKhrMFVKpwjeWW4XFIj84hZpIN8qyDGS.g1HRChG5KS', '13020561', '13020561@vnu.edu.vn', 'Nguyễn Công  Thành', NULL, NULL, NULL),
(105, '13020566', '$2y$10$qf.oAjFkDp5NHpV8RHzXFOEgi/xtTYhX1HreSq7B1XRdqYUC5Z/hG', '13020566', '13020566@vnu.edu.vn', 'Nguyễn Văn  Thiết', NULL, NULL, NULL),
(106, '13020580', '$2y$10$d4gcY8DDqogbw5xjQIfEmumsz7qF2TEvF/asy5C2Rd8twyKThnVsu', '13020580', '13020580@vnu.edu.vn', 'Trần Thế  Anh', NULL, NULL, NULL),
(107, '13020581', '$2y$10$NzqzZ9VkpRdD68LRwpSz6u6ku//uU34GhHkoQeqeGF35M5AE64nOi', '13020581', '13020581@vnu.edu.vn', 'Lê Văn  Công', NULL, NULL, NULL),
(108, '13020589', '$2y$10$Gs8wCFS4QMqDV3bDHaFF5edG8P7zIJUcg28fiZU4kaHmB1pEQJRMu', '13020589', '13020589@vnu.edu.vn', 'Vũ Phi  Hùng', NULL, NULL, NULL),
(109, '13020592', '$2y$10$m8jpQk5fzAWGF1qEbgTaiu9Q5Un870koDYuKX1sxwZBPipbWafCYu', '13020592', '13020592@vnu.edu.vn', 'Phạm Văn  Khôi', NULL, NULL, NULL),
(110, '13020593', '$2y$10$zc7EWfreAKntKGNZ0ZbiN./i72HIO/DY8FMoY2MQ5HyrqgSZm9smi', '13020593', '13020593@vnu.edu.vn', 'Nguyễn Thị  Khuyên', NULL, NULL, NULL),
(111, '13020598', '$2y$10$Vltzbi9xc5vxZ7ILZ7BgtePiUHpbOeh7Kg5lYAH.N55SXp1Ncr9mK', '13020598', '13020598@vnu.edu.vn', 'Đinh Khắc  Nguyên', NULL, NULL, NULL),
(112, '13020636', '$2y$10$prtMGaiBBI9TqD7IPxLOAeRq.OODWLUL9/5hyubZaLSWqM0VQGgUS', '13020636', '13020636@vnu.edu.vn', 'Lê Ngọc  Phương', NULL, NULL, NULL),
(113, '13020649', '$2y$10$1tBaDB4xWnwpVx1kV6V/XemP.dO1tWsScZMv8f6ygNmKsnX7mSNES', '13020649', '13020649@vnu.edu.vn', 'Nguyễn Quang  Linh', NULL, NULL, NULL),
(114, '13020652', '$2y$10$IwmgmK.TU1ShaECZb4WxeewYermtnbEF2nM.JqXZ1iVr1wZ82Mwh.', '13020652', '13020652@vnu.edu.vn', 'Đặng Quang  Trung', NULL, NULL, NULL),
(115, '13020654', '$2y$10$l.PbPQeCe0glTpyNer3r3eyDUcrKMx6//czIJTIcRc305k7zY6Ch.', '13020654', '13020654@vnu.edu.vn', 'Phan Khắc  Vũ', NULL, NULL, NULL),
(116, '13020717', '$2y$10$n4eWwNilOMJON31YX4D2oe/bwtSm1z9E4obALoyM8IOTH5NQQZWUi', '13020717', '13020717@vnu.edu.vn', 'Đinh Văn  Học', NULL, NULL, NULL),
(117, '13020730', '$2y$10$yiFSNBr3OWtnS4vnknCfJO5RQxPblnaMSc/hzSIR6D8dtxIEHiLIy', '13020730', '13020730@vnu.edu.vn', 'Lê Trường  Giang', NULL, NULL, NULL),
(118, '13020758', '$2y$10$StZ.KMS5U3NRLTZxppX5guZ3DqBoZTh29voauR109zXP8IMwziVDO', '13020758', '13020758@vnu.edu.vn', 'Thái Đình  Phúc', NULL, NULL, NULL),
(119, '13020768', '$2y$10$QcAdSl1p8aKKo7IUQ.sIPeVJqqvNLvLiZW83lvEeNP2.tXOox9cYu', '13020768', '13020768@vnu.edu.vn', 'H.  Tharindu', NULL, NULL, NULL),
(120, '14020004', '$2y$10$2Lze/55x7G4RFc5hPtvhruJpofTE9Md8YVciGd76rihOVZ8XJFcum', '14020004', '14020004@vnu.edu.vn', 'Lê Thế  Anh', NULL, NULL, NULL),
(121, '14020008', '$2y$10$gSpHtj7ju/MwUpDVRlv9r.s3yOr1MEa.ktVp2ZpE9cZmGRJMUTKm2', '14020008', '14020008@vnu.edu.vn', 'Nguyễn Tuấn  Anh', NULL, NULL, NULL),
(122, '14020010', '$2y$10$9tIRp8NN9YLZNz/bpRjmo.QOCEtWIkzgMbZQPT9h5NVv.RH7rek6m', '14020010', '14020010@vnu.edu.vn', 'Phan Hoàng  Anh', NULL, NULL, NULL),
(123, '14020021', '$2y$10$O0Xh1UgtczybieTMzwTUGeL1ZlnoS0SnhXqgmPCBeQ8eFo0YdzTd2', '14020021', '14020021@vnu.edu.vn', 'Phan Văn  Bắc', NULL, NULL, NULL),
(124, '14020026', '$2y$10$GdMZF5dIL2ia8QVQ6bj.cOeYoLhwy4CDVKFV8bS7aU9lr1yoyDs.C', '14020026', '14020026@vnu.edu.vn', 'Nguyễn Xuân  Bình', NULL, NULL, NULL),
(125, '14020029', '$2y$10$qeZHIQgjafFSJ5L5r8jj/eDGQRQ1.wey/Cob6o/Ygyx6sUZfyOPj2', '14020029', '14020029@vnu.edu.vn', 'Hà Quang  Chi', NULL, NULL, NULL),
(126, '14020033', '$2y$10$piH5ckRXVZpVU1G0W05vo.AVe7MyJas.SRw.KfQVzW228iRBtAanC', '14020033', '14020033@vnu.edu.vn', 'Phan Thị  Chinh', NULL, NULL, NULL),
(127, '14020035', '$2y$10$pCNdW5uw4uwtl.GBPUW..uYiS.YOtLnwNRN6bgL//XTwVvd8xtrLu', '14020035', '14020035@vnu.edu.vn', 'Phạm Đức  Chính', NULL, NULL, NULL),
(128, '14020037', '$2y$10$z1kRjYnv47sEUzL8d/a/AOz9pJtKjy.AWHBailWYfYIst9go90lZS', '14020037', '14020037@vnu.edu.vn', 'Nguyễn Văn  Chung', NULL, NULL, NULL),
(129, '14020041', '$2y$10$72Dhcr7KO.RPvbJTlmRhH.jVCtHx.Jl2tDo/ZpxoerTR1Xaq3FXNW', '14020041', '14020041@vnu.edu.vn', 'Nguyễn Minh  Công', NULL, NULL, NULL),
(130, '14020054', '$2y$10$6hWgBXE3VbX3EdkKEspc7OrD51FSF5u6V789Xx6b28oNXKj70r/4m', '14020054', '14020054@vnu.edu.vn', 'Kim Mạnh  Cường', NULL, NULL, NULL),
(131, '14020057', '$2y$10$aALAN/WK.39wAYuS6W8ds.3Fplcn6uNPX103M6bSasyQ8hdiIFTfq', '14020057', '14020057@vnu.edu.vn', 'Phạm Hữu  Cường', NULL, NULL, NULL),
(132, '14020068', '$2y$10$MaTTXr5BQJzWd/jO4diuxuKpIvxvRnQCVlqmcJ9bPHjl70dPJj7GO', '14020068', '14020068@vnu.edu.vn', 'Phạm Thị  Duyên', NULL, NULL, NULL),
(133, '14020074', '$2y$10$soztls7X/ak33B3fqHCPYOvgqIYBxNlpMNJeLkh3Uf4mIZo5PPPyi', '14020074', '14020074@vnu.edu.vn', 'Nguyễn Văn  Dũng', NULL, NULL, NULL),
(134, '14020075', '$2y$10$waLcFDqjgFngNK2O1dQiVez5ei6dFrgMh9Rf60HUDaB3329EwVSeK', '14020075', '14020075@vnu.edu.vn', 'Nguyễn Việt  Dũng', NULL, NULL, NULL),
(135, '14020076', '$2y$10$QU3Hza12vSOA8ujLG2LqY.N5bMifCqyiO7avqVyk9DH3oCFxX7.Ae', '14020076', '14020076@vnu.edu.vn', 'Nguyễn Việt  Dũng', NULL, NULL, NULL),
(136, '14020083', '$2y$10$.e4BoMKpoUstX75FaGpQru16pxdc4E7xXVHpKoOPIlUmMIg8sBkf.', '14020083', '14020083@vnu.edu.vn', 'Phạm Tùng  Dương', NULL, NULL, NULL),
(137, '14020096', '$2y$10$BdpqrgmrR8Bv/gzU3C5rReOLcHT4O2DH3MgIQRBnlHBkXKrukNdGK', '14020096', '14020096@vnu.edu.vn', 'Đỗ Tiến  Đạt', NULL, NULL, NULL),
(138, '14020097', '$2y$10$vuFDv/OQVoKuTxS90hO3b.g0YxFU8tNT6o3UNwjuy7f/Kmc6iu6vy', '14020097', '14020097@vnu.edu.vn', 'Đỗ Tiến  Đạt', NULL, NULL, NULL),
(139, '14020118', '$2y$10$/E.kbJqGPs1nQ/EuBeZlQeL1Wu0IKPbvud/4BrK4svJcbM0mhTdUC', '14020118', '14020118@vnu.edu.vn', 'Nguyễn Phùng  Được', NULL, NULL, NULL),
(140, '14020119', '$2y$10$sJXY0xen08f7VEODLOcGtOBIFBWfDeNxAi3.mAcqXMXcrE6Xdkzr.', '14020119', '14020119@vnu.edu.vn', 'Hoàng Tiến  Đức', NULL, NULL, NULL),
(141, '14020124', '$2y$10$.PCVZY/i8DaPY8bhCciUueD9lVdNPDlDApLPKpyJotZsGd4jRu/du', '14020124', '14020124@vnu.edu.vn', 'Trần Anh  Đức', NULL, NULL, NULL),
(142, '14020126', '$2y$10$Utk/YzIlJ0watM9l4Z8cG.Ck.ovwwAo4ULKRtSb4VM8Suu5kCG2p6', '14020126', '14020126@vnu.edu.vn', 'Phan Bá  Giang', NULL, NULL, NULL),
(143, '14020128', '$2y$10$3CvF0Xpf7uthq4xhhQ5pg.P3WWHMjfbDx4tZfcej8JgO0wnwfMKUm', '14020128', '14020128@vnu.edu.vn', 'Phạm Văn  Giáp', NULL, NULL, NULL),
(144, '14020129', '$2y$10$92HK/ovi1QulSVDtQl83n.JtuQWm95oA7y8ljd2sYHnJWeLjZ4PXq', '14020129', '14020129@vnu.edu.vn', 'Phạm Văn  Giỏi', NULL, NULL, NULL),
(145, '14020135', '$2y$10$Mk9JB0JDWjh0QpODn/XVa.nqAJrq7RhiYffKS1TFpHg/cAifkgg6y', '14020135', '14020135@vnu.edu.vn', 'Phạm Thị Thu  Hà', NULL, NULL, NULL),
(146, '14020137', '$2y$10$/GTQi2vnorhJt2j3PtXGSeMeK3EvT2lBsh2objDTrd3oL94aUY4LC', '14020137', '14020137@vnu.edu.vn', 'Vũ Ngọc  Hà', NULL, NULL, NULL),
(147, '14020141', '$2y$10$rNy1qIvuFO6lDuIj14t1yO2AdNhhz0UweB3jQnnmVgiZnORC94WDq', '14020141', '14020141@vnu.edu.vn', 'Nguyễn Đình  Hải', NULL, NULL, NULL),
(148, '14020145', '$2y$10$KXFIakIqQEx0WBXI8hibuO69t56Q4L8Jkq7V4b8VDer7HG6cDXZvK', '14020145', '14020145@vnu.edu.vn', 'Nguyễn Thanh  Hải', NULL, NULL, NULL),
(149, '14020151', '$2y$10$2swqm/0bkZ9SmzQwz3KqC.X/pEIKuBn7o3FudsIMTzCqt9HU7dJZi', '14020151', '14020151@vnu.edu.vn', 'Phạm Thị  Hảo', NULL, NULL, NULL),
(150, '14020154', '$2y$10$AXTTHrR3T2petydCG7WkWeJH6TahMtNvwG85q8PvoOwtzur8KugOe', '14020154', '14020154@vnu.edu.vn', 'Dương Thị Thúy  Hằng', NULL, NULL, NULL),
(151, '14020173', '$2y$10$qrlNdsfyDLFgQWeX0tmwXeTtcTppFUzc/jU4Q6yVtrmc0zrDM/64C', '14020173', '14020173@vnu.edu.vn', 'Nguyễn Văn  Hiếu', NULL, NULL, NULL),
(152, '14020183', '$2y$10$S/qec8YLkc/Oc/xJP3CD8usLXTODx8VI8/sMtkd2XncXkcg4p8mTa', '14020183', '14020183@vnu.edu.vn', 'Nguyễn Văn  Hiệu', NULL, NULL, NULL),
(153, '14020187', '$2y$10$xhiRR67T1TPmhNnAlD2ubesFwl6Ub8ix7cB2zR4/cNy47t8DH8olO', '14020187', '14020187@vnu.edu.vn', 'Nguyễn Khánh  Hoà', NULL, NULL, NULL),
(154, '14020203', '$2y$10$R2Dhwc4Sr/jeaqxUfRf4u.0dPlzTIxQ.ocukmPhMzLm4S0mIp.sBm', '14020203', '14020203@vnu.edu.vn', 'Nguyễn Ngọc  Huân', NULL, NULL, NULL),
(155, '14020207', '$2y$10$TMjDd7.rVPQe5sduHl7p..EKjpqeVzYBMFRlqwsbHSQVAcqbgVTBy', '14020207', '14020207@vnu.edu.vn', 'Nguyễn Đức  Huy', NULL, NULL, NULL),
(156, '14020209', '$2y$10$r12JPsZoW3zabd7n4zidJuzMMDLWNcQjl1Um2b9r0EINN.bODJID2', '14020209', '14020209@vnu.edu.vn', 'Nguyễn Quốc  Huy', NULL, NULL, NULL),
(157, '14020211', '$2y$10$99JadmOikdydzLAMdSMgkeOr2yfqOOhEAM23HAcAQnHFOn93YAbgK', '14020211', '14020211@vnu.edu.vn', 'Vũ Văn  Huy', NULL, NULL, NULL),
(158, '14020215', '$2y$10$cwtKdGl0kS2M07Tp5VqAH.reQLWpF0v4UctQILqHY4t8qTKNqrbBy', '14020215', '14020215@vnu.edu.vn', 'Nguyễn Đình  Hùng', NULL, NULL, NULL),
(159, '14020217', '$2y$10$V88pk9TXq2RsNhypapsbnuZ5KIBOsuWXBHMRgVPQifzZriFd/V4SC', '14020217', '14020217@vnu.edu.vn', 'Nguyễn Văn  Hùng', NULL, NULL, NULL),
(160, '14020220', '$2y$10$8mWrgZBotaQjEfor07/C..KpX.FaGOS17IzL8B/6NgzOVwQsPhkVy', '14020220', '14020220@vnu.edu.vn', 'Trần Mạnh  Hùng', NULL, NULL, NULL),
(161, '14020224', '$2y$10$aaQDIWaBxP91YKBDNPExRObxxdHEmKk2wclseO7/fiAzW/YB9x.tS', '14020224', '14020224@vnu.edu.vn', 'Nguyễn Khánh  Hưng', NULL, NULL, NULL),
(162, '14020235', '$2y$10$v6XzH5XXiWVsYYnNo/0JVe6p0EoCejqEQtJo8zvMi5m35S2akQipG', '14020235', '14020235@vnu.edu.vn', 'Phạm Việt  Khanh', NULL, NULL, NULL),
(163, '14020236', '$2y$10$ZLbX15MpF6ACicpwv/MnPe/SXuG9FApUAD80wD9DdqqqjSOjBZp.G', '14020236', '14020236@vnu.edu.vn', 'Nguyễn Tuấn  Khải', NULL, NULL, NULL),
(164, '14020243', '$2y$10$CaWziq4/jI7Nip5ijK53Tu1Rr4ZdNQ3T6opqW6Q5IBQcK7UkcAue6', '14020243', '14020243@vnu.edu.vn', 'Nguyễn Văn  Khỏe', NULL, NULL, NULL),
(165, '14020254', '$2y$10$CE9DcUsidtZAUhGXgqurS.RUAJj08141krNYlXJIU8N8lczO5s8se', '14020254', '14020254@vnu.edu.vn', 'Nguyễn Duy  Linh', NULL, NULL, NULL),
(166, '14020264', '$2y$10$P6VgQQmWehBNyBSPFDZ7k.QmlFwLfKx6dEKVUaXutiP4IFXhxKAky', '14020264', '14020264@vnu.edu.vn', 'Phạm Hoàng  Long', NULL, NULL, NULL),
(167, '14020270', '$2y$10$nEdiX5k85a8D2pVKI0wLBu8GAMfdieS8qMkjCI/i95O6h9d5imLpK', '14020270', '14020270@vnu.edu.vn', 'Vũ Xuân  Lộc', NULL, NULL, NULL),
(168, '14020277', '$2y$10$NkgBe0.g7K9tWkemRzUpseykHDXsZhMDbBVgLm5NHTtDPLSAGiYo.', '14020277', '14020277@vnu.edu.vn', 'Trịnh Đức  Lương', NULL, NULL, NULL),
(169, '14020283', '$2y$10$bZ7D.I23PXNCyBmLuVZtTe4f4FwLdk5jA9GdVGWqx0oHol2Z.vW7u', '14020283', '14020283@vnu.edu.vn', 'Nguyễn Duy  Lực', NULL, NULL, NULL),
(170, '14020284', '$2y$10$PJFnSPfrxP9c1Hy33OdNme1eWkgFGSIXOyUPS7gTOSkOJvKNJ/fRS', '14020284', '14020284@vnu.edu.vn', 'Nguyễn Khắc  Lực', NULL, NULL, NULL),
(171, '14020288', '$2y$10$jhPoRvCIwrnO830DDQ5Qtuym5HqXC1rPUNTXMTK8ZW2N9cTg/lB4S', '14020288', '14020288@vnu.edu.vn', 'Tống Thanh  Mai', NULL, NULL, NULL),
(172, '14020289', '$2y$10$uOpUxHpirmQYtSYvAoJu6O8804XFagrWUBxor20XWLzkVqo2haSY.', '14020289', '14020289@vnu.edu.vn', 'Nguyễn Văn  May', NULL, NULL, NULL),
(173, '14020291', '$2y$10$SAkbxtOI6s6SQyrEUgy3uehaeufgFriUUX/qacehc/27uQyqtSvNG', '14020291', '14020291@vnu.edu.vn', 'Hoàng Kim  Mạnh', NULL, NULL, NULL),
(174, '14020296', '$2y$10$6z/qJCW5Ov6UOS2.dAWq5etLgtzGKFZ/XxmTVUQL7mkC2pK8Orb3W', '14020296', '14020296@vnu.edu.vn', 'Phùng Văn  Mạnh', NULL, NULL, NULL),
(175, '14020306', '$2y$10$eLSVNd45lDwQyu/d7m0TAOhXpOlXoO9DWihg5QrJBanPsYSunQo.u', '14020306', '14020306@vnu.edu.vn', 'Trịnh Đức  Minh', NULL, NULL, NULL),
(176, '14020310', '$2y$10$LgD12m1wezLmKn/f5gdaxeUP0QTk9jzCo6CImcy.mtqTTocWNo/yS', '14020310', '14020310@vnu.edu.vn', 'Vũ Thị  Mơ', NULL, NULL, NULL),
(177, '14020313', '$2y$10$x.lf7VAO1Cf9msBIx5cn0upLs1iOUysF1RId2ZLDf/joQD5ZQa1I.', '14020313', '14020313@vnu.edu.vn', 'Hà Phương  Nam', NULL, NULL, NULL),
(178, '14020319', '$2y$10$yQKfD.gU02KQ9TIxRejnrePhMNA8yTPPMHjZN3tdfGuyI1So1RxM.', '14020319', '14020319@vnu.edu.vn', 'Trần Công  Nam', NULL, NULL, NULL),
(179, '14020324', '$2y$10$xrGCIPS3kmNt6xnMmPGSpOuD7HL6iAunHtP5EOnjym61WIG7dCV.6', '14020324', '14020324@vnu.edu.vn', 'Hoàng Trung  Nghĩa', NULL, NULL, NULL),
(180, '14020327', '$2y$10$lpZr.pV4CGH9E6iS1sZwXuat5/533gTskLYQQybeH/oTvcx8LtVXK', '14020327', '14020327@vnu.edu.vn', 'Nguyễn Thị  Ngọc', NULL, NULL, NULL),
(181, '14020338', '$2y$10$exurd//wy1n7s80pvb01uOLvxTGe8nKTy9whxoc5lW.M8eEJUTZ0a', '14020338', '14020338@vnu.edu.vn', 'Nguyễn Ngọc  Ninh', NULL, NULL, NULL),
(182, '14020339', '$2y$10$INHMSgGp8AW6CKa8n.2IJuHf3I1om99L2/Hw9O.42QmWlxDCajASu', '14020339', '14020339@vnu.edu.vn', 'Khương Thị  Oanh', NULL, NULL, NULL),
(183, '14020340', '$2y$10$HCmoA4rTmK6I/rdyG5ZfG.aDhBLWrv2ehQl7e45tiUr/THoZs9e0K', '14020340', '14020340@vnu.edu.vn', 'Nguyễn Đình  Phi', NULL, NULL, NULL),
(184, '14020346', '$2y$10$DbEDHIGMPA8D8i.iW.LcL.7YcZcVnYLvVCyQwopPHwKSpWdXG8Tb.', '14020346', '14020346@vnu.edu.vn', 'Nguyễn Duy  Phú', NULL, NULL, NULL),
(185, '14020348', '$2y$10$VYX1PUrZqhzuRkNcVOIeY.YSul4q6g1TcOz.RUHNzs5pj0fkt5CS2', '14020348', '14020348@vnu.edu.vn', 'Nguyễn Văn  Phú', NULL, NULL, NULL),
(186, '14020356', '$2y$10$7MZqLfBlnYTmVHlPFeZgoOlTsCqopYSEuE3W9vd9WBeZIKbY2sqJq', '14020356', '14020356@vnu.edu.vn', 'Nguyễn Thị Thu  Phương', NULL, NULL, NULL),
(187, '14020360', '$2y$10$2V5.EME93KQUziSmI0.v2OYl.a2UEePp6f9KzoCssB0oz3rAEUN5K', '14020360', '14020360@vnu.edu.vn', 'Lê Đăng  Phước', NULL, NULL, NULL),
(188, '14020369', '$2y$10$8XG6ND1dv.cXdG4bWwBKAeJXOJhiFaPYwEezhw1E0x9mb71Ut1rvy', '14020369', '14020369@vnu.edu.vn', 'Bùi Anh  Quân', NULL, NULL, NULL),
(189, '14020373', '$2y$10$RmOP6eJxsDpFuuYyziwJ1eV4mGqnReNgFpEH.h6XnnYuOhfj7Qhz2', '14020373', '14020373@vnu.edu.vn', 'Lữ Đoàn  Quân', NULL, NULL, NULL),
(190, '14020378', '$2y$10$FCyGNKDhBEqCTGll9nlN6.h5xbHX2SbYVLUElHc4jYDqIz2VvbIri', '14020378', '14020378@vnu.edu.vn', 'Đinh Huy  Quyết', NULL, NULL, NULL),
(191, '14020379', '$2y$10$KHum/4vYij/vPJSvsiuzb.6.tSv7dOV9o6JH5VZn8zMWDMAjnjJCm', '14020379', '14020379@vnu.edu.vn', 'Phạm Mạnh  Quyết', NULL, NULL, NULL),
(192, '14020380', '$2y$10$Eo0YJDXl9FkLmRzix2MWpeqOAwh11vNuTc7.E68KHd69NxwjDi0la', '14020380', '14020380@vnu.edu.vn', 'Phạm Văn  Quyết', NULL, NULL, NULL),
(193, '14020383', '$2y$10$VEnsOYQLK9SWYL2YYnNBEOXa/Q8KHZ0RMZSKOOVUhTBwyeI/zNxsW', '14020383', '14020383@vnu.edu.vn', 'Lưu Văn  Quỳnh', NULL, NULL, NULL),
(194, '14020389', '$2y$10$AKYNYq/YH9xQN62PcKa/leRj3HwrJB7hFbxktZFec9/.GU6JZ7Yue', '14020389', '14020389@vnu.edu.vn', 'Dương Ngọc  Sơn', NULL, NULL, NULL),
(195, '14020390', '$2y$10$Tg86R9JeGxnxz.l9cb27d.d3Nn1ZG5Ap8SndKt2YMDcytGvmTdrma', '14020390', '14020390@vnu.edu.vn', 'Đào Xuân  Sơn', NULL, NULL, NULL),
(196, '14020393', '$2y$10$.tLCvf3DC3U26bEc00ch5OZLK.icCDdSYkowpMOnYk4nJx5EtrrmO', '14020393', '14020393@vnu.edu.vn', 'Nguyễn Hồng  Sơn', NULL, NULL, NULL),
(197, '14020395', '$2y$10$EO9H9yArjZQ3ooK4czeYgOhHhbsoE4rTArS2rxGN9wfCJZtt8r7qW', '14020395', '14020395@vnu.edu.vn', 'Phạm Thái  Sơn', NULL, NULL, NULL),
(198, '14020397', '$2y$10$yF/25UzPsXQpCGvvH8UxJe8W0ITBWzfGAnfn7flAmtBRa3eoGuoMy', '14020397', '14020397@vnu.edu.vn', 'Tạ Ngọc  Sơn', NULL, NULL, NULL),
(199, '14020405', '$2y$10$GwCcSMf2u1pB7tCE7sp9nOcXWxRLYHJ6/PXtk5Fwu8gdexcDJrot6', '14020405', '14020405@vnu.edu.vn', 'Nguyễn Văn  Tài', NULL, NULL, NULL),
(200, '14020410', '$2y$10$IjvmSPGsXIxbwt/kN23OgO8omrvkIfsVNriIGl9kGhE4QFf46H7lK', '14020410', '14020410@vnu.edu.vn', 'Phạm Phương  Thanh', NULL, NULL, NULL),
(201, '14020412', '$2y$10$jKmpoeWfMP9oHl7lsBdB6edpfOsZRYqY/TwJcjkX1Wfmuq1UMyAae', '14020412', '14020412@vnu.edu.vn', 'Vũ Thị Thanh  Thanh', NULL, NULL, NULL),
(202, '14020417', '$2y$10$2M.CsuCnde/z5jvp5BUQquAamCn3ATIn5VjLxFpTy.qlgOK18.omK', '14020417', '14020417@vnu.edu.vn', 'Nguyễn Tuấn  Thành', NULL, NULL, NULL),
(203, '14020420', '$2y$10$ZwMCBt0avvkJFTX7XevYyO6Thv3qjHPSeWkPU3pvTcCohAcqZKM6i', '14020420', '14020420@vnu.edu.vn', 'Nguyễn Văn  Thành', NULL, NULL, NULL),
(204, '14020421', '$2y$10$8QttLC5SWNUYCcUMpVtJFuqw0Khjut0jC0kf5YvC8PofxJO2pjETC', '14020421', '14020421@vnu.edu.vn', 'Nguyễn Văn  Thành', NULL, NULL, NULL),
(205, '14020427', '$2y$10$3FeQgDwxnU6FJ8VA0SYg.OCc04cd3RdlgeLWr6PpYNMgJlrGmiwby', '14020427', '14020427@vnu.edu.vn', 'Trần Thị Phương  Thảo', NULL, NULL, NULL),
(206, '14020428', '$2y$10$PVJDm76VMib6nJHUrnjtauGgfNyWIVu7MfblBXT3HN3jRTG7266aC', '14020428', '14020428@vnu.edu.vn', 'Vũ Thị  Thảo', NULL, NULL, NULL),
(207, '14020439', '$2y$10$ivSIeEoOkUNOw7bTZmOzGO0icmlT0/w3dxGsO50Pk0YXgWucXIGD6', '14020439', '14020439@vnu.edu.vn', 'Lại Văn  Thế', NULL, NULL, NULL),
(208, '14020442', '$2y$10$aosd82hBDh.0hkAgcJO0nORJb00Wgw8twbEV7eYTpFtyF1TpHQMPa', '14020442', '14020442@vnu.edu.vn', 'Đỗ Văn  Thiện', NULL, NULL, NULL),
(209, '14020456', '$2y$10$yTiTDyrxm2zlpsVtroE00uQa75DlmUK9vr2AP2ULhUn4Cnxp4pYCe', '14020456', '14020456@vnu.edu.vn', 'Nguyễn Văn  Thuật', NULL, NULL, NULL),
(210, '14020472', '$2y$10$AxCuj1G.NmeTf7k9FXCj1Oq1YT95/K4WImG/0KpDqA.CB2NTvnEKu', '14020472', '14020472@vnu.edu.vn', 'Trần Văn  Tĩnh', NULL, NULL, NULL),
(211, '14020477', '$2y$10$gSLXXWmS7t4dhCZnCb2KS.KjbELybLqfM3keH1zWD8MttA40wuuBa', '14020477', '14020477@vnu.edu.vn', 'Trần Đức  Toàn', NULL, NULL, NULL),
(212, '14020479', '$2y$10$dupSPiyIPyILCsqfu3uku.yJBO23y.1cu1JSYiiuRaW6bMMoTeOMa', '14020479', '14020479@vnu.edu.vn', 'Nguyễn Văn  Tới', NULL, NULL, NULL),
(213, '14020480', '$2y$10$IpPmpl0pFRJ68aOxe8.TeeOA.88wx3p0go9X5dwXd/3wJ8NKxw7n2', '14020480', '14020480@vnu.edu.vn', 'Lê Quỳnh  Trang', NULL, NULL, NULL),
(214, '14020484', '$2y$10$BwgmW2oTWTojC//EQiR2cOJmLep3id5qCiRxsoiZBT6O61kUGWm1a', '14020484', '14020484@vnu.edu.vn', 'Nguyễn Thị Huyền  Trang', NULL, NULL, NULL),
(215, '14020486', '$2y$10$BcvDx8tOk1T.1hSsLl71hujxo5cxQVspYXmCE3Fzpp4k1aobIupVO', '14020486', '14020486@vnu.edu.vn', 'Lê Thị Kiều  Trinh', NULL, NULL, NULL),
(216, '14020490', '$2y$10$w7XP9XWm9nXM9Bda6m3Nk.s52JvbS3pr/BZGHZb1aJWwE87V0YQkO', '14020490', '14020490@vnu.edu.vn', 'Lê Đăng  Trung', NULL, NULL, NULL),
(217, '14020495', '$2y$10$VKR98Wt2aPuq6lAg5dXsCur74G43.QaRkMMATLYI3Jzn0EyokiOoi', '14020495', '14020495@vnu.edu.vn', 'Trần Văn  Trung', NULL, NULL, NULL),
(218, '14020502', '$2y$10$0XFtU.2Yl49voxOYPB2ZWuFz9FsYZjiy/HV7lnazQQL4/tC9/efza', '14020502', '14020502@vnu.edu.vn', 'Phạm Quang  Trường', NULL, NULL, NULL),
(219, '14020509', '$2y$10$Se9ubNlyAV5kVDKj5otOiufNPdKHHDGCA60hHe4XR9KayB70.9P7O', '14020509', '14020509@vnu.edu.vn', 'Đào Anh  Tuấn', NULL, NULL, NULL),
(220, '14020513', '$2y$10$UFHtuFruG0RzIwd.K93r9OZj8aAGURiDR55DImUEXhRRKoQpxmd52', '14020513', '14020513@vnu.edu.vn', 'Lý Văn  Tuấn', NULL, NULL, NULL),
(221, '14020516', '$2y$10$pj0bbUG5BDauphu5ioKIIuMyAqGLkyBnWZkJTrmrGPPE8fUveQn7.', '14020516', '14020516@vnu.edu.vn', 'Nguyễn Đức  Tuấn', NULL, NULL, NULL),
(222, '14020517', '$2y$10$EuirOGsur3W9jWeDqdPBAu2PiqxlGhWWEPD.YXgT7AbVrxjDDayoq', '14020517', '14020517@vnu.edu.vn', 'Nguyễn Mạnh  Tuấn', NULL, NULL, NULL),
(223, '14020522', '$2y$10$Hb4A7y5Kexrq4oAH7rVWFuMNTgrzvY1/4zQL//2AbAVb.dvJzB1F.', '14020522', '14020522@vnu.edu.vn', 'Nguyễn Thanh  Tuyền', NULL, NULL, NULL),
(224, '14020523', '$2y$10$ojeGm5xjvlehET2ctN/SiOAi.9zUFq4M8DE1FydiZCdvbQ7FwZujS', '14020523', '14020523@vnu.edu.vn', 'Nguyễn Xuân  Tuyến', NULL, NULL, NULL),
(225, '14020537', '$2y$10$NIyU2fYpQP.5ezUNLEp8cenqzVwJO3aXPJ.vvYNLTNI7xdqkf75N2', '14020537', '14020537@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(226, '14020543', '$2y$10$QXcRbisWwLxyLVI52iRPNucBtEDrm.dk0prUwlEmSdOEs857lvo7K', '14020543', '14020543@vnu.edu.vn', 'Phạm Đăng  Tưởng', NULL, NULL, NULL),
(227, '14020545', '$2y$10$We6TrsuV4crkFZpXNoOpne4dLINVYqx2HUggnxqZM8xIyRXObONfm', '14020545', '14020545@vnu.edu.vn', 'Mai Thị Tố  Uyên', NULL, NULL, NULL),
(228, '14020546', '$2y$10$6uyEYNu5qAnWaGQ2MRicBu7dJZg0qMBR9ssrvNpqCP4RbFoeBbha.', '14020546', '14020546@vnu.edu.vn', 'Nguyễn Văn  Ước', NULL, NULL, NULL),
(229, '14020551', '$2y$10$GNvZWYkMM/Ad6VNaJ1gBC.3ZJoS6TC4dywn8id4WkwgxtBLpJsF7e', '14020551', '14020551@vnu.edu.vn', 'Nguyễn Mạnh  Việt', NULL, NULL, NULL),
(230, '14020560', '$2y$10$rSVoPhFxp9jvOXvieycazeaaM.KliFW7XRbNjCU13o1vIRMuoiCcG', '14020560', '14020560@vnu.edu.vn', 'Chu Thừa  Vũ', NULL, NULL, NULL),
(231, '14020566', '$2y$10$Xs9aoQKoLDS3TthY8nrybO2fDy6BXgdAhf9liyc2nMUH/59msUWWC', '14020566', '14020566@vnu.edu.vn', 'Phan Văn  Vương', NULL, NULL, NULL),
(232, '14020574', '$2y$10$4bBtbeRPOmaDdZKA0WYSyepKkNopGBLix7rj9H4F18CzwTbfkGufW', '14020574', '14020574@vnu.edu.vn', 'Nguyễn Việt  Anh', NULL, NULL, NULL),
(233, '14020580', '$2y$10$BNlFG9Ih0njZonFc1KF9J.2hHd.omegywrNgPmzbzO2diIZLk1KaC', '14020580', '14020580@vnu.edu.vn', 'Trần Thị  Dung', NULL, NULL, NULL),
(234, '14020584', '$2y$10$vnHwEuz3mEtw5mNTMurpye0REwDm.Q0pyetQ.xPSO5ofJMr7gkLfq', '14020584', '14020584@vnu.edu.vn', 'Cao Đình  Đức', NULL, NULL, NULL),
(235, '14020587', '$2y$10$ZBYb3gMByk4V9hFLOvNvg.pgjinN5qmjS.i5SXaT0H8bC1/zyPJAu', '14020587', '14020587@vnu.edu.vn', 'Nguyễn Công  Hoàn', NULL, NULL, NULL),
(236, '14020590', '$2y$10$BW5fAaj4FZBGgOnDe85VUuNlkAFkj8eei8qSEiwkcZqI48qDmallC', '14020590', '14020590@vnu.edu.vn', 'Hồ Huy  Hùng', NULL, NULL, NULL),
(237, '14020592', '$2y$10$eiF9LREI3UMWBlAIDRDtDuOmXUjF54nqorMpM9Ud6hT7WLmNXwJfq', '14020592', '14020592@vnu.edu.vn', 'Nguyễn Văn  Hưng', NULL, NULL, NULL),
(238, '14020595', '$2y$10$t33caG1ESJzlehsfnyiBjuBeQ3mMrpDLd6S8xCZvxSJOALULAM2Qy', '14020595', '14020595@vnu.edu.vn', 'Võ Văn  Khôi', NULL, NULL, NULL),
(239, '14020606', '$2y$10$00MnjDYq/l2WCNZnAml3Qebm88h717ZWMLxtNO4gjx6VYprlQ68.m', '14020606', '14020606@vnu.edu.vn', 'Hoàng Văn  Thanh', NULL, NULL, NULL),
(240, '14020609', '$2y$10$fJnEzS/XPUI3FhAEmZmP8.m7Dr062DPq7tXWP1dyJfS9rPMGGUBwO', '14020609', '14020609@vnu.edu.vn', 'Nguyễn Minh  Thắng', NULL, NULL, NULL),
(241, '14020616', '$2y$10$sxEzow0VhF4i3OSJTLwAWuvt2q3Vz1S3jLkrcVjzWUAZg6tTsLlue', '14020616', '14020616@vnu.edu.vn', 'Trần Hữu  Tuấn', NULL, NULL, NULL),
(242, '14020618', '$2y$10$/Dpx5vDWqIw0ful7R38ZFePV/4Jq4QMXRC3IZlWBbljCLgm3MXrC.', '14020618', '14020618@vnu.edu.vn', 'Đào Tuấn  Anh', NULL, NULL, NULL),
(243, '14020620', '$2y$10$sIVAOp/PObOmLjT6TSIsM.jyrZmDza215zlYPml4ek7AFpgzewEFi', '14020620', '14020620@vnu.edu.vn', 'Lê Thị  Duyên', NULL, NULL, NULL),
(244, '14020621', '$2y$10$PXtrN19iX5HB78mpOnfXAuON4IGtNjT97tUIL7AifHTBnn3IIURzq', '14020621', '14020621@vnu.edu.vn', 'Nguyễn Mỹ  Duyên', NULL, NULL, NULL),
(245, '14020623', '$2y$10$3iWqLc7PaMKsFk64QAHD/OeS.Zvgr9QN0lr.GKcDtbj0J6CLMz7xW', '14020623', '14020623@vnu.edu.vn', 'Phạm Đức  Dũng', NULL, NULL, NULL),
(246, '14020625', '$2y$10$u9fAn9E/KzC5zXJXdJyHO.WkITV1fnu7bgWSqfXHTTe8kx5BVP5h2', '14020625', '14020625@vnu.edu.vn', 'Lê Thị  Hiền', NULL, NULL, NULL),
(247, '14020634', '$2y$10$XfcO/lSY0IZrwnXHGwnzu.SqbNHXUGN1RHZfdCfTcXIrIzzU9zNvK', '14020634', '14020634@vnu.edu.vn', 'Đỗ Xuân  Quý', NULL, NULL, NULL),
(248, '14020635', '$2y$10$YEIXhl7s/ZK8ZeEbYZZ..eOo6nmcVczVdCf.w0.RE4fJrOnloBnGW', '14020635', '14020635@vnu.edu.vn', 'Đồng Phú Khánh  Thành', NULL, NULL, NULL),
(249, '14020637', '$2y$10$tyjdE3odcLiwgW2HxKGXAuTMSj691kwVLaJn/Ma85V6/omLyEG5t.', '14020637', '14020637@vnu.edu.vn', 'Đồng Thị  Thảo', NULL, NULL, NULL),
(250, '14020638', '$2y$10$sB0TRJ2Dyubud6GFmaPPUOPGMTUlY2U67XcUTnh3UYO0WK.qulgna', '14020638', '14020638@vnu.edu.vn', 'Nguyễn Xuân  Thuận', NULL, NULL, NULL),
(251, '14020643', '$2y$10$H8pbEz2tWmQJXrphR.huduwtqbBcxICtW0QqyqUEu28gGmT0r4AbW', '14020643', '14020643@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(252, '14020646', '$2y$10$sHp7CMI8WDU/.0hE88YWfOEwGh7uim.Jc1YWVsWEk7mJZx8KipVPK', '14020646', '14020646@vnu.edu.vn', 'Bùi Thúy  Vân', NULL, NULL, NULL),
(253, '14020649', '$2y$10$nHCVrWwTObG3csrXoERBouxFDkHbs0vWjFANE5SBZWqgC0asT2f0u', '14020649', '14020649@vnu.edu.vn', 'Nguyễn Đăng Tuấn  Anh', NULL, NULL, NULL),
(254, '14020652', '$2y$10$Syu7BzxUPYWB1pKjjl9qzOgNbm6OsdQSShPr06obvf3LrcCdIUOU2', '14020652', '14020652@vnu.edu.vn', 'Nguyễn Quang  Bách', NULL, NULL, NULL),
(255, '14020654', '$2y$10$oHeBkfh4zoaIV8tL66kMfOs5kKzmpdOL0rwJShnE4WybNfGnXZ5Fm', '14020654', '14020654@vnu.edu.vn', 'Nguyễn Hữu  Duẩn', NULL, NULL, NULL),
(256, '14020656', '$2y$10$5xdQiRTXNEHMdEUIccsMveV1z/p1fKlKfy0g6uXWdZ02AifzxMH4K', '14020656', '14020656@vnu.edu.vn', 'Trần Quang  Duy', NULL, NULL, NULL),
(257, '14020657', '$2y$10$fpuA.4Y0vcCFofsY8NSf8uG2vlRkUb0nLi5RDrfUsrncz7zaQCdSm', '14020657', '14020657@vnu.edu.vn', 'Nguyễn Minh  Dương', NULL, NULL, NULL),
(258, '14020659', '$2y$10$JHNLddIu9OhFJ/8rfM.tLOJUITGAwr5BvnADu6fBDCbzTuAeReAUW', '14020659', '14020659@vnu.edu.vn', 'Phí Thu  Hà', NULL, NULL, NULL),
(259, '14020678', '$2y$10$Y7/ZYPBs3f2guk.JPlO0y.ja55cJcBKvhRiUBEEIvMuqAyo0sr/oq', '14020678', '14020678@vnu.edu.vn', 'Vũ Văn  Thiết', NULL, NULL, NULL),
(260, '14020682', '$2y$10$RoUs70Gl/SQyOtwMIzyeSew8vJ1P67BjHgusRlo2iCrhjMgZGYjCi', '14020682', '14020682@vnu.edu.vn', 'Nguyễn Hoàng  Tùng', NULL, NULL, NULL),
(261, '14020684', '$2y$10$ETsvyzfaFDf8lddW6kOJXeRHYzAgP6MehE59UPjrnhRuzJuwrZXcu', '14020684', '14020684@vnu.edu.vn', 'Hoàng Minh  Tú', NULL, NULL, NULL),
(262, '14020687', '$2y$10$4No85h9Zuefi/5.EqVzANenOJvp1rjctrqx2qN.BRpT3m6QComOuW', '14020687', '14020687@vnu.edu.vn', 'Nguyễn Anh  Vũ', NULL, NULL, NULL),
(263, '14020692', '$2y$10$pg7VPSWDEeS1Za6KRD3WgO9UWc51aJEgb9adWWSvE4JrRAFeijS5G', '14020692', '14020692@vnu.edu.vn', 'Đinh Văn  Sao', NULL, NULL, NULL),
(264, '14020693', '$2y$10$NkwVO6sjgRcDRLvRtOFSc.ura4hw28sbxY.UUOet5akRUlC7M8Yl.', '14020693', '14020693@vnu.edu.vn', 'Nguyễn Tiến  Thành', NULL, NULL, NULL),
(265, '14020697', '$2y$10$cQ4nKu0cDa6rA3wGeVANMOg7/gNe0yWM1c.PcxzMZerfl9FwqYm.C', '14020697', '14020697@vnu.edu.vn', 'Nguyễn Như  Cường', NULL, NULL, NULL),
(266, '14020814', '$2y$10$3qdBFSZNYZMHjcLvuXHj4OCMm9syTn9wgW62CRyi50lxVkQXetTRq', '14020814', '14020814@vnu.edu.vn', 'Phó Đại Nam  Phong', NULL, NULL, NULL),
(267, '14020832', '$2y$10$yDeTH3sSuPggpbN6gA6vdOCfrJJv41NrRHgD.IOlWqHWuJ6LTsbZa', '14020832', '14020832@vnu.edu.vn', 'Dương Đức  Chính', NULL, NULL, NULL),
(268, '15020912', '$2y$10$kM/bCzYoC9UJnrdsi5wtYe88Q64Z5k6G4i7jcE1Q7CQb8z7O1GFS.', '15020912', '15020912@vnu.edu.vn', 'Nguyễn Đăng  Thế', NULL, NULL, NULL),
(269, '15020929', '$2y$10$gejVjNI6jvF.TdWuxMKoWOHrjq2pSZsmqFqtB8YXI9FznCcOSL06S', '15020929', '15020929@vnu.edu.vn', 'Cấn Tiến  Xuân', NULL, NULL, NULL),
(270, '15020936', '$2y$10$NA2TPGs.iJhkoPef9X4k.O.HZzwPWGLiICR4ttlW.Keo8PRdJCa6W', '15020936', '15020936@vnu.edu.vn', 'Nguyễn Thanh  Cương', NULL, NULL, NULL),
(271, '15020963', '$2y$10$j6afhWJFDHnDdiB9UvkMjelCfBfmYiner/G2Js6IoyVZo8h2rSJ6e', '15020963', '15020963@vnu.edu.vn', 'Vũ Minh  Quang', NULL, NULL, NULL),
(272, '15020969', '$2y$10$NyJ6jLovkKGaAMLjxfk4uu21ICSWhbr/vNEVsz5YKQEC1ZrfC/0YG', '15020969', '15020969@vnu.edu.vn', 'Trần Văn  Thiều', NULL, NULL, NULL),
(273, '15020970', '$2y$10$nRihtN8iB7/HoAafslHf7uVry3D9RIE5XEC7sP3xCJXln68RbxI/K', '15020970', '15020970@vnu.edu.vn', 'Vũ Minh  Đức', NULL, NULL, NULL),
(274, '15020975', '$2y$10$/7LXndNqhpO1QhAUlpMWCeMRQeML1cu7jz6.j5imW9h5JCSmbabY2', '15020975', '15020975@vnu.edu.vn', 'Phạm Văn  Cường', NULL, NULL, NULL),
(275, '15021016', '$2y$10$G7o7OBy0d7fbHbmCCb8ySuRxQfzz9WBn9ea7fKNqWThxsm8T2Fliy', '15021016', '15021016@vnu.edu.vn', 'Phạm Thị Thu  Phương', NULL, NULL, NULL),
(276, '15021023', '$2y$10$d1ryKaJFCwxUS68KSAzua.Zn4NcFzPIstMePhgflJzyvAR18dYWgK', '15021023', '15021023@vnu.edu.vn', 'Nguyễn Phương  Nam', NULL, NULL, NULL),
(277, '15021108', '$2y$10$3MLyYMH482B62b5om4bmbuNOr/C.Y24ld8K2frrSLrjcc2ipmY6ym', '15021108', '15021108@vnu.edu.vn', 'Vũ Hoàng  Long', NULL, NULL, NULL),
(278, '15021327', '$2y$10$Q31QbtuJHMY/OGZBIl5fDuM.cPd9SSHGOgk0Eaf3YBZOosqcg07Rm', '15021327', '15021327@vnu.edu.vn', 'Trần Công  Minh', NULL, NULL, NULL),
(279, '15021476', '$2y$10$SD0zIYVQfW37PU1tn8EZXOUgHSA/HD5MINVZSRuUrU5046UMjDR.6', '15021476', '15021476@vnu.edu.vn', 'Phạm Thị Quỳnh  Mai', NULL, NULL, NULL),
(280, '15021478', '$2y$10$PPcqgfgpF5HV9COphadtKO6M3V.GVIxP22IkO0nsxHGY.WTHPFZMi', '15021478', '15021478@vnu.edu.vn', 'Nguyễn Thế  Ngọc', NULL, NULL, NULL),
(281, '15021480', '$2y$10$8Ui7jcSt0GqmRz4AYO2./.KiE5WXmLTkEtQCRfCwybDO76ZvumNJu', '15021480', '15021480@vnu.edu.vn', 'Vũ Ngọc  Quý', NULL, NULL, NULL),
(282, '15021486', '$2y$10$MXWU/uyONxiAWiLhTVYPruHLMhfCjFFNBo1S3GPYcg79DbKhopphG', '15021486', '15021486@vnu.edu.vn', 'Nguyễn Đức  Toàn', NULL, NULL, NULL),
(283, '15021489', '$2y$10$pVS9dgS9VWhtX/V5mXKLRO2QIb.VeYyOv7/PaGzs9yE/oVGObJidi', '15021489', '15021489@vnu.edu.vn', 'Trần Thế  Hoàng', NULL, NULL, NULL),
(284, '15021492', '$2y$10$mgd90rBDFHLkcyuJcH.RJuaE2iD/82VYSG2LKiMJzpQBhTOI9o71y', '15021492', '15021492@vnu.edu.vn', 'Nguyễn Văn  Nhất', NULL, NULL, NULL),
(285, '15021494', '$2y$10$vikI0EowU0uhc5176iFme.rdEZxP4/koBpl9SKVzJ7c2S6mj27RmS', '15021494', '15021494@vnu.edu.vn', 'Phan Chính  Quân', NULL, NULL, NULL),
(286, '15021499', '$2y$10$TdmikpKgqWTmj5GQ0nJNbOfjtWjqFeOCo.B0UTLsluGCA74qlurmG', '15021499', '15021499@vnu.edu.vn', 'Trần Đức  Phương', NULL, NULL, NULL),
(287, '15021502', '$2y$10$2OEN29rsXgBkH9g/4INyp./HRqREIM1mh/hC0RFEtUuRxEUvUghKC', '15021502', '15021502@vnu.edu.vn', 'Nguyễn Thị Minh  Thu', NULL, NULL, NULL),
(288, '15021507', '$2y$10$V2I9EpOISnlru02gCh7M8ORpqO3lL/AJkk/06C57D40YLzmEYaauS', '15021507', '15021507@vnu.edu.vn', 'Nguyễn Lương  Bằng', NULL, NULL, NULL),
(289, '15021509', '$2y$10$b134u.Bi9AUKVpK0H14ea.5GDcF8.ImUjm/ebZzMEgAOf1pp1KeJC', '15021509', '15021509@vnu.edu.vn', 'Phạm Xuân  Lộc', NULL, NULL, NULL),
(290, '15021510', '$2y$10$56FZZwm18XDI3r653.ow/.MIzGIuhecqEcpW4688W7grG5qTIDIv6', '15021510', '15021510@vnu.edu.vn', 'Phạm Văn  Hiệu', NULL, NULL, NULL),
(291, '15021513', '$2y$10$pvS6RBFDMmJ6foKJd4iocOQ8Atlx4k9XvFGLCOzB/qjFuk0.Nozwq', '15021513', '15021513@vnu.edu.vn', 'Phạm Đình  Trung', NULL, NULL, NULL),
(292, '15021521', '$2y$10$u73JMMpD/2sCIms1VNtIl.973mMXpKuJOsPzo7TlX.lCne3agFtVe', '15021521', '15021521@vnu.edu.vn', 'Lê Hải  Châu', NULL, NULL, NULL),
(293, '15021523', '$2y$10$34.nqxBA9nw6tfS/.XjbouqiPtLhjshgsFML.wjD12iPSR5BRzx4.', '15021523', '15021523@vnu.edu.vn', 'Nguyễn Tiến  Đạt', NULL, NULL, NULL),
(294, '15021526', '$2y$10$bxByfL44yTFjg9tlejqInO/9XYs0SOdtFENKRymcRB6Ulc2uAKD.O', '15021526', '15021526@vnu.edu.vn', 'Nguyễn Đức  Thắng', NULL, NULL, NULL),
(295, '15021529', '$2y$10$GPT3oNNJ7PoAte1NcUWFNO/y.g..CmaGc3gegK0IFhPGtoEfb5bhq', '15021529', '15021529@vnu.edu.vn', 'Mai Trường  An', NULL, NULL, NULL),
(296, '15021531', '$2y$10$PXn2szOY/eA8cyuKIlt3fuzlDpPqjQlXoRhScUvf7SrpIGk/W14uO', '15021531', '15021531@vnu.edu.vn', 'Nguyễn Duy  Quân', NULL, NULL, NULL),
(297, '15021533', '$2y$10$85CIe7LPS8rfEVzAXBsrCehh7C1mmzzc2g03lTCWkomsExSuyQeYK', '15021533', '15021533@vnu.edu.vn', 'Bùi Đình  Duy', NULL, NULL, NULL),
(298, '15021534', '$2y$10$TIY/79W5obLwH.xiCm5cWO/Sx7DwtcySkIPkQ9i3ngtYJwXQwq8zK', '15021534', '15021534@vnu.edu.vn', 'Lương Thùy  Nhinh', NULL, NULL, NULL),
(299, '15021537', '$2y$10$/akUzWfkDNf14Gxs0/N2.uBd1QJn.U0Wu4mBgOI9zfWCqvyBnqS.u', '15021537', '15021537@vnu.edu.vn', 'Nguyễn Hoàng Khánh  Linh', NULL, NULL, NULL),
(300, '15021538', '$2y$10$kSWJ2d8qC.JuO8MfoWgoluYlWYuxUEEK9tscwPMSkwS.7S3X76LUG', '15021538', '15021538@vnu.edu.vn', 'Trần Quốc  Nam', NULL, NULL, NULL),
(301, '15021541', '$2y$10$mxXE86YEvn3YmXFomdY7e.nSK2792LAOGHUSq/wOeGz/goe/uqA5q', '15021541', '15021541@vnu.edu.vn', 'Trần Xuân  Tuyến', NULL, NULL, NULL),
(302, '15021547', '$2y$10$1wljOpHTAbMhfVeWBoFfN.e6oPpPqQ3CITP34a4l0K7Nd8RgTm4uS', '15021547', '15021547@vnu.edu.vn', 'Hoàng Thế  Hợp', NULL, NULL, NULL),
(303, '15021548', '$2y$10$ipIfz4j0uf/aTsIKiTkHFOKIPiY9KZhAsBRrZ2eNODrin2NnC8/NC', '15021548', '15021548@vnu.edu.vn', 'Trịnh Vũ Tuấn  Anh', NULL, NULL, NULL),
(304, '15021556', '$2y$10$am40g7OyNPPyeSEoGw9HwutXAzYrxTuoAI1Brergf.aXRh9DrFxT6', '15021556', '15021556@vnu.edu.vn', 'Đỗ Thành  Nam', NULL, NULL, NULL),
(305, '15021570', '$2y$10$BaLOmwaQP0ZjH7T1YkKHWu7RHJDduzxa3wBiYZx3gNXPhzCU.9s.a', '15021570', '15021570@vnu.edu.vn', 'Hoàng Tuấn  Hùng', NULL, NULL, NULL),
(306, '15021574', '$2y$10$CvWbFfdqd4/mmUexs.YO7.k9Xlu3Tbq7siHmNHcu1GBDo3VTGYt.y', '15021574', '15021574@vnu.edu.vn', 'Trần Văn  Đông', NULL, NULL, NULL),
(307, '15021577', '$2y$10$KTl09eQgCgxxttGkQeV2a.5tlFNnQJJDpXIhrNbpHtPGokdsucFKy', '15021577', '15021577@vnu.edu.vn', 'Ngô Tiến  Thành', NULL, NULL, NULL),
(308, '15021582', '$2y$10$0h2Wp7QyUe6laf4YO/Ic5udwA162.DoLwGJieH/0OL6Ze/PtpBQjC', '15021582', '15021582@vnu.edu.vn', 'Lưu Minh  Châu', NULL, NULL, NULL),
(309, '15021584', '$2y$10$7dcbAeRGDi.CxowWhn7NE.EdnMnQPopMzWlB7igxsh0dWcU0ZVlIm', '15021584', '15021584@vnu.edu.vn', 'Vũ Minh  Trung', NULL, NULL, NULL),
(310, '15021593', '$2y$10$jQ/pa1Og6OH1oB1QpXalluXyCYEaQnYc0ZkmpmGKckoEv3wNMQ1/C', '15021593', '15021593@vnu.edu.vn', 'Doãn Mạnh  Duy', NULL, NULL, NULL),
(311, '15021595', '$2y$10$TG9qddN1Rqu0FGJ4oZjq5.UWUUMkaFcD3o4vgA6cjVVgoi3BGLgjK', '15021595', '15021595@vnu.edu.vn', 'Phạm Quang  Nam', NULL, NULL, NULL),
(312, '15021818', '$2y$10$5BlBIeMKG86ESgzmHcNggONfMj/8KSz8Darg/ibJYsDT1dqd9Aedy', '15021818', '15021818@vnu.edu.vn', 'Lê Hồng  Đông', NULL, NULL, NULL),
(313, '15021828', '$2y$10$hHcBVetuLRHwmB2IaSaw8ODvtX2DmmVokrv2FT.Qh56nvkUCCbFUy', '15021828', '15021828@vnu.edu.vn', 'Bùi Văn  Linh', NULL, NULL, NULL),
(314, '15021919', '$2y$10$4J7sniauG1PnIQF1/9gUD.8xveotbiQaHgbKpBbmfrgqm2GryixNu', '15021919', '15021919@vnu.edu.vn', 'Nguyễn Thị Thu  Hương', NULL, NULL, NULL),
(315, '15021924', '$2y$10$Jk.vAk1VwHL1Qk5uKUrp1OyGsZmaXS3l2bBAacoSTSkLlZGk0sXfO', '15021924', '15021924@vnu.edu.vn', 'Phan Anh  Dương', NULL, NULL, NULL),
(316, '15021930', '$2y$10$akLbgvplojy0nPNlNWMIKu/OHyErclLnaSpt7haqzC6tze2sovmmm', '15021930', '15021930@vnu.edu.vn', 'Phạm Thanh  Tú', NULL, NULL, NULL),
(317, '15021933', '$2y$10$kvavPHp9luAZLSeF5NP.IO2bSZTo50R/vpmB225ZfvUs4QNhpuOKS', '15021933', '15021933@vnu.edu.vn', 'Phạm Văn  Thịnh', NULL, NULL, NULL),
(318, '15021934', '$2y$10$RRmJ8tbJADxNGeh4EPTIN.oFoyDQ1PNM.pXy0y4c9YxB3r.XqYCxa', '15021934', '15021934@vnu.edu.vn', 'Nguyễn Văn  Chiến', NULL, NULL, NULL),
(319, '15021938', '$2y$10$FU46VPA/5aVf0tO9KdcRwuledxE5TtcSMfT/z1naKHbXPjNivJn.G', '15021938', '15021938@vnu.edu.vn', 'Nguyễn Văn  Nam', NULL, NULL, NULL),
(320, '15021948', '$2y$10$W3dYwknt9jvq1rqvaKkTr.Ffq0ufQscoCVLoLjfKO8dlWaKj4RDNe', '15021948', '15021948@vnu.edu.vn', 'Nguyễn Mạnh  Linh', NULL, NULL, NULL),
(321, '15021951', '$2y$10$sxE.e3mErcvs8cUQsx/r1.UjX9Q8gtOAT6bmaOuoK2jOAdrFacBdK', '15021951', '15021951@vnu.edu.vn', 'Lưu Quỳnh  Trang', NULL, NULL, NULL),
(322, '15021952', '$2y$10$c9weogGnk4EqMecNRwH7veHDmcOAJ0tZRNBUCMmgcB0sR6s6fJIeW', '15021952', '15021952@vnu.edu.vn', 'Đinh Nguyễn Hoàng  Hiệp', NULL, NULL, NULL),
(323, '15021973', '$2y$10$7ltJH/8hZ9FaYWZicKt85OlalyygsPHtGlZEo3pWuZggwPGu/6xUq', '15021973', '15021973@vnu.edu.vn', ' Phạm Ngọc  Quang', NULL, NULL, NULL),
(324, '15021987', '$2y$10$ZLgV/6wnTAGp7c.nVgUNx.LTJJwY..aF3TmuBfObdLQOH3pHlMWb.', '15021987', '15021987@vnu.edu.vn', 'Trần Ngọc  Hoàn', NULL, NULL, NULL),
(325, '15021988', '$2y$10$DIPaVWalsZUJ4nmd3GL4ueiY3g7MHNsCbeFRZ4CsMY7vdBPd1baO.', '15021988', '15021988@vnu.edu.vn', 'Lê Văn  Lợi', NULL, NULL, NULL);
INSERT INTO `students` (`id`, `username`, `password`, `student_code`, `email`, `full_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(326, '15022245', '$2y$10$0D.nzn97qkpuJQIoUbbkfOyLGgi2fbNWt6k3sGjxCaDu439WBOHb6', '15022245', '15022245@vnu.edu.vn', 'Vương Quang  Huy', NULL, NULL, NULL),
(327, '15022247', '$2y$10$5TiSXfJU/OrlfoyX4jFyOuCbAtGtEW3EmOJhwrCWHC5S7IhC5Ixj2', '15022247', '15022247@vnu.edu.vn', 'Nguyễn Vũ  Đức', NULL, NULL, NULL),
(328, '15022252', '$2y$10$KKrViMBuxl2kU1u2JHVDR.pR3K2pMT4Z343qaDDUEVlDFtaz1QbXW', '15022252', '15022252@vnu.edu.vn', 'Nguyễn Đức  Triều', NULL, NULL, NULL),
(329, '15022257', '$2y$10$oYLNYh.MZTF10mWJG2jrWeZwnVSfYK5L87onv8v9vxzXUMdrm7572', '15022257', '15022257@vnu.edu.vn', 'Đào Thị Thanh  Thảo', NULL, NULL, NULL),
(330, '15022258', '$2y$10$RNsd1bmu5EVI/2Uvj9HSquj0Jw8nf9etfbgTRaJfRBYhVfeCJTUei', '15022258', '15022258@vnu.edu.vn', 'Nguyễn Bá Quang  Cường', NULL, NULL, NULL),
(331, '15022264', '$2y$10$kSh1TIIwc1b0tnNbN/yqe.wpviA5Fb0VHCaEx0Wze6csGY1IESd9C', '15022264', '15022264@vnu.edu.vn', 'Nguyễn Tiến  Trung', NULL, NULL, NULL),
(332, '15022269', '$2y$10$LCW7a6nl3E90KMTNnRoH7.KvrxhWw44KfgolLpDfbiYkCDO4Ole0G', '15022269', '15022269@vnu.edu.vn', 'Nguyễn Thị  Hảo', NULL, NULL, NULL),
(333, '15022272', '$2y$10$YH641zOEYbXWv8AYIBXI2ekkEvHScbRTdPd7r71XCaK/mqek6sDgi', '15022272', '15022272@vnu.edu.vn', 'Bùi Ngọc  Thắng', NULL, NULL, NULL),
(334, '15022280', '$2y$10$7iX23p/z3diqBPLha4KgzO836AWa2kG4iaeiVvWR3ZGgUH26Uio5u', '15022280', '15022280@vnu.edu.vn', 'Nguyễn Xuân  Quyền', NULL, NULL, NULL),
(335, '15022281', '$2y$10$.uDXFMs11fpBWdSAHal2h.B0shdD9e2rZj6A8YhWY4MtxVA3QfepO', '15022281', '15022281@vnu.edu.vn', 'Cao Duy  Văn', NULL, NULL, NULL),
(336, '15022286', '$2y$10$qopw2VVNAGO90pY5Rq4tXeEy39DuXNmeGnS3vJwBC1rX/oz4dZX5.', '15022286', '15022286@vnu.edu.vn', 'Vũ Huy  Phát', NULL, NULL, NULL),
(337, '15022288', '$2y$10$FUPx0NB4uSrPgrUPgHzNMOHicjdFsCM.hOeHUiJai20b2Cqyh1cmu', '15022288', '15022288@vnu.edu.vn', 'Phan Đức  Huân', NULL, NULL, NULL),
(338, '15022290', '$2y$10$6uO4f/9DiHpF83rusU4adeWNxxArLok61czRK/McnCrSjxZt3/K2y', '15022290', '15022290@vnu.edu.vn', 'Trần Anh  Tuấn', NULL, NULL, NULL),
(339, '15022292', '$2y$10$V/eWXYMdY63RKR.suEX7GOtcya0iI6DTiKZqU18CmSaiTFvjnPV1y', '15022292', '15022292@vnu.edu.vn', 'Nguyễn Đức  Thắng', NULL, NULL, NULL),
(340, '15022295', '$2y$10$0pw6LV14F7.3cO4eLIcT4O7XToTzi9tWN/m1Esp4..oiCBDn4MUnm', '15022295', '15022295@vnu.edu.vn', 'Trần Công  Anh', NULL, NULL, NULL),
(341, '15022300', '$2y$10$U9zmn17mB5Kk1tdgxy7YL.5Bm7eVrD7hKmdlQH.C3r8f5d6lWWcKC', '15022300', '15022300@vnu.edu.vn', 'Nguyễn Thị Thu  Uyên', NULL, NULL, NULL),
(342, '15022306', '$2y$10$LV048svsDGwwY68loCughOPdH5mD9yKGUyn2dBsf.nVggHkiZHDaC', '15022306', '15022306@vnu.edu.vn', 'Lương Thị  Thủy', NULL, NULL, NULL),
(343, '15022308', '$2y$10$YGsRADGRWDurxO3oEThw6uBVYafRT2WgYNxcNMfT.doka/w4o853a', '15022308', '15022308@vnu.edu.vn', 'Lâm Hồng  Công', NULL, NULL, NULL),
(344, '15022706', '$2y$10$DhmXV9yc6kYHMpYkl04g3uxq0QmM04iMeuGPr3eqeozCe0r2uwHnu', '15022706', '15022706@vnu.edu.vn', 'Nguyễn Ngô  Doanh', NULL, NULL, NULL),
(345, '15022708', '$2y$10$PCXWM.ufJg2Y43EP0AWuPe4tWt3N5cOvk6jM6yT8TwiMQVbkBQM7W', '15022708', '15022708@vnu.edu.vn', 'Nguyễn Khắc  Minh', NULL, NULL, NULL),
(346, '15022709', '$2y$10$oRPNLsl64Icig0/0f0iJMeh9.ft458IYaE9fxa5wjRrUAWTrTnTZK', '15022709', '15022709@vnu.edu.vn', 'Đặng Thị  Sáu', NULL, NULL, NULL),
(347, '15022713', '$2y$10$Dr2kXDosKiPD4na6vE3g9egxLO1E3dewmsFTNGmbP3uRYiHUiTQAW', '15022713', '15022713@vnu.edu.vn', 'Nguyễn Lương  Quyền', NULL, NULL, NULL),
(348, '15022720', '$2y$10$yf5gnzvIcZi8KfVzvPRbluWRZt5SkAtJRcqkgm9Tsmtnq4BkN1rmq', '15022720', '15022720@vnu.edu.vn', 'Trần Chính  Đoàn', NULL, NULL, NULL),
(349, '15022725', '$2y$10$m5ibDJ42CjyJDwNRYhSVNOm6i.NNn2S0sgq7l/WeBPusi/J4Bqc/S', '15022725', '15022725@vnu.edu.vn', 'Lê Anh  Tuấn', NULL, NULL, NULL),
(350, '15022726', '$2y$10$x.UbeboGlL2N.lpM5h5muOB8O9/0nWL5Z.moynMVX02stf5kMW0ui', '15022726', '15022726@vnu.edu.vn', 'Phạm Thế  Huy', NULL, NULL, NULL),
(351, '15022727', '$2y$10$0M4geDhWz/QimG59gXOq.euijB9EG8ffB2GrpQf/ZfBUK24nkKKF6', '15022727', '15022727@vnu.edu.vn', 'Nguyễn Văn  Quang', NULL, NULL, NULL),
(352, '15022736', '$2y$10$Qw.tElZjI0bVIv4rk3TSgOovsUwB7vCY.OBu9dQNTo3WNcl2Pgvcu', '15022736', '15022736@vnu.edu.vn', 'Tạ Hoàng  Nguyên', NULL, NULL, NULL),
(353, '15022737', '$2y$10$XKtmj.GB6kQeo7G1KGLZHeSB5qvvu7tZtEyQSQEgEvcSiL2lrAtd.', '15022737', '15022737@vnu.edu.vn', 'Lã Văn  Hùng', NULL, NULL, NULL),
(354, '15022741', '$2y$10$ncxRkmqsqnezr7ErVInBV.r5LbPxGbXkXOJ6uHpE9RFCNT.iZ/87i', '15022741', '15022741@vnu.edu.vn', 'Lương Đình  Bắc', NULL, NULL, NULL),
(355, '15022742', '$2y$10$cq2MTyt9x.v8W4tVmLsesOkHcaGEAHvfQzv1tCfDjhwqucG6SJjBW', '15022742', '15022742@vnu.edu.vn', 'Đinh Thị  Hiếu', NULL, NULL, NULL),
(356, '15022748', '$2y$10$YLK5pnV.oZ0rNbD4/Gm/UutmsRLUM0oemwjTYpTWQBidC7gHfADHS', '15022748', '15022748@vnu.edu.vn', 'Nguyễn Danh  Hùng', NULL, NULL, NULL),
(357, '15022751', '$2y$10$r3QsIcmiVDO8jDiZIJRuhuFk/sEsyeMvTOrSbgpXee5LR9qQxQCBK', '15022751', '15022751@vnu.edu.vn', 'Đỗ Thành  Long', NULL, NULL, NULL),
(358, '15022755', '$2y$10$ucm4kW1AWonfsr9PREdhJeMjhCCZbNNXW9BaGqw0rpx0gRHXcATsu', '15022755', '15022755@vnu.edu.vn', 'Phạm Đình  Thành', NULL, NULL, NULL),
(359, '15022764', '$2y$10$F4w9jI4.DzH8i6TTjEQPF.dAMM0ZiOH.HpmIg1SpSjBDb6zNNjU7y', '15022764', '15022764@vnu.edu.vn', 'Trần Thị  Thơ', NULL, NULL, NULL),
(360, '15022773', '$2y$10$HKbTOKuzwbLqeXoH1iaM2.QlueHmo.gr2nAfczYGdQVonCD7qmuJ.', '15022773', '15022773@vnu.edu.vn', 'Đỗ Thị Thanh  Dịu', NULL, NULL, NULL),
(361, '15022807', '$2y$10$xZX4Q2wny3pDzp./eZ4TZOtQ6xpJJB1QIfgr31XKVjESK/jUoS2lK', '15022807', '15022807@vnu.edu.vn', 'Nguyễn Thu  Hằng', NULL, NULL, NULL),
(362, '15022808', '$2y$10$knNO5xeCT.Ww0tizOJmaGe7xRoBw2crmEgzmfj7W3Urc46m8APT7y', '15022808', '15022808@vnu.edu.vn', 'Nguyễn Văn  Chương', NULL, NULL, NULL),
(363, '15022809', '$2y$10$atS3e9.4g5pD/i1g.l.nXu/v7qvV8km/U6kYAafLrhaU30btNWXD.', '15022809', '15022809@vnu.edu.vn', 'Nguyễn Văn  Ngọc', NULL, NULL, NULL),
(364, '15022811', '$2y$10$Gb24Ip8/HJ4PhqnKGUU5QOQva9vp/7B588bmXmrVcFH03uqGOs3hK', '15022811', '15022811@vnu.edu.vn', 'Đoàn  Lương', NULL, NULL, NULL),
(365, '15022812', '$2y$10$d7Gm0CHH947szHBgtE3xg.zTRdCEefdCqLy2EpLB2bQNysadxVCj6', '15022812', '15022812@vnu.edu.vn', 'Nguyễn Thị  Hoài', NULL, NULL, NULL),
(366, '15022813', '$2y$10$1ZCHw82ML7zgaEKxBOfmnu9SFXfrTAY6MtpYXqDd3FfQPnut1veJu', '15022813', '15022813@vnu.edu.vn', 'Trần Hoài  An', NULL, NULL, NULL),
(367, '15022815', '$2y$10$5cr7cwK31AcG4zmdaDayu.AKWvwUosHyxXMaF0Dkhq/mPsLMI7GmO', '15022815', '15022815@vnu.edu.vn', 'Tạ Trung  Kiên', NULL, NULL, NULL),
(368, '15022816', '$2y$10$rrAC1b2/zbj1.W4DnSpjle7TOuzN8wujwUFEQ7BOFApkcC2bVVQm.', '15022816', '15022816@vnu.edu.vn', 'Vũ Văn  Đạt', NULL, NULL, NULL),
(369, '15022817', '$2y$10$4Vz4ci155PYar/NHfTKC5e7oU71FvLG2sWkiQYYBO1hzPF2mQYQ0O', '15022817', '15022817@vnu.edu.vn', 'Nguyễn Lưu  Hoàng', NULL, NULL, NULL),
(370, '15022818', '$2y$10$f4X.VSgSLlj/3r08Xn8X1.AXI.LW/DWpooOuhtt4W92ql7Mm7h40W', '15022818', '15022818@vnu.edu.vn', 'Tạ Đình  Lượng', NULL, NULL, NULL),
(371, '15022869', '$2y$10$B4w6fypzDFDV4mT7AIcIMur6vPfos5jorGaicn/3CKOIi8MR88hd6', '15022869', '15022869@vnu.edu.vn', 'Khương Tuấn  Dũng', NULL, NULL, NULL),
(372, '16020803', '$2y$10$zhybORJnM3u3O16SLm5BAe7L1VcuuNBNcvSAqhbGwxflJIwq0fWJK', '16020803', '16020803@vnu.edu.vn', 'Vũ Đình  Thắng', NULL, NULL, NULL),
(373, '16021523', '$2y$10$ZQeNg.pB6Ntr3QvgMW69KudkbzQTguWATpvgYZJ3JsKuw6ryNahVK', '16021523', '16021523@vnu.edu.vn', 'Nguyễn Văn  Thức', NULL, NULL, NULL),
(374, '16021526', '$2y$10$NqMwmzGClJDITtrPGEBdKuK/Bw30j72yg2XONQWvNbFVnGUABi5y.', '16021526', '16021526@vnu.edu.vn', 'Lê Văn  Tiến', NULL, NULL, NULL),
(375, '16021532', '$2y$10$QyLVjaWLKr8YP.yKkFotK.0Q9jKI10bC4aGuAhYX4Nqnrcy9RWb2m', '16021532', '16021532@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(376, '16021536', '$2y$10$Nxj9q392EPS36Njps/9qWOl143qKXLnjm9G9yvQnpzgWOwbpfUr6W', '16021536', '16021536@vnu.edu.vn', 'Hoàng Nguyễn Minh  Tuấn', NULL, NULL, NULL),
(377, '16021537', '$2y$10$v72GD9lWQdg5INEthIK1C.jgM2rfARqaEt0.cTn8nDPL0f3gMFqHO', '16021537', '16021537@vnu.edu.vn', 'Lê Hồng Anh  Tuấn', NULL, NULL, NULL),
(378, '16021538', '$2y$10$ecm6tHKQppHvxXSU7os19ubOlJbnPaQCrGJ0NBPaYUnESduqe19oK', '16021538', '16021538@vnu.edu.vn', 'Nguyễn Duy  Tuấn', NULL, NULL, NULL),
(379, '16021541', '$2y$10$v/6OCkurj1pZMVX2W1cAOOkvhWdjzwhxh..PhEaecSNUvcbtnmgO.', '16021541', '16021541@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(380, '16021542', '$2y$10$MvVqYANqa6ogLyEgZRZduOZdY7xiMI09jZTsnsuET61bzPWkucWU2', '16021542', '16021542@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(381, '16021544', '$2y$10$UUxto7x6s5J4pgXRfvX/7elL8EeUseLe96Lx1sypvVrkNr5ufHzzi', '16021544', '16021544@vnu.edu.vn', 'Ngô Văn  Tuyến', NULL, NULL, NULL),
(382, '16021551', '$2y$10$N1OA1Iw8P7A0Okv.WaWCKO/PRSr6Z8/cpBEAs4OU.4/j1Y06.3nU2', '16021551', '16021551@vnu.edu.vn', 'Đào Thế  Anh', NULL, NULL, NULL),
(383, '16021554', '$2y$10$1hJNl7oWDBoft18JCZji4eHw4b3A5dloqKtV1fL7RZGVcmFynzsO6', '16021554', '16021554@vnu.edu.vn', 'Phạm Tuấn  Anh', NULL, NULL, NULL),
(384, '16021562', '$2y$10$/ZYVw7sWSM5bQHIAwm2I2uMthXIOEtmThJgr66xaAxJG1YOZH9ZrW', '16021562', '16021562@vnu.edu.vn', 'Nguyễn Ngọc  Doanh', NULL, NULL, NULL),
(385, '16021563', '$2y$10$y0z6Plp48QDhL24AC9FleuVhYvqWCsOptJbyE9hACmR6CYg8eWnsy', '16021563', '16021563@vnu.edu.vn', 'Trần Quý  Đông', NULL, NULL, NULL),
(386, '16021565', '$2y$10$zUONIeIm.G/PM8PVpjSBy.X86NSBiJxxcBOPgWIGy0GK4xNyzzUS.', '16021565', '16021565@vnu.edu.vn', 'Phạm Ngô Tiến  Dũng', NULL, NULL, NULL),
(387, '16021570', '$2y$10$8ooqAUaV.O5WgENBweVW/OeGDkVPkI11S/tpcHk92J2bt8AgNJbEe', '16021570', '16021570@vnu.edu.vn', 'Vương Xuân  Dương', NULL, NULL, NULL),
(388, '16021571', '$2y$10$9Q/48wz67U72PZiBEgj2ZupefUuFajtmWQAndlVQ5qTYw8k.7sSsm', '16021571', '16021571@vnu.edu.vn', 'Trần Đại Trường  Giang', NULL, NULL, NULL),
(389, '16021572', '$2y$10$u9KceHYSEeGFduSoIujOl.GzYwhC1WHZcTmGfwaNL.A9tF7R4i/w.', '16021572', '16021572@vnu.edu.vn', 'Hoàng Thái  Hà', NULL, NULL, NULL),
(390, '16021574', '$2y$10$AIml0EwSdYXowz59D8Hg/uPxraqB5x/y.l3mGFIAz3PdXdLjyHZBu', '16021574', '16021574@vnu.edu.vn', 'Nguyễn Minh  Hiền', NULL, NULL, NULL),
(391, '16021577', '$2y$10$ReBG5s0t.YfCJSXJwto5ou6gIewnQ3H6Ekes9oXwAEpWQSh0pJHL.', '16021577', '16021577@vnu.edu.vn', 'Đỗ Minh  Hiếu', NULL, NULL, NULL),
(392, '16021580', '$2y$10$Al22B5Rfe7A4BRAK2iWhQeoP3VHSG8dJnn4KaQmuj.jQBhn.GX8o2', '16021580', '16021580@vnu.edu.vn', 'Nguyễn Đắc  Hoàn', NULL, NULL, NULL),
(393, '16021585', '$2y$10$AofT4LhMV0jq0PhuUv545.aI0Dz33JotLwPd.nNUTkMm2CRVQSBJ.', '16021585', '16021585@vnu.edu.vn', 'Trương Xuân  Hội', NULL, NULL, NULL),
(394, '16021588', '$2y$10$gJ.XmCS9/ohK7gRcGFFwh.tSpI3UnWyseV60f5XeZYJLvphPC2p5m', '16021588', '16021588@vnu.edu.vn', 'Nguyễn Việt  Hùng', NULL, NULL, NULL),
(395, '16021589', '$2y$10$yBL.r6FgOF4lL3gA.gUmoudnBtEACwgKlN.9g4ehBdx1Pohyp6BRy', '16021589', '16021589@vnu.edu.vn', 'Cao Hữu  Hưng', NULL, NULL, NULL),
(396, '16021591', '$2y$10$dwII0ZXevC1N0X3SUEDJZeUXz4dlDwmXvrVBIsiGEM7c.l8TBhuUK', '16021591', '16021591@vnu.edu.vn', 'Lê Duy  Hưng', NULL, NULL, NULL),
(397, '16021594', '$2y$10$nSX6xM8rBV0XBmlVPE/b9.9mpsTTJPJoT1ML7FD2PtZdF0V1mxSYa', '16021594', '16021594@vnu.edu.vn', 'Nguyễn Công  Huynh', NULL, NULL, NULL),
(398, '16021597', '$2y$10$SH91zO1L4uD0OF3uONtz.uqFKrW1m5o.wDluvI7wCFASuUTPmBchK', '16021597', '16021597@vnu.edu.vn', 'Đào Ngọc  Lâm', NULL, NULL, NULL),
(399, '16021601', '$2y$10$Kl3VrEy72i0tlwC54CzhqumEXqApquZP8cvoYk6blhsJ6zj1i3IYO', '16021601', '16021601@vnu.edu.vn', 'Ninh Thị Nhật  Lệ', NULL, NULL, NULL),
(400, '16021602', '$2y$10$8Kz9HerWvUOqP42v3wEqHejKjDDBUVEegSbmjqGKjQQr48gHaYvtu', '16021602', '16021602@vnu.edu.vn', 'Đỗ Huy  Linh', NULL, NULL, NULL),
(401, '16021605', '$2y$10$LS55LPioOLA4ppO2wAr7B.kh6OVhxk7YIyw0jqhW4Af1Q8bIqDCYy', '16021605', '16021605@vnu.edu.vn', 'Nguyễn Đăng Bảo  Long', NULL, NULL, NULL),
(402, '16021607', '$2y$10$9EzrVThnbKns1aZ3P3ByeuFY18VSAgWIbX8JNQFIlpv5PwXlkz6va', '16021607', '16021607@vnu.edu.vn', 'Đồng Thị Thanh  Lương', NULL, NULL, NULL),
(403, '16021610', '$2y$10$SaRfj/.aSecFAsPFvUmIReABxXtuD.dNR48p1Fglmmu.l7LR03fL6', '16021610', '16021610@vnu.edu.vn', 'Phạm Tiến  Mạnh', NULL, NULL, NULL),
(404, '16021614', '$2y$10$296QpdHdokgRUWYZo4kiHeGV26hedHVSQc2JJBi1Jf8hAmhOJU0ua', '16021614', '16021614@vnu.edu.vn', 'Bùi Phương  Nam', NULL, NULL, NULL),
(405, '16021616', '$2y$10$6mSmz822icgLdXrYO.La2eJF0dM0//qledxQoCMu2wvRZoL328Cfu', '16021616', '16021616@vnu.edu.vn', 'Trương Văn  Nam', NULL, NULL, NULL),
(406, '16021617', '$2y$10$C9JAMZtnh2parcCYvJ.SXeSPFFcmYgvhIHLRg2Nn2gYmPxo5iqRY.', '16021617', '16021617@vnu.edu.vn', 'Nguyễn Thị Thúy  Nga', NULL, NULL, NULL),
(407, '16021621', '$2y$10$zrcdPqj9xqG4SrKr4HvnEOx0vuT/fUYwGh2XKBCpG05aSmooJT03m', '16021621', '16021621@vnu.edu.vn', 'Bùi Thị Hồng  Nhung', NULL, NULL, NULL),
(408, '16021622', '$2y$10$G9s8vsAIkLmqXEjmxBrc5.WHjkJmmUObwamH9Ef96LtONP/iLXFQW', '16021622', '16021622@vnu.edu.vn', 'Tăng Thị  Nhung', NULL, NULL, NULL),
(409, '16021623', '$2y$10$rKBy67t1EG0ODsNuNR/EVObFnnBW8Oc/5DzA4Vx3QE8gCkP3qVH3W', '16021623', '16021623@vnu.edu.vn', 'Kiều Thanh  Phong', NULL, NULL, NULL),
(410, '16021626', '$2y$10$JFZlGrc3r/Le/PcJ6uL94u.iFuOJArOfvUntTQ/0kikZb2t5XZLVG', '16021626', '16021626@vnu.edu.vn', 'Đỗ Hữu  Phúc', NULL, NULL, NULL),
(411, '16021628', '$2y$10$XN3LiN4mkM.ylb45V7y5KOWTCxK9K.yJfjiaVCxwEurImj2y/Hj8O', '16021628', '16021628@vnu.edu.vn', 'Phan Tiến  Phước', NULL, NULL, NULL),
(412, '16021629', '$2y$10$Y40POsd3k4FIW68TAPH7QO/stm.Wmjfa9emmBfSYcuPm2xfP5Z6gS', '16021629', '16021629@vnu.edu.vn', 'Ngô Minh  Phương', NULL, NULL, NULL),
(413, '16021636', '$2y$10$oRwLISqAOEo9.XGSvqmDv.Ej/Dk3cHNd9E4scR05r9PSwqBQrH58C', '16021636', '16021636@vnu.edu.vn', 'Phạm Văn  Quyến', NULL, NULL, NULL),
(414, '16021637', '$2y$10$Idpg4adRWBoOL5BWw79.reXXJNI3lVjdiybLmEWErWcdyeMep41o2', '16021637', '16021637@vnu.edu.vn', 'Phạm Xuân  Quỳnh', NULL, NULL, NULL),
(415, '16021644', '$2y$10$8T2EU.NjVEktfgP/mpFdGuC5oErjr9p3XB4wYuwXFTBAyTCdY1Pfy', '16021644', '16021644@vnu.edu.vn', 'Phan Văn  Thắng', NULL, NULL, NULL),
(416, '16021647', '$2y$10$hNv9xepnQbqeXdRUKb6DWOQ28anKeiQICWI2kVtq4Tzw6rJS/HbBC', '16021647', '16021647@vnu.edu.vn', 'Đồng Văn  Thành', NULL, NULL, NULL),
(417, '16021650', '$2y$10$smuCUzzvXimkOprwQiKmweoTrC8wfsQtcN24M1BRi5Pj6lzSVoNVG', '16021650', '16021650@vnu.edu.vn', 'Nguyễn Khắc  Thành', NULL, NULL, NULL),
(418, '16021652', '$2y$10$CPq8IcYUP9EtZiPmkGEphuzl7CD3pnFcXHMel8Yk1Gx0ilH/2usMW', '16021652', '16021652@vnu.edu.vn', 'Nguyễn Thị Thanh  Thư', NULL, NULL, NULL),
(419, '16021655', '$2y$10$lGGyZzahqlBbCFClD.YRD.4yn94obneZzO3ZLm27fcaYVwwIRQHP6', '16021655', '16021655@vnu.edu.vn', 'Lê Đức  Toàn', NULL, NULL, NULL),
(420, '16021658', '$2y$10$h1kPVrz9WZCKVtGRrO7xPeJCDNtG5YFWvg6hADeYwusL5G/UCCvta', '16021658', '16021658@vnu.edu.vn', 'Mai Phúc  Triệu', NULL, NULL, NULL),
(421, '16021659', '$2y$10$ycJLLrvzClcA.KOr2KfrFuCPDBySVNGorMc5E4WOLn7rM.QBLHCEW', '16021659', '16021659@vnu.edu.vn', 'Đinh Bá  Trung', NULL, NULL, NULL),
(422, '16021672', '$2y$10$cbgOT7XW1DLeu0pSsF6dUumwOwRvk867/V7MCff5xtbd5Z/UoECoq', '16021672', '16021672@vnu.edu.vn', 'Trần Tiến  Anh', NULL, NULL, NULL),
(423, '16021678', '$2y$10$fy0ObLgNPvOCyLZM1/zpI.1CgFIRsSpMiqZqGIL.B.q4meseCkEcq', '16021678', '16021678@vnu.edu.vn', 'Trần Thị Linh  Chi', NULL, NULL, NULL),
(424, '16021682', '$2y$10$OoqVbJQp90S.ulHcuAZxleKTogHwmd7PlbuuHpKcFgh6J5GZJE6A2', '16021682', '16021682@vnu.edu.vn', 'Hà Văn  Đăng', NULL, NULL, NULL),
(425, '16021690', '$2y$10$.YUk6iW2uG1lpcbqLI7MKOqC4UVGMQAEJHN68I6WciRBZgTx67GvC', '16021690', '16021690@vnu.edu.vn', 'Dương Tuấn  Dũng', NULL, NULL, NULL),
(426, '16021693', '$2y$10$LSJNqsGiatm5qswGo/XdqO8XgrvO3mesQauELOOB663Xuo5FCpqs6', '16021693', '16021693@vnu.edu.vn', 'Phan Lạc  Dương', NULL, NULL, NULL),
(427, '16021715', '$2y$10$LTdFgIeSmRYbON2Maz/3Au7PymMBhqwfHi8Xbep.oWBW32bFvfEwS', '16021715', '16021715@vnu.edu.vn', 'Phan Ngọc  Huy', NULL, NULL, NULL),
(428, '16021721', '$2y$10$/USpnVOPWU.EiSSYGug/7OS6AJ9M6HxJBU7IfgVOMPZ9V3rwP.Kmq', '16021721', '16021721@vnu.edu.vn', 'Vũ Thị Ngọc  Khánh', NULL, NULL, NULL),
(429, '16021726', '$2y$10$Qvvtwu9YMrM5DxKNynkw4unmaUgmp9xveB/45mwiVb8Zr5ygrswhC', '16021726', '16021726@vnu.edu.vn', 'Nguyễn Thế  Lâm', NULL, NULL, NULL),
(430, '16021730', '$2y$10$il84x7JafJhH73TOCRrW1udvAlrlE1o.JvX./YN/F8bjINCRg04Ii', '16021730', '16021730@vnu.edu.vn', 'Trần Quyền  Linh', NULL, NULL, NULL),
(431, '16021740', '$2y$10$wAnPZHfTvXEjb38l.xYc9eYFvohVhgfxo2//.p2b.OtT40tCnHq62', '16021740', '16021740@vnu.edu.vn', 'Nguyễn Nghĩa  Minh', NULL, NULL, NULL),
(432, '16021743', '$2y$10$zY0HPyIGhqLjBoPBqL8cB..GoaUqzkfVxW2h5GOjhLn592aIFkq3m', '16021743', '16021743@vnu.edu.vn', 'Lê Trọng  Nghĩa', NULL, NULL, NULL),
(433, '16021745', '$2y$10$F6YUJk4btmB6ZLjxyMW/UuYN2G2FYyCcTs3KJQDag1LKC0EbYfm2O', '16021745', '16021745@vnu.edu.vn', 'Nguyễn Sỹ  Nhân', NULL, NULL, NULL),
(434, '16021746', '$2y$10$UByUDEZ.qOTYk7LQifRDKe8o6OrNWekCUVn.7n0JPj5bBMLeff7nC', '16021746', '16021746@vnu.edu.vn', 'Hà Thị Hồng  Nhung', NULL, NULL, NULL),
(435, '16021767', '$2y$10$71ZISaqAaEH1ZyYNPP9SHOuZHBwKrMHEqbeBW6wMqWH.iaUjrypXu', '16021767', '16021767@vnu.edu.vn', 'Nguyễn Thị  Thoa', NULL, NULL, NULL),
(436, '16021768', '$2y$10$TujpWeQ/uBOlu.nlIow2yeIEYI2BOJlak8VIQundgCAdbve0YKlum', '16021768', '16021768@vnu.edu.vn', 'Nguyễn Quang  Thông', NULL, NULL, NULL),
(437, '16021769', '$2y$10$SIIBz7BRjn8jrOzZB9RzD.lXF4vsdCc5x4a7E.pn2D4v57Sh4tMOW', '16021769', '16021769@vnu.edu.vn', 'Nguyễn Thị  Thường', NULL, NULL, NULL),
(438, '16021779', '$2y$10$fHITquvIqfqJirMgHfxnc.KZd3mHicpQe8aTjcGN1BdbUELjAS2Ku', '16021779', '16021779@vnu.edu.vn', 'Hoàng Lê Anh  Tuấn', NULL, NULL, NULL),
(439, '16021787', '$2y$10$vxlhK1yvOHkYLREvYcmgXua0ghDkjbDqZ3/yMf5krDibO/7aEXFiG', '16021787', '16021787@vnu.edu.vn', 'Nguyễn Trọng  Vinh', NULL, NULL, NULL),
(440, '16021824', '$2y$10$4Ln2fE1Ci/Fl0SN38SNoCO1u5ICRUN9INGzT1GCR9H9B/eOnsKK4K', '16021824', '16021824@vnu.edu.vn', 'Đỗ Thành  Đạt', NULL, NULL, NULL),
(441, '16021832', '$2y$10$9BSEZQH4fED.RUMt6LfguORTSqluBC13d4HPCqux46gjnbcBvotGy', '16021832', '16021832@vnu.edu.vn', 'Nguyễn Gia  Phong', NULL, NULL, NULL),
(442, '16021843', '$2y$10$NXY8o9Urvy80YyJe.wzcluygIbZhgfJ1OV8YLJto3CsIm8PgLDYRG', '16021843', '16021843@vnu.edu.vn', 'Nguyễn Thị Hoàng  Oanh', NULL, NULL, NULL),
(443, '16021861', '$2y$10$A..NXG6pLQlpMDc52vNr/eEUhOtFDNYF.sRWmTkK.Hob.FGXJ9GKW', '16021861', '16021861@vnu.edu.vn', 'Đặng Mỹ  Duyên', NULL, NULL, NULL),
(444, '16021878', '$2y$10$ODj49St26OZLNUq6eEgc0OZQw3AciNF66tIt/D3ZK8tpl47KPxHHe', '16021878', '16021878@vnu.edu.vn', 'Hoàng Đình  Nam', NULL, NULL, NULL),
(445, '16021890', '$2y$10$evc3xsILQlaJ4W33rvCikOZO45X0UE0dvAverBDIPKCT/Xw0D4oFm', '16021890', '16021890@vnu.edu.vn', 'Nguyễn Văn  Thắng', NULL, NULL, NULL),
(446, '16021941', '$2y$10$OBJeFOF06zu1yqaB/akkjuHHBCpFkE7khyyLAZS9pGh0Lpjfff0Fm', '16021941', '16021941@vnu.edu.vn', 'Nguyễn Đức  Toàn', NULL, NULL, NULL),
(447, '16021942', '$2y$10$kJH.ZHARsHj5AHMKqXHOteqR/xV.UPiEtEQLI.wOa9rM4N3gtZ/em', '16021942', '16021942@vnu.edu.vn', 'Ngô Thị Huyền  Trang', NULL, NULL, NULL),
(448, '16022150', '$2y$10$yBzMa/mBIsOkI2CHf.ZO1OAGxaoqi7r1wZzCtQidnZXsn7SZCIQ4G', '16022150', '16022150@vnu.edu.vn', 'Trần Hoàng  Anh', NULL, NULL, NULL),
(449, '16022164', '$2y$10$xxUt6Y4VFStjIcdXSq3eyuNktyPaX48a.Ry5Hs6ukMQj8wvLbtC1a', '16022164', '16022164@vnu.edu.vn', 'Lê Quang  Đạt', NULL, NULL, NULL),
(450, '16022171', '$2y$10$wBtGCvAA7zSjzuMdTBfLvOrOBEvR3jGUH64nkEside1lwClwprk8K', '16022171', '16022171@vnu.edu.vn', 'Ngô Thị  Hiền', NULL, NULL, NULL),
(451, '16022173', '$2y$10$E90dheKIRWyBgrd8mzPV5./Gv6CYI/CD6JYYIWL2yxxR3VqdOInE.', '16022173', '16022173@vnu.edu.vn', 'Lê Xuân  Hiếu', NULL, NULL, NULL),
(452, '16022183', '$2y$10$Zp.eGnGna01UXOwlIw.0ZuSEMtWvHFiqZhqOCbOjwNISYFPE0tYda', '16022183', '16022183@vnu.edu.vn', 'Vũ Đăng  Huy', NULL, NULL, NULL),
(453, '16022191', '$2y$10$qd/eRQnWus6qQAt6.Fa7q.kpEmoJh.Sw1qZy.mt/bPdvI2Jt4xAxa', '16022191', '16022191@vnu.edu.vn', 'Lê Nam  Khánh', NULL, NULL, NULL),
(454, '16022193', '$2y$10$pruB04yQ3z8mtLamgMYKmOjbMp3TsC1AiGuuyF3NOxGQMyR1GnP0C', '16022193', '16022193@vnu.edu.vn', 'Nguyễn Ngọc  Lâm', NULL, NULL, NULL),
(455, '16022194', '$2y$10$SR7moTnClrwznLv.uePUsuJdd4fdUN3MD2ajuhgJCG0XUDU2UDOpy', '16022194', '16022194@vnu.edu.vn', 'Đoàn Nho  Lâm', NULL, NULL, NULL),
(456, '16022199', '$2y$10$QLXbS0eUNXMsm04BXXbJ5utbJXC.XH7ippJTD3hnd2H2GfwwbExLC', '16022199', '16022199@vnu.edu.vn', 'Vũ Quyền  Linh', NULL, NULL, NULL),
(457, '16022215', '$2y$10$02vmM5ON0cRa/2I.FiLYl.ApLdeI6RneT4sOPZ6klW9c12HPUqegy', '16022215', '16022215@vnu.edu.vn', 'Nguyễn Hữu  Phúc', NULL, NULL, NULL),
(458, '16022221', '$2y$10$waeFMDffQKG3bY.jWr.mduzTdVNDaJEdN6cb5Swa9cUCqL.8oNYwC', '16022221', '16022221@vnu.edu.vn', 'Vũ Đức  Sơn', NULL, NULL, NULL),
(459, '16022222', '$2y$10$XX2F/IgJEGV9p1x9on/A1OJXLTuFyjUodPW8NNe4Osl8qEhleON5i', '16022222', '16022222@vnu.edu.vn', 'Trần Ngọc  Tân', NULL, NULL, NULL),
(460, '16022227', '$2y$10$iNKJHgnMhm2xWR.btarRbOLOku2oGGfOEBNJnntgTsM1Gil77da66', '16022227', '16022227@vnu.edu.vn', 'Vũ Viết  Tuân', NULL, NULL, NULL),
(461, '16022400', '$2y$10$3ZvH9OUhgzMfNNfxO1VgROX5aqmhgbQy2NfVdi1tYHLdozZGHMrty', '16022400', '16022400@vnu.edu.vn', 'Nguyễn Sơn  Trường', NULL, NULL, NULL),
(462, '16022423', '$2y$10$ElDDL3.TyZiHBS2bBDtvi.LNTqMHxYphKdUwLMqU21RP2ZOVSZ5/m', '16022423', '16022423@vnu.edu.vn', 'Nguyễn Viết Tiến  Anh', NULL, NULL, NULL),
(463, '16022424', '$2y$10$mTtwo8JMNkiu4itXEmft4ejQuKSm.nHncPU3CuPeWOzsY91tRAKta', '16022424', '16022424@vnu.edu.vn', 'Nguyễn Thanh  Bình', NULL, NULL, NULL),
(464, '16022428', '$2y$10$AlPdGWlVNRZpBFmBJVdztul4SJfSJU2YNWtADceZrNi1d8VQu7OAG', '16022428', '16022428@vnu.edu.vn', 'Nguyễn Văn  Diên', NULL, NULL, NULL),
(465, '16022429', '$2y$10$q/0TY1RzPTcwE848dGFsM.Qtmim7jC39/Yxl2yFz.LsMzxcFOmhBK', '16022429', '16022429@vnu.edu.vn', 'Vũ Minh  Dũng', NULL, NULL, NULL),
(466, '16022433', '$2y$10$DfPvKkSe0YkBT/Oy6malnu3bs.q8cwYyPSaWxKJ8g8VgwfL0xJFU.', '16022433', '16022433@vnu.edu.vn', 'Nguyễn Thị  Hoài', NULL, NULL, NULL),
(467, '16022435', '$2y$10$vb0tP1JYp3Hfwm8MtvIeh.Z1za9u7JCQ2J04Qis6e9qT4ZbbNiaEq', '16022435', '16022435@vnu.edu.vn', 'Doãn Đoàn Đại  Hùng', NULL, NULL, NULL),
(468, '16022436', '$2y$10$UJklChfCYH2rX6qenmGVK.d933O31.p4Xtpu0HtAPHKZvj3NCLVBC', '16022436', '16022436@vnu.edu.vn', 'Nguyễn Huy  Hùng', NULL, NULL, NULL),
(469, '16022441', '$2y$10$Kp1isH4mKrCqC5b7bv7yS.bMMBp/HBo8I3cUPR9xoWeUEFmpq56Ze', '16022441', '16022441@vnu.edu.vn', 'Nguyễn Duy  Hưng', NULL, NULL, NULL),
(470, '16022442', '$2y$10$st21FthSZrodPOfv6zMFEOPlKYc0ZJT9r2sswcLC2Qp7jXA9qrz8O', '16022442', '16022442@vnu.edu.vn', 'Hà Ngọc  Linh', NULL, NULL, NULL),
(471, '16022443', '$2y$10$Rj4qI6aHHKvt919pWSjG4ucdunUoOaa86RL3QHftoEo7pnMbfFq3y', '16022443', '16022443@vnu.edu.vn', 'Kiều Thanh  Nam', NULL, NULL, NULL),
(472, '16022445', '$2y$10$dYVPeJ7eC7DLU.Wc/cZ40OJWxFnRWXopaxNyl2rmGcxQYpye52Slq', '16022445', '16022445@vnu.edu.vn', 'Phan Văn  Tài', NULL, NULL, NULL),
(473, '16022448', '$2y$10$dj/CphMIuOqbvcz9wUqt/.m/mwKiZHWZxATy6lGL9H/XTQN7/a7Za', '16022448', '16022448@vnu.edu.vn', 'Đặng Thanh  Tuấn', NULL, NULL, NULL),
(474, '16022450', '$2y$10$FvMTnLEH5ZyPClNmC5XG8epfAUaBZKGj9gD/5l/zFkJeqtUQ18woq', '16022450', '16022450@vnu.edu.vn', 'Tưởng Công  Thành', NULL, NULL, NULL),
(475, '16022451', '$2y$10$F2Nz7f5LrQ0vt33vwVJ.dOfSy9I1tKuWOZtNUW6hMKasM2KfGY2Qa', '16022451', '16022451@vnu.edu.vn', 'Ngô Doãn  Thông', NULL, NULL, NULL),
(476, '16022452', '$2y$10$L.rn7m/gpwuHi2yAjhBQt.rXfiql7.2Qa9t9mCvp50WpnG/MYINmq', '16022452', '16022452@vnu.edu.vn', 'Trần Thị Anh  Thư', NULL, NULL, NULL),
(477, '16022453', '$2y$10$iRCIRlHd/GGCUCEoO0/NXuPSgraDhNhOaYL0NxxoU35ozHNa0rsty', '16022453', '16022453@vnu.edu.vn', 'Mai Ngọc  Trinh', NULL, NULL, NULL),
(478, '16022456', '$2y$10$U31xnfbyamrL/iTHWMzyxOYX3lVR33HkW9eXN2D2U1NopynXzDaTi', '16022456', '16022456@vnu.edu.vn', 'Nguyễn Hoa  Vinh', NULL, NULL, NULL),
(479, '16022458', '$2y$10$.FAjclBMGQ8/IbQcbYAucuSMdJZXqdm5sUfk0Z3.FBJcAvTvo8TFi', '16022458', '16022458@vnu.edu.vn', 'Nguyễn Đình  Ánh', NULL, NULL, NULL),
(480, '16022459', '$2y$10$zpJHjts.cEnZuLQpcoqlq.b2bvfUTCNsaFR1QVZ2ucNaxYQzyAdVe', '16022459', '16022459@vnu.edu.vn', 'Nguyễn Văn  Điệp', NULL, NULL, NULL),
(481, '16022460', '$2y$10$SelgzvE5HL8ophSTHka7KeNmBWhAlmap4dq7a8QjQwrCQUOmzn8Uq', '16022460', '16022460@vnu.edu.vn', 'Trần Thị Thu  Hà', NULL, NULL, NULL),
(482, '16022463', '$2y$10$U1yQXeJ1T042oI.in5rNWuJPawkRHeT98wMxF1OoR5PQHViNDKInG', '16022463', '16022463@vnu.edu.vn', 'Nguyễn Thị Thu  Huyền', NULL, NULL, NULL),
(483, '16022465', '$2y$10$5/9MuJxoWxNFLs3A5Q2gWO5SQfBVswf/UlRlSmfkdBv8wy9XDuCRe', '16022465', '16022465@vnu.edu.vn', 'Tạ Đức  Mạnh', NULL, NULL, NULL),
(484, '16022466', '$2y$10$lcAFLb7fjpeu8sWZlqTfV.17ZrO4UHDPxnewRn9fYENrXQx4bmiO6', '16022466', '16022466@vnu.edu.vn', 'Nguyễn Văn  Quân', NULL, NULL, NULL),
(485, '16022470', '$2y$10$SlOaUs.ZjQmWQ0bCxCz18OE2XrvODANqnmucMiCBib4nUhgbal1NK', '16022470', '16022470@vnu.edu.vn', 'Nguyễn Tân  Sơn', NULL, NULL, NULL),
(486, '16022481', '$2y$10$KC3M1pFg50wHiJ6v/20yKelVw7f4j4sfroS/3zxrjPSUQ6pAlkcIK', '16022481', '16022481@vnu.edu.vn', 'Nguyễn Thị Thu  Hà', NULL, NULL, NULL),
(487, '16022482', '$2y$10$0wqtTpixUq0AGWbgTZFk3u66HDuuQDI9KXiPVu2LDmpDnf07YsI62', '16022482', '16022482@vnu.edu.vn', 'Đoàn Hồng  Phúc', NULL, NULL, NULL),
(488, '16022483', '$2y$10$gS7mNIsqNh5Hpu3/FJYR6uUfKP9us/AlqjZvoq2fpzMwZ3RzCOH1K', '16022483', '16022483@vnu.edu.vn', 'Nguyễn Bá  Toàn', NULL, NULL, NULL),
(489, '16022497', '$2y$10$FoDlsv/bk6o6u20JDs9zHeA6Hg3KnHHz6kOgSd3ly4FVT4kJaYu8y', '16022497', '16022497@vnu.edu.vn', 'Đỗ Quốc  Trọng', NULL, NULL, NULL),
(490, '16022500', '$2y$10$r5LvFk25gStGT94AUtNXx.rhO/1WeyX7zWaNaVuNIHqFSFqSNsys6', '16022500', '16022500@vnu.edu.vn', 'Nguyễn Đình  Cường', NULL, NULL, NULL),
(491, '16022502', '$2y$10$wrf8ITlN4J4d9oFaDL9CdewymLSrHGSzuf9YbFHX5FI6rFb5kwuZu', '16022502', '16022502@vnu.edu.vn', 'Nguyễn Hồng  Quang', NULL, NULL, NULL);

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
  `student_quantity` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `code`, `name`, `subject_class_code`, `student_quantity`, `teacher_name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ELT2028', 'Chuyên nghiệp trong công nghệ', 'ELT2028 1', NULL, 'TS. Hoàng Văn Xiêm', 2, NULL, NULL),
(2, 'ELT2029', 'Toán trong công nghệ', 'ELT2029 1', NULL, 'PGS.TS. Nguyễn Linh Trung', 2, NULL, NULL),
(3, 'ELT2029', 'Toán trong công nghệ', 'ELT2029 2', NULL, 'TS. Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(4, 'ELT2030', 'Kỹ thuật điện', 'ELT2030 1', NULL, 'PGS.TS. Chử Đức Trình', 2, NULL, NULL),
(5, 'ELT2031', 'Mô hình hóa và mô phỏng', 'ELT2031 1', NULL, 'TS. Hoàng Văn Xiêm', 2, NULL, NULL),
(6, 'ELT2032', 'Linh kiện điện tử', 'ELT2032 1', NULL, 'TS. Nguyễn Thăng Long', 2, NULL, NULL),
(7, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 1', NULL, 'TS. Nguyễn Hồng Thịnh', 2, NULL, NULL),
(8, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 2', NULL, 'TS. Lưu Mạnh Hà', 2, NULL, NULL),
(9, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 3', NULL, 'TS. Đinh Thị Thái Mai', 2, NULL, NULL),
(10, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 4', NULL, 'TS. Nguyễn Hồng Thịnh', 2, NULL, NULL),
(11, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 5', NULL, 'TS. Lê Vũ Hà', 2, NULL, NULL),
(12, 'ELT2035', 'Tín hiệu và hệ thống', 'ELT2035 6', NULL, 'TS. Nguyễn Hồng Thịnh', 2, NULL, NULL),
(13, 'ELT2037', 'Thực tập thiết kế hệ thống', 'ELT2037 1', NULL, 'GS.TS. Bạch Gia Dương', 2, NULL, NULL),
(14, 'ELT2038', 'Đề tài và kỹ thuật hệ thống', ' ELT2038 1', NULL, 'PGS.TS. Nguyễn Quốc Tuấn', 2, NULL, NULL),
(15, 'ELT2040', 'Điện tử tương tự', 'ELT2040 1', NULL, 'PGS.TS. Trần Quang Vinh', 2, NULL, NULL),
(16, 'ELT2041', 'Điện tử số', 'ELT2041 1', NULL, 'GS.TS. Bạch Gia Dương', 2, NULL, NULL),
(17, 'ELT2050', 'Nguyên lý kỹ thuật điện tử', 'ELT2050 1', NULL, 'ThS. Nguyễn Vinh Quang', 2, NULL, NULL),
(18, 'ELT3043', 'Truyền thông', 'ELT3043 1', NULL, 'TS. Đinh Triều Dương', 2, NULL, NULL),
(19, 'ELT3043', 'Truyền thông', 'ELT3043 2', NULL, 'PGS.TS. Trịnh Anh  Vũ', 2, NULL, NULL),
(20, 'ELT3043', 'Truyền thông', 'ELT3043 3', NULL, 'PGS.TS. Trịnh Anh  Vũ', 2, NULL, NULL),
(21, 'ELT3045', 'Nhập môn hệ thống và mạch cao tần', 'ELT3045 1', NULL, 'TS. Trần Cao Quyền', 2, NULL, NULL),
(22, 'ELT3046', 'Mạng truyền thông máy tính 1', 'ELT3046 1', NULL, 'TS. Đinh Thị Thái Mai', 2, NULL, NULL),
(23, 'ELT3046', 'Mạng truyền thông máy tính 1', 'ELT3046 2', NULL, 'TS. Nguyễn Nam Hoàng', 2, NULL, NULL),
(24, 'ELT3047', 'Kiến trúc máy tính', 'ELT3047 1', NULL, 'ThS. Phạm Đình Tuân', 2, NULL, NULL),
(25, 'ELT3047', 'Kiến trúc máy tính', 'ELT3047 2', NULL, 'ThS. Phạm Đình Tuân', 2, NULL, NULL),
(26, 'ELT3048', 'Hệ thống Vi xử lý', 'ELT3048', NULL, 'PGS.TS. Trần Đức Tân & ThS. Đặng Anh Việt', 2, NULL, NULL),
(27, 'ELT3049', 'Hệ thống điều khiển số', 'ELT3049', NULL, 'TS. Phạm Minh Triển', 2, NULL, NULL),
(28, 'ELT3051', 'Kỹ thuật điều khiển', 'ELT3051 1', NULL, 'ThS. Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(29, 'ELT3051', 'Kỹ thuật điều khiển', 'ELT3051 2', NULL, 'ThS. Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(30, 'ELT3056', 'Truyền thông vô tuyến', 'ELT3056 1', NULL, 'TS. Đinh Triều Dương', 2, NULL, NULL),
(31, 'ELT3060', 'Kỹ thuật cao tần', 'ELT3060 1', NULL, 'TS. Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(32, 'ELT3060', 'Kỹ thuật cao tần', 'ELT3060 2', NULL, 'TS. Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(33, 'ELT3062', 'Mạng truyền thông máy tính 2', 'ELT3062', NULL, 'PGS.TS. Nguyễn Quốc Tuấn', 2, NULL, NULL),
(34, 'ELT3062', 'Mạng truyền thông máy tính 2', 'ELT3062 1', NULL, 'PGS.TS. Nguyễn Quốc Tuấn', 2, NULL, NULL),
(35, 'ELT3063', 'Mô hình hóa và mô phỏng mạng', 'ELT3063', NULL, 'TS. Nguyễn Nam Hoàng', 2, NULL, NULL),
(36, 'ELT3067', 'Truyền thông quang', 'ELT3067 1', NULL, 'PGS.TS. Nguyễn Quốc Tuấn', 2, NULL, NULL),
(37, 'ELT3069', 'Thiết kế hệ thống máy tính nhúng ', 'ELT3069', NULL, 'TS. Nguyễn Kiêm Hùng', 2, NULL, NULL),
(38, 'ELT3071', 'Hệ thống nhúng thời gian thực', 'ELT3071', NULL, 'PGS.TS. Trần Xuân Tú', 2, NULL, NULL),
(39, 'ELT3073', 'Thiết kế và mô phỏng hệ thống điều khiển', 'ELT3073', NULL, 'TS. Phạm Minh Triển & ThS. Nguyễn Thị Thanh Vân', 2, NULL, NULL),
(40, 'ELT3079', 'Thiết kế mạch tích hợp số', 'ELT3079 1', NULL, 'GS.TS. Bạch Gia Dương', 2, NULL, NULL),
(41, 'ELT3086', 'Thực tập chuyên đề', 'ELT3086 1', NULL, 'Khoa ĐTVT', 2, NULL, NULL),
(42, 'ELT3086', 'Thực tập chuyên đề', 'ELT3086 2', NULL, 'Khoa ĐTVT', 2, NULL, NULL),
(43, 'ELT3086', 'Thực tập chuyên đề', 'ELT3086 3', NULL, 'Khoa ĐTVT', 2, NULL, NULL),
(44, 'ELT3086', 'Thực tập chuyên đề', 'ELT3086 4', NULL, 'Khoa ĐTVT', 2, NULL, NULL),
(45, 'ELT3089', 'Lý thuyết và kỹ thuật anten', 'ELT3089 1', NULL, 'TS. Trần Thị Thúy Quỳnh', 2, NULL, NULL),
(46, 'ELT3100', 'Hệ thống vi cơ điện tử', 'ELT3100 1', NULL, 'TS. Bùi Thanh Tùng', 2, NULL, NULL),
(47, 'ELT3102', 'Thực tập điện tử tương tự', 'ELT3102 1', NULL, 'ĐTVT', 2, NULL, NULL),
(48, 'EMA2006', 'Matlab và ứng dụng', 'EMA2006 1', NULL, 'PGS.TS. Đặng Thế Ba', 3, NULL, NULL),
(49, 'EMA2006', 'Matlab và ứng dụng', 'EMA2006 2', NULL, 'ThS. Nguyễn Cao Sơn', 3, NULL, NULL),
(50, 'EMA2007', 'Cơ học vật rắn biến dạng', 'EMA2007 1', NULL, 'GS.TSKH. Nguyễn Đình Đức', 3, NULL, NULL),
(51, 'EMA2008', 'Cơ học chất lỏng', 'EMA2008 1', NULL, 'PGS.TS. Trần Thu Hà', 3, NULL, NULL),
(52, 'EMA2011', 'Phương pháp tính trong kỹ thuật', 'EMA2011 1', NULL, 'PGS.TS. Đặng Thế Ba', 3, NULL, NULL),
(53, 'EMA2011', 'Phương pháp tính trong kỹ thuật', 'EMA2011 2', NULL, 'TS. Trần Dương Trí', 3, NULL, NULL),
(54, 'EMA2012', 'Sức bền vật liệu và cơ học kết cấu', 'EMA2012 1', NULL, 'PGS.TS. Đào Như Mai', 3, NULL, NULL),
(55, 'EMA2012', 'Sức bền vật liệu và cơ học kết cấu', 'EMA2012 2', NULL, 'ThS. Nguyễn Cao Sơn', 3, NULL, NULL),
(56, 'EMA2013', 'Lý thuyết điều khiển tự động', 'EMA2013 1', NULL, 'TS. Nguyễn Ngọc Linh', 3, NULL, NULL),
(57, 'EMA2013', 'Lý thuyết điều khiển tự động', 'EMA2013 2', NULL, 'TS. Nguyễn Ngọc Linh', 3, NULL, NULL),
(58, 'EMA2021', 'Linh kiện bán dẫn và vi mạch', 'EMA2021 2', NULL, 'ThS. Phạm Đình Tuân', 3, NULL, NULL),
(59, 'EMA2032', 'Hình hoạ kỹ thuật và CAD', 'EMA2032 1', NULL, 'TS. Trần Thanh Tùng', 3, NULL, NULL),
(60, 'EMA2032', 'Hình hoạ kỹ thuật và CAD', 'EMA2032 2', NULL, 'TS. Trần Thanh Tùng', 3, NULL, NULL),
(61, 'EMA2035', 'Kỹ thuật mô hình - mô phỏng', 'EMA2035 1', NULL, 'PGS.TS. Đinh Văn Mạnh', 3, NULL, NULL),
(62, 'EMA2036', 'Cơ học kỹ thuật 1', 'EMA2036 1', NULL, 'TS. Bùi Hồng Sơn', 3, NULL, NULL),
(63, 'EMA2036', 'Cơ học kỹ thuật 1', 'EMA2036 2', NULL, 'PGS.TS. Đào Như Mai', 3, NULL, NULL),
(64, 'EMA2039', 'Thủy khí động lực ứng dụng', 'EMA2039 1', NULL, 'PGS.TS. Hà Ngọc Hiến', 3, NULL, NULL),
(65, 'EMA2041', 'Phương trình vi phân và đạo hàm riêng', 'EMA2041 1', NULL, 'TS. Trần Dương Trí', 3, NULL, NULL),
(66, 'EMA2041', 'Phương trình vi phân và đạo hàm riêng', 'EMA2041 2', NULL, 'TS. Trần Thanh Tùng', 3, NULL, NULL),
(67, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 1', NULL, 'TS. Đặng Cao Cường', 3, NULL, NULL),
(68, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 2', NULL, 'TS. Hoàng Thị Điệp', 3, NULL, NULL),
(69, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 3', NULL, 'TS. Hoàng Thị Điệp', 3, NULL, NULL),
(70, 'EMA2050', 'Xác suất thống kê ứng dụng', 'EMA2050 4', NULL, 'TS. Đặng Cao Cường', 3, NULL, NULL),
(71, 'EMA3004', 'Công nghệ CAD/CAM/CNC', 'EMA3004 1', NULL, 'TS. Trần Anh Quân', 3, NULL, NULL),
(72, 'EMA3005', 'Công nghệ chế tạo máy', 'EMA3005 1', NULL, 'TS. Trần Anh Quân', 3, NULL, NULL),
(73, 'EMA3006', 'Công nghệ gia công phi truyền thống và tạo mẫu nhanh', 'EMA3006 1', NULL, 'TS. Trần Ngọc Hưng', 3, NULL, NULL),
(74, 'EMA3012', 'Cơ học chất lỏng thực nghiệm', 'EMA3012 1', NULL, 'PGS.TS. Bùi Đình Trí', 3, NULL, NULL),
(75, 'EMA3028', 'Kỹ thuật xung -số - tương tự và kỹ thuật đo và điều khiển', 'EMA3028 1', NULL, 'ThS. Phạm Đình Tuân', 3, NULL, NULL),
(76, 'EMA3035', 'Máy công cụ - CNC', 'EMA3035 1', NULL, 'TS. Trần Thanh Tùng', 3, NULL, NULL),
(77, 'EMA3038', 'Nhập môn công nghệ vũ trụ', 'EMA3038 1', NULL, 'PGS.TS. Phạm Anh Tuấn & ThS. Nguyễn Hữu Điệp', 3, NULL, NULL),
(78, 'EMA3062', 'Điều khiển PLC', 'EMA3062 1', NULL, 'PGS.TS. Phạm Mạnh Thắng', 3, NULL, NULL),
(79, 'EMA3065', 'Điện tử công suất', 'EMA3065 1', NULL, 'ThS. Hoàng Văn Mạnh', 3, NULL, NULL),
(80, 'EMA3071', 'Ứng dụng máy tính trong đo lường và điều khiển', 'EMA3071 1', NULL, 'ThS. Hoàng Văn Mạnh', 3, NULL, NULL),
(81, 'EMA3083', 'Hệ thống cơ điện tử', 'EMA3083 1', NULL, 'TS. Nguyễn Ngọc Linh', 3, NULL, NULL),
(82, 'EMA3084', 'Vi xử lý và vi điều khiển', 'EMA3084 1', NULL, 'PGS.TS. Phạm Mạnh Thắng', 3, NULL, NULL),
(83, 'EMA3085', 'Robot công nghiệp', 'EMA3085 1', NULL, 'ThS. Đặng Anh Việt', 3, NULL, NULL),
(84, 'EMA3091', 'Động lực học sông và đồ án', 'EMA3091 1', NULL, 'PGS.TS. Trần Thu Hà', 3, NULL, NULL),
(85, 'EMA3092', 'Động lực học - môi trường không khí và đồ án', 'EMA3092 1', NULL, 'GS.TSKH. Dương Ngọc Hải & PGS.TS. Đặng Thế Ba', 3, NULL, NULL),
(86, 'EMA3093', 'Máy - thiết bị thủy khí và đồ án', 'EMA3093 1', NULL, 'TS. Nguyễn Hoàng Quân', 3, NULL, NULL),
(87, 'EMA3094', 'Thủy động lực học - môi trường biển', 'EMA3094 1', NULL, 'PGS.TS. Đỗ Ngọc Quỳnh & PGS.TS. Đinh Văn Mạnh', 3, NULL, NULL),
(88, 'EMA3095', 'Đồ án thủy động lực học - môi trường biển', 'EMA3095 1', NULL, 'PGS.TS. Đỗ Ngọc Quỳnh & PGS.TS. Đinh Văn Mạnh', 3, NULL, NULL),
(89, 'EMA3096', 'Công trình biển ngoài khơi, độ tin cậy và đồ án', 'EMA3096 1', NULL, 'PGS.TS. Đào Như Mai & PGS.TS. Nguyễn Việt Khoa', 3, NULL, NULL),
(90, 'EMA3097', 'Công trình biển ven bờ (đê, cảng, đường ống, bể chứa) và đồ án', 'EMA3097 1', NULL, 'TS. Nguyễn Trường Giang', 3, NULL, NULL),
(91, 'EMA3101', 'Kết cấu thiết bị bay và đồ án', 'EMA3101 1', NULL, 'ThS. Bùi Nam Dương', 3, NULL, NULL),
(92, 'EMA3102', 'Cảm biến, điều khiển vệ tinh và đồ án', 'EMA3102 1', NULL, 'TS. Lê Xuân Huy & ThS. Trịnh Hoàng Quân', 3, NULL, NULL),
(93, 'EMA3103', 'Thiết kế, tích hợp vệ tinh nhỏ và đồ án', 'EMA3103 1', NULL, 'PGS.TS. Phạm Anh Tuấn & ThS. Phan Hoài Thư', 3, NULL, NULL),
(94, 'EMA3117', 'Cơ học vật liệu Composite', 'EMA3117 1', NULL, 'ThS. Vũ Thị Thùy Anh', 3, NULL, NULL),
(95, 'EMA3118', 'Lý thuyết tấm và vỏ', 'EMA3118 1', NULL, 'NCS. Phạm Hồng Công', 3, NULL, NULL),
(96, 'EMA3119', 'Các phương pháp số trong cơ học vật liệu và kết cấu', 'EMA3119 1', NULL, 'TS. Đỗ Văn Thơm', 3, NULL, NULL),
(97, 'EMA3120', 'Động lực học trong công trình', 'EMA3120 1', NULL, 'NCS. Trần Quốc Quân', 3, NULL, NULL),
(98, 'EMA3121', 'Lý thuyết dẻo', 'EMA3121 1', NULL, 'GS.TSKH. Nguyễn Đình Đức & NCS. Trần Quốc Quân', 3, NULL, NULL),
(99, 'EMA4050', 'Đồ án tốt nghiệp/tương đương', 'EMA4050 1', NULL, 'CHKT', 3, NULL, NULL),
(100, 'EPN1095', 'Vật lý đại cương 1', 'EPN1095 8', NULL, 'PGS.TS. Hoàng Nam Nhật', 3, NULL, NULL),
(101, 'EPN2002', 'Kỹ thuật hóa học và ứng dụng', 'EPN2002 1', NULL, 'PGS.TS. Nguyễn Phương Hoài Nam', 3, NULL, NULL),
(102, 'EPN2004', 'Mô hình hóa và mô phỏng trong', 'EPN2004 1', NULL, 'TS. Đặng Đình Long', 3, NULL, NULL),
(103, 'EPN2014', 'Vật lý bán dẫn và linh kiện', 'EPN2014 1', NULL, 'GS.TS. Nguyễn Năng Định', 3, NULL, NULL),
(104, 'EPN2023', 'Các phương pháp toán lý', 'EPN2023 1', NULL, 'PGS.TS. Hoàng Nam Nhật', 3, NULL, NULL),
(105, 'EPN2025', 'Kỹ thuật màng mỏng và công', 'EPN2025 1', NULL, 'PGS.TS. Phạm Đức Thắng', 3, NULL, NULL),
(106, 'EPN2029', 'Khoa học vật liệu đại cương', 'EPN2029 1', NULL, 'GS.TS. Nguyễn Năng Định', 3, NULL, NULL),
(107, 'EPN2050', 'Vật lý phân tử', 'EPN2050 1', NULL, 'GS.TS. Nguyễn Năng Định', 3, NULL, NULL),
(108, 'EPN3001', 'Chẩn đoán phân tử', 'EPN3001', NULL, 'TS. Hà Thị Quyến', 3, NULL, NULL),
(109, 'EPN3002', 'Công nghệ ADN tái tổ hợp ', 'EPN3002', NULL, 'TS. Hà Thị Quyến', 3, NULL, NULL),
(110, 'EPN3003', 'Công nghệ nano sinh học', 'EPN3003', NULL, 'TS. Trần Đăng Khoa', 3, NULL, NULL),
(111, 'EPN3005', 'Các chip sinh học', 'EPN3005', NULL, 'TS. Lê Thị Hiên', 3, NULL, NULL),
(112, 'EPN3006', 'Các hệ vi cơ điện tử và ứng dụng', 'EPN3006 1', NULL, 'TS. Bùi Đình Tú', 3, NULL, NULL),
(113, 'EPN3009', 'Các vật liệu polymer chức năng cấu trúc nano', 'EPN3009 1', NULL, 'PGS.TS. Nguyễn Phương Hoài Nam', 3, NULL, NULL),
(114, 'EPN3010', 'Các vật liệu từ tính cấu trúc nano và kỹ thuật spin điện tử', 'EPN3010 1', NULL, 'PGS.TS. Đỗ Thị Hương Giang', 3, NULL, NULL),
(115, 'EPN3017', 'Quang phổ chất rắn', 'EPN3017 1', NULL, 'PGS.TS. Trần Hồng Nhung & TS. Nguyễn Thị Yến Mai', 3, NULL, NULL),
(116, 'EPN3020', 'Quang tử nano', 'EPN3020 1', NULL, 'PGS.TS. Trần Hồng Nhung & TS. Nghiêm Thị Hà Liên', 3, NULL, NULL),
(117, 'EPN3021', 'Sinh học phân tử', 'EPN3021', NULL, 'TS. Hà Thị Quyến', 3, NULL, NULL),
(118, 'EPN3022', 'Sinh học đại cương', 'EPN3022 1', NULL, 'GS.TS. Lê Trần Bình', 3, NULL, NULL),
(119, 'EPN3024', 'Thiết bị quang tử', 'EPN3024 1', NULL, 'PGS.TS. Nguyễn Kiên Cường & PGS.TS. Đỗ Quang Hòa', 3, NULL, NULL),
(120, 'EPN3027', 'Thực hành các phương pháp thực nghiệm nano sinh học', 'EPN3027', NULL, 'TS. Lê Thị Hiên & TS. Hà Thị Quyến', 3, NULL, NULL),
(121, 'EPN3029', 'Thực tập chuyên đề Công nghệ quang tử', 'EPN3029 1', NULL, 'PGS.TS. Nguyễn Kiên Cường & TS. Nghiêm Thị Hà Liên', 3, NULL, NULL),
(122, 'EPN3030', 'Thực tập chuyên đề Công nghệ nano', 'EPN3030 1', NULL, 'TS. Phạm Thị Thu Trang & TS. Đặng Đình Long & ThS. Lê Việt Cường & ThS. Nguyễn Thị Minh Hồng', 3, NULL, NULL),
(123, 'EPN3035', 'Vật liệu bán dẫn cấu trúc nano', 'EPN3035 1', NULL, 'GS.TS. Nguyễn Năng Định & TS. Phạm Thị Thu Trang', 3, NULL, NULL),
(124, 'EPN3037', 'Vật liệu nano sinh học', 'EPN3037', NULL, 'TS. Lê Thị Hiên', 3, NULL, NULL),
(125, 'EPN3038', 'Vật liệu quang tử hữu cơ nano', 'EPN3038 1', NULL, 'PGS.TS. Nguyễn Kiên Cường', 3, NULL, NULL),
(126, 'EPN3039', 'Vật lý và công nghệ laser', 'EPN3039 1', NULL, 'PGS.TS. Phạm Văn Hội & TS. Nguyễn Thị Yến Mai', 3, NULL, NULL),
(127, 'EPN3052', 'Vật liệu gốm kỹ thuật', 'EPN3052 1', NULL, 'PGS.TS. Phạm Đức Thắng', 3, NULL, NULL),
(128, 'EPN3053', 'Kỹ thuật bảo vệ vật liệu và ứng dụng', 'EPN3053 1', NULL, 'TS. Đinh Văn Châu', 3, NULL, NULL),
(129, 'INT1003', 'Tin học cơ sở 1', 'INT1003 10', NULL, 'ThS. Đào Kiến Quốc', 1, NULL, NULL),
(130, 'INT1003', 'Tin học cơ sở 1', 'INT1003 11', NULL, 'ThS. Nguyễn Việt Tân', 1, NULL, NULL),
(131, 'INT1003', 'Tin học cơ sở 1', 'INT1003 12', NULL, 'ThS. Đào Kiến Quốc', 1, NULL, NULL),
(132, 'INT1003', 'Tin học cơ sở 1', 'INT1003 13', NULL, 'TS. Nguyễn Thị Hợi', 1, NULL, NULL),
(133, 'INT1003', 'Tin học cơ sở 1', 'INT1003 14', NULL, 'TS. Nguyễn Văn Nam', 1, NULL, NULL),
(134, 'INT1003', 'Tin học cơ sở 1', 'INT1003 15', NULL, 'TS. Lê Thị Hợi', 1, NULL, NULL),
(135, 'INT1003', 'Tin học cơ sở 1', 'INT1003 2', NULL, 'TS. Nguyễn Văn Thắng', 1, NULL, NULL),
(136, 'INT1003', 'Tin học cơ sở 1', 'INT1003 5', NULL, 'ThS. Đào Kiến Quốc', 1, NULL, NULL),
(137, 'INT1003', 'Tin học cơ sở 1', 'INT1003 6', NULL, 'ThS. Nguyễn Việt Tân', 1, NULL, NULL),
(138, 'INT1003', 'Tin học cơ sở 1', 'INT1003 7', NULL, 'ThS. Lê Hồng Hải', 1, NULL, NULL),
(139, 'INT1003', 'Tin học cơ sở 1', 'INT1003 8', NULL, 'TS. Nguyễn Thị Nhật Thanh', 1, NULL, NULL),
(140, 'INT1003', 'Tin học cơ sở 1', 'INT1003 9', NULL, 'ThS. Đào Kiến Quốc', 1, NULL, NULL),
(141, 'INT1003 ', 'Tin học cơ sở 1', 'INT1003 1', NULL, 'TS. Nguyễn Văn Thắng', 1, NULL, NULL),
(142, 'INT1003 ', 'Tin học cơ sở 1', 'INT1003 3', NULL, 'TS. Nguyễn Việt Anh', 1, NULL, NULL),
(143, 'INT1003 ', 'Tin học cơ sở 1', 'INT1003 4', NULL, 'TS. Nguyễn Văn Thắng', 1, NULL, NULL),
(144, 'INT1006', 'Tin học cơ sở 4', 'INT1006 1', NULL, 'ThS. Hồ Đắc Phương', 1, NULL, NULL),
(145, 'INT1006', 'Tin học cơ sở 4', 'INT1006 2', NULL, 'TS. Bùi Ngọc Thăng', 1, NULL, NULL),
(146, 'INT1006', 'Tin học cơ sở 4', 'INT1006 3', NULL, 'TS. Vũ Thị Hồng Nhạn', 1, NULL, NULL),
(147, 'INT1006', 'Tin học cơ sở 4', 'INT1006 4', NULL, 'ThS. Hồ Đắc Phương', 1, NULL, NULL),
(148, 'INT1006', 'Tin học cơ sở 4', 'INT1006 5', NULL, 'TS. Ngô Thị Duyên', 1, NULL, NULL),
(149, 'INT1006', 'Tin học cơ sở 4', 'INT1006 6', NULL, 'TS. Trần Quốc Long', 1, NULL, NULL),
(150, 'INT1006', 'Tin học cơ sở 4', 'INT1006 7', NULL, 'TS. Lê Nguyên Khôi', 1, NULL, NULL),
(151, 'INT1006', 'Tin học cơ sở 4', 'INT1006 8', NULL, 'TS. Nguyễn Ngọc An', 1, NULL, NULL),
(152, 'INT1006', 'Tin học cơ sở 4', 'INT1006 9', NULL, 'TS. Lê Nguyên Khôi', 1, NULL, NULL),
(153, 'INT1050', 'Toán học rời rạc', 'INT1050 1', NULL, 'TS. Đặng Thanh Hải', 1, NULL, NULL),
(154, 'INT1050', 'Toán học rời rạc', 'INT1050 2', NULL, 'TS. Đỗ Đức Đông', 1, NULL, NULL),
(155, 'INT1050', 'Toán học rời rạc', 'INT1050 3', NULL, 'TS. Hà Minh Hoàng', 1, NULL, NULL),
(156, 'INT2020', 'Phân tích thiết kế các HTTT', 'INT2020 1', NULL, 'ThS. Dư Phương Hạnh', 1, NULL, NULL),
(157, 'INT2039', 'Thực hành Phân tích thiết kế các HTTT', 'INT2039', NULL, 'ThS. Dư Phương Hạnh', 1, NULL, NULL),
(158, 'INT2040', 'Thực hành Quản lý Dự án HTTT', 'INT2040', NULL, 'TS. Nguyễn Thị Hậu', 1, NULL, NULL),
(159, 'INT2044', 'Lý thuyết thông tin', 'INT2044 1', NULL, 'PGS.TS. Nguyễn Phương Thái', 1, NULL, NULL),
(160, 'INT2044', 'Lý thuyết thông tin', 'INT2044 2', NULL, 'PGS.TS. Nguyễn Phương Thái', 1, NULL, NULL),
(161, 'INT2203', 'Cấu trúc dữ liệu và giải thuật', 'INT2203 1', NULL, 'PGS.TS. Phạm Bảo Sơn', 1, NULL, NULL),
(162, 'INT2203', 'Cấu trúc dữ liệu và giải thuật', 'INT2203 2', NULL, 'TS. Lê Quang Hiếu', 1, NULL, NULL),
(163, 'INT2203', 'Cấu trúc dữ liệu và giải thuật', 'INT2203 3', NULL, 'TS. Lê Nguyên Khôi', 1, NULL, NULL),
(164, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 1', NULL, 'TS. Võ Đình Hiếu', 1, NULL, NULL),
(165, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 2', NULL, 'TS. Tô Văn Khánh', 1, NULL, NULL),
(166, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 3', NULL, 'TS. Tô Văn Khánh', 1, NULL, NULL),
(167, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 4', NULL, 'TS. Vũ Diệu Hương', 1, NULL, NULL),
(168, 'INT2204', 'Lập trình hướng đối tượng ', 'INT2204 5', NULL, 'TS. Vũ Diệu Hương', 1, NULL, NULL),
(169, 'INT2204', 'Lập trình hướng đối tượng', 'INT2204 6', NULL, ' TS. Võ Đình Hiếu', 1, NULL, NULL),
(170, 'INT2205', 'Kiến trúc máy tính', 'INT2205 1', NULL, 'PGS.TS. Nguyễn Ngọc Hóa', 1, NULL, NULL),
(171, 'INT2205', 'Kiến trúc máy tính', 'INT2205 2', NULL, 'PGS.TS. Nguyễn Trí Thành', 1, NULL, NULL),
(172, 'INT2205', 'Kiến trúc máy tính', 'INT2205 3', NULL, 'PGS.TS. Nguyễn Đình Việt', 1, NULL, NULL),
(173, 'INT2205', 'Kiến trúc máy tính', 'INT2205 4', NULL, 'TS. Trần Trọng Hiếu', 1, NULL, NULL),
(174, 'INT2205', 'Kiến trúc máy tính', 'INT2205 5', NULL, 'PGS.TS. Nguyễn Trí Thành', 1, NULL, NULL),
(175, 'INT2205', 'Kiến trúc máy tính', 'INT2205 6', NULL, ' TS. Trần Trọng Hiếu', 1, NULL, NULL),
(176, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 1', NULL, 'ThS. Vũ Bá Duy', 1, NULL, NULL),
(177, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 2', NULL, 'ThS. Vũ Bá Duy', 1, NULL, NULL),
(178, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 3', NULL, 'ThS. Vũ Bá Duy', 1, NULL, NULL),
(179, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 4', NULL, 'PGS.TS. Nguyễn Hải Châu', 1, NULL, NULL),
(180, 'INT2207', 'Cơ sở dữ liệu', 'INT2207 5', NULL, 'TS. Nguyễn Thị Hậu', 1, NULL, NULL),
(181, 'INT3011', 'Các vấn đề hiện đại trong KHMT', 'INT3011 1', NULL, 'PGS.TS. Hoàng Xuân Huấn', 1, NULL, NULL),
(182, 'INT3058', 'Thực tập chuyên ngành', 'INT3058', NULL, 'CNTT', 1, NULL, NULL),
(183, 'INT3093', 'An toàn và an ninh mạng', 'INT3093 2', NULL, 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(184, 'INT3110', 'Phân tích và thiết kế hướng đối tượng', 'INT3110 1', NULL, 'PGS. TS. Trương Ninh Thuận', 1, NULL, NULL),
(185, 'INT3111', 'Quản lý dự án phần mềm', 'INT3111 1', NULL, 'PGS.TS. Phạm Ngọc Hùng', 1, NULL, NULL),
(186, 'INT3115', 'Thiết kế giao diện người dùng', 'INT3115 1', NULL, 'TS. Ngô Thị Duyên', 1, NULL, NULL),
(187, 'INT3117', 'Kiểm thử và đảm bảo chất lượng phần mềm', 'INT3117 1', NULL, 'PGS.TS. Trương Anh Hoàng', 1, NULL, NULL),
(188, 'INT3207', 'Kho dữ liệu', 'INT3207 1', NULL, 'TS. Bùi Quang Hưng', 1, NULL, NULL),
(189, 'INT3209', 'Khai phá dữ liệu', 'INT3209 1', NULL, 'PGS.TS. Phan Xuân Hiếu', 1, NULL, NULL),
(190, 'INT3209', 'Khai phá dữ liệu', 'INT3209 2', NULL, 'PGS.TS. Hà Quang Thuỵ', 1, NULL, NULL),
(191, 'INT3213', 'Nhập môn an toàn thông tin', 'INT3213 1', NULL, 'TS. Lê Phê Đô', 1, NULL, NULL),
(192, 'INT3216', 'Phân tích, đánh giá hiệu năng hệ thống máy tính', 'INT3216 1', NULL, 'PGS.TS. Nguyễn Hải Châu', 1, NULL, NULL),
(193, 'INT3220', 'Các chủ đề hiện đại của HTTT', 'INT3220 1', NULL, 'PGS.TS. Nguyễn Hải Châu', 1, NULL, NULL),
(194, 'INT3301', 'Thực hành hệ điều hành mạng', 'INT3301 1', NULL, 'ThS. Ngô Lê Minh', 1, NULL, NULL),
(195, 'INT3303', 'Mạng không dây', 'INT3303 1', NULL, 'ThS. Hồ Đắc Phương', 1, NULL, NULL),
(196, 'INT3304', 'Lập trình mạng', 'INT3304 1', NULL, 'TS. Nguyễn Hoài Sơn', 1, NULL, NULL),
(197, 'INT3305', 'Truyền thông đa phương tiện', 'INT3305 1', NULL, 'PGS.TS. Bùi Thế Duy', 1, NULL, NULL),
(198, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 1', NULL, 'ThS. Nguyễn Nam Hải', 1, NULL, NULL),
(199, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 2', NULL, 'TS. Lê Đình Thanh', 1, NULL, NULL),
(200, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 3', NULL, 'TS. Nguyễn Việt Anh', 1, NULL, NULL),
(201, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 4', NULL, 'TS. Lê Đình Thanh', 1, NULL, NULL),
(202, 'INT3306', 'Phát triển ứng dụng Web ', 'INT3306 5', NULL, 'TS. Hoàng Xuân Tùng', 1, NULL, NULL),
(203, 'INT3307', 'An toàn và an ninh mạng', 'INT3307 1', NULL, 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(204, 'INT3307', 'An toàn và an ninh Mạng', 'INT3307 2', NULL, 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(205, 'INT3308', 'Đánh giá hiệu năng mạng', 'INT3308 1', NULL, 'TS. Nguyễn Văn Nam', 1, NULL, NULL),
(206, 'INT3309', 'Phân tích và thiết kế mạng máy tính', 'INT3309 1', NULL, 'TS. Nguyễn Hoài Sơn', 1, NULL, NULL),
(207, 'INT3310', 'Quản trị Mạng', 'INT3310 1', NULL, 'TS. Dương Lê Minh', 1, NULL, NULL),
(208, 'INT3310', 'Quản trị mạng', 'INT3310 2', NULL, 'ThS. Đỗ Hoàng Kiên', 1, NULL, NULL),
(209, 'INT3314', 'Thực tập chuyên ngành Truyền thông và Mạng máy tính', 'INT3314 1', NULL, 'CNTT', 1, NULL, NULL),
(210, 'INT3317', 'Thực hành an ninh mạng', ' INT3317 1', NULL, 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(211, 'INT3317', 'Thực hành an ninh mạng', ' INT3317 1', NULL, 'TS. Nguyễn Đại Thọ', 1, NULL, NULL),
(212, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 1', NULL, 'GS. TS. Nguyễn Thanh Thủy', 1, NULL, NULL),
(213, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 2', NULL, 'TS. Nguyễn Văn Vinh', 1, NULL, NULL),
(214, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 3', NULL, 'TS. Nguyễn Văn Vinh', 1, NULL, NULL),
(215, 'INT3401', 'Trí tuệ nhân tạo', 'INT3401 4', NULL, 'GS. TS. Nguyễn Thanh Thủy', 1, NULL, NULL),
(216, 'INT3403', 'Đồ họa máy tính', 'INT3403 1', NULL, 'TS. Ma Thị Châu', 1, NULL, NULL),
(217, 'INT3404', 'Xử lý ảnh', 'INT3404 1', NULL, 'PGS.TS. Lê Thanh Hà', 1, NULL, NULL),
(218, 'INT3405', 'Học máy', 'INT3405 1', NULL, 'PGS.TS. Hoàng Xuân Huấn', 1, NULL, NULL),
(219, 'INT3406', 'Xử lý ngôn ngữ tự nhiên', 'INT3406 1', NULL, 'TS. Nguyễn Văn Vinh', 1, NULL, NULL),
(220, 'INT3406', 'Xử lý ngôn ngữ tự nhiên', 'INT3406 2', NULL, 'PGS.TS. Nguyễn Phương Thái', 1, NULL, NULL),
(221, 'INT3409', 'Robot', 'INT3409 1', NULL, 'TS. Nguyễn Đỗ Văn', 1, NULL, NULL),
(222, 'INT3412', 'Thị giác máy tính', 'INT3412 1', NULL, 'PGS.TS. Lê Thanh Hà', 1, NULL, NULL),
(223, 'INT3501', 'Khoa học dịch vụ', 'INT3501 1', NULL, 'PGS.TS. Hà Quang Thuỵ', 1, NULL, NULL),
(224, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 1', NULL, 'PGS.TS. Trương Anh Hoàng', 1, NULL, NULL),
(225, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 2', NULL, 'TS. Đặng Đức Hạnh', 1, NULL, NULL),
(226, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 3', NULL, 'PGS.TS. Trương Ninh Thuận', 1, NULL, NULL),
(227, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 4', NULL, 'GS. TS. Nguyễn Thanh Thủy', 1, NULL, NULL),
(228, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 5', NULL, 'PGS.TS. Lê Sỹ Vinh', 1, NULL, NULL),
(229, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 6', NULL, 'TS. Nguyễn Hoài Sơn', 1, NULL, NULL),
(230, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 7', NULL, 'TS. Trần Trúc Mai', 1, NULL, NULL),
(231, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 8', NULL, 'PGS.TS. Nguyễn Ngọc Hóa', 1, NULL, NULL),
(232, 'INT3507', 'Các vấn đề hiện đại CNTT', 'INT3507 9', NULL, 'PGS.TS. Nguyễn Trí Thành', 1, NULL, NULL),
(233, 'INT3508', 'Thực tập chuyên ngành', 'INT3508 1', NULL, ' Khoa CNTT', 1, NULL, NULL),
(234, 'INT3510', 'Chuẩn kỹ năng của CNTT', 'INT3510 1', NULL, ' Khoa CNTT', 1, NULL, NULL),
(235, 'INT3512', 'Lập trình thi đấu', 'INT3512 1', NULL, 'TS. Lê Huy Bình', 1, NULL, NULL),
(236, 'INT4051', 'Niên luận', 'INT4051 1', NULL, ' Khoa CNTT', 1, NULL, NULL),
(237, 'INT4054', 'Đồ án tốt nghiệp', 'INT4054 1', NULL, ' Khoa CNTT', 1, NULL, NULL),
(238, 'MAT1041', 'Giải tích 1', 'MAT1041 1', NULL, 'ThS. Nguyễn Văn Quang', 1, NULL, NULL),
(239, 'MAT1041', 'Giải tích 1', 'MAT1041 15', NULL, 'TS. Trần Thanh Hải', 1, NULL, NULL),
(240, 'MAT1041', 'Giải tích 1', 'MAT1041 2', NULL, 'PGS.TS. Trần Thu Hà', 1, NULL, NULL),
(241, 'MAT1041', 'Giải tích 1', 'MAT1041 3', NULL, 'ThS. Nguyễn Văn Quang', 1, NULL, NULL),
(242, 'MAT1041', 'Giải tích 1', 'MAT1041 4', NULL, 'PGS.TS. Trần Thu Hà', 1, NULL, NULL),
(243, 'MAT1041', 'Giải tích 1', 'MAT1041 6', NULL, 'PGS.TS. Nguyễn Việt Khoa', 1, NULL, NULL),
(244, 'MAT1041', 'Giải tích 1', 'MAT1041 7', NULL, 'ThS. Nguyễn Văn Quang', 1, NULL, NULL),
(245, 'MAT1041', 'Giải tích 1', 'MAT1041 8', NULL, 'TS. Lã Đức Việt', 1, NULL, NULL),
(246, 'MAT1093', 'Đại số', 'MAT1093 1', NULL, 'TS. Nguyễn Duy Tân', 1, NULL, NULL),
(247, 'MAT1093', 'Đại số', 'MAT1093 10', NULL, 'Trần Nam Trung', 1, NULL, NULL),
(248, 'MAT1093', 'Đại số', 'MAT1093 11', NULL, 'Hà Minh Lam', 1, NULL, NULL),
(249, 'MAT1093', 'Đại số', 'MAT1093 12', NULL, 'TS. Nguyễn Bích Vân', 1, NULL, NULL),
(250, 'MAT1093', 'Đại số', 'MAT1093 13', NULL, 'Trần Nam Trung', 1, NULL, NULL),
(251, 'MAT1093', 'Đại số', 'MAT1093 14', NULL, 'Hà Minh Lam', 1, NULL, NULL),
(252, 'MAT1093', 'Đại số', 'MAT1093 15', NULL, 'Trần Giang Nam', 1, NULL, NULL),
(253, 'MAT1093', 'Đại số', 'MAT1093 2', NULL, 'TS. Nguyễn Anh Tú', 1, NULL, NULL),
(254, 'MAT1093', 'Đại số', 'MAT1093 3', NULL, 'Đoàn Trung Cường', 1, NULL, NULL),
(255, 'MAT1093', 'Đại số', 'MAT1093 4', NULL, 'Đào Quang Khải', 1, NULL, NULL),
(256, 'MAT1093', 'Đại số', 'MAT1093 6', NULL, 'Nguyễn Hoàng Thạch', 1, NULL, NULL),
(257, 'MAT1093', 'Đại số', 'MAT1093 7', NULL, 'Nguyễn Tất Thắng', 1, NULL, NULL),
(258, 'MAT1093', 'Đại số', 'MAT1093 9', NULL, 'Nguyễn Tất Thắng', 1, NULL, NULL),
(259, 'MAT1099', 'Phương pháp tính', 'MAT1099', NULL, 'TS. Lê Phê Đô', 1, NULL, NULL),
(260, 'MAT1099', 'Phương pháp tính', 'MAT1099 1', NULL, 'ThS. Nguyễn Cảnh Hoàng', 1, NULL, NULL),
(261, 'MAT1099', 'Phương pháp tính', 'MAT1099 2', NULL, 'TS. Lê Phê Đô', 1, NULL, NULL),
(262, 'MAT1100', 'Tối ưu hóa', 'MAT1100 1', NULL, 'TS. Đỗ Đức Đông', 1, NULL, NULL),
(263, 'MAT1100', 'Tối ưu hóa', 'MAT1100 2', NULL, 'PGS.TS. Hoàng Xuân Huấn', 1, NULL, NULL),
(264, 'MAT1101', 'Xác suất thống kê ', 'MAT1101 1', NULL, 'TS. Đặng Thanh Hải', 1, NULL, NULL),
(265, 'MAT1101', 'Xác suất thống kê ', 'MAT1101 2', NULL, 'TS. Đặng Cao Cường', 1, NULL, NULL),
(266, 'MAT1101', 'Xác suất thống kê ', 'MAT1101 3', NULL, 'TS. Lê Phê Đô', 1, NULL, NULL),
(267, 'MNS1052', 'Khoa học quản lý đại cương', 'MNS1052 1', NULL, 'ThS. Tạ Thị Bích Ngọc', 1, NULL, NULL),
(268, 'MNS1052', 'Khoa học quản lý đại cương', 'MNS1052 2', NULL, 'ThS. Tạ Thị Bích Ngọc', 1, NULL, NULL),
(269, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 1', NULL, 'PGS.TS. Nguyễn Phương Hoài Nam', 1, NULL, NULL),
(270, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 10', NULL, 'TS. Phạm Thị Thu Trang', 1, NULL, NULL),
(271, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 11', NULL, 'TS. Bùi Đình Tú', 1, NULL, NULL),
(272, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 12', NULL, 'PGS.TS. Đỗ Thị Hương Giang', 1, NULL, NULL),
(273, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 13', NULL, 'PGS.TS. Nguyễn Thế Hiện', 1, NULL, NULL),
(274, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 14', NULL, 'TS. Đinh Văn Châu', 1, NULL, NULL),
(275, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 2', NULL, 'PGS.TS. Nguyễn Kiên Cường', 1, NULL, NULL),
(276, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 3', NULL, 'PGS.TS. Nguyễn Kiên Cường', 1, NULL, NULL),
(277, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 4', NULL, 'TS. Bùi Đình Tú', 1, NULL, NULL),
(278, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 5', NULL, 'TS. Bùi Nguyên Quốc Trình', 1, NULL, NULL),
(279, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 6', NULL, 'TS. Đặng Đình Long', 1, NULL, NULL),
(280, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 7', NULL, 'PGS.TS. Hoàng Nam Nhật', 1, NULL, NULL),
(281, 'PHY1100', 'Cơ – Nhiệt ', 'PHY1100 9', NULL, 'TS. Trần Mậu Danh', 1, NULL, NULL),
(282, 'PHY1104', 'Thực hành Vật lý đại cương', 'PHY1104 1', NULL, 'ĐHKHTN', 1, NULL, NULL),
(283, 'PHY1104', 'Thực hành Vật lý đại cương', 'PHY1104 2', NULL, 'ĐHKHTN', 1, NULL, NULL),
(284, 'PHY1104', 'Thực hành Vật lý đại cương', 'PHY1104 3', NULL, 'ĐHKHTN', 1, NULL, NULL),
(285, 'PHY1104', 'Thực hành Vật lý đại cương', 'PHY1104 4', NULL, 'ĐHKHTN', 1, NULL, NULL),
(286, 'PHY1105', 'Vật lý hiện đại', 'PHY1105 1', NULL, 'TS. Đặng Đình Long', 1, NULL, NULL),
(287, 'PHY1105', 'Vật lý hiện đại', 'PHY1105 2', NULL, 'TS. Đặng Đình Long', 1, NULL, NULL);

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
(1, 'admin', 'admin@admin.com', '$2y$10$OIu1yLR.g06Fljgjy./cEO9UjYxe4H2zY1tkdnQsHnWENZyr54ii.', 'l2PBOFQkz4zmdaSM5zV7udQ9RBG3JZF6KePhZEhwPwt9XHgJTtruBDrTuE9N', '2017-10-05 17:50:18', NULL),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
