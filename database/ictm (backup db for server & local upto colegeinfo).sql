-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2017 at 02:30 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ictm`
--

-- --------------------------------------------------------

--
-- Table structure for table `ictmaffiliations`
--

CREATE TABLE `ictmaffiliations` (
  `AffiliationsId` int(11) NOT NULL,
  `AffiliationsDetails` longtext,
  `AffiliationsPhotoPath` varchar(255) DEFAULT NULL,
  `InsertedBy` varchar(255) DEFAULT NULL,
  `InsertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(255) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `affiliationsStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmalbum`
--

CREATE TABLE `ictmalbum` (
  `albumId` int(11) NOT NULL,
  `albumTitle` varchar(255) DEFAULT NULL,
  `albumCategoryName` varchar(255) DEFAULT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `albumStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmalbum`
--

INSERT INTO `ictmalbum` (`albumId`, `albumTitle`, `albumCategoryName`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `albumStatus`) VALUES
(2, 'New Album', 'new Category', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ictmcollegeinfo`
--

CREATE TABLE `ictmcollegeinfo` (
  `collegeInfoId` int(11) NOT NULL,
  `collegeName` varchar(255) DEFAULT NULL,
  `collegeDomain` varchar(255) DEFAULT NULL,
  `collegeAddress` varchar(1000) DEFAULT NULL,
  `collegeTelephone1` varchar(45) DEFAULT NULL,
  `collegeTelephone2` varchar(45) DEFAULT NULL,
  `collegeFax` varchar(255) DEFAULT NULL,
  `collegeEmail` varchar(100) DEFAULT NULL,
  `collegeFacebook` varchar(1000) DEFAULT NULL,
  `collegeTwitter` varchar(1000) DEFAULT NULL,
  `collegeLinkedIn` varchar(1000) DEFAULT NULL,
  `collegeGoogle` varchar(1000) DEFAULT NULL,
  `collegeYoutube` varchar(1000) DEFAULT NULL,
  `InsertedBy` varchar(100) DEFAULT NULL,
  `InsertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `collegeInfoStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmcollegeinfo`
--

INSERT INTO `ictmcollegeinfo` (`collegeInfoId`, `collegeName`, `collegeDomain`, `collegeAddress`, `collegeTelephone1`, `collegeTelephone2`, `collegeFax`, `collegeEmail`, `collegeFacebook`, `collegeTwitter`, `collegeLinkedIn`, `collegeGoogle`, `collegeYoutube`, `InsertedBy`, `InsertedDate`, `lastModifiedBy`, `lastModifiedDate`, `collegeInfoStatus`) VALUES
(2, 'Icon College y', 'adff', '1-13 Uk', '0000000000000000000000000000000000000', '', 'sdf00', 'xxx@xxx.xxx', 'ad', 'asd', 'asd', 'asdds', 'wew', 'admin@gmail.com', '2017-08-30 11:30:34', 'admin@gmail.com', '2017-09-06 15:59:01', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ictmcontactus`
--

CREATE TABLE `ictmcontactus` (
  `contactUsId` int(11) NOT NULL,
  `contactUsname` varchar(45) DEFAULT NULL,
  `contactUsEmain` varchar(100) DEFAULT NULL,
  `contactUsSubject` varchar(255) DEFAULT NULL,
  `contactUsMessage` longtext,
  `insertedBy` int(11) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `contactUsStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmcourse`
--

CREATE TABLE `ictmcourse` (
  `courseId` int(11) NOT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `courseCodePearson` varchar(100) DEFAULT NULL,
  `courseCodeIcon` varchar(100) DEFAULT NULL,
  `ucasCode` varchar(100) DEFAULT NULL,
  `courseTitle` varchar(255) NOT NULL,
  `awardingTitle` varchar(255) DEFAULT NULL,
  `awardingBody` varchar(255) DEFAULT NULL,
  `accreditationType` varchar(100) DEFAULT NULL,
  `accreditationNumber` varchar(45) DEFAULT NULL,
  `courseDuration` varchar(50) DEFAULT NULL,
  `creditValue` varchar(100) DEFAULT NULL,
  `courseStructutre` varchar(255) DEFAULT NULL,
  `studyMode` varchar(100) DEFAULT NULL,
  `studyLanguage` varchar(100) DEFAULT NULL,
  `academicYear` varchar(100) DEFAULT NULL,
  `courseFees` varchar(255) DEFAULT NULL,
  `couseLocation` varchar(100) DEFAULT NULL,
  `timeTable` varchar(255) DEFAULT NULL,
  `courseStatus` varchar(50) DEFAULT NULL,
  `courseImage` varchar(255) DEFAULT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmcourse`
--

INSERT INTO `ictmcourse` (`courseId`, `departmentId`, `courseCodePearson`, `courseCodeIcon`, `ucasCode`, `courseTitle`, `awardingTitle`, `awardingBody`, `accreditationType`, `accreditationNumber`, `courseDuration`, `creditValue`, `courseStructutre`, `studyMode`, `studyLanguage`, `academicYear`, `courseFees`, `couseLocation`, `timeTable`, `courseStatus`, `courseImage`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`) VALUES
(11, 6, 'TNA67', 'ICON0001', NULL, 'HND in Computing', 'Pearson BTEC Level 5 Higher National Diploma (RQF) ', ' Pearson', 'Pearson Qualification', '601/8365/2', '2 years', '240 credits, levels 4 and 5.', '14 X 15 credits units, 1 X 30-unit research project.', 'FT', 'English', '2017-18', '£6,000', 'ICTM', 'Weekend and Evening', 'Active', NULL, 'admin@gmail.com', '2017-09-09 12:21:36', NULL, NULL),
(13, 18, 'qwe', 'lllllllllllllllllllllllllllllllllllllllllllllllllllllllllll', NULL, 'fsd', 'sdfsd', 'weewe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'wqe', 'qwe', 'qwe', 'weqw', 'qwe', 'Active', NULL, 'admin@gmail.com', '2017-09-16 08:16:47', NULL, NULL),
(14, 19, 'werw', 'sdfefffffffffffffffffffffffffffffffffffffffffffff', NULL, 'ddf', 'sdfsd', 'wersdf', 'srwer', 'sfsdf', 'r43', 'erwe', 'fsdf', 'sdfsf', 'fgf', 'sdfsd', 'sdfer', 'erwer', 'fsdf', 'Active', NULL, 'admin@gmail.com', '2017-09-16 08:17:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ictmcoursesection`
--

CREATE TABLE `ictmcoursesection` (
  `courseSectionId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `courseSectionTitle` varchar(255) DEFAULT NULL,
  `courseSectionContent` longtext,
  `courseSectionImage` varchar(255) DEFAULT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `courseSectionStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmcoursesection`
--

INSERT INTO `ictmcoursesection` (`courseSectionId`, `courseId`, `courseSectionTitle`, `courseSectionContent`, `courseSectionImage`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `courseSectionStatus`) VALUES
(10, 11, 'Course Overview', '<p>The BTEC (Business Technology Engineering Council) Higher National Diploma (HND) is a specialist programme with a strong workrelated emphasis. The qualification provides a thorough grounding in the key concepts and practical skills required in the sector with national recognition by employers allowing progression direct into employment or to degree.</p>\r\n\r\n<p>This HND in Business is ideal for those who wish to study at the undergraduate level to become better managers. Successful completion of HND allows students direct entry to top up honours degree at many UK universities.</p>\r\n', NULL, 'admin@gmail.com', '2017-09-09 12:23:58', NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ictmcourseunits`
--

CREATE TABLE `ictmcourseunits` (
  `courseUnitd` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `unitNumber` int(11) DEFAULT NULL,
  `unitCode` varchar(45) DEFAULT NULL,
  `unitName` varchar(255) DEFAULT NULL,
  `unitCredit` int(11) DEFAULT NULL,
  `unitType` varchar(45) DEFAULT NULL,
  `unitLevel` varchar(45) DEFAULT NULL,
  `insertedBy` int(11) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT NULL,
  `lastModifieDate` datetime DEFAULT NULL,
  `courseUnitsStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmdepartment`
--

CREATE TABLE `ictmdepartment` (
  `departmentId` int(11) NOT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  `departmentHead` varchar(100) DEFAULT NULL,
  `departmentSummary` mediumtext,
  `departmentImage` varchar(255) NOT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `departmentStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmdepartment`
--

INSERT INTO `ictmdepartment` (`departmentId`, `departmentName`, `departmentHead`, `departmentSummary`, `departmentImage`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `departmentStatus`) VALUES
(6, 'test department', 'test Department Head', '<p>test&nbsp;department &nbsp;summary</p>\r\n', '', 'admin@gmail.com', '2017-08-30 11:43:21', 'admin@gmail.com', '2017-09-15 19:15:34', 'InActive'),
(18, 'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 'dddddddddddddddddddddddddddddddddddddddddddddd', '<p>we</p>\r\n', '', 'admin@gmail.com', '2017-09-16 07:48:30', 'admin@gmail.com', '2017-09-16 07:48:39', 'Inactive'),
(19, 'sd', 'aew', '<p>we</p>\r\n', '', 'admin@gmail.com', '2017-09-16 07:49:12', NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ictmevent`
--

CREATE TABLE `ictmevent` (
  `eventId` int(11) NOT NULL,
  `eventTitle` varchar(255) DEFAULT NULL,
  `eventStartDate` datetime DEFAULT NULL,
  `eventEndDate` datetime DEFAULT NULL,
  `eventLocation` varchar(1000) DEFAULT NULL,
  `eventContent` mediumtext,
  `eventPhotoPath` varchar(255) DEFAULT NULL,
  `eventType` varchar(100) DEFAULT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `eventStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmevent`
--

INSERT INTO `ictmevent` (`eventId`, `eventTitle`, `eventStartDate`, `eventEndDate`, `eventLocation`, `eventContent`, `eventPhotoPath`, `eventType`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `eventStatus`) VALUES
(2, 'New Event1', '2017-08-01 14:47:00', '2017-08-31 14:47:00', 'Dhaka,Bangladesh', '<p>a</p>\r\n', NULL, 'Festival', 'admin@gmail.com', '2017-08-30 09:47:37', 'admin@gmail.com', '2017-08-30 10:29:27', 'InActive');

-- --------------------------------------------------------

--
-- Table structure for table `ictmfaculty`
--

CREATE TABLE `ictmfaculty` (
  `facultyId` int(11) NOT NULL,
  `facultyTitle` varchar(20) DEFAULT NULL,
  `facultyFirstName` varchar(50) DEFAULT NULL,
  `facultyLastName` varchar(50) DEFAULT NULL,
  `facultyDegree` varchar(255) DEFAULT NULL,
  `facultyPosition` varchar(255) DEFAULT NULL,
  `facultyEmpType` varchar(100) DEFAULT NULL,
  `facultyEmail` varchar(100) DEFAULT NULL,
  `faultyPhone` varchar(45) DEFAULT NULL,
  `facultyTwitter` varchar(255) DEFAULT NULL,
  `facultyLinkedIn` varchar(255) DEFAULT NULL,
  `facultyIntro` mediumtext,
  `facultyImage` varchar(255) DEFAULT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `facultyStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmfaculty`
--

INSERT INTO `ictmfaculty` (`facultyId`, `facultyTitle`, `facultyFirstName`, `facultyLastName`, `facultyDegree`, `facultyPosition`, `facultyEmpType`, `facultyEmail`, `faultyPhone`, `facultyTwitter`, `facultyLinkedIn`, `facultyIntro`, `facultyImage`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `facultyStatus`) VALUES
(16, '', 'Nurun', 'Nabi', 'BCom Honours, M.Com,MBA(Henley at Oxon), PhD, FInstLM(Lond), MPDSE', 'PRINCIPAL', 'Full Time', 'nurunnabi@gmail.com', '01680000000', '', '', '<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>\r\n\r\n<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.</p>\r\n', 'magic_ball_library_columns_castle_63093_1920x1080.jpg', 'rumi@gmail.com', '2017-08-14 06:15:53', 'admin@gmail.com', '2017-08-30 11:16:24', 'InActive'),
(18, '', 'Faculty First Name ', 'Faculty Last Name ', 'Faculty Last Name ', 'Faculty Last Name ', 'Part Time', 'jhgjgjhgjg@hjgj.com', '5466545646', 'hgfhgfg', '', '<p>Faculty Last Name&nbsp;Faculty Last Name&nbsp;Faculty Last Name&nbsp;Faculty Last Name&nbsp;Faculty Last Name&nbsp;</p>\r\n', 'Untitled00.png', 'admin@gmail.com', '2017-08-31 10:46:54', 'admin@gmail.com', '2017-09-13 08:34:44', 'Active'),
(20, '', 'First Name 1', 'Last Name 1', 'Faculty Degree 1', 'Faculty Position *1', 'Part Time', 'Email@yahoo.com', '01711111111', '', '', '<p>ergdfvdf</p>\r\n', 'interview (3).jpg', 'admin@gmail.com', '2017-09-05 08:16:09', NULL, NULL, 'Active'),
(22, '', 'Mujtaba Rafid', 'Rumi', 'bsc,ssc', 'lecturer', 'Part Time', 'mujtaba.rumi1@gmail.com', '01680674598', 'twitter', 'mujtaba.rumi', '<p>new faculty</p>\r\n', NULL, 'admin@gmail.com', '2017-09-14 19:08:33', NULL, NULL, 'Inactive'),
(23, 'mr', 'rumi', 'cv', 'sdfsdf', 'fsrer', 'Part Time', 'mujtaba.rumi12@gmail.com', '244', 'erer', 'dsfsdfss', '<p>ewrwerw54</p>\r\n', NULL, 'admin@gmail.com', '2017-09-16 07:28:14', NULL, NULL, 'Active'),
(24, 'mr', 'fgd', 'dfg', 'dfg', 'dfg', 'Part Time', 'hgdkjfh@g.com', '4565', 'sasdf', 'sdf', '<p>erwer</p>\r\n', NULL, 'admin@gmail.com', '2017-09-16 07:32:14', NULL, NULL, 'Active'),
(25, 'asda', 'adsa', 'rete', 'erte', 'erter', 'Part Time', 'erter@h.com', '5471', 'rert', 'erte', '<p>ert4534</p>\r\n', NULL, 'admin@gmail.com', '2017-09-16 07:32:51', NULL, NULL, 'Active'),
(26, NULL, 'MR', 'rete', 'erte', 'erter', 'Part Time', 'erter@he.com', '5471', 'rert', 'erte', '<p>ert4534</p>\r\n', NULL, 'admin@gmail.com', '2017-09-16 07:34:10', 'admin@gmail.com', '2017-09-16 07:34:40', 'Active'),
(27, 'mr', 'as', 'asd', 'asdeqwe', 'asdasd', 'Part Time', 'asdas@g.com', '5468', 'asd', 'cv', '<p>awe</p>\r\n', NULL, 'admin@gmail.com', '2017-09-16 08:34:44', 'admin@gmail.com', '2017-09-16 08:37:59', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ictmfacultycontact`
--

CREATE TABLE `ictmfacultycontact` (
  `facultyContactId` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL,
  `visitorName` varchar(100) DEFAULT NULL,
  `visitorInterest` varchar(100) DEFAULT NULL,
  `visitorEmail` varchar(100) DEFAULT NULL,
  `visitorPhone` varchar(45) DEFAULT NULL,
  `visitorEnquary` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `insertedBy` varchar(100) NOT NULL,
  `lastModifiedBy` varchar(100) NOT NULL,
  `lastModifiedDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmfacultycourse`
--

CREATE TABLE `ictmfacultycourse` (
  `facultyCourseId` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmfacultycourse`
--

INSERT INTO `ictmfacultycourse` (`facultyCourseId`, `facultyId`, `courseId`) VALUES
(40, 26, 11),
(41, 27, 13);

-- --------------------------------------------------------

--
-- Table structure for table `ictmfeedback`
--

CREATE TABLE `ictmfeedback` (
  `feedbackId` int(11) NOT NULL,
  `feedbackDetails` varchar(100) DEFAULT NULL,
  `feedbackName` varchar(45) DEFAULT NULL,
  `feedbackPhotePath` varchar(100) DEFAULT NULL,
  `insertedBy` int(11) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `feedbackStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmhome`
--

CREATE TABLE `ictmhome` (
  `homeId` int(11) NOT NULL,
  `homeTitle` varchar(100) DEFAULT NULL,
  `homeDetails` mediumtext,
  `homePhotoPath` varchar(255) DEFAULT NULL,
  `insertedBy` int(11) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `homeStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmmenu`
--

CREATE TABLE `ictmmenu` (
  `menuId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `pageId` int(11) DEFAULT NULL,
  `menuName` varchar(100) DEFAULT NULL,
  `menuType` varchar(100) DEFAULT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `menuStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmmenu`
--

INSERT INTO `ictmmenu` (`menuId`, `parentId`, `pageId`, `menuName`, `menuType`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `menuStatus`) VALUES
(49, NULL, NULL, 'About', 'MainMenu', 'admin@gmail.com', '2017-08-20 07:50:55', NULL, NULL, 'Active'),
(50, NULL, NULL, 'Courses', 'MainMenu', 'admin@gmail.com', '2017-08-20 07:51:09', NULL, NULL, 'Active'),
(51, NULL, NULL, 'Admission', 'MainMenu', 'admin@gmail.com', '2017-08-20 07:51:24', NULL, NULL, 'Active'),
(52, NULL, NULL, 'College Life', 'MainMenu', 'admin@gmail.com', '2017-08-20 07:51:49', NULL, NULL, 'Active'),
(53, 0, NULL, 'News & Events', 'MainMenu', 'admin@gmail.com', '2017-08-20 07:52:09', 'admin@gmail.com', '2017-09-14 18:17:04', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ictmnews`
--

CREATE TABLE `ictmnews` (
  `newsId` int(11) NOT NULL,
  `newsTitle` varchar(255) DEFAULT NULL,
  `newsContent` mediumtext,
  `newsDate` datetime DEFAULT NULL,
  `newsType` varchar(100) DEFAULT NULL,
  `newsPhoto` varchar(255) NOT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `newsStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmnews`
--

INSERT INTO `ictmnews` (`newsId`, `newsTitle`, `newsContent`, `newsDate`, `newsType`, `newsPhoto`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `newsStatus`) VALUES
(2, 'tsste', '<p>df sdf sdf ffgg</p>\r\n', '2017-09-02 16:38:00', 'News', '15942932_10211920676320364_1974396229_o.png', 'admin@gmail.com', '2017-08-30 11:38:51', 'admin@gmail.com', '2017-08-30 11:51:45', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ictmnotices`
--

CREATE TABLE `ictmnotices` (
  `noticeId` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeContent` mediumtext,
  `noticeDate` datetime DEFAULT NULL,
  `noticeType` varchar(45) DEFAULT NULL,
  `insertedBy` int(11) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `noticeStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmpage`
--

CREATE TABLE `ictmpage` (
  `pageId` int(11) NOT NULL,
  `pageTitle` varchar(255) DEFAULT NULL,
  `pageKeywords` varchar(255) DEFAULT NULL,
  `pageMetaData` varchar(255) DEFAULT NULL,
  `pageType` varchar(100) DEFAULT NULL,
  `pageContent` longtext,
  `pageImage` varchar(255) DEFAULT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `pageStatus` varchar(50) DEFAULT NULL,
  `approvedBy` varchar(100) DEFAULT NULL,
  `publishingDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmpage`
--

INSERT INTO `ictmpage` (`pageId`, `pageTitle`, `pageKeywords`, `pageMetaData`, `pageType`, `pageContent`, `pageImage`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `pageStatus`, `approvedBy`, `publishingDate`) VALUES
(22, 'Welcome to Icon College', 'Welcome,Icon College', 'Welcome,Icon College', 'Health Type', '<p>jhjhjokpij</p>\r\n', '002.jpg', 'admin@gmail.com', '2017-08-20 07:53:23', 'admin@gmail.com', '2017-09-13 11:43:39', 'Active', NULL, NULL),
(35, 'b', 'b', 'b', 'About Type', '<p>b</p>\r\n', NULL, 'admin@gmail.com', '2017-09-16 06:18:28', NULL, NULL, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ictmpagesection`
--

CREATE TABLE `ictmpagesection` (
  `pageSectionId` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `pageSectionTitle` varchar(255) DEFAULT NULL,
  `pageSectionContent` longtext,
  `pageSectionImage` varchar(255) DEFAULT NULL,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `pageSectionStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmpagesection`
--

INSERT INTO `ictmpagesection` (`pageSectionId`, `pageId`, `pageSectionTitle`, `pageSectionContent`, `pageSectionImage`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `pageSectionStatus`) VALUES
(23, 22, 'Our Vision & Mission', '<p>fdgdgfdgdfgdfgfd</p>\r\n', NULL, 'admin@gmail.com', '2017-08-20 07:56:30', 'admin@gmail.com', '2017-09-15 10:38:48', 'Active'),
(26, 22, 'Where are we', '<p>ICON College is centrally located in London, on the eastern border of the City of London, the Capital&#39;s banking and financial centre. It occupies a building in Adler Street, London E1. This is close to Aldgate East underground station and within easy walking distance from Whitechapel (Underground and Overground station), and two main-line railway stations (Liverpool Street and Fenchurch Street).</p>\r\n\r\n<p><img src="http://www.iconcollege.com/images/tower_of_london.jpg" /></p>\r\n\r\n<p>The College is also close to the Tower of London (a World Heritage site) and the tourist attractions of St. Paul&#39;s Cathedral, Tower Bridge, the London Eye and the Monument. The London&#39;s West End, which is renowned for its theatres, art galleries and shopping, is only a short bus or tube ride away.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Within easy reach is also London Docklands, based around Canary Wharf, with its many new high-rise office blocks and the new EXCEL exhibition centre. The College is very near to the vibrant community of Brick Lane, famous for its many Indian Restaurants but now also recognised as a thriving centre for new media, fashion and the arts.</p>\r\n\r\n<p><img src="http://www.iconcollege.com/images/london_docklands.JPG" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The excellent Whitechapel Art Gallery and colourful London street markets of Whitechapel and Petticoat Lane are also within easy walking distance from the College.</p>\r\n\r\n<p>The main East London Mosque, in Whitechapel, is less than 5 minutes walk away from the College, as is several churches. To find out where ICON College is, check out the&nbsp;<a href="http://iconcollege.ac.uk/wireframe202/about.php#">Travel Guide.</a></p>\r\n', NULL, 'admin@gmail.com', '2017-08-20 08:36:06', NULL, NULL, 'Active'),
(27, 22, 'Why choose Icon College', '<p>ICON College is a dynamic and independent Higher Education institution, in the heart of London, providing academic and professional courses of an exceptional standard at competitive prices.</p>\r\n\r\n<p>All our courses can be followed full time and are also available in the evenings and saturday for UK/EU citizens for maximum flexibility in planning your programme of study.</p>\r\n\r\n<p>The College provides high quality teaching and support in a caring and friendly environment. It has all the facilities you will need for an effective and enjoyable learning experience &ndash; facilities we believe are vital to your ultimate success.</p>\r\n\r\n<p>Our aim is to ensure that all our students gain the maximum benefit from their time here. All the staff at the College are dedicated to helping you gain the skills and qualifications you need and enjoy your time in London.</p>\r\n\r\n<h3>Quality Teaching and Training</h3>\r\n\r\n<p>All our teaching staff are highly qualified and experienced teachers, with wide experience of working in their own fields. High quality lecture notes and handouts are provided for all courses. Our friendly and approachable staff are committed to helping you successfully complete your course. They will offer you every assistance and support.</p>\r\n\r\n<h3>Excellent College Environment</h3>\r\n\r\n<p>Whether you live around the corner from the College or are from the other side of the world, we are here to provide you with a stimulating learning environment while you are at ICON College.</p>\r\n\r\n<p>All the excellent business, entertainment, cultural, shopping, religious and educational facilities that make London one of the best cities in the world for entertainment, cultural enrichment and education, are also within easy reach.</p>\r\n\r\n<p><img src="http://www.iconcollege.com/images/pic1.jpg" /></p>\r\n\r\n<h3>Competitive Fees</h3>\r\n\r\n<p>We are able to offer high quality teaching and education at a competitive fees, by keeping our administration costs and overheads low.</p>\r\n\r\n<p><img src="http://www.iconcollege.com/images/pic2.jpg" /></p>\r\n\r\n<h3>Technology at ICON</h3>\r\n\r\n<p>ICON College uses advanced technology, both in the computer suites and lecture rooms. We have high specification computers, LCD projectors and printers. The College also has video and DVD equipment available to the classrooms. We also have appropriate library resources to support you and your studies.</p>\r\n\r\n<p><img src="http://www.iconcollege.com/images/pic3.jpg" /></p>\r\n\r\n<h3>Equal Opportunities</h3>\r\n\r\n<p>ICON College is committed to Equal Opportunities. We are here to support all students in their pursuit of new skills, knowledge and education regardless of their culture, ethnic origin, gender, religion, nationality, disability, political affiliations or age.</p>\r\n\r\n<p>Our flexible study programmes allow for full-time or evenings and week-end attendance available for UK/EU citizens, to enable as many students as possible to further their education.</p>\r\n\r\n<p><img src="http://www.iconcollege.com/images/pic4.jpg" /></p>\r\n\r\n<h3>Reason to come at ICON</h3>\r\n\r\n<ul>\r\n	<li>Affordable fees</li>\r\n	<li>Finance for tuition fees and maintenance available to eligible students from the Student Loans Company.</li>\r\n	<li>Good transport links and excellent local facilities in the heart of London.</li>\r\n	<li>QAA reviewed.</li>\r\n	<li>Lively provision of extra-curricular activities.</li>\r\n	<li>All courses lead to world recognised qualifications.</li>\r\n	<li>High quality teaching by experienced and scholarly tutors.</li>\r\n	<li>Flexible start dates: we admit new students in September, February and May sessions.</li>\r\n	<li>State-of-the-art Engineering Lab, well equiped IT labs,VLE, well-resourced library and fully serviced canteen..</li>\r\n	<li>Multicultural: our students come to us from many different countries.</li>\r\n	<li>Providing wide range of support including days out of town, health and financial advice, social events and accommodation support.</li>\r\n	<li>Well established college with high reputation for its educational standards, integrity and friendly partnership with our students including pastoral and academic support for all those who need additional help.</li>\r\n	<li>Excellent reports from Pearson.</li>\r\n	<li>Students integrated in the management of teaching/learning with full time student/management liaison officer. Each student is assigned an academic tutor for the duration of their study.</li>\r\n</ul>\r\n', NULL, 'admin@gmail.com', '2017-08-20 08:36:06', NULL, NULL, 'InActive'),
(37, 22, 'About Icon College', '<p>ICON College of Technology and Management is a modern, friendly and dynamic independent college for Higher Education in the heart of London. We offer a wide range of academic courses leading to internationally recognised accredited British qualifications in Computing and Systems Development; Electrical and Electronic Engineering; Business Studies; Management; Travel and Tourism, Hospitality Management and Health and Social Care.</p>\r\n\r\n<p>Pearson (formerly known as Edexcel) is the UK&#39;s largest awarding body, has accredited ICON College of Technology and Management as an approved centre to offer HND in Business, HND in Computing and Systems Development, HND in Electrical and Electronic Engineering, HND in Travel and Tourism Management, HND in Hospitality Management and HND in Health and Social Care.</p>\r\n\r\n<p>Students successfully completing the HND in Computing, Business, Travel &amp;Tourism, Hospitality, Health and Social Care or Electrical and Electronic Engineering at ICON College may transfer at many UK universities to complete Bachelor Degrees via top-up programmes. Students with good grades will be able to apply for direct entry into the final year of the BSc/BEng (Hons) in IT/Telecommunication, BA (Hons) in Business Administration, BA (Hons) in Tourism and Hospitality Management, BA/BSc. (Hons) in Health and Social Care following completion of the relevant HND courses.</p>\r\n\r\n<p><strong>We have received the following judgements from QAA:</strong></p>\r\n\r\n<p>The QAA monitoring team has concluded that ICON College of Technology and Management Ltd is making progress but further improvement is required with continuing to monitor, review and enhance its higher education provision before the QA monitoring visit for Higher Education Review (AP) in July 2017.</p>\r\n', NULL, 'admin@gmail.com', '2017-08-26 13:50:41', NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ictmphoto`
--

CREATE TABLE `ictmphoto` (
  `photoId` int(11) NOT NULL,
  `albumId` int(11) NOT NULL,
  `photoName` varchar(255) DEFAULT NULL,
  `photoDetails` longtext,
  `insertedBy` varchar(100) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(100) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `photoStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmregisterinterest`
--

CREATE TABLE `ictmregisterinterest` (
  `registerInterestId` int(11) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `surName` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `hearAboutUs` varchar(100) DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  `disabilityRequire` varchar(45) DEFAULT NULL,
  `appointmentDate` date DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `inserDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmrole`
--

CREATE TABLE `ictmrole` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(45) DEFAULT NULL,
  `roleDesc` varchar(45) DEFAULT NULL,
  `insertedBy` varchar(50) DEFAULT NULL,
  `insertedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastModifiedBy` varchar(50) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `roleStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmrole`
--

INSERT INTO `ictmrole` (`roleId`, `roleName`, `roleDesc`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `roleStatus`) VALUES
(1, 'Admin', 'web admin', '1', '2017-08-07 00:00:00', '1', '2017-08-07 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ictmunitsection`
--

CREATE TABLE `ictmunitsection` (
  `UnitSectionId` int(11) NOT NULL,
  `courseUnitd` int(11) NOT NULL,
  `UnitSectionTitle` varchar(255) DEFAULT NULL,
  `UnitSectionContent` longtext,
  `UnitSectionImage` varchar(255) DEFAULT NULL,
  `insertedBy` int(11) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `unitSectionStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ictmusers`
--

CREATE TABLE `ictmusers` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `userPassword` varchar(45) DEFAULT NULL,
  `userTitle` varchar(45) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `surName` varchar(100) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `insertedBy` int(11) DEFAULT NULL,
  `insertedDate` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT NULL,
  `lastModifiedDate` datetime DEFAULT NULL,
  `usersStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ictmusers`
--

INSERT INTO `ictmusers` (`userId`, `roleId`, `userEmail`, `userPassword`, `userTitle`, `firstName`, `surName`, `jobTitle`, `insertedBy`, `insertedDate`, `lastModifiedBy`, `lastModifiedDate`, `usersStatus`) VALUES
(2, 1, 'admin@gmail.com', 'admin@123', 'admin', 'Admin admin', 'admin', 'web developer', 1, '2017-08-07 00:00:00', 1, '2017-08-07 00:00:00', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ictmaffiliations`
--
ALTER TABLE `ictmaffiliations`
  ADD PRIMARY KEY (`AffiliationsId`);

--
-- Indexes for table `ictmalbum`
--
ALTER TABLE `ictmalbum`
  ADD PRIMARY KEY (`albumId`);

--
-- Indexes for table `ictmcollegeinfo`
--
ALTER TABLE `ictmcollegeinfo`
  ADD PRIMARY KEY (`collegeInfoId`);

--
-- Indexes for table `ictmcontactus`
--
ALTER TABLE `ictmcontactus`
  ADD PRIMARY KEY (`contactUsId`);

--
-- Indexes for table `ictmcourse`
--
ALTER TABLE `ictmcourse`
  ADD PRIMARY KEY (`courseId`),
  ADD KEY `fk_ictmCourse_ictmDepartment1_idx` (`departmentId`);

--
-- Indexes for table `ictmcoursesection`
--
ALTER TABLE `ictmcoursesection`
  ADD PRIMARY KEY (`courseSectionId`),
  ADD KEY `fk_ictmCourseSection_ictmCourse1_idx` (`courseId`);

--
-- Indexes for table `ictmcourseunits`
--
ALTER TABLE `ictmcourseunits`
  ADD PRIMARY KEY (`courseUnitd`),
  ADD KEY `fk_ictmCurseUnits_ictmCourse1_idx` (`courseId`);

--
-- Indexes for table `ictmdepartment`
--
ALTER TABLE `ictmdepartment`
  ADD PRIMARY KEY (`departmentId`);

--
-- Indexes for table `ictmevent`
--
ALTER TABLE `ictmevent`
  ADD PRIMARY KEY (`eventId`);

--
-- Indexes for table `ictmfaculty`
--
ALTER TABLE `ictmfaculty`
  ADD PRIMARY KEY (`facultyId`);

--
-- Indexes for table `ictmfacultycontact`
--
ALTER TABLE `ictmfacultycontact`
  ADD PRIMARY KEY (`facultyContactId`),
  ADD KEY `fk_ictmFacultyContact_ictmFaculty1_idx` (`facultyId`);

--
-- Indexes for table `ictmfacultycourse`
--
ALTER TABLE `ictmfacultycourse`
  ADD PRIMARY KEY (`facultyCourseId`),
  ADD KEY `fk_ictmFacultyCourse_ictmFaculty1_idx` (`facultyId`),
  ADD KEY `fk_ictmFacultyCourse_ictmCourse1_idx` (`courseId`);

--
-- Indexes for table `ictmfeedback`
--
ALTER TABLE `ictmfeedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `ictmhome`
--
ALTER TABLE `ictmhome`
  ADD PRIMARY KEY (`homeId`);

--
-- Indexes for table `ictmmenu`
--
ALTER TABLE `ictmmenu`
  ADD PRIMARY KEY (`menuId`),
  ADD KEY `fk_ictmMenu_ictmPage_idx` (`pageId`);

--
-- Indexes for table `ictmnews`
--
ALTER TABLE `ictmnews`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `ictmnotices`
--
ALTER TABLE `ictmnotices`
  ADD PRIMARY KEY (`noticeId`);

--
-- Indexes for table `ictmpage`
--
ALTER TABLE `ictmpage`
  ADD PRIMARY KEY (`pageId`);

--
-- Indexes for table `ictmpagesection`
--
ALTER TABLE `ictmpagesection`
  ADD PRIMARY KEY (`pageSectionId`),
  ADD KEY `fk_ictmPageSection_ictmPage1_idx` (`pageId`);

--
-- Indexes for table `ictmphoto`
--
ALTER TABLE `ictmphoto`
  ADD PRIMARY KEY (`photoId`),
  ADD KEY `fk_ictmPhoto_ictmAlbum` (`albumId`);

--
-- Indexes for table `ictmregisterinterest`
--
ALTER TABLE `ictmregisterinterest`
  ADD PRIMARY KEY (`registerInterestId`);

--
-- Indexes for table `ictmrole`
--
ALTER TABLE `ictmrole`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `ictmunitsection`
--
ALTER TABLE `ictmunitsection`
  ADD PRIMARY KEY (`UnitSectionId`),
  ADD KEY `fk_unitSection_ictmCurseUnits1_idx` (`courseUnitd`);

--
-- Indexes for table `ictmusers`
--
ALTER TABLE `ictmusers`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `fk_ictmUsers_ictmRole1_idx` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ictmaffiliations`
--
ALTER TABLE `ictmaffiliations`
  MODIFY `AffiliationsId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmalbum`
--
ALTER TABLE `ictmalbum`
  MODIFY `albumId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ictmcollegeinfo`
--
ALTER TABLE `ictmcollegeinfo`
  MODIFY `collegeInfoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ictmcontactus`
--
ALTER TABLE `ictmcontactus`
  MODIFY `contactUsId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmcourse`
--
ALTER TABLE `ictmcourse`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ictmcoursesection`
--
ALTER TABLE `ictmcoursesection`
  MODIFY `courseSectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ictmcourseunits`
--
ALTER TABLE `ictmcourseunits`
  MODIFY `courseUnitd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmdepartment`
--
ALTER TABLE `ictmdepartment`
  MODIFY `departmentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ictmevent`
--
ALTER TABLE `ictmevent`
  MODIFY `eventId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ictmfaculty`
--
ALTER TABLE `ictmfaculty`
  MODIFY `facultyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `ictmfacultycontact`
--
ALTER TABLE `ictmfacultycontact`
  MODIFY `facultyContactId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmfacultycourse`
--
ALTER TABLE `ictmfacultycourse`
  MODIFY `facultyCourseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `ictmfeedback`
--
ALTER TABLE `ictmfeedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmhome`
--
ALTER TABLE `ictmhome`
  MODIFY `homeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmmenu`
--
ALTER TABLE `ictmmenu`
  MODIFY `menuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `ictmnews`
--
ALTER TABLE `ictmnews`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ictmnotices`
--
ALTER TABLE `ictmnotices`
  MODIFY `noticeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmpage`
--
ALTER TABLE `ictmpage`
  MODIFY `pageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `ictmpagesection`
--
ALTER TABLE `ictmpagesection`
  MODIFY `pageSectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `ictmphoto`
--
ALTER TABLE `ictmphoto`
  MODIFY `photoId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmregisterinterest`
--
ALTER TABLE `ictmregisterinterest`
  MODIFY `registerInterestId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmrole`
--
ALTER TABLE `ictmrole`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ictmunitsection`
--
ALTER TABLE `ictmunitsection`
  MODIFY `UnitSectionId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ictmusers`
--
ALTER TABLE `ictmusers`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ictmcourse`
--
ALTER TABLE `ictmcourse`
  ADD CONSTRAINT `fk_ictmCourse_ictmDepartment1` FOREIGN KEY (`departmentId`) REFERENCES `ictmdepartment` (`departmentId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmcoursesection`
--
ALTER TABLE `ictmcoursesection`
  ADD CONSTRAINT `fk_ictmCourseSection_ictmCourse1` FOREIGN KEY (`courseId`) REFERENCES `ictmcourse` (`courseId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmcourseunits`
--
ALTER TABLE `ictmcourseunits`
  ADD CONSTRAINT `fk_ictmCurseUnits_ictmCourse1` FOREIGN KEY (`courseId`) REFERENCES `ictmcourse` (`courseId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmfacultycontact`
--
ALTER TABLE `ictmfacultycontact`
  ADD CONSTRAINT `fk_ictmFacultyContact_ictmFaculty1` FOREIGN KEY (`facultyId`) REFERENCES `ictmfaculty` (`facultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmfacultycourse`
--
ALTER TABLE `ictmfacultycourse`
  ADD CONSTRAINT `fk_ictmFacultyCourse_ictmCourse1` FOREIGN KEY (`courseId`) REFERENCES `ictmcourse` (`courseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ictmFacultyCourse_ictmFaculty1` FOREIGN KEY (`facultyId`) REFERENCES `ictmfaculty` (`facultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmmenu`
--
ALTER TABLE `ictmmenu`
  ADD CONSTRAINT `fk_ictmMenu_ictmPage` FOREIGN KEY (`pageId`) REFERENCES `ictmpage` (`pageId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmpagesection`
--
ALTER TABLE `ictmpagesection`
  ADD CONSTRAINT `fk_ictmPageSection_ictmPage1` FOREIGN KEY (`pageId`) REFERENCES `ictmpage` (`pageId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmphoto`
--
ALTER TABLE `ictmphoto`
  ADD CONSTRAINT `fk_ictmPhoto_ictmAlbum` FOREIGN KEY (`albumId`) REFERENCES `ictmalbum` (`albumId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmunitsection`
--
ALTER TABLE `ictmunitsection`
  ADD CONSTRAINT `fk_unitSection_ictmCurseUnits1` FOREIGN KEY (`courseUnitd`) REFERENCES `ictmcourseunits` (`courseUnitd`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ictmusers`
--
ALTER TABLE `ictmusers`
  ADD CONSTRAINT `fk_ictmUsers_ictmRole1` FOREIGN KEY (`roleId`) REFERENCES `ictmrole` (`roleId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;