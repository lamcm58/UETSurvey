-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2017 at 02:23 PM
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
(1, '2017-10-11 23:03:25', '127.0.0.1', 'User kunze.abbie with email hirthe.colby@goyette.com signed in successful to the system'),
(2, '2017-10-11 23:03:44', '127.0.0.1', 'Admin lamcm with email lamcm@gmail.com signed in successful to the system'),
(3, '2017-10-11 23:06:51', '127.0.0.1', 'User kunze.abbie with email hirthe.colby@goyette.com signed out successfully.'),
(4, '2017-10-11 23:07:02', '127.0.0.1', 'Admin lamcm with email lamcm@gmail.com signed out successfully.'),
(5, '2017-10-11 23:07:13', '127.0.0.1', 'User kunze.abbie with email hirthe.colby@goyette.com signed in successfully into the system.'),
(6, '2017-10-11 23:07:30', '127.0.0.1', 'Admin admin with email admin@admin.com signed in successfully into the system.'),
(7, '2017-10-12 20:19:49', '127.0.0.1', 'Admin admin with email admin@admin.com signed in successfully into the system.'),
(8, '2017-10-12 20:24:46', '127.0.0.1', 'Admin admin with email admin@admin.com signed out successfully.'),
(9, '2017-10-12 20:24:56', '127.0.0.1', 'Admin admin with email admin@admin.com signed in successfully into the system.'),
(10, '2017-10-13 00:49:10', '127.0.0.1', 'Admin admin with email admin@admin.com signed in successfully into the system.'),
(11, '2017-10-13 08:18:16', '127.0.0.1', 'Admin admin with email admin@admin.com signed in successfully into the system.'),
(12, '2017-10-13 12:36:02', '127.0.0.1', 'Admin admin with email admin@admin.com signed in successfully into the system.'),
(13, '2017-10-13 14:29:19', '127.0.0.1', 'User 11020343 with email 11020343@vnu.edu.vn signed in successfully into the system.'),
(14, '2017-10-13 14:32:29', '127.0.0.1', 'User 11020343 with email 11020343@vnu.edu.vn signed out successfully.'),
(15, '2017-10-13 14:33:01', '127.0.0.1', 'User 12020424 with email 12020424@vnu.edu.vn signed in successfully into the system.'),
(16, '2017-10-13 14:37:22', '127.0.0.1', 'User 12020424 with email 12020424@vnu.edu.vn signed out successfully.'),
(17, '2017-10-13 14:37:26', '127.0.0.1', 'User 13020105 with email 13020105@vnu.edu.vn signed in successfully into the system.'),
(18, '2017-10-13 14:38:06', '127.0.0.1', 'User 13020105 with email 13020105@vnu.edu.vn signed out successfully.'),
(19, '2017-10-13 14:38:41', '127.0.0.1', 'User 14020008 with email 14020008@vnu.edu.vn signed in successfully into the system.'),
(20, '2017-10-13 14:40:49', '127.0.0.1', 'User 14020008 with email 14020008@vnu.edu.vn signed out successfully.'),
(21, '2017-10-13 14:41:04', '127.0.0.1', 'User 14020021 with email 14020021@vnu.edu.vn signed in successfully into the system.'),
(22, '2017-10-13 14:42:02', '127.0.0.1', 'User 14020021 with email 14020021@vnu.edu.vn signed out successfully.'),
(23, '2017-10-13 14:42:10', '127.0.0.1', 'User 14020026 with email 14020026@vnu.edu.vn signed in successfully into the system.'),
(24, '2017-10-13 14:42:57', '127.0.0.1', 'User 14020026 with email 14020026@vnu.edu.vn signed out successfully.'),
(25, '2017-10-13 14:43:01', '127.0.0.1', 'User 14020033 with email 14020033@vnu.edu.vn signed in successfully into the system.'),
(26, '2017-10-13 14:43:56', '127.0.0.1', 'User 14020033 with email 14020033@vnu.edu.vn signed out successfully.'),
(27, '2017-10-13 14:44:00', '127.0.0.1', 'User 14020037 with email 14020037@vnu.edu.vn signed in successfully into the system.'),
(28, '2017-10-13 14:44:34', '127.0.0.1', 'User 14020037 with email 14020037@vnu.edu.vn signed out successfully.'),
(29, '2017-10-13 14:44:47', '127.0.0.1', 'User 14020074 with email 14020074@vnu.edu.vn signed in successfully into the system.'),
(30, '2017-10-13 14:45:28', '127.0.0.1', 'User 14020074 with email 14020074@vnu.edu.vn signed out successfully.'),
(31, '2017-10-13 14:45:53', '127.0.0.1', 'User 14020656 with email 14020656@vnu.edu.vn signed in successfully into the system.'),
(32, '2017-10-13 14:47:08', '127.0.0.1', 'User 14020656 with email 14020656@vnu.edu.vn signed out successfully.'),
(33, '2017-10-13 14:47:20', '127.0.0.1', 'User 14020697 with email 14020697@vnu.edu.vn signed in successfully into the system.'),
(34, '2017-10-13 14:50:52', '127.0.0.1', 'User 14020697 with email 14020697@vnu.edu.vn signed out successfully.'),
(35, '2017-10-13 14:51:04', '127.0.0.1', 'User 12020424 with email 12020424@vnu.edu.vn signed in successfully into the system.'),
(36, '2017-10-13 14:51:09', '127.0.0.1', 'User 12020424 with email 12020424@vnu.edu.vn signed out successfully.'),
(37, '2017-10-13 14:51:16', '127.0.0.1', 'User 14020033 with email 14020033@vnu.edu.vn signed in successfully into the system.');

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
(1, 'S0001_01', 1, 'Giảng đường đáp ứng yêu cầu của môn học', ' ', 'Cơ sở vật chất', 1, '2017-10-05 16:11:39', '2017-10-05 16:11:39'),
(2, 'S0001_02', 1, 'Các trang thiết bị tại giảng đường đáp ứng yêu cầu giảng dạy và học tập', ' ', 'Cơ sở vật chất', 1, '2017-10-05 16:11:39', '2017-10-05 16:11:39'),
(3, 'S0001_03', 1, 'Bạn được hỗ trợ kịp thời trong quá trình học môn này', ' ', 'Môn học', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(4, 'S0001_04', 1, 'Mục tiêu của môn học nêu rõ kiến thức và kĩ năng người học cần đạt được', ' ', 'Môn học', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(5, 'S0001_05', 1, 'Thời lượng môn học được phân bổ hợp lí cho các hình thức học tập', ' ', 'Môn học', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(6, 'S0001_06', 1, 'Các tài liệu phục vụ môn học được cập nhật', ' ', 'Môn học', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(7, 'S0001_07', 1, 'Môn học góp phần trang bị kiến thức, kĩ năng nghề nghiệp cho bạn', ' ', 'Môn học', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(8, 'S0001_08', 1, 'Giảng viên hướng dẫn cho bạn phương pháp học tập khi bắt đầu môn học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(9, 'S0001_09', 1, 'Giảng viên hướng dẫn cho bạn phương pháp học tập khi bắt đầu môn học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(10, 'S0001_10', 1, 'Phương pháp giảng dạy của giảng viên giúp bạn phát triển tư duy phê phán', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(11, 'S0001_11', 1, 'Giảng viên tạo cơ hội để bạn chủ động tham gia vào quá trình học tập', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(12, 'S0001_12', 1, 'Giảng viên giúp bạn phát triển kĩ năng làm việc độc lập', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(13, 'S0001_13', 1, 'Giảng viên rèn luyện cho bạn phương pháp liên hệ giữa các vấn đề trong môn học với thực tiễn', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(14, 'S0001_14', 1, 'Giảng viên sử dụng hiệu quả phương tiện dạy học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(15, 'S0001_15', 1, 'Giảng viên quan tâm giáo dục tư cách, phẩm chất nghề nghiệp của người học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(16, 'S0001_16', 1, 'Bạn hiểu những vấn đề được truyền tải trên lớp', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(17, 'S0001_17', 1, 'Kết quả học tập của người học được đánh giá bằng nhiều hình thức phù hợp với tính chất và đặc thù môn học', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(18, 'S0001_18', 1, 'Nội dung kiểm tra đánh giá tổng hợp được các kiến thức và kĩ năng mà người học phải đạt được theo yêu cầu', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(19, 'S0001_19', 1, 'Thông tin phản hồi từ kiểm tra đánh giá giúp bạn cải thiện kết quả học tập', ' ', 'Hoạt động giảng dạy của giảng viên', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40'),
(20, 'S0001_20', 2, 'Nếu có ý kiến khác vui lòng điền vào đây', ' ', 'Ý kiến đóng góp khác', 1, '2017-10-05 16:11:40', '2017-10-05 16:11:40');

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
(1, '11020343', '$2y$10$/vlxWeYHgOHVq5kKZZigsu.r0DlViOyDfCXlsimaUPwvWs4kGgHey', '11020343', '11020343@vnu.edu.vn', 'Đồng Quang  Toán', '8fzYlh8JGjyY8luRnxRMOl5mlYQswtvl7fTjwZqXZK5l8ezZhJt1aiefvrZD', NULL, NULL),
(2, '11020439', '$2y$10$cJfH5W5XXK7AHoWr.ZsvSudExEO2229AFbrWSIgfhoE7T4y.y.zMW', '11020439', '11020439@vnu.edu.vn', 'Dương Trí  Vinh', NULL, NULL, NULL),
(3, '11020516', '$2y$10$.fJbNpAwFKO7tuN6BwfwWOCWO3YG/NTGyG7c.OUF9bKE9wnolyz2C', '11020516', '11020516@vnu.edu.vn', 'Nguyễn Tiến  Thân', NULL, NULL, NULL),
(4, '12020408', '$2y$10$R0iV8M1fMpDJS06x9TV1A.55BoBv5HBk/Q7ycoov1kzBsor0Aa85G', '12020408', '12020408@vnu.edu.vn', 'Nguyễn Minh  Tuấn', NULL, NULL, NULL),
(5, '12020424', '$2y$10$FIfE9CwGgmYRssvfFXyifePkROa2BYpnW.YEmFho2e5EWx/eeEzPy', '12020424', '12020424@vnu.edu.vn', 'Nguyễn Thanh  Tùng', 'Ev2tHucPlzZo84A4aJ5xgje6xzOiasVVl0sSmbTbLQ0KrLsu3IV1oEuqBEb1', NULL, NULL),
(6, '12020425', '$2y$10$cyVIa0BjJgNTzqJUBLItBORrMI4Hbg2hOZ9friEn1WrTVl2G5V69q', '12020425', '12020425@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(7, '12020476', '$2y$10$SuUiK81Ix0/bNWu05mcvoO3eGAqbJ0PZt84kdyBKL7EX1GbPGfCaO', '12020476', '12020476@vnu.edu.vn', 'Hà Anh  Tuấn', NULL, NULL, NULL),
(8, '12020528', '$2y$10$g4tRbc9gzgpyCFyux1t4Ou0LWtSM91mPdiLdzaB1sLzJsdsbsBe76', '12020528', '12020528@vnu.edu.vn', 'Ngô Thành  Đạt', NULL, NULL, NULL),
(9, '12020643', '$2y$10$iERPt1wz9UuqTdfs5uP6Q.khbj1ntTMXyFwqFPTOvw90MMS.eSN5.', '12020643', '12020643@vnu.edu.vn', 'Hoàng Thị  Minh', NULL, NULL, NULL),
(10, '13020011', '$2y$10$fjMqiHsqHfC0yt4yALY4gOfDxA6clq8GrQYeFC8Gttdu8CECBwQly', '13020011', '13020011@vnu.edu.vn', 'Nguyễn Thế  Anh', NULL, NULL, NULL),
(11, '13020019', '$2y$10$hi8P5Hn2WzjHVOMRik9b1.K60r1/InxO8CfDlEpqWWW9h85Xs2DQO', '13020019', '13020019@vnu.edu.vn', 'Chu Trần  Bách', NULL, NULL, NULL),
(12, '13020020', '$2y$10$OyMpjeKYmCMMvkLwLN1oJu/2CXYXSs0A11Fgqb9FIzPfSBLj4KLZO', '13020020', '13020020@vnu.edu.vn', 'Nguyễn Việt  Bách', NULL, NULL, NULL),
(13, '13020021', '$2y$10$bx08vTyV6iG/zFvMxLFCX.VVJyUHHyCiWMC.nY9uzk4Zf9qY6BoxG', '13020021', '13020021@vnu.edu.vn', 'Tạ Đăng  Băng', NULL, NULL, NULL),
(14, '13020030', '$2y$10$ytxMKHesMY92VhovZ5NIzOA2WY7hL.sc.0F1XYyHtFw6zKdrfk2Em', '13020030', '13020030@vnu.edu.vn', 'Trần Thị  Châm', NULL, NULL, NULL),
(15, '13020031', '$2y$10$PkapaZMQQn5m83cF.zzmG.KeBiRUxv5onr5YgGSdMtoJGxrwP9UBm', '13020031', '13020031@vnu.edu.vn', 'Trịnh Thị  Châm', NULL, NULL, NULL),
(16, '13020036', '$2y$10$EeNv.O8mtdUQmvVqomMpuefoSW5kwNi3N0Svj/VCQHmReM8UpLuKS', '13020036', '13020036@vnu.edu.vn', 'Nông Thị  Chín', NULL, NULL, NULL),
(17, '13020037', '$2y$10$aIdS9B3zYDUX.PYCvxinLuEuFxiylJQXiuXIyrle/TqRwn.fNgzw6', '13020037', '13020037@vnu.edu.vn', 'Mai Văn  Chính', NULL, NULL, NULL),
(18, '13020041', '$2y$10$KI6veaUTvAoeZmmaCwi6p.ZN8WusS2.pdEqOL9lAOi8UD9l4oAtuq', '13020041', '13020041@vnu.edu.vn', 'Phan Thị  Chúc', NULL, NULL, NULL),
(19, '13020042', '$2y$10$XcyX8LW7BIa5dqWCbUcDyOe8/kvyRwZDSN0sDpBZmsZ.tkZOng65S', '13020042', '13020042@vnu.edu.vn', 'Hoàng Văn  Công', NULL, NULL, NULL),
(20, '13020058', '$2y$10$pt9gheADz6Up6DeLQwnTyOv/G9k4OOyZjgaCpBHtDCgjozG9v3HJu', '13020058', '13020058@vnu.edu.vn', 'Phạm Thái  Cường', NULL, NULL, NULL),
(21, '13020062', '$2y$10$WF5cRdg6T7Irjp9Kl8RpjumXR9F3eCTlJQTtXkYYJzD0RGWK/m0xu', '13020062', '13020062@vnu.edu.vn', 'Nguyễn Thị  Diện', NULL, NULL, NULL),
(22, '13020075', '$2y$10$XoMIzVv7Sj3/mQEklxDGxuGmtMwJ8hZc6uicB.9YKLkAFZDkKhnc6', '13020075', '13020075@vnu.edu.vn', 'Nguyễn Tiến  Duy', NULL, NULL, NULL),
(23, '13020087', '$2y$10$S9b/qkjP6y8CzyAy70HPuOiTGAS660N0e90qWLr2RQ1gj8Ycl6G6m', '13020087', '13020087@vnu.edu.vn', 'Trần Xuân  Dũng', NULL, NULL, NULL),
(24, '13020088', '$2y$10$oNbaj9KjO2OCOOL3aEupIOenqP04rqQ6rKR3/cGORHFIvbb0NwjTW', '13020088', '13020088@vnu.edu.vn', 'Nguyễn Đình  Dục', NULL, NULL, NULL),
(25, '13020098', '$2y$10$3aCZXpOgufSWrG7o1PtSXuzityDhaEl74KcVH6.g8TYPsuWPHfNF2', '13020098', '13020098@vnu.edu.vn', 'Bùi Văn  Đạt', NULL, NULL, NULL),
(26, '13020103', '$2y$10$Cm3FnHjOEith8NGbydvbbOCiYP89A4rjbvql7wVWBpBINf8uFcURG', '13020103', '13020103@vnu.edu.vn', 'Lê Văn  Đạt', NULL, NULL, NULL),
(27, '13020105', '$2y$10$NST.Lgtcop.5WK6Q.Lqbgef6OJx02oBm.TWSgBRYOaPPe5YMd8ram', '13020105', '13020105@vnu.edu.vn', 'Nguyễn Hữu  Đạt', 'bQbBpK6wrcHlof5pCpWksh5ywHBhOMVwgdavQm8vZ615YMrMtTBLzcIz8tR6', NULL, NULL),
(28, '13020109', '$2y$10$BSVHgZSUlmCvL.d2kHqsWuSxav.YvVcmobL.2rvJx5uBbM7ou1cvy', '13020109', '13020109@vnu.edu.vn', 'Vũ Văn  Đặng', NULL, NULL, NULL),
(29, '13020110', '$2y$10$DLtEfiIaaxfk5OxrnpOfSOJ15eBOwdabOJgqtFuwzvnD5cOcbAE46', '13020110', '13020110@vnu.edu.vn', 'Phạm Văn  Điện', NULL, NULL, NULL),
(30, '13020120', '$2y$10$WmCfQ7Tk43NZ2If4n2gY5uIIpScq6TIOH0Ixj6Ca3s.Mr3Pnhh4uG', '13020120', '13020120@vnu.edu.vn', 'Nguyễn Xuân  Đương', NULL, NULL, NULL),
(31, '13020129', '$2y$10$Bqg7TicHnutM/oIWXzY8k.XtX7kpFYZLJfCx5aNl1va6OSBNFMcai', '13020129', '13020129@vnu.edu.vn', 'Lê Hồng  Giáp', NULL, NULL, NULL),
(32, '13020138', '$2y$10$Ufoa7jUf06kazlAI1xcD7OVg7s/sDqon8a7SgwyKLyBbdeleoOELe', '13020138', '13020138@vnu.edu.vn', 'Đỗ Hoàng  Hải', NULL, NULL, NULL),
(33, '13020144', '$2y$10$NLPdBtV9JSMzQ4NUcfx1AernYu5YBrueYEX88pWFZxfnS/z1yQoOS', '13020144', '13020144@vnu.edu.vn', 'Nghiêm Văn  Hân', NULL, NULL, NULL),
(34, '13020162', '$2y$10$jKVqNtKcw6HAR8u8GhaZF.xbsBw28RwRdzKrjvqYIdyQ/Wl4suCQ6', '13020162', '13020162@vnu.edu.vn', 'Lê Công  Hiệp', NULL, NULL, NULL),
(35, '13020164', '$2y$10$ysXQzjZjfwQdJ5Kcfigji.xqC9zKkNyoIPJOldxKrmT8UBRpUwKma', '13020164', '13020164@vnu.edu.vn', 'Nguyễn Văn  Hiệp', NULL, NULL, NULL),
(36, '13020167', '$2y$10$awzBQARpJrNktMgLMd.5WeuaA33jyaAv8oJrubmx1rMy7rar56.c6', '13020167', '13020167@vnu.edu.vn', 'Nguyễn Văn  Hiệu', NULL, NULL, NULL),
(37, '13020177', '$2y$10$fwg8/C1aKhyk8YMqzfsfje550pk1Bc9yiYzOXOieQMQ9Cv3vKzloi', '13020177', '13020177@vnu.edu.vn', 'Trần Xuân  Hoàng', NULL, NULL, NULL),
(38, '13020187', '$2y$10$No8I0ROB/AtC8cBHYG9wIOd/usa0jfC6T6gi0NDKgS6f1o5eNG6fW', '13020187', '13020187@vnu.edu.vn', 'Nguyễn Thị  Huệ', NULL, NULL, NULL),
(39, '13020190', '$2y$10$tlGHuzEDJBhyZ.XIJL5Wj.HWHoqjM7Ef7Pgr64j/tba2kO6PMYU.K', '13020190', '13020190@vnu.edu.vn', 'Nguyễn Quang  Huy', NULL, NULL, NULL),
(40, '13020194', '$2y$10$1/hTNoUtYhKky3XJSevYTebQP3H3yzXsbZLsNryzHpkOnwyVCYOHC', '13020194', '13020194@vnu.edu.vn', 'Bùi Thị  Huyền', NULL, NULL, NULL),
(41, '13020197', '$2y$10$F1Su8946ZSiwp9hQIvtiPuJ1ICtF/Z6Op2ecsYHZutimaYQHIcN6.', '13020197', '13020197@vnu.edu.vn', 'Vũ Thị  Huyền', NULL, NULL, NULL),
(42, '13020206', '$2y$10$mQDeldnvf6JtwW.VZAK5MuMC.177kvaZ3fjPodSXR..QpkzwMmULe', '13020206', '13020206@vnu.edu.vn', 'Phạm Thế  Hùng', NULL, NULL, NULL),
(43, '13020208', '$2y$10$nDCoM1kZnSqQv52lbS3MCuuk9hDCaWkxPTXgZ391qYUTy3d6t.KkG', '13020208', '13020208@vnu.edu.vn', 'Chu Thành  Hưng', NULL, NULL, NULL),
(44, '13020210', '$2y$10$1EBKyHHRn.wC2stk7RSXPeHSzaRdbGXs2H2GfjG4pgRrWnw1JJXwm', '13020210', '13020210@vnu.edu.vn', 'Lê Việt  Hưng', NULL, NULL, NULL),
(45, '13020224', '$2y$10$epnZKy/3XEZca1EZIiYVw.hxJ9hCfecVxZK1o/pAn8LaYFBBATBc2', '13020224', '13020224@vnu.edu.vn', 'Mai Duy  Khánh', NULL, NULL, NULL),
(46, '13020226', '$2y$10$lmxEjdHaGfpw0TuaEbW45Obld3u3ZITiWQvIvjoWVmTAviHNAaZ6q', '13020226', '13020226@vnu.edu.vn', 'Nguyễn Hoàng  Khánh', NULL, NULL, NULL),
(47, '13020235', '$2y$10$5Np6jT6eIUaVeOeWGnCnoequY7IjYeqB/RaB.x195PoU6VLqwvmue', '13020235', '13020235@vnu.edu.vn', 'Bùi Văn  Kỳ', NULL, NULL, NULL),
(48, '13020242', '$2y$10$DVVZwonu6VVO96XHy/1swOj8aTzj2k3YopVPlyhBTBd4ZrtcblEUC', '13020242', '13020242@vnu.edu.vn', 'Trần Thị  Liên', NULL, NULL, NULL),
(49, '13020250', '$2y$10$BvtUH86TDizdDqnWk6leIOh8LBMKUCokaKCZp3qEm6TNvE2Pajqwi', '13020250', '13020250@vnu.edu.vn', 'Nguyễn Việt  Linh', NULL, NULL, NULL),
(50, '13020251', '$2y$10$v.wHOoEUWa4WHXPHO7Kxi.SCqHz33G93F/UrGarMbYKzg3hY1qkbO', '13020251', '13020251@vnu.edu.vn', 'Phạm Tuấn  Linh', NULL, NULL, NULL),
(51, '13020254', '$2y$10$4wD3Jvx5dTXSWbX0FHErM.tjQHSXJ46FozdmxJxQlm3YugVFShe6q', '13020254', '13020254@vnu.edu.vn', 'Đặng Tiến  Long', NULL, NULL, NULL),
(52, '13020255', '$2y$10$Qf5R55VVdlNPnozIbE8FT.CPOeXlMwGOvS4AflF9VES5aT2LtKpk2', '13020255', '13020255@vnu.edu.vn', 'Nguyễn Đình  Long', NULL, NULL, NULL),
(53, '13020259', '$2y$10$IUZUFVpi708uVN49kawttuKB/E4wtJFb/kRRFxGAJkRgWcmdb9szy', '13020259', '13020259@vnu.edu.vn', 'Trần Đình  Long', NULL, NULL, NULL),
(54, '13020262', '$2y$10$jRy2BAhPKS3.Js9wn7BQbe.wQXq.Y4VZB7EbRI9hzBWG9PskpE166', '13020262', '13020262@vnu.edu.vn', 'Vũ Thành  Long', NULL, NULL, NULL),
(55, '13020270', '$2y$10$g7eFynwH8sZZ.dNhJwuXs.TVHOzR43xr8rc09482n7yv9bMdqhLQG', '13020270', '13020270@vnu.edu.vn', 'Ngô Doãn  Lương', NULL, NULL, NULL),
(56, '13020274', '$2y$10$QDLSEwcTxdKrqvvG0vw1iuD3dzcZSMAxG5pLRv/ugyUa4kFrlgqyq', '13020274', '13020274@vnu.edu.vn', 'Nguyễn Thị  Ly', NULL, NULL, NULL),
(57, '13020284', '$2y$10$c39nTbZm1AqHB7yL6WBUneWouP15rbPe11.K/UCtqZNpn5odGwNfy', '13020284', '13020284@vnu.edu.vn', 'Nguyễn Duy  Minh', NULL, NULL, NULL),
(58, '13020289', '$2y$10$2iKRWgcPcXdpQnLlY7tFruUup1x.9yDhIq8m1Qq7a2AZK1BJ9addO', '13020289', '13020289@vnu.edu.vn', 'Đinh Vũ  Nam', NULL, NULL, NULL),
(59, '13020296', '$2y$10$Lr/ghzP8ZMhjUciW2nXhBuiEUg0gCug8WRS1cHatF/2JTdNfIO9d.', '13020296', '13020296@vnu.edu.vn', 'Tạ Quang  Nam', NULL, NULL, NULL),
(60, '13020300', '$2y$10$gS9RvqgT2UwYFDkYxnZOjO9m0oVH9vkIeRVfGPTOZWWCCb3sJxkI.', '13020300', '13020300@vnu.edu.vn', 'Nguyễn Trung  Nghĩa', NULL, NULL, NULL),
(61, '13020322', '$2y$10$N/gjck2U9PGsrAP4holodezDkSETtwEnRH0LL43mSgsyum1pMD.LC', '13020322', '13020322@vnu.edu.vn', 'Phan Huy  Phát', NULL, NULL, NULL),
(62, '13020324', '$2y$10$07cTLrUumxYn8AJTKJMebuIA96BpP1jOyMUwaDm4zQSq97o4RsMNS', '13020324', '13020324@vnu.edu.vn', 'Bùi Minh  Phong', NULL, NULL, NULL),
(63, '13020326', '$2y$10$MeGnXkR6bgDUWcmkPwU4AOoZcwd28L/fOqTr6EwXmnzpBxyL/Nrhm', '13020326', '13020326@vnu.edu.vn', 'Nguyễn Kim  Phong', NULL, NULL, NULL),
(64, '13020328', '$2y$10$vu/PTmGg7FCZL9/hKbseqOXGVKTHPVWDeP6i8YTMNmprsgql.Akbe', '13020328', '13020328@vnu.edu.vn', 'Vũ Hồng  Phú', NULL, NULL, NULL),
(65, '13020331', '$2y$10$tGDA1w/sAAtUm5Rcb9ExMeY8SNMKdRZGZ88L4kbbIRQUeYHJvDD6S', '13020331', '13020331@vnu.edu.vn', 'Dương Xuân  Phương', NULL, NULL, NULL),
(66, '13020350', '$2y$10$aKz8wpsLM1HW6xfPk3xTnenk5GZcytzGGwTWIKBa2cM3xniAJkYsi', '13020350', '13020350@vnu.edu.vn', 'Bùi Thị  Quỳnh', NULL, NULL, NULL),
(67, '13020357', '$2y$10$vXt.3jiMxiTK16HQtzlEmOVnFAObvbwO4D7VQQJKDAmIsjS/ZsOLS', '13020357', '13020357@vnu.edu.vn', 'Hoàng Thị Hồng  Sâm', NULL, NULL, NULL),
(68, '13020364', '$2y$10$.20EZ/7JBAIq9SPCP0bPQeKOsSMPi5.iJ2P5x68FQH/GGPJ6JpugK', '13020364', '13020364@vnu.edu.vn', 'Phạm Ngọc  Sơn', NULL, NULL, NULL),
(69, '13020366', '$2y$10$GXlvnOH63uRG3bIG/wP5KuA1MhxA4nJ9XcTz1SdpJhEBq/WP2s1cu', '13020366', '13020366@vnu.edu.vn', 'Trương Đức  Tài', NULL, NULL, NULL),
(70, '13020375', '$2y$10$evRIVJN4z5lBDS3xooNPCOc8s6GRjPVmCd16eNSzolFFK4/kmWeLO', '13020375', '13020375@vnu.edu.vn', 'Nguyễn Văn  Tấn', NULL, NULL, NULL),
(71, '13020378', '$2y$10$I/touV4mjs2uxlOOgJq9lOMiym8HtQ/nkTiE3U5JDRrXteCMEfVRe', '13020378', '13020378@vnu.edu.vn', 'Lê Thế  Thao', NULL, NULL, NULL),
(72, '13020387', '$2y$10$M9LUoauoXRCVJw3L66qLQ.uzR7X6IPSk2UIm5pqPwOozOTMwemrx6', '13020387', '13020387@vnu.edu.vn', 'Trần Ngọc  Thành', NULL, NULL, NULL),
(73, '13020395', '$2y$10$QGSNYoA6DIyqNMW9zT31NO99vsDiMeCLV1PG7v4G.FRBe7Zt8IZp6', '13020395', '13020395@vnu.edu.vn', 'Nguyễn Văn  Thái', NULL, NULL, NULL),
(74, '13020400', '$2y$10$HzD3dcuQRNWpGMyC2koBLet7CxsQ6bMm5KJ..WtJg1YUcDPWOtxka', '13020400', '13020400@vnu.edu.vn', 'Cù Xuân  Thắng', NULL, NULL, NULL),
(75, '13020401', '$2y$10$Od7JYO4iUjZO4XVO.sMinemheJ0u3ROk/dEjzPHxe9GV/B8IfDbb2', '13020401', '13020401@vnu.edu.vn', 'Đinh Việt  Thắng', NULL, NULL, NULL),
(76, '13020408', '$2y$10$eXE6vBRIuuE36RKVAS8EIOK6ZqJEG8U7OzKvR1x9IfgIoStrUEwia', '13020408', '13020408@vnu.edu.vn', 'Phạm Văn  Thế', NULL, NULL, NULL),
(77, '13020414', '$2y$10$U1NafELVfSFa6Yb.Fmxqa.WQgIL6ODydxH2zjXcl7L87a1L7XCKIm', '13020414', '13020414@vnu.edu.vn', 'Bùi Văn  Thịnh', NULL, NULL, NULL),
(78, '13020418', '$2y$10$All6kOAwCdHAvkNtRek.feNcSrBd9G6LRvS7iVuIVx4bwnkKRqI6G', '13020418', '13020418@vnu.edu.vn', 'Quản Quốc  Thịnh', NULL, NULL, NULL),
(79, '13020422', '$2y$10$U363Y/73ROJepPuDDdH7Iee89hig862dgFo9AReh686fy9QUcko4u', '13020422', '13020422@vnu.edu.vn', 'Nguyễn Thị Hoài  Thu', NULL, NULL, NULL),
(80, '13020438', '$2y$10$8SKs4TYOtBLeNttgQcBRYOvi0YUTSQMxs1pyB7BqRKmlGhYvvqADK', '13020438', '13020438@vnu.edu.vn', 'Nguyễn Mạnh  Tiến', NULL, NULL, NULL),
(81, '13020454', '$2y$10$6Azgp6yNnLfluY2G93XXr.cg.C7JcAbLCzv3.kNhL/82AasgCHPmW', '13020454', '13020454@vnu.edu.vn', 'Nguyễn Văn  Trịnh', NULL, NULL, NULL),
(82, '13020458', '$2y$10$ozS5DfVfQLqhkcyPDZPvq.xZXWhSVgFKfGUfNZFgC6NQa814.EUdO', '13020458', '13020458@vnu.edu.vn', 'Trần Bình  Trọng', NULL, NULL, NULL),
(83, '13020460', '$2y$10$cDu0H/v969eutyyo.8799.UwjH0j8nkpf7231rI5mXhk.u4OjILuG', '13020460', '13020460@vnu.edu.vn', 'Đặng Quang  Trung', NULL, NULL, NULL),
(84, '13020464', '$2y$10$7QOZkD2MUSFmu.JmJCw29eUb//h0Ut6bV3wE/qnehBdBba.XUrYI.', '13020464', '13020464@vnu.edu.vn', 'Nguyễn Văn  Trung', NULL, NULL, NULL),
(85, '13020466', '$2y$10$H3RPQeAv4GMTObeVhjO7U.bL0KvjcUeHwVpZXM9uSJYGSVak/jmza', '13020466', '13020466@vnu.edu.vn', 'Cao Đắc  Trường', NULL, NULL, NULL),
(86, '13020467', '$2y$10$Hr1sBjYKGHnmGHViUmSPxOFrmTF8vCC2Jip3XjjGaQxaQ3agWvtWa', '13020467', '13020467@vnu.edu.vn', 'Đỗ Nho  Trường', NULL, NULL, NULL),
(87, '13020478', '$2y$10$xe5CBbEUq8FOcs59fUCCRuLWitLZGgR5iCqJOtY/rlzfPLhSlluXK', '13020478', '13020478@vnu.edu.vn', 'Phạm Văn  Tuấn', NULL, NULL, NULL),
(88, '13020480', '$2y$10$wRwrGEz6W.YUX5XIvwZ3Zupe4MhhHu69FAxfIlEh0NwXHk3dGnqS.', '13020480', '13020480@vnu.edu.vn', 'Vũ Anh  Tuấn', NULL, NULL, NULL),
(89, '13020488', '$2y$10$YzdHbGMLYU7EwRZmYgDJAu8TL6MzBrP7JBxSrUmCli2Hsn5Bnoe7a', '13020488', '13020488@vnu.edu.vn', 'Dương Đình  Tùng', NULL, NULL, NULL),
(90, '13020490', '$2y$10$cewvtE5AkJElZbJ93WcQH.cl9WuOdtYE/LdrE6u/Tqi4GB2vrjjBO', '13020490', '13020490@vnu.edu.vn', 'Hoàng Văn  Tùng', NULL, NULL, NULL),
(91, '13020498', '$2y$10$QjoxdiM8aqtNrm3n3VNjVuKXfkMGhZBUUSEaBcO7eyF3wwTHSZY2.', '13020498', '13020498@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(92, '13020502', '$2y$10$Xv9BRQU6gDxPyrOyirmON.lxHhCqJtUBw3J285s6Vd0ZVPZQ9xE1S', '13020502', '13020502@vnu.edu.vn', 'Hà Đức  Văn', NULL, NULL, NULL),
(93, '13020509', '$2y$10$R2bqURLrKKsG/Sg2XCS27OhBCUKGuZDvp2okt2oKjwaAlIqNPvpSS', '13020509', '13020509@vnu.edu.vn', 'Bùi Quang  Vinh', NULL, NULL, NULL),
(94, '13020512', '$2y$10$sIOv.HWS8LU3Gb0Q.Dgs0.ynVI66Qj5JETmoAYk1PHhEn.2E2OrSi', '13020512', '13020512@vnu.edu.vn', 'Phạm Thị  Vui', NULL, NULL, NULL),
(95, '13020521', '$2y$10$mq8g9s.UCByKAgJCVtkflOkcbpyK3koyoKIo3FSNLsOn5NzoNDzra', '13020521', '13020521@vnu.edu.vn', 'Nguyễn Duy  Anh', NULL, NULL, NULL),
(96, '13020540', '$2y$10$sgexhTXT1oZBQ0iAK9VDzuIoie9WgEVuC.3aU7rtDvnuJStrxSzl2', '13020540', '13020540@vnu.edu.vn', 'Nguyễn Thanh  Hải', NULL, NULL, NULL),
(97, '13020544', '$2y$10$mFmSCQhPT4GTBfmu1OBSZu7BE9d4eyAq4E/58HEoAn3GeWOfhFHmK', '13020544', '13020544@vnu.edu.vn', 'Lê Đình  Hiệp', NULL, NULL, NULL),
(98, '13020551', '$2y$10$MGBUTa8gwOa7U/uH/doXTuODWBjKB9qaufsN27x.nNzZ5ysBKNw7y', '13020551', '13020551@vnu.edu.vn', 'Nguyễn Đình  Nguyên', NULL, NULL, NULL),
(99, '13020553', '$2y$10$V7JUd/w3/T5P17.jrCxqc.EQwi58w2GlwLkP0r9zeCMwLB60SJDDu', '13020553', '13020553@vnu.edu.vn', 'Đặng Danh  Phương', NULL, NULL, NULL),
(100, '13020554', '$2y$10$uOpm1kg74iW8F.lRxsudNePCnEXE7zIcO3uMT86YG4U1cVL7bBIh2', '13020554', '13020554@vnu.edu.vn', 'Nguyễn Khâm Hồng  Quang', NULL, NULL, NULL),
(101, '13020557', '$2y$10$.4hUUP.s.R4sH60bbpEBG.DIUtlI122KUHxhOKznJ4QIY7XBQKsZS', '13020557', '13020557@vnu.edu.vn', 'Nguyễn Đình  Quyết', NULL, NULL, NULL),
(102, '13020559', '$2y$10$jLZe1VMEcbAkmmW3W8U1gOEOArV60BPBYc2JPJ2dXb/jWaeqbegSW', '13020559', '13020559@vnu.edu.vn', 'Nguyễn Trường  Sinh', NULL, NULL, NULL),
(103, '13020560', '$2y$10$VBHXd3.HX/gJ4s1GXhwRzezLJyxoa3/rGrmyQF/w7qINR6xalc8pq', '13020560', '13020560@vnu.edu.vn', 'Thái Thế  Tài', NULL, NULL, NULL),
(104, '13020561', '$2y$10$EbHLLpGnYmIz8rmjNQpoc.3s2Enf4fEKrIxLdCje/dZ0mP0ronCv6', '13020561', '13020561@vnu.edu.vn', 'Nguyễn Công  Thành', NULL, NULL, NULL),
(105, '13020566', '$2y$10$aUFe9F7z7AbKwJdnE76U8eAwXN8WxdmMPsYV2Iw1e/nw/mr0/oL/y', '13020566', '13020566@vnu.edu.vn', 'Nguyễn Văn  Thiết', NULL, NULL, NULL),
(106, '13020580', '$2y$10$gWNElyKCg/yHWMDMjDcVI.ykr4LSx4RbHGrW.Jpg/bMEU.EYYwku6', '13020580', '13020580@vnu.edu.vn', 'Trần Thế  Anh', NULL, NULL, NULL),
(107, '13020581', '$2y$10$DPDwNf3z2YPTa3TcGI5Og.zN6TzqHDWppWplNPAzfe3K81qxQm44C', '13020581', '13020581@vnu.edu.vn', 'Lê Văn  Công', NULL, NULL, NULL),
(108, '13020589', '$2y$10$fnJklpkN9aFnHhJU3Yy9i.b4y688V2beWLjKWWJtG6KqN1LPRLubi', '13020589', '13020589@vnu.edu.vn', 'Vũ Phi  Hùng', NULL, NULL, NULL),
(109, '13020592', '$2y$10$fsZQ2MsYNAPoHb8ASRigVOIKe0r7mMqF6yHfGjo7dtsN4VgzdudqS', '13020592', '13020592@vnu.edu.vn', 'Phạm Văn  Khôi', NULL, NULL, NULL),
(110, '13020593', '$2y$10$nZlEwU4CoirUhiyiw4jIjen6XtR398Cr47ShFsJBD9v7Y2amQB822', '13020593', '13020593@vnu.edu.vn', 'Nguyễn Thị  Khuyên', NULL, NULL, NULL),
(111, '13020598', '$2y$10$xC1KGTjOP2qDSipHe8ntHuWhWKq9ZYFii7Z1Yi/VjBQeInhP6M6s6', '13020598', '13020598@vnu.edu.vn', 'Đinh Khắc  Nguyên', NULL, NULL, NULL),
(112, '13020636', '$2y$10$/jA4l2ZO4rjGn1QZQycO/eQO1.6jARVu8VzOgk8ne1vj1/zAK5izG', '13020636', '13020636@vnu.edu.vn', 'Lê Ngọc  Phương', NULL, NULL, NULL),
(113, '13020649', '$2y$10$O8c5QdhgK5UIE/A7lvobZOF9ZJiMZ3MSPy2wZc01I6AfTGFbx/IaS', '13020649', '13020649@vnu.edu.vn', 'Nguyễn Quang  Linh', NULL, NULL, NULL),
(114, '13020652', '$2y$10$W6QeMSQK6qvgnt38w8xyR.N2wIAtsMgjYrI602k/iN.udphna1/My', '13020652', '13020652@vnu.edu.vn', 'Đặng Quang  Trung', NULL, NULL, NULL),
(115, '13020654', '$2y$10$FGWV2PoRtKnZSJsheugMHeGpHyjyMUkGORFlFa400jTKuTtTf5rhi', '13020654', '13020654@vnu.edu.vn', 'Phan Khắc  Vũ', NULL, NULL, NULL),
(116, '13020717', '$2y$10$4fdlzKyNpFBMhhyiKzEhKuV0N92Eh3RcjQ250899H.UNVz6dcotIe', '13020717', '13020717@vnu.edu.vn', 'Đinh Văn  Học', NULL, NULL, NULL),
(117, '13020730', '$2y$10$uuUZzKJ5zfoVbnk6bWbIFu3YJj3I/iEfMCjHmtbZIG7DaCiOas6Dm', '13020730', '13020730@vnu.edu.vn', 'Lê Trường  Giang', NULL, NULL, NULL),
(118, '13020758', '$2y$10$Z6bT0o2BCOuc8it3nStpIeHLJ/Yo3bmsVq0lpYFruoK1sHcKZuEU.', '13020758', '13020758@vnu.edu.vn', 'Thái Đình  Phúc', NULL, NULL, NULL),
(119, '13020768', '$2y$10$/eiqyeoORfAa9vk8JivM3uEOB4wJlM.SIvgaBcGy1c/1FSI/ho3XO', '13020768', '13020768@vnu.edu.vn', 'H.  Tharindu', NULL, NULL, NULL),
(120, '14020004', '$2y$10$jqNAFnGHv4vxvk4d4Zi.0e3gW9oR1QT9KP6.R7dVoCirq17qkEdyi', '14020004', '14020004@vnu.edu.vn', 'Lê Thế  Anh', NULL, NULL, NULL),
(121, '14020008', '$2y$10$sn54NWDsOP.T13HK3Fww2.SsIk3fXqvPTRgrWHUlxhH9U3KILlWx2', '14020008', '14020008@vnu.edu.vn', 'Nguyễn Tuấn  Anh', 'yNs6JlogF74hyPVtfHJUvIrmcYo4xq05asmRiuURJCJeg7FQn3y90bxospYr', NULL, NULL),
(122, '14020010', '$2y$10$thGI4rwIZH3A7auYh5ibgu/8Kt6AkQo.8Y776MssYgBSwliCs55zq', '14020010', '14020010@vnu.edu.vn', 'Phan Hoàng  Anh', NULL, NULL, NULL),
(123, '14020021', '$2y$10$I8AIV7kdaS9N9lksHChXP.qg1AlSZkvEDnmg5GhFd9pUt2Gi.aKxq', '14020021', '14020021@vnu.edu.vn', 'Phan Văn  Bắc', 'aTnFgq7I49xCVgPiNmPDLdFOnd77kYqeHUPyQgOxgeUNthWSVpZhItDunAWS', NULL, NULL),
(124, '14020026', '$2y$10$VkU.OMhgVQ7BMbGoW/d9tu/PQaOxsDCtBsmRkO5fhXkDwUr8ow0De', '14020026', '14020026@vnu.edu.vn', 'Nguyễn Xuân  Bình', 'yRAKvHhRAbVz8yShZQ5VaW9qH9DO98BvRKEWkR3SEFh6P8rPjviWcOcHf8bi', NULL, NULL),
(125, '14020029', '$2y$10$IgSAbbh7AmG/nBTPeeBdN.8fiyjJHHRUtiqZH4M3RVqCjPUieWuJO', '14020029', '14020029@vnu.edu.vn', 'Hà Quang  Chi', NULL, NULL, NULL),
(126, '14020033', '$2y$10$75GWE1sLaV8Y8..62Nrm7.HMPdQruVt8ArT33zSwtcVzMXdYGX.V2', '14020033', '14020033@vnu.edu.vn', 'Phan Thị  Chinh', '90EIy420gnBJrWqNW3xI0uXGciaZH5CESDGX5QqvRcDDrGwTfhd3TiZJ3CH1', NULL, NULL),
(127, '14020035', '$2y$10$UDGoa5.e/sJBeBXwRgS4jOZT/7iJB5zhmKw855q0lgia3V2RgmEXC', '14020035', '14020035@vnu.edu.vn', 'Phạm Đức  Chính', NULL, NULL, NULL),
(128, '14020037', '$2y$10$aSpatm5HJCYBoi9fzv1ivOFmESNkOT8cdpmsvOfs6QOSq7b6FS9ji', '14020037', '14020037@vnu.edu.vn', 'Nguyễn Văn  Chung', '5vQ9gA5sdmdbILhTVxj0QceDRBqsp1ylYHjO7eJ3fOvJ758ZFmVb3FKirZNO', NULL, NULL),
(129, '14020041', '$2y$10$jQ57ScA.ClnhNtzIC4oRP.cBr3YGjN8Ijz3v4sZW5OX1kGN1zUCHy', '14020041', '14020041@vnu.edu.vn', 'Nguyễn Minh  Công', NULL, NULL, NULL),
(130, '14020054', '$2y$10$UFvmAgqrR3x0MnNN8aezbOQhocKUrV3KW1yXyilZfWpCOYaXR.fcG', '14020054', '14020054@vnu.edu.vn', 'Kim Mạnh  Cường', NULL, NULL, NULL),
(131, '14020057', '$2y$10$loKc7QYVoXdLbK7QhZj8ou2zHkj2/r7LHubyHkgOsY5OqyhKbkQRm', '14020057', '14020057@vnu.edu.vn', 'Phạm Hữu  Cường', NULL, NULL, NULL),
(132, '14020068', '$2y$10$kuG.IosGLFlFvT1ZAOUcB.ECPehSDHfac00k4AH.Bn/eEfJDc8aQK', '14020068', '14020068@vnu.edu.vn', 'Phạm Thị  Duyên', NULL, NULL, NULL),
(133, '14020074', '$2y$10$wIjom8nfaAiK.e8c8Zigz.ZVzSjq6hfgX.JloBlTkM.Hzv9NVVZHK', '14020074', '14020074@vnu.edu.vn', 'Nguyễn Văn  Dũng', 'c9rkEMhw42XVLDPx32ZiHTRQsSe3ygyty1xPzVqO8CtNtPD0yrbPZgxEPrla', NULL, NULL),
(134, '14020075', '$2y$10$xq6GiTMblL.b.x9g9vjFd.E83q7FaHWtpC5T.rarredEIW8je/dX2', '14020075', '14020075@vnu.edu.vn', 'Nguyễn Việt  Dũng', NULL, NULL, NULL),
(135, '14020076', '$2y$10$9p5hndVR5H.tq5NUChsSC.fZUoJnBB8Hwqs3QYHaCJFkhIvqB96Zi', '14020076', '14020076@vnu.edu.vn', 'Nguyễn Việt  Dũng', NULL, NULL, NULL),
(136, '14020083', '$2y$10$0qCSVt/MkbYueKglRz53juj6yOAVJQ0cZwtmRHPeCO6dgAsh51SSy', '14020083', '14020083@vnu.edu.vn', 'Phạm Tùng  Dương', NULL, NULL, NULL),
(137, '14020096', '$2y$10$bKt7DYW9Ve9rd.EFY9taZ.hyKYGVjfu0kIJCjAtbd3AYvEdEfkdhK', '14020096', '14020096@vnu.edu.vn', 'Đỗ Tiến  Đạt', NULL, NULL, NULL),
(138, '14020097', '$2y$10$qSuzpxQs3wttJxm8cZMFneqLqo.8oHkzEJ4kU0/vfKKBSEzGWqgiu', '14020097', '14020097@vnu.edu.vn', 'Đỗ Tiến  Đạt', NULL, NULL, NULL),
(139, '14020118', '$2y$10$y0PRe.caK6FYKPO5re228eyfks1ouNdqDosB9FP2H72uhmOWKCf6q', '14020118', '14020118@vnu.edu.vn', 'Nguyễn Phùng  Được', NULL, NULL, NULL),
(140, '14020119', '$2y$10$EvHtALxh9.1h2nQJR3Nr8uIY8DQK0BU6Iya/uO3wxbvL4XKHxEQXm', '14020119', '14020119@vnu.edu.vn', 'Hoàng Tiến  Đức', NULL, NULL, NULL),
(141, '14020124', '$2y$10$L51NtZKXiYsvJjkAAv8aVunaxBLIAuL6WIkjBehX6mLlTQnRnGV.O', '14020124', '14020124@vnu.edu.vn', 'Trần Anh  Đức', NULL, NULL, NULL),
(142, '14020126', '$2y$10$3Y3jMD8gkdpu2yYLr5pQS.15TI9pM6INYIPln5tjEUcoVTNmSxFf6', '14020126', '14020126@vnu.edu.vn', 'Phan Bá  Giang', NULL, NULL, NULL),
(143, '14020128', '$2y$10$xr16G0l56Kq9Ha9bNDsazex6voPhoe7MRPjCgjEpIa2acSpyei1aC', '14020128', '14020128@vnu.edu.vn', 'Phạm Văn  Giáp', NULL, NULL, NULL),
(144, '14020129', '$2y$10$tCV55uzm6QEoRZCi81YbpuiyrsD6vqHHKRbed14aqx2bwWCZENVCa', '14020129', '14020129@vnu.edu.vn', 'Phạm Văn  Giỏi', NULL, NULL, NULL),
(145, '14020135', '$2y$10$HW1ZxJmKZCbWoLn4H2gxcO3dPQlJtiJ6m4wH6FiV2MHgy9zq8Hp3.', '14020135', '14020135@vnu.edu.vn', 'Phạm Thị Thu  Hà', NULL, NULL, NULL),
(146, '14020137', '$2y$10$o3knG/hZF4uINduYte/N5OXk6VJhhr.PUrxmnythKTLUCQFwX6SF6', '14020137', '14020137@vnu.edu.vn', 'Vũ Ngọc  Hà', NULL, NULL, NULL),
(147, '14020141', '$2y$10$PM80izxbwXECZt5tqziobuluaCu3CjsLA9kWYKp9LmDwiOObxHF4q', '14020141', '14020141@vnu.edu.vn', 'Nguyễn Đình  Hải', NULL, NULL, NULL),
(148, '14020145', '$2y$10$Mv/NZ/1E3olFqbUjm/tEG.QRwJtUnT.gj1p2E0gzRPdZxrF/W4U1G', '14020145', '14020145@vnu.edu.vn', 'Nguyễn Thanh  Hải', NULL, NULL, NULL),
(149, '14020151', '$2y$10$cIl7Q5FAxk.NnSvq/R01c.KAO2WHeObt8C4ORvsXTQyt4Z3krnAjK', '14020151', '14020151@vnu.edu.vn', 'Phạm Thị  Hảo', NULL, NULL, NULL),
(150, '14020154', '$2y$10$2gwVTVWU.4DRnholiDAWOuVJJJ6z4hcJdIlYlgB/GiZO963nPOMMO', '14020154', '14020154@vnu.edu.vn', 'Dương Thị Thúy  Hằng', NULL, NULL, NULL),
(151, '14020173', '$2y$10$MUTAhyH7uCIY9cMHJmoAruCSKSRLVBPXHVnwdOclvL2V7VI6gMIUG', '14020173', '14020173@vnu.edu.vn', 'Nguyễn Văn  Hiếu', NULL, NULL, NULL),
(152, '14020183', '$2y$10$N5x0tL1qZhtK6HV0thSNmOIswYylKuVv2tRkp79mTLohajEYB6GRy', '14020183', '14020183@vnu.edu.vn', 'Nguyễn Văn  Hiệu', NULL, NULL, NULL),
(153, '14020187', '$2y$10$dvhzA0rQZoUNr7YRepDNge/3dEFP72H2xXYlbJwoYMo5mTl/Bb22C', '14020187', '14020187@vnu.edu.vn', 'Nguyễn Khánh  Hoà', NULL, NULL, NULL),
(154, '14020203', '$2y$10$kzLuFZTbsyoiLqVFqNIKp.KLnAHfK6W3vYbcf/xcbhTm1T7yfJyum', '14020203', '14020203@vnu.edu.vn', 'Nguyễn Ngọc  Huân', NULL, NULL, NULL),
(155, '14020207', '$2y$10$EXohxX7KinyAxvyj5.b0cOKAtIS.Mu/cTsuBcPyI9vj9ecq3UCGya', '14020207', '14020207@vnu.edu.vn', 'Nguyễn Đức  Huy', NULL, NULL, NULL),
(156, '14020209', '$2y$10$6fQnuPjPwXpxwYGL9Wfd2.5ZbabUMOaLLdeXY2GFdYID6raVgS97e', '14020209', '14020209@vnu.edu.vn', 'Nguyễn Quốc  Huy', NULL, NULL, NULL),
(157, '14020211', '$2y$10$rpL4Tfw3tliLhhIpCHuS0eW7BxM3Nq2oigA5aURXOG0FR.xgx4w8.', '14020211', '14020211@vnu.edu.vn', 'Vũ Văn  Huy', NULL, NULL, NULL),
(158, '14020215', '$2y$10$2PkUie5WpsMvw31pBt9tF.oX48L1bHnQExLeDhN6porNIus6jO2uK', '14020215', '14020215@vnu.edu.vn', 'Nguyễn Đình  Hùng', NULL, NULL, NULL),
(159, '14020217', '$2y$10$asx7na1Gnd3ccz0TB8FhLu.QuipfQH81n6gPsZkBqi/4enFWpkyVW', '14020217', '14020217@vnu.edu.vn', 'Nguyễn Văn  Hùng', NULL, NULL, NULL),
(160, '14020220', '$2y$10$/VyJeAvKTtLhLs.lajDIteYMVzH74hXu7qpfoYLKwznNngKENpCr6', '14020220', '14020220@vnu.edu.vn', 'Trần Mạnh  Hùng', NULL, NULL, NULL),
(161, '14020224', '$2y$10$kureIuPOGKyvF49yymztauMYWmKNDiDbgjnavYuR7U0Ro9n4ATjAq', '14020224', '14020224@vnu.edu.vn', 'Nguyễn Khánh  Hưng', NULL, NULL, NULL),
(162, '14020235', '$2y$10$R8m9GDbBqYsDKEQ8iWr9zenFpr66ZK8fdgkHnuDMcqDhLglKMO9Im', '14020235', '14020235@vnu.edu.vn', 'Phạm Việt  Khanh', NULL, NULL, NULL),
(163, '14020236', '$2y$10$dG1ol1LYxCMT/fczmElmNuBjFlsbvuViB7YiOZzMv6uq0ZfFnxZIy', '14020236', '14020236@vnu.edu.vn', 'Nguyễn Tuấn  Khải', NULL, NULL, NULL),
(164, '14020243', '$2y$10$5sU0lGlx3lsGPbPsJidnCuo3MmmrsDRKEhsArUNeY2283CDXinQu2', '14020243', '14020243@vnu.edu.vn', 'Nguyễn Văn  Khỏe', NULL, NULL, NULL),
(165, '14020254', '$2y$10$amMww0m.SMh7.TUDCf69Y.JGnCkkrkbzMtJRDmPb41PyTp/eNg9Ei', '14020254', '14020254@vnu.edu.vn', 'Nguyễn Duy  Linh', NULL, NULL, NULL),
(166, '14020264', '$2y$10$XL1w0Al06R5oU1IoGfLneOJ5vC6jywy09fyGUBm2d0L041TZ1ilpq', '14020264', '14020264@vnu.edu.vn', 'Phạm Hoàng  Long', NULL, NULL, NULL),
(167, '14020270', '$2y$10$RxXNAeQ65UK8EeqLeUu.0Ol1uTAAq.hu21ND52BnKd4C0Sie.w2BG', '14020270', '14020270@vnu.edu.vn', 'Vũ Xuân  Lộc', NULL, NULL, NULL),
(168, '14020277', '$2y$10$YZMiGEtgwF515G6Lb0cmxe6iH12bxExrHojL9Gi6uMD6iv/OsyvG2', '14020277', '14020277@vnu.edu.vn', 'Trịnh Đức  Lương', NULL, NULL, NULL),
(169, '14020283', '$2y$10$D7fx4FJWyXiS4BXsauqEyOAyAKQMiLsJZOuansTfqmiISsXooViEC', '14020283', '14020283@vnu.edu.vn', 'Nguyễn Duy  Lực', NULL, NULL, NULL),
(170, '14020284', '$2y$10$1/dPSrycbR89M9I.BgD42.SUSvO9GY81tzcEazVmKP09lGr08.Z4e', '14020284', '14020284@vnu.edu.vn', 'Nguyễn Khắc  Lực', NULL, NULL, NULL),
(171, '14020288', '$2y$10$0QtBHF6ekNHFwWLjyPJ4Su5uQ6AJmTSZF7bBV.hc8H5jC.wAoGC0u', '14020288', '14020288@vnu.edu.vn', 'Tống Thanh  Mai', NULL, NULL, NULL),
(172, '14020289', '$2y$10$c4dVoBvYO9wNDrCSSgK7HuK1ox3aB2lqhlhCagqS99W6idwKm4s0q', '14020289', '14020289@vnu.edu.vn', 'Nguyễn Văn  May', NULL, NULL, NULL),
(173, '14020291', '$2y$10$s6nuwBqLSkQD4oqZKiGxH.q9d.rVCJUnQZsiLzzvRa7pmA6C0N3G6', '14020291', '14020291@vnu.edu.vn', 'Hoàng Kim  Mạnh', NULL, NULL, NULL),
(174, '14020296', '$2y$10$R7nmsmLYxmuRZ.s26gS4LOal/j5H3e70dPqxM2xHTBgt52FTM1tT.', '14020296', '14020296@vnu.edu.vn', 'Phùng Văn  Mạnh', NULL, NULL, NULL),
(175, '14020306', '$2y$10$2S8TsJYkJq.wUOkC5IDT3OcFmjZ1mVD.tv69vrNqfVbQwnROJ9zCK', '14020306', '14020306@vnu.edu.vn', 'Trịnh Đức  Minh', NULL, NULL, NULL),
(176, '14020310', '$2y$10$0MYWgLnLYkipeAyfSKbtdO2EY.i342kqF2rvpt3t3wd1.VlA2GBOO', '14020310', '14020310@vnu.edu.vn', 'Vũ Thị  Mơ', NULL, NULL, NULL),
(177, '14020313', '$2y$10$zRKwx463yPW7XGjNMCIUvuox7AQRCHao9OvTd5X6PQGcfk73lpQwu', '14020313', '14020313@vnu.edu.vn', 'Hà Phương  Nam', NULL, NULL, NULL),
(178, '14020319', '$2y$10$Dt2yyVfd2OlclagTk8.sM.5tvt.05wdEJ.y8M9U4f5t.X8WXUhAgi', '14020319', '14020319@vnu.edu.vn', 'Trần Công  Nam', NULL, NULL, NULL),
(179, '14020324', '$2y$10$DmTT1RT/aY0UCyNTBocIRe416sHE5u6kXmDIeZHw/FnLT1Q.fkei2', '14020324', '14020324@vnu.edu.vn', 'Hoàng Trung  Nghĩa', NULL, NULL, NULL),
(180, '14020327', '$2y$10$tv8aIa17OmR22VHFYM2CS.BdE4FoBgL9h/veL6TEG8A.Hirg1dxYa', '14020327', '14020327@vnu.edu.vn', 'Nguyễn Thị  Ngọc', NULL, NULL, NULL),
(181, '14020338', '$2y$10$lHnfSPGixknEAbiRp5AoF.SnhNbbkt6PZ2K5pjh6uIcl/CxNr9tke', '14020338', '14020338@vnu.edu.vn', 'Nguyễn Ngọc  Ninh', NULL, NULL, NULL),
(182, '14020339', '$2y$10$4ZmwhYCYg7jvyY5jcVwGk.3/ZPeH6x9/1bYW6TrfSwh8zQhs1/bSq', '14020339', '14020339@vnu.edu.vn', 'Khương Thị  Oanh', NULL, NULL, NULL),
(183, '14020340', '$2y$10$fF1sBfAujyFaLPP5o1LMRu8/ILcrK1dZGyv7UfL.ItJ3W8.d.hSke', '14020340', '14020340@vnu.edu.vn', 'Nguyễn Đình  Phi', NULL, NULL, NULL),
(184, '14020346', '$2y$10$IdH42RY7vdW7a3wvJlC1q.TkMkLBxXM/0g/OFbeATPn/hF/FUeD.G', '14020346', '14020346@vnu.edu.vn', 'Nguyễn Duy  Phú', NULL, NULL, NULL),
(185, '14020348', '$2y$10$UqTBvuFud3g.zIiUnM7v2.nxoxgyS/AGZCwJzPfNU1UAWYLbeih92', '14020348', '14020348@vnu.edu.vn', 'Nguyễn Văn  Phú', NULL, NULL, NULL),
(186, '14020356', '$2y$10$7SYOk4WURP/xNLhO/pCE/e6Av3b25K0UvX/za/.TaJ417JmGInCte', '14020356', '14020356@vnu.edu.vn', 'Nguyễn Thị Thu  Phương', NULL, NULL, NULL),
(187, '14020360', '$2y$10$vkZffVegGkExVkz6/fzZKOq0fW6YjWaemPkfcQ0Uf0HuurVen6Ep2', '14020360', '14020360@vnu.edu.vn', 'Lê Đăng  Phước', NULL, NULL, NULL),
(188, '14020369', '$2y$10$P2c.5GJXTOy/hMDQwXN.EOWt1FsfHSOHF1MKmQG7RUL6P14/AFRsq', '14020369', '14020369@vnu.edu.vn', 'Bùi Anh  Quân', NULL, NULL, NULL),
(189, '14020373', '$2y$10$WNVhZRPq6FY4/1inqQNF2ulYjdsgdPnbtAMi7fEkNVu7gUlr3ZZJC', '14020373', '14020373@vnu.edu.vn', 'Lữ Đoàn  Quân', NULL, NULL, NULL),
(190, '14020378', '$2y$10$hAmEdVRcD4QhhPJXagEjGe1E08ZK8d57R.wmImWwutMyRc9oX5uY6', '14020378', '14020378@vnu.edu.vn', 'Đinh Huy  Quyết', NULL, NULL, NULL),
(191, '14020379', '$2y$10$dTM5AH4pGVlr9/yZz3sU/uUXx1bBifQ1tEzYbssRV.OBDZo5Zmt7y', '14020379', '14020379@vnu.edu.vn', 'Phạm Mạnh  Quyết', NULL, NULL, NULL),
(192, '14020380', '$2y$10$js0t6G0q2rPnROO6pUjd8.XdKMxoeKR2JAMZbmzrHkd916.kx8vlG', '14020380', '14020380@vnu.edu.vn', 'Phạm Văn  Quyết', NULL, NULL, NULL),
(193, '14020383', '$2y$10$9nJZTM7IZBeZ9YNVcfFVjOOfXv9CJeo8LpsWr/3Lx5gWqf7XHxcT.', '14020383', '14020383@vnu.edu.vn', 'Lưu Văn  Quỳnh', NULL, NULL, NULL),
(194, '14020389', '$2y$10$rl6gq5Xs7FMxr3QLe.QeDupn5i/.HqmPlkUdjLJWaHdo2y18JsUrq', '14020389', '14020389@vnu.edu.vn', 'Dương Ngọc  Sơn', NULL, NULL, NULL),
(195, '14020390', '$2y$10$2B92yADwlxhehKQMnnfIzO9ZmH2PnWaeETKBOCLKiWIw0MLhERZ4.', '14020390', '14020390@vnu.edu.vn', 'Đào Xuân  Sơn', NULL, NULL, NULL),
(196, '14020393', '$2y$10$YbUX3mKtNYuTH2O.g4nQd.Igi4GzPrWaHDLvzxzv.CdDt1z9iSma.', '14020393', '14020393@vnu.edu.vn', 'Nguyễn Hồng  Sơn', NULL, NULL, NULL),
(197, '14020395', '$2y$10$WIfvHitUPycfcx2xuj5JD.pgJFUnnsqg64IYI9Vha522bRJMlDH92', '14020395', '14020395@vnu.edu.vn', 'Phạm Thái  Sơn', NULL, NULL, NULL),
(198, '14020397', '$2y$10$QwJruXZ4eRW5o0dwDoFg0eZh2AjiJwXm/5EZeFcGnRH7j6N8JXd76', '14020397', '14020397@vnu.edu.vn', 'Tạ Ngọc  Sơn', NULL, NULL, NULL),
(199, '14020405', '$2y$10$8.UG1qi0itOyTsT60qBCkuQhqNf5ZhwzTznJfCZLW72sgzFotO9Bm', '14020405', '14020405@vnu.edu.vn', 'Nguyễn Văn  Tài', NULL, NULL, NULL),
(200, '14020410', '$2y$10$eji.590f2bTAYjblAQ3Ieu34mzTK9M/L0EHCzZUZP9rwLNcYu69D.', '14020410', '14020410@vnu.edu.vn', 'Phạm Phương  Thanh', NULL, NULL, NULL),
(201, '14020412', '$2y$10$/cg37lX6wcWetl.lrgRNxeYbCOxcXu9twFENJIyQhi2gwDrcnaxJ2', '14020412', '14020412@vnu.edu.vn', 'Vũ Thị Thanh  Thanh', NULL, NULL, NULL),
(202, '14020417', '$2y$10$5.TuWIwDKdo4zCe0NTh.8OTxUqpy4VIqXlfte3veyARbveJHQonRO', '14020417', '14020417@vnu.edu.vn', 'Nguyễn Tuấn  Thành', NULL, NULL, NULL),
(203, '14020420', '$2y$10$PuQEfXxf62wMoZkxxABag.960b2L9XVFvAJXgJEj36LZacPrBQlty', '14020420', '14020420@vnu.edu.vn', 'Nguyễn Văn  Thành', NULL, NULL, NULL),
(204, '14020421', '$2y$10$X1/K6NjytKF.yefl8qLd7OvUgIAW/gsasneTV1nhyccVo3ybJ3dd.', '14020421', '14020421@vnu.edu.vn', 'Nguyễn Văn  Thành', NULL, NULL, NULL),
(205, '14020427', '$2y$10$5CiyMHX.7/n2b8X/hPQyjeogNlhjMtt9WhAUOfwTTMMHiK5c1eBT6', '14020427', '14020427@vnu.edu.vn', 'Trần Thị Phương  Thảo', NULL, NULL, NULL),
(206, '14020428', '$2y$10$e0XHphNglnabkrDru6.gNOrJZXD01CkiSYTHIrdbuDc2C92MMYRQO', '14020428', '14020428@vnu.edu.vn', 'Vũ Thị  Thảo', NULL, NULL, NULL),
(207, '14020439', '$2y$10$gz9Z.3dfZRQs.qm9HjRuH.8UD6Iuy.frVYhF.fXlx0BA6tvvm3v3C', '14020439', '14020439@vnu.edu.vn', 'Lại Văn  Thế', NULL, NULL, NULL),
(208, '14020442', '$2y$10$5OyEXO3.FGKHEzlM1Ia7SuqpxUlbylyUevJAc/aFFwjrrYkGXvaWu', '14020442', '14020442@vnu.edu.vn', 'Đỗ Văn  Thiện', NULL, NULL, NULL),
(209, '14020456', '$2y$10$b.hn87MP3pe69fCXngsMKeswuRbvOIrkX2JgOWE95/aJd1bRlccpi', '14020456', '14020456@vnu.edu.vn', 'Nguyễn Văn  Thuật', NULL, NULL, NULL),
(210, '14020472', '$2y$10$wghaMNL5oTVi8.EK47c4q.e8.kDHK/9iPptaT6LvLBw1y5qSrKNTW', '14020472', '14020472@vnu.edu.vn', 'Trần Văn  Tĩnh', NULL, NULL, NULL),
(211, '14020477', '$2y$10$RSE3k2wIz./mH7dr9CLCz.ee8WRirrUaJ5PGVAl.UktO2zcNSH7za', '14020477', '14020477@vnu.edu.vn', 'Trần Đức  Toàn', NULL, NULL, NULL),
(212, '14020479', '$2y$10$mEz.JZgmyCNlA7b3X1Pm9eCNeTtMZq.u7P.Wz9SNsL03EXb3ZGNxi', '14020479', '14020479@vnu.edu.vn', 'Nguyễn Văn  Tới', NULL, NULL, NULL),
(213, '14020480', '$2y$10$nqvpcKr5gAAOdKkHguBXAeFUzmrtaAK/uplwr6CyzIUf5cgKpsWoi', '14020480', '14020480@vnu.edu.vn', 'Lê Quỳnh  Trang', NULL, NULL, NULL),
(214, '14020484', '$2y$10$04mbZ/UTVh576pqa.Q9vUO2kh3aQ.62egYX0RA2kswxr9geDmJlTi', '14020484', '14020484@vnu.edu.vn', 'Nguyễn Thị Huyền  Trang', NULL, NULL, NULL),
(215, '14020486', '$2y$10$UmCEHYfJ7k2lKRnmS6jGf.8N5ZeM2wBe.8s2gaa3kMI4n9MzRo6pe', '14020486', '14020486@vnu.edu.vn', 'Lê Thị Kiều  Trinh', NULL, NULL, NULL),
(216, '14020490', '$2y$10$ul5Qd9APhbUA1IFrvF32keOU3IXB0sRU8b9HHQyPTn0T5kYAChKWu', '14020490', '14020490@vnu.edu.vn', 'Lê Đăng  Trung', NULL, NULL, NULL),
(217, '14020495', '$2y$10$MxVhontdJDSrVnXk/3ckVOD70zp4zp/H5SIQsprev.sN4nwTFLQIa', '14020495', '14020495@vnu.edu.vn', 'Trần Văn  Trung', NULL, NULL, NULL),
(218, '14020502', '$2y$10$xitCi8mixmRamvviwinWjezpSiPFUEsSafp5lG15h9X.LYU6chXly', '14020502', '14020502@vnu.edu.vn', 'Phạm Quang  Trường', NULL, NULL, NULL),
(219, '14020509', '$2y$10$waWAJfpvJ4lYonNK8n53JuTsRzTG00UPCX3i/XbmlRXQmOk4zptQW', '14020509', '14020509@vnu.edu.vn', 'Đào Anh  Tuấn', NULL, NULL, NULL),
(220, '14020513', '$2y$10$vrAdJ5BBHXDggXE4nQx9quy.nBu.NKfCfoNlpqRoYINJgO1m0C7W6', '14020513', '14020513@vnu.edu.vn', 'Lý Văn  Tuấn', NULL, NULL, NULL),
(221, '14020516', '$2y$10$A4YVLdJPwXfhh9O9FKiUaubv/QXPfKSVEmpjRMS2aT85/bBQbfiEy', '14020516', '14020516@vnu.edu.vn', 'Nguyễn Đức  Tuấn', NULL, NULL, NULL),
(222, '14020517', '$2y$10$tak0e04dk6LRuozW48EmpePgpBA4gfqt.HmPD/MsTh3nX8y1l1A9q', '14020517', '14020517@vnu.edu.vn', 'Nguyễn Mạnh  Tuấn', NULL, NULL, NULL),
(223, '14020522', '$2y$10$1kh4l258wRVks4jiQVgEN.L8mYHe0uCNRFhzSUhVpg0vBml5OBXJi', '14020522', '14020522@vnu.edu.vn', 'Nguyễn Thanh  Tuyền', NULL, NULL, NULL),
(224, '14020523', '$2y$10$ifvN41ooQDyuB92I16w8d.wTrk/DSPB96dHuStcgtY1s3HzeYMNUK', '14020523', '14020523@vnu.edu.vn', 'Nguyễn Xuân  Tuyến', NULL, NULL, NULL),
(225, '14020537', '$2y$10$qrxV4QZ7ns38tU2APvhFFO0wWFW/gR8BrZ3Wj9SLPh5C5IWYY48XO', '14020537', '14020537@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(226, '14020543', '$2y$10$bhgjzaeALLT67amnX6U2FOtlCXPSBs76.pU1f7nHdk66uOvHfuVXq', '14020543', '14020543@vnu.edu.vn', 'Phạm Đăng  Tưởng', NULL, NULL, NULL),
(227, '14020545', '$2y$10$YAXxtTtwqvX2IA.HK4ivoedR8cEJmuKVrBpSZHgo/oa/rAH0DK6zi', '14020545', '14020545@vnu.edu.vn', 'Mai Thị Tố  Uyên', NULL, NULL, NULL),
(228, '14020546', '$2y$10$Nb5ZDiTvGz9oCo3YoWsjmeyL/t9vCRwV1B2jGcOKVp4hfFrY469L.', '14020546', '14020546@vnu.edu.vn', 'Nguyễn Văn  Ước', NULL, NULL, NULL),
(229, '14020551', '$2y$10$sr.Jr05RkQlVNo/vSCyO9ullELIuLRSJuF.Ct0t97DtE04M7C6eRG', '14020551', '14020551@vnu.edu.vn', 'Nguyễn Mạnh  Việt', NULL, NULL, NULL),
(230, '14020560', '$2y$10$JX2lur8FnwHkmSxoCdA8guQRBRZ.YKYVANRqQAgCmj5Pbt6w2wGGy', '14020560', '14020560@vnu.edu.vn', 'Chu Thừa  Vũ', NULL, NULL, NULL),
(231, '14020566', '$2y$10$WB9aFEZMYVa.36QLan38peV//Km/AGnCvIcKB9AvGtGf/MdWHrGYa', '14020566', '14020566@vnu.edu.vn', 'Phan Văn  Vương', NULL, NULL, NULL),
(232, '14020574', '$2y$10$3pZvdieASfBWbqU7qBrF7eldqwUfKhXvRQ8bLeNn3H7RV2.Sdvjua', '14020574', '14020574@vnu.edu.vn', 'Nguyễn Việt  Anh', NULL, NULL, NULL),
(233, '14020580', '$2y$10$RUJnj6OA0CSCH77LZMkUGehUsg8OU2KmUaG/Ko8yeb9WNIpsOwVyK', '14020580', '14020580@vnu.edu.vn', 'Trần Thị  Dung', NULL, NULL, NULL),
(234, '14020584', '$2y$10$sz5EEsAqnPHVCY5AE8r/gOefwJooCt7IWr3Ihdw7ROYkPy7Yk0J8u', '14020584', '14020584@vnu.edu.vn', 'Cao Đình  Đức', NULL, NULL, NULL),
(235, '14020587', '$2y$10$Bsn4WI812ysar.wcA/RDrekzO5yIdqZN/f4gcnUBRB5WOhdSt0xNS', '14020587', '14020587@vnu.edu.vn', 'Nguyễn Công  Hoàn', NULL, NULL, NULL),
(236, '14020590', '$2y$10$hqg3NBqoJcPMPTBe6e/Y8OIAmhy1xCWWlJE3fp/EKeCbl5cwZWI8e', '14020590', '14020590@vnu.edu.vn', 'Hồ Huy  Hùng', NULL, NULL, NULL),
(237, '14020592', '$2y$10$hMmNXs8q3TpC.xU3uOvUGOWtbJXn.eUHNAv033ACpmJQBfVMzDZSK', '14020592', '14020592@vnu.edu.vn', 'Nguyễn Văn  Hưng', NULL, NULL, NULL),
(238, '14020595', '$2y$10$.2caiXyHqc0OPGo.27rdcOET30aQkp2h3O18UL9HPdxJE5FV7aBiu', '14020595', '14020595@vnu.edu.vn', 'Võ Văn  Khôi', NULL, NULL, NULL),
(239, '14020606', '$2y$10$sDZZSdQL3t3CGlZxDXxPQOsz5m8Yz1VBQTEovQlNHZ.CVJmFFncdG', '14020606', '14020606@vnu.edu.vn', 'Hoàng Văn  Thanh', NULL, NULL, NULL),
(240, '14020609', '$2y$10$f6GzsxJnFN9EIRSAMv5L3eApbYmPg.824dX./HXhvIEhJcH/3OktW', '14020609', '14020609@vnu.edu.vn', 'Nguyễn Minh  Thắng', NULL, NULL, NULL),
(241, '14020616', '$2y$10$BD4XZcCytGogs0OrC57Y7uIK8RpBM6nWLGjxBvCtOBs9iJXHndC7.', '14020616', '14020616@vnu.edu.vn', 'Trần Hữu  Tuấn', NULL, NULL, NULL),
(242, '14020618', '$2y$10$dfGyPkcMhX4zNinGof/fl.Xny94/6.mc12Bh6rS77sqe/dUtjq.VO', '14020618', '14020618@vnu.edu.vn', 'Đào Tuấn  Anh', NULL, NULL, NULL),
(243, '14020620', '$2y$10$sFNLFKCGJdPFGVMIcv3eCeGcmnDZwSBx64M7W.G0OByogIfFY.kNO', '14020620', '14020620@vnu.edu.vn', 'Lê Thị  Duyên', NULL, NULL, NULL),
(244, '14020621', '$2y$10$pGCxhnWOh04XTr0JTXEHdeaKIXiQ4BJBgSjS3sLpRG/YScP96JzCe', '14020621', '14020621@vnu.edu.vn', 'Nguyễn Mỹ  Duyên', NULL, NULL, NULL),
(245, '14020623', '$2y$10$I9M1QYXt/TL758639hyxMOzh.WNAUPiuIfH8d7mKKYdm6p8zA/amm', '14020623', '14020623@vnu.edu.vn', 'Phạm Đức  Dũng', NULL, NULL, NULL),
(246, '14020625', '$2y$10$N5e/M9S8iEvYbxvUriP.ueWmlH3c8zBlYpNvBtYYKK5DPArI5kL5m', '14020625', '14020625@vnu.edu.vn', 'Lê Thị  Hiền', NULL, NULL, NULL),
(247, '14020634', '$2y$10$sDVLE5aiswzroe43hECyae5JU4/iqNI3YnMZFOa8uzEaUvyoSRDKq', '14020634', '14020634@vnu.edu.vn', 'Đỗ Xuân  Quý', NULL, NULL, NULL),
(248, '14020635', '$2y$10$a3TEJW8sCQMcN9/3AtvPNO0w19bHNi1FTXjRGzUizoEFDqE4QEJri', '14020635', '14020635@vnu.edu.vn', 'Đồng Phú Khánh  Thành', NULL, NULL, NULL),
(249, '14020637', '$2y$10$o8jQNQeDGcOvhiY8FW.WdOGXnbImIVlur1QVWMv61GxHdhi5obRv6', '14020637', '14020637@vnu.edu.vn', 'Đồng Thị  Thảo', NULL, NULL, NULL),
(250, '14020638', '$2y$10$JhfCQt04znkb/spAOimeVeZX5hJy1gB4it8zg1nMkuFCwo6jEKPo.', '14020638', '14020638@vnu.edu.vn', 'Nguyễn Xuân  Thuận', NULL, NULL, NULL),
(251, '14020643', '$2y$10$fvEcZomu3WK82OfIxsvnuuxMyZ3E8ycElC78WC1Ea5O2b8xLa7gyC', '14020643', '14020643@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(252, '14020646', '$2y$10$d81Zfb0vNn/Yktrip66nm.BQ32LSVd4PY3ymxjvRRAhEhpF3crDje', '14020646', '14020646@vnu.edu.vn', 'Bùi Thúy  Vân', NULL, NULL, NULL),
(253, '14020649', '$2y$10$QoxkaqjHYDe99wbM3xIQX.hciysPCFeHR8ZS06YAdS1MNaZz0Kd82', '14020649', '14020649@vnu.edu.vn', 'Nguyễn Đăng Tuấn  Anh', NULL, NULL, NULL),
(254, '14020652', '$2y$10$3EkipTqcXgcyzjzyoeji1uQbsaoDiOQ8.tzmydbr5XfwTWl4PEwtG', '14020652', '14020652@vnu.edu.vn', 'Nguyễn Quang  Bách', NULL, NULL, NULL),
(255, '14020654', '$2y$10$AAXHwKYkZLwGQrwgapvRP.x3TWci.NRob7RcXIRoJpYz4upRmGoZu', '14020654', '14020654@vnu.edu.vn', 'Nguyễn Hữu  Duẩn', NULL, NULL, NULL),
(256, '14020656', '$2y$10$0iHK6RZkPfAMtekX8T0hyeDPzJ8AWtJxdKdrnTAS618oZCZpcst6u', '14020656', '14020656@vnu.edu.vn', 'Trần Quang  Duy', 'ruoeYwho1n9fispp0oakgXv7ZuiNzekdZxRj8ntweOsdNqLXrRgymecWKqtT', NULL, NULL),
(257, '14020657', '$2y$10$9DTqDCXfZmjZQR0AtAexkutQ8L/QgP0DXOfOpd2USvpLu4tEP4SRe', '14020657', '14020657@vnu.edu.vn', 'Nguyễn Minh  Dương', NULL, NULL, NULL),
(258, '14020659', '$2y$10$7wUN.MLaPUy3xfMFEqdkNewlrhnqYsYOjFYIZSBKYpbUCXBgK9HqW', '14020659', '14020659@vnu.edu.vn', 'Phí Thu  Hà', NULL, NULL, NULL),
(259, '14020678', '$2y$10$QVh.nl/4Xczt3BsA1iGWb.ZahCeeAFEvEEfKiHTpi7IgVoZ0Bj38i', '14020678', '14020678@vnu.edu.vn', 'Vũ Văn  Thiết', NULL, NULL, NULL),
(260, '14020682', '$2y$10$ucJ3M6cBKpb4C5.gZaknWuT/2uwECaLpp1FLnVvIRv9BMvKm6r8cC', '14020682', '14020682@vnu.edu.vn', 'Nguyễn Hoàng  Tùng', NULL, NULL, NULL),
(261, '14020684', '$2y$10$cCYy6QZfkqiiDYGeHkuSKuobkz1zN2kicOHWPH7EenH/dKuUAcGlu', '14020684', '14020684@vnu.edu.vn', 'Hoàng Minh  Tú', NULL, NULL, NULL),
(262, '14020687', '$2y$10$V5mgwF53F60AmZbDYdHz6evogrYFk04gkWrPlWqvFe2IUx27H/R.i', '14020687', '14020687@vnu.edu.vn', 'Nguyễn Anh  Vũ', NULL, NULL, NULL),
(263, '14020692', '$2y$10$KgZsEdsjh2DhHSv.HGm1IeLY4vqZK18SyT7d3s2oNqWHY4spLIde.', '14020692', '14020692@vnu.edu.vn', 'Đinh Văn  Sao', NULL, NULL, NULL),
(264, '14020693', '$2y$10$XkgAU8en4T0tBCkiW67M3.W/tzNBCbMyegPWXwczb8y3ZnQFXZ6HS', '14020693', '14020693@vnu.edu.vn', 'Nguyễn Tiến  Thành', NULL, NULL, NULL),
(265, '14020697', '$2y$10$Wqzx/gM07EwyY1a8rT//PuKziwTdxzTnPpR16NzvYjy9W8V37qenK', '14020697', '14020697@vnu.edu.vn', 'Nguyễn Như  Cường', '492FBOdgtZK7rqukmN9y5ycNerFZmLoXthGXL1hproKpNAPECAcR2sg8cV8Z', NULL, NULL),
(266, '14020814', '$2y$10$fKZk3TqVf8wZ4TLpgySDT.UssjCYQvwLWGhAx4KllB0q4l1jpv6UG', '14020814', '14020814@vnu.edu.vn', 'Phó Đại Nam  Phong', NULL, NULL, NULL),
(267, '14020832', '$2y$10$JX22.AYPw1CBAUZR1NNN7uI/WVKDoaS.o/2LsVwKhwnTQtEPgybCK', '14020832', '14020832@vnu.edu.vn', 'Dương Đức  Chính', NULL, NULL, NULL),
(268, '15020912', '$2y$10$cMsxcHGjHGNYy/FdGmoBoOEY9TEaGF8gtrCEakmwwMMNTKA/KpNFi', '15020912', '15020912@vnu.edu.vn', 'Nguyễn Đăng  Thế', NULL, NULL, NULL),
(269, '15020929', '$2y$10$t5Igu0rKqYS8scSiVvh2BueO1XcklPn3KXzZWayY.GC5aV8PkQrkm', '15020929', '15020929@vnu.edu.vn', 'Cấn Tiến  Xuân', NULL, NULL, NULL),
(270, '15020936', '$2y$10$6Tdk2i/TDxPVnHX/ysuhYe2hPikyvORy517ANbvhUhY0wH2Li12Ca', '15020936', '15020936@vnu.edu.vn', 'Nguyễn Thanh  Cương', NULL, NULL, NULL),
(271, '15020963', '$2y$10$BC2JiNwy/7LUgn9zO.bD0.rzfKALASv0i5qDchy6.F9ZJUeEK3urG', '15020963', '15020963@vnu.edu.vn', 'Vũ Minh  Quang', NULL, NULL, NULL),
(272, '15020969', '$2y$10$A9C555l0BA7q6hJ7x/O70e8WbIuJfIlmhSan7YcK6Zb5qFBTujF..', '15020969', '15020969@vnu.edu.vn', 'Trần Văn  Thiều', NULL, NULL, NULL),
(273, '15020970', '$2y$10$569WC92UM5qWOFx1GZQkNe12GdAm8i3lAIlxP/7urffnzsrpBWlhe', '15020970', '15020970@vnu.edu.vn', 'Vũ Minh  Đức', NULL, NULL, NULL),
(274, '15020975', '$2y$10$CAP6iiSGC6okPRXosS5TfOkQCsDs8x1maMco4H6zGd8bFsJtGbYtq', '15020975', '15020975@vnu.edu.vn', 'Phạm Văn  Cường', NULL, NULL, NULL),
(275, '15021016', '$2y$10$jgO5Cayo8DMnlCKK/xrE7.YZJiOF4ymjuYa9Cnk55IQBMhJGGka3.', '15021016', '15021016@vnu.edu.vn', 'Phạm Thị Thu  Phương', NULL, NULL, NULL),
(276, '15021023', '$2y$10$Jth8C1mENr88CjT8SpaUKeOiTVS7SG2yIIwNZis1S/csloYD2mGp6', '15021023', '15021023@vnu.edu.vn', 'Nguyễn Phương  Nam', NULL, NULL, NULL),
(277, '15021108', '$2y$10$mUTINpcrsTV5Ki98yI5Dj.KWVL20hBSl4OvP8v1B3THDfTk1H4OxS', '15021108', '15021108@vnu.edu.vn', 'Vũ Hoàng  Long', NULL, NULL, NULL),
(278, '15021327', '$2y$10$focWMyE9D7xbs8ENy7AslO2CF6ApWAbSTMO.XmMl7A1IfEJPYqDZW', '15021327', '15021327@vnu.edu.vn', 'Trần Công  Minh', NULL, NULL, NULL),
(279, '15021476', '$2y$10$UrIfQlOaZreVB9VgD5KSEuVid1.qs3WBgmafAFxmPr3wPHO8wAJeC', '15021476', '15021476@vnu.edu.vn', 'Phạm Thị Quỳnh  Mai', NULL, NULL, NULL),
(280, '15021478', '$2y$10$/NRX.4yKoBI1U3Xzf4qykehmEJkOntEaANkL2wXmic4OwXuD5JDoG', '15021478', '15021478@vnu.edu.vn', 'Nguyễn Thế  Ngọc', NULL, NULL, NULL),
(281, '15021480', '$2y$10$7Lz92Zw63.O7S0bZ/Ov9xuy6SlGYq8tccbGU3/v5NmJY1CwkQthCS', '15021480', '15021480@vnu.edu.vn', 'Vũ Ngọc  Quý', NULL, NULL, NULL),
(282, '15021486', '$2y$10$vxYF5jrCwq5cZRVM1iEFAe4UooFgQiZ.GN7wzTkEtA.80uDvYtoti', '15021486', '15021486@vnu.edu.vn', 'Nguyễn Đức  Toàn', NULL, NULL, NULL),
(283, '15021489', '$2y$10$jFYKO/9nD61bf/o3uYayI.JvfZw/9VujWJUVp3dX35mtfIR/X/q6K', '15021489', '15021489@vnu.edu.vn', 'Trần Thế  Hoàng', NULL, NULL, NULL),
(284, '15021492', '$2y$10$45FPljeXeC/71fhAAlXKwuBjSGXVn8e/wPgrYOhndRqEYJgIUutWe', '15021492', '15021492@vnu.edu.vn', 'Nguyễn Văn  Nhất', NULL, NULL, NULL),
(285, '15021494', '$2y$10$x7ICEOOeZqSYAQQCZje94OozCLgcy6nSxA8UJmRjwSH9588I4mGtm', '15021494', '15021494@vnu.edu.vn', 'Phan Chính  Quân', NULL, NULL, NULL),
(286, '15021499', '$2y$10$SGlk28/wppe4EiPCOMPyceq8a43fA16BVqwU1KaTxoZTgNnz0k7r.', '15021499', '15021499@vnu.edu.vn', 'Trần Đức  Phương', NULL, NULL, NULL),
(287, '15021502', '$2y$10$a50ROBBU/Q3KAjXZGH2otOT309YbUO.eWWEfiaMQN8gtJbGkoN29S', '15021502', '15021502@vnu.edu.vn', 'Nguyễn Thị Minh  Thu', NULL, NULL, NULL),
(288, '15021507', '$2y$10$8xpXeK7rGhHjBbvjP9VlLOqpwBnRFxICtNIAWhrTOZJ6OC31a81BO', '15021507', '15021507@vnu.edu.vn', 'Nguyễn Lương  Bằng', NULL, NULL, NULL),
(289, '15021509', '$2y$10$JCVX6Ow7Ub5jGFTSoJgW9.kPgOVK0PtaDP11IQGEsQYt0axsW.k5e', '15021509', '15021509@vnu.edu.vn', 'Phạm Xuân  Lộc', NULL, NULL, NULL),
(290, '15021510', '$2y$10$LP0kTlRCdEHutin/bGfyPOAIMTMmSs7omkspEgtrlX7nkGVJCpy.2', '15021510', '15021510@vnu.edu.vn', 'Phạm Văn  Hiệu', NULL, NULL, NULL),
(291, '15021513', '$2y$10$RZ501COH/PhTJBGlLheZIenpxeeVrCBr0SMH7TgtIdNM1K96ZeFLW', '15021513', '15021513@vnu.edu.vn', 'Phạm Đình  Trung', NULL, NULL, NULL),
(292, '15021521', '$2y$10$SwiestnSxjF3UUzQJ7YVXOlPrk3Fzk9Ubb/ZaT0ZKPN4A9LgLOBMm', '15021521', '15021521@vnu.edu.vn', 'Lê Hải  Châu', NULL, NULL, NULL),
(293, '15021523', '$2y$10$1biuQnOIYDZY3gNiUl5FDul8b06xThemmLMOOyRkKcTJbrFAKRygi', '15021523', '15021523@vnu.edu.vn', 'Nguyễn Tiến  Đạt', NULL, NULL, NULL),
(294, '15021526', '$2y$10$XU8l9pWAe8XXCi9xH9gabuGtlhU20jL8i5bDWY5j5Q4dkbALmQFXa', '15021526', '15021526@vnu.edu.vn', 'Nguyễn Đức  Thắng', NULL, NULL, NULL),
(295, '15021529', '$2y$10$WE212UL13vHTn4RKgnOfpugxs1Nyb2sH41leDmoalZSef7uq9BmfC', '15021529', '15021529@vnu.edu.vn', 'Mai Trường  An', NULL, NULL, NULL),
(296, '15021531', '$2y$10$foNLndXeBwi9wUU6Nh/BBe4dWTeB5Q7/uBXMRajZRvJ1zOaJQCS.C', '15021531', '15021531@vnu.edu.vn', 'Nguyễn Duy  Quân', NULL, NULL, NULL),
(297, '15021533', '$2y$10$BJLLol.LduSbVrtyvmZ0yuHhwzJKvQuo1pmuffdZCWG1BoSA.1m2C', '15021533', '15021533@vnu.edu.vn', 'Bùi Đình  Duy', NULL, NULL, NULL),
(298, '15021534', '$2y$10$XV560g2gFP16T1h0Rf5Z2.k6T0gJgURvIvjaA1j6KjDqqkcK3bIPO', '15021534', '15021534@vnu.edu.vn', 'Lương Thùy  Nhinh', NULL, NULL, NULL),
(299, '15021537', '$2y$10$x/7WEybMhP.xspt2/FvAiez.cZm4uIXdSg4rcqV7RL0CK.UwMMBna', '15021537', '15021537@vnu.edu.vn', 'Nguyễn Hoàng Khánh  Linh', NULL, NULL, NULL),
(300, '15021538', '$2y$10$Y9lCj49M.yl1wsnhsu6X2ujXGqz5BPa3dOl2.G6BKI4g/wCCxg9dS', '15021538', '15021538@vnu.edu.vn', 'Trần Quốc  Nam', NULL, NULL, NULL),
(301, '15021541', '$2y$10$5l3s8SnRq5zENpYRGCqQO.tl5zXLs4e9EN00eagrENXihjopzEWDG', '15021541', '15021541@vnu.edu.vn', 'Trần Xuân  Tuyến', NULL, NULL, NULL),
(302, '15021547', '$2y$10$XpeSnce0r3HSSru5WgIaX.khsK7RGN/SmlEiPbl3Dmx7Aj6o4nXuS', '15021547', '15021547@vnu.edu.vn', 'Hoàng Thế  Hợp', NULL, NULL, NULL),
(303, '15021548', '$2y$10$KpcqPxkN0FM6EB3W5Fy9UOTZzIqPSEdFNuaViAMGuZTf9Wqusxi4.', '15021548', '15021548@vnu.edu.vn', 'Trịnh Vũ Tuấn  Anh', NULL, NULL, NULL),
(304, '15021556', '$2y$10$ikGeZg/xj7bDNSEuf9KEkeQAm9sE9ZbByHN.hNnjNO0GDxBQp0lFe', '15021556', '15021556@vnu.edu.vn', 'Đỗ Thành  Nam', NULL, NULL, NULL),
(305, '15021570', '$2y$10$0DdPBYvXdfwzD8GeF7XMcO0Hv/BiQ36kL4VaY6VrZW4SRxY1xfjL2', '15021570', '15021570@vnu.edu.vn', 'Hoàng Tuấn  Hùng', NULL, NULL, NULL),
(306, '15021574', '$2y$10$uz4DVuT.Gwc1H8Zb8Uff6.9RQb4F0BqT9eYhNTl1xjUS8LrakKuk6', '15021574', '15021574@vnu.edu.vn', 'Trần Văn  Đông', NULL, NULL, NULL),
(307, '15021577', '$2y$10$.6HbOjvzISvN6Avqp5/suuq8u7qVYqO.blmbLUy/RdWPD8ojrD6Fu', '15021577', '15021577@vnu.edu.vn', 'Ngô Tiến  Thành', NULL, NULL, NULL),
(308, '15021582', '$2y$10$9l4lymEkVqy1zgHj8RodMeO2o0ZpYehxCCSQaWW8tZPJNcw41N5Ie', '15021582', '15021582@vnu.edu.vn', 'Lưu Minh  Châu', NULL, NULL, NULL),
(309, '15021584', '$2y$10$2BUTh2M/g0vxDrbkUKbBmOASZzc5wwNaSmIf.KUeKsUChC5MMcjbe', '15021584', '15021584@vnu.edu.vn', 'Vũ Minh  Trung', NULL, NULL, NULL),
(310, '15021593', '$2y$10$fTlXM/iN1ZxVWjmgUQcE0.nMD4CL3vUw5mN/vjwmjFFx.pXKp1UqW', '15021593', '15021593@vnu.edu.vn', 'Doãn Mạnh  Duy', NULL, NULL, NULL),
(311, '15021595', '$2y$10$dpvPvoyLMNk1xCFwO.RNF.IEy5cNILQrpxJBMQDzV1l7Ah.Yf4g46', '15021595', '15021595@vnu.edu.vn', 'Phạm Quang  Nam', NULL, NULL, NULL),
(312, '15021818', '$2y$10$AdRU7QepTUH.ZLE.QkSQOu4/9iaRx7rDNS571KJeptfn9DmjrOWXS', '15021818', '15021818@vnu.edu.vn', 'Lê Hồng  Đông', NULL, NULL, NULL),
(313, '15021828', '$2y$10$fOscuufUOpxPTpFYbN4wJ.z3ys4fN33RGwicnTb8GTSB/nHClC6yC', '15021828', '15021828@vnu.edu.vn', 'Bùi Văn  Linh', NULL, NULL, NULL),
(314, '15021919', '$2y$10$qR/Lx0aDzJj4TuLKFaIo2e3e.SQ3gxiP9WVu/e8ujkzJF5WYX2CsW', '15021919', '15021919@vnu.edu.vn', 'Nguyễn Thị Thu  Hương', NULL, NULL, NULL),
(315, '15021924', '$2y$10$2eyIR6Fp3rR0HDRWkvRLHuAvrAAJAzsPlLGjJKzVhIoUhFn/AMJXm', '15021924', '15021924@vnu.edu.vn', 'Phan Anh  Dương', NULL, NULL, NULL),
(316, '15021930', '$2y$10$9MoEVLfYjG8U3BLamKIvuehfcfJuTG90exTp2fwpMGKKFlHcChB.6', '15021930', '15021930@vnu.edu.vn', 'Phạm Thanh  Tú', NULL, NULL, NULL),
(317, '15021933', '$2y$10$qajdQ6knZD2bkj4riK6DWuHl3wudSqe3kpPgi88mwcE0.lQj60uha', '15021933', '15021933@vnu.edu.vn', 'Phạm Văn  Thịnh', NULL, NULL, NULL),
(318, '15021934', '$2y$10$KKOVekhcwRD8JGGJtaaxGO934sCaLjvHv/RRomie1X0xS45hv1lnK', '15021934', '15021934@vnu.edu.vn', 'Nguyễn Văn  Chiến', NULL, NULL, NULL),
(319, '15021938', '$2y$10$cnN/7u9jkqb/qPQrnpsnVu3I5hiPSaiL1nTZwVUiWTY5C.ySSCMzy', '15021938', '15021938@vnu.edu.vn', 'Nguyễn Văn  Nam', NULL, NULL, NULL),
(320, '15021948', '$2y$10$F6fcedN9VqytAsb2orwY0urrcLh4iYx6TMK8Hvl2eQTBK618Pk4ii', '15021948', '15021948@vnu.edu.vn', 'Nguyễn Mạnh  Linh', NULL, NULL, NULL),
(321, '15021951', '$2y$10$z9yP5LojR9Z27LcpiuSKXu8Z0mw.wpLOpfBgUFo5MGm7JftPAEpjy', '15021951', '15021951@vnu.edu.vn', 'Lưu Quỳnh  Trang', NULL, NULL, NULL);
INSERT INTO `students` (`id`, `username`, `password`, `student_code`, `email`, `full_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(322, '15021952', '$2y$10$VVAgvtaVs0AfK8J1eTpWKeHXN6dfw1Q31z6QEeBMdUI6NjA3faXCC', '15021952', '15021952@vnu.edu.vn', 'Đinh Nguyễn Hoàng  Hiệp', NULL, NULL, NULL),
(323, '15021973', '$2y$10$jm8fz.KErC2TEZdBFaNS9uLNvnFHIn/pCi9YWYs2M6uo5f5fKD4Tq', '15021973', '15021973@vnu.edu.vn', ' Phạm Ngọc  Quang', NULL, NULL, NULL),
(324, '15021987', '$2y$10$s2QewHzi91pSVscr7ICODeNtauCh4CIPbQVmfjfMa8AEhwZe3/EHK', '15021987', '15021987@vnu.edu.vn', 'Trần Ngọc  Hoàn', NULL, NULL, NULL),
(325, '15021988', '$2y$10$D4cABPEaKpFBa2omhalfXeMIQWEJNJ/SG67CtY7De7Xc0kP3H1pQi', '15021988', '15021988@vnu.edu.vn', 'Lê Văn  Lợi', NULL, NULL, NULL),
(326, '15022245', '$2y$10$5AwksQaIb67TqKKiDtQG1.FFubCb6wJq0/s56iYUthuZj0uhIzSSC', '15022245', '15022245@vnu.edu.vn', 'Vương Quang  Huy', NULL, NULL, NULL),
(327, '15022247', '$2y$10$OeNEtaw7Zrx0jfpzL.bt..i3Kz47Q9aYBKmnQ7PghUIoT9zrtJcZW', '15022247', '15022247@vnu.edu.vn', 'Nguyễn Vũ  Đức', NULL, NULL, NULL),
(328, '15022252', '$2y$10$deGGgpIfQSEDZl8cf3hmZ./kjb9WK/GRiLNpyXPNeqtpzvXkoq3CK', '15022252', '15022252@vnu.edu.vn', 'Nguyễn Đức  Triều', NULL, NULL, NULL),
(329, '15022257', '$2y$10$q52hT/SlLjRUlnDAJuDmuuIYyBZB261wzpfhJCa5X6XGCmrnlJ97C', '15022257', '15022257@vnu.edu.vn', 'Đào Thị Thanh  Thảo', NULL, NULL, NULL),
(330, '15022258', '$2y$10$2/qvYZdoV8Ky4ZeacFd93OTB2yIHQxEgN.w2GhWFfpKLo0IrroMY6', '15022258', '15022258@vnu.edu.vn', 'Nguyễn Bá Quang  Cường', NULL, NULL, NULL),
(331, '15022264', '$2y$10$Jp/MgNC09wtUu38y10HaBOTNZggrXfY3EtYhWt2L.s1lSHNE/CAOW', '15022264', '15022264@vnu.edu.vn', 'Nguyễn Tiến  Trung', NULL, NULL, NULL),
(332, '15022269', '$2y$10$EmsXUs0tlbb8lfwJmQ9xsejLWvD6M9SFddOfqKcovI3bvvXBWj3N6', '15022269', '15022269@vnu.edu.vn', 'Nguyễn Thị  Hảo', NULL, NULL, NULL),
(333, '15022272', '$2y$10$P.Sped4QuzU/m6M7AAx13O6XiIWmZ96hrNeIYpit2CL.Mi9byZsiW', '15022272', '15022272@vnu.edu.vn', 'Bùi Ngọc  Thắng', NULL, NULL, NULL),
(334, '15022280', '$2y$10$0wCovqeojhNN4C9dD5NtwuDdSOoHUcYZAoTUjH27YksLn/i8Z9APq', '15022280', '15022280@vnu.edu.vn', 'Nguyễn Xuân  Quyền', NULL, NULL, NULL),
(335, '15022281', '$2y$10$aGlFcAHO33RWwgeZWBbKOumrM38wLC0Z7SPKsXn0r/LjdKm8xn1WC', '15022281', '15022281@vnu.edu.vn', 'Cao Duy  Văn', NULL, NULL, NULL),
(336, '15022286', '$2y$10$twrOzio1Wt8wefrDQLpPyeh.rQ430dLEbmxms/Nggkcaz6LMfRRSq', '15022286', '15022286@vnu.edu.vn', 'Vũ Huy  Phát', NULL, NULL, NULL),
(337, '15022288', '$2y$10$xROgy0q088eS.RH5PlHUHu2Ve6ZnUpsSdJ3C6YqdHjPmWMnBoaJd.', '15022288', '15022288@vnu.edu.vn', 'Phan Đức  Huân', NULL, NULL, NULL),
(338, '15022290', '$2y$10$iazk1p6gPEu068Q8eFjaaOyhGDtDa6G95tRlS9gMNAP0XQxAvFsZe', '15022290', '15022290@vnu.edu.vn', 'Trần Anh  Tuấn', NULL, NULL, NULL),
(339, '15022292', '$2y$10$wrsOvYp3oKRbEXA5iOOA9Oqsb1UVB.0vyD20kIiRf1mHhsB5pOa1m', '15022292', '15022292@vnu.edu.vn', 'Nguyễn Đức  Thắng', NULL, NULL, NULL),
(340, '15022295', '$2y$10$iEsE4FTLSUMRk/MNX8AtFeb8AD3ACvx2l85v7dXmXhb5ciJgIOpsu', '15022295', '15022295@vnu.edu.vn', 'Trần Công  Anh', NULL, NULL, NULL),
(341, '15022300', '$2y$10$HT9u97QWTnTFT/RvHhRHZe7s1781HUTIFVVn4iqYNbGet5ee2xq9K', '15022300', '15022300@vnu.edu.vn', 'Nguyễn Thị Thu  Uyên', NULL, NULL, NULL),
(342, '15022306', '$2y$10$3wAFE2sQcWkyrmyw148CDucqF1UFd.FdekyN9Fg5nKJEs10YCvC7G', '15022306', '15022306@vnu.edu.vn', 'Lương Thị  Thủy', NULL, NULL, NULL),
(343, '15022308', '$2y$10$39neBTUJhgmtQJgU4WaPUuQrf8u4zID4CfAUMf7TZ4Wf0mSkRpz9S', '15022308', '15022308@vnu.edu.vn', 'Lâm Hồng  Công', NULL, NULL, NULL),
(344, '15022706', '$2y$10$T4jNCbuWKFyn4nrNXzy4tOAbJM0uw.1dzKJcV0uTO4ttuimsh8Pj.', '15022706', '15022706@vnu.edu.vn', 'Nguyễn Ngô  Doanh', NULL, NULL, NULL),
(345, '15022708', '$2y$10$otHdU82NXhrPW23WqWABeObiJXuByGBWcKiJAId7/Hm21uIxZx/9K', '15022708', '15022708@vnu.edu.vn', 'Nguyễn Khắc  Minh', NULL, NULL, NULL),
(346, '15022709', '$2y$10$8/pIL/HH//VRmpaS4Eg4xeTWuTvPG84ZEySvQMuWvZ3wMToKouEsK', '15022709', '15022709@vnu.edu.vn', 'Đặng Thị  Sáu', NULL, NULL, NULL),
(347, '15022713', '$2y$10$sn5/RwEyvJLx7dl7IE3jZusjd0LwtDuUAADQVQsTN/6qujIlgSm/m', '15022713', '15022713@vnu.edu.vn', 'Nguyễn Lương  Quyền', NULL, NULL, NULL),
(348, '15022720', '$2y$10$plpFucaPHFqxcfSzUhp9oeTFmugo3gMgeSWHuLe5EOSoI29VIPgXK', '15022720', '15022720@vnu.edu.vn', 'Trần Chính  Đoàn', NULL, NULL, NULL),
(349, '15022725', '$2y$10$WsWzoImU/Yp6tjuoj9cLl.R8B3LWSxsPMARQLQcWcIswxg77J6vv.', '15022725', '15022725@vnu.edu.vn', 'Lê Anh  Tuấn', NULL, NULL, NULL),
(350, '15022726', '$2y$10$2Ak0UYBoCsT0X6PUKb586eiWxAYp7k2ALl/7Irq.iwyLI.BzZ/XJS', '15022726', '15022726@vnu.edu.vn', 'Phạm Thế  Huy', NULL, NULL, NULL),
(351, '15022727', '$2y$10$PbtTjq1lCJpfUjPBQvXnyeS.RryuRA7cvTO9WuYZJZmHfNsVs4Jwa', '15022727', '15022727@vnu.edu.vn', 'Nguyễn Văn  Quang', NULL, NULL, NULL),
(352, '15022736', '$2y$10$bgwGWMCu5xbF2uY7WOyGcO8c52LXrpUC96GTJ79rpnD04B8aJVKAG', '15022736', '15022736@vnu.edu.vn', 'Tạ Hoàng  Nguyên', NULL, NULL, NULL),
(353, '15022737', '$2y$10$QEHUciZKG1KROKO3tjNQWOsiVXdR4nR45P9wQQcYols8FSIM57H1i', '15022737', '15022737@vnu.edu.vn', 'Lã Văn  Hùng', NULL, NULL, NULL),
(354, '15022741', '$2y$10$l1rq6Bbw41/Ld.ZApjkrse7u7uVL9FtOMJpW7W5pFOdjj9dGwlhSK', '15022741', '15022741@vnu.edu.vn', 'Lương Đình  Bắc', NULL, NULL, NULL),
(355, '15022742', '$2y$10$flY05DMHgViACK0gbB.WuetnJtkIVrdVorA7sJucYsE3mKYOY8Tfa', '15022742', '15022742@vnu.edu.vn', 'Đinh Thị  Hiếu', NULL, NULL, NULL),
(356, '15022748', '$2y$10$gpeCwupFQG4NwH2xkV79EOX2KxUBy91z7sBC2RXrCZe0Xc27hx1mS', '15022748', '15022748@vnu.edu.vn', 'Nguyễn Danh  Hùng', NULL, NULL, NULL),
(357, '15022751', '$2y$10$/hhQ1KWdZzzlm0ZD3jzpDOBplbEI0LzIveX9tPa2agXSVm0X.u8eq', '15022751', '15022751@vnu.edu.vn', 'Đỗ Thành  Long', NULL, NULL, NULL),
(358, '15022755', '$2y$10$1/80818kujMsPWIBniPEI.mtiNX4GBKY2kKwO57s7Pa8o5JtJYVC2', '15022755', '15022755@vnu.edu.vn', 'Phạm Đình  Thành', NULL, NULL, NULL),
(359, '15022764', '$2y$10$1TZ.u8HbpLyZb9gWGlT6xe9fgdajcZtTrwZZRWsh9Bel2zM38Iao6', '15022764', '15022764@vnu.edu.vn', 'Trần Thị  Thơ', NULL, NULL, NULL),
(360, '15022773', '$2y$10$88AwKgp2tkB/vXiTDRqdIOGGxQDmDiGMfnceAneNuvrTR0vPX9SuC', '15022773', '15022773@vnu.edu.vn', 'Đỗ Thị Thanh  Dịu', NULL, NULL, NULL),
(361, '15022807', '$2y$10$mkfWqrIIGqZli6oGcD.yXOO1Yan8lJphSl40lIl/3DmXNaK/PHwJC', '15022807', '15022807@vnu.edu.vn', 'Nguyễn Thu  Hằng', NULL, NULL, NULL),
(362, '15022808', '$2y$10$XtSM.uMlARycI5JyYlegA.QvkLwKf6PZv04g1YCMBEdtzcfi93nkO', '15022808', '15022808@vnu.edu.vn', 'Nguyễn Văn  Chương', NULL, NULL, NULL),
(363, '15022809', '$2y$10$q71MUqhw7SJjtRi7UpvNKORTyDrpo967ItLYa9V9F/Q4MkC91c3HW', '15022809', '15022809@vnu.edu.vn', 'Nguyễn Văn  Ngọc', NULL, NULL, NULL),
(364, '15022811', '$2y$10$mt4aBqFs9ffee1Q86xc.2elc430EfLAvlmvRN79Ia2ZhyRD7gjLge', '15022811', '15022811@vnu.edu.vn', 'Đoàn  Lương', NULL, NULL, NULL),
(365, '15022812', '$2y$10$WJufASEz4RwBiFFunS92MeHzaYb5xkpdOWydjH2SJYVGxuYQ9bGxC', '15022812', '15022812@vnu.edu.vn', 'Nguyễn Thị  Hoài', NULL, NULL, NULL),
(366, '15022813', '$2y$10$XkyB81.7EEYpMDFOi7jbtOsxnodq4Eckdo79p4BX34ToCY18bNy2q', '15022813', '15022813@vnu.edu.vn', 'Trần Hoài  An', NULL, NULL, NULL),
(367, '15022815', '$2y$10$.876qKz6TlCJcbaOPkgPm.E9zfaBHSUA5M.Yq3WouaY/BOKh.pO.O', '15022815', '15022815@vnu.edu.vn', 'Tạ Trung  Kiên', NULL, NULL, NULL),
(368, '15022816', '$2y$10$yAIXTxkL0YMCVb8KSr7Oi.xlmyeLhcQhg6zsNhwtnrjI0ME1bd3pC', '15022816', '15022816@vnu.edu.vn', 'Vũ Văn  Đạt', NULL, NULL, NULL),
(369, '15022817', '$2y$10$Mh8Z1TrJUNYbHtNOhQds4.TC14bI7adzW.EWJE0ZiVWg06kzA3iQa', '15022817', '15022817@vnu.edu.vn', 'Nguyễn Lưu  Hoàng', NULL, NULL, NULL),
(370, '15022818', '$2y$10$ElsKHPkTNxq3bRnusZnK1u1aVouWHYSog9iT/cgymUG2kUEsbkpiG', '15022818', '15022818@vnu.edu.vn', 'Tạ Đình  Lượng', NULL, NULL, NULL),
(371, '15022869', '$2y$10$YEGH9UiglVo8CmRaVNlLxevypqfJPlHKOPb8VarsFtkdY5GE4d1Ya', '15022869', '15022869@vnu.edu.vn', 'Khương Tuấn  Dũng', NULL, NULL, NULL),
(372, '16020803', '$2y$10$kc/sqZASj9erh0FKSwnhc.l.lhGjqOSLMcFhIJP5BObJDx7bgsH.a', '16020803', '16020803@vnu.edu.vn', 'Vũ Đình  Thắng', NULL, NULL, NULL),
(373, '16021523', '$2y$10$6D1dydl/mHF0pipe7C9rFubPTrAZ9NaldSEudQUU.nelRp6keu1p2', '16021523', '16021523@vnu.edu.vn', 'Nguyễn Văn  Thức', NULL, NULL, NULL),
(374, '16021526', '$2y$10$TTjFWkcnzYS28lnfw.dH4uHi7wmwfMgSq2fmbCl80tXgIopRzT/UO', '16021526', '16021526@vnu.edu.vn', 'Lê Văn  Tiến', NULL, NULL, NULL),
(375, '16021532', '$2y$10$aAvEAbtjeAiQQAEBXujcU.ZB0LfCxahmNIFT6qDx9TmZjpRay1Y7S', '16021532', '16021532@vnu.edu.vn', 'Nguyễn Anh  Tú', NULL, NULL, NULL),
(376, '16021536', '$2y$10$UM3i5suxvoyblrSjzeSTTOhMG6vXCGmOxMCqxByLr7fzqpzIYn7P6', '16021536', '16021536@vnu.edu.vn', 'Hoàng Nguyễn Minh  Tuấn', NULL, NULL, NULL),
(377, '16021537', '$2y$10$2rKPjYty8YPjtTsPxR8ePe1Qll1nE6hIcqT6pwvmz0F7bIOb9gVfO', '16021537', '16021537@vnu.edu.vn', 'Lê Hồng Anh  Tuấn', NULL, NULL, NULL),
(378, '16021538', '$2y$10$BppxHi6gYr2Ffm2/KAfjLeOmIuaIKugLJGVTQgGQVGkZAsnGSdWiq', '16021538', '16021538@vnu.edu.vn', 'Nguyễn Duy  Tuấn', NULL, NULL, NULL),
(379, '16021541', '$2y$10$WrvEUko/8PVhxdFEQV.Te.RgBHtQnb.Xyc5eWqUDA71SNmM7OaiRO', '16021541', '16021541@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(380, '16021542', '$2y$10$Ue/Oe7w/2khvFfD1cnFVw.dwq0.q1PYqZkHJ4gWC1YBKC6atqYQji', '16021542', '16021542@vnu.edu.vn', 'Nguyễn Thanh  Tùng', NULL, NULL, NULL),
(381, '16021544', '$2y$10$rhcT9nr7SVEAtbeedMBThOG6cm9toLp3QPCNSZK.D2JGYFxEzgA4m', '16021544', '16021544@vnu.edu.vn', 'Ngô Văn  Tuyến', NULL, NULL, NULL),
(382, '16021551', '$2y$10$4lWxbf8fdh2vl.nBKRLcdOVhwuaU5V/XqC0T3ZnQglmvETq2tFeuq', '16021551', '16021551@vnu.edu.vn', 'Đào Thế  Anh', NULL, NULL, NULL),
(383, '16021554', '$2y$10$kt.zc/xHIGU6Jfgto3n.pObCkM/BqGe/caWv644Z.IciOIXfKnn72', '16021554', '16021554@vnu.edu.vn', 'Phạm Tuấn  Anh', NULL, NULL, NULL),
(384, '16021562', '$2y$10$jqp/6v.5JBBKoFsIptLu9.unhIo10L0g/BzmnB5ovsrQLM9IGf/LW', '16021562', '16021562@vnu.edu.vn', 'Nguyễn Ngọc  Doanh', NULL, NULL, NULL),
(385, '16021563', '$2y$10$3zzlon1h.z/iZ7CLERVTUOy0RdOMcksUJC0ORv/a5z/LzS8BzZ/fi', '16021563', '16021563@vnu.edu.vn', 'Trần Quý  Đông', NULL, NULL, NULL),
(386, '16021565', '$2y$10$XNI8pXzws5OXqYRxlh3NjedaK3.dpCZOG88O.kpQmhVbJ0BzpPXPy', '16021565', '16021565@vnu.edu.vn', 'Phạm Ngô Tiến  Dũng', NULL, NULL, NULL),
(387, '16021570', '$2y$10$9q.vTggd8TjS9VyPdSy8deBu93.z7o9.0vwG1KCt8YnvttPdZN2/S', '16021570', '16021570@vnu.edu.vn', 'Vương Xuân  Dương', NULL, NULL, NULL),
(388, '16021571', '$2y$10$jvYzOcj7eGBSA.LQ6IJOXuc5os1Ig6SeKzW6k8ivc8AaGLuQN.2Nu', '16021571', '16021571@vnu.edu.vn', 'Trần Đại Trường  Giang', NULL, NULL, NULL),
(389, '16021572', '$2y$10$9V1BQQEzsQtro0/eMZ41GOkLEbBCO2xc3VK4VWgNYxGAgVCVpY8eq', '16021572', '16021572@vnu.edu.vn', 'Hoàng Thái  Hà', NULL, NULL, NULL),
(390, '16021574', '$2y$10$6m8ud6ry8O.1zCUbmpcOIuwR3p0M4V5eFkHUquddaYv0NrBm1aY6y', '16021574', '16021574@vnu.edu.vn', 'Nguyễn Minh  Hiền', NULL, NULL, NULL),
(391, '16021577', '$2y$10$3TLf2S47yaPWVDXwca7f1u4OgcyU9LNUB0Jyuuqs/T51kVXsOz5IW', '16021577', '16021577@vnu.edu.vn', 'Đỗ Minh  Hiếu', NULL, NULL, NULL),
(392, '16021580', '$2y$10$iqQAPnnuIJsgsj.NeuMBoOC3U.m6UIBJLYlyaeqrH9BdomdItfqvK', '16021580', '16021580@vnu.edu.vn', 'Nguyễn Đắc  Hoàn', NULL, NULL, NULL),
(393, '16021585', '$2y$10$26L2JzGaGV5clbBSsjc4vumuuNEdAn.0gME7nj27X1r1h/EAq4CMa', '16021585', '16021585@vnu.edu.vn', 'Trương Xuân  Hội', NULL, NULL, NULL),
(394, '16021588', '$2y$10$Jf9MLXNQFXG6Yw9dT8uFse6xa3a7GCQzG04jt3Q0bR6Gg36qoCI0m', '16021588', '16021588@vnu.edu.vn', 'Nguyễn Việt  Hùng', NULL, NULL, NULL),
(395, '16021589', '$2y$10$Zjbxph.cTmQkAcl0SI0h7OjviSJOisWklq1rcfFVr4gW31s45P10S', '16021589', '16021589@vnu.edu.vn', 'Cao Hữu  Hưng', NULL, NULL, NULL),
(396, '16021591', '$2y$10$M7tXz1XeYvSQ2MOBa7sSvOChzecgFiy/sEEW8YGaKkafuI0ajL1By', '16021591', '16021591@vnu.edu.vn', 'Lê Duy  Hưng', NULL, NULL, NULL),
(397, '16021594', '$2y$10$mfRaQNSX63Lfu2/kMIosOebeeKipz/ai/W97Ck7Sv5PmNgedQ5Y3.', '16021594', '16021594@vnu.edu.vn', 'Nguyễn Công  Huynh', NULL, NULL, NULL),
(398, '16021597', '$2y$10$eGNp1po280oLGrrkGCuPLeJ4CuuOWPURAx8Ll7qM4OxYo8U7NDfwa', '16021597', '16021597@vnu.edu.vn', 'Đào Ngọc  Lâm', NULL, NULL, NULL),
(399, '16021601', '$2y$10$7SqIKvoqzgCs44qKEg/aLu9j9fw6r4kjaDJN/FNnQK5QOVPPxZGAW', '16021601', '16021601@vnu.edu.vn', 'Ninh Thị Nhật  Lệ', NULL, NULL, NULL),
(400, '16021602', '$2y$10$/kmLFBLtSWcXIdV5hn2KOu1n/SFwQx/O6xAEbZMhIzuyXmDCb53KO', '16021602', '16021602@vnu.edu.vn', 'Đỗ Huy  Linh', NULL, NULL, NULL),
(401, '16021605', '$2y$10$FFqpgPpBllvpEPhEZ9ebYOQH6e9gH/Npb.7zvXoWuiq.bGshuZUqi', '16021605', '16021605@vnu.edu.vn', 'Nguyễn Đăng Bảo  Long', NULL, NULL, NULL),
(402, '16021607', '$2y$10$UdIBiSJ8RL9RFNtzehZH8.xqa1ghbMYYFLuv.kLImVo1TirLBzc2u', '16021607', '16021607@vnu.edu.vn', 'Đồng Thị Thanh  Lương', NULL, NULL, NULL),
(403, '16021610', '$2y$10$VvUuO5g8.D4np8pIufugTuGLVklxlDGITLMWOH4DjWNUqkDzdJjn6', '16021610', '16021610@vnu.edu.vn', 'Phạm Tiến  Mạnh', NULL, NULL, NULL),
(404, '16021614', '$2y$10$8bA3YX1RGQ4enx0LEkTvse3pDPFJGJsF9CTiQANRVm4n1uS4J/g22', '16021614', '16021614@vnu.edu.vn', 'Bùi Phương  Nam', NULL, NULL, NULL),
(405, '16021616', '$2y$10$dcz.cvqNUHvZUzEn0EvALed8eDcWoK11DK8OQv3vH9btsRHFowplS', '16021616', '16021616@vnu.edu.vn', 'Trương Văn  Nam', NULL, NULL, NULL),
(406, '16021617', '$2y$10$cSQbSkYU6lXXc1diHyOWnuAg3pVOIcEF/vcioBg6b/5FFn7O.ZnRW', '16021617', '16021617@vnu.edu.vn', 'Nguyễn Thị Thúy  Nga', NULL, NULL, NULL),
(407, '16021621', '$2y$10$pT/a1umI2RLsHWvRCxiAS.ShdxPBi0jGTdp.1vG6KAhKyYc7Wcyjq', '16021621', '16021621@vnu.edu.vn', 'Bùi Thị Hồng  Nhung', NULL, NULL, NULL),
(408, '16021622', '$2y$10$NZbSqfY7ZQ5i8KoWvryjSOoGoGQqxuF3eJ737X6M2U52jf4rHR5bm', '16021622', '16021622@vnu.edu.vn', 'Tăng Thị  Nhung', NULL, NULL, NULL),
(409, '16021623', '$2y$10$9iI.cwgkToQ2VkDG8kVvIuOEsg1CFT6.zReMtdwOMQOHfD2dVRfPW', '16021623', '16021623@vnu.edu.vn', 'Kiều Thanh  Phong', NULL, NULL, NULL),
(410, '16021626', '$2y$10$UwW8N157EXPy6KejxMtOZeQWjsZNFLYPFMFZqdI4lyj.IgbSYHUlm', '16021626', '16021626@vnu.edu.vn', 'Đỗ Hữu  Phúc', NULL, NULL, NULL),
(411, '16021628', '$2y$10$KgPzGTKs2cwz.gODt0Wz.O618/StilbB0eGu6xZdWA4vgU3/ptu4S', '16021628', '16021628@vnu.edu.vn', 'Phan Tiến  Phước', NULL, NULL, NULL),
(412, '16021629', '$2y$10$NA5Cc3veN.QzKdFqorJyq.x5mlzUiV5Js3Ogw9I4.nXf4nScfXhDS', '16021629', '16021629@vnu.edu.vn', 'Ngô Minh  Phương', NULL, NULL, NULL),
(413, '16021636', '$2y$10$oPQyGltqo0OBAHMqYK60heNKnzMTK5DHH2Bxb6LMC3Wy0DUu9Yk5K', '16021636', '16021636@vnu.edu.vn', 'Phạm Văn  Quyến', NULL, NULL, NULL),
(414, '16021637', '$2y$10$DGeUru51PgqOMNdUcV745eShq4zPO4H9vI3eY65cGe5McAOx9WfjK', '16021637', '16021637@vnu.edu.vn', 'Phạm Xuân  Quỳnh', NULL, NULL, NULL),
(415, '16021644', '$2y$10$jcmNgP2ARepMg00TfQPhzuXwaGC6txEeTHb3hOH/QTxUdik.Og2X6', '16021644', '16021644@vnu.edu.vn', 'Phan Văn  Thắng', NULL, NULL, NULL),
(416, '16021647', '$2y$10$n2VWEElODZjZMceGB34IYep9jy21/ysh4xyc0pSr.uXHw00.S0bt2', '16021647', '16021647@vnu.edu.vn', 'Đồng Văn  Thành', NULL, NULL, NULL),
(417, '16021650', '$2y$10$CutTwsdpJWcyfpXBhyCFj.SseSX4sYY75y6LxIox.sUFZn1zLMivG', '16021650', '16021650@vnu.edu.vn', 'Nguyễn Khắc  Thành', NULL, NULL, NULL),
(418, '16021652', '$2y$10$5nJt6mcR64eSOMrfFZ.qMuPqjiqSRf3.iZWIdC05cFnB.HbHtZKJC', '16021652', '16021652@vnu.edu.vn', 'Nguyễn Thị Thanh  Thư', NULL, NULL, NULL),
(419, '16021655', '$2y$10$Ymyv0TZEgWxKYG.jPU7uMOyr6zbuzrRv3bUNDjhsci6ykDwJ0WJHW', '16021655', '16021655@vnu.edu.vn', 'Lê Đức  Toàn', NULL, NULL, NULL),
(420, '16021658', '$2y$10$WAwH2fH/3wcCPZjLvi4Oo.oLmnE6hS2ETi5WrDcO9cg3cn/l.4Hwq', '16021658', '16021658@vnu.edu.vn', 'Mai Phúc  Triệu', NULL, NULL, NULL),
(421, '16021659', '$2y$10$srsdk2Ii5wpU2.J37xWyMus8RKD8HMCbM/jfCEWOJTKLnucHLMTRG', '16021659', '16021659@vnu.edu.vn', 'Đinh Bá  Trung', NULL, NULL, NULL),
(422, '16021672', '$2y$10$kVIrg2YtAEuTHEOkAa1f8uR795W3p/vPKdS.5Oo1JFAwhC3fXCu8e', '16021672', '16021672@vnu.edu.vn', 'Trần Tiến  Anh', NULL, NULL, NULL),
(423, '16021678', '$2y$10$MhgfM.M7Z6yv3dn4H31eLey1bzArWQUtDBdvBP2ofzapdaGu3wUtC', '16021678', '16021678@vnu.edu.vn', 'Trần Thị Linh  Chi', NULL, NULL, NULL),
(424, '16021682', '$2y$10$384DDe56L2uIrMXJHzSYHOYx/Yp9R9poNLmcwWwra6Kjq8fccP1Wq', '16021682', '16021682@vnu.edu.vn', 'Hà Văn  Đăng', NULL, NULL, NULL),
(425, '16021690', '$2y$10$7FYZ.dS97ypeRpKzIoQRVOlhuC6wV7H2tMJaXz4Wy3.PoSXA8/vcK', '16021690', '16021690@vnu.edu.vn', 'Dương Tuấn  Dũng', NULL, NULL, NULL),
(426, '16021693', '$2y$10$pc8hBxzUm1htAgC6VPNkn.mBw/PUrzeb9v8SL.NSs.3Yj0sSLtxRm', '16021693', '16021693@vnu.edu.vn', 'Phan Lạc  Dương', NULL, NULL, NULL),
(427, '16021715', '$2y$10$cEb7p7eTeISgOUoTtRn/refQZEj11cSJehQR3BiFLVUqMzKa2GeAW', '16021715', '16021715@vnu.edu.vn', 'Phan Ngọc  Huy', NULL, NULL, NULL),
(428, '16021721', '$2y$10$Sxp.18vHg4IRHDgAQIg3o.hapKTeDsFD8jE5VrgCOgfWqRru3X3tu', '16021721', '16021721@vnu.edu.vn', 'Vũ Thị Ngọc  Khánh', NULL, NULL, NULL),
(429, '16021726', '$2y$10$XsFXPsnbsooUNGTXrQeGhucq0dynKZvY0/edznnKPi2xAz31w9.MC', '16021726', '16021726@vnu.edu.vn', 'Nguyễn Thế  Lâm', NULL, NULL, NULL),
(430, '16021730', '$2y$10$hJozCD88PwLZPht632MitOwg0ASNGtUGnDtwIACyzKovlp6CEKaru', '16021730', '16021730@vnu.edu.vn', 'Trần Quyền  Linh', NULL, NULL, NULL),
(431, '16021740', '$2y$10$aibNj74PVPbfnA9kxSdsauoOtTE5eq/y0q3Gvjoct7pE2UD2qY06W', '16021740', '16021740@vnu.edu.vn', 'Nguyễn Nghĩa  Minh', NULL, NULL, NULL),
(432, '16021743', '$2y$10$zU7eeDvd5r46S8vvKCsl2uh4dhysuFLu2EtUQa.USZqmnJBc9b2gi', '16021743', '16021743@vnu.edu.vn', 'Lê Trọng  Nghĩa', NULL, NULL, NULL),
(433, '16021745', '$2y$10$ilXZ5mplEx3HevF8swFk5OpWzvC0dEa1kTWl5J0k79ZeWM0KsZVrG', '16021745', '16021745@vnu.edu.vn', 'Nguyễn Sỹ  Nhân', NULL, NULL, NULL),
(434, '16021746', '$2y$10$dFk11bT99dHcxuLkGclV8.BIqMXbMRBuhrScV5JOkFeU2/VGuKhVm', '16021746', '16021746@vnu.edu.vn', 'Hà Thị Hồng  Nhung', NULL, NULL, NULL),
(435, '16021767', '$2y$10$Vl9jCHF31Zzr/zw8BQKqsuBEkv/823XOYhiT0czD/wtlOsfbrDS1.', '16021767', '16021767@vnu.edu.vn', 'Nguyễn Thị  Thoa', NULL, NULL, NULL),
(436, '16021768', '$2y$10$ywUJrqVaD.1I692O/qX7a.L.LhnlH86SCwCgMkmTIjA7NjGpSCHSW', '16021768', '16021768@vnu.edu.vn', 'Nguyễn Quang  Thông', NULL, NULL, NULL),
(437, '16021769', '$2y$10$kDZv7ZjsgLJQDeOLJjz.oOq0E9LHhXEPf8MNyOm44VA6Mg3Mpg0c2', '16021769', '16021769@vnu.edu.vn', 'Nguyễn Thị  Thường', NULL, NULL, NULL),
(438, '16021779', '$2y$10$Aa1dkmijtE1J32/JHB9VPu8P5ZtnaaN1GlIh/g9qlNLYpzrptk9Ou', '16021779', '16021779@vnu.edu.vn', 'Hoàng Lê Anh  Tuấn', NULL, NULL, NULL),
(439, '16021787', '$2y$10$PSkQqVrCLWmoh73xi.akV.dPXvmXj2e5OPD7yW6DrYmVQiy6FaJri', '16021787', '16021787@vnu.edu.vn', 'Nguyễn Trọng  Vinh', NULL, NULL, NULL),
(440, '16021824', '$2y$10$RafOnv2xI9RREM3U.9wvTejjoZntaELuV7TO.MUCIqiUT0/OuqxKe', '16021824', '16021824@vnu.edu.vn', 'Đỗ Thành  Đạt', NULL, NULL, NULL),
(441, '16021832', '$2y$10$Hdtxxu//l1w.1TkOApetbuWfjHFh4aI4285QVGizMVX6uVlTrrD1W', '16021832', '16021832@vnu.edu.vn', 'Nguyễn Gia  Phong', NULL, NULL, NULL),
(442, '16021843', '$2y$10$sAXUgUOuL5rklIIlV4XrIOPVjK2nh6u476FA5bx97rc7two8mCPFC', '16021843', '16021843@vnu.edu.vn', 'Nguyễn Thị Hoàng  Oanh', NULL, NULL, NULL),
(443, '16021861', '$2y$10$dOYPjADh43zb6dcWxmjYDug7rleGiwKHrb1BSyyIyJJkM.vVz0FO6', '16021861', '16021861@vnu.edu.vn', 'Đặng Mỹ  Duyên', NULL, NULL, NULL),
(444, '16021878', '$2y$10$/99DWWryz9m1v64hz4XzTeIFpgW0HHDNF3aUxZJYLltKnIWZ/R0D.', '16021878', '16021878@vnu.edu.vn', 'Hoàng Đình  Nam', NULL, NULL, NULL),
(445, '16021890', '$2y$10$7xXTzC11A1UHTLFr43/g.ed6H.4Etv5pBy19Nb6S1cVsWpVE2VXR2', '16021890', '16021890@vnu.edu.vn', 'Nguyễn Văn  Thắng', NULL, NULL, NULL),
(446, '16021941', '$2y$10$s4hdj1B3KAuACm/f.nhr6eflBAbd3lVGlh/4VPm2JFYrZVdmE4Xny', '16021941', '16021941@vnu.edu.vn', 'Nguyễn Đức  Toàn', NULL, NULL, NULL),
(447, '16021942', '$2y$10$2Qt7wPxUrVBpHcqL6Z0f7uJfhOp0Qt2ja0w5sbvJ2Hg7UgeK8Sfci', '16021942', '16021942@vnu.edu.vn', 'Ngô Thị Huyền  Trang', NULL, NULL, NULL),
(448, '16022150', '$2y$10$qzW8kb3ewvJUKygn1znYaeknZRGriDXwKB7nUYkiczuMizleOji8i', '16022150', '16022150@vnu.edu.vn', 'Trần Hoàng  Anh', NULL, NULL, NULL),
(449, '16022164', '$2y$10$3.Ld/nnt0Kbk5P9luNOlhuY0dRLF/hyAPSRkXCfXUcElKpYOup0ga', '16022164', '16022164@vnu.edu.vn', 'Lê Quang  Đạt', NULL, NULL, NULL),
(450, '16022171', '$2y$10$AIVTtATSzYZ4oYW9nPdO/OJGUkAzLJhG/dGlHQnZt1oUJs2/LEsTG', '16022171', '16022171@vnu.edu.vn', 'Ngô Thị  Hiền', NULL, NULL, NULL),
(451, '16022173', '$2y$10$952agqgrC59sdNdaWwOO6u06AOpPnMReRf/KoL3vm7sRtpRHCS9w2', '16022173', '16022173@vnu.edu.vn', 'Lê Xuân  Hiếu', NULL, NULL, NULL),
(452, '16022183', '$2y$10$.ga4Ka2z00maNt5mBh2fa.Tt/uV40jZ3l3YwufvfKj9KGKiFsOvbO', '16022183', '16022183@vnu.edu.vn', 'Vũ Đăng  Huy', NULL, NULL, NULL),
(453, '16022191', '$2y$10$w2hzxWFkddDFxn91I.stkOXp.rlqYXr.w7at6YVeD.K9g13X5bcQK', '16022191', '16022191@vnu.edu.vn', 'Lê Nam  Khánh', NULL, NULL, NULL),
(454, '16022193', '$2y$10$YZz6o6C78OpwWoKgQjFCGewmL9Zyz.faksfU1m/XsQNIMOxr1dtYS', '16022193', '16022193@vnu.edu.vn', 'Nguyễn Ngọc  Lâm', NULL, NULL, NULL),
(455, '16022194', '$2y$10$DdWelP1cUCBczDDjr6SvfOR/BZv1C7ayHNuWaYbFROwD/SzVVtZ86', '16022194', '16022194@vnu.edu.vn', 'Đoàn Nho  Lâm', NULL, NULL, NULL),
(456, '16022199', '$2y$10$GGi4AajNfxyQSRqXCeHry.Q6Wz0tPfdUgM2hAkxIy2v2S96CyM4eW', '16022199', '16022199@vnu.edu.vn', 'Vũ Quyền  Linh', NULL, NULL, NULL),
(457, '16022215', '$2y$10$8VQMdetQZ8Jb66RbVJIrU.X.Zpt6jgNAWdSleSxvKCqsbErZ0QpQ.', '16022215', '16022215@vnu.edu.vn', 'Nguyễn Hữu  Phúc', NULL, NULL, NULL),
(458, '16022221', '$2y$10$UMmKbCfuZqh0OvmCtGTy5ui0SOXlF2PdHTsZ/nvRX6odvta8czzJ.', '16022221', '16022221@vnu.edu.vn', 'Vũ Đức  Sơn', NULL, NULL, NULL),
(459, '16022222', '$2y$10$GcVi6lzjEwpf/e0SPTuWQuUhR5a6z5GDWFGwX2MO.JC0bVMPxQwLO', '16022222', '16022222@vnu.edu.vn', 'Trần Ngọc  Tân', NULL, NULL, NULL),
(460, '16022227', '$2y$10$fCEY7B1SQN.vJYagkHjaQOplm.CzCC/0OHrimh3iisC2XBepPoO2u', '16022227', '16022227@vnu.edu.vn', 'Vũ Viết  Tuân', NULL, NULL, NULL),
(461, '16022400', '$2y$10$33hQxpnIvuZVLEwH1iTdxOg3uIBF.MGNWYyRhFSunn9dmuIUtSuKO', '16022400', '16022400@vnu.edu.vn', 'Nguyễn Sơn  Trường', NULL, NULL, NULL),
(462, '16022423', '$2y$10$YNxOj2va9t87VEtlKnoxpejAEmJXHrfXmSn.MR08moQ.Su/tAM.Zy', '16022423', '16022423@vnu.edu.vn', 'Nguyễn Viết Tiến  Anh', NULL, NULL, NULL),
(463, '16022424', '$2y$10$wj0hiYnjyIlGTjm0LqM.Y.NMa9w4bKvvu2yHcGlXhK020K2TpPvju', '16022424', '16022424@vnu.edu.vn', 'Nguyễn Thanh  Bình', NULL, NULL, NULL),
(464, '16022428', '$2y$10$XD/4Acu2FrEh1px/yEIBTevLQ0lR5yot2BjhO5tjpSYD7ohmO2X7y', '16022428', '16022428@vnu.edu.vn', 'Nguyễn Văn  Diên', NULL, NULL, NULL),
(465, '16022429', '$2y$10$1DhTcXQbFfuK/ZmclbD6Uu0vCmUns5FbN0ovcxs3ZkTbXnM23S4d6', '16022429', '16022429@vnu.edu.vn', 'Vũ Minh  Dũng', NULL, NULL, NULL),
(466, '16022433', '$2y$10$NshQBm1bTqDVZPpE5syLj.y1CSxyWQSaIINr1AIL13NFUh27juwHm', '16022433', '16022433@vnu.edu.vn', 'Nguyễn Thị  Hoài', NULL, NULL, NULL),
(467, '16022435', '$2y$10$AKJzR7J82iuU7dYg3eFPqO5v11n8n4CH6lqReHutzUymu9a/n40M.', '16022435', '16022435@vnu.edu.vn', 'Doãn Đoàn Đại  Hùng', NULL, NULL, NULL),
(468, '16022436', '$2y$10$fGQYRYcsu/8pSUBNFthulOndCBJmTZMSTSYTT4XkrvSK34xpuzZYW', '16022436', '16022436@vnu.edu.vn', 'Nguyễn Huy  Hùng', NULL, NULL, NULL),
(469, '16022441', '$2y$10$Nipg9YidqjtNketOrMnGB.27aFRQLQ2AdBo25HavaWuFWv7CTpCJO', '16022441', '16022441@vnu.edu.vn', 'Nguyễn Duy  Hưng', NULL, NULL, NULL),
(470, '16022442', '$2y$10$CDVuJ5rLdcfvaTUtVTQkheX/Ysl4lTcvydGAlaLCcSyNiuzU3zbHG', '16022442', '16022442@vnu.edu.vn', 'Hà Ngọc  Linh', NULL, NULL, NULL),
(471, '16022443', '$2y$10$o4BBw.4xEEkyYbYNXWhexO74GECSm0FGjhCdypGDAaHTDZBx95w3u', '16022443', '16022443@vnu.edu.vn', 'Kiều Thanh  Nam', NULL, NULL, NULL),
(472, '16022445', '$2y$10$NoldGTyhFz/81lJieud.tuZ7B1Gbik60wziezWsE/E4sVsXwWNmnm', '16022445', '16022445@vnu.edu.vn', 'Phan Văn  Tài', NULL, NULL, NULL),
(473, '16022448', '$2y$10$U/qO011756U7aaYnLr9i/elHh3bJfcpjQEXtP71P602qXW5YeymUW', '16022448', '16022448@vnu.edu.vn', 'Đặng Thanh  Tuấn', NULL, NULL, NULL),
(474, '16022450', '$2y$10$wQaTnHmX2cmt5AHhJlotyO/XVWsL.JiUe63a.a.kyM5QU7OvYcsQa', '16022450', '16022450@vnu.edu.vn', 'Tưởng Công  Thành', NULL, NULL, NULL),
(475, '16022451', '$2y$10$02Ld/9ti5BIXfX1LZPjFmu1M9h6DhbgInicUdBZPzDRagAjH1Dxi2', '16022451', '16022451@vnu.edu.vn', 'Ngô Doãn  Thông', NULL, NULL, NULL),
(476, '16022452', '$2y$10$Fxr9C6eEoDHrPENE8ZVSDu8LRW7RU2/whr0xAIrS0f.jMJWuwEq9O', '16022452', '16022452@vnu.edu.vn', 'Trần Thị Anh  Thư', NULL, NULL, NULL),
(477, '16022453', '$2y$10$U3Gb7G1NOV74/zDgHWRayezIaL9j7BnrzEzfwVEcZJ.Bm1cQbQ7y6', '16022453', '16022453@vnu.edu.vn', 'Mai Ngọc  Trinh', NULL, NULL, NULL),
(478, '16022456', '$2y$10$6ivNYILYH2EHyhFIBZtgyemZrGAzcZTLBPcG/IUTvU9bFXdwhcr2m', '16022456', '16022456@vnu.edu.vn', 'Nguyễn Hoa  Vinh', NULL, NULL, NULL),
(479, '16022458', '$2y$10$/H9IqGO4MBb7VvhupAoGy.ym.WwOmFwf215DGjlQ4sOASOuptvrDa', '16022458', '16022458@vnu.edu.vn', 'Nguyễn Đình  Ánh', NULL, NULL, NULL),
(480, '16022459', '$2y$10$yAzeax63T.j8P5XHDcgRju4WxOx6MIgDuthxYgmFVZLPRo2tcrb8q', '16022459', '16022459@vnu.edu.vn', 'Nguyễn Văn  Điệp', NULL, NULL, NULL),
(481, '16022460', '$2y$10$8cOvmEVXjJf3v4jaju6a/OgY3uiSXmpyUR6Kv2D9/OHV2ycHeynAO', '16022460', '16022460@vnu.edu.vn', 'Trần Thị Thu  Hà', NULL, NULL, NULL),
(482, '16022463', '$2y$10$R3IJ/fiSjCrtILbZpjIUqOkUDUxosYkjIwc8H1ENEEhbKmKTvcctu', '16022463', '16022463@vnu.edu.vn', 'Nguyễn Thị Thu  Huyền', NULL, NULL, NULL),
(483, '16022465', '$2y$10$K73o4RggrIud6Uewp5IyJeCGgESTgxFxJpvmMq9WqZn9gY8AteA4S', '16022465', '16022465@vnu.edu.vn', 'Tạ Đức  Mạnh', NULL, NULL, NULL),
(484, '16022466', '$2y$10$Zfa3c1y6dTl6Su3thCBPJ.kOQmBoRg2xtkjUnb7fTHWteqWktwc7O', '16022466', '16022466@vnu.edu.vn', 'Nguyễn Văn  Quân', NULL, NULL, NULL),
(485, '16022470', '$2y$10$ZuVxbCgJBl4Cw4T2nU4uwOtGeKdsoNsdJASwDaKhrZgSg3WBBG5vi', '16022470', '16022470@vnu.edu.vn', 'Nguyễn Tân  Sơn', NULL, NULL, NULL),
(486, '16022481', '$2y$10$JfVkc2vLa53sxInYPHuIq.uYx6eqX.LWfdv5uAtNhEpy/Ei24UuA2', '16022481', '16022481@vnu.edu.vn', 'Nguyễn Thị Thu  Hà', NULL, NULL, NULL),
(487, '16022482', '$2y$10$4BIuDXxrXpZQDOp9StoINOqfjs1ALD2wPJMd1bc/kQynd43PFtXEW', '16022482', '16022482@vnu.edu.vn', 'Đoàn Hồng  Phúc', NULL, NULL, NULL),
(488, '16022483', '$2y$10$w9J5AA0P5lFmPAbsqBkz2ejPFOOo.K7kDrflxSj40UoKszhCPOapa', '16022483', '16022483@vnu.edu.vn', 'Nguyễn Bá  Toàn', NULL, NULL, NULL),
(489, '16022497', '$2y$10$jFZ5bYiHWPUPCqzeVVuZOelQrBsemr2RDmRhhJBtJREMWQ.PcUTPW', '16022497', '16022497@vnu.edu.vn', 'Đỗ Quốc  Trọng', NULL, NULL, NULL),
(490, '16022500', '$2y$10$eVr.8BL5Dbft7vB1ZAEdT.Ovrhrdmhey51K.jHTlRheSccWmyXxfu', '16022500', '16022500@vnu.edu.vn', 'Nguyễn Đình  Cường', NULL, NULL, NULL),
(491, '16022502', '$2y$10$GWEMx/IYHjP9hg.k.Io1g.vXpO5RhThld2/Stld8a/cnMgwx/MUpu', '16022502', '16022502@vnu.edu.vn', 'Nguyễn Hồng  Quang', NULL, NULL, NULL);

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
(93, 120, 23),
(94, 130, 23),
(95, 265, 23),
(96, 134, 23),
(97, 140, 23),
(98, 141, 23),
(99, 258, 23),
(100, 163, 23),
(101, 179, 23),
(102, 98, 23),
(103, 181, 23),
(104, 185, 23),
(105, 187, 23),
(106, 263, 23),
(107, 200, 23),
(108, 248, 23),
(109, 264, 23),
(110, 205, 23),
(111, 119, 23),
(112, 219, 23),
(114, 121, 26),
(115, 126, 26),
(116, 128, 26),
(117, 133, 26),
(118, 256, 26),
(119, 244, 26),
(120, 132, 26),
(121, 137, 26),
(122, 138, 26),
(123, 234, 26),
(124, 145, 26),
(125, 149, 26),
(126, 150, 26),
(127, 151, 26),
(128, 152, 26),
(129, 235, 26),
(130, 236, 26),
(131, 158, 26),
(132, 156, 26),
(133, 157, 26),
(134, 238, 26),
(135, 165, 26),
(136, 169, 26),
(137, 173, 26),
(138, 174, 26),
(139, 172, 26),
(140, 176, 26),
(141, 180, 26),
(142, 266, 26),
(143, 189, 26),
(144, 190, 26),
(145, 191, 26),
(146, 192, 26),
(147, 194, 26),
(148, 198, 26),
(149, 199, 26),
(150, 201, 26),
(151, 203, 26),
(152, 249, 26),
(153, 206, 26),
(154, 240, 26),
(155, 250, 26),
(156, 209, 26),
(157, 210, 26),
(158, 215, 26),
(159, 217, 26),
(160, 225, 26),
(161, 221, 26),
(162, 222, 26),
(163, 260, 26),
(164, 251, 26),
(165, 223, 26),
(166, 226, 26),
(167, 227, 26),
(168, 262, 26),
(169, 231, 26),
(170, 121, 28),
(171, 123, 28),
(172, 124, 28),
(173, 126, 28),
(174, 128, 28),
(175, 19, 28),
(176, 344, 28),
(177, 133, 28),
(178, 256, 28),
(179, 243, 28),
(180, 244, 28),
(181, 132, 28),
(182, 25, 28),
(183, 137, 28),
(184, 138, 28),
(185, 8, 28),
(186, 27, 28),
(187, 234, 28),
(188, 139, 28),
(189, 143, 28),
(190, 144, 28),
(191, 145, 28),
(192, 146, 28),
(193, 149, 28),
(194, 150, 28),
(195, 246, 28),
(196, 151, 28),
(197, 152, 28),
(198, 235, 28),
(199, 154, 28),
(200, 236, 28),
(201, 158, 28),
(202, 156, 28),
(203, 157, 28),
(204, 238, 28),
(205, 165, 28),
(206, 169, 28),
(207, 173, 28),
(208, 174, 28),
(209, 172, 28),
(210, 176, 28),
(211, 177, 28),
(212, 178, 28),
(213, 180, 28),
(214, 182, 28),
(215, 266, 28),
(216, 189, 28),
(217, 190, 28),
(218, 191, 28),
(219, 192, 28),
(220, 194, 28),
(221, 198, 28),
(222, 199, 28),
(223, 201, 28),
(224, 203, 28),
(225, 249, 28),
(226, 206, 28),
(227, 240, 28),
(228, 250, 28),
(229, 209, 28),
(230, 210, 28),
(231, 215, 28),
(232, 216, 28),
(233, 217, 28),
(234, 225, 28),
(235, 221, 28),
(236, 222, 28),
(237, 4, 28),
(238, 260, 28),
(239, 251, 28),
(240, 226, 28),
(241, 227, 28),
(242, 262, 28),
(243, 231, 28),
(244, 252, 28),
(245, 120, 29),
(246, 130, 29),
(247, 265, 29),
(248, 134, 29),
(249, 140, 29),
(250, 141, 29),
(251, 258, 29),
(252, 163, 29),
(253, 179, 29),
(254, 181, 29),
(255, 185, 29),
(256, 187, 29),
(257, 263, 29),
(258, 200, 29),
(259, 248, 29),
(260, 264, 29),
(261, 205, 29),
(262, 219, 29);

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
(47, 47, 1);

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
(1, '﻿SS0001', '\nKhảo sát môn học cuối học kỳ', '1970-01-01 23:59:59', '2017-10-05 16:11:39', '2017-10-05 16:11:39');

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
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `students_surveys`
--
ALTER TABLE `students_surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `subjects_surveys`
--
ALTER TABLE `subjects_surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
