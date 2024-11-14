-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 06:12 AM
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
-- Database: `cipl_rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_notes`
--

CREATE TABLE `applicant_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_application_id` int(10) UNSIGNED NOT NULL,
  `note_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_settings`
--

CREATE TABLE `application_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `legal_term` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_setting` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_application_limitation` int(11) NOT NULL DEFAULT 0,
  `google_map_api_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_settings`
--

INSERT INTO `application_settings` (`id`, `legal_term`, `mail_setting`, `job_application_limitation`, `google_map_api_key`, `created_at`, `updated_at`) VALUES
(1, 'If any provision of these Terms and Conditions is held to be invalid or unenforceable, the provision shall be removed (or interpreted, if possible, in a manner as to be enforceable), and the remaining provisions shall be enforced. Headings are for reference purposes only and in no way define, limit, construe or describe the scope or extent of such section. Our failure to act with respect to a breach by you or others does not waive our right to act with respect to subsequent or similar breaches. These Terms and Conditions set forth the entire understanding and agreement between us with respect to the subject matter contained herein and supersede any other agreement, proposals and communications, written or oral, between our representatives and you with respect to the subject matter hereof, including any terms and conditions on any of customer\'s documents or purchase orders.<br>No Joint Venture, No Derogation of Rights. You agree that no joint venture, partnership, employment, or agency relationship exists between you and us as a result of these Terms and Conditions or your use of the Site. Our performance of these Terms and Conditions is subject to existing laws and legal process, and nothing contained herein is in derogation of our right to comply with governmental, court and law enforcement requests or requirements relating to your use of the Site or information provided to or gathered by us with respect to such use.', '{\"1\":{\"name\":\"applied\",\"status\":true},\"2\":{\"name\":\"phone screen\",\"status\":true},\"3\":{\"name\":\"interview\",\"status\":true},\"4\":{\"name\":\"hired\",\"status\":true},\"5\":{\"name\":\"rejected\",\"status\":true}}', 0, NULL, '2024-05-16 00:41:52', '2024-05-16 00:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `application_status`
--

CREATE TABLE `application_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` smallint(6) DEFAULT NULL,
  `color` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_status`
--

