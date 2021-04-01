-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 08:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$NQRWaq3kU16qp/TUjvzXU.0D2NsZYuWiFgjxuMSzSNl19bjAxOoum', 'israthjahansub96@gmail.com', 1, '2020-03-05 17:51:00', '2020-03-27 18:48:18'),
(2, 'abc', '123456789', 'a@b.com', 0, '2020-07-29 18:38:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(8, 'Entertainment', 'News related all sorts of entertainment', '2020-03-23 15:43:20', '2020-03-27 18:53:03', 1),
(9, 'Sports', 'News Related to sports', '2020-03-27 18:51:42', '0000-00-00 00:00:00', 1),
(10, 'Business', 'News related to business sector', '2020-03-27 18:52:05', '0000-00-00 00:00:00', 1),
(11, 'Politics', 'News related to  politics', '2020-03-27 18:52:17', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, '12', 'Dipa', 'dipa0095@yahoo.com', 'Good to know', '2020-03-23 15:56:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal Project and its Development', '<p style=\"text-align: center; \"><br></p><p></p><div style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0); font-size: 26px; font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\">Changing footnote or using any portion of this project without permission is prohibited.</span></div><br><p></p>', '2020-03-25 18:10:11', '2021-04-01 18:15:22'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; Dhaka</b></p><p><br></p>', '2020-03-27 18:50:11', '2021-04-01 18:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(13, 'Priyanka Chopra, Richard Madden to lead Amazonâ€™s â€˜Citadelâ€™', 8, 10, '<p style=\"margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">Priyanka Chopra and Richard Madden are set to headline Citadel, Anthony and Joe Russoâ€™s upcoming thriller series for Amazon Studios.</p><p style=\"margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">Chopra and Madden are the first cast members to come aboard, announced by Amazon Studios during their TCA Winter Tour panel on Tuesday in Pasadena.</p><p style=\"margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">Amazon is calling Citadel a â€˜global event multi-seriesâ€™. Jonas and Madden will star in the US mothership edition of the series. Amazon also announced that a local language production of the franchise will originate from Mexico, in addition to the previously announced versions in Italy and India.</p><p style=\"margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">The Citadel franchise, a co-production with Midnight Radio, is an action-packed spy series. Josh Appelbaum, AndrÃ© Nemec, Jeff Pinkner, and Scott Rosenberg of Midnight Radio are the writers and executive producers. Moran, Mike Larocca, and Joe and Anthony Russo also serve as executive producers.&nbsp;</p>', '2020-03-23 16:18:07', NULL, 1, 'Priyanka-Chopra,-Richard-Madden-to-lead-Amazonâ€™s-â€˜Citadelâ€™', 'dd53b35cd0c42bde75eb34ef87b1dfb9.jpg'),
(14, 'Knitwear factories in Nâ€™ganj closed till April 4: BKMEA', 10, 18, '<p style=\"text-align: justify; margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\"><span style=\"font-weight: 800;\">Bangladesh Knitwear Manufacturers and Exporters Association (BKMEA) today announced closure of knitwear factories in Narayanganj till April 4 -- in a bid to contain the spread of coronavirus</span>.<br></p><p style=\"text-align: justify; margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">BKMEA President AKM Salim Osman, who is also Jatiya Party lawmaker of Narayanganj-5 constituency, announced the decision in a press statement this afternoon. In the statement, Osman said the government has prohibited public gathering and movement in public transports and shut down all hotels and restaurants to prevent the spread of the virus. Alongside these, the law enforcement agencies are advising people not to walk together on the streets -- causing difficulties for the workers in the sector, the BKMEA president said.</p><p style=\"text-align: justify; margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">\"Under these circumstances, we want our factories to remain closed till April 4,\" Osman said calling upon all owners of knitwear factories to pay salaries for the month of March to their workers in due time.</p><p style=\"text-align: justify; margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">Calling upon the workers in the sector to stay safe in their respective homes during the shutdown, Osman said he announced the closure as part of safety measures.</p>', '2020-03-27 19:00:27', NULL, 1, 'Knitwear-factories-in-Nâ€™ganj-closed-till-April-4:-BKMEA', '9cd7c3b0d44c9d4ced5a26f0feb5c40f.jpg'),
(15, 'A Beautiful Path', 8, 13, '<h2 class=\"h5 margin-bottom-zero\" style=\"margin-top: 0px; font-family: &quot;Droid Serif&quot;, serif; font-weight: 700; line-height: 21px; color: rgb(0, 0, 0); margin-bottom: 0px !important;\"><em>â€˜Gondiâ€™ actor Aparna Ghose is a dear face in the entertainment industy, and till date, has managed to offer her fans with quite a few memorable roles. She began her journey into acting through theatre in Chittagong and still is an active thespian for â€˜Nandikarâ€™ theatre troupe. Her baffling portfolio includes the achievement of winning the â€˜Bangladesh National Film Awardâ€™ for â€˜Best Supporting Actorâ€™ for her role in the film, â€˜Mrittika Mayaâ€™ in 2013. In this interview with Rafi Hossain, she talks about her thoughts on beauty pageant competitions, new platforms, theater and her personal life.</em></h2>', '2020-03-27 19:07:59', NULL, 1, 'A-Beautiful-Path', '08427ee651968cb1424f15fbcdabd895.jpg'),
(16, 'Govt. falters in its promise', 11, 16, '<p style=\"margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">After huge criticism, Liberation War Affairs Minister AKM Mozammel Huq said they would publish a fresh list by this Independence Day after proper scrutiny.</p><p style=\"margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">\"We first thought we could publish the list by March 26, but we could not,\" he told The Daily Star on Tuesday.</p><p style=\"margin-bottom: 21px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px;\">\"Later, we decided that we would publish the new list by April after the election to the Central Command Council of Bangladesh Muktijoddha Sangsad. Newly elected leaders of the organisation and renowned local people like physicians and educationists will review and prepare the new list,\" Mozammel said.</p>', '2020-03-27 19:15:53', NULL, 1, 'Govt.-falters-in-its-promise', '163100fb03557537b0fedb65c45831a3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(9, 7, 'Bangladesh', 'National', '2020-03-23 16:17:18', '2020-03-27 19:21:00', 1),
(10, 8, 'Hollywood Desk', 'Hollywood Related', '2020-03-23 16:17:18', '2020-03-27 18:53:35', 1),
(11, 7, 'International', 'International', '2020-03-23 16:45:00', '0000-00-00 00:00:00', 1),
(12, 8, 'Bollywood', 'News related to bollywood', '2020-03-27 18:54:14', '0000-00-00 00:00:00', 1),
(13, 8, 'Dhaliwood', 'News related o dhaliwood', '2020-03-27 18:54:34', '0000-00-00 00:00:00', 1),
(14, 9, 'National', 'National sports news', '2020-03-27 18:54:53', '0000-00-00 00:00:00', 1),
(15, 9, 'International', 'International sports', '2020-03-27 18:55:11', '0000-00-00 00:00:00', 1),
(16, 11, 'Bangladesh', 'Politics in Bangladesh', '2020-03-27 18:55:31', '0000-00-00 00:00:00', 1),
(17, 11, 'International', 'Politics in world wide ', '2020-03-27 18:55:50', '0000-00-00 00:00:00', 1),
(18, 10, 'Bangladesh', 'Bangladesh Business sector', '2020-03-27 18:56:13', '0000-00-00 00:00:00', 1),
(19, 10, 'International', 'International business sector', '2020-03-27 18:56:28', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
