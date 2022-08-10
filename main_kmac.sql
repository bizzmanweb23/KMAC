-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 07:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main_kmac`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_confirm` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `gender`, `date_of_birth`, `email_verified_at`, `password`, `password_confirm`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'Admin', 'admin@gmail.com', NULL, 'Male', NULL, NULL, '$2y$10$9B/d82SB5lfZ9/N4F/O1ou5Pw0HRa0u9zd/GXW5oQg2oKw/bHQFMS', NULL, NULL, '2022-07-31 15:16:52', '2022-07-31 15:16:52'),
(38, 'username', '123@gmail.com', '1231231230', 'male', NULL, NULL, '$2y$10$1S5tyo5B9dUHBdbZEjy1jemhxMfnV3D.uzGwiPrX6Bz86v21z5WNm', NULL, NULL, '2022-08-08 02:45:12', '2022-08-08 02:45:12'),
(39, 'username', '023@gmail.com', '1231231230', 'male', NULL, NULL, '$2y$10$df.eonLORT2NN8CYj1YwB.JU.FrkQ9stqvABuy0KQKKznUbQF7G5O', NULL, NULL, '2022-08-08 02:46:13', '2022-08-08 02:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(50) NOT NULL,
  `code` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `country`) VALUES
(2, 'ABW', 'Aruba'),
(3, 'AFG', 'Afghanistan'),
(4, 'AGO', 'Angola'),
(5, 'AIA', 'Anguilla'),
(6, 'ALA', 'Åland Islands'),
(7, 'ALB', 'Albania'),
(8, 'AND', 'Andorra'),
(9, 'ARE', 'United Arab Emirates'),
(10, 'ARG', 'Argentina'),
(11, 'ARM', 'Armenia'),
(12, 'ASM', 'American Samoa'),
(13, 'ATA', 'Antarctica'),
(14, 'ATF', 'French Southern Territories'),
(15, 'ATG', 'Antigua and Barbuda'),
(16, 'AUS', 'Australia'),
(17, 'AUT', 'Austria'),
(18, 'AZE', 'Azerbaijan'),
(19, 'BDI', 'Burundi'),
(20, 'BEL', 'Belgium'),
(21, 'BEN', 'Benin'),
(22, 'BES', 'Bonaire, Sint Eustatius and Saba'),
(23, 'BFA', 'Burkina Faso'),
(24, 'BGD', 'Bangladesh'),
(25, 'BGR', 'Bulgaria'),
(26, 'BHR', 'Bahrain'),
(27, 'BHS', 'Bahamas'),
(28, 'BIH', 'Bosnia and Herzegovina'),
(29, 'BLM', 'Saint Barthélemy'),
(30, 'BLR', 'Belarus'),
(31, 'BLZ', 'Belize'),
(32, 'BMU', 'Bermuda'),
(33, 'BOL', 'Bolivia, Plurinational State of'),
(34, 'BRA', 'Brazil'),
(35, 'BRB', 'Barbados'),
(36, 'BRN', 'Brunei Darussalam'),
(37, 'BTN', 'Bhutan'),
(38, 'BVT', 'Bouvet Island'),
(39, 'BWA', 'Botswana'),
(40, 'CAF', 'Central African Republic'),
(41, 'CAN', 'Canada'),
(42, 'CCK', 'Cocos (Keeling) Islands'),
(43, 'CHE', 'Switzerland'),
(44, 'CHL', 'Chile'),
(45, 'CHN', 'China'),
(46, 'CIV', 'Côte d\'Ivoire'),
(47, 'CMR', 'Cameroon'),
(48, 'COD', 'Congo, the Democratic Republic of the'),
(49, 'COG', 'Congo'),
(50, 'COK', 'Cook Islands'),
(51, 'COL', 'Colombia'),
(52, 'COM', 'Comoros'),
(53, 'CPV', 'Cape Verde'),
(54, 'CRI', 'Costa Rica'),
(55, 'CUB', 'Cuba'),
(56, 'CUW', 'Curaçao'),
(57, 'CXR', 'Christmas Island'),
(58, 'CYM', 'Cayman Islands'),
(59, 'CYP', 'Cyprus'),
(60, 'CZE', 'Czech Republic'),
(61, 'DEU', 'Germany'),
(62, 'DJI', 'Djibouti'),
(63, 'DMA', 'Dominica'),
(64, 'DNK', 'Denmark'),
(65, 'DOM', 'Dominican Republic'),
(66, 'DZA', 'Algeria'),
(67, 'ECU', 'Ecuador'),
(68, 'EGY', 'Egypt'),
(69, 'ERI', 'Eritrea'),
(70, 'ESH', 'Western Sahara'),
(71, 'ESP', 'Spain'),
(72, 'EST', 'Estonia'),
(73, 'ETH', 'Ethiopia'),
(74, 'FIN', 'Finland'),
(75, 'FJI', 'Fiji'),
(76, 'FLK', 'Falkland Islands (Malvinas)'),
(77, 'FRA', 'France'),
(78, 'FRO', 'Faroe Islands'),
(79, 'FSM', 'Micronesia, Federated States of'),
(80, 'GAB', 'Gabon'),
(81, 'GBR', 'United Kingdom'),
(82, 'GEO', 'Georgia'),
(83, 'GGY', 'Guernsey'),
(84, 'GHA', 'Ghana'),
(85, 'GIB', 'Gibraltar'),
(86, 'GIN', 'Guinea'),
(87, 'GLP', 'Guadeloupe'),
(88, 'GMB', 'Gambia'),
(89, 'GNB', 'Guinea-Bissau'),
(90, 'GNQ', 'Equatorial Guinea'),
(91, 'GRC', 'Greece'),
(92, 'GRD', 'Grenada'),
(93, 'GRL', 'Greenland'),
(94, 'GTM', 'Guatemala'),
(95, 'GUF', 'French Guiana'),
(96, 'GUM', 'Guam'),
(97, 'GUY', 'Guyana'),
(98, 'HKG', 'Hong Kong'),
(99, 'HMD', 'Heard Island and McDonald Islands'),
(100, 'HND', 'Honduras'),
(101, 'HRV', 'Croatia'),
(102, 'HTI', 'Haiti'),
(103, 'HUN', 'Hungary'),
(104, 'IDN', 'Indonesia'),
(105, 'IMN', 'Isle of Man'),
(106, 'IND', 'India'),
(107, 'IOT', 'British Indian Ocean Territory'),
(108, 'IRL', 'Ireland'),
(109, 'IRN', 'Iran, Islamic Republic of'),
(110, 'IRQ', 'Iraq'),
(111, 'ISL', 'Iceland'),
(112, 'GPL', 'Greater Palestine'),
(113, 'ITA', 'Italy'),
(114, 'JAM', 'Jamaica'),
(115, 'JEY', 'Jersey'),
(116, 'JOR', 'Jordan'),
(117, 'JPN', 'Japan'),
(118, 'KAZ', 'Kazakhstan'),
(119, 'KEN', 'Kenya'),
(120, 'KGZ', 'Kyrgyzstan'),
(121, 'KHM', 'Cambodia'),
(122, 'KIR', 'Kiribati'),
(123, 'KNA', 'Saint Kitts and Nevis'),
(124, 'KOR', 'Korea, Republic of'),
(125, 'KWT', 'Kuwait'),
(126, 'LAO', 'Lao People\'s Democratic Republic'),
(127, 'LBN', 'Lebanon'),
(128, 'LBR', 'Liberia'),
(129, 'LBY', 'Libya'),
(130, 'LCA', 'Saint Lucia'),
(131, 'LIE', 'Liechtenstein'),
(132, 'LKA', 'Sri Lanka'),
(133, 'LSO', 'Lesotho'),
(134, 'LTU', 'Lithuania'),
(135, 'LUX', 'Luxembourg'),
(136, 'LVA', 'Latvia'),
(137, 'MAC', 'Macao'),
(138, 'MAF', 'Saint Martin (French part)'),
(139, 'MAR', 'Morocco'),
(140, 'MCO', 'Monaco'),
(141, 'MDA', 'Moldova, Republic of'),
(142, 'MDG', 'Madagascar'),
(143, 'MDV', 'Maldives'),
(144, 'MEX', 'Mexico'),
(145, 'MHL', 'Marshall Islands'),
(146, 'MKD', 'Macedonia, the former Yugoslav Republic of'),
(147, 'MLI', 'Mali'),
(148, 'MLT', 'Malta'),
(149, 'MMR', 'Myanmar'),
(150, 'MNE', 'Montenegro'),
(151, 'MNG', 'Mongolia'),
(152, 'MNP', 'Northern Mariana Islands'),
(153, 'MOZ', 'Mozambique'),
(154, 'MRT', 'Mauritania'),
(155, 'MSR', 'Montserrat'),
(156, 'MTQ', 'Martinique'),
(157, 'MUS', 'Mauritius'),
(158, 'MWI', 'Malawi'),
(159, 'MYS', 'Malaysia'),
(160, 'MYT', 'Mayotte'),
(161, 'NAM', 'Namibia'),
(162, 'NCL', 'New Caledonia'),
(163, 'NER', 'Niger'),
(164, 'NFK', 'Norfolk Island'),
(165, 'NGA', 'Nigeria'),
(166, 'NIC', 'Nicaragua'),
(167, 'NIU', 'Niue'),
(168, 'NLD', 'Netherlands'),
(169, 'NOR', 'Norway'),
(170, 'NPL', 'Nepal'),
(171, 'NRU', 'Nauru'),
(172, 'NZL', 'New Zealand'),
(173, 'OMN', 'Oman'),
(174, 'PAK', 'Pakistan'),
(175, 'PAN', 'Panama'),
(176, 'PCN', 'Pitcairn'),
(177, 'PER', 'Peru'),
(178, 'PHL', 'Philippines'),
(179, 'PLW', 'Palau'),
(180, 'PNG', 'Papua New Guinea'),
(181, 'POL', 'Poland'),
(182, 'PRI', 'Puerto Rico'),
(183, 'PRK', 'Korea, Democratic People\'s Republic of'),
(184, 'PRT', 'Portugal'),
(185, 'PRY', 'Paraguay'),
(186, 'PSE', 'Palestine, State of'),
(187, 'PYF', 'French Polynesia'),
(188, 'QAT', 'Qatar'),
(189, 'REU', 'Réunion'),
(190, 'ROU', 'Romania'),
(191, 'RUS', 'Russian Federation'),
(192, 'RWA', 'Rwanda'),
(193, 'SAU', 'Saudi Arabia'),
(194, 'SDN', 'Sudan'),
(195, 'SEN', 'Senegal'),
(196, 'SGP', 'Singapore'),
(197, 'SGS', 'South Georgia and the South Sandwich Islands'),
(198, 'SHN', 'Saint Helena, Ascension and Tristan da Cunha'),
(199, 'SJM', 'Svalbard and Jan Mayen'),
(200, 'SLB', 'Solomon Islands'),
(201, 'SLE', 'Sierra Leone'),
(202, 'SLV', 'El Salvador'),
(203, 'SMR', 'San Marino'),
(204, 'SOM', 'Somalia'),
(205, 'SPM', 'Saint Pierre and Miquelon'),
(206, 'SRB', 'Serbia'),
(207, 'SSD', 'South Sudan'),
(208, 'STP', 'Sao Tome and Principe'),
(209, 'SUR', 'Suriname'),
(210, 'SVK', 'Slovakia'),
(211, 'SVN', 'Slovenia'),
(212, 'SWE', 'Sweden'),
(213, 'SWZ', 'Swaziland'),
(214, 'SXM', 'Sint Maarten (Dutch part)'),
(215, 'SYC', 'Seychelles'),
(216, 'SYR', 'Syrian Arab Republic'),
(217, 'TCA', 'Turks and Caicos Islands'),
(218, 'TCD', 'Chad'),
(219, 'TGO', 'Togo'),
(220, 'THA', 'Thailand'),
(221, 'TJK', 'Tajikistan'),
(222, 'TKL', 'Tokelau'),
(223, 'TKM', 'Turkmenistan'),
(224, 'TLS', 'Timor-Leste'),
(225, 'TON', 'Tonga'),
(226, 'TTO', 'Trinidad and Tobago'),
(227, 'TUN', 'Tunisia'),
(228, 'TUR', 'Turkey'),
(229, 'TUV', 'Tuvalu'),
(230, 'TWN', 'Taiwan, Province of China'),
(231, 'TZA', 'Tanzania, United Republic of'),
(232, 'UGA', 'Uganda'),
(233, 'UKR', 'Ukraine'),
(234, 'UMI', 'United States Minor Outlying Islands'),
(235, 'URY', 'Uruguay'),
(236, 'USA', 'United States'),
(237, 'UZB', 'Uzbekistan'),
(238, 'VAT', 'Holy See (Vatican City State)'),
(239, 'VCT', 'Saint Vincent and the Grenadines'),
(240, 'VEN', 'Venezuela, Bolivarian Republic of'),
(241, 'VGB', 'Virgin Islands, British'),
(242, 'VIR', 'Virgin Islands, U.S.'),
(243, 'VNM', 'Viet Nam'),
(244, 'VUT', 'Vanuatu'),
(245, 'WLF', 'Wallis and Futuna'),
(246, 'WSM', 'Samoa'),
(247, 'YEM', 'Yemen'),
(248, 'ZAF', 'South Africa'),
(249, 'ZMB', 'Zambia'),
(250, 'ZWE', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `employee_id` int(50) NOT NULL,
  `company_id` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date_of_birth` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `user_role_id` int(100) DEFAULT NULL,
  `date_of_joining` varchar(200) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `zipcode` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`employee_id`, `company_id`, `contact_number`, `first_name`, `last_name`, `username`, `email`, `date_of_birth`, `gender`, `user_role_id`, `date_of_joining`, `address`, `state`, `city`, `zipcode`) VALUES
(1, '1', '65 6250 8527', 'Ong', 'Yan Kai', 'yankai', 'yankai@sgml.com.sg', '1984-10-13', 'Male', 1, '2018-05-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(2, '1', '65 6250 8527', 'Goh', 'Keegan', 'Keegan', 'keegan@sgml.com.sg', '1984-03-06', 'Male', 1, '2018-05-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(3, '1', '65 6250 8527', 'Quek', 'Choon Sheong, Adrian', 'adriangm', 'adrianquek@sgml.com.sg', '1984-07-21', 'Male', 1, '2020-11-02', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(4, '1', '65 6250 8527', 'Koey', 'Chee Seng', 'cs', 'cs@sgml.com.sg', '1984-05-04', 'Male', 2, '2018-05-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(5, '1', '65 6250 8527', 'Lee', 'Rui Jin', 'jlee', 'jlee@sgml.com.sg', '1989-01-17', 'Male', 2, '2018-05-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(6, '1', '65 6250 8527', 'Ong', 'Mng Yeow, Bernard', 'bernardong', 'bernardong@sgml.com.sg', '1984-05-28', 'Male', 2, '2018-05-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(7, '1', '65 6250 8527', 'Pang', 'Jun Xi', 'benpang', 'ben@sgml.com.sg', '1986-01-02', 'Male', 2, '2018-05-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(8, '1', '65 6250 8527', 'Goh', 'Liang Fen, Jessica', 'jess', 'jessgoh@sgml.com.sg', '1987-11-26', 'Female', 2, '2018-06-01', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(9, '1', '65 6250 8527', 'Goh', 'Char Xin', 'nikki', 'nikki@sgml.com.sg', '1992-03-12', 'Female', 2, '2019-03-18', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(10, '1', '65 6250 8527', 'Fung', 'Han Xian, Jorrence', 'jorrencefung', 'jorrence@sgml.com.sg', '1993-06-24', 'Male', 2, '2020-12-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(11, '1', '65 6250 8527', 'Tan', 'Sheau Sheng, James', 'james', 'james@sgml.com.sg', '1983-02-28', 'Male', 2, '2018-10-01', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(12, '1', '65 6250 8527', 'Tan', 'Li Sen', 'lisentan', 'lisen@sgml.com.sg', '1998-07-11', 'Male', 2, '2020-12-15', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(13, '1', '65 6250 8527', 'Ong', 'Jian Sheng, Jeffery', 'jeffong', 'jedd@sgml.com.sg', '1998-12-16', 'Male', 2, '2020-11-16', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(14, '1', '65 6250 8527', 'Lee', 'Kee Jiun', 'janelle', 'janelle@sgml.com.sg', '1997-10-21', 'Female', 2, '2018-08-01', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(15, '1', '65 6250 8527', 'Siau', 'Qin Yee', 'queenie', 'queenie@sgml.com.sg', '1995-07-25', 'Female', 2, '2020-11-01', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(16, '1', '65 6250 8527', 'Ang', 'Jieh Jun', 'jaceyang', 'jacey@sgml.com.sg', '1999-01-04', 'Female', 2, '2020-12-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(17, '1', '65 6250 8527', 'Ong', 'Hui Yong', 'gavin', 'gavin@sgml.com.sg', '1981-09-01', 'Male', 2, '2019-03-18', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(18, '1', '65 6250 8527', 'Lee', 'Cong Zhi', 'jasper', 'jasperlee.sgml.com.sg', '1999-12-31', 'Male', 2, '2018-08-01', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(19, '1', '65 6250 8527', 'Tan', 'Jian Xiong', 'jerrytan', 'jerry@sgml.com.sg', '1984-12-31', 'Male', 2, '2020-03-01', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(20, '1', '65 6250 8527', 'Chua', 'Cia Yie', 'ciayee', 'ciayie@sgml.com.sg', '1996-09-25', 'Female', 2, '2018-07-02', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(21, '1', '65 6250 8527', 'Ong', 'Yan Kai', 'ongyk', 'yankai@sgml.com.sg', '1984-10-13', 'Male', 2, '2018-05-21', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(22, '3', '65 6250 8527', 'jon', 'tan', 'jtyh89', 'jtyh89@gmail.com', '1989-04-28', 'Male', 2, '2021-06-02', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', '', '', ''),
(23, '2', '65 6250 8527', NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, NULL),
(26, 'company name', '65 6250 8527', NULL, NULL, ' ', NULL, '2022-07-13', NULL, NULL, '2022-07-05', 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, NULL),
(27, 'company name', '65 6250 8527', NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_x`
--

CREATE TABLE `inventory_x` (
  `id` int(50) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `item_name` varchar(250) DEFAULT NULL,
  `item_code` varchar(250) DEFAULT NULL,
  `qty_in` varchar(250) DEFAULT NULL,
  `cost_per_pcs` varchar(250) DEFAULT NULL,
  `total_cost` varchar(100) DEFAULT NULL,
  `qty_out` varchar(250) DEFAULT NULL,
  `on_hand_qty` varchar(250) DEFAULT NULL,
  `actual_qty` varchar(250) DEFAULT NULL,
  `adjustment` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory_x`
--

INSERT INTO `inventory_x` (`id`, `image`, `item_name`, `item_code`, `qty_in`, `cost_per_pcs`, `total_cost`, `qty_out`, `on_hand_qty`, `actual_qty`, `adjustment`) VALUES
(1, NULL, 'Broom Head', 'SBH0000-04', '10', '', '', '1', '9', '', '-9'),
(2, NULL, 'Broom Hard Head - Lidi (for compound area)	', 'SBL0000-03', '2', '', '', '?', '2', '', '-2'),
(3, NULL, 'Broom Bamboo Hard c/w stick (for compound area)	', 'SBHS000-02', '1', '', '', '?', '1', '', '-1'),
(4, NULL, 'Dustpan with Handle	', 'EDP000S-01', '5', '', '', '?', '5', '', '-5'),
(5, NULL, 'EZY Twin Bucker with Downpress Wringer	', 'ETB0000-04', '1', '', '', '?', '1', '', '-1'),
(6, NULL, 'Flexi Clamp	', 'EFC0000-01', '2', '', '', '?', '2', '', '-2'),
(7, NULL, 'Glomesh Scrubbing Pad 16\'\'- Blue	', 'ESPB016-02', '5', '', '', '?', '5', '', '-5'),
(8, NULL, 'Glomesh Scrubbing Pad 16\'\'- Peach	', 'ESPP016-03', '11', '', '', '?', '11', '', '-11'),
(9, NULL, 'Glove Latex - L	', 'SGLL000-01', '4', '', '', '?', '4', '', '-4'),
(10, NULL, 'Glove Latex - XL', 'SGLXL00-01', '2', '', '', '?', '2', '', '-2'),
(11, NULL, 'Leo Trolley Wheel - Front	', 'ETW000F-01', '3', '', '', '?', '3', '', '-3'),
(12, NULL, 'Leo Trolley Wheel - Rear	', 'ETW000R-02', '3', '', '', '?', '3', '', '-3'),
(13, NULL, 'Dust Mop  Luxury - 60cm (set) ', 'EDM000S-02', '3', '', '', '1', '2', '', '-2'),
(14, NULL, 'Dust Mop  Luxury - 60cm (Refill) ', 'EDM000R-01', '7', '', '', '?', '7', '', '-7'),
(15, NULL, 'Magic/Melamine Sponge - pck	', 'SMS0000-02', '10', '', '', '?', '10', '', '-10'),
(16, NULL, 'Magic/Melamine Sponge - 1 pc/pkt (Big)	', 'SMS0000-03', '13', '', '', '1', '12', '', '-12'),
(17, NULL, 'Magic/Melamine Sponge - 1 pc/pkt (Small)	', 'SMS0000-01', '10', '', '', '?', '10', '', '-10'),
(18, NULL, 'Ultra33 Micro Fibre Cloth - Blue	', 'SMCB033-03', '25', '', '', '9', '16', '', '-16'),
(19, NULL, 'Ultra33 Micro Fibre Cloth - Green	', 'SMCG033-04', '14', '', '', '13', '1', '', '-1'),
(20, NULL, 'Ultra33 Micro Fibre Cloth - Pink	', 'SMCP033-05', '31', '', '', '8', '23', '', '-23'),
(21, NULL, 'Ultra33 Micro Fibre Cloth - Yellow	', 'SMCY033-06', '8', '', '', '6', '2', '', '-2'),
(22, NULL, 'Mop bucket w/ strainer - Round head	', 'EMB000R-05', '1', '', '', '2', '-1', '', '1'),
(23, NULL, 'Mop Bucket with Strainer - Rect	', 'EMB000R-06', '5', '', '', '?', '5', '', '-5'),
(24, NULL, 'Mop Head - Blue	', 'EMHB000-01', '5', '', '', '1', '4', '', '-4'),
(25, NULL, 'Mop Head - Green	', 'EMHG000-02', '6', '', '', '2', '4', '', '-4'),
(26, NULL, 'Mop Head (PRO) - Red	', 'EMHR000-03', '1', '', '', '1', '?', '', '?'),
(27, NULL, 'Pail - Medium	', 'EPL000M-01', '4', '', '', '1', '3', '', '-3'),
(28, NULL, 'Pro Stick 150cm - Blue	', 'EPSB150-01', '12', '', '', '4', '8', '', '-8'),
(29, NULL, 'Replacement for Squeegee Trip - 105cm	', 'SRS0000-01', '6', '', '', '?', '6', '', '-6'),
(30, NULL, 'Dust Brush - Round	', 'EDB000R-01', '2', '', '', '?', '2', '', '-2'),
(31, NULL, 'Glove Rubber (Industrial/Home Use)	', 'SGR0000-01', '7', '', '', '2', '5', '', '-5'),
(32, NULL, 'Scrub Sponge 7443- 6pcs/pack	', 'SSP0000-01', '49', '', '', '7', '42', '', '-42'),
(33, NULL, 'Wiper Stick  Super Magic ', 'SWT0000-01', '1', '', '', '?', '1', '', '-1'),
(35, NULL, 'SuperVac Hose to connector D32mm	', 'EHC0032-02', '4', '', '', '?', '4', '', '-4'),
(36, NULL, 'SuperValue Pads  microfiber pads 40cm ', 'SMP0040-03', '5', '', '', '1', '4', '', '-4'),
(37, NULL, 'Toilet Bowl Brush - Black	', 'SBBB000-01', '16', '', '', '?', '16', '', '-16'),
(38, NULL, 'Toilet Floor Brush Head	', 'EFB0000-01', '13', '', '', '?', '13', '', '-13'),
(39, NULL, 'Toilet Hand Scrub Brush	', 'ESB0000-01', '10', '', '', '?', '10', '', '-10'),
(40, NULL, 'Tongs Metal 16\"	', 'ETM0016-01', '10', '', '', '3', '7', '', '-7'),
(41, NULL, 'Trash Folder	', 'ETF0000-01', '5', '', '', '?', '5', '', '-5'),
(42, NULL, 'TTS Microfiber Mop 40cm - Set	', 'EMM040S-01', '1', '', '', '?', '1', '', '-1'),
(43, NULL, 'Ultra 88 Miracle Mirco Fibre Cloth - Blue	', 'SMCB088-01', '13', '', '', '1', '12', '', '-12'),
(44, NULL, 'Ultra 88 Miracle Mirco Fibre Cloth - Pink	', 'SMCP088-02', '14', '', '', '1', '13', '', '-13'),
(45, NULL, 'Vacuum Viper Dry Bag - DSU15L	', 'SVB0015-01', '10', '', '', '?', '10', '', '-10'),
(46, NULL, 'Vacuum Paper Bag Typhoon 105  5L  5pcs in pck	', 'SVB0005-01', '5', '', '', '?', '5', '', '-5'),
(47, NULL, 'Vacuum Paper Bag Bella Machine - 10L   10 pcs/pck	', 'SVB0010-01', '39', '', '', '?', '39', '', '-39'),
(48, NULL, 'Walex Decodorizing Urinal Screen (mango  spring fresh)	', 'SUS0000-01', '70', '', '', '?', '70', '', '-70'),
(49, NULL, 'Window Squeegee 35cm - Blue	', 'EWSB035-01', '6', '', '', '?', '6', '', '-6'),
(50, NULL, 'Window Squeegee (lambwool)	', 'EWSL0000-02', '6', '', '', '1', '5', '', '-5'),
(51, NULL, 'Window/Floor Scrapper  Aluminium handle	', 'ESP0000-01', '2', '', '', '?', '2', '', '-2'),
(52, NULL, 'Ponchos1', ' SPC0000-0', '10', '', '', '?', '10', '', '-10'),
(53, NULL, 'Stick (Broom   Floor Brush)	', 'EST0000-01', '20', '', '', '2', '18', '', '-18'),
(54, NULL, 'Biohazard Bag  HDPE Yellow - 18\" x 29\" 100 pcs ', 'SBB1829-01', '4', '', '', '?', '4', '', '-4'),
(55, NULL, 'Safety Vest	ESV0000-01', '', '1', '', '', '?', '1', '', '-1'),
(56, NULL, 'Isolation Gown 40g  105 X 140cm - Blue 10 pcs ', 'SIG0000-02', '19', '', '', '?', '19', '', '-19'),
(57, NULL, 'Face Shield Full Lenght Benxon Disposable	', 'SFSF000-01', '13', '', '', '?', '13', '', '-13'),
(58, NULL, 'Mask N95  JFY - 20 pcs ', 'SM95000-02', '9', '', '', '?', '9', '', '-9'),
(59, NULL, 'Hair Cover Cap Non Woven - 100 pcs	', 'SHC0000-01', '4', '', '', '?', '4', '', '-4'),
(60, NULL, 'Shoe Cover  Melintex - 100 pcs ', 'SSC0000-01', '3', '', '', '?', '3', '', '-3'),
(61, NULL, 'Facepiece Half - 3M	', 'FSH000-02', '3', '', '', '?', '3', '', '-3'),
(62, NULL, 'Grown Disposable Coverall (L)	', 'SIG0000-03', '15', '', '', '?', '15', '', '-15'),
(63, NULL, 'Grown Disposable Coverall (XL)	', 'SIG0000-04', '15', '', '', '?', '15', '', '-15'),
(64, NULL, 'Caution Signage Board	', 'ECBY000-01', '2', '', '', '2', '?', '', '?'),
(65, NULL, 'Empty Spray Bottle c/w Trigger Spray - 500ml	', 'EEBS000-01', '15', '', '', '11', '4', '', '-4'),
(66, NULL, 'Extension Pole/Normal - 2.8m	', 'EEP0028-02', '1', '', '', '?', '1', '', '-1'),
(67, NULL, 'Air Freshener - Lavender	', 'SAF0000-01', '4', '', '', '?', '4', '', '-4'),
(68, NULL, '309 Alka Plus - 5L	', 'CAPB309-01', '7', '', '', '1', '6', '', '-6'),
(69, NULL, 'CIF Cream - White/Yellow 500 ml	', 'CCIF000-01', '42', '', '', '6', '36', '', '-36'),
(70, NULL, '701 Crystal Glass cleaner - 5L	', 'CGCB701-01', '5', '', '', '1', '4', '', '-4'),
(71, NULL, '404 Double Safe Sanitizer - 5L	', 'CDSB404-02', '9', '', '', '3', '6', '', '-6'),
(72, NULL, '103 Gentle Floral Hand Soap - 5L	', 'CHSB103-01', '4', '', '', '4', '?', '', '?'),
(73, NULL, '603 Freshen-Up 3 in 1 Carpet Cleaner - 5L	', 'CCCB603-01', '4', '', '', '?', '4', '', '-4'),
(74, NULL, '209 Happy Dish - 5L	', 'CHDB209-01', '5', '', '', '2', '3', '', '-3'),
(75, NULL, 'Magic Clean Foam Power	', 'CMP0000-01', '8', '', '', '?', '8', '', '-8'),
(76, NULL, 'Antiseptic Hand Wash  Melintex - 5L ', 'CHWB000-01', '3', '', '', '?', '3', '', '-3'),
(77, NULL, '308 Refreshing Apple - 5L	', 'CRAB308-01', '11', '', '', '8', '3', '', '-3'),
(78, NULL, '304 Heavenly Cool - 5L	', 'CHCB304-01', '1', '', '', '?', '1', '', '-1'),
(79, NULL, '402 Sani Pine - 5L	', 'CSPB402-01', '9', '', '', '3', '6', '', '-6'),
(80, NULL, '405 Sani Safe - 5L	', 'CSSB405-02', '2', '', '', '1', '1', '', '-1'),
(81, NULL, '405 Sani Safe - 500ml	', 'CSSS405-01', '10', '', '', '?', '10', '', '-10'),
(82, NULL, '903 Akron Shine	', 'CASB903-01', '2', '', '', '?', '2', '', '-2'),
(83, NULL, '703 Speedy Stainless Steel Polish - 500ml	', 'CSPS703-01', '8', '', '', '?', '8', '', '-8'),
(84, NULL, '202 Super D - 5L	', 'CSDB202-01', '7', '', '', '1', '6', '', '-6'),
(85, NULL, '406 Super Q - 5L	', 'CSQB406-01', '2', '', '', '?', '2', '', '-2'),
(86, NULL, 'Toilet Bowl Cleaner DUCK - 750 ml	', 'CBC0000-01', '6', '', '', '?', '6', '', '-6'),
(87, NULL, 'Toilet Bowl Cleaner - Vim	', 'CBC0000-01', '15', '', '', '?', '15', '', '-15'),
(88, NULL, '401 Turbo Bleach -5L	', 'CTBB401-01', '12', '', '', '1', '11', '', '-11'),
(89, NULL, '704 Z Water 12.5pH - 5L	', 'CZWB704-02', '3', '', '', '?', '3', '', '-3'),
(90, NULL, 'Thinner	CTN0000-01', '', '8', '', '', '?', '8', '', '-8'),
(91, NULL, 'Trash bag 19x19 0.015MM  24kg 50pkt/bag (white)', 'STBW19192', '67', '', '', '12', '55', '', '-55'),
(92, NULL, 'Trash bag 19x19 0.015mm  24kg 50pkt/bag (black) ', 'STBB19191', '4', '', '', '?', '4', '', '-4'),
(93, NULL, 'Trash bag 23x30 0.015mm  16kg 10pkt/bag (white)', 'STBW23301', '40', '', '', '15', '25', '', '-25'),
(94, NULL, 'Trash bag 36x48 0.03mm  18kg 10pkt/bag (black) ', 'STBB36481', '158', '', '', '48', '110', '', '-110'),
(95, NULL, 'Clinell Alcohol Free Wipes - 200 sheets	', 'SAW0000-01', '8', '', '', '?', '8', '', '-8'),
(96, NULL, 'JRT Jumbo Roll 100% Virgin Pulp 250m  12 rolls per ctn ', 'SJRT000-01', '73', '', '', '?', '73', '', '-73'),
(97, NULL, 'Toilet Roll 100% Virgin Pulp 2ply 10 rolls	', 'STR0000-01', '12', '', '', '?', '12', '', '-12'),
(98, NULL, 'Wiper Sheet - Dry	', 'SWD000D-01', '4', '', '', '?', '4', '', '-4'),
(99, NULL, 'Wiper Sheet - Wet	', 'SWD000W-02', '9', '', '', '?', '9', '', '-9'),
(100, NULL, 'M-Fold Hand Towel 100% Virgin Pulp 250s\' x 16pkts per ctn	', 'SMF0000-01', '160', '', '', '?', '160', '', '-160'),
(102, NULL, 'Finalround', 'FInal_round_93483943', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_allowance`
--

CREATE TABLE `kmac_allowance` (
  `allowance_id` int(50) NOT NULL,
  `basic` varchar(50) DEFAULT '0.00000',
  `allowance_name` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `status` int(50) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_allowance`
--

INSERT INTO `kmac_allowance` (`allowance_id`, `basic`, `allowance_name`, `amount`, `status`) VALUES
(1, '0.00000', 'Housing Allowance', '5000', 1),
(2, '0.00000', 'Transport Allowance', '7000', 1),
(3, '0.00000', 'Performance Allowance', '3000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_asset`
--

CREATE TABLE `kmac_asset` (
  `id` int(50) NOT NULL,
  `item_name` varchar(250) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `actual_qty` varchar(50) DEFAULT NULL,
  `uom` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `employee_id` int(20) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_asset`
--

INSERT INTO `kmac_asset` (`id`, `item_name`, `item_code`, `actual_qty`, `uom`, `image`, `employee_id`, `status`) VALUES
(9, 'Cotton', 'AST-00001', '100', 'Tonnes', 'asset_1658757596.jpg', 14, 1),
(10, 'Tank', 'AST-   10', '5000', 'pc', 'asset_1658757870.jpg', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_attendance`
--

CREATE TABLE `kmac_attendance` (
  `id` int(50) NOT NULL,
  `clock_in` varchar(50) DEFAULT NULL,
  `clock_out` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `employee_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_attendance`
--

INSERT INTO `kmac_attendance` (`id`, `clock_in`, `clock_out`, `date`, `employee_id`) VALUES
(18, NULL, 'time(\'hour-min-sec\')', 'date(\'m-d-Y\')', 28),
(19, 'time(\'hour-min-sec\')', 'time(\'hour-min-sec\')', 'date(\'m-d-Y\')', 28),
(20, 'time(\'hour-min-sec\')', 'time(\'hour-min-sec\')', 'date(\'m-d-Y\')', 28),
(21, 'time(\'hour-min-sec\')', 'time(\'hour-min-sec\')', 'date(\'m-d-Y\')', 28),
(22, 'time(\'hour-min-sec\')', 'time(\'hour-min-sec\')', 'date(\'m-d-Y\')', 28),
(23, 'time(\'hour-min-sec\')', NULL, 'date(\'m-d-Y\')', 28);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_category`
--

CREATE TABLE `kmac_category` (
  `cat_id` int(50) NOT NULL,
  `cat_name` varchar(250) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_category`
--

INSERT INTO `kmac_category` (`cat_id`, `cat_name`, `status`) VALUES
(1, 'Chemical ( C)', NULL),
(2, 'Equipment/Ex-stock (E )', NULL),
(3, 'Supplies (S)', NULL),
(4, 'Assets(A)', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_companies`
--

CREATE TABLE `kmac_companies` (
  `company_id` int(111) NOT NULL,
  `type_id` int(111) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `trading_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `registration_no` varchar(255) DEFAULT NULL,
  `government_tax` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country` int(111) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `default_currency` varchar(200) DEFAULT NULL,
  `default_timezone` varchar(200) DEFAULT NULL,
  `added_by` int(111) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_companies`
--

INSERT INTO `kmac_companies` (`company_id`, `type_id`, `name`, `trading_name`, `username`, `password`, `registration_no`, `government_tax`, `company_email`, `logo`, `contact_number`, `website_url`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `is_active`, `default_currency`, `default_timezone`, `added_by`, `created_at`) VALUES
(1, 1, 'SGM', 'SG Motor Link Pte Ltd', 'sgml', '', '201817226E', '201817226E', 'sales@sgml.com.sg', 'logo_1526958729.png', '65 6250 8527', 'sgml.com.sg', '15 Yishun Industrial Street 1 #01-08 Win 5', 'address 2', 'singapore', 'singapore', '768091', 195, 0, 'SGD - s$', 'Asia/Singapore', 1, '22-05-2018'),
(2, 2, 'TFL', 'HCL Private LImited', 'hcl', NULL, '123e1d52e', 'e4dd21d4s', 'hcl@mail.com.hcl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_timestamp()');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_departments`
--

CREATE TABLE `kmac_departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `cmp_id` int(50) NOT NULL DEFAULT 0,
  `location_id` int(50) NOT NULL DEFAULT 0,
  `emp_id` int(50) NOT NULL DEFAULT 0,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_departments`
--

INSERT INTO `kmac_departments` (`department_id`, `department_name`, `cmp_id`, `location_id`, `emp_id`, `added_by`, `created_at`, `status`) VALUES
(1, 'Sales', 1, 1, 0, 1, '2021-01-15 14:32:00', 1),
(2, 'Admin', 1, 1, 0, 1, '2021-01-15 14:32:06', 1),
(3, 'General Worker', 1, 1, 0, 2, '2021-01-15 17:19:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_designations`
--

CREATE TABLE `kmac_designations` (
  `designation_id` int(11) NOT NULL,
  `top_designation_id` int(11) NOT NULL DEFAULT 0,
  `department_id` int(200) NOT NULL,
  `sub_department_id` int(11) NOT NULL,
  `cmp_id` int(50) NOT NULL DEFAULT 0,
  `emp_id` int(50) NOT NULL DEFAULT 0,
  `designation_name` varchar(200) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_designations`
--

INSERT INTO `kmac_designations` (`designation_id`, `top_designation_id`, `department_id`, `sub_department_id`, `cmp_id`, `emp_id`, `designation_name`, `added_by`, `created_at`, `status`) VALUES
(1, 0, 2, 0, 1, 0, 'Admin', 1, '15-01-2021', 1),
(2, 0, 1, 0, 1, 0, 'Junior Sales', 1, '15-01-2021', 1),
(3, 0, 1, 0, 1, 0, 'Senior Sales', 2, '15-01-2021', 1),
(4, 0, 1, 0, 1, 0, 'Junior Assistance Broker', 2, '15-01-2021', 1),
(5, 0, 1, 0, 1, 0, 'Assistant Broker', 2, '15-01-2021', 1),
(6, 0, 1, 0, 1, 0, 'Broker', 2, '15-01-2021', 1),
(7, 0, 3, 0, 1, 0, 'General Worker', 2, '15-01-2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_employees`
--

CREATE TABLE `kmac_employees` (
  `employee_id` int(50) NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `emp_code` varchar(100) NOT NULL DEFAULT 'EMP-0001',
  `company_id` varchar(50) DEFAULT NULL,
  `date_of_joining` varchar(200) DEFAULT NULL,
  `emp_contact` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date_of_birth` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `user_role_id` varchar(100) DEFAULT NULL,
  `refer_by` varchar(250) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `zipcode` varchar(200) DEFAULT NULL,
  `designation_id` varchar(250) DEFAULT NULL,
  `department_id` varchar(250) DEFAULT NULL,
  `licence` varchar(250) DEFAULT NULL,
  `education` varchar(250) DEFAULT NULL,
  `vaccination` varchar(250) DEFAULT NULL,
  `wsq` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_employees`
--

INSERT INTO `kmac_employees` (`employee_id`, `first_name`, `last_name`, `emp_code`, `company_id`, `date_of_joining`, `emp_contact`, `username`, `email`, `date_of_birth`, `gender`, `user_role_id`, `refer_by`, `address`, `image`, `country`, `state`, `city`, `zipcode`, `designation_id`, `department_id`, `licence`, `education`, `vaccination`, `wsq`) VALUES
(1, 'Ong', 'Yan Kai', 'EMP00027', '1', '03/08/2022', '65 6250 8527', 'Ong Yan Kai', 'yankai@sgml.com.sg', '17/08/2022', 'Male', '1', NULL, 'Rose Cottage9 Garden Walk (Complex road name is Garden)Happy Valley Retirement Village75 Davis StreetNORWOOD SA 5067', 'emp_image_1659694609.png', 'Aruba', 'singapore', 'singapore', '768091', '1', '1', NULL, NULL, NULL, NULL),
(2, 'Goh', 'Keegan', 'EMP00027', '1', '01/08/2022', '65 6250 8527', 'Goh Keegan', 'keegan@sgml.com.sg', '24/08/2022', 'Female', '1', NULL, 'Rose Cottage9 Garden Walk (Complex road name is Garden)Happy Valley Retirement Village75 Davis StreetNORWOOD SA 5067', 'emp_image_1659715637.jpg', 'Turkey', 'singapore', 'singapore 123', '768091', '5', '2', NULL, NULL, NULL, NULL),
(3, 'Quek', 'Choon Sheong, Adrian', 'EMP00027', '1', '01/08/2022', '65 6250 8527', 'Quek Choon Sheong, Adrian', 'adrianquek@sgml.com.sg', '02/06/1965', 'Female', '1', NULL, 'Rose Cottage9 Garden Walk (Complex road name is Garden)Happy Valley Retirement Village75 Davis StreetNORWOOD SA 5067', 'emp_image_1659716196.jpg', 'Kiribati', 'singapore', 'singapore', '768091', '1', '1', NULL, NULL, NULL, NULL),
(7, 'Pang', 'Jun Xi', 'EMP-0001', '1', '2018-05-21', '65 6250 8527', 'benpang', 'ben@sgml.com.sg', '1986-01-02', 'Male', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(8, 'Goh', 'Liang Fen, Jessica', 'EMP-0001', '1', '2018-06-01', '65 6250 8527', 'jess', 'jessgoh@sgml.com.sg', '1987-11-26', 'Female', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(10, 'Fung', 'Han Xian, Jorrence', 'EMP-0001', '1', '2020-12-21', '65 6250 8527', 'jorrencefung', 'jorrence@sgml.com.sg', '1993-06-24', 'Male', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(11, 'Tan', 'Sheau Sheng, James', 'EMP-0001', '1', '2018-10-01', '65 6250 8527', 'james', 'james@sgml.com.sg', '1983-02-28', 'Male', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(12, 'Tan', 'Li Sen', 'EMP-0001', '1', '2020-12-15', '65 6250 8527', 'lisentan', 'lisen@sgml.com.sg', '1998-07-11', 'Male', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(14, 'Lee', 'Kee Jiun', 'EMP-0001', '1', '2018-08-01', '65 6250 8527', 'janelle', 'janelle@sgml.com.sg', '1997-10-21', 'Female', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(15, 'Siau', 'Qin Yee', 'EMP-0001', '1', '2020-11-01', '65 6250 8527', 'queenie', 'queenie@sgml.com.sg', '1995-07-25', 'Female', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(19, 'Tan', 'Jian Xiong', 'EMP-0001', '1', '2020-03-01', '65 6250 8527', 'jerrytan', 'jerry@sgml.com.sg', '1984-12-31', 'Male', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(22, 'jon', 'tan', 'EMP-0001', '1', '2021-06-02', '65 6250 8527', 'jtyh89', 'jtyh89@gmail.com', '1989-04-28', 'Male', '2', NULL, 'Rose Cottage\r\n9 Garden Walk (Complex road name is Garden)\r\nHappy Valley Retirement Village\r\n75 Davis Street\r\nNORWOOD SA 5067', NULL, NULL, '', '', '', '1', '2', NULL, NULL, NULL, NULL),
(25, 'Amir', 'ali', 'EMP00027', '1', '23/08/2022', '65 6250 8527', 'Amir ali', 'test123@gmail.com', '09/08/2022', 'Male', NULL, NULL, 'Rose Cottage9 Garden Walk (Complex road name is Garden)Happy Valley Retirement Village75 Davis StreetNORWOOD SA 5067', 'emp_image_1659694584.jpg', 'Aruba', NULL, NULL, NULL, '2', '1', NULL, NULL, NULL, NULL),
(26, 'Patricia', 'illusi', 'EMP00027', '1', '02/08/2022', '123-56565-6565', 'Patricia illusi', 'yankai@sgml.com.sg', '02/08/2022', 'Male', NULL, NULL, NULL, 'emp_image_1659716064.jpg', 'Aruba', 'medagascar', 'singapore', '9890-980', '1', '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_employee_terminations`
--

CREATE TABLE `kmac_employee_terminations` (
  `termination_id` int(50) NOT NULL,
  `company_id` int(50) DEFAULT NULL,
  `employee_terminated` varchar(250) DEFAULT NULL,
  `terminated_by` varchar(255) DEFAULT NULL,
  `termination_type_id` int(50) DEFAULT NULL,
  `termination_date` varchar(100) DEFAULT current_timestamp(),
  `notice_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(50) DEFAULT 1,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_employee_terminations`
--

INSERT INTO `kmac_employee_terminations` (`termination_id`, `company_id`, `employee_terminated`, `terminated_by`, `termination_type_id`, `termination_date`, `notice_date`, `description`, `status`, `attachment`, `created_at`) VALUES
(5, 1, 'Firoz masood', NULL, 1, NULL, NULL, NULL, 1, 'termination_1658924294.jpg', '2022-07-27 17:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_employee_warnings`
--

CREATE TABLE `kmac_employee_warnings` (
  `warning_id` int(50) NOT NULL,
  `company_id` varchar(100) DEFAULT NULL,
  `warning_to` varchar(100) DEFAULT NULL,
  `warning_by` varchar(100) DEFAULT NULL,
  `warning_date` varchar(255) DEFAULT NULL,
  `warning_type_id` varchar(100) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_allowance`
--

CREATE TABLE `kmac_emp_allowance` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `housing_allowance` int(100) DEFAULT NULL,
  `transport_allowance` int(100) DEFAULT NULL,
  `performance_allowance` int(200) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_emp_allowance`
--

INSERT INTO `kmac_emp_allowance` (`id`, `employee_id`, `housing_allowance`, `transport_allowance`, `performance_allowance`, `updated_at`) VALUES
(1, 'EMP0000001', 1, 1, 1, '2022-07-06 17:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_basic_salary`
--

CREATE TABLE `kmac_emp_basic_salary` (
  `salary_id` int(50) NOT NULL,
  `company_id` varchar(50) DEFAULT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `payroll_type` varchar(250) NOT NULL DEFAULT 'Monthly Payslip',
  `basic_salary` varchar(200) DEFAULT NULL,
  `net_salary` varchar(50) DEFAULT NULL,
  `housing_allowance` varchar(250) DEFAULT NULL,
  `transport_allowance` varchar(250) DEFAULT NULL,
  `performance_allowance` varchar(250) DEFAULT NULL,
  `incentives` varchar(250) DEFAULT NULL,
  `bonous` varchar(250) DEFAULT NULL,
  `tds` int(50) DEFAULT NULL,
  `esi` int(50) DEFAULT NULL,
  `pf` int(50) DEFAULT NULL,
  `lve` int(50) DEFAULT NULL,
  `fund` int(50) DEFAULT NULL,
  `others` int(50) DEFAULT NULL,
  `status` int(50) NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_emp_basic_salary`
--

INSERT INTO `kmac_emp_basic_salary` (`salary_id`, `company_id`, `employee_id`, `payroll_type`, `basic_salary`, `net_salary`, `housing_allowance`, `transport_allowance`, `performance_allowance`, `incentives`, `bonous`, `tds`, `esi`, `pf`, `lve`, `fund`, `others`, `status`, `updated_at`) VALUES
(13, 'Cpompany id', 'Employee name', 'Monthly Payslip', '7000', '8184', '10', '700', '30', '111', '333', 111, 30, 111, 111, 111, 90, 0, '2022-07-21 15:50:06'),
(14, 'SG Motor Link Pte Ltd', 'Ong 345 Yan Kai 678', 'Monthly Payslip', '100', '1699', '300', '333', '300', '333', '333', 333, 3333, 333, 333, 333, 333, 0, '2022-07-21 17:21:38'),
(15, 'HCL Private LImited', 'Amir ali', 'Monthly Payslip', '100', '2697', '111', '111', '111', '444', '555', 10, 20, 30, 40, 50, 70, 0, '2022-07-21 19:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_certificate_attained`
--

CREATE TABLE `kmac_emp_certificate_attained` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `licence` varchar(250) DEFAULT NULL,
  `education` varchar(250) DEFAULT NULL,
  `wsq` varchar(250) DEFAULT NULL,
  `vaccination` varchar(250) DEFAULT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_emp_certificate_attained`
--

INSERT INTO `kmac_emp_certificate_attained` (`id`, `employee_id`, `licence`, `education`, `wsq`, `vaccination`, `attachment`, `status`) VALUES
(1, NULL, 'LNC0001', NULL, NULL, NULL, NULL, 0),
(2, NULL, 'LNC-00002', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_deduction`
--

CREATE TABLE `kmac_emp_deduction` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(250) DEFAULT NULL,
  `tds` int(50) DEFAULT NULL,
  `esi` int(50) DEFAULT NULL,
  `pf` int(50) DEFAULT NULL,
  `leave` int(50) DEFAULT NULL,
  `fund` int(50) DEFAULT NULL,
  `others` int(50) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_edu_certificate`
--

CREATE TABLE `kmac_emp_edu_certificate` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `cft_number` varchar(100) DEFAULT NULL,
  `edu_certificate` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_licence`
--

CREATE TABLE `kmac_emp_licence` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `licence_no` varchar(250) DEFAULT NULL,
  `emp_licence` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_emp_licence`
--

INSERT INTO `kmac_emp_licence` (`id`, `employee_id`, `licence_no`, `emp_licence`, `status`) VALUES
(1, '4', 'LNC0001', 'licence_1659616900.jpg', 0),
(2, '10', 'LNC-00002', 'licence_1659617034.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_referal_column`
--

CREATE TABLE `kmac_emp_referal_column` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_emp_referal_column`
--

INSERT INTO `kmac_emp_referal_column` (`id`, `employee_id`, `attachment`, `status`) VALUES
(1, 'EMP-00001', 'referal_column_1658294799.jpg', 0),
(2, 'EMP-00001', 'referal_column_1658294830.jpg', 0),
(3, 'EMP-00001', 'referal_column_1658294863.jpg', 0),
(4, 'EMP-00001', 'referal_column_1658294871.jpg', 0),
(5, 'EMP-00001', 'referal_column_1658294883.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_renewal_date`
--

CREATE TABLE `kmac_emp_renewal_date` (
  `id` int(50) NOT NULL,
  `emp` varchar(100) DEFAULT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_vaccination`
--

CREATE TABLE `kmac_emp_vaccination` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `cft_number` varchar(200) DEFAULT NULL,
  `vaccination_certificate` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_emp_wsq_certificates`
--

CREATE TABLE `kmac_emp_wsq_certificates` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `cft_number` varchar(200) DEFAULT NULL,
  `wsq_certificate` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_inventory`
--

CREATE TABLE `kmac_inventory` (
  `id` int(50) NOT NULL,
  `inv_image` varchar(250) DEFAULT NULL,
  `item_name` varchar(250) DEFAULT NULL,
  `item_code` varchar(250) DEFAULT NULL,
  `inv_category_id` int(50) DEFAULT NULL,
  `qty_in` varchar(250) DEFAULT NULL,
  `cost_per_pcs` varchar(250) DEFAULT NULL,
  `total_cost` varchar(100) DEFAULT NULL,
  `qty_out` varchar(250) DEFAULT NULL,
  `on_hand_qty` varchar(250) DEFAULT NULL,
  `actual_qty` varchar(250) DEFAULT NULL,
  `uom` varchar(50) DEFAULT NULL,
  `adjustment` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_inventory`
--

INSERT INTO `kmac_inventory` (`id`, `inv_image`, `item_name`, `item_code`, `inv_category_id`, `qty_in`, `cost_per_pcs`, `total_cost`, `qty_out`, `on_hand_qty`, `actual_qty`, `uom`, `adjustment`, `status`, `date`) VALUES
(2, NULL, 'Broom Hard Head - Lidi (for compound area)	', 'SBL0000-03', 3, '2', '', '', '-', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(3, NULL, 'Broom Bamboo Hard c/w stick (for compound area)	', 'SBHS000-02', 3, '1', '', '', '-', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(4, NULL, 'Dustpan with Handle	', 'EDP000S-01', 2, '5', '', '', '-', '5', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(5, NULL, 'EZY Twin Bucker with Downpress Wringer	', 'ETB0000-04', 2, '1', '', '', '-', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(6, NULL, 'Flexi Clamp	', 'EFC0000-01', 2, '2', '', '', '-', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(7, NULL, 'Glomesh Scrubbing Pad 16\'\'- Blue	', 'ESPB016-02', 2, '5', '', '', '-', '5', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(8, NULL, 'Glomesh Scrubbing Pad 16\'\'- Peach	', 'ESPP016-03', 2, '11', '', '', '-', '11', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(9, NULL, 'Glove Latex - L	', 'SGLL000-01', 3, '4', '', '', '-', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(10, NULL, 'Glove Latex - XL', 'SGLXL00-01', 3, '2', '', '', '-', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(11, NULL, 'Leo Trolley Wheel - Front	', 'ETW000F-01', 2, '3', '', '', '-', '3', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(12, NULL, 'Leo Trolley Wheel - Rear	', 'ETW000R-02', 2, '3', '', '', '-', '3', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(13, NULL, 'Dust Mop  Luxury - 60cm (set) ', 'EDM000S-02', 2, '3', '', '', '1', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(14, NULL, 'Dust Mop  Luxury - 60cm (Refill) ', 'EDM000R-01', 2, '7', '', '', '-', '7', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(15, NULL, 'Magic/Melamine Sponge - pck	', 'SMS0000-02', 3, '10', '', '', '-', '10', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(16, NULL, 'Magic/Melamine Sponge - 1 pc/pkt (Big)	', 'SMS0000-03', 3, '13', '', '', '1', '12', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(17, NULL, 'Magic/Melamine Sponge - 1 pc/pkt (Small)	', 'SMS0000-01', 3, '10', '', '', '-', '10', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(18, NULL, 'Ultra33 Micro Fibre Cloth - Blue	', 'SMCB033-03', 3, '25', '', '', '9', '16', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(19, NULL, 'Ultra33 Micro Fibre Cloth - Green	', 'SMCG033-04', 3, '14', '', '', '13', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(20, NULL, 'Ultra33 Micro Fibre Cloth - Pink	', 'SMCP033-05', 3, '31', '', '', '8', '23', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(21, NULL, 'Ultra33 Micro Fibre Cloth - Yellow	', 'SMCY033-06', 3, '8', '', '', '6', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(22, NULL, 'Mop bucket w/ strainer - Round head	', 'EMB000R-05', 2, '1', '', '', '2', '-1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(23, NULL, 'Mop Bucket with Strainer - Rect	', 'EMB000R-06', 2, '5', '', '', '-', '5', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(24, NULL, 'Mop Head - Blue	', 'EMHB000-01', 2, '5', '', '', '1', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(25, NULL, 'Mop Head - Green	', 'EMHG000-02', 2, '6', '', '', '2', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(26, NULL, 'Mop Head (PRO) - Red	', 'EMHR000-03', 2, '1', '', '', '1', '?', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(27, NULL, 'Pail - Medium	', 'EPL000M-01', 2, '4', '', '', '1', '3', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(28, NULL, 'Pro Stick 150cm - Blue	', 'EPSB150-01', 2, '12', '', '', '4', '8', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(29, NULL, 'Replacement for Squeegee Trip - 105cm	', 'SRS0000-01', 3, '6', '', '', '-', '6', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(30, NULL, 'Dust Brush - Round	', 'EDB000R-01', 2, '2', '', '', '-', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(31, NULL, 'Glove Rubber (Industrial/Home Use)	', 'SGR0000-01', 3, '7', '', '', '2', '5', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(32, NULL, 'Scrub Sponge 7443- 6pcs/pack	', 'SSP0000-01', 3, '49', '', '', '7', '42', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(33, NULL, 'Wiper Stick  Super Magic ', 'SWT0000-01', 3, '1', '', '', '-', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(34, NULL, 'SuperVac Hose to connector D32mm	', 'EHC0032-02', 2, '4', '', '', '-', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(35, NULL, 'SuperValue Pads  microfiber pads 40cm ', 'SMP0040-03', 3, '5', '', '', '1', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(36, NULL, 'Toilet Bowl Brush - Black	', 'SBBB000-01', 3, '16', '', '', '-', '16', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(37, NULL, 'Toilet Floor Brush Head	', 'EFB0000-01', 2, '13', '', '', '-', '13', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(38, NULL, 'Toilet Hand Scrub Brush	', 'ESB0000-01', 2, '10', '', '', '-', '10', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(39, NULL, 'Tongs Metal 16\"	', 'ETM0016-01', 2, '10', '', '', '3', '7', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(40, NULL, 'Trash Folder	', 'ETF0000-01', 2, '5', '', '', '-', '5', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(41, NULL, 'TTS Microfiber Mop 40cm - Set	', 'EMM040S-01', 2, '1', '', '', '-', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(42, NULL, 'Ultra 88 Miracle Mirco Fibre Cloth - Blue	', 'SMCB088-01', 3, '13', '', '', '1', '12', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(43, NULL, 'Ultra 88 Miracle Mirco Fibre Cloth - Pink	', 'SMCP088-02', 3, '14', '', '', '1', '13', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(44, NULL, 'Vacuum Viper Dry Bag - DSU15L	', 'SVB0015-01', 3, '10', '', '', '-', '10', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(45, NULL, 'Vacuum Paper Bag Typhoon 105  5L  5pcs in pck	', 'SVB0005-01', 3, '5', '', '', '-', '5', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(46, NULL, 'Vacuum Paper Bag Bella Machine - 10L   10 pcs/pck	', 'SVB0010-01', 3, '39', '', '', '-', '39', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(47, NULL, 'Walex Decodorizing Urinal Screen (mango  spring fresh)	', 'SUS0000-01', 3, '70', '', '', '-', '70', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(48, NULL, 'Window Squeegee 35cm - Blue	', 'EWSB035-01', 2, '6', '', '', '-', '6', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(49, NULL, 'Window Squeegee (lambwool)	', 'EWSL0000-02', 2, '6', '', '', '1', '5', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(50, NULL, 'Window/Floor Scrapper  Aluminium handle	', 'ESP0000-01', 2, '2', '', '', '-', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(51, NULL, 'Ponchos1', ' SPC0000-0', NULL, '10', '', '', '-', '10', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(52, NULL, 'Stick (Broom   Floor Brush)	', 'EST0000-01', 2, '20', '', '', '2', '18', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(53, NULL, 'Biohazard Bag  HDPE Yellow - 18\" x 29\" 100 pcs ', 'SBB1829-01', 3, '4', '', '', '-', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(54, NULL, 'Safety Vest	ESV0000-01', '', NULL, '1', '', '', '-', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(55, NULL, 'Isolation Gown 40g  105 X 140cm - Blue 10 pcs ', 'SIG0000-02', 3, '19', '', '', '-', '19', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(56, NULL, 'Face Shield Full Lenght Benxon Disposable	', 'SFSF000-01', 3, '13', '', '', '-', '13', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(57, NULL, 'Mask N95  JFY - 20 pcs ', 'SM95000-02', 3, '9', '', '', '-', '9', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(58, NULL, 'Hair Cover Cap Non Woven - 100 pcs	', 'SHC0000-01', 3, '4', '', '', '-', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(59, NULL, 'Shoe Cover  Melintex - 100 pcs ', 'SSC0000-01', 3, '3', '', '', '-', '3', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(60, NULL, 'Facepiece Half - 3M	', 'FSH000-02', NULL, '3', '', '', '-', '3', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(61, NULL, 'Grown Disposable Coverall (L)	', 'SIG0000-03', 3, '15', '', '', '-', '15', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(62, NULL, 'Grown Disposable Coverall (XL)	', 'SIG0000-04', 3, '15', '', '', '-', '15', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(63, NULL, 'Caution Signage Board	', 'ECBY000-01', 2, '2', '', '', '2', '?', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(64, NULL, 'Empty Spray Bottle c/w Trigger Spray - 500ml	', 'EEBS000-01', 2, '15', '', '', '11', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(65, NULL, 'Extension Pole/Normal - 2.8m	', 'EEP0028-02', 2, '1', '', '', '-', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(66, NULL, 'Air Freshener - Lavender	', 'SAF0000-01', 3, '4', '', '', '-', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(67, NULL, '309 Alka Plus - 5L	', 'CAPB309-01', 1, '7', '', '', '1', '6', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(68, NULL, 'CIF Cream - White/Yellow 500 ml	', 'CCIF000-01', 1, '42', '', '', '6', '36', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(69, NULL, '701 Crystal Glass cleaner - 5L	', 'CGCB701-01', 1, '5', '', '', '1', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(70, NULL, '404 Double Safe Sanitizer - 5L	', 'CDSB404-02', 1, '9', '', '', '3', '6', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(71, NULL, '103 Gentle Floral Hand Soap - 5L', 'CHSB103-01', 1, '4', '15', '825', '4', '?', '55', '55', NULL, NULL, '2022-08-03 19:01:10'),
(72, NULL, '603 Freshen-Up 3 in 1 Carpet Cleaner - 5L	', 'CCCB603-01', 1, '4', '', '', '-', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(73, NULL, '209 Happy Dish - 5L	', 'CHDB209-01', 1, '5', '', '', '2', '3', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(74, NULL, 'Magic Clean Foam Power	', 'CMP0000-01', 1, '8', '', '', '-', '8', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(75, NULL, 'Antiseptic Hand Wash  Melintex - 5L ', 'CHWB000-01', 1, '3', '', '', '-', '3', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(76, NULL, '308 Refreshing Apple - 5L', 'CRAB308-01', 1, '11', '34', '680', '8', '3', '20', '34', NULL, NULL, '2022-08-03 19:01:10'),
(77, NULL, '304 Heavenly Cool - 5L	', 'CHCB304-01', 1, '1', '', '', '-', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(78, NULL, '402 Sani Pine - 5L	', 'CSPB402-01', 1, '9', '', '', '3', '6', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(79, NULL, '405 Sani Safe - 5L	', 'CSSB405-02', 1, '2', '', '', '1', '1', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(80, NULL, '405 Sani Safe - 500ml	', 'CSSS405-01', 1, '10', '', '', '-', '10', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(81, NULL, '903 Akron Shine	', 'CASB903-01', 1, '2', '', '', '-', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(82, NULL, '703 Speedy Stainless Steel Polish - 500ml	', 'CSPS703-01', 1, '8', '', '', '-', '8', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(83, NULL, '202 Super D - 5L', 'CSDB202-01', 1, '7', '15', '675', '1', '6', '45', '234', NULL, NULL, '2022-08-03 19:01:10'),
(84, NULL, '406 Super Q - 5L	', 'CSQB406-01', 1, '2', '', '', '-', '2', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(85, NULL, 'Toilet Bowl Cleaner DUCK - 750 ml	', 'CBC0000-01', 1, '6', '', '', '-', '6', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(86, NULL, 'Toilet Bowl Cleaner - Vim	', 'CBC0000-01', 1, '15', '', '', '-', '15', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(87, NULL, '401 Turbo Bleach -5L	', 'CTBB401-01', 1, '12', '', '', '1', '11', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(88, NULL, '704 Z Water 12.5pH - 5L	', 'CZWB704-02', 1, '3', '', '', '-', '3', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(89, NULL, 'Thinner	CTN0000-01', '', NULL, '8', '', '', '-', '8', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(90, NULL, 'Trash bag 19x19 0.015MM  24kg 50pkt/bag (white)', 'STBW19192', 3, '67', '', '', '12', '55', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(91, NULL, 'Trash bag 19x19 0.015mm  24kg 50pkt/bag (black) ', 'STBB19191', 3, '4', '', '', '-', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(92, NULL, 'Trash bag 23x30 0.015mm  16kg 10pkt/bag (white)', 'STBW23301', 3, '40', '', '', '15', '25', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(93, NULL, 'Trash bag 36x48 0.03mm  18kg 10pkt/bag (black) ', 'STBB36481', 3, '158', '', '', '48', '110', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(94, NULL, 'Clinell Alcohol Free Wipes - 200 sheets	', 'SAW0000-01', 3, '8', '', '', '-', '8', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(95, NULL, 'JRT Jumbo Roll 100% Virgin Pulp 250m  12 rolls per ctn ', 'SJRT000-01', 3, '73', '', '', '-', '73', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(96, NULL, 'Toilet Roll 100% Virgin Pulp 2ply 10 rolls	', 'STR0000-01', 3, '12', '', '', '-', '12', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(97, NULL, 'Wiper Sheet - Dry	', 'SWD000D-01', 3, '4', '', '', '-', '4', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(98, NULL, 'Wiper Sheet - Wet	', 'SWD000W-02', 3, '9', '', '', '-', '9', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(99, NULL, 'M-Fold Hand Towel 100% Virgin Pulp 250s\' x 16pkts per ctn	', 'SMF0000-01', 3, '160', '', '', '-', '160', '', NULL, NULL, NULL, '2022-08-03 19:01:10'),
(100, NULL, 'Finalround', 'FInal_round_93483943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-03 19:01:10'),
(101, 'inventory_1659935120.jpg', 'name', 'CHE-  101', 1, NULL, '10.23', '0', NULL, NULL, NULL, 'PKG', NULL, 1, '2022-08-08 10:35:20'),
(102, 'inventory_1659935160.jpg', 'Chemical name', 'CHE-  102', 1, '1', '2', '2', NULL, NULL, '1', '3', NULL, 1, '2022-08-08 10:36:00'),
(103, 'inventory_1659935487.jpg', 'Chemical name', 'SUP-  103', 3, '1', '2', '2', NULL, NULL, '1', '3', NULL, 0, '2022-08-08 10:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_jobs_category`
--

CREATE TABLE `kmac_jobs_category` (
  `jobs_id` int(50) NOT NULL,
  `employee_id` int(50) NOT NULL DEFAULT 0,
  `job_name` varchar(250) DEFAULT NULL,
  `job_description` varchar(250) DEFAULT NULL,
  `job_type` varchar(100) DEFAULT NULL,
  `status` int(50) DEFAULT 0,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_job_application`
--

CREATE TABLE `kmac_job_application` (
  `id` int(50) NOT NULL,
  `job_id` int(50) DEFAULT NULL,
  `app_name` varchar(250) DEFAULT NULL,
  `app_email` varchar(50) DEFAULT NULL,
  `app_mobile` varchar(50) DEFAULT NULL,
  `app_dob` varchar(100) DEFAULT NULL,
  `app_cv` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_joining_bonus`
--

CREATE TABLE `kmac_joining_bonus` (
  `id` int(50) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `joining_bonus` varchar(50) DEFAULT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_leave_applications`
--

CREATE TABLE `kmac_leave_applications` (
  `leave_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `employee_id` varchar(222) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `leave_type_id` int(222) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `applied_on` date DEFAULT current_timestamp(),
  `reason` mediumtext DEFAULT NULL,
  `remarks` mediumtext DEFAULT NULL,
  `status_id` varchar(10) NOT NULL DEFAULT '2',
  `is_half_day` tinyint(1) DEFAULT NULL,
  `is_notify` int(11) DEFAULT NULL,
  `period` varchar(200) DEFAULT NULL,
  `leave_attachment` varchar(255) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_leave_applications`
--

INSERT INTO `kmac_leave_applications` (`leave_id`, `company_id`, `employee_id`, `department_id`, `leave_type_id`, `from_date`, `to_date`, `applied_on`, `reason`, `remarks`, `status_id`, `is_half_day`, `is_notify`, `period`, `leave_attachment`, `created_at`) VALUES
(38, 1, '172', NULL, 4, '2022-07-02', '2022-07-10', '2022-07-27', NULL, NULL, '3', NULL, NULL, '8 Days', 'Leave_1658921571.jpg', '2022-07-27 17:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_leave_status`
--

CREATE TABLE `kmac_leave_status` (
  `id` int(50) NOT NULL,
  `status_id` int(10) DEFAULT NULL,
  `status_name` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_leave_status`
--

INSERT INTO `kmac_leave_status` (`id`, `status_id`, `status_name`, `date`) VALUES
(1, 1, 'Aprooved', '0000-00-00 00:00:00'),
(2, 2, 'Pending', '2022-07-01 18:15:55'),
(3, 3, 'Declined', '2022-07-01 18:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_leave_type`
--

CREATE TABLE `kmac_leave_type` (
  `leave_type_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `is_paid` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_leave_type`
--

INSERT INTO `kmac_leave_type` (`leave_type_id`, `company_id`, `type_name`, `is_paid`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Unpaid Leave', 0, 1, '2021-01-13 09:34:31', NULL),
(3, 0, 'Adoption Leave', 1, 1, '2021-01-13 09:34:31', NULL),
(4, 0, 'Annual Leave', 1, 1, '2021-01-13 09:34:31', NULL),
(6, 0, 'Childcare Leave', 1, 1, '2021-01-13 09:34:31', NULL),
(7, 0, 'Maternity Leave', 1, 1, '2021-01-13 09:34:31', NULL),
(8, 0, 'Paternity Leave', 1, 1, '2021-01-13 09:34:31', NULL),
(9, 0, 'Shared Parental Leave', 1, 1, '2021-01-13 09:34:31', NULL),
(10, 0, 'Sick Leave', 1, 1, '2021-01-13 09:34:31', NULL),
(11, 0, 'Unpaid Infant Care Leave', 0, 1, '2021-01-13 09:34:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_mc_submittion`
--

CREATE TABLE `kmac_mc_submittion` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(100) DEFAULT NULL,
  `pdf` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kmac_status`
--

CREATE TABLE `kmac_status` (
  `status_id` int(50) NOT NULL,
  `status_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_status`
--

INSERT INTO `kmac_status` (`status_id`, `status_name`) VALUES
(1, 'completed'),
(2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_tasks`
--

CREATE TABLE `kmac_tasks` (
  `id` int(50) NOT NULL,
  `employee_id` int(50) DEFAULT NULL,
  `task_name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `booking_date` date NOT NULL DEFAULT current_timestamp(),
  `last_date` date NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(50) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `commission` varchar(100) DEFAULT NULL,
  `total_amount` varchar(100) DEFAULT NULL,
  `status` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmac_tasks`
--

INSERT INTO `kmac_tasks` (`id`, `employee_id`, `task_name`, `description`, `cost`, `booking_date`, `last_date`, `customer_id`, `amount`, `commission`, `total_amount`, `status`) VALUES
(1, 14, 'House Cleaning', '\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', '50', '2022-08-01', '2022-08-31', 7, '55.00', '10.00', '55.235', 2),
(2, 15, 'Office Cleaning', '\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', '100', '2022-08-03', '2022-08-03', 7, '550', '200', '235', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kmac_termination_type`
--

CREATE TABLE `kmac_termination_type` (
  `termination_type_id` int(111) NOT NULL,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_termination_type`
--

INSERT INTO `kmac_termination_type` (`termination_type_id`, `company_id`, `type`, `created_at`) VALUES
(1, 1, 'Voluntary Termination', '22-03-2018 01:38:41'),
(14, 2, 'type2 termination', ''),
(15, 2, 'type three termination', '');

-- --------------------------------------------------------

--
-- Table structure for table `kmac_warning_type`
--

CREATE TABLE `kmac_warning_type` (
  `warning_type_id` int(111) NOT NULL,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kmac_warning_type`
--

INSERT INTO `kmac_warning_type` (`warning_type_id`, `company_id`, `type`, `created_at`) VALUES
(1, 1, 'First Written Warning', '22-03-2018 01:38:02'),
(2, 2, 'Second Warning', ''),
(3, 3, 'Third Warning', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_30_184125_create_admins_table', 2),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(9, '2016_06_01_000004_create_oauth_clients_table', 3),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'bKageS3OhEMAMLG3I34bQ3hOUZOojDKlbyVJkVYl', NULL, 'http://localhost', 1, 0, 0, '2022-07-31 08:17:38', '2022-07-31 08:17:38'),
(2, NULL, 'Laravel Password Grant Client', 'T5Hzfsdd5YX3boA9vEXn5SNbxmstrn1MPuJQV4YS', 'users', 'http://localhost', 0, 1, 0, '2022-07-31 08:17:38', '2022-07-31 08:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-31 08:17:38', '2022-07-31 08:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 17, 'myApp', '579846e0ba5ce81ba4a1c52da8cbff344d63292d541376af846f1c3f71dfafff', '[\"*\"]', NULL, '2022-08-03 02:03:06', '2022-08-03 02:03:06'),
(2, 'App\\Models\\User', 18, 'myApp', '66f4b4f2fab398fbd05f193422bd03388db791d4f368ddf257c2ed63a4fb4012', '[\"*\"]', NULL, '2022-08-03 02:03:47', '2022-08-03 02:03:47'),
(3, 'App\\Models\\User', 19, 'myApp', 'f9660da35fb77e13df3bb9e23f1389908d0d650d15d63e1c90656ede516037a8', '[\"*\"]', NULL, '2022-08-03 02:04:23', '2022-08-03 02:04:23'),
(4, 'App\\Models\\User', 20, 'myApp', '45c53bbe867ba87dc0695019f02d8a8aec2d64c08408fa276e4ae23c75a14b8b', '[\"*\"]', NULL, '2022-08-03 02:06:16', '2022-08-03 02:06:16'),
(5, 'App\\Models\\User', 21, 'myApp', '9ff925a392671d4a4428ec0e7e93b22636c49ebe8891ae6ca7cd70bede369707', '[\"*\"]', NULL, '2022-08-03 02:06:41', '2022-08-03 02:06:41'),
(6, 'App\\Models\\User', 22, 'myApp', 'edce151848f958b2d4cfe5f42c75174ca2be77da5c95eb20764da8ad2efa9448', '[\"*\"]', NULL, '2022-08-03 02:09:59', '2022-08-03 02:09:59'),
(7, 'App\\Models\\User', 23, 'myApp', 'aab6965cf408d30746aeaaea20ca613537d6f372f9713ef88808d2946780d9f6', '[\"*\"]', NULL, '2022-08-03 02:10:36', '2022-08-03 02:10:36'),
(8, 'App\\Models\\User', 24, 'myApp', '81e522f90c4eedadf8d7e77b8d68bfdf3229bc1bc12b527e38fe6034e04bd2d2', '[\"*\"]', NULL, '2022-08-03 02:12:23', '2022-08-03 02:12:23'),
(9, 'App\\Models\\User', 25, 'myApp', 'dcefb263dc13235912c5b2de2754cf76ed2812fbc4d71033a21e305cf95f9e99', '[\"*\"]', NULL, '2022-08-03 02:12:42', '2022-08-03 02:12:42'),
(10, 'App\\Models\\User', 26, 'myApp', 'f96b19f2b26b1461680ccfdb6a1cf544b817928f88d219199a57327120c6699c', '[\"*\"]', NULL, '2022-08-03 02:13:14', '2022-08-03 02:13:14'),
(11, 'App\\Models\\User', 27, 'myApp', 'a4b86822e7409313cb77269e1eebcd9975714cb42987596b8656b99a78fd86a1', '[\"*\"]', NULL, '2022-08-03 02:20:16', '2022-08-03 02:20:16'),
(12, 'App\\Models\\User', 28, 'myApp', 'f757b6c459f4382e5a2a4a4a635c798ffe2fb7175f70e0c8ef1ad077c082c759', '[\"*\"]', NULL, '2022-08-03 02:35:00', '2022-08-03 02:35:00'),
(13, 'App\\Models\\User', 28, 'MyApp', 'd6039b674faac1604278a5c0f302f0fd5ac1a8a76eafa4588ab684a90201045b', '[\"*\"]', NULL, '2022-08-03 02:37:16', '2022-08-03 02:37:16'),
(14, 'App\\Models\\User', 28, 'MyApp', '8b7fa5622a98213101083a524852ff9e0bc7f732e84770aecb585d54e21f79de', '[\"*\"]', NULL, '2022-08-03 02:37:35', '2022-08-03 02:37:35'),
(15, 'App\\Models\\User', 28, 'MyApp', 'e4fa8779dc0dc0c0ddf070710d03cc9c16f7a6caedcdd29f232aa24c06b1b614', '[\"*\"]', NULL, '2022-08-03 08:20:27', '2022-08-03 08:20:27'),
(16, 'App\\Models\\User', 29, 'myApp', '0cb77c7c98bd2dd2fb8c19ea10fd3b4fba0fe653be0000569d6b44e9b1178049', '[\"*\"]', NULL, '2022-08-08 02:02:20', '2022-08-08 02:02:20'),
(17, 'App\\Models\\User', 30, 'myApp', '36d0cd49577269f888d56d6a7c56f4746499d3c464120ac765871dfd47f47ff7', '[\"*\"]', NULL, '2022-08-08 02:03:55', '2022-08-08 02:03:55'),
(18, 'App\\Models\\User', 31, 'myApp', 'e1dbcab880808089112ec396e09ef3b4f17592e88531a9c4f01100927c8ea885', '[\"*\"]', NULL, '2022-08-08 02:26:45', '2022-08-08 02:26:45'),
(19, 'App\\Models\\User', 32, 'myApp', '431bd16ba9331c5aed11359582bb344bec14bc74833a0a846f2c49f4376db198', '[\"*\"]', NULL, '2022-08-08 02:27:47', '2022-08-08 02:27:47'),
(20, 'App\\Models\\User', 33, 'myApp', '513282e94f4a85728f0d1eeafcf713e6e4be76b6c08cb98139d2ea84090e128a', '[\"*\"]', NULL, '2022-08-08 02:28:49', '2022-08-08 02:28:49'),
(21, 'App\\Models\\User', 34, 'myApp', '70007e84f97d5d5445a74b5ec2bc23abbc934461b3b29886ae1b40110b61ca36', '[\"*\"]', NULL, '2022-08-08 02:30:49', '2022-08-08 02:30:49'),
(22, 'App\\Models\\User', 35, 'myApp', '518177cb5d531514519c9afcd9a05ba2583019965da378d44b1df750d20775a5', '[\"*\"]', NULL, '2022-08-08 02:33:09', '2022-08-08 02:33:09'),
(23, 'App\\Models\\User', 36, 'myApp', '22a48100be578331076318920301cf3e6abcab4ea92627c4e89c9dd6ccb14176', '[\"*\"]', NULL, '2022-08-08 02:38:54', '2022-08-08 02:38:54'),
(24, 'App\\Models\\User', 37, 'myApp', '049da04ff427043da8da568b773248717b616f19930b437c80c34ac8fc14a8e8', '[\"*\"]', NULL, '2022-08-08 02:40:40', '2022-08-08 02:40:40'),
(25, 'App\\Models\\User', 38, 'myApp', '5001046211a138544c1901ce9861369cf91b418ce6d1a7cad5ad7fe689099889', '[\"*\"]', NULL, '2022-08-08 02:45:12', '2022-08-08 02:45:12'),
(26, 'App\\Models\\User', 39, 'myApp', '9b44b2c888ba46ca7016428ec10586676ae173cf371a08641742b38688f9357f', '[\"*\"]', NULL, '2022-08-08 02:46:13', '2022-08-08 02:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `xin_cpf_options`
--

CREATE TABLE `xin_cpf_options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(45) DEFAULT NULL,
  `option_value` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xin_cpf_options`
--

INSERT INTO `xin_cpf_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'ordinary_wage_cap', '6000', '2021-01-13 09:34:31', NULL),
(2, 'emp_upto_age', '55', '2021-01-13 09:34:31', NULL),
(3, 'emp_above_age', '65', '2021-01-13 09:34:31', NULL),
(13, 'aloted_payment', '100', '2022-07-29 09:29:00', NULL),
(14, 'admin_duty', '2345', '2022-07-29 09:30:05', NULL),
(15, 'wer', 'wewew', '2022-07-29 09:46:22', NULL),
(16, 'admin', '78900', '2022-07-29 09:48:07', NULL),
(17, 'history', '100', '2022-07-29 10:11:34', NULL),
(18, 'Firoz masood', '2323232', '2022-07-30 20:17:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xin_cpf_payslip`
--

CREATE TABLE `xin_cpf_payslip` (
  `id` int(11) NOT NULL,
  `payslip_id` int(11) NOT NULL,
  `month_year` date NOT NULL,
  `ow_paid` decimal(13,4) NOT NULL,
  `ow_cpf` decimal(13,4) NOT NULL,
  `ow_cpf_employer` decimal(13,4) NOT NULL,
  `ow_cpf_employee` decimal(13,4) DEFAULT NULL,
  `aw_paid` decimal(13,4) DEFAULT NULL,
  `aw_cpf` decimal(13,4) DEFAULT NULL,
  `aw_cpf_employer` decimal(13,4) DEFAULT NULL,
  `aw_cpf_employee` decimal(13,4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xin_cpf_payslip`
--

INSERT INTO `xin_cpf_payslip` (`id`, `payslip_id`, `month_year`, `ow_paid`, `ow_cpf`, `ow_cpf_employer`, `ow_cpf_employee`, `aw_paid`, `aw_cpf`, `aw_cpf_employer`, `aw_cpf_employee`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-01', '1000.0000', '1000.0000', '170.0000', '200.0000', '0.0000', '0.0000', '0.0000', '0.0000', '2021-01-15 07:00:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xin_cpf_percentage`
--

CREATE TABLE `xin_cpf_percentage` (
  `id` int(11) NOT NULL,
  `immigration_status` int(11) NOT NULL,
  `immigration_status_year` int(11) DEFAULT NULL,
  `employee_age_from` int(11) DEFAULT NULL,
  `employee_age_to` int(11) DEFAULT NULL,
  `contribution_employer` float NOT NULL,
  `contribution_employee` float NOT NULL,
  `total_cpf` float NOT NULL,
  `effective_from` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xin_cpf_percentage`
--

INSERT INTO `xin_cpf_percentage` (`id`, `immigration_status`, `immigration_status_year`, `employee_age_from`, `employee_age_to`, `contribution_employer`, `contribution_employee`, `total_cpf`, `effective_from`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 55, 17, 20, 37, '2016-01-01', 1, '2021-01-13 09:34:31', '2020-09-03 15:27:05'),
(2, 1, NULL, 55, 60, 13, 13, 26, '2016-01-01', 1, '2021-01-13 09:34:31', '2020-09-03 15:27:05'),
(3, 1, NULL, 60, 65, 9, 7.5, 16.5, '2016-01-01', 1, '2021-01-13 09:34:31', '2020-09-03 15:27:05'),
(4, 1, NULL, 65, NULL, 7.5, 5, 12.5, '2016-01-01', 1, '2021-01-13 09:34:31', '2020-09-03 15:27:05'),
(5, 2, 1, NULL, 55, 4, 5, 9, '2016-01-01', 1, '2021-01-13 09:34:31', NULL),
(6, 2, 1, 55, 60, 4, 5, 9, '2016-01-01', 1, '2021-01-13 09:34:31', NULL),
(7, 2, 1, 60, 65, 3.5, 5, 8.5, '2016-01-01', 1, '2021-01-13 09:34:31', NULL),
(8, 2, 1, 65, NULL, 3.5, 5, 8.5, '2016-01-01', 1, '2021-01-13 09:34:31', NULL),
(9, 2, 2, NULL, 55, 9, 15, 24, '2016-01-01', 1, '2021-01-13 09:34:31', NULL),
(10, 2, 2, 55, 60, 6, 12.5, 18.5, '2016-01-01', 1, '2021-01-13 09:34:31', NULL),
(11, 2, 2, 60, 65, 3.5, 7.5, 11, '2016-01-01', 1, '2021-01-13 09:34:31', NULL),
(12, 2, 2, 65, NULL, 3.5, 5, 8.5, '2016-01-01', 1, '2021-01-13 09:34:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xin_cpf_submission`
--

CREATE TABLE `xin_cpf_submission` (
  `id` int(11) NOT NULL,
  `csn` varchar(45) NOT NULL,
  `month_year` date NOT NULL,
  `no_employees` int(11) NOT NULL,
  `no_records` int(11) NOT NULL,
  `cpf_contribution_amount` decimal(10,2) NOT NULL,
  `other_contribution` decimal(10,2) NOT NULL,
  `total_contribution_amount` decimal(13,2) NOT NULL,
  `cpf_file` varchar(128) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_payslip_allowances`
--

CREATE TABLE `xin_salary_payslip_allowances` (
  `payslip_allowances_id` int(50) NOT NULL,
  `payslip_id` int(100) DEFAULT NULL,
  `employee_id` int(100) DEFAULT NULL,
  `allowance_title` varchar(200) DEFAULT NULL,
  `allowance_amount` varchar(200) DEFAULT NULL,
  `salary_month` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `kmac_allowance`
--
ALTER TABLE `kmac_allowance`
  ADD PRIMARY KEY (`allowance_id`);

--
-- Indexes for table `kmac_asset`
--
ALTER TABLE `kmac_asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_attendance`
--
ALTER TABLE `kmac_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_category`
--
ALTER TABLE `kmac_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `kmac_companies`
--
ALTER TABLE `kmac_companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `kmac_departments`
--
ALTER TABLE `kmac_departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `kmac_designations`
--
ALTER TABLE `kmac_designations`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `kmac_employees`
--
ALTER TABLE `kmac_employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `kmac_employee_terminations`
--
ALTER TABLE `kmac_employee_terminations`
  ADD PRIMARY KEY (`termination_id`);

--
-- Indexes for table `kmac_employee_warnings`
--
ALTER TABLE `kmac_employee_warnings`
  ADD PRIMARY KEY (`warning_id`);

--
-- Indexes for table `kmac_emp_allowance`
--
ALTER TABLE `kmac_emp_allowance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_emp_basic_salary`
--
ALTER TABLE `kmac_emp_basic_salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `kmac_emp_certificate_attained`
--
ALTER TABLE `kmac_emp_certificate_attained`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kmac_emp_deduction`
--
ALTER TABLE `kmac_emp_deduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_emp_edu_certificate`
--
ALTER TABLE `kmac_emp_edu_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kmac_emp_licence`
--
ALTER TABLE `kmac_emp_licence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kmac_emp_referal_column`
--
ALTER TABLE `kmac_emp_referal_column`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kmac_emp_renewal_date`
--
ALTER TABLE `kmac_emp_renewal_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kmac_emp_vaccination`
--
ALTER TABLE `kmac_emp_vaccination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kmac_emp_wsq_certificates`
--
ALTER TABLE `kmac_emp_wsq_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kmac_inventory`
--
ALTER TABLE `kmac_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_jobs_category`
--
ALTER TABLE `kmac_jobs_category`
  ADD PRIMARY KEY (`jobs_id`);

--
-- Indexes for table `kmac_job_application`
--
ALTER TABLE `kmac_job_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_joining_bonus`
--
ALTER TABLE `kmac_joining_bonus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `kmac_leave_applications`
--
ALTER TABLE `kmac_leave_applications`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `kmac_leave_status`
--
ALTER TABLE `kmac_leave_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_leave_type`
--
ALTER TABLE `kmac_leave_type`
  ADD PRIMARY KEY (`leave_type_id`);

--
-- Indexes for table `kmac_mc_submittion`
--
ALTER TABLE `kmac_mc_submittion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_status`
--
ALTER TABLE `kmac_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `kmac_tasks`
--
ALTER TABLE `kmac_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmac_termination_type`
--
ALTER TABLE `kmac_termination_type`
  ADD PRIMARY KEY (`termination_type_id`);

--
-- Indexes for table `kmac_warning_type`
--
ALTER TABLE `kmac_warning_type`
  ADD PRIMARY KEY (`warning_type_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `xin_cpf_options`
--
ALTER TABLE `xin_cpf_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xin_cpf_payslip`
--
ALTER TABLE `xin_cpf_payslip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xin_cpf_percentage`
--
ALTER TABLE `xin_cpf_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xin_cpf_submission`
--
ALTER TABLE `xin_cpf_submission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xin_salary_payslip_allowances`
--
ALTER TABLE `xin_salary_payslip_allowances`
  ADD PRIMARY KEY (`payslip_allowances_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `employee_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kmac_allowance`
--
ALTER TABLE `kmac_allowance`
  MODIFY `allowance_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kmac_asset`
--
ALTER TABLE `kmac_asset`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kmac_attendance`
--
ALTER TABLE `kmac_attendance`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kmac_category`
--
ALTER TABLE `kmac_category`
  MODIFY `cat_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kmac_companies`
--
ALTER TABLE `kmac_companies`
  MODIFY `company_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `kmac_departments`
--
ALTER TABLE `kmac_departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kmac_designations`
--
ALTER TABLE `kmac_designations`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kmac_employees`
--
ALTER TABLE `kmac_employees`
  MODIFY `employee_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kmac_employee_terminations`
--
ALTER TABLE `kmac_employee_terminations`
  MODIFY `termination_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kmac_employee_warnings`
--
ALTER TABLE `kmac_employee_warnings`
  MODIFY `warning_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kmac_emp_allowance`
--
ALTER TABLE `kmac_emp_allowance`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kmac_emp_basic_salary`
--
ALTER TABLE `kmac_emp_basic_salary`
  MODIFY `salary_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kmac_emp_certificate_attained`
--
ALTER TABLE `kmac_emp_certificate_attained`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kmac_emp_deduction`
--
ALTER TABLE `kmac_emp_deduction`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmac_emp_edu_certificate`
--
ALTER TABLE `kmac_emp_edu_certificate`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmac_emp_licence`
--
ALTER TABLE `kmac_emp_licence`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kmac_emp_referal_column`
--
ALTER TABLE `kmac_emp_referal_column`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kmac_emp_renewal_date`
--
ALTER TABLE `kmac_emp_renewal_date`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmac_emp_vaccination`
--
ALTER TABLE `kmac_emp_vaccination`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmac_emp_wsq_certificates`
--
ALTER TABLE `kmac_emp_wsq_certificates`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmac_inventory`
--
ALTER TABLE `kmac_inventory`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `kmac_jobs_category`
--
ALTER TABLE `kmac_jobs_category`
  MODIFY `jobs_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmac_job_application`
--
ALTER TABLE `kmac_job_application`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmac_joining_bonus`
--
ALTER TABLE `kmac_joining_bonus`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmac_leave_applications`
--
ALTER TABLE `kmac_leave_applications`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `kmac_leave_status`
--
ALTER TABLE `kmac_leave_status`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kmac_leave_type`
--
ALTER TABLE `kmac_leave_type`
  MODIFY `leave_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kmac_mc_submittion`
--
ALTER TABLE `kmac_mc_submittion`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kmac_status`
--
ALTER TABLE `kmac_status`
  MODIFY `status_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kmac_tasks`
--
ALTER TABLE `kmac_tasks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kmac_termination_type`
--
ALTER TABLE `kmac_termination_type`
  MODIFY `termination_type_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kmac_warning_type`
--
ALTER TABLE `kmac_warning_type`
  MODIFY `warning_type_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `xin_cpf_options`
--
ALTER TABLE `xin_cpf_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `xin_cpf_payslip`
--
ALTER TABLE `xin_cpf_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xin_cpf_percentage`
--
ALTER TABLE `xin_cpf_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `xin_cpf_submission`
--
ALTER TABLE `xin_cpf_submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xin_salary_payslip_allowances`
--
ALTER TABLE `xin_salary_payslip_allowances`
  MODIFY `payslip_allowances_id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