INSERT INTO `application_status` (`id`, `status`, `position`, `color`, `created_at`, `updated_at`) VALUES
(1, 'applied', 1, '#2b2b2b', NULL, '2024-05-16 06:11:52'),
(2, 'online exam', 2, '#f1e52e', NULL, '2024-05-16 06:11:52'),
(3, 'interview round 1', 3, '#3d8ee8', NULL, '2024-05-16 06:11:52'),
(4, 'interview round 2', 4, '#32ac16', NULL, '2024-05-16 06:11:52'),
(5, 'hired', 5, '#ee1127', NULL, '2024-05-16 06:11:52'),
(6, 'rejected', 6, '#FF8C00', NULL, '2024-05-16 06:11:52'),
(7, 'expired', 7, '#2b2b2b', NULL, '2024-05-16 06:11:53'),
(8, 'pass', 8, '#f1e52e', NULL, '2024-05-16 06:11:53'),
(9, 'failed', 9, '#3d8ee8', NULL, '2024-05-16 06:11:53'),
(10, 'Salary Negotiation', 10, '#32ac16', NULL, '2024-05-16 06:11:53'),
(11, 'assign round 1', 11, '#ee1127', NULL, '2024-05-16 06:11:53'),
(12, 'assign round 2', 12, '#FF8C00', NULL, '2024-05-16 06:11:53'),
(13, 'Documnet verification link send', 13, '#00FFFF', NULL, '2024-05-30 01:52:23'),
(14, 'Your Application Hold', 14, '#00FFFF', NULL, '2024-05-30 01:58:41'),
(15, 'Salary Re Negotiation', 15, '#00FFFF', NULL, '2024-05-30 03:43:10'),
(16, 'Document Upload', 16, 'Document Upl', NULL, '2024-06-01 07:29:10'),
(17, 'Interview Round 1- Rejection', 17, '#00FFFFF', NULL, '2024-06-05 06:32:57'),
(18, 'Interview Round 2 - Rejection', 18, '#00FFFFF', NULL, '2024-06-05 06:32:57'),
(20, 'OnlineExamSubmit', 20, '#00FFFF', NULL, '2024-06-03 07:29:03'),
(21, 'Document Verified', 21, '#00FFFF', '2024-07-12 05:20:39', '2024-07-12 05:20:39'),
(22, 'Document Not Verified', 22, '#00FFFF', '2024-07-12 05:21:39', '2024-07-12 05:21:39'),
(23, 'PCC Document verification link send', 23, '#00FFFF', '2024-07-15 06:07:11', '2024-07-15 06:07:11'),
(24, 'PCC Document Verified', 24, '#00FFFF', '2024-07-15 06:08:05', '2024-07-15 06:08:05'),
(25, 'Salary Disapprove', 25, '#00FFFF', '2024-07-11 06:58:19', '2024-07-10 18:30:00'),
(26, 'PCC Document Not Verified', 26, '#00FFFF', '2024-07-15 06:08:56', '2024-07-15 06:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `Id` int(11) NOT NULL,
  `JobTitle` varchar(255) NOT NULL,
  `MRFId` int(11) NOT NULL DEFAULT 0,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `IsDeleted` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedOn` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdatedBy` int(11) NOT NULL,
  `UpdatedOn` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ResumeLink` varchar(255) DEFAULT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `link_used` tinyint(1) DEFAULT 0,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(255) DEFAULT NULL,
  `CurrentLocation` varchar(255) DEFAULT NULL,
  `PrefferedLocation` varchar(255) DEFAULT NULL,
  `Dob` datetime DEFAULT NULL,
  `MaritalStatus` int(11) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `FatherName` varchar(255) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Interest` varchar(255) DEFAULT NULL,
  `Languages` varchar(255) DEFAULT NULL,
  `TotalExperience` varchar(255) DEFAULT NULL,
  `CurrentSalary` varchar(255) DEFAULT NULL,
  `SalaryExpectation` varchar(255) DEFAULT NULL,
  `NoticePeriod` varchar(255) DEFAULT NULL,
  `Summary` text DEFAULT NULL,
  `ResumePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidateexperience`
--

CREATE TABLE `candidateexperience` (
  `Id` int(11) NOT NULL,
  `CandidateId` int(11) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidateexperience`
--

INSERT INTO `candidateexperience` (`Id`, `CandidateId`, `CompanyName`, `Designation`, `StartDate`, `EndDate`, `created_at`, `updated_at`) VALUES
(1, 165, 'google', 'developer', '2024-07-17 15:53:05', '2024-07-17 15:53:05', '2024-07-17 10:23:05', '2024-07-17 10:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `candidatequalification`
--

CREATE TABLE `candidatequalification` (
  `Id` int(11) NOT NULL,
  `CandidateId` int(11) NOT NULL,
  `Degree` varchar(255) NOT NULL,
  `BoardUniversity` varchar(255) NOT NULL,
  `PassingYear` int(11) NOT NULL,
  `Score` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidateskill`
--

CREATE TABLE `candidateskill` (
  `Id` int(11) NOT NULL,
  `CandidateId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `technology` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_history`
--

CREATE TABLE `candidate_history` (
  `id` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `isactive` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_skills`
--

CREATE TABLE `candidate_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_status`
--

CREATE TABLE `candidate_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate_status`
--

INSERT INTO `candidate_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Screening', '2024-06-12 05:06:50', '2024-06-12 05:06:50'),
(2, 'ShortListed', '2024-06-12 05:06:50', '2024-06-20 06:46:38'),
(3, 'interview round 1', '2024-06-12 05:06:50', '2024-06-12 10:40:41'),
(4, 'interview round 2', '2024-06-12 05:06:50', '2024-06-12 10:40:58'),
(5, 'Selection', '2024-06-12 05:06:50', '2024-06-12 05:06:50'),
(6, 'Document Submission', '2024-06-12 05:06:50', '2024-06-12 05:06:50'),
(7, 'Offer Letter Release', '2024-06-12 05:06:50', '2024-06-12 05:06:50'),
(8, 'Offer Letter Accepted', '2024-06-12 05:06:50', '2024-06-12 05:06:50'),
(9, 'Onboarding', '2024-06-12 05:06:50', '2024-06-12 05:06:50'),
(10, 'Rejected', '2024-06-13 05:52:29', '2024-06-13 05:52:29'),
(11, 'Interview Round 1-Clear', '2024-06-21 04:41:19', '2024-06-21 04:41:19'),
(12, 'Interview Round 1-Not Clear', '2024-06-25 04:34:12', '2024-06-25 04:34:12'),
(13, 'Interview Round 2-Clear', '2024-06-25 04:37:58', '2024-06-25 04:37:58'),
(14, 'Interview Round 2-Not Clear', '2024-06-25 04:37:58', '2024-06-25 04:37:58'),
(15, 'Offer Latter Send\r\n', '2024-06-25 12:38:44', '2024-06-25 12:38:44'),
(16, 'Offer Latter Accepted', '2024-06-25 12:42:12', '2024-06-25 12:42:12'),
(17, 'Offer Latter Not Accepted', '2024-06-25 12:48:22', '2024-06-25 12:48:22'),
(18, 'Salary Negotiation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Salary Re Negotiation', '2024-07-10 04:55:18', '2024-07-10 05:18:36'),
(21, 'Salary Approved', '2024-07-11 06:32:47', '2024-07-11 06:32:47'),
(22, 'Salary Disapprove', '2024-07-11 06:32:47', '2024-07-11 06:32:47'),
(23, 'Document verification link send', '2024-07-11 11:20:39', '2024-07-10 18:30:00'),
(24, 'Document Upload', '2024-07-11 11:39:42', '2024-07-10 18:30:00'),
(25, 'Document Verified', '2024-07-12 04:37:55', '2024-07-12 04:37:55'),
(26, 'Document Not Verified', '2024-07-12 04:35:37', '2024-07-12 04:35:37'),
(27, 'PCC Document verification link send', '2024-07-15 04:43:18', '2024-07-15 04:43:18'),
(28, 'PCC Document Upload', '2024-07-15 04:47:50', '2024-07-15 04:47:50'),
(29, 'PCC Document Verified', '2024-07-15 06:03:06', '2024-07-15 06:03:06'),
(30, 'PCC Document Not Verified', '2024-07-15 06:03:52', '2024-07-15 06:03:52'),
(31, 'New Candidate', '2024-07-15 06:03:52', '2024-07-15 06:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `Id` int(11) NOT NULL,
  `CandidateId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Skill_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `name`, `created_at`, `updated_at`, `Skill_id`) VALUES
(3, 'AI', '2024-05-28 09:46:06', '2024-05-28 09:46:06', 1),
(4, 'Android ducate', '2024-05-30 05:02:40', '2024-05-30 05:02:40', 2);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `show_in_frontend` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `linkedin` enum('enable','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `company_email`, `company_phone`, `logo`, `address`, `website`, `status`, `show_in_frontend`, `created_at`, `updated_at`, `linkedin`) VALUES
(1, 'Corporate Infotech Pvt Ltd', 'company@example.com', '1234512345', NULL, 'Jaipur, India', 'http://www.xyz.com', 'active', 'true', '2024-05-16 06:11:52', '2024-05-16 06:11:52', 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `company_settings`
--

CREATE TABLE `company_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `purchase_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_until` timestamp NULL DEFAULT NULL,
  `system_update` tinyint(1) NOT NULL DEFAULT 1,
  `front_language` tinyint(1) NOT NULL DEFAULT 1,
  `job_alert_status` tinyint(1) NOT NULL DEFAULT 1,
  `show_review_modal` tinyint(1) NOT NULL DEFAULT 1,
  `meta_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_settings`
--

INSERT INTO `company_settings` (`id`, `company_name`, `company_email`, `company_phone`, `logo`, `address`, `website`, `timezone`, `locale`, `latitude`, `longitude`, `created_at`, `updated_at`, `purchase_code`, `supported_until`, `system_update`, `front_language`, `job_alert_status`, `show_review_modal`, `meta_details`) VALUES
(1, 'Corporate Infotech Pvt Ltd', 'company@example.com', '1234512345', NULL, 'Jaipur, India', 'http://www.xyz.com', 'Asia/Kolkata', 'en', 26.91243360, 75.78727090, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `complayers`
--

CREATE TABLE `complayers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `salarycreation_id` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(255) DEFAULT NULL,
  `job_application_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complayers`
--

INSERT INTO `complayers` (`id`, `name`, `salarycreation_id`, `position`, `created_at`, `updated_at`, `email`, `job_application_id`) VALUES
(36, 'email log Kumar', 46, 'Full stack developer devops', '2024-07-11 06:05:02', '2024-07-11 06:05:02', 'ramtiwari7355@gmail.com', '54'),
(37, 'email log Kumar', 47, 'Full stack developer devops', '2024-07-11 06:24:37', '2024-07-11 06:24:37', 'ramtiwari7355@gmail.com', '54'),
(39, 'email log Kumar', 49, 'Full stack developer devops', '2024-07-11 06:43:53', '2024-07-11 06:43:53', 'ramtiwari7355@gmail.com', '54'),
(40, 'illati', 50, 'Full stack developer devops', '2024-07-26 12:21:15', '2024-07-26 12:21:15', 'ramtiwari7355@gmail.com', '61'),
(41, 'Ram Tiwari', 51, 'Full stack developer devops', '2024-07-27 06:14:37', '2024-07-27 06:14:37', 'ramtiwari7355@gmail.com', '62');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_symbol`, `currency_code`, `created_at`, `updated_at`) VALUES
(1, 'Rupees', '₹', 'INR', '2024-06-28 06:09:28', '2024-06-28 06:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Cloud', '2024-05-31 17:17:58', '2024-05-31 17:17:58'),
(4, 'Ai', '2024-06-19 05:40:07', '2024-06-19 05:43:26'),
(5, 'Sales', '2024-06-20 07:42:11', '2024-06-20 09:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `job_description` text NOT NULL,
  `responsibilities` text NOT NULL,
  `requirements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `documentable_id` int(11) NOT NULL,
  `documentable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_verified` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `documentable_id`, `documentable_type`, `name`, `hashname`, `created_at`, `updated_at`, `is_verified`) VALUES
(51, 63, 'App\\JobApplication', 'aadharfront', '8c2df6a714b31b64c7ccc853534e4e5d.png', '2024-07-31 10:51:05', '2024-07-31 10:53:21', b'1'),
(52, 63, 'App\\JobApplication', 'pcc', '445173068025a5a4e84c63ed7f6d7415.png', '2024-07-31 10:54:10', '2024-07-31 10:54:28', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` int(11) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `Sender` varchar(255) DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `recipient`, `Sender`, `candidate_id`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(179, 'ramtiwari7355@gmail.com', 'tahelpdesk@cipl.org.in', NULL, 'Mail from CIPL Project Approval (Project Lead)', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <style>\r\n        body {\r\n            font-family: Arial, sans-serif;\r\n            margin: 0;\r\n            padding: 0;\r\n            background-color: #f4f4f4;\r\n            color: #333;\r\n        }\r\n\r\n        .container {\r\n            max-width: 600px;\r\n            margin: 20px auto;\r\n            padding: 20px;\r\n            background-color: #fff;\r\n            border-radius: 5px;\r\n            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\r\n        }\r\n        .button {\r\n            display: inline-block;\r\n            padding: 10px 20px;\r\n            background-color: #007bff; /* Button background color */\r\n            color: #fff; /* Button text color */\r\n            text-decoration: none; /* Remove underline */\r\n            border-radius: 5px; /* Rounded corners */\r\n            border: none; /* Remove border */\r\n            cursor: pointer; /* Pointer cursor on hover */\r\n            margin-left:200px;\r\n        }\r\n\r\n        .button:hover {\r\n            opacity: 0.8; /* Reduce opacity on hover */\r\n        }\r\n\r\n        .disclaimer {\r\n            font-size: 10px;\r\n            color: grey;\r\n            margin-top: 20px;\r\n        }\r\n    </style>\r\n    <title>Approval Link</title>\r\n</head>\r\n<body>\r\n    <div class=\"container\">\r\n        <p>Dear Sir/Mam,</p>\r\n        <p> New Project has been generated for multiple positions,at CIPL.Kindly</p>\r\n        <p>Please click the following link to approve:<br><br>  <a class=\"button\" href=\"http://65.1.26.217:8082/erfapproval/C24I0001\" style=\"display: inline-block; text-decoration: none;\">\r\n            Click here<br>\r\n        </a><br> to view the Project and perform the necessary action.</p>\r\n\r\n        <p>Thanks,</p>\r\n\r\n        <div class=\"disclaimer\">\r\n            <p class=\"disclaimer\">Disclaimer:</p>\r\n            <p class=\"disclaimer\">This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>\r\n            <p class=\"disclaimer\">For any concerns, please reach out to us at tahelpdesk@cipl.org.in.</p>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n', '2024-09-08 14:38:50', '2024-09-08 14:38:50'),
(180, 'ramtiwari7355@gmail.com', 'tahelpdesk@cipl.org.in', NULL, 'MRF Approve from ProjectLead', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>MRF Approval or Disapproval</title>\r\n    <style>\r\n        body {\r\n            font-family: Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            color: #333;\r\n            margin: 0;\r\n            padding: 20px;\r\n        }\r\n        .container {\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 5px;\r\n            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\r\n            padding: 20px;\r\n        }\r\n        .header {\r\n            background-color: white;\r\n            color: black;\r\n            padding: 0px;\r\n            border-radius: 5px 5px 0 0;\r\n            text-align: center;\r\n        }\r\n        .header h1 {\r\n            margin: 0;\r\n        }\r\n        .content {\r\n            margin-top: 15px;\r\n        }\r\n        .content p {\r\n            margin-bottom: 10px;\r\n            line-height: 1.5;\r\n        }\r\n        .content h2 {\r\n            color: #777;\r\n            margin-top: 0;\r\n        }\r\n        .button {\r\n            display: inline-block;\r\n            padding: 10px 15px;\r\n            text-decoration: none;\r\n            border-radius: 5px;\r\n            font-weight: bold;\r\n            text-align: center;\r\n            margin-top: 10px;\r\n           \r\n        }\r\n        .button.approve {\r\n            background-color: #0DC01C;\r\n            color: #ffffff; \r\n        }\r\n        .button.reject {\r\n            background-color: #F85133;\r\n            color: #ffffff;\r\n        }\r\n        .disclaimer {\r\n            margin-top: 25px;\r\n            padding: 10px;\r\n            color:  #777;\r\n            font-size: 10px;\r\n        }\r\n        .disclaimer h4 {\r\n            color: grey;\r\n            margin-top: 0;\r\n        }\r\n        .footer {\r\n            margin-top: 20px;\r\n            font-size: 14px;\r\n            color: #777;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n    <div class=\"container\">\r\n        <div class=\"header\">\r\n            <h2>MRF Approval or Disapproval</h2> \r\n        </div>\r\n        <div class=\"content\">\r\n            <p>Dear <b>Ram Tiwari,</b></p>\r\n            <p>Ram Tiwari has generated the MRF for the <strong>Developer</strong> for <strong>AI.O</strong>. You are requested to approve or reject it to proceed.</p>\r\n\r\n            <h2>Status of MRF Number 51</h2>\r\n            <p>The Manpower Requisition Form (MRF Number) <strong>51</strong> has been <strong>Pending Approval</strong>.</p>\r\n\r\n                            <p>To proceed with the MRF, please click one of the buttons below:</p>\r\n                <a href=\"http://65.1.26.217:8082/mrfApprovalLink/eyJpdiI6IlNGL1pZSTBjZUtZbHd1ZDBRVHBoRFE9PSIsInZhbHVlIjoieXFyZHA4UkdRZG5CeTlwem1TZ0JWdz09IiwibWFjIjoiZjI5ZDZlYzIzZjczOGJjNGRhZWUyNjgyMTIxZTFiNWZiZDI1Zjc0ZjAxYzg5NzU3NGU2YTQ0MmJhMDFmYWZmNyIsInRhZyI6IiJ9\" class=\"button approve\">Approve MRF</a>\r\n                <a href=\"http://65.1.26.217:8082/mrfRejectedLink/eyJpdiI6IlNGL1pZSTBjZUtZbHd1ZDBRVHBoRFE9PSIsInZhbHVlIjoieXFyZHA4UkdRZG5CeTlwem1TZ0JWdz09IiwibWFjIjoiZjI5ZDZlYzIzZjczOGJjNGRhZWUyNjgyMTIxZTFiNWZiZDI1Zjc0ZjAxYzg5NzU3NGU2YTQ0MmJhMDFmYWZmNyIsInRhZyI6IiJ9\" class=\"button reject\">Reject MRF</a>\r\n            \r\n           \r\n        </div>\r\n        <div class=\"footer\">\r\n            <p><b>Best Regards,</b><br>\r\n            Ram Tiwari<br>\r\n            Super Administrator<br>\r\n            Corporate Infotech Pvt Ltd</p>\r\n        </div>\r\n        <div class=\"disclaimer\">\r\n                <h4>Disclaimer:</h4>\r\n                <p>This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>\r\n                <p>For any concerns, please reach out to us at <a href=\"mailto:tahelpdesk@cipl.org.in\">tahelpdesk@cipl.org.in</a></p>\r\n            </div>\r\n    </div>\r\n</body>\r\n</html>\r\n', '2024-09-08 14:43:04', '2024-09-08 14:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `erfskills`
--

CREATE TABLE `erfskills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `erform_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erves`
--

CREATE TABLE `erves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requisition_date` date NOT NULL,
  `project_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required_position_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `erf_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_date` date NOT NULL,
  `level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_manager_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_lead` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_positions` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `jobtype_id` bigint(20) UNSIGNED NOT NULL,
  `positionbudget` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reasonfor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `replacement` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_application_id` int(11) UNSIGNED NOT NULL,
  `interview_schedule_id` int(11) UNSIGNED NOT NULL,
  `remark` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_settings`
--

CREATE TABLE `footer_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `headofdepartment`
--

CREATE TABLE `headofdepartment` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `MobileNo` varchar(20) NOT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `headofdepartment`
--

INSERT INTO `headofdepartment` (`Id`, `Name`, `Email`, `MobileNo`, `DepartmentId`, `created_at`, `updated_at`) VALUES
(5, 'Ram pratap singh 1', 'johndoe@example.com', '1234567890', 2, '2024-06-11 09:23:49', '2024-06-11 09:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedules`
--

CREATE TABLE `interview_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_application_id` int(10) UNSIGNED NOT NULL,
  `schedule_date` datetime NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interview_type` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_accept_status` enum('accept','refuse','waiting') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meetingurl` varchar(255) DEFAULT NULL,
  `meeting_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedule_comments`
--

CREATE TABLE `interview_schedule_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `interview_schedule_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedule_employees`
--

CREATE TABLE `interview_schedule_employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `interview_schedule_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_accept_status` enum('accept','refuse','waiting') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jdstores`
--

CREATE TABLE `jdstores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jdstores`
--

INSERT INTO `jdstores` (`id`, `designation`, `job_type`, `job_description`, `responsibilities`, `requirements`, `created_at`, `updated_at`) VALUES
(1, 'Software Developerr', 'Full Time', '<p>A Software Developer is responsible for designing, coding, testing, and maintaining software applications to meet the needs of a business or organization. They work closely with other developers, project managers, and stakeholders to develop and implement new software solutions and improve existing systems.A Software Developer is responsible for designing, coding, testing, and maintaining software applications to meet the needs of a business or organization. They work closely with other developers, project managers, and stakeholders to develop and implement new software solutions and improve existing systems.A Software Developer is responsible for designing, coding, testing, and maintaining software applications to meet the needs of a business or organization. They work closely with other developers, project managers, and stakeholders to develop and implement new software solutions and improve existing systems.</p>', '<ol><li>&nbsp;<ul><li>Create and maintain technical documentation for software applications.</li><li>Document code and software processes for future reference and maintenance.</li></ul></li></ol><p><strong>Project Management:</strong></p><ul><li>Participate in project planning, scheduling, and status reporting.</li><li>Ensure projects are completed on time and within budget.</li></ul><p><strong>Continuous Improvement:</strong></p><ul><li>Stay up-to-date with the latest industry trends, technologies, and best practices.</li><li>Continuously seek opportunities to improve software development processes and tools.</li></ul><p><strong>Required Skills and Qualifications:</strong></p><p><strong>Technical Skills:</strong></p><ul><li>Proficiency in one or more programming languages (e.g., Java, C#, Python, JavaScript).</li><li>Experience with software development frameworks and tools.</li><li>Knowledge of database management systems and SQL.</li><li>Familiarity with version control systems (e.g., Git).</li></ul><p><strong>Analytical Skills:</strong></p><ul><li>Strong problem-solving and analytical skills.</li><li>Ability to understand complex business requirements and translate them into technical solutions.</li></ul><p><strong>Soft Skills:</strong></p><ul><li>Excellent communication and teamwork skills.</li><li>Ability to work independently and manage time effectively.</li><li>Strong attention to detail and commitment to quality.</li></ul><p><strong>Educational Background:</strong></p><ul><li>Bachelor’s degree in Computer Science, Software Engineering, or a related field.</li><li>Relevant work experience or certifications are a plus.</li></ul><p><strong>Experience:</strong></p><ul><li>Entry-level positions may require 0-2 years of experience.</li><li>Mid-level positions typically require 2-5 years of experience.</li><li>Senior-level positions may require 5+ years of experience and proven expertise in software development.</li></ul><p><strong>Work Environment:</strong></p><ul><li>Typically office-based with potential for remote work.</li><li>May involve collaboration with international teams.</li></ul>', '<p><strong>Programming Languages:</strong></p><ul><li>Proficiency in one or more programming languages such as Java, C#, Python, JavaScript, or others relevant to the employer\'s tech stack.</li></ul><p><strong>Software Development Frameworks and Tools:</strong></p><ul><li>Experience with development frameworks (e.g., Spring for Java, .NET for C#, React or Angular for JavaScript).</li><li>Familiarity with development tools (e.g., Integrated Development Environments like Visual Studio, Eclipse, IntelliJ).</li></ul><p><strong>Database Management:</strong></p><ul><li>Knowledge of relational databases (e.g., MySQL, PostgreSQL, SQL Server) and proficiency in SQL.</li><li>Experience with NoSQL databases (e.g., MongoDB) may be beneficial.</li></ul><p><strong>Version Control Systems:</strong></p><ul><li>Proficiency in using version control systems such as Git.</li></ul><p><strong>Testing and Debugging:</strong></p><ul><li>Experience with unit testing, integration testing, and debugging tools.</li></ul><p><strong>Web Development:</strong></p><ul><li>For web developers, knowledge of HTML, CSS, JavaScript, and web frameworks (e.g., React, Angular, Vue.js).</li><li>Understanding of RESTful APIs and web services.</li></ul><p><strong>Analytical and Problem-Solving Skills:</strong></p><p><strong>Analytical Thinking:</strong></p><ul><li>Ability to analyze complex problems and devise effective solutions.</li></ul><p><strong>Problem-Solving:</strong></p><ul><li>Strong problem-solving skills and the ability to troubleshoot and resolve issues efficiently.</li></ul><p><strong>Soft Skills:</strong></p>', '2024-05-31 17:21:46', '2024-06-20 07:53:22'),
(2, 'Manager manager', 'Part Time', '<p><br><strong>Programming Languages:</strong></p><ul><li>Proficiency in one or more programming languages such as Java, C#, Python, JavaScript, or others relevant to the employer\'s tech stack.</li></ul><p><strong>Software Development Frameworks and Tools:</strong></p><ul><li>Experience with development frameworks (e.g., Spring for Java, .NET for C#, React or Angular for JavaScript).</li><li>Familiarity with development tools (e.g., Integrated Development Environments like Visual Studio, Eclipse, IntelliJ).</li></ul><p><strong>Database Management:</strong></p><ul><li>Knowledge of relational databases (e.g., MySQL, PostgreSQL, SQL Server) and proficiency in SQL.</li><li>Experience with NoSQL databases (e.g., MongoDB) may be beneficial.</li></ul><p><strong>Version Control Systems:</strong></p><ul><li>Proficiency in using version control systems such as Git.</li></ul><p><strong>Testing and Debugging:</strong></p><ul><li>Experience with unit testing, integration testing, and debugging tools.</li></ul><p><strong>Web Development:</strong></p><ul><li>For web developers, knowledge of HTML, CSS, JavaScript, and web frameworks (e.g., React, Angular, Vue.js).</li><li>Understanding of RESTful APIs and web services.</li></ul><p><strong>Analytical and Problem-Solving Skills:</strong></p><p><strong>Analytical Thinking:</strong></p><ul><li>Ability to analyze complex problems and devise effective solutions.</li></ul><p><strong>Problem-Solving:</strong></p><ul><li>Strong problem-solving skills and the ability to troubleshoot and resolve issues efficiently.</li></ul><p><strong>Soft Skills:</strong></p>', '<p><br><strong>Programming Languages:</strong></p><ul><li>Proficiency in one or more programming languages such as Java, C#, Python, JavaScript, or others relevant to the employer\'s tech stack.</li></ul><p><strong>Software Development Frameworks and Tools:</strong></p><ul><li>Experience with development frameworks (e.g., Spring for Java, .NET for C#, React or Angular for JavaScript).</li><li>Familiarity with development tools (e.g., Integrated Development Environments like Visual Studio, Eclipse, IntelliJ).</li></ul><p><strong>Database Management:</strong></p><ul><li>Knowledge of relational databases (e.g., MySQL, PostgreSQL, SQL Server) and proficiency in SQL.</li><li>Experience with NoSQL databases (e.g., MongoDB) may be beneficial.</li></ul><p><strong>Version Control Systems:</strong></p><ul><li>Proficiency in using version control systems such as Git.</li></ul><p><strong>Testing and Debugging:</strong></p><ul><li>Experience with unit testing, integration testing, and debugging tools.</li></ul><p><strong>Web Development:</strong></p><ul><li>For web developers, knowledge of HTML, CSS, JavaScript, and web frameworks (e.g., React, Angular, Vue.js).</li><li>Understanding of RESTful APIs and web services.</li></ul><p><strong>Analytical and Problem-Solving Skills:</strong></p><p><strong>Analytical Thinking:</strong></p><ul><li>Ability to analyze complex problems and devise effective solutions.</li></ul><p><strong>Problem-Solving:</strong></p><ul><li>Strong problem-solving skills and the ability to troubleshoot and resolve issues efficiently.</li></ul><p><strong>Soft Skills:</strong></p>', '<p><br><strong>Programming Languages:</strong></p><ul><li>Proficiency in one or more programming languages such as Java, C#, Python, JavaScript, or others relevant to the employer\'s tech stack.</li></ul><p><strong>Software Development Frameworks and Tools:</strong></p><ul><li>Experience with development frameworks (e.g., Spring for Java, .NET for C#, React or Angular for JavaScript).</li><li>Familiarity with development tools (e.g., Integrated Development Environments like Visual Studio, Eclipse, IntelliJ).</li></ul><p><strong>Database Management:</strong></p><ul><li>Knowledge of relational databases (e.g., MySQL, PostgreSQL, SQL Server) and proficiency in SQL.</li><li>Experience with NoSQL databases (e.g., MongoDB) may be beneficial.</li></ul><p><strong>Version Control Systems:</strong></p><ul><li>Proficiency in using version control systems such as Git.</li></ul><p><strong>Testing and Debugging:</strong></p><ul><li>Experience with unit testing, integration testing, and debugging tools.</li></ul><p><strong>Web Development:</strong></p><ul><li>For web developers, knowledge of HTML, CSS, JavaScript, and web frameworks (e.g., React, Angular, Vue.js).</li><li>Understanding of RESTful APIs and web services.</li></ul><p><strong>Analytical and Problem-Solving Skills:</strong></p><p><strong>Analytical Thinking:</strong></p><ul><li>Ability to analyze complex problems and devise effective solutions.</li></ul><p><strong>Problem-Solving:</strong></p><ul><li>Strong problem-solving skills and the ability to troubleshoot and resolve issues efficiently.</li></ul><p><strong>Soft Skills:</strong></p>', '2024-06-20 07:54:47', '2024-06-20 07:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobassigns`
--

CREATE TABLE `jobassigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jobrecruitment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobcertifications`
--

CREATE TABLE `jobcertifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `jobrecruitment_id` bigint(20) UNSIGNED NOT NULL,
  `anycertification_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobcertifications`
--

INSERT INTO `jobcertifications` (`id`, `job_id`, `jobrecruitment_id`, `anycertification_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '2024-05-31 17:28:27', '2024-05-31 17:28:27'),
(2, 2, 2, 3, '2024-05-31 17:44:13', '2024-05-31 17:44:13'),
(3, 5, 3, 3, '2024-06-02 07:07:46', '2024-06-02 07:07:46'),
(4, 5, 4, 3, '2024-06-02 08:22:08', '2024-06-02 08:22:08'),
(5, 7, 5, 3, '2024-06-17 11:18:08', '2024-06-17 11:18:08'),
(6, 6, 6, 4, '2024-06-19 10:35:26', '2024-06-19 10:35:26'),
(7, 6, 6, 3, '2024-06-19 10:35:26', '2024-06-19 10:35:26'),
(8, 10, 7, 3, '2024-06-20 09:16:57', '2024-06-20 09:16:57'),
(9, 9, 8, 3, '2024-06-25 06:24:23', '2024-06-25 06:24:23'),
(10, 9, 9, 3, '2024-06-25 06:52:25', '2024-06-25 06:52:25'),
(11, 9, 10, 3, '2024-06-25 10:00:19', '2024-06-25 10:00:19'),
(12, 9, 11, 3, '2024-06-26 07:23:04', '2024-06-26 07:23:04'),
(13, 11, 12, 3, '2024-06-26 12:55:55', '2024-06-26 12:55:55'),
(14, 11, 13, 3, '2024-06-27 06:23:34', '2024-06-27 06:23:34'),
(15, 11, 14, 3, '2024-06-27 09:47:06', '2024-06-27 09:47:06'),
(16, 11, 15, 3, '2024-06-27 10:57:16', '2024-06-27 10:57:16'),
(17, 11, 16, 4, '2024-06-27 12:21:47', '2024-06-27 12:21:47'),
(18, 11, 17, 3, '2024-06-28 06:56:11', '2024-06-28 06:56:11'),
(19, 20, 20, 3, '2024-06-28 13:05:30', '2024-06-28 13:05:30'),
(20, 20, 21, 3, '2024-06-28 13:09:00', '2024-06-28 13:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobqualifications`
--

CREATE TABLE `jobqualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `jobrecruitment_id` bigint(20) UNSIGNED NOT NULL,
  `qualification_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobqualifications`
--

INSERT INTO `jobqualifications` (`id`, `job_id`, `jobrecruitment_id`, `qualification_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, '2024-05-31 17:28:27', '2024-05-31 17:28:27'),
(2, 2, 2, 4, '2024-05-31 17:44:13', '2024-05-31 17:44:13'),
(3, 5, 3, 6, '2024-06-02 07:07:46', '2024-06-02 07:07:46'),
(4, 5, 4, 4, '2024-06-02 08:22:08', '2024-06-02 08:22:08'),
(5, 7, 5, 3, '2024-06-17 11:18:08', '2024-06-17 11:18:08'),
(6, 6, 6, 3, '2024-06-19 10:35:26', '2024-06-19 10:35:26'),
(7, 10, 7, 6, '2024-06-20 09:16:57', '2024-06-20 09:16:57'),
(8, 9, 8, 3, '2024-06-25 06:24:23', '2024-06-25 06:24:23'),
(9, 9, 9, 3, '2024-06-25 06:52:25', '2024-06-25 06:52:25'),
(10, 9, 10, 3, '2024-06-25 10:00:19', '2024-06-25 10:00:19'),
(11, 9, 11, 3, '2024-06-26 07:23:04', '2024-06-26 07:23:04'),
(12, 11, 12, 3, '2024-06-26 12:55:55', '2024-06-26 12:55:55'),
(13, 11, 13, 3, '2024-06-27 06:23:34', '2024-06-27 06:23:34'),
(14, 11, 14, 3, '2024-06-27 09:47:06', '2024-06-27 09:47:06'),
(15, 11, 15, 3, '2024-06-27 10:57:16', '2024-06-27 10:57:16'),
(16, 11, 16, 3, '2024-06-27 12:21:47', '2024-06-27 12:21:47'),
(17, 11, 17, 3, '2024-06-28 06:56:11', '2024-06-28 06:56:11'),
(18, 20, 20, 3, '2024-06-28 13:05:30', '2024-06-28 13:05:30'),
(19, 20, 21, 5, '2024-06-28 13:09:00', '2024-06-28 13:09:00'),
(20, 20, 25, 3, '2024-06-29 07:33:01', '2024-06-29 07:33:01'),
(21, 0, 26, 3, '2024-06-29 08:06:03', '2024-06-29 08:06:03'),
(22, 0, 27, 3, '2024-06-29 15:49:47', '2024-06-29 15:49:47'),
(23, 20, 28, 3, '2024-06-29 15:51:28', '2024-06-29 15:51:28'),
(24, 23, 29, 3, '2024-07-01 12:54:39', '2024-07-01 12:54:39'),
(25, 26, 30, 3, '2024-07-02 07:20:25', '2024-07-02 07:20:25'),
(26, 26, 31, 3, '2024-07-04 05:27:13', '2024-07-04 05:27:13'),
(28, 26, 33, 3, '2024-07-04 05:46:21', '2024-07-04 05:46:21'),
(29, 26, 34, 3, '2024-07-04 05:48:39', '2024-07-04 05:48:39'),
(30, 26, 35, 3, '2024-07-04 05:55:37', '2024-07-04 05:55:37'),
(31, 26, 36, 3, '2024-07-04 05:58:58', '2024-07-04 05:58:58'),
(32, 28, 37, 3, '2024-07-04 07:10:59', '2024-07-04 07:10:59'),
(33, 28, 38, 3, '2024-07-04 09:26:05', '2024-07-04 09:26:05'),
(34, 28, 39, 3, '2024-07-04 11:36:37', '2024-07-04 11:36:37'),
(35, 33, 40, 3, '2024-07-08 06:02:04', '2024-07-08 06:02:04'),
(36, 0, 41, 3, '2024-07-09 08:02:01', '2024-07-09 08:02:01'),
(37, 45, 42, 3, '2024-07-11 05:17:33', '2024-07-11 05:17:33'),
(42, 45, 47, 3, '2024-07-11 10:11:48', '2024-07-11 10:11:48'),
(43, 0, 48, 3, '2024-07-11 10:13:44', '2024-07-11 10:13:44'),
(44, 45, 49, 3, '2024-07-18 09:09:07', '2024-07-18 09:09:07'),
(45, 46, 50, 3, '2024-07-31 10:34:03', '2024-07-31 10:34:03'),
(46, 47, 51, 6, '2024-09-08 14:43:04', '2024-09-08 14:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `jobrecruitments`
--

CREATE TABLE `jobrecruitments` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `qualification_id` bigint(20) UNSIGNED DEFAULT NULL,
  `degination` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_manager` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reporting_team` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_budgeted` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relevent_exp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsibility` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prerequisite` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anycertification_id` bigint(20) UNSIGNED DEFAULT NULL,
  `scopeofwork` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jd_id` int(11) NOT NULL,
  `total_experience` int(11) NOT NULL,
  `total_positions` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `M_id` varchar(255) DEFAULT NULL,
  `MrfStatus` int(11) DEFAULT NULL,
  `recruitment_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobrecruitments`
--

INSERT INTO `jobrecruitments` (`id`, `job_id`, `category_id`, `qualification_id`, `degination`, `level`, `project_manager`, `reporting_team`, `position_budgeted`, `relevent_exp`, `responsibility`, `prerequisite`, `anycertification_id`, `scopeofwork`, `user_id`, `assign_id`, `created_at`, `updated_at`, `location`, `start_date`, `end_date`, `jd_id`, `total_experience`, `total_positions`, `created_by_id`, `title_id`, `M_id`, `MrfStatus`, `recruitment_type`) VALUES
(51, 47, 3, 6, 'Developer', 'L1', '17', '17', '12222', '12', '12', NULL, NULL, NULL, '17', NULL, '2024-09-08 14:43:00', '2024-09-08 14:43:37', 'noida', '2024-09-25', '2024-09-11', 1, 12, 21, 17, 9, 'mrf101', 3, 'onsite');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `pid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `erf_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `job_requirement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recruitment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recruitment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_experience` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `required_columns` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_visibility` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `jd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_possion` int(11) DEFAULT NULL,
  `target_date` date DEFAULT NULL,
  `requisition_date` date DEFAULT NULL,
  `project_lead` int(11) DEFAULT NULL,
  `JobStatus` int(11) DEFAULT NULL,
  `status` enum('waiting for approval','approved','disapprove') DEFAULT 'waiting for approval'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `slug`, `company_id`, `pid`, `erf_id`, `department_id`, `job_requirement`, `recruitment_type`, `recruitment`, `approved`, `billable_type`, `project_name`, `work_experience`, `start_date`, `end_date`, `required_columns`, `meta_details`, `section_visibility`, `created_at`, `updated_at`, `user_id`, `note`, `category_id`, `jd`, `budget`, `no_of_possion`, `target_date`, `requisition_date`, `project_lead`, `JobStatus`, `status`) VALUES
(47, NULL, '', NULL, 'gemini_04', 'C24I0001', 4, NULL, 'onsite', NULL, 'yes', NULL, 'AI.O', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '2024-09-08 14:38:50', '2024-09-08 14:40:08', 17, 'go ahed', 3, NULL, '10000000', 10, '2024-09-12', NULL, 17, 1, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `job_alerts`
--

CREATE TABLE `job_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_experience_id` bigint(20) UNSIGNED NOT NULL,
  `job_type_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_alert_categories`
--

CREATE TABLE `job_alert_categories` (
  `job_alert_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_alert_locations`
--

CREATE TABLE `job_alert_locations` (
  `job_alert_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobrecruitment_id` int(10) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `column_priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `qualifications_id` int(11) DEFAULT NULL,
  `MRFId` int(11) NOT NULL DEFAULT 0,
  `CandidateId` int(11) DEFAULT NULL,
  `JobTitle` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(255) DEFAULT NULL,
  `CurrentLocation` varchar(255) DEFAULT NULL,
  `PrefferedLocation` varchar(255) DEFAULT NULL,
  `Dob` datetime DEFAULT NULL,
  `MaritalStatus` int(11) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `FatherName` varchar(255) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Interest` varchar(255) DEFAULT NULL,
  `Languages` varchar(255) DEFAULT NULL,
  `Summary` text DEFAULT NULL,
  `ResumeLink` varchar(255) DEFAULT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `TotalExperience` varchar(255) DEFAULT NULL,
  `CurrentSalary` varchar(255) DEFAULT NULL,
  `SalaryExpectation` varchar(255) DEFAULT NULL,
  `NoticePeriod` varchar(255) DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT NULL,
  `UpdatedBy` int(11) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  `cancel_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applicationsubqualifications`
--

CREATE TABLE `job_applicationsubqualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobapplication_id` int(10) UNSIGNED NOT NULL,
  `subqualifications_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_application_answers`
--

CREATE TABLE `job_application_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_application_id` int(10) UNSIGNED NOT NULL,
  `jobrecruitment_id` int(10) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Information Technology', '2024-05-31 17:11:49', '2024-05-31 17:11:49'),
(2, 'Marketing', '2024-05-31 17:12:13', '2024-05-31 17:12:13'),
(3, 'Cloud Technology', '2024-05-31 17:12:39', '2024-05-31 17:12:39'),
(4, 'Network', '2024-06-20 06:55:45', '2024-06-20 06:55:45'),
(6, 'IT', '2024-06-26 07:13:43', '2024-06-26 07:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `job_job_application`
--

CREATE TABLE `job_job_application` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobrecruitment_id` int(10) UNSIGNED NOT NULL,
  `job_application_id` int(10) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_locations`
--

CREATE TABLE `job_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_offer_questions`
--

CREATE TABLE `job_offer_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('enable','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enable',
  `required` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `type` enum('text','file') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_onboard_questions`
--

CREATE TABLE `job_onboard_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `job_offer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_questions`
--

CREATE TABLE `job_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `jobrecruitment_id` int(10) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobrecruitment_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `jobrecruitment_id`, `skill_id`, `job_id`, `created_at`, `updated_at`) VALUES
(47, 51, 7, 47, '2024-09-08 14:43:04', '2024-09-08 14:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `job_subqualifications`
--

CREATE TABLE `job_subqualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subqualification_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jobrecruitment_id` int(10) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_subqualifications`
--

INSERT INTO `job_subqualifications` (`id`, `subqualification_id`, `jobrecruitment_id`, `job_id`, `created_at`, `updated_at`) VALUES
(47, 8, 51, 47, '2024-09-08 14:43:04', '2024-09-08 14:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `job_type`, `created_at`, `updated_at`) VALUES
(1, 'Full time', '2024-05-16 06:11:53', '2024-05-16 06:11:53'),
(2, 'Part time', '2024-05-16 06:11:53', '2024-05-16 06:11:53'),
(3, 'On Contract', '2024-05-16 06:11:53', '2024-05-16 06:11:53'),
(4, 'Internship', '2024-05-16 06:11:53', '2024-05-16 06:11:53'),
(5, 'Trainee', '2024-05-16 06:11:53', '2024-05-16 06:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `language_settings`
--

CREATE TABLE `language_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('enabled','disabled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language_settings`
--

INSERT INTO `language_settings` (`id`, `language_code`, `language_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ar', 'Arabic', 'disabled', NULL, NULL),
(2, 'de', 'German', 'disabled', NULL, NULL),
(3, 'es', 'Spanish', 'enabled', NULL, NULL),
(4, 'et', 'Estonian', 'disabled', NULL, NULL),
(5, 'fa', 'Farsi', 'disabled', NULL, NULL),
(6, 'fr', 'French', 'enabled', NULL, NULL),
(7, 'gr', 'Greek', 'disabled', NULL, NULL),
(8, 'it', 'Italian', 'disabled', NULL, NULL),
(9, 'nl', 'Dutch', 'disabled', NULL, NULL),
(10, 'pl', 'Polish', 'disabled', NULL, NULL),
(11, 'pt', 'Portuguese', 'disabled', NULL, NULL),
(12, 'pt-br', 'Portuguese (Brazil)', 'disabled', NULL, NULL),
(13, 'ro', 'Romanian', 'disabled', NULL, NULL),
(14, 'ru', 'Russian', 'enabled', NULL, NULL),
(15, 'tr', 'Turkish', 'disabled', NULL, NULL),
(16, 'zh-CN', 'Chinese (S)', 'disabled', NULL, NULL),
(17, 'zh-TW', 'Chinese (T)', 'disabled', NULL, NULL),
(18, 'en', 'English', 'enabled', '2024-05-16 06:11:52', '2024-05-16 06:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `linked_in_settings`
--

CREATE TABLE `linked_in_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('enable','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disable',
  `callback_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `linked_in_settings`
--

INSERT INTO `linked_in_settings` (`id`, `client_id`, `client_secret`, `status`, `callback_url`, `created_at`, `updated_at`) VALUES
(1, '', '', 'disable', '', '2024-05-16 06:11:52', '2024-05-16 06:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2018_06_03_132522_create_job_categories_table', 1),
(10, '2018_06_04_152857_create_skills_table', 1),
(11, '2018_06_04_152868_create_qualifications_table', 1),
(12, '2018_06_04_154802_create_countries_table', 1),
(13, '2018_06_04_155025_create_job_location_table', 1),
(14, '2018_06_04_162741_create_departments_table', 1),
(15, '2018_06_04_162742_create_company_settings_table', 1),
(16, '2018_06_04_171243_create_certifications_table', 1),
(17, '2018_06_04_171244_create_jobs_table', 1),
(18, '2018_06_04_171245_create_jobrecruitments_table', 1),
(19, '2018_06_04_172111_create_job_skills_table', 1),
(20, '2018_06_04_174729_create_application_status_table', 1),
(21, '2018_06_04_174936_create_job_applications_table', 1),
(22, '2018_06_05_165900_create_tasks_table', 1),
(23, '2018_06_28_191256_create_language_settings_table', 1),
(24, '2018_07_03_054511_entrust_setup_tables', 1),
(25, '2018_07_08_103701_create_modules_table', 1),
(26, '2018_07_09_071111_add_permissions', 1),
(27, '2018_07_11_070438_add_skills_permissions', 1),
(28, '2018_07_11_084527_add_locations_permissions', 1),
(29, '2018_07_11_102717_add_jobs_permissions', 1),
(30, '2018_07_12_190134_add_slug_column_jobs_table', 1),
(31, '2018_07_13_190220_add_job_application_permission', 1),
(32, '2018_07_16_120833_add_column_priority_column_job_applications', 1),
(33, '2018_07_17_053002_add_image_column_users_table', 1),
(34, '2018_07_17_061732_add_team_permission', 1),
(35, '2018_07_17_113611_create_theme_settings_table', 1),
(36, '2018_07_19_064526_create_notifications_table', 1),
(37, '2018_09_11_195258_fix_user_roles', 1),
(38, '2018_10_12_120216_create_smtp_settings_table', 1),
(39, '2018_10_15_120216_create_questions_table', 1),
(40, '2018_10_15_130216_create_job_questions_table', 1),
(41, '2018_10_15_140216_create_job_question_answer_table', 1),
(42, '2018_10_15_261732_add_question_permission', 1),
(43, '2018_10_17_051239_alter_smtp_setting_table', 1),
(44, '2018_10_29_140216_create_interview_schedule_table', 1),
(45, '2018_10_31_061732_add_interview_schedule_permission', 1),
(46, '2018_11_01_140216_create_schedule_employee_table', 1),
(47, '2018_12_08_051239_alter_interview_schedule_table', 1),
(48, '2018_12_08_840216_create_schedule_comment_table', 1),
(49, '2018_12_13_104131_change_cover_letter_column_nullable_job_applications_table', 1),
(50, '2018_12_14_251239_alter_job_application_table', 1),
(51, '2018_12_21_251239_alter_job_application_rating_table', 1),
(52, '2019_03_14_113901_create_companies_table', 1),
(53, '2019_03_14_114823_add_company_id_column', 1),
(54, '2019_03_14_115620_add_company_permissions', 1),
(55, '2019_03_14_131217_add_status_column_companies_table', 1),
(56, '2019_03_16_061717_add_show_in_frontend_column_companies_table', 1),
(57, '2019_08_13_073129_update_settings_add_envato_key', 1),
(58, '2019_08_13_073129_update_settings_add_support_key', 1),
(59, '2019_08_28_081847_update_smtp_setting_verified', 1),
(60, '2019_09_16_081847_add_image_theme_setting_table', 1),
(61, '2019_10_03_061505_create_sticky_notes_table', 1),
(62, '2019_11_05_061546_create_new_job_email_status_table', 1),
(63, '2019_11_06_055738_create_sms_settings_table', 1),
(64, '2019_11_06_055900_add_mobile_related_columns_in_users_table', 1),
(65, '2019_11_12_044756_create_linked_in_settings_table', 1),
(66, '2019_11_12_044955_add_linkedin_columns_to_companies_table', 1),
(67, '2019_11_12_054145_add_system_update_column_in_company_settings_table', 1),
(68, '2019_11_20_1074848_create_designation_table', 1),
(69, '2019_11_20_1174848_create_onboard_details_table', 1),
(70, '2019_11_20_1274848_create_onboard_files_table', 1),
(71, '2019_12_01_060100_create_applicant_notes_table', 1),
(72, '2019_12_02_115133_alter_onboard_status_table', 1),
(73, '2019_12_10_110039_create_footer_settings_table', 1),
(74, '2019_12_23_081452_create_todo_items_table', 1),
(75, '2020_01_07_060649_add_gender_age_country_city_columns_to_job_applications_table', 1),
(76, '2020_01_07_060725_add_required_columns_column_in_jobs_table', 1),
(77, '2020_01_08_044909_add_english_row_in_language_settings_table', 1),
(78, '2020_01_09_110009_add_skills_column_in_job_applications_table', 1),
(79, '2020_01_29_092642_create_application_settings_table', 1),
(80, '2020_02_01_101914_update_settings_review', 1),
(81, '2020_04_16_043747_add_mail_setting_column_in_application_settings_table', 1),
(82, '2020_04_22_041412_add_meta_details_and_section_visibility_columns_in_jobs_table', 1),
(83, '2020_04_22_065801_remove_profile_image_show_column_from_application_settings_table', 1),
(84, '2020_04_24_045232_create_documents_table', 1),
(85, '2020_05_19_083936_add_position_and_color_columns_in_application_status_table', 1),
(86, '2021_07_06_044438_create_zoom_meetings_table', 1),
(87, '2021_07_06_045310_create_zoom_settings_table', 1),
(88, '2021_07_06_045757_create_user_zoom_meeting_table', 1),
(89, '2021_07_06_045927_create_zoom_category_table', 1),
(90, '2021_07_06_050209_add_category_id_zoom_meetings_table', 1),
(91, '2021_07_06_051948_add_meeting_app_column_settings_table', 1),
(92, '2021_07_07_090754_add_interview_type_in_interview_schedules_table', 1),
(93, '2021_07_16_093106_change_interview_type_column_nullable_in_interview_schedules_table', 1),
(94, '2021_07_16_103028_add_zoom_enable_column_in_zoom_setting_table', 1),
(95, '2021_11_30_120644_create_currencies_table', 1),
(96, '2021_12_01_061157_add_currency_id_on_board_details_table', 1),
(97, '2021_12_30_050309_create_storage_settings_table', 1),
(98, '2022_01_27_090022_add_disable_frontend_in_theme_settings_table', 1),
(99, '2022_02_18_050542_add_cancel_reason_column_in_on_board_detail_table', 1),
(100, '2022_04_25_064140_add_colomn_in_company_settings_table', 1),
(101, '2022_05_02_051239_alter_company_seeting_meta_detail_table', 1),
(102, '2022_05_02_110159_add_colmn_in_questions_table', 1),
(103, '2022_05_30_085832_create_job_types_table', 1),
(104, '2022_05_31_091613_add_colomn_in_jobs_table', 1),
(105, '2022_06_06_062626_add_colomn_in_job_applications_table', 1),
(106, '2022_06_08_081314_add_front_language_colomn_in_company_settings_table', 1),
(107, '2022_07_14_052807_create_job_alerts_table', 1),
(108, '2022_07_14_063541_create_job_alert_categories_table', 1),
(109, '2022_07_14_063919_create_job_alert_locations_table', 1),
(110, '2022_07_19_050512_add_column_job_alert_status_in_company_settings_table', 1),
(111, '2022_07_26_055847_create_job_offer_questions_table', 1),
(112, '2022_07_26_083142_create_job_onboard_questions_table', 1),
(113, '2022_07_26_114355_create_onboard_answers_table', 1),
(114, '2022_11_11_070118_add_address_to_job_applications_table', 1),
(115, '2022_11_17_055454_add_job_application_limitation_to_application_settings_table', 1),
(116, '2023_01_09_062603_add_google_map_api_key_to_application_settings_table', 1),
(117, '2023_01_31_103937_create_courses_table', 1),
(118, '2023_01_31_105846_create_subjects_table', 1),
(119, '2023_02_01_051740_create_onlinequestions_table', 1),
(120, '2023_02_01_111537_create_onlinexams_table', 1),
(121, '2023_02_02_054215_create_onlinequestions_onlinexams', 1),
(122, '2023_02_02_104337_create_onlinequestion_onlinexam', 1),
(123, '2023_02_03_063311_create_onlinexam_job_applications_table', 1),
(124, '2023_02_04_154535_create_erves_table', 1),
(125, '2023_02_04_165953_create_erfskills_table', 1),
(126, '2023_02_10_170529_create_jobassigns_table', 1),
(127, '2023_03_02_105312_create_onlinexamresults_table', 1),
(128, '2023_04_05_160628_add_departments_permissions', 1),
(129, '2023_04_05_164211_add_exam_permissions', 1),
(130, '2023_04_05_164744_add_qualification_permissions', 1),
(131, '2024_05_15_172520_add_column_to_user_id_table', 1),
(132, '2024_05_16_234201_create_subqualifications_table', 2),
(133, '2024_05_16_235746_create_jdstores_table', 3),
(134, '2024_05_17_002122_create_offerletters_table', 3),
(135, '2024_07_17_103318_create_candidate_skills_table', 4),
(136, '2024_07_17_103540_create_project_works_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'job categories', '', NULL, NULL),
(2, 'job skills', '', NULL, NULL),
(3, 'Candidate', '', NULL, NULL),
(8, 'team', '', NULL, NULL),
(10, 'schedule', '', '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(12, 'department', '', NULL, NULL),
(14, 'qualification', '', NULL, NULL),
(15, 'Certification', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Salary', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Onboard', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Offer Letter', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Title', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Feedback', '', '2024-07-09 06:46:33', '2024-07-09 06:46:46'),
(21, 'Project', '', '2024-07-09 09:53:38', '2024-07-09 09:53:38'),
(22, 'MRF', '', '2024-07-09 09:53:38', '2024-07-09 09:53:38'),
(23, 'Job Description', '', '2024-07-09 12:48:48', '2024-07-09 12:48:48'),
(24, 'Documentation', NULL, '2024-07-22 11:30:17', '2024-07-22 11:30:17'),
(25, 'PCC Documentation', NULL, '2024-07-22 11:31:39', '2024-07-22 11:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0659b8cba149a02898905de37a0330bd14ee53150e7e3954606039343a8b4ac3d1db1fe0ee692060', 1, 9, 'CIPL', '[]', 0, '2024-07-04 13:11:12', '2024-07-04 13:11:12', '2025-07-04 18:41:12'),
('06b13c2de08f05bebdba66c4a9ee7bd17265617dfa9221afede0a13ccdf798c5426fa75a3272e2ed', 1, 9, 'CIPL', '[]', 0, '2024-06-27 06:11:15', '2024-06-27 06:11:15', '2025-06-27 11:41:15'),
('084b7cf2e63f020b0ef21d86bb6dede9f7ccf2f241cd42ae1e82ab04d83e5f24fe13fba9dda99f11', 1, 9, 'CIPL', '[]', 0, '2024-07-01 10:25:08', '2024-07-01 10:25:08', '2025-07-01 15:55:08'),
('0bd1fdbb97e97dadce7f250d1e19cc272aa22e56368104aee1a216df8dcecf54faf250e23c155a62', 8, 9, 'CIPL', '[]', 0, '2024-05-28 09:31:41', '2024-05-28 09:31:41', '2025-05-28 15:01:41'),
('0c6264cb7c59a268b16480a083eb655e7f0271edcc7cb627bd50e3351c052a95d3f61bd8147f0df9', 1, 9, 'CIPL', '[]', 0, '2024-07-04 13:18:04', '2024-07-04 13:18:04', '2025-07-04 18:48:04'),
('0cc76780433dc6b84f1752866a01142e1824ab1d5a5dad90cb37702bc14b114d192dc36ce556428a', 1, 9, 'CIPL', '[]', 0, '2024-06-25 06:21:00', '2024-06-25 06:21:00', '2025-06-25 11:51:00'),
('0df795ec67b2790890be9e055c5188f8fbc41e515636cfd7880e90a3efa93ec3f724ee242a5e6ddf', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:54:22', '2024-06-25 04:54:22', '2025-06-25 10:24:22'),
('0e40298f47e370cd288d383de449b3421519396fd0d42e3e38a0aff12f8567bad7a5f9e8754ca013', 1, 9, 'CIPL', '[]', 0, '2024-07-03 04:54:35', '2024-07-03 04:54:35', '2025-07-03 10:24:35'),
('0ede9d8d9f73321a40850ddfbf0a2839c52512a5550e0002a9448f3f7c65bdd23639118c1c9b42f7', 1, 9, 'CIPL', '[]', 0, '2024-06-06 10:54:50', '2024-06-06 10:54:50', '2025-06-06 16:24:50'),
('0ee34b786bbd04b3519d75565462de91cc0b14ce2e61bb69842d6a545d75d27c52e1029a84d8613d', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:50:00', '2024-06-25 04:50:00', '2025-06-25 10:20:00'),
('10cde3f474140d09b3d5cbbe98e7981f7bac1ff617853f7f3cab44354e4d8c5418085f5d528d47e5', 1, 13, 'CIPL', '[]', 0, '2024-07-10 09:20:49', '2024-07-10 09:20:49', '2025-07-10 14:50:49'),
('1437c42f27975aadaae0066918bff2b952a3affe181945e8f20499279c5db51e72649e053e11c2fd', 1, 21, 'CIPL', '[]', 0, '2024-07-18 06:31:48', '2024-07-18 06:31:48', '2025-07-18 12:01:48'),
('159c845dc5e19fe82cd6fdadc01f976aa036abfffba1e54d718b120c1cff4b25fdc3e8ab2a54a621', 1, 9, 'CIPL', '[]', 0, '2024-06-26 08:46:08', '2024-06-26 08:46:08', '2025-06-26 14:16:08'),
('17aba6b73937756a68ff001093846258a8561d2ab0c5b989f8d785d6e4df8bae8a21a5e2bcce190a', 1, 5, 'CIPL', '[]', 0, '2024-05-20 11:31:22', '2024-05-20 11:31:22', '2025-05-20 17:01:22'),
('17c1f594b3ba19491524b7b232cb8b249347ea88ee1475276c49f0bf4b14eddd9e40943419f732c2', 1, 21, 'CIPL', '[]', 0, '2024-07-26 12:32:43', '2024-07-26 12:32:43', '2025-07-26 18:02:43'),
('1b901dab4a013245f7a8537202935a131dddecbd845af5c40dc8c88711626ecd5b9553033126a116', 1, 13, 'CIPL', '[]', 0, '2024-07-08 10:11:33', '2024-07-08 10:11:33', '2025-07-08 15:41:33'),
('1c51ba5a4002d8bad6e6ba39368ecc232a180986ab4f95acd307c134f2cbdd60e4f7147d15d95298', 1, 21, 'CIPL', '[]', 0, '2024-07-18 07:36:25', '2024-07-18 07:36:25', '2025-07-18 13:06:25'),
('1d638e37cd38c9d196dad337438770172e51686a04a724aa9192f5b86451fb005aad9a48ee068df2', 1, 9, 'CIPL', '[]', 0, '2024-06-17 09:59:11', '2024-06-17 09:59:11', '2025-06-17 15:29:11'),
('1df4ba9ec3c886578ea0e5a85b62eefe75b4de2dc49f50dc5209e02d5b546a01bdcdc77dfd7a456c', 1, 9, 'CIPL', '[]', 0, '2024-06-30 17:25:41', '2024-06-30 17:25:41', '2025-06-30 22:55:41'),
('1fd10b580f71c911f0ff1a5641d6a8f0a4d7284094ec7b65fe19edc66fe830ea541963b06f2bac44', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:52:59', '2024-06-25 04:52:59', '2025-06-25 10:22:59'),
('20002933d3fdcdd01eb1fb4bedd0b338eac3315facc866ec02ae0ef2049827327cd0bfb884614167', 1, 9, 'CIPL', '[]', 0, '2024-06-20 07:26:29', '2024-06-20 07:26:29', '2025-06-20 12:56:29'),
('20b45e233f01989e530176c7e7bc9220abe740644bbd4e1b8b7b6704906fa15e4f1fbcd80785e313', 1, 21, 'CIPL', '[]', 0, '2024-07-26 10:40:51', '2024-07-26 10:40:51', '2025-07-26 16:10:51'),
('227604bad616c62dfcd696f0a3ec6af40022e79af7b67cea8c470e891549c98e60b3d23d5613c927', 1, 9, 'CIPL', '[]', 0, '2024-06-19 10:08:22', '2024-06-19 10:08:22', '2025-06-19 15:38:22'),
('2331623523de0fa96433da3ce72814ddf2b5256c31fcc6ac12064c877fe126570ac14e7e2d67b5ab', 1, 9, 'CIPL', '[]', 0, '2024-06-30 16:29:47', '2024-06-30 16:29:47', '2025-06-30 21:59:47'),
('23337885936ea555e93e33e339acb7c98c8e59ff597d437d30a5f6bf2abb30098848881cf9192ee1', 1, 21, 'CIPL', '[]', 0, '2024-09-06 11:35:51', '2024-09-06 11:35:51', '2025-09-06 17:05:51'),
('27c506ab07d9aa9a04fe7dfb21b7e2e8da99d12c7b5e6e1c26a0417435102b104c053dacc3f16e82', 8, 13, 'CIPL', '[]', 0, '2024-07-10 13:18:47', '2024-07-10 13:18:47', '2025-07-10 18:48:47'),
('2819ad3c18808abea4f47ec99199346a02a0917c68152b723c2879d74b7db5de9ecf9a0e142c448b', 1, 21, 'CIPL', '[]', 0, '2024-08-20 08:06:13', '2024-08-20 08:06:13', '2025-08-20 13:36:13'),
('28ac868c1598eea74dd833de0e1f7926aa221f8bf5bc05015c2701ca698cb7661d386c588984ca87', 1, 13, 'CIPL', '[]', 0, '2024-07-09 04:56:54', '2024-07-09 04:56:54', '2025-07-09 10:26:54'),
('28e7d741c6cba304e3d44e7e2bc87f737144330eb8da84186ff6a0f6553bbb2d42c9f98e61f25384', 1, 9, 'CIPL', '[]', 0, '2024-07-05 06:38:55', '2024-07-05 06:38:55', '2025-07-05 12:08:55'),
('29b723e9d48dfc045074b7153b238aa5f55755fbca2a7954534b6fb759e8327d088c4660bd7a510b', 1, 9, 'CIPL', '[]', 0, '2024-06-20 06:51:38', '2024-06-20 06:51:38', '2025-06-20 12:21:38'),
('2b0cf0a993b76ef1103912585910b889e6eea1c2ab0580b9ab2daf01c95657661ad4aa5ecb835977', 1, 9, 'CIPL', '[]', 0, '2024-05-28 09:33:03', '2024-05-28 09:33:03', '2025-05-28 15:03:03'),
('2dfba6961127d618f3bab5588a04ae4988f4c9cd1b2bd89d88f6551c377c40c7cdabd1a982e75036', 1, 15, 'CIPL', '[]', 0, '2024-07-16 10:16:17', '2024-07-16 10:16:17', '2025-07-16 15:46:17'),
('2e22f59f0639c822c3c3c3d63f35978d8457344a56edfa7e9db39bcb6f20372ba49cfefce8442b8c', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:49:48', '2024-06-25 04:49:48', '2025-06-25 10:19:48'),
('2f19f20b7d18825f10f1d7012945b69807f75ab738af2e69e6ce769a0f6122f42a49387d4212469e', 1, 9, 'CIPL', '[]', 0, '2024-06-29 07:17:16', '2024-06-29 07:17:16', '2025-06-29 12:47:16'),
('2f73d4d3ab8055d479e2ff3eb1afe5a2fc62aee0c7dbe85c0e0cb474ecbc97890808011445442270', 1, 7, 'CIPL', '[]', 0, '2024-05-22 06:49:44', '2024-05-22 06:49:44', '2025-05-22 12:19:44'),
('2fb3e6830085969204b5d35898086e5f23f27cada59a48fb102d9b00e0d6389e23400ffdf2bff7f1', 1, 9, 'CIPL', '[]', 0, '2024-06-17 09:40:37', '2024-06-17 09:40:37', '2025-06-17 15:10:37'),
('31ef828ad01f1b0b0825e6e31300594f67d84779e701c8671211425de332c6f95352269578cef3a9', 1, 9, 'CIPL', '[]', 0, '2024-06-28 05:53:03', '2024-06-28 05:53:03', '2025-06-28 11:23:03'),
('3274923676d64a7b41fc1a89818b39a161d63507cf83d4ea71e3d047269e40ca3da50e5bfdacea4f', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:49:54', '2024-06-25 04:49:54', '2025-06-25 10:19:54'),
('38308e1d81289aabf0796a39134bfb0e1cc55568965911caedebfe095a6b6c2b34b51075770aaf4a', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:49:50', '2024-06-25 04:49:50', '2025-06-25 10:19:50'),
('3c44ad79330c3bb527e229e1bc77d8b61df7a2f62c186e78ade3bae1bf6025e584a8232d4295c9c0', 1, 9, 'CIPL', '[]', 0, '2024-06-29 18:06:40', '2024-06-29 18:06:40', '2025-06-29 23:36:40'),
('3de9b3e2800d83d23096e99100347b2aa4a478c4393161dbbb704f6dde6d9a7e131f1ba7883ec45d', 1, 13, 'CIPL', '[]', 0, '2024-07-10 04:49:21', '2024-07-10 04:49:21', '2025-07-10 10:19:21'),
('3f4c8049c511d663762815cae43a6c72a0b078dba0b8dd7a6158bfacc1458afae2c2ac6b7e52ced2', 1, 9, 'CIPL', '[]', 0, '2024-07-01 05:30:02', '2024-07-01 05:30:02', '2025-07-01 11:00:02'),
('3f8a2320921ddae7f8cb2a466e1f89530be2e5fb57f5494db48a70c363fa0cf568f997526062bb14', 1, 21, 'CIPL', '[]', 0, '2024-09-06 11:08:25', '2024-09-06 11:08:25', '2025-09-06 16:38:25'),
('404b9ec1ef2f32f77c385026dac8ae6d6c070dd187f9110bc5e6e124d711c947516e52f892dbbc30', 1, 9, 'CIPL', '[]', 0, '2024-05-28 09:13:46', '2024-05-28 09:13:46', '2025-05-28 14:43:46'),
('41f2688d37e3b61ecff17ea9a43f3853ac07f72e995b11703fe7e18df2e1318774078e4f42369704', 1, 9, 'CIPL', '[]', 0, '2024-05-28 07:38:44', '2024-05-28 07:38:44', '2025-05-28 13:08:44'),
('4694973e3d4a143dcaf39ea87915e0586015587abe1799cd73e640277ee109d4e1d9bcaa3d46a581', 1, 21, 'CIPL', '[]', 0, '2024-07-29 06:58:41', '2024-07-29 06:58:41', '2025-07-29 12:28:41'),
('47c9b7d29c38dd8cc907c04d4555e0b5451e04730984460eddfc9f2a4462e814f36b65884a636c5a', 1, 7, 'CIPL', '[]', 0, '2024-05-28 06:10:43', '2024-05-28 06:10:43', '2025-05-28 11:40:43'),
('492cd879b1bd94c8dd4e23d726ae39846c6eadf8f6fc0ab46eaf280eaf18d6a40811a15863bc5b47', 1, 7, 'CIPL', '[]', 0, '2024-05-24 05:24:20', '2024-05-24 05:24:20', '2025-05-24 10:54:20'),
('495ac17fcf72dd270a733d9a2d69672700fa5398ea17c04faa1cc32f9d4f79c8ce183a08ae4ba991', 17, 21, 'CIPL', '[]', 0, '2024-09-06 11:33:36', '2024-09-06 11:33:36', '2025-09-06 17:03:36'),
('4ae3d1ce086d9a7ef3e31d9f706eb1f56da7762815cad1e18a3854cadd3454481145247d2c1c224d', 1, 13, 'CIPL', '[]', 0, '2024-07-10 09:16:11', '2024-07-10 09:16:11', '2025-07-10 14:46:11'),
('4c5e9d3fc669194bcc16a97fd03c2cd3086fd2e59d8d8da2206c8a718cc0591414d65676c237dfce', 1, 9, 'CIPL', '[]', 0, '2024-07-01 10:44:53', '2024-07-01 10:44:53', '2025-07-01 16:14:53'),
('4e4ff4574002512ff7a74e0fc4e3541c8c020b9247baea061f155f82681e4e95c3a21f9525b03c8a', 1, 9, 'CIPL', '[]', 0, '2024-05-31 17:11:22', '2024-05-31 17:11:22', '2025-05-31 22:41:22'),
('4fd1c7b13c680f7b1f5167a773239c441e672eabf68a12c0e7e63163d790585d09b503e508ca04f5', 1, 9, 'CIPL', '[]', 0, '2024-06-20 06:58:17', '2024-06-20 06:58:17', '2025-06-20 12:28:17'),
('5430b97d987ee8c9c954bb59f5c759407fd0e89a681b343cb6f74531e81af7c6fa860f1afda18102', 1, 9, 'CIPL', '[]', 0, '2024-05-28 09:20:56', '2024-05-28 09:20:56', '2025-05-28 14:50:56'),
('5497f4082c8b7be9046cc08c863e20a8241294545591e65484f649d239ac36eaa448e6b1911ac8ef', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:03', '2024-05-29 13:13:03', '2025-05-29 18:43:03'),
('56608aad5fbe43c1380fd0ad5e2e3a3f9ec1d26ec02cafdafd920fea55a189638e81238861b526c5', 1, 21, 'CIPL', '[]', 0, '2024-07-26 10:50:16', '2024-07-26 10:50:16', '2025-07-26 16:20:16'),
('5d30f6de26273e124430e32ffe7636a13adafe31e8f4b76a919836732b85e70a4d649bf2c7816cc1', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:53:15', '2024-06-25 04:53:15', '2025-06-25 10:23:15'),
('62719a9c229c0a6d06040b0d56ab04e8f17bdbe9a9b7043f6507e5e98533cecbd539affb2c51f694', 1, 7, 'CIPL', '[]', 0, '2024-05-27 12:29:09', '2024-05-27 12:29:09', '2025-05-27 17:59:09'),
('627c4bf20424d4311d4db269b6603cf59f121677617c1db169ac532f9820c25b29b6e62a2854c294', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:51:15', '2024-06-25 04:51:15', '2025-06-25 10:21:15'),
('64f05b04b85de3cffa9db4a37a5ff8c0b3650168e89d27eabd18bcce30877625e40019f28c1753e5', 1, 9, 'CIPL', '[]', 0, '2024-05-30 06:51:36', '2024-05-30 06:51:36', '2025-05-30 12:21:36'),
('67278a4ccafb9ca5f2b01b3c59c636075f2e2d66461c9d36f1f91c72e0a146d0d63aef9140597fcf', 1, 9, 'CIPL', '[]', 0, '2024-06-28 06:13:13', '2024-06-28 06:13:13', '2025-06-28 11:43:13'),
('6731e26a0405710e909fcdde93441304a1ae2bc6de655ecbf4ecb2537184a18732ae77beb919d757', 1, 7, 'CIPL', '[]', 0, '2024-05-27 12:07:20', '2024-05-27 12:07:20', '2025-05-27 17:37:20'),
('67973c4d5ae48c876e140ec0b9bc7c468438b8ef34d88ac89e7bcd4dbb25b8b00b5b981454761a66', 1, 9, 'CIPL', '[]', 0, '2024-06-13 09:24:29', '2024-06-13 09:24:29', '2025-06-13 14:54:29'),
('682cc7373740e8fbb7cff877acc80f81d140a8a692f538cff523de9d942493464e62585c717ae7cb', 1, 9, 'CIPL', '[]', 0, '2024-06-05 06:18:28', '2024-06-05 06:18:28', '2025-06-05 11:48:28'),
('686d08b68bdf5dab2a6ad095b5c90897208d9571ca6d4f1a79aa7c207973d7a4d7d29e4f46673b0c', 1, 9, 'CIPL', '[]', 0, '2024-07-07 15:19:44', '2024-07-07 15:19:44', '2025-07-07 20:49:44'),
('6b249dda00d16f7ea0be7853dc4cd51b6898bdbd4a0d5d9fc5d1316421a992bf0e2c66bbab2fa777', 1, 13, 'CIPL', '[]', 0, '2024-07-09 09:16:04', '2024-07-09 09:16:04', '2025-07-09 14:46:04'),
('6dbd694fc7ca3c99cf6d4bbe9b4e4f39b6551cee6080999fd583f2a2276ca3d56c70a65c1aa12800', 17, 21, 'CIPL', '[]', 0, '2024-09-08 14:37:24', '2024-09-08 14:37:24', '2025-09-08 20:07:24'),
('6e3366e47599f90e3663c39139264caefcc2be39069da9a3fdb0512eebcf91c02a06a14a1072e905', 1, 9, 'CIPL', '[]', 0, '2024-06-03 04:43:45', '2024-06-03 04:43:45', '2025-06-03 10:13:45'),
('6f04f16e32885e28350d54dcd0badbe05ca4a253f5453564dd0086af029a6d92c150a68e96cb4ad9', 1, 9, 'CIPL', '[]', 0, '2024-07-02 07:02:14', '2024-07-02 07:02:14', '2025-07-02 12:32:14'),
('7255e5c4e05bc70138f30f4fd9d660501d76e8973c85ab6b656f7f49f8e04fccaa4ec57b649da15d', 1, 13, 'CIPL', '[]', 0, '2024-07-10 13:19:31', '2024-07-10 13:19:31', '2025-07-10 18:49:31'),
('744e0ecac695f190a6eacc2f37894ce65e6cbf489b670a2c98e1424201b5c61a8de6b3f3f228a606', 1, 1, 'CIPL', '[]', 0, '2024-05-16 07:04:30', '2024-05-16 07:04:30', '2025-05-16 12:34:30'),
('758dc370aa4cf7432b7ef9114f75665da054c77f63036ce79d653b348f78332e2afc4b314f089cb1', 1, 9, 'CIPL', '[]', 0, '2024-07-03 10:50:21', '2024-07-03 10:50:21', '2025-07-03 16:20:21'),
('796bf053fd42f0fdd5b85b0af3dcf250bdbc015b8a011b884a1b27ce0e0ad0c8f3b222a9ad07a8a9', 1, 9, 'CIPL', '[]', 0, '2024-06-28 12:36:18', '2024-06-28 12:36:18', '2025-06-28 18:06:18'),
('79e4b7fe6e9cf3bae2c433a1096c3248f1d924d8c8fd96c5d2fb88447b71693f8c70ca4d28fb32b1', 1, 9, 'CIPL', '[]', 0, '2024-06-03 09:10:11', '2024-06-03 09:10:11', '2025-06-03 14:40:11'),
('79fc7811c4db8906b583ec22b0d20cf5a825729ea83663e6eb04651921bded6ad1c61c561c008763', 1, 21, 'CIPL', '[]', 0, '2024-07-25 04:41:29', '2024-07-25 04:41:29', '2025-07-25 10:11:29'),
('7b3329465bada9fe94357c47eff4dc3c884517c18d59ad5dd3aca0ecef91308fac464e26a827d1c1', 1, 9, 'CIPL', '[]', 0, '2024-06-28 11:15:30', '2024-06-28 11:15:30', '2025-06-28 16:45:30'),
('7b7d042e569ecc6e38d7967b9260310a327c931132817a2c155bb65f31041f67768f97baa795b4d1', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:04', '2024-05-29 13:13:04', '2025-05-29 18:43:04'),
('7bc07e43cb3f35d95de7feacb64702a1298c98a4df628d4570fb33b96c989b0e4d46cdd2c2afeb1b', 1, 9, 'CIPL', '[]', 0, '2024-07-07 18:31:42', '2024-07-07 18:31:42', '2025-07-08 00:01:42'),
('8a37a0b8f390dc4967fa98fb9b74c99be9c326efa4e569ab09185b81c16e4e95b76f79815ff7a56e', 1, 9, 'CIPL', '[]', 0, '2024-07-06 16:55:26', '2024-07-06 16:55:26', '2025-07-06 22:25:26'),
('8ad7abb3d4fad4cc0aaaf9e161e6c12f806d4b396075af9685bc67ba3f66e329a87a443c25ce1fd8', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:04', '2024-05-29 13:13:04', '2025-05-29 18:43:04'),
('8b30ab8d24b505a2a889c3e52e0db510f545967bc27ebf531f3193a7575a515e014ab64305c2ba46', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:53:03', '2024-06-25 04:53:03', '2025-06-25 10:23:03'),
('8c879f1247f46e80a845dc9617e9c64f931759c0cbcb9daf2ec25aff407a9c17003f82ce9f3b4f76', 1, 9, 'CIPL', '[]', 0, '2024-06-26 04:56:51', '2024-06-26 04:56:51', '2025-06-26 10:26:51'),
('8d7d77f677cb957286e39c1188371adce693b12c6303194b67a887d486ba81005a653377995ecdb8', 1, 9, 'CIPL', '[]', 0, '2024-07-08 07:06:41', '2024-07-08 07:06:41', '2025-07-08 12:36:41'),
('8e5d7c6a11de90ffed408f1f45dbd09e29efe91982f0e7eeca408212841462fba76b77db94c00c0b', 1, 13, 'CIPL', '[]', 0, '2024-07-10 07:46:40', '2024-07-10 07:46:40', '2025-07-10 13:16:40'),
('930d92770c2ecce52dc32c52cdf6b35811542620f74d8efed173070b6975da36db32e58e73d74081', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:02', '2024-05-29 13:13:02', '2025-05-29 18:43:02'),
('96512cc553f7c8a13346b03692054a367f324fa6eebddc406687724f4ed94deea4917d8f20781ccf', 1, 9, 'CIPL', '[]', 0, '2024-05-28 07:39:51', '2024-05-28 07:39:51', '2025-05-28 13:09:51'),
('972fc5a1291929e9894cf07aa6b3bb899a77f2fa8ba05fe684bde79e9e4503afbc4a455095cdf405', 1, 9, 'CIPL', '[]', 0, '2024-06-25 09:29:31', '2024-06-25 09:29:31', '2025-06-25 14:59:31'),
('9829b7c5c5fc2d42133f62373d42ab3334ec3dacc3729905341c299a16ca92ae4b5eba6a446e28de', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:02', '2024-05-29 13:13:02', '2025-05-29 18:43:02'),
('a438bb7a77eb5ff1d83cdab2c8e2a22cb903b802f1de5ca595d8fda07b47e8a7df35620eb8364169', 1, 9, 'CIPL', '[]', 0, '2024-07-07 15:48:29', '2024-07-07 15:48:29', '2025-07-07 21:18:29'),
('a523f65f02a2d021a53f4160737aede284bb5045c01adf75c07c29852682054ce80a9206badce3d1', 1, 9, 'CIPL', '[]', 0, '2024-06-20 06:57:06', '2024-06-20 06:57:06', '2025-06-20 12:27:06'),
('a6e85c5f344eba2aed53aa91e1c7a4e4d970875c4ae2f1a5680799b427af77534ec9bf05a56ef11f', 1, 13, 'CIPL', '[]', 0, '2024-07-12 11:42:24', '2024-07-12 11:42:24', '2025-07-12 17:12:24'),
('a75107e7625197dbd94e63bed440261325a42255bc60ab58c63d870d02a3952de8a40d71e7901504', 1, 9, 'CIPL', '[]', 0, '2024-06-03 05:16:02', '2024-06-03 05:16:02', '2025-06-03 10:46:02'),
('a8c21d93830b586864dd9f30ab3557c36c143db712902595becd29ab67b5d3fb1fa7f086330a40e5', 1, 21, 'CIPL', '[]', 0, '2024-07-26 10:30:15', '2024-07-26 10:30:15', '2025-07-26 16:00:15'),
('ad14f8768642117f636b787bfa3ad87030116273932403dc2b6e616d031c1191d4c09d8189151284', 1, 9, 'CIPL', '[]', 0, '2024-06-20 07:02:03', '2024-06-20 07:02:03', '2025-06-20 12:32:03'),
('ae700b4b13ad55af668d31a15262fd3d97bfab7673545f0f4571e6607faf94e83812d797d3025195', 1, 9, 'CIPL', '[]', 0, '2024-07-04 12:27:57', '2024-07-04 12:27:57', '2025-07-04 17:57:57'),
('af377b7c959a74f903537f90a5e1809533e72fbabd8335d20bcfbad9f9dda76481a17e902f967a0e', 1, 9, 'CIPL', '[]', 0, '2024-05-28 11:19:10', '2024-05-28 11:19:10', '2025-05-28 16:49:10'),
('af50732b8fac791d30833b0626ada8b524c396c3b1ecf2fd5ab6f7958ac1ebdf95809b4416dd1139', 1, 9, 'CIPL', '[]', 0, '2024-07-06 19:20:05', '2024-07-06 19:20:05', '2025-07-07 00:50:05'),
('b35d0bad372489fb63c7301c341d47b26e42e74d28cdd1f9506a5cd2c8f7f3a261d9037589634fd7', 1, 9, 'CIPL', '[]', 0, '2024-06-26 09:39:02', '2024-06-26 09:39:02', '2025-06-26 15:09:02'),
('b51caea162cefeeee46bb6a6bdd1e6f870b16509fa2013386cd812cb650174168347422bfacfc172', 1, 9, 'CIPL', '[]', 0, '2024-07-03 09:37:14', '2024-07-03 09:37:14', '2025-07-03 15:07:14'),
('b5796a8805099c9446b40773665cd962c7f63beb1111e5afa360b9a495a6ffea849f7c81084b21bb', 1, 9, 'CIPL', '[]', 0, '2024-06-25 04:49:46', '2024-06-25 04:49:46', '2025-06-25 10:19:46'),
('b6625651612147a1aeb14fcfca07a6910b9be343c0ac97a148c2d56462b2bce2009145f9aad02d26', 1, 9, 'CIPL', '[]', 0, '2024-06-29 15:43:17', '2024-06-29 15:43:17', '2025-06-29 21:13:17'),
('b97c48c81e4f447d22e2056c586be2703735dfce757fa70f9d796e065365fb6a5d7f2c47f2975737', 1, 9, 'CIPL', '[]', 0, '2024-06-17 06:28:22', '2024-06-17 06:28:22', '2025-06-17 11:58:22'),
('bb63e29784fa562cc2b4aa8adaba17c447166f22a0f75084b5cafd93a4940c1ff57807caaa5b4793', 1, 9, 'CIPL', '[]', 0, '2024-07-04 09:33:58', '2024-07-04 09:33:58', '2025-07-04 15:03:58'),
('bccbfd27b5eae041de118b344f4adca3ff7a6ded3a317b98a434da10812572f403bbd131efaf4f29', 1, 3, 'CIPL', '[]', 0, '2024-05-17 06:44:01', '2024-05-17 06:44:01', '2025-05-17 12:14:01'),
('bcf0b110faa487c65a4e517191541d158103965fefe1a6166a84299f1c05a95cacaa124344710b21', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:05', '2024-05-29 13:13:05', '2025-05-29 18:43:05'),
('bcf3ad0ec4f49fcc276f3b75b087fda5f07bc8cddfe854918d98195e316310da105af4d9b51ece33', 1, 9, 'CIPL', '[]', 0, '2024-07-08 07:02:22', '2024-07-08 07:02:22', '2025-07-08 12:32:22'),
('bd6da4464605c414dba22598cab55c798eca722b42866c5b7d8dfc711ffcb7d850b476edb937cce3', 1, 15, 'CIPL', '[]', 0, '2024-07-15 05:13:11', '2024-07-15 05:13:11', '2025-07-15 10:43:11'),
('bd8a9832fe9497ddf3333a09cd15d57ebe34c476a90e1db047da2f5c8ffbe227c0b355c243f50c21', 1, 9, 'CIPL', '[]', 0, '2024-07-07 16:34:25', '2024-07-07 16:34:25', '2025-07-07 22:04:25'),
('bdb1c499abcad52c9e204a71cebd0476694f6c8112216d29d5f1dcfdbb563383944678e4f6d9a69c', 1, 9, 'CIPL', '[]', 0, '2024-06-04 04:57:20', '2024-06-04 04:57:20', '2025-06-04 10:27:20'),
('be3cd853619385c159a834cb740772ebf01f0d4a706740d390c8d0c78c871ae99151d8823727cb7e', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:05', '2024-05-29 13:13:05', '2025-05-29 18:43:05'),
('bed9cf090309bd18e6b8e492f36824cc7f171bc098846eeaa23d251845fb5f50bf239598755721fb', 1, 9, 'CIPL', '[]', 0, '2024-07-04 05:02:59', '2024-07-04 05:02:59', '2025-07-04 10:32:59'),
('c022d9408c421a05c3033dba77b1b43fb10dcaa8a2769c4eb49a577d3c027056739381eb625689db', 1, 13, 'CIPL', '[]', 0, '2024-07-10 04:50:50', '2024-07-10 04:50:50', '2025-07-10 10:20:50'),
('c16a1c9db19152ee883bff3fc871e7a272f205ee918ca0b66813019a858db2bab65eb826478be0a6', 1, 9, 'CIPL', '[]', 0, '2024-06-02 06:37:16', '2024-06-02 06:37:16', '2025-06-02 12:07:16'),
('cbb690d4b056e300b46dc0e672ab5b2820b1ca4aec27a6fb2947308cbc9f44c14f866f9cda2eb386', 1, 9, 'CIPL', '[]', 0, '2024-06-20 06:59:50', '2024-06-20 06:59:50', '2025-06-20 12:29:50'),
('cc96c7b277d9c0fdb28df53f2feda0162e56278c94ca77260f033c81a0a7b8d3032e3a9c9f2d9246', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:03', '2024-05-29 13:13:03', '2025-05-29 18:43:03'),
('ce6031039acaab180565acc62dee52157bae95457a58f106b3df1a93b043fb316d6ec04edfb79e27', 1, 9, 'CIPL', '[]', 0, '2024-07-05 04:30:22', '2024-07-05 04:30:22', '2025-07-05 10:00:22'),
('ce61b984239a46fda2e6812efb7c86436574eff72c2616d265af8230443678292a7d835305879acb', 1, 9, 'CIPL', '[]', 0, '2024-07-07 17:15:53', '2024-07-07 17:15:53', '2025-07-07 22:45:53'),
('d02d8b0a7be9b09471ab2cafec3c6db7236d2fbc217a9dfa332541cec335b968f54565eb2aaba58c', 1, 7, 'CIPL', '[]', 0, '2024-05-23 05:35:12', '2024-05-23 05:35:12', '2025-05-23 11:05:12'),
('d21671338860a781011c69e63620e47a0643ef17b6b7266bd64ff992e21e105ffbaf518238d1136f', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:05', '2024-05-29 13:13:05', '2025-05-29 18:43:05'),
('d2205c277ab6d2c805edbc5f9e37522aeddf7d5f77fad7807fff00fa29b2af677a0bd2265d07e50f', 1, 9, 'CIPL', '[]', 0, '2024-06-26 06:53:42', '2024-06-26 06:53:42', '2025-06-26 12:23:42'),
('d2b6a6535e78c68afafe2218a507de8ca79706930785a48e197e75335bbb89a804b04a5e54e35c32', 1, 9, 'CIPL', '[]', 0, '2024-06-26 05:16:35', '2024-06-26 05:16:35', '2025-06-26 10:46:35'),
('d412efb7c689cfa81fd7fe8b94591a92e1280d630b08c5bf16719a5733dd0adb7afc5ad26e792906', 1, 9, 'CIPL', '[]', 0, '2024-06-28 04:46:13', '2024-06-28 04:46:13', '2025-06-28 10:16:13'),
('d5c476a9479a68f5a7c2b21262939f288fa7a2df7236aa531859db64bb2f8b1722c7cc10bf1d1ef8', 1, 21, 'CIPL', '[]', 0, '2024-07-24 12:21:47', '2024-07-24 12:21:47', '2025-07-24 17:51:47'),
('d6b887a0e541cbb28d9c4ea804f89ef16eed46b7a3c5bd5d5afe123a7b1b1c8ceb651a2f3b9b9dd8', 1, 21, 'CIPL', '[]', 0, '2024-07-26 12:12:37', '2024-07-26 12:12:37', '2025-07-26 17:42:37'),
('d81ba174487f16656bf03897367219c485a7a4d70867b934e1617910f2e5bf261f29e622b55e540e', 1, 9, 'CIPL', '[]', 0, '2024-06-29 07:49:05', '2024-06-29 07:49:05', '2025-06-29 13:19:05'),
('d827659e1ba7e6989307662257a1b7164f305fc744068f393a354e193afa847646654657dca89a45', 1, 9, 'CIPL', '[]', 0, '2024-05-28 07:30:25', '2024-05-28 07:30:25', '2025-05-28 13:00:25'),
('d999ab1594f21642bfae813b8e1e2dfdb8569fd8cfebbb2df0e468bdc73ac0c86fef6ca927166286', 8, 9, 'CIPL', '[]', 0, '2024-05-28 09:15:08', '2024-05-28 09:15:08', '2025-05-28 14:45:08'),
('dbf8c30db11065c31dec3f0583322f096c44de5cbb55d8165cc0d5cab8c80463c14f47ec3cc4bea6', 1, 21, 'CIPL', '[]', 0, '2024-07-17 05:56:08', '2024-07-17 05:56:08', '2025-07-17 11:26:08'),
('e070a7807b4aead84a2d05fdd26d558d44f6be62e73a7d524e0ee483f75735c9643fd6d527eb2dae', 1, 9, 'CIPL', '[]', 0, '2024-07-04 04:49:06', '2024-07-04 04:49:06', '2025-07-04 10:19:06'),
('e09e8d686ee2b8a85f9c593d3910aba16fd14780a66737c593d5e7e59545054bdf847d5f6fea6066', 1, 9, 'CIPL', '[]', 0, '2024-06-27 09:33:39', '2024-06-27 09:33:39', '2025-06-27 15:03:39'),
('e0d0ce3cf853a0c62e2afdb414979aec4e76557dd5e1548fc72fb74b78cf81b7a07443f643364153', 1, 9, 'CIPL', '[]', 0, '2024-05-29 13:13:03', '2024-05-29 13:13:03', '2025-05-29 18:43:03'),
('e696546fc5e27200e89c5e1c8712a606ca3437a7b1423de439792be1f5552169efc2a6da283cae5b', 1, 9, 'CIPL', '[]', 0, '2024-07-08 07:03:32', '2024-07-08 07:03:32', '2025-07-08 12:33:32'),
('e96f8f93b7e225d37fc2fa8732766d82801c6c1bd1f6ee642aaae959437182fdde9f794fce1f3a9b', 1, 9, 'CIPL', '[]', 0, '2024-06-28 11:43:06', '2024-06-28 11:43:06', '2025-06-28 17:13:06'),
('e9b54097fece0f7391ec8b783223829fd4b570ef58e12710d376377fda843afeae5765c280a819f5', 1, 9, 'CIPL', '[]', 0, '2024-07-06 18:52:27', '2024-07-06 18:52:27', '2025-07-07 00:22:27'),
('eb2ca4326154e9c5086c84751cd62af574803c383104402f7a964023c9b567892e26798e29fbe68e', 1, 21, 'CIPL', '[]', 0, '2024-07-29 09:23:40', '2024-07-29 09:23:40', '2025-07-29 14:53:40'),
('ecf5081ca9246126b5d6eac666f562d846d48d9b5726cb49bcf089e78a54a61a6b2652c4f9a61671', 1, 21, 'CIPL', '[]', 0, '2024-07-29 05:32:53', '2024-07-29 05:32:53', '2025-07-29 11:02:53'),
('edb3eb429e7a19d2bbc329e4c83defcf36f2d008edd8decf8d9709feebbdd7df41385b9b68e211f5', 1, 9, 'CIPL', '[]', 0, '2024-06-17 07:31:36', '2024-06-17 07:31:36', '2025-06-17 13:01:36'),
('ef03942142541435e755d83f3a7a42f6064ff1726edec1127ef9aecf527da722c7467e4cc0f285d0', 1, 7, 'CIPL', '[]', 0, '2024-05-22 06:50:56', '2024-05-22 06:50:56', '2025-05-22 12:20:56'),
('ef74b825df680910811ee478dea1837a8b59216711f86c31e80a9c05bd5344330a5c7c0b232444f6', 1, 9, 'CIPL', '[]', 0, '2024-06-25 10:11:35', '2024-06-25 10:11:35', '2025-06-25 15:41:35'),
('ef9f35192ca86a4f001910020bdc3297719d9e66196d8f053b306e87a8c65ccefa86a1cd4387e0ea', 1, 9, 'CIPL', '[]', 0, '2024-06-29 07:44:11', '2024-06-29 07:44:11', '2025-06-29 13:14:11'),
('f02b817480b6e6ec4e8fd0c2aae7ac9d270a0b4fa2ff294aa174785be3b60ecccee41dacf0afe745', 1, 9, 'CIPL', '[]', 0, '2024-07-08 07:09:50', '2024-07-08 07:09:50', '2025-07-08 12:39:50'),
('f0dfe63e2757bb51309128115c1413d012a1d2e4512e3339984222ee0cc8b74585c1b4d202f1059d', 17, 21, 'CIPL', '[]', 0, '2024-07-31 10:29:55', '2024-07-31 10:29:55', '2025-07-31 15:59:55'),
('f3b0ba906d535a29a87908503a3edb97d86ac534e47b8f24996bbb8c39d3d0fe96478765f1ab60b1', 1, 13, 'CIPL', '[]', 0, '2024-07-09 09:42:48', '2024-07-09 09:42:48', '2025-07-09 15:12:48'),
('f46693ede257967de1cd0f24dc63c40290b6b28250998d5fa83ee07ded77b29122c24267f67f7898', 1, 9, 'CIPL', '[]', 0, '2024-07-01 05:10:28', '2024-07-01 05:10:28', '2025-07-01 10:40:28'),
('f6bcbe0b5a77b115f47d3c0f7c197f4189979c1ad5e7b2fc9f840a60d32528fda3a0b0e274a280a5', 1, 9, 'CIPL', '[]', 0, '2024-07-08 07:07:34', '2024-07-08 07:07:34', '2025-07-08 12:37:34'),
('f6ec5e2b323649d531314416add925cf4c4d40d3775a115986273c35dba2956dd7c7b8c6cfb9898d', 1, 5, 'CIPL', '[]', 0, '2024-05-20 11:31:22', '2024-05-20 11:31:22', '2025-05-20 17:01:22'),
('fae652b09a6504833ad645085430cbe93ba07a8edf2099d489d57aca8e53ab7dc0afacb1e5b71962', 1, 9, 'CIPL', '[]', 0, '2024-07-08 07:09:10', '2024-07-08 07:09:10', '2025-07-08 12:39:10'),
('fd3aefccab945c1ed0521d93f285b8e0e9f81211beaa114e5046f1457f3ac6fd97d7e2e06e70d739', 1, 21, 'CIPL', '[]', 0, '2024-07-31 10:25:39', '2024-07-31 10:25:39', '2025-07-31 15:55:39'),
('fd865d308073cdd2e2c306ee20d55130763e196ed799b3be6801e5c63cf3da618ae03adb6c022d22', 1, 9, 'CIPL', '[]', 0, '2024-07-02 05:53:16', '2024-07-02 05:53:16', '2025-07-02 11:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5A179ijKnadoHEWvziEO2C4GlmufcAxshKIUJb0q', NULL, 'http://localhost', 1, 0, 0, '2024-05-16 06:12:33', '2024-05-16 06:12:33'),
(2, NULL, 'Laravel Password Grant Client', 'z3xgJaewtnBJFcViAr9VRiXzvFgQ4UPlI2GS1KVr', 'users', 'http://localhost', 0, 1, 0, '2024-05-16 06:12:33', '2024-05-16 06:12:33'),
(3, NULL, 'Laravel Personal Access Client', 'qhXRaB3xSLjjY74n28UHphrZOKbGWTDYKrrNEBxB', NULL, 'http://localhost', 1, 0, 0, '2024-05-17 06:40:41', '2024-05-17 06:40:41'),
(4, NULL, 'Laravel Password Grant Client', 'y4oTHaQcqXEdw3lhgnWxru6yPUKEytD0JcIT8mwj', 'users', 'http://localhost', 0, 1, 0, '2024-05-17 06:40:41', '2024-05-17 06:40:41'),
(5, NULL, 'Laravel Personal Access Client', 'uEO1no8XVgWciDTyrwxLBPQVrdgFWHq8BO0LZ5co', NULL, 'http://localhost', 1, 0, 0, '2024-05-17 13:18:22', '2024-05-17 13:18:22'),
(6, NULL, 'Laravel Password Grant Client', 'wi5kyT9un0UHQlzTaD4W8MOZIdIf4ekygf4eVCMP', 'users', 'http://localhost', 0, 1, 0, '2024-05-17 13:18:22', '2024-05-17 13:18:22'),
(7, NULL, 'Laravel Personal Access Client', 'CXQbU32emJBynjktyOejMkfNAgymVbFfTec1g8zx', NULL, 'http://localhost', 1, 0, 0, '2024-05-22 06:49:24', '2024-05-22 06:49:24'),
(8, NULL, 'Laravel Password Grant Client', 'jVXtqkl3Q5YvD0hK5pwRwaf9nolmHNpmHhMAf2Gm', 'users', 'http://localhost', 0, 1, 0, '2024-05-22 06:49:24', '2024-05-22 06:49:24'),
(9, NULL, 'Laravel Personal Access Client', 'CabpGTL0tMV7tNzUqNjJ71E7gTOGr2TZFLb1S9GE', NULL, 'http://localhost', 1, 0, 0, '2024-05-28 07:29:59', '2024-05-28 07:29:59'),
(10, NULL, 'Laravel Password Grant Client', 'r9IDsrv6v4TMzqD10MXfi8s3NNPGqs6QEgggtYQi', 'users', 'http://localhost', 0, 1, 0, '2024-05-28 07:29:59', '2024-05-28 07:29:59'),
(11, NULL, 'Laravel Personal Access Client', 'ouPBr0vCXx9CnkPhWxpGrPvD4Xx0PaZyPFXpwnQK', NULL, 'http://localhost', 1, 0, 0, '2024-07-08 10:07:32', '2024-07-08 10:07:32'),
(12, NULL, 'Laravel Password Grant Client', 'uHU3hTDiAjBuXSegme1GUd19u1eFFRVq7IhAmaK9', 'users', 'http://localhost', 0, 1, 0, '2024-07-08 10:07:32', '2024-07-08 10:07:32'),
(13, NULL, 'Laravel Personal Access Client', '7lftPimQcyzhJ72gkMEqFL9x7bzE7Bp9f08AKPxc', NULL, 'http://localhost', 1, 0, 0, '2024-07-08 10:07:41', '2024-07-08 10:07:41'),
(14, NULL, 'Laravel Password Grant Client', 'n57SuEXdLXQk8hjLXJoRZJKFNc0xb32CjjdqkCWU', 'users', 'http://localhost', 0, 1, 0, '2024-07-08 10:07:41', '2024-07-08 10:07:41'),
(15, NULL, 'Laravel Personal Access Client', 'Hh6GrYTKoBbP4pAZQDc0g3aQiRuVIPcsc7i1xn59', NULL, 'http://localhost', 1, 0, 0, '2024-07-15 05:11:09', '2024-07-15 05:11:09'),
(16, NULL, 'Laravel Password Grant Client', 'iCFE7iQm9HuiPB0JfwE6ksX9qCTNMNHd3IX2FfCh', 'users', 'http://localhost', 0, 1, 0, '2024-07-15 05:11:09', '2024-07-15 05:11:09'),
(17, NULL, 'Laravel Personal Access Client', 'hx6k4NzPXLMIsKDx1v1BzSAu55WAq3JxUkjcqDY0', NULL, 'http://localhost', 1, 0, 0, '2024-07-17 05:01:08', '2024-07-17 05:01:08'),
(18, NULL, 'Laravel Password Grant Client', 'KPzLPVLECvYrPCAld49ng2BoiVlTNwh6hUf25uyZ', 'users', 'http://localhost', 0, 1, 0, '2024-07-17 05:01:08', '2024-07-17 05:01:08'),
(19, NULL, 'Laravel Personal Access Client', 'HUpSjXZxSjNIHWrNnB91PMY2IC9TuFpUNYeziOGt', NULL, 'http://localhost', 1, 0, 0, '2024-07-17 05:01:15', '2024-07-17 05:01:15'),
(20, NULL, 'Laravel Password Grant Client', 'ohGcRcBYRTDOQykRS9q7TMDnWkBlNHC6uHHf7iSR', 'users', 'http://localhost', 0, 1, 0, '2024-07-17 05:01:15', '2024-07-17 05:01:15'),
(21, NULL, 'Laravel Personal Access Client', 'mlFroIgWs4hHJOwO5dI132uxv3PNuXB4iI4iRupM', NULL, 'http://localhost', 1, 0, 0, '2024-07-17 05:44:27', '2024-07-17 05:44:27'),
(22, NULL, 'Laravel Password Grant Client', '5S76t2RAUXDhhcghhPpFZncPL1YYOarLJLXsr5nx', 'users', 'http://localhost', 0, 1, 0, '2024-07-17 05:44:27', '2024-07-17 05:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-05-16 06:12:33', '2024-05-16 06:12:33'),
(2, 3, '2024-05-17 06:40:41', '2024-05-17 06:40:41'),
(3, 5, '2024-05-17 13:18:22', '2024-05-17 13:18:22'),
(4, 7, '2024-05-22 06:49:24', '2024-05-22 06:49:24'),
(5, 9, '2024-05-28 07:29:59', '2024-05-28 07:29:59'),
(6, 11, '2024-07-08 10:07:32', '2024-07-08 10:07:32'),
(7, 13, '2024-07-08 10:07:41', '2024-07-08 10:07:41'),
(8, 15, '2024-07-15 05:11:09', '2024-07-15 05:11:09'),
(9, 17, '2024-07-17 05:01:08', '2024-07-17 05:01:08'),
(10, 19, '2024-07-17 05:01:15', '2024-07-17 05:01:15'),
(11, 21, '2024-07-17 05:44:27', '2024-07-17 05:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offerletters`
--

CREATE TABLE `offerletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `templatename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offerletters`
--

INSERT INTO `offerletters` (`id`, `templatename`, `contents`, `signature`, `created_at`, `updated_at`) VALUES
(1, 'Offer Latter', '<p>Please adjust the data types and constraints according to your specific requirements and existing table structures. Once you execute this query in your MySQL client, the <strong>offer_letters</strong> table will be created successfully.</p><p>If you need further modifications or additional details in the offer letter table structure, feel free to ask!</p><p>Please adjust the data types and constraints according to your specific requirements and existing table structures. Once you execute this query in your MySQL client, the <strong>offer_letters</strong> table will be created successfully.</p><p>If you need further modifications or additional details in the offer letter table structure, feel free to ask!</p><p>Please adjust the data types and constraints according to your specific requirements and existing table structures. Once you execute this query in your MySQL client, the <strong>offer_letters</strong> table will be created successfully.</p><p>If you need further modifications or additional details in the offer letter table structure, feel free to ask!</p>', 'public/signature/1716371059.png', '2024-05-22 09:44:19', '2024-05-22 09:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `onboard_answers`
--

CREATE TABLE `onboard_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `onboard_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlinequestions`
--

CREATE TABLE `onlinequestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_a` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_b` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_d` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_type` enum('optional','description') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('enable','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `onlinequestions`
--

INSERT INTO `onlinequestions` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `marks`, `question_type`, `jobcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cpu', 'central process unit', 'asdf', 'asdf', 'dsaf', 'central process unit', '5', '', 1, 'enable', NULL, NULL),
(2, 'What is the output of the following code snippet? \n```php\n<?php\n$a = 5;\n$b = 10;\necho $a + $b;\n?>\n```', '5', '10', '15', '20', '15', '5', 'optional', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(3, 'Which of the following is a PHP framework?', 'Django', 'Flask', 'Laravel', 'Spring', 'Laravel', '10', 'optional', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(4, 'Describe how you would connect to a MySQL database using PHP.', NULL, NULL, NULL, NULL, 'To connect to a MySQL database using PHP, you can use the mysqli_connect() function or the PDO extension. Example: \n```php\n$servername = \"localhost\";\n$username = \"username\";\n$password = \"password\";\n$dbname = \"database\";\n$conn = new mysqli($servername, $username, $password, $dbname);\nif ($conn->connect_error) {\n die(\"Connection failed: \" . $conn->connect_error);\n}\n```', '20', 'description', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(5, 'What is the output of the following code snippet? \n```javascript\nlet x = 10;\nlet y = x++;\nconsole.log(y);\n```', '9', '10', '11', 'undefined', '10', '5', 'optional', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(6, 'Explain the difference between synchronous and asynchronous programming in JavaScript.', NULL, NULL, NULL, NULL, 'Synchronous programming executes tasks sequentially, one after another, blocking the execution until each task completes. Asynchronous programming allows tasks to run concurrently, without waiting for other tasks to complete, often using callbacks, promises, or async/await.', '15', 'description', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(7, 'Which of the following is used to manage state in a React application?', 'Vuex', 'Redux', 'Angular', 'Laravel', 'Redux', '10', 'optional', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(8, 'What is the purpose of the `composer.json` file in a Laravel project?', NULL, NULL, NULL, NULL, 'The `composer.json` file in a Laravel project specifies the dependencies required by the project. It also contains metadata about the project such as name, version, and author information.', '10', 'description', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(9, 'Which command is used to start a new Laravel project?', 'laravel new projectname', 'php artisan serve', 'npm start', 'composer install', 'laravel new projectname', '5', 'optional', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(10, 'Describe the role of a Controller in the MVC architecture pattern.', NULL, NULL, NULL, NULL, 'In the MVC architecture pattern, a Controller handles the input from the user, processes it (often involving the Model), and returns the appropriate output (usually in the form of a View). It acts as an intermediary between the Model and the View.', '15', 'description', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12'),
(11, 'What is the output of the following code snippet? \n```python\ndef add(a, b):\n return a + b\nprint(add(3, 4))\n```', '3', '4', '7', 'None', '7', '5', 'optional', 1, 'enable', '2024-06-18 06:16:12', '2024-06-18 06:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `onlinequestions_onlinexams`
--

CREATE TABLE `onlinequestions_onlinexams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `onlinequestions_id` bigint(20) UNSIGNED NOT NULL,
  `onlinexams_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlinequestion_onlinexam`
--

CREATE TABLE `onlinequestion_onlinexam` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `onlinequestion_id` bigint(20) UNSIGNED NOT NULL,
  `onlinexam_id` bigint(20) UNSIGNED NOT NULL,
  `marks` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlinexamresults`
--

CREATE TABLE `onlinexamresults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `onlinexamjobsapp_id` bigint(20) UNSIGNED NOT NULL,
  `onlinequestion_id` bigint(20) UNSIGNED NOT NULL,
  `answer_by_jobapplication` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `true_answer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlinexams`
--

CREATE TABLE `onlinexams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_type` enum('optional','description') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_duration` time NOT NULL,
  `scheduled_time` time NOT NULL,
  `scheduled_date` date NOT NULL,
  `attempt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('enable','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlinexam_job_applications`
--

CREATE TABLE `onlinexam_job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobapplication_id` bigint(20) DEFAULT NULL,
  `onlinexam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `in_attempt` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `scheduled_time` time NOT NULL,
  `scheduled_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `examstatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `on_board_details`
--

CREATE TABLE `on_board_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_application_id` int(10) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reports_to_id` int(10) UNSIGNED DEFAULT NULL,
  `salary_offered` int(11) NOT NULL,
  `joining_date` date NOT NULL,
  `accept_last_date` date NOT NULL,
  `offer_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hired_status` enum('offered','accepted','rejected','canceled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_status` enum('part_time','full_time','on_contract') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `cancel_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `degination` varchar(151) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `on_board_files`
--

CREATE TABLE `on_board_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `on_board_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 'add_category', 'Add Category', NULL, 1, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(2, 'view_category', 'View Category', NULL, 1, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(3, 'edit_category', 'Edit Category', NULL, 1, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(4, 'delete_category', 'Delete Category', NULL, 1, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(6, 'add_skills', 'Add Skills', NULL, 2, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(7, 'view_skills', 'View Skills', NULL, 2, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(8, 'edit_skills', 'Edit Skills', NULL, 2, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(9, 'delete_skills', 'Delete Skills', NULL, 2, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(18, 'add_candidate', 'Add Candidate', NULL, 3, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(19, 'view_candidate', 'View Candidate', NULL, 3, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(20, 'edit_candidate', 'Edit Candidate', NULL, 3, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(21, 'delete_candidate', 'Delete Candidate', NULL, 3, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(22, 'add_team', 'Add Team', NULL, 8, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(23, 'view_team', 'View Team', NULL, 8, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(24, 'edit_team', 'Edit Team', NULL, 8, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(25, 'delete_team', 'Delete Team', NULL, 8, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(30, 'add_schedule', 'Add Schedule', NULL, 10, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(31, 'view_schedule', 'View Schedule', NULL, 10, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(32, 'edit_schedule', 'Edit Schedule', NULL, 10, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(33, 'delete_schedule', 'Delete Schedule', NULL, 10, '2024-05-16 00:41:51', '2024-05-16 00:41:51'),
(38, 'add_department', 'Add Department', NULL, 12, '2024-05-16 00:41:54', '2024-05-16 00:41:54'),
(39, 'view_department', 'View Department', NULL, 12, '2024-05-16 00:41:54', '2024-05-16 00:41:54'),
(40, 'edit_department', 'Edit Department', NULL, 12, '2024-05-16 00:41:54', '2024-05-16 00:41:54'),
(41, 'delete_department', 'Delete Department', NULL, 12, '2024-05-16 00:41:54', '2024-05-16 00:41:54'),
(46, 'add_qualification', 'Add Qualification', NULL, 14, '2024-05-16 00:41:54', '2024-05-16 00:41:54'),
(47, 'view_qualification', 'View Qualification', NULL, 14, '2024-05-16 00:41:54', '2024-05-16 00:41:54'),
(48, 'edit_qualification', 'Edit Qualification', NULL, 14, '2024-05-16 00:41:54', '2024-05-16 00:41:54'),
(49, 'delete_qualification', 'Delete Qualification', NULL, 14, '2024-05-16 00:41:54', '2024-05-16 00:41:54'),
(50, 'add_certification', 'Add Certification', NULL, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'view_certification', 'View Certification', NULL, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'edit_certification', 'Edit Certification', NULL, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'delete_certification', 'Delete Certification', NULL, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'add_salary', 'Add Salary', NULL, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'view_salary', 'View Salary', NULL, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'edit_salary', 'Edit Salary', NULL, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'delete_salary', 'Delete Salary', NULL, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'add_onboard', 'Add Onboard', NULL, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'view_onboard', 'View Onboard', NULL, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'edit_onboard', 'Edit Onboard', NULL, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'delete_onboard', 'Delete Onboard', NULL, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'add_offerletter', 'Add OfferLetter', NULL, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'view_offerletter', 'View OfferLetter', NULL, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'edit_offerletter', 'Edit OfferLetter', NULL, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'delete_offerletter', 'Delete OfferLetter', NULL, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'add_title', 'Add Title', NULL, 19, '2024-06-07 01:57:33', '2024-06-07 01:57:33'),
(67, 'view_title', 'View Title', NULL, 19, '2024-06-07 01:57:33', '2024-06-07 01:57:33'),
(68, 'delete_title', 'Delete Tilte', NULL, 19, '2024-06-07 01:59:02', '2024-06-07 01:59:02'),
(69, 'edit_title', 'Edit Tilte', NULL, 19, '2024-06-07 01:59:02', '2024-06-07 01:59:02'),
(70, 'add_feedback', 'Add_Feedback', NULL, 20, '2024-07-09 06:48:35', '2024-07-09 06:48:35'),
(71, 'edit_feedback', 'Edit_Feedback', NULL, 20, '2024-07-09 06:48:35', '2024-07-09 06:48:35'),
(73, 'view_feedback', 'View_Feedback', NULL, 20, '2024-07-09 06:48:35', '2024-07-09 06:48:35'),
(74, 'delete_feedback', 'Delete_Feedback', NULL, 20, '2024-07-09 06:48:35', '2024-07-09 06:48:35'),
(75, 'add_project', 'Add_Project', NULL, 21, '2024-07-09 09:55:49', '2024-07-09 09:55:49'),
(76, 'edit_project', 'Edit_Project', NULL, 21, '2024-07-09 09:55:49', '2024-07-09 09:55:49'),
(77, 'view_project', 'View_Project', NULL, 21, '2024-07-09 09:55:49', '2024-07-09 09:55:49'),
(78, 'delete_project', 'Delete_Project', NULL, 21, '2024-07-09 09:55:49', '2024-07-09 09:55:49'),
(79, 'add_mrf', 'Add_MRF', NULL, 22, '2024-07-09 10:00:09', '2024-07-09 10:00:09'),
(80, 'edit_mrf', 'Edit_MRF', NULL, 22, '2024-07-09 10:00:09', '2024-07-09 10:00:09'),
(81, 'view_mrf', 'View_MRF', NULL, 22, '2024-07-09 10:00:09', '2024-07-09 10:00:09'),
(82, 'delete_mrf', 'Delete_MRF', NULL, 22, '2024-07-09 10:00:09', '2024-07-09 10:00:09'),
(83, 'add_jd', 'Add_JD', NULL, 23, '2024-07-09 12:51:26', '2024-07-09 12:51:26'),
(84, 'view_jd', 'View_JD', NULL, 23, '2024-07-09 12:51:26', '2024-07-09 12:51:26'),
(85, 'delete_jd', 'Delete_JD', NULL, 23, '2024-07-09 12:51:26', '2024-07-09 12:51:26'),
(86, 'edit_jd', 'Edit_JD', NULL, 23, '2024-07-09 12:51:26', '2024-07-09 12:51:26'),
(87, 'view_document', 'View Document', '', 24, '2024-07-22 11:33:22', '2024-07-22 11:33:22'),
(88, 'verify_document', 'Verify Document', '', 24, '2024-07-22 11:35:03', '2024-07-22 11:35:03'),
(89, 'send_link_for_document_upload', 'Send Link For Document Upload', '', 24, '2024-07-22 11:37:23', '2024-07-22 11:37:23'),
(90, 'view_pcc', 'View PCC', NULL, 25, '2024-07-22 12:16:43', '2024-07-22 12:16:43'),
(91, 'verify_pcc', 'Verify PCC', NULL, 25, '2024-07-22 12:17:47', '2024-07-22 12:17:47'),
(92, 'send_link_for_pcc_document_upload', 'Send Link For PCC Document Upload', NULL, 25, '2024-07-22 12:18:56', '2024-07-21 18:30:00'),
(93, 'send_offer_letter', 'Send Offer Latter', NULL, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 6),
(2, 1),
(2, 2),
(2, 6),
(3, 1),
(3, 2),
(3, 6),
(4, 1),
(4, 2),
(4, 6),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2);

-- --------------------------------------------------------

--
-- Table structure for table `projecttitle`
--

CREATE TABLE `projecttitle` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projecttitle`
--

INSERT INTO `projecttitle` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'AI', '2024-06-17 10:43:26', '2024-06-17 10:43:26', NULL),
(8, 'JAVA', '2024-06-17 10:44:06', '2024-06-17 10:44:06', NULL),
(9, 'developer', '2024-06-19 10:35:23', '2024-06-19 10:35:23', NULL),
(11, 'Testing', '2024-06-20 07:29:08', '2024-06-20 07:29:08', NULL),
(12, 'title', '2024-06-27 10:57:14', '2024-06-27 10:57:14', NULL),
(13, 'Develope', '2024-07-01 12:54:36', '2024-07-01 12:54:36', NULL),
(16, 'Artificial intelligence', '2024-07-11 05:17:30', '2024-07-11 05:17:30', NULL),
(17, 'test mrf onsite', '2024-07-11 10:11:44', '2024-07-11 10:11:44', NULL),
(18, 'mrf inhouse', '2024-07-11 10:13:41', '2024-07-11 10:13:41', NULL),
(19, 'Devloper', '2024-07-31 10:33:57', '2024-07-31 10:33:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projectwork`
--

CREATE TABLE `projectwork` (
  `Id` int(11) NOT NULL,
  `CandidateId` int(11) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_works`
--

CREATE TABLE `project_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'BCA', '', '2024-05-28 09:44:56', '2024-05-28 09:44:56'),
(4, 'MCA', '', '2024-05-30 05:02:08', '2024-05-31 17:14:47'),
(5, 'MBA', '', '2024-05-31 17:15:00', '2024-05-31 17:15:00'),
(6, 'B.Tech', '', '2024-05-31 17:15:17', '2024-05-31 17:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('enable','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enable',
  `required` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `type` enum('text','file') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `status`, `required`, `type`, `created_at`, `updated_at`) VALUES
(1, 'What is your name?', '', 'yes', 'text', '2024-05-17 04:30:00', '2024-05-17 04:30:00'),
(2, 'How old are you?', '', 'yes', '', '2024-05-17 04:30:00', '2024-05-17 04:30:00'),
(3, 'What is your email address?', '', 'yes', '', '2024-05-17 04:30:00', '2024-05-17 04:30:00'),
(4, 'Do you agree to the terms and conditions?', '', 'yes', '', '2024-05-17 04:30:00', '2024-05-17 04:30:00'),
(5, 'Please provide additional comments', '', '', '', '2024-05-17 04:30:00', '2024-05-17 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `ratingdetails`
--

CREATE TABLE `ratingdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_application_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `interviewround` varchar(255) DEFAULT NULL,
  `overall_personality` varchar(255) DEFAULT NULL,
  `mobility` varchar(255) DEFAULT NULL,
  `self_concept` varchar(255) DEFAULT NULL,
  `openness_to_feedback` varchar(255) DEFAULT NULL,
  `drive` varchar(255) DEFAULT NULL,
  `leadership_potential` varchar(255) DEFAULT NULL,
  `personal_efficacy` varchar(255) DEFAULT NULL,
  `maturity_understanding` varchar(255) DEFAULT NULL,
  `comprehensibility_eloquence` varchar(255) DEFAULT NULL,
  `knowledge_of_subject_job_product` varchar(255) DEFAULT NULL,
  `poise_mannerism` varchar(255) DEFAULT NULL,
  `tottal_rating` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratingdetails`
--

INSERT INTO `ratingdetails` (`id`, `job_application_id`, `rating`, `comment`, `created_at`, `updated_at`, `interviewround`, `overall_personality`, `mobility`, `self_concept`, `openness_to_feedback`, `drive`, `leadership_potential`, `personal_efficacy`, `maturity_understanding`, `comprehensibility_eloquence`, `knowledge_of_subject_job_product`, `poise_mannerism`, `tottal_rating`, `comments`) VALUES
(1, 2, NULL, NULL, '2024-05-31 18:08:14', '2024-05-31 18:08:14', 'interview round 1', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', NULL),
(2, 2, NULL, NULL, '2024-05-31 18:57:21', '2024-05-31 18:57:21', 'interview round 2', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', NULL),
(3, 3, NULL, NULL, '2024-06-02 07:21:47', '2024-06-02 07:21:47', 'interview round 1', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', NULL),
(4, 3, NULL, NULL, '2024-06-02 07:26:39', '2024-06-02 07:26:39', 'interview round 2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', NULL),
(5, 4, NULL, NULL, '2024-06-02 08:41:53', '2024-06-02 08:41:53', 'interview round 1', '4', '5', '5', '5', '5', '5', '4', '4', '4', '4', '4', '4', NULL),
(6, 4, NULL, NULL, '2024-06-02 08:45:37', '2024-06-02 08:45:37', 'interview round 2', '5', '5', '5', '5', '5', '4', '3', '3', '4', '5', '4', '4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `replacementemployees`
--

CREATE TABLE `replacementemployees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resign_date` date NOT NULL,
  `last_working_date` date NOT NULL,
  `jobrecruitment_id` int(10) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replacementemployees`
--

INSERT INTO `replacementemployees` (`id`, `emp_name`, `emp_code`, `resign_date`, `last_working_date`, `jobrecruitment_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 'eesh', '90', '2024-07-04', '2024-07-04', 33, 26, '2024-07-04 05:46:21', '2024-07-04 05:46:21'),
(2, 'eesh', '90', '2024-07-04', '2024-07-04', 34, 26, '2024-07-04 05:48:39', '2024-07-04 05:48:39'),
(3, 'eesh', '90', '2024-07-04', '2024-07-04', 35, 26, '2024-07-04 05:55:37', '2024-07-04 05:55:37'),
(4, 'eesh', '90', '2024-07-04', '2024-07-04', 36, 26, '2024-07-04 05:58:58', '2024-07-04 05:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'App Administrator', 'Admin is allowed to manage everything of the app.', '2024-05-16 06:11:51', '2024-05-16 06:11:51'),
(2, 'super_admin', 'Super Administrator', 'Has full access to all system features and settings', '2024-05-17 04:30:00', '2024-05-17 04:30:00'),
(3, 'Manager', 'Manager', 'Can edit content but has limited access to settings', '2024-05-17 04:30:00', '2024-05-25 06:14:37'),
(4, 'content_viewer', 'Content_viewe', 'Can view content but cannot make any changes', '2024-05-17 04:30:00', '2024-05-25 06:14:09'),
(5, 'content_contributor', 'Content Contributor', 'Can contribute content but requires approval', '2024-05-17 04:30:00', '2024-05-17 04:30:00'),
(6, 'section_manager', 'Section Manager', 'Can manage specific sections and user permissions', '2024-05-17 04:30:00', '2024-05-17 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(3, 1),
(6, 3),
(7, 4),
(15, 1),
(17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `salarycreations`
--

CREATE TABLE `salarycreations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employeeCode` varchar(255) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `salaryType` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `effectiveDate` varchar(255) DEFAULT NULL,
  `dateOfJoining` varchar(255) DEFAULT NULL,
  `ctc` varchar(255) DEFAULT NULL,
  `basicMonthly` varchar(255) DEFAULT NULL,
  `basicAnnual` varchar(255) DEFAULT NULL,
  `hrmMonthly` varchar(255) DEFAULT NULL,
  `hrmAnnual` varchar(255) DEFAULT NULL,
  `specialMonthly` varchar(255) DEFAULT NULL,
  `spciealAnnual` varchar(255) DEFAULT NULL,
  `pfMonthly` varchar(255) DEFAULT NULL,
  `pTaxMonthly` varchar(255) DEFAULT NULL,
  `totalDeductionAnnually` varchar(255) DEFAULT NULL,
  `pfEMonthly` varchar(255) DEFAULT NULL,
  `pfEAnnually` varchar(255) DEFAULT NULL,
  `pfAAnnually` varchar(255) DEFAULT NULL,
  `eStateInsuranceMonthly` varchar(255) DEFAULT NULL,
  `eStateInsuranceAnnually` varchar(255) DEFAULT NULL,
  `gratuityMonthly` varchar(255) DEFAULT NULL,
  `gratuityAnnually` varchar(255) DEFAULT NULL,
  `ltaMonthly` varchar(255) DEFAULT NULL,
  `ltaAnnually` varchar(255) DEFAULT NULL,
  `insuranceMonthly` varchar(255) DEFAULT NULL,
  `insuranceAnnually` varchar(255) DEFAULT NULL,
  `fixedCtcMonthly` varchar(255) DEFAULT NULL,
  `fixedCtcAnnually` varchar(255) DEFAULT NULL,
  `totalCTC` varchar(255) DEFAULT NULL,
  `netTakeHome` varchar(255) DEFAULT NULL,
  `grossAmount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_application_id` int(11) DEFAULT NULL,
  `pTaxAnnually` varchar(255) DEFAULT NULL,
  `totalDeductionMonthly` varchar(255) DEFAULT NULL,
  `pfAMonthly` varchar(255) DEFAULT NULL,
  `retension` varchar(255) DEFAULT NULL,
  `retensionBonus` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salarycreations`
--

INSERT INTO `salarycreations` (`id`, `employeeCode`, `location`, `salaryType`, `name`, `state`, `designation`, `effectiveDate`, `dateOfJoining`, `ctc`, `basicMonthly`, `basicAnnual`, `hrmMonthly`, `hrmAnnual`, `specialMonthly`, `spciealAnnual`, `pfMonthly`, `pTaxMonthly`, `totalDeductionAnnually`, `pfEMonthly`, `pfEAnnually`, `pfAAnnually`, `eStateInsuranceMonthly`, `eStateInsuranceAnnually`, `gratuityMonthly`, `gratuityAnnually`, `ltaMonthly`, `ltaAnnually`, `insuranceMonthly`, `insuranceAnnually`, `fixedCtcMonthly`, `fixedCtcAnnually`, `totalCTC`, `netTakeHome`, `grossAmount`, `created_at`, `updated_at`, `job_application_id`, `pTaxAnnually`, `totalDeductionMonthly`, `pfAMonthly`, `retension`, `retensionBonus`, `status`) VALUES
(49, '098', NULL, 'null', 'email log Kumar', 'up', 'Full stack developer devops', '2024-07-11', '2024-07-20', '100000000', '100000', '1200000', '1234', '14808', '1234', '14808', '1234', '1234', NULL, '1234', '14808', '14808', '1234', '14808', '1234', '14808', '1234', '14808', '1234', '14808', '1234', '14808', '6170', '2468', '102468', '2024-07-11 06:43:53', '2024-07-11 06:44:57', 54, NULL, NULL, '1234', '1234', '14808', '1'),
(50, '098', NULL, 'null', 'illati', 'up', 'Full stack developer devops', '2024-07-27', '2024-07-30', '1233', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2024-07-26 12:21:15', '2024-07-26 12:23:12', 61, NULL, NULL, '0', '0', '0', '1'),
(51, '098', NULL, 'null', 'Ram Tiwari', 'up', 'Full stack developer devops', '2024-07-30', '2024-07-31', '100000', '12121', '145452', '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12121', '2024-07-27 06:14:37', '2024-07-27 06:15:13', 62, NULL, NULL, '0', '0', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Angular JS', 1, '2024-05-16 06:12:08', '2024-05-16 07:11:01'),
(2, 'Vue.JS', 1, '2024-05-16 06:12:08', '2024-05-16 06:12:08'),
(3, 'Laravel 5.4', 1, '2024-05-16 06:12:08', '2024-05-16 06:12:08'),
(4, 'AWS Cloud', 3, '2024-05-16 06:12:08', '2024-05-31 17:13:31'),
(5, 'Communication', 2, '2024-05-16 06:12:08', '2024-05-31 17:13:55'),
(6, 'Reactjs', 1, '2024-05-16 07:11:24', '2024-05-31 17:14:11'),
(7, 'Data Mining', 3, '2024-06-19 10:14:38', '2024-06-19 10:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nexmo_status` enum('active','deactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'deactive',
  `nexmo_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nexmo_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nexmo_from` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NEXMO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `nexmo_status`, `nexmo_key`, `nexmo_secret`, `nexmo_from`, `created_at`, `updated_at`) VALUES
(1, 'deactive', NULL, NULL, 'NEXMO', '2024-05-16 06:11:52', '2024-05-16 06:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `Id` int(11) NOT NULL,
  `mail_driver` varchar(30) DEFAULT NULL,
  `mail_host` varchar(100) DEFAULT NULL,
  `mail_port` int(11) DEFAULT NULL,
  `mail_username` varchar(100) DEFAULT NULL,
  `mail_password` varchar(100) DEFAULT NULL,
  `mail_from_name` varchar(50) DEFAULT NULL,
  `mail_from_email` varchar(80) DEFAULT NULL,
  `mail_encryption` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`Id`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_from_name`, `mail_from_email`, `mail_encryption`) VALUES
(1, 'smtp', 'smtp.gmail.com', 587, 'omegasp9@gmail.com', 'bvqqzicqpvswaqit', 'Recruit', 'mallpooja.it@gmail.com', 'tls');

-- --------------------------------------------------------

--
-- Table structure for table `sticky_notes`
--

CREATE TABLE `sticky_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `note_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `colour` enum('blue','yellow','red','gray','purple','green') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blue',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sticky_notes`
--

INSERT INTO `sticky_notes` (`id`, `user_id`, `note_text`, `colour`, `created_at`, `updated_at`) VALUES
(3, 1, 'Remember to update the report by Monday', 'yellow', '2024-05-17 04:30:00', '2024-05-17 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `storage_settings`
--

CREATE TABLE `storage_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filesystem` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `auth_keys` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('enabled','disabled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storage_settings`
--

INSERT INTO `storage_settings` (`id`, `filesystem`, `auth_keys`, `status`, `created_at`, `updated_at`) VALUES
(1, 'local', NULL, 'enabled', '2024-05-16 06:11:53', '2024-05-16 06:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `course_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mathematics', 1, 'active', '2024-05-17 04:30:00', '2024-05-17 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `subqualifications`
--

CREATE TABLE `subqualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subqualifications`
--

INSERT INTO `subqualifications` (`id`, `name`, `qualification_id`, `created_at`, `updated_at`) VALUES
(4, 'DSA', 3, '2024-05-28 09:45:54', '2024-05-28 09:45:54'),
(5, 'Android', 3, '2024-05-30 05:02:26', '2024-05-30 05:02:26'),
(6, 'Artifical Intelligence', 4, '2024-05-31 17:16:08', '2024-05-31 17:16:08'),
(7, 'Marketing & Sales', 5, '2024-05-31 17:16:28', '2024-05-31 17:16:28'),
(8, 'Cyber Security', 6, '2024-05-31 17:16:51', '2024-05-31 17:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `due_date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Complete Project Proposal', 'Write and submit the project proposal for approval', '2024-05-25 00:00:00', 1, '2024-05-17 04:30:00', '2024-05-17 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `theme_settings`
--

CREATE TABLE `theme_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `primary_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_custom_css` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_custom_css` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_background_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disable_frontend` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theme_settings`
--

INSERT INTO `theme_settings` (`id`, `primary_color`, `admin_custom_css`, `front_custom_css`, `home_background_image`, `welcome_title`, `welcome_sub_title`, `created_at`, `updated_at`, `disable_frontend`) VALUES
(1, '#1579d0', NULL, NULL, NULL, NULL, NULL, '2024-05-16 06:11:51', '2024-05-16 06:11:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `todo_items`
--

CREATE TABLE `todo_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todo_items`
--

INSERT INTO `todo_items` (`id`, `user_id`, `title`, `status`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 'Buy groceries', 'pending', 1, '2024-05-17 04:30:00', '2024-05-17 04:30:00'),
(2, 1, 'Buy groceries', 'pending', 1, '2024-05-17 04:30:00', '2024-05-17 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `calling_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ishod` int(11) DEFAULT NULL,
  `isprojectlead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `calling_code`, `mobile`, `mobile_verified`, `password`, `remember_token`, `created_at`, `updated_at`, `image`, `ishod`, `isprojectlead`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '9090909876', 0, '$2y$10$7H69RKe4i30E.JOAe5dnJeadUiEBFYKE724sAZvoXwqJ/RKsblBPS', NULL, '2024-05-16 06:12:08', '2024-05-31 18:42:02', '22dc495ef6b7992a70a7bfca8d121bed.png', NULL, NULL),
(3, 'riya', 'mallpooja.it@gmail.com', '+91', '9323414812', 0, '$2y$10$Hfly8fh4gCCMNb/S1VO0F.HcOWBsIFDRs3LiGPkDyParN4ukSlBSS', NULL, '2024-05-17 06:49:10', '2024-05-17 06:49:10', NULL, NULL, NULL),
(6, 'Priyanka', 'riyuusingh890@gmail.com', '+91', '9955222334', 0, '$2y$10$754xNxmDV86b2LRdD3uc6.8Zv32sAFUPEI9CUfC6WvNEK2P47yHqO', NULL, '2024-05-24 09:54:55', '2024-05-24 09:54:55', NULL, NULL, NULL),
(7, 'Ankur', 'ankur@gmail.com', '+91', '1234567898', 0, '$2y$10$XAF69KJGFEpGiXwFfvhhc.zBC3/k9pYU9kOkm5Q/RLvgN88SAUMSu', NULL, '2024-05-24 10:26:07', '2024-05-24 10:26:07', NULL, NULL, NULL),
(15, 'kanika', 'eeshuprp25@gmail.com', '+91', '8412345678', 0, '$2y$10$YLuxr5ciOy8vvsqEqkVh5ONRUAYu83i4aSMrHrfEZtbj6O6gnMTG.', NULL, '2024-07-05 11:08:27', '2024-07-05 11:08:27', NULL, 1, 1),
(17, 'Ram Tiwari', 'ramtiwari7355@gmail.com', '+91', '7234854102', 0, '$2y$10$myvrvaWJaMq7EWj8OZaP4elBETlp.hb1j7uqMj1zZqp5UuJqu6Vhe', NULL, '2024-07-31 10:27:04', '2024-07-31 10:27:04', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_zoom_meeting`
--

CREATE TABLE `user_zoom_meeting` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `zoom_meeting_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_experiences`
--

CREATE TABLE `work_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_experience` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_experiences`
--

INSERT INTO `work_experiences` (`id`, `work_experience`, `created_at`, `updated_at`) VALUES
(1, 'Fresher', '2024-05-16 06:11:53', '2024-05-16 06:11:53'),
(2, '0-1 years', '2024-05-16 06:11:53', '2024-05-16 06:11:53'),
(3, '1-3 years', '2024-05-16 06:11:53', '2024-05-16 06:11:53'),
(4, '3-5 years', '2024-05-16 06:11:53', '2024-05-16 06:11:53'),
(5, '5+ years', '2024-05-16 06:11:53', '2024-05-16 06:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_categories`
--

CREATE TABLE `zoom_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `meeting_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `repeat` tinyint(1) NOT NULL DEFAULT 0,
  `repeat_every` int(11) DEFAULT NULL,
  `repeat_cycles` int(11) DEFAULT NULL,
  `repeat_type` enum('day','week','month','year') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_reminder` tinyint(1) NOT NULL DEFAULT 0,
  `remind_time` int(11) DEFAULT NULL,
  `remind_type` enum('day','hour','minute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `host_video` tinyint(1) NOT NULL DEFAULT 0,
  `participant_video` tinyint(1) NOT NULL DEFAULT 0,
  `start_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_meeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `occurrence_id` bigint(20) DEFAULT NULL,
  `occurrence_order` int(11) DEFAULT NULL,
  `status` enum('waiting','live','canceled','finished') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_settings`
--

CREATE TABLE `zoom_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_until` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meeting_app` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in_app',
  `enable_zoom` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zoom_settings`
--

INSERT INTO `zoom_settings` (`id`, `api_key`, `secret_key`, `purchase_code`, `supported_until`, `created_at`, `updated_at`, `meeting_app`, `enable_zoom`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'in_app', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_notes`
--
ALTER TABLE `applicant_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicant_notes_user_id_foreign` (`user_id`),
  ADD KEY `applicant_notes_job_application_id_foreign` (`job_application_id`);

--
-- Indexes for table `application_settings`
--
ALTER TABLE `application_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_status`
--
ALTER TABLE `application_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_job_id` (`job_id`);

--
-- Indexes for table `candidateexperience`
--
ALTER TABLE `candidateexperience`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CandidateID` (`CandidateId`);

--
-- Indexes for table `candidatequalification`
--
ALTER TABLE `candidatequalification`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CandidateId` (`CandidateId`);

--
-- Indexes for table `candidateskill`
--
ALTER TABLE `candidateskill`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `candidateID` (`CandidateId`);

--
-- Indexes for table `candidate_history`
--
ALTER TABLE `candidate_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_status`
--
ALTER TABLE `candidate_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `candidateID` (`CandidateId`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_skill_id` (`Skill_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complayers`
--
ALTER TABLE `complayers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designation` (`designation`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_documentable_id_documentable_type_name_unique` (`documentable_id`,`documentable_type`,`name`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erfskills`
--
ALTER TABLE `erfskills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `erfskills_skill_id_foreign` (`skill_id`),
  ADD KEY `erfskills_erform_id_foreign` (`erform_id`);

--
-- Indexes for table `erves`
--
ALTER TABLE `erves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `erves_category_id_foreign` (`category_id`),
  ADD KEY `erves_location_id_foreign` (`location_id`),
  ADD KEY `erves_jobtype_id_foreign` (`jobtype_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_candidate_id` (`job_application_id`),
  ADD KEY `fk_interview_schedule_id` (`interview_schedule_id`);

--
-- Indexes for table `footer_settings`
--
ALTER TABLE `footer_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headofdepartment`
--
ALTER TABLE `headofdepartment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `DepartmentId` (`DepartmentId`);

--
-- Indexes for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interview_schedules_job_application_id_foreign` (`job_application_id`),
  ADD KEY `interview_schedules_meeting_id_foreign` (`meeting_id`);

--
-- Indexes for table `interview_schedule_comments`
--
ALTER TABLE `interview_schedule_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interview_schedule_comments_interview_schedule_id_foreign` (`interview_schedule_id`),
  ADD KEY `interview_schedule_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `interview_schedule_employees`
--
ALTER TABLE `interview_schedule_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interview_schedule_employees_interview_schedule_id_foreign` (`interview_schedule_id`),
  ADD KEY `interview_schedule_employees_user_id_foreign` (`user_id`);

--
-- Indexes for table `jdstores`
--
ALTER TABLE `jdstores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobassigns`
--
ALTER TABLE `jobassigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobassigns_job_id_foreign` (`job_id`),
  ADD KEY `jobassigns_jobrecruitment_id_foreign` (`jobrecruitment_id`),
  ADD KEY `jobassigns_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobcertifications`
--
ALTER TABLE `jobcertifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobqualifications`
--
ALTER TABLE `jobqualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobrecruitments`
--
ALTER TABLE `jobrecruitments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobrecruitments_job_id_foreign` (`job_id`),
  ADD KEY `jobrecruitments_category_id_foreign` (`category_id`),
  ADD KEY `jobrecruitments_qualification_id_foreign` (`qualification_id`),
  ADD KEY `jobrecruitments_anycertification_id_foreign` (`anycertification_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_department_id_foreign` (`department_id`),
  ADD KEY `jobs_company_id_foreign` (`company_id`);

--
-- Indexes for table `job_alerts`
--
ALTER TABLE `job_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_alerts_work_experience_id_foreign` (`work_experience_id`),
  ADD KEY `job_alerts_job_type_id_foreign` (`job_type_id`);

--
-- Indexes for table `job_alert_categories`
--
ALTER TABLE `job_alert_categories`
  ADD KEY `job_alert_categories_job_alert_id_foreign` (`job_alert_id`),
  ADD KEY `job_alert_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `job_alert_locations`
--
ALTER TABLE `job_alert_locations`
  ADD KEY `job_alert_locations_job_alert_id_foreign` (`job_alert_id`),
  ADD KEY `job_alert_locations_location_id_foreign` (`location_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_jobrecruitment_id_foreign` (`jobrecruitment_id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`),
  ADD KEY `job_applications_status_id_foreign` (`status_id`);

--
-- Indexes for table `job_applicationsubqualifications`
--
ALTER TABLE `job_applicationsubqualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jobapplication` (`jobapplication_id`),
  ADD KEY `fk_subqualifications` (`subqualifications_id`);

--
-- Indexes for table `job_application_answers`
--
ALTER TABLE `job_application_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_application_answers_job_application_id_foreign` (`job_application_id`),
  ADD KEY `job_application_answers_jobrecruitment_id_foreign` (`jobrecruitment_id`),
  ADD KEY `job_application_answers_job_id_foreign` (`job_id`),
  ADD KEY `job_application_answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_job_application`
--
ALTER TABLE `job_job_application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_job_application_jobrecruitment_id_foreign` (`jobrecruitment_id`),
  ADD KEY `job_job_application_job_application_id_foreign` (`job_application_id`),
  ADD KEY `job_job_application_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_locations_country_id_foreign` (`country_id`);

--
-- Indexes for table `job_offer_questions`
--
ALTER TABLE `job_offer_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_onboard_questions`
--
ALTER TABLE `job_onboard_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_onboard_questions_question_id_foreign` (`question_id`),
  ADD KEY `job_onboard_questions_job_offer_id_foreign` (`job_offer_id`);

--
-- Indexes for table `job_questions`
--
ALTER TABLE `job_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_questions_question_id_foreign` (`question_id`),
  ADD KEY `job_questions_jobrecruitment_id_foreign` (`jobrecruitment_id`),
  ADD KEY `job_questions_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_skills_jobrecruitment_id_foreign` (`jobrecruitment_id`),
  ADD KEY `job_skills_skill_id_foreign` (`skill_id`),
  ADD KEY `job_skills_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_subqualifications`
--
ALTER TABLE `job_subqualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_subqualifications_subqualification_id_foreign` (`subqualification_id`),
  ADD KEY `job_subqualifications_jobrecruitment_id_foreign` (`jobrecruitment_id`),
  ADD KEY `job_subqualifications_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_settings`
--
ALTER TABLE `language_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linked_in_settings`
--
ALTER TABLE `linked_in_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offerletters`
--
ALTER TABLE `offerletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onboard_answers`
--
ALTER TABLE `onboard_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onboard_answers_onboard_id_foreign` (`onboard_id`),
  ADD KEY `onboard_answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `onlinequestions`
--
ALTER TABLE `onlinequestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlinequestions_jobcategory_id_foreign` (`jobcategory_id`);

--
-- Indexes for table `onlinequestions_onlinexams`
--
ALTER TABLE `onlinequestions_onlinexams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlinequestions_onlinexams_onlinequestions_id_foreign` (`onlinequestions_id`),
  ADD KEY `onlinequestions_onlinexams_onlinexams_id_foreign` (`onlinexams_id`);

--
-- Indexes for table `onlinequestion_onlinexam`
--
ALTER TABLE `onlinequestion_onlinexam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlinequestion_onlinexam_onlinequestion_id_foreign` (`onlinequestion_id`),
  ADD KEY `onlinequestion_onlinexam_onlinexam_id_foreign` (`onlinexam_id`);

--
-- Indexes for table `onlinexamresults`
--
ALTER TABLE `onlinexamresults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlinexamresults_onlinexamjobsapp_id_foreign` (`onlinexamjobsapp_id`),
  ADD KEY `onlinexamresults_onlinequestion_id_foreign` (`onlinequestion_id`);

--
-- Indexes for table `onlinexams`
--
ALTER TABLE `onlinexams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlinexam_job_applications`
--
ALTER TABLE `onlinexam_job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlinexam_job_applications_onlinexam_id_foreign` (`onlinexam_id`);

--
-- Indexes for table `on_board_details`
--
ALTER TABLE `on_board_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `on_board_details_job_application_id_foreign` (`job_application_id`),
  ADD KEY `on_board_details_designation_id_foreign` (`designation_id`),
  ADD KEY `on_board_details_department_id_foreign` (`department_id`),
  ADD KEY `on_board_details_reports_to_id_foreign` (`reports_to_id`),
  ADD KEY `on_board_details_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `on_board_files`
--
ALTER TABLE `on_board_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `on_board_files_on_board_detail_id_foreign` (`on_board_detail_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_module_id_foreign` (`module_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `projecttitle`
--
ALTER TABLE `projecttitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectwork`
--
ALTER TABLE `projectwork`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `candidateID` (`CandidateId`);

--
-- Indexes for table `project_works`
--
ALTER TABLE `project_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratingdetails`
--
ALTER TABLE `ratingdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replacementemployees`
--
ALTER TABLE `replacementemployees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replacementemployees_jobrecruitment_id_foreign` (`jobrecruitment_id`),
  ADD KEY `replacementemployees_job_id_foreign` (`job_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `salarycreations`
--
ALTER TABLE `salarycreations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_category_id_foreign` (`category_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sticky_notes`
--
ALTER TABLE `sticky_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sticky_notes_user_id_foreign` (`user_id`);

--
-- Indexes for table `storage_settings`
--
ALTER TABLE `storage_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_course_id_foreign` (`course_id`);

--
-- Indexes for table `subqualifications`
--
ALTER TABLE `subqualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subqualifications_qualification_id_foreign` (`qualification_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

--
-- Indexes for table `theme_settings`
--
ALTER TABLE `theme_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo_items`
--
ALTER TABLE `todo_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todo_items_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_zoom_meeting`
--
ALTER TABLE `user_zoom_meeting`
  ADD KEY `user_zoom_meeting_user_id_foreign` (`user_id`),
  ADD KEY `user_zoom_meeting_zoom_meeting_id_foreign` (`zoom_meeting_id`);

--
-- Indexes for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_categories`
--
ALTER TABLE `zoom_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zoom_meetings_created_by_foreign` (`created_by`),
  ADD KEY `zoom_meetings_source_meeting_id_foreign` (`source_meeting_id`),
  ADD KEY `zoom_meetings_category_id_foreign` (`category_id`);

--
-- Indexes for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant_notes`
--
ALTER TABLE `applicant_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_settings`
--
ALTER TABLE `application_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `application_status`
--
ALTER TABLE `application_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `candidateexperience`
--
ALTER TABLE `candidateexperience`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidatequalification`
--
ALTER TABLE `candidatequalification`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `candidateskill`
--
ALTER TABLE `candidateskill`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidate_history`
--
ALTER TABLE `candidate_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;

--
-- AUTO_INCREMENT for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_status`
--
ALTER TABLE `candidate_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_settings`
--
ALTER TABLE `company_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complayers`
--
ALTER TABLE `complayers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `erfskills`
--
ALTER TABLE `erfskills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erves`
--
ALTER TABLE `erves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `footer_settings`
--
ALTER TABLE `footer_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `headofdepartment`
--
ALTER TABLE `headofdepartment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `interview_schedule_comments`
--
ALTER TABLE `interview_schedule_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `interview_schedule_employees`
--
ALTER TABLE `interview_schedule_employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `jdstores`
--
ALTER TABLE `jdstores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobassigns`
--
ALTER TABLE `jobassigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobcertifications`
--
ALTER TABLE `jobcertifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jobqualifications`
--
ALTER TABLE `jobqualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `jobrecruitments`
--
ALTER TABLE `jobrecruitments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `job_alerts`
--
ALTER TABLE `job_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `job_applicationsubqualifications`
--
ALTER TABLE `job_applicationsubqualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_application_answers`
--
ALTER TABLE `job_application_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_job_application`
--
ALTER TABLE `job_job_application`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_locations`
--
ALTER TABLE `job_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_offer_questions`
--
ALTER TABLE `job_offer_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_onboard_questions`
--
ALTER TABLE `job_onboard_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_questions`
--
ALTER TABLE `job_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `job_subqualifications`
--
ALTER TABLE `job_subqualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language_settings`
--
ALTER TABLE `language_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `linked_in_settings`
--
ALTER TABLE `linked_in_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `offerletters`
--
ALTER TABLE `offerletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `onboard_answers`
--
ALTER TABLE `onboard_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlinequestions`
--
ALTER TABLE `onlinequestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `onlinequestions_onlinexams`
--
ALTER TABLE `onlinequestions_onlinexams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlinequestion_onlinexam`
--
ALTER TABLE `onlinequestion_onlinexam`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlinexamresults`
--
ALTER TABLE `onlinexamresults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlinexams`
--
ALTER TABLE `onlinexams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlinexam_job_applications`
--
ALTER TABLE `onlinexam_job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `on_board_details`
--
ALTER TABLE `on_board_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `on_board_files`
--
ALTER TABLE `on_board_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `projecttitle`
--
ALTER TABLE `projecttitle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `projectwork`
--
ALTER TABLE `projectwork`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_works`
--
ALTER TABLE `project_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratingdetails`
--
ALTER TABLE `ratingdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `replacementemployees`
--
ALTER TABLE `replacementemployees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salarycreations`
--
ALTER TABLE `salarycreations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sticky_notes`
--
ALTER TABLE `sticky_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `storage_settings`
--
ALTER TABLE `storage_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subqualifications`
--
ALTER TABLE `subqualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme_settings`
--
ALTER TABLE `theme_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `todo_items`
--
ALTER TABLE `todo_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zoom_categories`
--
ALTER TABLE `zoom_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant_notes`
--
ALTER TABLE `applicant_notes`
  ADD CONSTRAINT `applicant_notes_job_application_id_foreign` FOREIGN KEY (`job_application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicant_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `fk_job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `candidatequalification`
--
ALTER TABLE `candidatequalification`
  ADD CONSTRAINT `candidatequalification_ibfk_1` FOREIGN KEY (`CandidateId`) REFERENCES `candidate` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `candidateskill`
--
ALTER TABLE `candidateskill`
  ADD CONSTRAINT `candidateskill_ibfk_1` FOREIGN KEY (`candidateID`) REFERENCES `candidate` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_ibfk_1` FOREIGN KEY (`candidateID`) REFERENCES `candidate` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `certifications`
--
ALTER TABLE `certifications`
  ADD CONSTRAINT `fk_skill_id` FOREIGN KEY (`Skill_id`) REFERENCES `skills` (`id`);

--
-- Constraints for table `erfskills`
--
ALTER TABLE `erfskills`
  ADD CONSTRAINT `erfskills_erform_id_foreign` FOREIGN KEY (`erform_id`) REFERENCES `erves` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `erfskills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `erves`
--
ALTER TABLE `erves`
  ADD CONSTRAINT `erves_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `erves_jobtype_id_foreign` FOREIGN KEY (`jobtype_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `erves_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `job_locations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_interview_schedule_id` FOREIGN KEY (`interview_schedule_id`) REFERENCES `interview_schedules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_job_application_id` FOREIGN KEY (`job_application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD CONSTRAINT `interview_schedules_job_application_id_foreign` FOREIGN KEY (`job_application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `interview_schedules_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `zoom_meetings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interview_schedule_comments`
--
ALTER TABLE `interview_schedule_comments`
  ADD CONSTRAINT `interview_schedule_comments_interview_schedule_id_foreign` FOREIGN KEY (`interview_schedule_id`) REFERENCES `interview_schedules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `interview_schedule_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interview_schedule_employees`
--
ALTER TABLE `interview_schedule_employees`
  ADD CONSTRAINT `interview_schedule_employees_interview_schedule_id_foreign` FOREIGN KEY (`interview_schedule_id`) REFERENCES `interview_schedules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `interview_schedule_employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobassigns`
--
ALTER TABLE `jobassigns`
  ADD CONSTRAINT `jobassigns_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobassigns_jobrecruitment_id_foreign` FOREIGN KEY (`jobrecruitment_id`) REFERENCES `jobrecruitments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobassigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobrecruitments`
--
ALTER TABLE `jobrecruitments`
  ADD CONSTRAINT `jobrecruitments_anycertification_id_foreign` FOREIGN KEY (`anycertification_id`) REFERENCES `certifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobrecruitments_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobrecruitments_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_alerts`
--
ALTER TABLE `job_alerts`
  ADD CONSTRAINT `job_alerts_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_alerts_work_experience_id_foreign` FOREIGN KEY (`work_experience_id`) REFERENCES `work_experiences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_alert_categories`
--
ALTER TABLE `job_alert_categories`
  ADD CONSTRAINT `job_alert_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_alert_categories_job_alert_id_foreign` FOREIGN KEY (`job_alert_id`) REFERENCES `job_alerts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_alert_locations`
--
ALTER TABLE `job_alert_locations`
  ADD CONSTRAINT `job_alert_locations_job_alert_id_foreign` FOREIGN KEY (`job_alert_id`) REFERENCES `job_alerts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_alert_locations_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `job_locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_jobrecruitment_id_foreign` FOREIGN KEY (`jobrecruitment_id`) REFERENCES `jobrecruitments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_applications_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `application_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_applicationsubqualifications`
--
ALTER TABLE `job_applicationsubqualifications`
  ADD CONSTRAINT `fk_jobapplication` FOREIGN KEY (`jobapplication_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_subqualifications` FOREIGN KEY (`subqualifications_id`) REFERENCES `subqualifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_application_answers`
--
ALTER TABLE `job_application_answers`
  ADD CONSTRAINT `job_application_answers_job_application_id_foreign` FOREIGN KEY (`job_application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_application_answers_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_application_answers_jobrecruitment_id_foreign` FOREIGN KEY (`jobrecruitment_id`) REFERENCES `jobrecruitments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_application_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_job_application`
--
ALTER TABLE `job_job_application`
  ADD CONSTRAINT `job_job_application_job_application_id_foreign` FOREIGN KEY (`job_application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_job_application_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_job_application_jobrecruitment_id_foreign` FOREIGN KEY (`jobrecruitment_id`) REFERENCES `jobrecruitments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD CONSTRAINT `job_locations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_onboard_questions`
--
ALTER TABLE `job_onboard_questions`
  ADD CONSTRAINT `job_onboard_questions_job_offer_id_foreign` FOREIGN KEY (`job_offer_id`) REFERENCES `on_board_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_onboard_questions_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `job_offer_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_questions`
--
ALTER TABLE `job_questions`
  ADD CONSTRAINT `job_questions_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_questions_jobrecruitment_id_foreign` FOREIGN KEY (`jobrecruitment_id`) REFERENCES `jobrecruitments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_questions_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD CONSTRAINT `job_skills_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_skills_jobrecruitment_id_foreign` FOREIGN KEY (`jobrecruitment_id`) REFERENCES `jobrecruitments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_subqualifications`
--
ALTER TABLE `job_subqualifications`
  ADD CONSTRAINT `job_subqualifications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_subqualifications_jobrecruitment_id_foreign` FOREIGN KEY (`jobrecruitment_id`) REFERENCES `jobrecruitments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_subqualifications_subqualification_id_foreign` FOREIGN KEY (`subqualification_id`) REFERENCES `subqualifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `onboard_answers`
--
ALTER TABLE `onboard_answers`
  ADD CONSTRAINT `onboard_answers_onboard_id_foreign` FOREIGN KEY (`onboard_id`) REFERENCES `on_board_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `onboard_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `job_offer_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `onlinequestions`
--
ALTER TABLE `onlinequestions`
  ADD CONSTRAINT `onlinequestions_jobcategory_id_foreign` FOREIGN KEY (`jobcategory_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlinequestions_onlinexams`
--
ALTER TABLE `onlinequestions_onlinexams`
  ADD CONSTRAINT `onlinequestions_onlinexams_onlinequestions_id_foreign` FOREIGN KEY (`onlinequestions_id`) REFERENCES `onlinequestions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlinequestions_onlinexams_onlinexams_id_foreign` FOREIGN KEY (`onlinexams_id`) REFERENCES `onlinexams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlinequestion_onlinexam`
--
ALTER TABLE `onlinequestion_onlinexam`
  ADD CONSTRAINT `onlinequestion_onlinexam_onlinequestion_id_foreign` FOREIGN KEY (`onlinequestion_id`) REFERENCES `onlinequestions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlinequestion_onlinexam_onlinexam_id_foreign` FOREIGN KEY (`onlinexam_id`) REFERENCES `onlinexams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlinexamresults`
--
ALTER TABLE `onlinexamresults`
  ADD CONSTRAINT `onlinexamresults_onlinequestion_id_foreign` FOREIGN KEY (`onlinequestion_id`) REFERENCES `onlinequestions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `onlinexamresults_onlinexamjobsapp_id_foreign` FOREIGN KEY (`onlinexamjobsapp_id`) REFERENCES `onlinexam_job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `onlinexam_job_applications`
--
ALTER TABLE `onlinexam_job_applications`
  ADD CONSTRAINT `onlinexam_job_applications_onlinexam_id_foreign` FOREIGN KEY (`onlinexam_id`) REFERENCES `onlinexams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `on_board_details`
--
ALTER TABLE `on_board_details`
  ADD CONSTRAINT `on_board_details_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `on_board_details_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `on_board_details_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `on_board_details_job_application_id_foreign` FOREIGN KEY (`job_application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `on_board_details_reports_to_id_foreign` FOREIGN KEY (`reports_to_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `on_board_files`
--
ALTER TABLE `on_board_files`
  ADD CONSTRAINT `on_board_files_on_board_detail_id_foreign` FOREIGN KEY (`on_board_detail_id`) REFERENCES `on_board_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projectwork`
--
ALTER TABLE `projectwork`
  ADD CONSTRAINT `projectwork_ibfk_1` FOREIGN KEY (`candidateID`) REFERENCES `candidate` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
