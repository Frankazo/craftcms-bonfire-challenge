-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 12, 2022 at 11:31 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craftcms_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_announcements`
--

CREATE TABLE `craft_announcements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assets`
--

CREATE TABLE `craft_assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assets`
--

INSERT INTO `craft_assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(40, 1, 1, 1, 'Hero-Banner-Placeholder-Light-1024x480-1.png', 'image', 1024, 480, 9054, NULL, 0, 0, '2022-02-10 13:54:42', '2022-02-10 13:54:42', '2022-02-10 13:54:42', 'cb0f1626-8bad-4d35-af9a-697204d0f46d'),
(44, 1, 1, 1, 'Hero-Banner-Placeholder-Light-1024x480-1_2022-02-10-143545_lvnu.png', 'image', 1024, 480, 9054, NULL, NULL, NULL, '2022-02-10 14:35:46', '2022-02-10 14:35:46', '2022-02-10 14:35:46', '8d400dc7-7c7b-4242-ab3f-27e790c4e724'),
(60, 1, 1, 1, 'mountains-7ddde89.jpeg', 'image', 1200, 511, 67488, NULL, NULL, NULL, '2022-02-11 17:01:22', '2022-02-11 17:01:22', '2022-02-11 17:01:22', '4e675b37-deb6-4d3b-8506-c91682449d8a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_categories`
--

INSERT INTO `craft_categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(21, 1, NULL, NULL, '2022-02-10 12:15:36', '2022-02-10 12:15:36', '3af2eeae-923b-4200-8909-f5461d7f003b'),
(22, 1, NULL, NULL, '2022-02-10 12:15:49', '2022-02-10 12:15:49', 'a6d68379-d91f-4149-9a36-6d95022e67ff');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_categorygroups`
--

INSERT INTO `craft_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `defaultPlacement`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, 5, 'Boxes Categories', 'boxesCategories', 'end', '2022-02-10 12:12:32', '2022-02-10 12:12:32', NULL, '5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_sites`
--

CREATE TABLE `craft_categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text COLLATE utf8_unicode_ci,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_categorygroups_sites`
--

INSERT INTO `craft_categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'category/{slug}', 'category/_entry', '2022-02-10 12:12:32', '2022-02-10 13:14:50', 'e6ba7de4-fc5f-4927-8a15-e3225c476ee5');

-- --------------------------------------------------------

--
-- Table structure for table `craft_changedattributes`
--

CREATE TABLE `craft_changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_changedattributes`
--

INSERT INTO `craft_changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 'uri', '2022-02-10 13:49:27', 0, 1),
(20, 1, 'slug', '2022-02-10 12:18:45', 0, 1),
(20, 1, 'title', '2022-02-10 12:18:45', 0, 1),
(20, 1, 'uri', '2022-02-10 12:18:45', 0, 1),
(24, 1, 'slug', '2022-02-10 12:21:29', 0, 1),
(24, 1, 'title', '2022-02-10 12:21:29', 0, 1),
(24, 1, 'uri', '2022-02-10 12:21:29', 0, 1),
(26, 1, 'slug', '2022-02-10 12:21:57', 0, 1),
(26, 1, 'title', '2022-02-10 12:21:57', 0, 1),
(26, 1, 'uri', '2022-02-10 12:21:57', 0, 1),
(28, 1, 'slug', '2022-02-10 12:22:14', 0, 1),
(28, 1, 'title', '2022-02-10 12:22:14', 0, 1),
(28, 1, 'uri', '2022-02-10 12:22:14', 0, 1),
(30, 1, 'slug', '2022-02-10 12:22:29', 0, 1),
(30, 1, 'title', '2022-02-10 12:22:29', 0, 1),
(30, 1, 'uri', '2022-02-10 12:22:29', 0, 1),
(32, 1, 'slug', '2022-02-10 12:22:55', 0, 1),
(32, 1, 'title', '2022-02-10 12:22:55', 0, 1),
(32, 1, 'uri', '2022-02-10 12:22:55', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `craft_changedfields`
--

CREATE TABLE `craft_changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_changedfields`
--

INSERT INTO `craft_changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 2, '2022-02-11 00:58:28', 0, 1),
(2, 1, 3, '2022-02-10 21:35:25', 0, 1),
(2, 1, 4, '2022-02-11 17:01:25', 0, 1),
(20, 1, 5, '2022-02-10 12:18:54', 0, 1),
(20, 1, 6, '2022-02-10 12:18:21', 0, 1),
(24, 1, 5, '2022-02-10 12:21:34', 0, 1),
(24, 1, 6, '2022-02-10 12:21:37', 0, 1),
(26, 1, 5, '2022-02-10 12:22:02', 0, 1),
(26, 1, 6, '2022-02-10 12:22:05', 0, 1),
(28, 1, 5, '2022-02-10 12:22:20', 0, 1),
(28, 1, 6, '2022-02-10 12:22:23', 0, 1),
(30, 1, 5, '2022-02-10 12:22:33', 0, 1),
(30, 1, 6, '2022-02-11 00:55:54', 0, 1),
(32, 1, 5, '2022-02-11 14:23:34', 0, 1),
(32, 1, 6, '2022-02-10 12:23:03', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_headerTitle_mxdhqtxh` text COLLATE utf8_unicode_ci,
  `field_headerSubtitle_tnkgbpbu` text COLLATE utf8_unicode_ci,
  `field_boxSubtitle_digvoubv` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_headerTitle_mxdhqtxh`, `field_headerSubtitle_tnkgbpbu`, `field_boxSubtitle_digvoubv`) VALUES
(1, 1, 1, NULL, '2022-02-07 14:39:41', '2022-02-07 14:39:41', '23a28776-9299-4a41-abcf-2a4b0ecf4e63', NULL, NULL, NULL),
(2, 2, 1, 'Home', '2022-02-07 14:43:44', '2022-02-11 17:01:25', '0d5e1e4f-5bcc-4c14-ae3c-f5fb0571aeeb', 'Why Hello There', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL),
(3, 3, 1, 'Home', '2022-02-07 14:43:44', '2022-02-07 14:43:44', '7e14cbd7-64ab-46f9-956a-c792f4f2242f', NULL, NULL, NULL),
(4, 4, 1, 'Home', '2022-02-07 17:45:16', '2022-02-07 17:45:16', '8980e717-3fc4-469a-88d0-fbf3e3bcbe29', NULL, NULL, NULL),
(6, 6, 1, 'Home', '2022-02-07 17:45:53', '2022-02-07 17:45:53', '174d093f-cb80-482b-af20-5e411e702870', NULL, NULL, NULL),
(7, 7, 1, 'About', '2022-02-07 17:48:32', '2022-02-07 17:51:08', '363def6f-9938-4ffc-83cd-4183674ed90a', NULL, NULL, NULL),
(8, 8, 1, 'About', '2022-02-07 17:48:32', '2022-02-07 17:48:32', '78387f9b-8373-47ca-9fb4-9b288bfd1fde', NULL, NULL, NULL),
(9, 9, 1, 'About', '2022-02-07 17:49:30', '2022-02-07 17:49:30', '30c2c915-52bd-4063-a5d7-f02c3bc8ce3f', NULL, NULL, NULL),
(11, 11, 1, 'About', '2022-02-07 17:51:08', '2022-02-07 17:51:08', '95adc5c6-a089-4b55-a493-2f07174b1235', NULL, NULL, NULL),
(12, 12, 1, 'Home', '2022-02-09 01:08:10', '2022-02-09 01:08:10', 'a15be022-39c0-41d9-bc50-8b39362ecd21', NULL, NULL, NULL),
(14, 14, 1, 'Home', '2022-02-09 01:16:18', '2022-02-09 01:16:18', '27441381-3717-4697-b4a9-3f7c3a64a5d1', 'Why Hello There', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(15, 15, 1, 'Home', '2022-02-09 01:26:45', '2022-02-09 01:26:45', 'eeba6c62-b11b-49eb-b1fc-ad3576269ac7', NULL, NULL, NULL),
(16, 16, 1, 'Away', '2022-02-09 01:27:30', '2022-02-09 01:27:30', 'b40afe3e-c6ee-4d66-802a-8b70950d18d3', NULL, NULL, NULL),
(17, 17, 1, 'Home', '2022-02-09 12:41:06', '2022-02-09 12:41:06', '8f9f96a0-76bc-42a8-806a-c17e8f74b149', NULL, NULL, NULL),
(19, 19, 1, 'Home', '2022-02-09 23:34:26', '2022-02-09 23:34:26', 'a0106527-824d-465d-89bd-20f3e209673b', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(20, 20, 1, 'BOX NUMBER 1', '2022-02-10 12:10:07', '2022-02-10 12:18:56', 'c2cd3f90-3ee3-4400-be08-7e42687e7b46', NULL, NULL, 'USELESS SUBTEXT'),
(21, 21, 1, 'Outdoor', '2022-02-10 12:15:36', '2022-02-10 12:15:36', '5650e474-f7e5-406b-b2ff-0cb7a9031738', NULL, NULL, NULL),
(22, 22, 1, 'Technology', '2022-02-10 12:15:49', '2022-02-10 12:15:49', '6e674dc3-d81e-4ef5-9843-08b157f4cd6f', NULL, NULL, NULL),
(23, 23, 1, 'BOX NUMBER 1', '2022-02-10 12:18:56', '2022-02-10 12:18:56', 'fd5ca419-d54b-4dfb-92af-10c3db0eddf9', NULL, NULL, 'USELESS SUBTEXT'),
(24, 24, 1, 'BOX NUMBER 2', '2022-02-10 12:21:22', '2022-02-10 12:21:40', '244c85b0-5b1a-410b-b24f-1686714ff3c1', NULL, NULL, 'USELESS SUBTEXT'),
(25, 25, 1, 'BOX NUMBER 2', '2022-02-10 12:21:40', '2022-02-10 12:21:40', '6c2b284a-8459-4415-b5f2-8b95bedf176e', NULL, NULL, 'USELESS SUBTEXT'),
(26, 26, 1, 'BOX NUMBER 3', '2022-02-10 12:21:50', '2022-02-10 12:22:06', 'bac4713f-0c3c-4ff8-9821-2c20282ea199', NULL, NULL, 'USELESS SUBTEXT'),
(27, 27, 1, 'BOX NUMBER 3', '2022-02-10 12:22:06', '2022-02-10 12:22:06', '4fd220e7-c0ea-4d12-8c9b-71c9a82b8805', NULL, NULL, 'USELESS SUBTEXT'),
(28, 28, 1, 'BOX NUMBER 4', '2022-02-10 12:22:10', '2022-02-10 12:22:24', '9be88a11-8dd5-4028-a8c5-9428b9d1a337', NULL, NULL, 'USELESS SUBTEXT'),
(29, 29, 1, 'BOX NUMBER 4', '2022-02-10 12:22:24', '2022-02-10 12:22:24', 'b7e229dc-3b3a-48c4-b034-4a142894d964', NULL, NULL, 'USELESS SUBTEXT'),
(30, 30, 1, 'BOX NUMBER 5', '2022-02-10 12:22:26', '2022-02-11 00:55:54', '72b7cc5a-eea4-493f-b295-64f0dc6eb615', NULL, NULL, 'USELESS SUBTEXT'),
(31, 31, 1, 'BOX NUMBER 5', '2022-02-10 12:22:38', '2022-02-10 12:22:38', 'a8b0ef50-652d-4aa4-9bfc-99e01adbc4ae', NULL, NULL, 'USELESS SUBTEXT'),
(32, 32, 1, 'BOX NUMBER 6', '2022-02-10 12:22:51', '2022-02-11 14:23:34', 'b2a0017b-0976-4cd7-93e9-d39e0fa6c33f', NULL, NULL, 'EVEN MORE USELESS'),
(33, 33, 1, 'BOX NUMBER 6', '2022-02-10 12:23:04', '2022-02-10 12:23:04', '2608219a-9e27-47c5-8b17-f2461f902ab3', NULL, NULL, 'NOT USELESS'),
(34, 34, 1, 'Home', '2022-02-10 13:21:39', '2022-02-10 13:21:39', 'a4bafec7-573a-471d-a815-e9dd14cb8bdc', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(35, 35, 1, 'Home', '2022-02-10 13:24:20', '2022-02-10 13:24:20', 'e672138d-423c-4054-8f08-bc267ae5f18a', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(36, 36, 1, 'Home', '2022-02-10 13:24:20', '2022-02-10 13:24:20', '8fe3b667-8c98-4957-a488-c5d14a88afb9', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(37, 37, 1, 'Home', '2022-02-10 13:47:26', '2022-02-10 13:47:26', 'edfdfa83-dd18-4045-83fd-50a1adc1bc5a', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(38, 38, 1, 'Home', '2022-02-10 13:49:16', '2022-02-10 13:49:16', '67e12ed5-d7ac-4b67-8d2b-d9ca150862fd', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(39, 39, 1, 'Home', '2022-02-10 13:49:27', '2022-02-10 13:49:27', '3a2652ff-66a4-4022-ba9a-648adba4a793', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(40, 40, 1, 'Hero Banner Placeholder Light 1024x480 1', '2022-02-10 13:54:40', '2022-02-10 13:54:40', '075fecf7-7953-42d3-a005-aa31a8b30c36', NULL, NULL, NULL),
(42, 42, 1, 'Home', '2022-02-10 13:54:45', '2022-02-10 13:54:45', '6eadf883-24f4-4fc6-9e97-f0966b73569b', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(44, 44, 1, 'Hero Banner Placeholder Light 1024x480 1', '2022-02-10 14:35:45', '2022-02-10 14:35:45', '1634dc95-6ac7-4b4e-9563-d1223393cde5', NULL, NULL, NULL),
(45, 45, 1, 'Home', '2022-02-10 14:35:47', '2022-02-10 14:35:47', '08a9dca4-9cd3-4865-a91f-0eb5d8bd6b93', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(46, 46, 1, NULL, '2022-02-10 18:36:40', '2022-02-10 18:36:40', 'fb2af4fc-9d80-4ba5-b6e2-f17f210714d6', NULL, NULL, NULL),
(47, 47, 1, 'Home', '2022-02-10 18:53:50', '2022-02-10 18:53:50', '85e47e50-6af8-47e2-8995-17c52eef3a6b', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(48, 48, 1, 'Home', '2022-02-10 18:57:25', '2022-02-10 18:57:25', 'ae1f2c66-6f99-4578-9e62-616e49f41b4f', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(50, 50, 1, 'Home', '2022-02-10 21:35:06', '2022-02-10 21:35:06', '75849e0c-9381-4159-998c-6bfd685a688b', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', NULL),
(52, 52, 1, 'Home', '2022-02-10 21:35:25', '2022-02-10 21:35:25', '588ea139-e5b9-4eb0-b223-994a03682b22', 'This is my new title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL),
(54, 54, 1, 'BOX NUMBER 5', '2022-02-11 00:55:54', '2022-02-11 00:55:54', '9017938d-7224-4a3f-9491-5ec6e593e2a4', NULL, NULL, 'USELESS SUBTEXT'),
(56, 56, 1, 'Home', '2022-02-11 00:58:28', '2022-02-11 00:58:28', 'f96d8205-2b4c-4148-907c-23eb335de6c9', 'Why Hello There', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL),
(58, 58, 1, 'BOX NUMBER 6', '2022-02-11 14:23:34', '2022-02-11 14:23:34', 'c35c6754-0ccc-4505-bcc2-2af59521f776', NULL, NULL, 'EVEN MORE USELESS'),
(60, 60, 1, 'Mountains 7ddde89', '2022-02-11 17:01:22', '2022-02-11 17:01:22', '09a5efa0-b2c5-49a6-af6a-103135645deb', NULL, NULL, NULL),
(61, 61, 1, 'Home', '2022-02-11 17:01:25', '2022-02-11 17:01:25', '01e9d8d2-7d54-425b-877f-7ba25774f0e2', 'Why Hello There', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craft_craftidtokens`
--

CREATE TABLE `craft_craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_drafts`
--

CREATE TABLE `craft_drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elementindexsettings`
--

INSERT INTO `craft_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '{\"sources\":{\"section:82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7\":{\"tableAttributes\":{\"1\":\"link\",\"2\":\"field:5\",\"3\":\"field:6\",\"4\":\"postDate\"}}}}', '2022-02-10 12:52:43', '2022-02-10 12:52:43', '1c65c9fb-90e4-4b72-81cf-85178ef6b6a9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2022-02-07 14:39:41', '2022-02-07 14:39:41', NULL, NULL, 'cde32c40-a9df-4ce0-9d10-4cbe06e9724b'),
(2, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-07 14:43:44', '2022-02-11 17:01:25', NULL, NULL, '4bc86946-efb8-47b0-9789-c777b6c7531b'),
(3, 2, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-07 14:43:44', '2022-02-07 14:43:44', NULL, NULL, 'd60eb7cb-4f34-4139-a86e-91e6fddf0cce'),
(4, 2, NULL, 2, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-07 17:45:16', '2022-02-07 17:45:16', NULL, NULL, '7aac79ad-10cb-4e8d-9a0e-21f4ec760d13'),
(6, 2, NULL, 3, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-07 17:45:53', '2022-02-07 17:45:53', NULL, NULL, '785b869d-1c94-429c-b0c0-eb9b319fd137'),
(7, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-02-07 17:48:32', '2022-02-07 17:51:08', NULL, '2022-02-09 00:57:59', '414b4b3d-f3eb-4c19-b4d4-6c389ea8886e'),
(8, 7, NULL, 4, 2, 'craft\\elements\\Entry', 1, 0, '2022-02-07 17:48:32', '2022-02-07 17:48:32', NULL, '2022-02-09 00:57:59', 'ca470f9c-c387-4939-a368-35109a1e5b68'),
(9, 7, NULL, 5, 2, 'craft\\elements\\Entry', 1, 0, '2022-02-07 17:49:30', '2022-02-07 17:49:30', NULL, '2022-02-09 00:57:59', '6964dd8b-9b96-42df-a23c-b60fbf37853d'),
(11, 7, NULL, 6, 2, 'craft\\elements\\Entry', 1, 0, '2022-02-07 17:51:08', '2022-02-07 17:51:08', NULL, '2022-02-09 00:57:59', 'ec747944-dd92-44be-94a7-65114875acce'),
(12, 2, NULL, 7, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-09 01:08:10', '2022-02-09 01:08:10', NULL, NULL, '5cbe797e-9d87-4f86-9321-1a2b3c14648d'),
(14, 2, NULL, 8, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-09 01:16:18', '2022-02-09 01:16:18', NULL, NULL, '7cd17280-f4d7-4824-99d2-d2df5c5ac5be'),
(15, NULL, NULL, NULL, NULL, 'verbb\\navigation\\elements\\Node', 1, 0, '2022-02-09 01:26:45', '2022-02-09 01:26:45', NULL, '2022-02-09 12:40:55', 'a7f578bb-b82e-4086-acce-0c678c9ce5dc'),
(16, NULL, NULL, NULL, NULL, 'verbb\\navigation\\elements\\Node', 1, 0, '2022-02-09 01:27:30', '2022-02-09 01:27:30', NULL, NULL, '2b4196bc-19f0-4dae-8141-7b9ac60927eb'),
(17, NULL, NULL, NULL, NULL, 'verbb\\navigation\\elements\\Node', 1, 0, '2022-02-09 12:41:06', '2022-02-09 12:41:06', NULL, NULL, 'c18e6492-fc25-4cf0-9507-ddf86db19fd8'),
(19, 2, NULL, 9, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-09 23:34:26', '2022-02-09 23:34:26', NULL, NULL, '5fa81c21-0dbc-47cc-a4fc-5f92e4abf19e'),
(20, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:10:07', '2022-02-10 12:18:56', NULL, NULL, 'ce9a6ee3-f594-4b30-b57a-d5c48511a520'),
(21, NULL, NULL, NULL, 5, 'craft\\elements\\Category', 1, 0, '2022-02-10 12:15:36', '2022-02-10 12:15:36', NULL, NULL, '251ecd73-44af-424e-8e88-40f9deb0e946'),
(22, NULL, NULL, NULL, 5, 'craft\\elements\\Category', 1, 0, '2022-02-10 12:15:49', '2022-02-10 12:15:49', NULL, NULL, '66648ade-30ca-4af6-8c54-36a38dec6751'),
(23, 20, NULL, 10, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:18:56', '2022-02-10 12:18:56', NULL, NULL, '6d9cfa48-0ac9-4bda-80a9-04905ad6da7c'),
(24, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:21:22', '2022-02-10 12:21:40', NULL, NULL, 'ef135155-7231-49ce-a014-896d6f00bc2d'),
(25, 24, NULL, 11, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:21:40', '2022-02-10 12:21:40', NULL, NULL, '850a6629-d006-4e13-a3b8-892f1de6e11e'),
(26, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:21:50', '2022-02-10 12:22:06', NULL, NULL, '917496e9-4486-48e8-b4e0-905946dd129d'),
(27, 26, NULL, 12, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:22:06', '2022-02-10 12:22:06', NULL, NULL, 'b79a07d5-c441-4b16-841c-8c2ced15f8c7'),
(28, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:22:10', '2022-02-10 12:22:24', NULL, NULL, '2148d574-7030-4e32-962f-8da0d158bfd3'),
(29, 28, NULL, 13, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:22:24', '2022-02-10 12:22:24', NULL, NULL, 'ab43c4ea-a6b2-4a5f-b526-e685dde466bc'),
(30, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:22:26', '2022-02-11 00:55:54', NULL, NULL, '452a83f4-47fb-4d5d-a85b-1102c4e2719d'),
(31, 30, NULL, 14, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:22:38', '2022-02-10 12:22:38', NULL, NULL, '4335712b-e6c3-4d46-a480-f93575c6ca76'),
(32, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:22:51', '2022-02-11 14:23:34', NULL, NULL, 'bf152630-acbf-44e3-9f8a-2d279b3d3e0e'),
(33, 32, NULL, 15, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-10 12:23:04', '2022-02-10 12:23:04', NULL, NULL, '6538418c-c488-455f-84c8-9e93566cb171'),
(34, 2, NULL, 16, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 13:21:39', '2022-02-10 13:21:39', NULL, NULL, 'a58b03b8-d9b8-4a48-acfa-0cbbb0130e98'),
(35, 2, NULL, 17, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 13:24:19', '2022-02-10 13:24:20', NULL, NULL, '8ed7ef60-a75e-4564-9d36-6c6e1ccbb3c0'),
(36, 2, NULL, 18, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 13:24:20', '2022-02-10 13:24:20', NULL, NULL, 'c4638c0b-4a4e-4522-8eae-8389202edcc7'),
(37, 2, NULL, 19, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 13:47:26', '2022-02-10 13:47:26', NULL, NULL, '5f0cb2f5-d9d0-46cf-9d6d-90f8c678c5c5'),
(38, 2, NULL, 20, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 13:49:16', '2022-02-10 13:49:16', NULL, NULL, '613a9a9e-77b8-4409-b47b-42a961b39f8b'),
(39, 2, NULL, 21, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 13:49:27', '2022-02-10 13:49:27', NULL, NULL, '7c7c02ac-c40e-4bf3-b9d8-89f624f1d2f4'),
(40, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2022-02-10 13:54:40', '2022-02-10 13:54:40', NULL, '2022-02-10 14:42:49', 'fdcab451-4274-41aa-b9b6-f5bcb515d685'),
(42, 2, NULL, 22, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 13:54:45', '2022-02-10 13:54:45', NULL, NULL, '7100227a-ae0b-4ef5-b34c-ba791117e793'),
(44, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2022-02-10 14:35:45', '2022-02-10 14:35:45', NULL, NULL, '8e1b4344-620b-4ac4-a094-fa2c001defb4'),
(45, 2, NULL, 23, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 14:35:47', '2022-02-10 14:35:47', NULL, NULL, '05ed545e-7fac-4713-834e-29072621506e'),
(46, NULL, NULL, NULL, 6, 'craft\\elements\\GlobalSet', 1, 0, '2022-02-10 18:36:40', '2022-02-10 18:36:40', NULL, '2022-02-10 18:40:07', '6d24c1c7-223a-4c9c-b06d-5a8b7b312ab6'),
(47, 2, NULL, 24, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 18:53:50', '2022-02-10 18:53:50', NULL, NULL, '1a8f5f0e-6e64-40a0-bafa-270cfe31f683'),
(48, 2, NULL, 25, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 18:57:25', '2022-02-10 18:57:25', NULL, NULL, '04bb514f-e0e8-443d-a242-f4ea7795fc8a'),
(50, 2, NULL, 26, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 21:35:06', '2022-02-10 21:35:06', NULL, NULL, '80029abe-674a-480a-8eb8-c0480cabfe35'),
(52, 2, NULL, 27, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-10 21:35:25', '2022-02-10 21:35:25', NULL, NULL, '07051976-c9b4-46a1-ae87-80d09f4e1c11'),
(54, 30, NULL, 28, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-11 00:55:54', '2022-02-11 00:55:54', NULL, NULL, '142727dd-3e8c-476b-a68a-009cf38d66a9'),
(56, 2, NULL, 29, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-11 00:58:28', '2022-02-11 00:58:28', NULL, NULL, '273d4d50-3c9a-4af9-97af-59c6396ac645'),
(58, 32, NULL, 30, 4, 'craft\\elements\\Entry', 1, 0, '2022-02-11 14:23:34', '2022-02-11 14:23:34', NULL, NULL, '8dc52db8-2802-490b-8396-76581ce7dfbf'),
(60, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2022-02-11 17:01:22', '2022-02-11 17:01:22', NULL, NULL, '839becfa-2672-4225-8a3d-67e3a3d74012'),
(61, 2, NULL, 31, 1, 'craft\\elements\\Entry', 1, 0, '2022-02-11 17:01:25', '2022-02-11 17:01:25', NULL, NULL, '2ab810fb-7655-4e04-a40b-9d826394334a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_sites`
--

CREATE TABLE `craft_elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements_sites`
--

INSERT INTO `craft_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2022-02-07 14:39:41', '2022-02-07 14:39:41', '422388d1-3ebf-463c-8a4f-fb9786661a49'),
(2, 2, 1, 'home', '__home__', 1, '2022-02-07 14:43:44', '2022-02-10 13:49:27', 'be30389a-de69-4da1-bff5-93d4add121e3'),
(3, 3, 1, 'home', '__home__', 1, '2022-02-07 14:43:44', '2022-02-07 14:43:44', '2fbfd477-1d51-46c9-940d-2341128d89b2'),
(4, 4, 1, 'home', '__home__', 1, '2022-02-07 17:45:16', '2022-02-07 17:45:16', '394c2166-f0b6-441d-b420-efdad8d821fa'),
(6, 6, 1, 'home', '__home__', 1, '2022-02-07 17:45:53', '2022-02-07 17:45:53', '0f756961-7329-49e3-968b-f8c117b7355a'),
(7, 7, 1, 'about', 'about', 1, '2022-02-07 17:48:32', '2022-02-07 17:48:32', 'bbac5a20-1598-40f9-96b6-a5913e08e6a4'),
(8, 8, 1, 'about', 'about', 1, '2022-02-07 17:48:32', '2022-02-07 17:48:32', 'b9348cc9-2d84-480b-b861-3f5d4a0f5d0c'),
(9, 9, 1, 'about', 'about', 1, '2022-02-07 17:49:30', '2022-02-07 17:49:30', '696784aa-4b0b-4289-bd46-e126410b973b'),
(11, 11, 1, 'about', 'about', 1, '2022-02-07 17:51:08', '2022-02-07 17:51:08', '542efe5f-3194-4edf-bd28-1b0d52e552f7'),
(12, 12, 1, 'home', '__home__', 1, '2022-02-09 01:08:10', '2022-02-09 01:08:10', '1b1925fc-a3f7-47d6-851f-3dabd7118f9f'),
(14, 14, 1, 'home', '__home__', 1, '2022-02-09 01:16:18', '2022-02-09 01:16:18', '17bd9c39-6384-4c37-a61a-b70352f44594'),
(15, 15, 1, '1', NULL, 1, '2022-02-09 01:26:45', '2022-02-09 01:26:45', '9dfdfe08-c30a-4c80-9e24-7547cd35b763'),
(16, 16, 1, '1', NULL, 1, '2022-02-09 01:27:30', '2022-02-09 01:27:30', 'ab641700-1ffa-4178-9530-2b4cb79ab6f0'),
(17, 17, 1, '1', NULL, 1, '2022-02-09 12:41:06', '2022-02-09 12:41:06', '56e8f1a7-efda-461e-84ab-1e3534c5369c'),
(19, 19, 1, 'home', '__home__', 1, '2022-02-09 23:34:26', '2022-02-09 23:34:26', '0e4edd56-982b-43e8-92a5-bba9e67f1ec7'),
(20, 20, 1, 'box-number-1', 'boxes/box-number-1', 1, '2022-02-10 12:10:07', '2022-02-10 12:18:45', '9fddb83d-2b47-4124-90ab-2931f88f3dde'),
(21, 21, 1, 'outdoor', 'category/outdoor', 1, '2022-02-10 12:15:36', '2022-02-10 13:14:50', 'b26bb9fb-fe6f-487b-8d91-e29c088769b9'),
(22, 22, 1, 'technology', 'category/technology', 1, '2022-02-10 12:15:49', '2022-02-10 13:14:50', 'b91d5b4e-13ae-415c-b445-3a1d9799b31c'),
(23, 23, 1, 'box-number-1', 'boxes/box-number-1', 1, '2022-02-10 12:18:56', '2022-02-10 12:18:56', '1b40a6bd-0e66-42cd-bc88-c8184bc8a994'),
(24, 24, 1, 'box-number-2', 'boxes/box-number-2', 1, '2022-02-10 12:21:22', '2022-02-10 12:21:29', '5b808c37-b6f0-427a-a8cf-14abe041e34f'),
(25, 25, 1, 'box-number-2', 'boxes/box-number-2', 1, '2022-02-10 12:21:40', '2022-02-10 12:21:40', 'beff0a34-0e3f-4a55-ac83-364b77a6b66d'),
(26, 26, 1, 'box-number-3', 'boxes/box-number-3', 1, '2022-02-10 12:21:50', '2022-02-10 12:21:57', 'bdd06924-30df-42ff-92af-c37bc87e4ec9'),
(27, 27, 1, 'box-number-3', 'boxes/box-number-3', 1, '2022-02-10 12:22:06', '2022-02-10 12:22:06', '0209993a-d91e-459c-ae5b-78b9c2c998c9'),
(28, 28, 1, 'box-number-4', 'boxes/box-number-4', 1, '2022-02-10 12:22:10', '2022-02-10 12:22:14', 'cfd85293-7095-4f9b-bded-9b767836e575'),
(29, 29, 1, 'box-number-4', 'boxes/box-number-4', 1, '2022-02-10 12:22:24', '2022-02-10 12:22:24', '408a1293-960d-49c1-96f4-1bb910dc2e8f'),
(30, 30, 1, 'box-number-5', 'boxes/box-number-5', 1, '2022-02-10 12:22:26', '2022-02-10 12:22:29', '22a9b95f-f43f-4858-bdad-446c28b8e496'),
(31, 31, 1, 'box-number-5', 'boxes/box-number-5', 1, '2022-02-10 12:22:38', '2022-02-10 12:22:38', 'ba76f10b-279a-40fb-bb6c-ccdcabbfa5e8'),
(32, 32, 1, 'box-number-6', 'boxes/box-number-6', 1, '2022-02-10 12:22:51', '2022-02-10 12:22:55', '31fb3d22-cbba-4ad6-90f5-87efba6a9318'),
(33, 33, 1, 'box-number-6', 'boxes/box-number-6', 1, '2022-02-10 12:23:04', '2022-02-10 12:23:04', 'd52220d0-46d9-4912-b10a-9543346221ee'),
(34, 34, 1, 'home', '__home__', 1, '2022-02-10 13:21:39', '2022-02-10 13:21:39', 'a4c5f92d-5b1f-47f2-875e-5019f8fac24a'),
(35, 35, 1, 'home', '__home__', 1, '2022-02-10 13:24:20', '2022-02-10 13:24:20', '53e42d62-5272-48bd-8de2-fc39e01a6b25'),
(36, 36, 1, 'home', '__home__', 1, '2022-02-10 13:24:20', '2022-02-10 13:24:20', '81c5b057-3afc-41c0-ba72-9e76c8062532'),
(37, 37, 1, 'home', NULL, 1, '2022-02-10 13:47:26', '2022-02-10 13:47:26', 'a0a7a681-5293-4b59-b307-6e0259433ee4'),
(38, 38, 1, 'home', NULL, 1, '2022-02-10 13:49:16', '2022-02-10 13:49:16', 'c6419f46-5e38-4191-8177-f35a7e5a5851'),
(39, 39, 1, 'home', '__home__', 1, '2022-02-10 13:49:27', '2022-02-10 13:49:27', 'be47b327-7409-4e6c-8e29-a05e45e0e94e'),
(40, 40, 1, NULL, NULL, 1, '2022-02-10 13:54:40', '2022-02-10 13:54:40', '978d8ecf-b6e8-4ace-8b88-a67582a1f399'),
(42, 42, 1, 'home', '__home__', 1, '2022-02-10 13:54:45', '2022-02-10 13:54:45', '5a54b604-44b3-4b5e-9275-55e68d6cd4ef'),
(44, 44, 1, NULL, NULL, 1, '2022-02-10 14:35:45', '2022-02-10 14:35:45', '924caa36-443e-4d4d-aa11-1b9fef8aa2a5'),
(45, 45, 1, 'home', '__home__', 1, '2022-02-10 14:35:47', '2022-02-10 14:35:47', 'bbdd9c87-5aea-4f29-a303-d46977df3be9'),
(46, 46, 1, NULL, NULL, 1, '2022-02-10 18:36:40', '2022-02-10 18:36:40', 'b5b94744-1c2e-49c3-8707-ba7231f6152d'),
(47, 47, 1, 'home', '__home__', 1, '2022-02-10 18:53:50', '2022-02-10 18:53:50', 'fb1847e4-7c64-46d3-89f7-ada5a28189f2'),
(48, 48, 1, 'home', '__home__', 1, '2022-02-10 18:57:25', '2022-02-10 18:57:25', '55088cc8-42b1-400d-b181-030c79e3ed3b'),
(50, 50, 1, 'home', '__home__', 1, '2022-02-10 21:35:06', '2022-02-10 21:35:06', '22e7853b-564f-454a-9b11-61af07385cc1'),
(52, 52, 1, 'home', '__home__', 1, '2022-02-10 21:35:25', '2022-02-10 21:35:25', 'de54f4e5-744b-40ee-baa7-b57a0df5681a'),
(54, 54, 1, 'box-number-5', 'boxes/box-number-5', 1, '2022-02-11 00:55:54', '2022-02-11 00:55:54', 'd482d854-dbb4-4594-bb08-5884a54cf3f7'),
(56, 56, 1, 'home', '__home__', 1, '2022-02-11 00:58:28', '2022-02-11 00:58:28', 'cd48eb66-ecb0-45ab-be52-1441768480ef'),
(58, 58, 1, 'box-number-6', 'boxes/box-number-6', 1, '2022-02-11 14:23:34', '2022-02-11 14:23:34', '894df5e7-6b2a-4d40-8a04-2a22716de347'),
(60, 60, 1, NULL, NULL, 1, '2022-02-11 17:01:22', '2022-02-11 17:01:22', '952c0769-2f54-4a1a-8519-941927651b9e'),
(61, 61, 1, 'home', '__home__', 1, '2022-02-11 17:01:25', '2022-02-11 17:01:25', '1798acd8-e121-4054-8e25-f2b97f09f18e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-07 14:43:44', '2022-02-07 14:43:44', 'a5e7fc82-25f0-46d9-8368-30de3b6a0752'),
(3, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-07 14:43:44', '2022-02-07 14:43:44', '2e6dac81-fba5-4d59-925d-42c13d92900e'),
(4, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-07 17:45:16', '2022-02-07 17:45:16', '2990c5ef-e181-46b0-ae68-61ab76f8807f'),
(6, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-07 17:45:53', '2022-02-07 17:45:53', 'd906f34e-2ea9-438b-90b4-242419d48c1b'),
(7, 2, NULL, 2, NULL, '2022-02-07 17:48:00', NULL, 1, '2022-02-07 17:48:32', '2022-02-07 17:48:32', '8105b808-d136-4306-8761-67c58baf6385'),
(8, 2, NULL, 2, NULL, '2022-02-07 17:48:00', NULL, NULL, '2022-02-07 17:48:32', '2022-02-07 17:48:32', '60fdcecd-5c04-4644-9dca-0178170d59f5'),
(9, 2, NULL, 2, NULL, '2022-02-07 17:48:00', NULL, NULL, '2022-02-07 17:49:30', '2022-02-07 17:49:30', 'e030be2c-a96c-44ef-8c28-7207afb9064e'),
(11, 2, NULL, 2, NULL, '2022-02-07 17:48:00', NULL, NULL, '2022-02-07 17:51:08', '2022-02-07 17:51:08', 'f3016faa-701c-43f7-85f9-7a7a661efd27'),
(12, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-09 01:08:10', '2022-02-09 01:08:10', 'c2580d4d-43bf-4e1c-8085-ee6fda6bdec8'),
(14, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-09 01:16:18', '2022-02-09 01:16:18', '43c17b7d-55d8-4dc3-aa18-a95f6e3272e4'),
(19, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-09 23:34:26', '2022-02-09 23:34:26', '7ccba6e7-6047-4bd5-ac2c-fe646b892d20'),
(20, 3, NULL, 3, 1, '2022-02-10 12:10:00', NULL, NULL, '2022-02-10 12:10:07', '2022-02-10 12:10:07', '5685b0da-3c20-447d-b46d-339f230bddc6'),
(23, 3, NULL, 3, 1, '2022-02-10 12:10:00', NULL, NULL, '2022-02-10 12:18:56', '2022-02-10 12:18:56', 'd8b27f0e-2974-4fce-b88e-cb7ad8457b5e'),
(24, 3, NULL, 3, 1, '2022-02-10 12:21:00', NULL, NULL, '2022-02-10 12:21:22', '2022-02-10 12:21:22', 'cb411030-d2a7-49ae-94f9-90d5e7a5c584'),
(25, 3, NULL, 3, 1, '2022-02-10 12:21:00', NULL, NULL, '2022-02-10 12:21:40', '2022-02-10 12:21:40', '40b3a0b8-86ec-4ad7-b5cf-55b7ba89e928'),
(26, 3, NULL, 3, 1, '2022-02-10 12:21:00', NULL, NULL, '2022-02-10 12:21:50', '2022-02-10 12:21:50', '3293264f-ea56-4ec2-a9be-2a9a80082c66'),
(27, 3, NULL, 3, 1, '2022-02-10 12:21:00', NULL, NULL, '2022-02-10 12:22:06', '2022-02-10 12:22:06', 'd6119f12-6afe-48c0-a2f9-8ba8cfa10a8e'),
(28, 3, NULL, 3, 1, '2022-02-10 12:22:00', NULL, NULL, '2022-02-10 12:22:10', '2022-02-10 12:22:10', '01b752c7-5080-49f7-8aec-8fb94909b58a'),
(29, 3, NULL, 3, 1, '2022-02-10 12:22:00', NULL, NULL, '2022-02-10 12:22:24', '2022-02-10 12:22:24', 'bc034aeb-ba73-4ef7-8c82-40ae9716623e'),
(30, 3, NULL, 3, 1, '2022-02-10 12:22:00', NULL, NULL, '2022-02-10 12:22:26', '2022-02-10 12:22:26', '2b9dd5e3-a6de-4d10-a790-d846fbed9e7c'),
(31, 3, NULL, 3, 1, '2022-02-10 12:22:00', NULL, NULL, '2022-02-10 12:22:38', '2022-02-10 12:22:38', '74dd26a5-b6b3-4509-b9bf-87e38e4b2e67'),
(32, 3, NULL, 3, 1, '2022-02-10 12:22:00', NULL, NULL, '2022-02-10 12:22:51', '2022-02-10 12:22:51', '5571c5bd-61c1-4979-8b7c-50ff191b8b71'),
(33, 3, NULL, 3, 1, '2022-02-10 12:22:00', NULL, NULL, '2022-02-10 12:23:04', '2022-02-10 12:23:04', 'dfc6cfe8-0366-485a-9870-36dd8d532a03'),
(34, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 13:21:39', '2022-02-10 13:21:39', '1ffdcccf-e632-4a95-8d5c-f22472ba9159'),
(35, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 13:24:20', '2022-02-10 13:24:20', '9dfd573a-1f17-422b-985c-f668cccff282'),
(36, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 13:24:20', '2022-02-10 13:24:20', '8e5e557d-83a8-4292-8477-0bb04365c167'),
(37, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 13:47:26', '2022-02-10 13:47:26', 'a8f59d25-e97d-416a-9c64-0812e703e7bb'),
(38, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 13:49:16', '2022-02-10 13:49:16', '98ea8ccf-beb8-4ef9-87b6-3a6df0c961ae'),
(39, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 13:49:27', '2022-02-10 13:49:27', 'e3ea9389-e22d-4c6d-b647-d00176243446'),
(42, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 13:54:45', '2022-02-10 13:54:45', '809421d7-dc44-4c2f-a491-23b8aa831a9a'),
(45, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 14:35:47', '2022-02-10 14:35:47', 'c8b8aad7-b9d4-40d0-afd4-c963fa322578'),
(47, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 18:53:50', '2022-02-10 18:53:50', '5610effa-2b1d-42c0-b9ce-543120fc0c82'),
(48, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 18:57:25', '2022-02-10 18:57:25', '5e7ed4f7-4c12-4ebe-98d4-dcb795eb5cf1'),
(50, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 21:35:06', '2022-02-10 21:35:06', 'd433421d-3d27-4052-8284-e0bc297b0863'),
(52, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-10 21:35:25', '2022-02-10 21:35:25', 'c8e75110-a772-407c-968c-c56e00fd29a9'),
(54, 3, NULL, 3, 1, '2022-02-10 12:22:00', NULL, NULL, '2022-02-11 00:55:54', '2022-02-11 00:55:54', 'a7527534-b8d7-470e-8f9e-454820511bfa'),
(56, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-11 00:58:28', '2022-02-11 00:58:28', 'eeefbca1-92b7-4471-9ce9-86de671217ab'),
(58, 3, NULL, 3, 1, '2022-02-10 12:22:00', NULL, NULL, '2022-02-11 14:23:34', '2022-02-11 14:23:34', 'e0643805-d79e-4ab3-a11a-3028add7b15a'),
(61, 1, NULL, 1, NULL, '2022-02-07 14:43:00', NULL, NULL, '2022-02-11 17:01:25', '2022-02-11 17:01:25', 'fbd698e4-32ff-41af-9a90-d6230daf736e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Home', 'home', 0, 'site', NULL, '{section.name|raw}', 1, '2022-02-07 14:43:44', '2022-02-07 14:43:44', NULL, 'd309aa79-2abc-449b-8ce0-21f361bebfe7'),
(2, 2, 2, 'About', 'about', 0, 'site', NULL, '{section.name|raw}', 1, '2022-02-07 17:48:32', '2022-02-07 17:48:32', '2022-02-09 00:57:59', 'af927061-bfc5-4fa0-9186-b4c05429c93f'),
(3, 3, 4, 'Default', 'default', 1, 'site', NULL, NULL, 1, '2022-02-09 13:55:55', '2022-02-09 13:55:55', NULL, 'bf346d29-2efa-4e20-a368-5bc907d79d0a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2022-02-07 14:39:41', '2022-02-07 14:39:41', NULL, '432101b2-60c4-4648-85d0-ce89ccf2dad2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 1, 5, 2, 0, 1, '2022-02-09 01:08:10', '2022-02-09 01:08:10', '59da787f-a0c1-4870-a58a-af7abd6b4406'),
(4, 1, 5, 3, 0, 2, '2022-02-09 01:08:10', '2022-02-09 01:08:10', '1a8798db-4043-44c4-9342-7a13aea06008'),
(5, 1, 5, 4, 0, 3, '2022-02-09 01:08:10', '2022-02-09 01:08:10', 'e4e99e90-d47c-4023-a61c-fab8f22ce852'),
(7, 4, 10, 5, 0, 1, '2022-02-10 12:18:09', '2022-02-10 12:18:09', 'd0d47c13-e0d1-4578-96e5-924f411a9d22'),
(8, 4, 10, 6, 0, 2, '2022-02-10 12:18:09', '2022-02-10 12:18:09', '4de390f1-fe76-4732-adfd-6dfad7a8e827'),
(9, 6, 14, 2, 0, 0, '2022-02-10 18:36:40', '2022-02-10 18:36:40', '2a32a9fc-51b4-4160-86e7-39feeaa74850'),
(10, 6, 14, 4, 0, 1, '2022-02-10 18:36:40', '2022-02-10 18:36:40', 'd395e076-2f52-4d35-9ac3-f7e286858dff'),
(11, 6, 14, 3, 0, 2, '2022-02-10 18:36:40', '2022-02-10 18:36:40', '03ba34a4-8020-4a1c-b37c-612bd0ce1999');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2022-02-07 14:43:44', '2022-02-07 14:43:44', NULL, 'b76ab467-6942-4381-9913-574513c8164f'),
(2, 'craft\\elements\\Entry', '2022-02-07 17:48:32', '2022-02-07 17:48:32', '2022-02-09 00:57:59', '577890ec-6dde-4f66-8885-ed57ca13eaa9'),
(3, 'craft\\elements\\Asset', '2022-02-09 01:12:55', '2022-02-09 01:12:55', NULL, '184347f2-ce98-4330-9d9d-a96389f3b7fc'),
(4, 'craft\\elements\\Entry', '2022-02-09 13:55:55', '2022-02-09 13:55:55', NULL, 'b3ac4fdf-c900-4a2b-af74-5e859546cb70'),
(5, 'craft\\elements\\Category', '2022-02-10 12:12:32', '2022-02-10 12:12:32', NULL, '03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c'),
(6, 'craft\\elements\\GlobalSet', '2022-02-10 18:36:40', '2022-02-10 18:36:40', '2022-02-10 18:40:07', '8e9719ed-1515-4dc1-a08d-190329e87df7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elements` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 2, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"9bd0d24b-5aa4-42c6-a492-55047d09f2a6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2022-02-07 17:49:30', '2022-02-07 17:49:30', 'af9140f8-5c75-4562-97e6-8a6bee9b6117'),
(5, 1, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"22b10151-540d-449f-b8e2-c6a4cc4887e9\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"db1540ab-4b16-429c-95da-8f7bc67f41d5\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5a952317-2f39-4497-a59e-6b24ded4693d\"}]', 1, '2022-02-09 01:08:10', '2022-02-09 01:08:10', '2cc82bdc-1fcf-408c-9e9e-0911ca60e7ef'),
(10, 4, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e31b7f96-999f-4685-b515-0b2bff1c87b9\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"ebbd4619-5032-4884-b341-d2788871984a\"}]', 1, '2022-02-10 12:18:09', '2022-02-10 12:18:09', '93b2e21e-e5d1-4a36-8852-b694a1c646c4'),
(12, 5, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2022-02-10 13:14:49', '2022-02-10 13:14:49', '7cd977c0-8e5f-46eb-9e4e-f879d14c55ae'),
(14, 6, 'variables', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"22b10151-540d-449f-b8e2-c6a4cc4887e9\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5a952317-2f39-4497-a59e-6b24ded4693d\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"db1540ab-4b16-429c-95da-8f7bc67f41d5\"}]', 1, '2022-02-10 18:36:40', '2022-02-10 18:36:40', 'c4ccaef2-8495-4556-ad74-6c41acf803ad'),
(15, 3, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2022-02-10 19:33:21', '2022-02-10 19:33:21', '343814c3-d1e1-4e85-8335-e528620fcb84');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `translationKeyFormat` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 'Header Title', 'headerTitle', 'global', 'mxdhqtxh', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-02-09 01:04:59', '2022-02-09 01:04:59', '22b10151-540d-449f-b8e2-c6a4cc4887e9'),
(3, 1, 'Header Subtitle', 'headerSubtitle', 'global', 'tnkgbpbu', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-02-09 01:05:22', '2022-02-09 01:05:22', 'db1540ab-4b16-429c-95da-8f7bc67f41d5'),
(4, 1, 'Hero Image', 'heroImage', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:e93490a4-1acf-4c1d-b62d-eb7127e450e6\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:e93490a4-1acf-4c1d-b62d-eb7127e450e6\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2022-02-09 01:06:14', '2022-02-09 01:13:33', '5a952317-2f39-4497-a59e-6b24ded4693d'),
(5, 1, 'Box Subtitle', 'boxSubtitle', 'global', 'digvoubv', 'Subtitle Text field for the Boxes', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-02-10 12:09:34', '2022-02-10 12:17:43', 'e31b7f96-999f-4685-b515-0b2bff1c87b9'),
(6, 1, 'Category Field', 'categoryField', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"allowSelfRelations\":false,\"branchLimit\":\"\",\"limit\":null,\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":false,\"source\":\"group:5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83\",\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2022-02-10 12:17:18', '2022-02-10 12:17:18', 'ebbd4619-5032-4884-b341-d2788871984a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_globalsets`
--

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(46, 'Global Variables', 'globalVariables', 6, 1, '2022-02-10 18:36:40', '2022-02-10 18:36:40', '7076be79-9227-4494-955e-873b2150423a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_gqlschemas`
--

CREATE TABLE `craft_gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_gqltokens`
--

CREATE TABLE `craft_gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.7.31', '3.7.8', 0, 'wwytxvnufgyf', '2@fsqiqtjcaw', '2022-02-07 14:39:41', '2022-02-10 19:33:21', '0e96350a-2433-42d6-b8f2-d9e296afa252');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'bb16787f-a7a9-40fb-940e-3f6f6a9a2fa1'),
(2, 'craft', 'm150403_183908_migrations_table_changes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a3d775d0-c795-42fc-8df9-87cc6fa3a071'),
(3, 'craft', 'm150403_184247_plugins_table_changes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '8c632097-fb58-4dc6-88dd-29fb45cfb6b4'),
(4, 'craft', 'm150403_184533_field_version', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '6e944dbf-d244-4946-9274-bd363cc0ca75'),
(5, 'craft', 'm150403_184729_type_columns', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a7c392db-07c7-4afb-bc80-a3cd02b83c46'),
(6, 'craft', 'm150403_185142_volumes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '33989a5e-0b62-4509-9ab6-bd7f52670a64'),
(7, 'craft', 'm150428_231346_userpreferences', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '056aa725-e669-4026-8243-90f22d6f3526'),
(8, 'craft', 'm150519_150900_fieldversion_conversion', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'b56756ac-6b8a-4e8d-8d5d-763177c50f7c'),
(9, 'craft', 'm150617_213829_update_email_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '3ff6d2c9-dec9-45c3-97ac-a0c5b24fadd3'),
(10, 'craft', 'm150721_124739_templatecachequeries', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a6f3ab75-8483-4a8b-bc7d-a7c54c51c167'),
(11, 'craft', 'm150724_140822_adjust_quality_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '862379df-3cb9-4b3f-b5d1-4f3a1c2274b9'),
(12, 'craft', 'm150815_133521_last_login_attempt_ip', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '77df6415-0cab-4e33-b039-fc301dc31997'),
(13, 'craft', 'm151002_095935_volume_cache_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'eadc13f4-a2bc-4dae-8fae-872979772887'),
(14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '974ebb33-d385-4b57-b856-ec6f339daa17'),
(15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '3aac47fe-c61d-408e-a47b-80a539850b84'),
(16, 'craft', 'm151209_000000_move_logo', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '26ee710b-324d-4c00-9c84-341d48f87dcc'),
(17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '9f50a99f-ef9e-4dc8-8f56-2adb10fe1331'),
(18, 'craft', 'm151215_000000_rename_asset_permissions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '213bff87-1f04-493a-bcd2-96e37248a3f5'),
(19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2492c9bc-f8b3-4a90-a707-b04e2ff772bb'),
(20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c42a46e5-e9cc-47e5-aa7a-01b6a8c49044'),
(21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '83370a9e-a87b-461c-8319-b5589f3fb274'),
(22, 'craft', 'm160727_194637_column_cleanup', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c031b2f6-54ea-4f38-bbde-2a0bc43a61b1'),
(23, 'craft', 'm160804_110002_userphotos_to_assets', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '0a3601f1-936f-4ca3-b6bb-84a10fb9c81a'),
(24, 'craft', 'm160807_144858_sites', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2992e451-4373-497b-b275-9f58d7d3af95'),
(25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c7606f82-64e1-4e36-a78c-ba7511bde2c9'),
(26, 'craft', 'm160830_000000_asset_index_uri_increase', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '6ed3afac-5b67-446f-a46a-652bdd87a0f1'),
(27, 'craft', 'm160912_230520_require_entry_type_id', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '8d1a6c44-6b84-4f12-8306-bb7b8e08b3c5'),
(28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '18a6a5e7-d65e-4675-b5bc-83039e8f1a9d'),
(29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '265eeb43-e6e1-4267-a299-1abeb1e043b2'),
(30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '6234889b-dee8-4f91-a8f9-a92af9b3eacf'),
(31, 'craft', 'm160925_113941_route_uri_parts', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '060e546f-f67e-44ea-8f11-f7a4765cf188'),
(32, 'craft', 'm161006_205918_schemaVersion_not_null', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '70305107-bbe7-4020-8846-fa34b1c86d75'),
(33, 'craft', 'm161007_130653_update_email_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '1cca4d5f-10df-45a5-bfb8-25fc915448c9'),
(34, 'craft', 'm161013_175052_newParentId', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '20098f41-8cd5-4308-98f2-992c8515d66e'),
(35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c028b2ed-1645-4e2c-92b8-6f30c515725f'),
(36, 'craft', 'm161021_182140_rename_get_help_widget', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c66b61db-a54f-42fa-83de-1fec6abca3aa'),
(37, 'craft', 'm161025_000000_fix_char_columns', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '0e84814c-6a54-4424-b3fc-62b39c3bc4c7'),
(38, 'craft', 'm161029_124145_email_message_languages', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'be92ba35-91dd-451c-8825-db58a6453513'),
(39, 'craft', 'm161108_000000_new_version_format', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'd2a84cc0-0490-4989-812d-023e753c5872'),
(40, 'craft', 'm161109_000000_index_shuffle', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'bdc9bb78-4be9-4130-95de-d4b477995fae'),
(41, 'craft', 'm161122_185500_no_craft_app', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'defe6177-2c81-47ba-98e9-2c0c9a1c54d2'),
(42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '5e7f8a56-01cd-4ae1-98c6-0ff162bc4c7d'),
(43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '58d956ab-4de6-468a-99de-5d17ac64a045'),
(44, 'craft', 'm170114_161144_udates_permission', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'f4895dd9-1ede-421f-a67b-79dcfb61cda6'),
(45, 'craft', 'm170120_000000_schema_cleanup', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'd04f521b-1889-49e1-977f-af2e8295bd2d'),
(46, 'craft', 'm170126_000000_assets_focal_point', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '70634eaa-d35a-45e8-97d8-7366126ac59a'),
(47, 'craft', 'm170206_142126_system_name', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'bddc679f-c582-46d9-95f3-84e0e46121de'),
(48, 'craft', 'm170217_044740_category_branch_limits', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'e786d92e-d1c5-4308-ab8b-c22593876e0b'),
(49, 'craft', 'm170217_120224_asset_indexing_columns', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'f376c0d7-ac11-4bab-bc34-bbafb9906ae8'),
(50, 'craft', 'm170223_224012_plain_text_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '45ce5e6e-5e0a-4a13-bd55-da658f4750eb'),
(51, 'craft', 'm170227_120814_focal_point_percentage', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'fd9fdd0d-96ef-4854-8e9c-c7b2b783ce75'),
(52, 'craft', 'm170228_171113_system_messages', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'bb9f6ed1-99cc-422b-a091-1fe1112aa608'),
(53, 'craft', 'm170303_140500_asset_field_source_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '1152d379-0484-4d29-89eb-6d7dcbc3dc6d'),
(54, 'craft', 'm170306_150500_asset_temporary_uploads', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c41dddf6-6cf6-412b-9f3e-04fc465a23bf'),
(55, 'craft', 'm170523_190652_element_field_layout_ids', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '33e85684-53f1-4c83-a2af-e9b36dcdc864'),
(56, 'craft', 'm170621_195237_format_plugin_handles', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'acb9fcfb-4119-4eb6-907f-6e7214d83531'),
(57, 'craft', 'm170630_161027_deprecation_line_nullable', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2870f7ee-b876-4529-8b50-0f86a1595272'),
(58, 'craft', 'm170630_161028_deprecation_changes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '553712ad-3955-44b3-ab6c-fd6beab0a825'),
(59, 'craft', 'm170703_181539_plugins_table_tweaks', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a25d3ff4-4d05-439e-b34d-fe0f083cd2c9'),
(60, 'craft', 'm170704_134916_sites_tables', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4d260065-3874-40cc-9536-9a9e9e9502ef'),
(61, 'craft', 'm170706_183216_rename_sequences', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2ff066d6-3f4e-4347-9882-1cfbf1fabaaf'),
(62, 'craft', 'm170707_094758_delete_compiled_traits', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '3824ce22-5561-4c12-902d-461349e206f8'),
(63, 'craft', 'm170731_190138_drop_asset_packagist', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '5bcc093a-b755-464d-9636-8fafa07aa677'),
(64, 'craft', 'm170810_201318_create_queue_table', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2421764a-7015-467d-b7f9-2728493c8334'),
(65, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '98a8b1e5-2e4a-405f-b608-4fc858f9f457'),
(66, 'craft', 'm170914_204621_asset_cache_shuffle', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'eda5b018-38ad-4568-a2f4-1f7766c03a5d'),
(67, 'craft', 'm171011_214115_site_groups', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '233a128c-f589-4681-a2e2-5d7488b79c8e'),
(68, 'craft', 'm171012_151440_primary_site', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '0d17e307-ea60-4aca-b3a3-b04eeb4d6273'),
(69, 'craft', 'm171013_142500_transform_interlace', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '721c42b7-88e8-46c7-82f4-d174aeb7f80c'),
(70, 'craft', 'm171016_092553_drop_position_select', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '59dabcfa-85d8-4873-8864-92117ccfc436'),
(71, 'craft', 'm171016_221244_less_strict_translation_method', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'b430ab96-516b-477e-99c9-2c84ff27af72'),
(72, 'craft', 'm171107_000000_assign_group_permissions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '1912d4ff-ad4f-43fd-a363-0b0f5e43767a'),
(73, 'craft', 'm171117_000001_templatecache_index_tune', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'b1aa5fff-e3fe-4927-af23-1d17cb484943'),
(74, 'craft', 'm171126_105927_disabled_plugins', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c68a067c-b0fc-479b-8538-d071a1a91d95'),
(75, 'craft', 'm171130_214407_craftidtokens_table', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '3ca9c1a6-c978-4471-8e7e-7f03a6f470b5'),
(76, 'craft', 'm171202_004225_update_email_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'bfc4c766-bafe-463b-81f8-052dfdf20a47'),
(77, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'd882ad89-7d8f-4ccc-9d95-7bd96d75f277'),
(78, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '83beb972-7544-47e0-b865-9e820728152a'),
(79, 'craft', 'm171218_143135_longtext_query_column', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4d93b02e-2081-47f6-b906-031bea57ceda'),
(80, 'craft', 'm171231_055546_environment_variables_to_aliases', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '9cf070b0-a62f-4a72-a467-fdad5aef8f95'),
(81, 'craft', 'm180113_153740_drop_users_archived_column', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'f6a09d8c-1d88-41a5-a3b3-62670389a439'),
(82, 'craft', 'm180122_213433_propagate_entries_setting', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '9c79ca76-376c-4b9a-b979-d4a4ba622d3d'),
(83, 'craft', 'm180124_230459_fix_propagate_entries_values', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '338ed983-8f26-483f-998c-c8526b4cafff'),
(84, 'craft', 'm180128_235202_set_tag_slugs', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '0621b651-f90d-4b7c-ac35-1ab923c79faf'),
(85, 'craft', 'm180202_185551_fix_focal_points', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c8aecd19-5f59-44b9-8047-daa6b94b095f'),
(86, 'craft', 'm180217_172123_tiny_ints', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '9d5ee5ae-30dc-4a78-8449-6a43c3091df9'),
(87, 'craft', 'm180321_233505_small_ints', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'befb84ce-389f-46e7-949c-3275fca57dbc'),
(88, 'craft', 'm180404_182320_edition_changes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '862a3e9f-62c5-43a4-b28a-5d1105125593'),
(89, 'craft', 'm180411_102218_fix_db_routes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '7afafb31-611b-4dee-b387-c78c90282ea6'),
(90, 'craft', 'm180416_205628_resourcepaths_table', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '9afb61d3-e0ad-40a4-b088-607379736279'),
(91, 'craft', 'm180418_205713_widget_cleanup', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '086508e2-3808-4085-9dc8-e840ad3fe8c6'),
(92, 'craft', 'm180425_203349_searchable_fields', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '734afcc5-9f52-4cb2-bb29-e9fea6048768'),
(93, 'craft', 'm180516_153000_uids_in_field_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '29f37896-8475-4d5d-bafc-0341b3026363'),
(94, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'd482de50-e751-45c5-8db6-8cb7da3e584c'),
(95, 'craft', 'm180518_173000_permissions_to_uid', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4ebd4c92-238d-4c51-a96e-ab67a871bda4'),
(96, 'craft', 'm180520_173000_matrix_context_to_uids', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a05cd652-b124-4a93-804d-b57bf642ccbd'),
(97, 'craft', 'm180521_172900_project_config_table', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '700196d7-d978-4274-b682-6f7680caabe0'),
(98, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '1f9e4008-c763-4976-8e77-cd1bfd262054'),
(99, 'craft', 'm180731_162030_soft_delete_sites', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'afcba9de-858e-4139-9852-cb0a1606afea'),
(100, 'craft', 'm180810_214427_soft_delete_field_layouts', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '1db2fdfc-caae-49d3-a17b-3b3c2913de47'),
(101, 'craft', 'm180810_214439_soft_delete_elements', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '37f6735a-74f1-43a5-b8ca-b66a06e1068b'),
(102, 'craft', 'm180824_193422_case_sensitivity_fixes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c6152ab6-83cd-4ca6-8ff6-792c8753cd92'),
(103, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '1a5ba250-42c6-4397-b1d9-e084d956ca43'),
(104, 'craft', 'm180904_112109_permission_changes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'ff0beda6-cff0-45ee-8c16-3eb704bc853d'),
(105, 'craft', 'm180910_142030_soft_delete_sitegroups', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4a6dc7f5-cb9f-47f9-8946-aff86a6e24d8'),
(106, 'craft', 'm181011_160000_soft_delete_asset_support', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4bf3ba13-d99c-495e-9a79-54dc8d51a5d0'),
(107, 'craft', 'm181016_183648_set_default_user_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '9430e57a-7f9d-4667-a5b9-7877320ec035'),
(108, 'craft', 'm181017_225222_system_config_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '43de70ce-89ea-4e56-b5f3-99e95fac92a1'),
(109, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '178f0cc8-678b-4b4b-948a-464d5beea7c9'),
(110, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '825bb427-1f8d-453f-80fa-2cca18b860a3'),
(111, 'craft', 'm181112_203955_sequences_table', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'b8ba6b76-79be-4f2d-99c5-cf9377ba737b'),
(112, 'craft', 'm181121_001712_cleanup_field_configs', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'eb730932-aa8d-4c31-82ad-252e88ca0d41'),
(113, 'craft', 'm181128_193942_fix_project_config', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'd7489c76-5c07-4a0f-ae20-02154f8a70fa'),
(114, 'craft', 'm181130_143040_fix_schema_version', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a8f14a9e-7ed5-4647-8aa9-31fc234cb9cb'),
(115, 'craft', 'm181211_143040_fix_entry_type_uids', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '743fd807-f0eb-4842-a61f-ffa5ac5f82e4'),
(116, 'craft', 'm181217_153000_fix_structure_uids', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '13b99821-f80a-487c-bd63-1db4d3a86c0b'),
(117, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '11669b1d-b30d-4d2f-83a0-80efbd931aaf'),
(118, 'craft', 'm190108_110000_cleanup_project_config', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '66682b06-05b1-463c-b485-fe277aaf656d'),
(119, 'craft', 'm190108_113000_asset_field_setting_change', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'b4c209d0-49db-407b-ae83-51392b864b1a'),
(120, 'craft', 'm190109_172845_fix_colspan', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'd0cd2ff7-2bcc-4941-a078-3ba318ab6df2'),
(121, 'craft', 'm190110_150000_prune_nonexisting_sites', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4b135366-7267-4981-a9da-e52954d21024'),
(122, 'craft', 'm190110_214819_soft_delete_volumes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'bd4e326c-b56a-4c7a-a2e7-2845c1c948ac'),
(123, 'craft', 'm190112_124737_fix_user_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '7bbaf345-4694-4bf1-9096-024e1d1ffe24'),
(124, 'craft', 'm190112_131225_fix_field_layouts', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4363b44e-cc40-437e-a2bc-b2826e27092a'),
(125, 'craft', 'm190112_201010_more_soft_deletes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a194e9e5-59f9-41cd-93fc-87dfd5b292f4'),
(126, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a1cdad23-9bee-445c-b90e-037b147d25b5'),
(127, 'craft', 'm190121_120000_rich_text_config_setting', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '581ef01b-378e-4a11-9c4a-7f57ef6cdc48'),
(128, 'craft', 'm190125_191628_fix_email_transport_password', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '281b0ed0-b134-4f5c-ba33-c99325be43c1'),
(129, 'craft', 'm190128_181422_cleanup_volume_folders', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '8428f2f2-9f96-477b-b00f-362093fbb20a'),
(130, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '75b30021-610e-43d9-838c-1713f07b7c82'),
(131, 'craft', 'm190218_143000_element_index_settings_uid', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '967731d1-2f08-43c1-aa6c-71a5f07e6e68'),
(132, 'craft', 'm190312_152740_element_revisions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '5ba04c60-156e-4722-9763-d2c865d711f0'),
(133, 'craft', 'm190327_235137_propagation_method', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'e0b1a98b-ed85-4dc1-b16d-8d6321d895f2'),
(134, 'craft', 'm190401_223843_drop_old_indexes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2000784e-8f87-4876-aacf-98c898d338ed'),
(135, 'craft', 'm190416_014525_drop_unique_global_indexes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '1f62a5fe-3e58-42f3-bbf3-8e779526dff9'),
(136, 'craft', 'm190417_085010_add_image_editor_permissions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '3b6995da-64a8-42e4-8519-ccaf791b33f7'),
(137, 'craft', 'm190502_122019_store_default_user_group_uid', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '80627243-2a93-4883-bbf6-320ce5888a42'),
(138, 'craft', 'm190504_150349_preview_targets', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a5600395-d3b6-415c-905e-844cb86f82bd'),
(139, 'craft', 'm190516_184711_job_progress_label', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '57470870-1ef7-4f1c-a183-a02baaadf7c0'),
(140, 'craft', 'm190523_190303_optional_revision_creators', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '419f83c5-ebc5-47c1-9aa3-32992b39aa93'),
(141, 'craft', 'm190529_204501_fix_duplicate_uids', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2d46dab0-1153-41d9-821d-790b6a946362'),
(142, 'craft', 'm190605_223807_unsaved_drafts', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '26dca26b-ce98-4d01-957c-aab6e1ec8325'),
(143, 'craft', 'm190607_230042_entry_revision_error_tables', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '3b513ed1-e5ef-45f2-a81d-c681d1fe72ff'),
(144, 'craft', 'm190608_033429_drop_elements_uid_idx', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a5fe1100-4c22-40f6-ac8e-689283e68ac0'),
(145, 'craft', 'm190617_164400_add_gqlschemas_table', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4ad07f49-ab19-411d-9e08-99fca83c618d'),
(146, 'craft', 'm190624_234204_matrix_propagation_method', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'a71dbef8-243a-4a61-9230-01e01a5487b4'),
(147, 'craft', 'm190711_153020_drop_snapshots', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '71868b33-8c87-4c23-8bfa-03fc63cba953'),
(148, 'craft', 'm190712_195914_no_draft_revisions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '434f1b5b-82ea-46b5-9cd4-d20868a9900c'),
(149, 'craft', 'm190723_140314_fix_preview_targets_column', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '7c0f3ac3-75a0-4ca2-967d-0652973ac541'),
(150, 'craft', 'm190820_003519_flush_compiled_templates', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'e73a18bc-1801-47ec-ae04-b96c8e40e31e'),
(151, 'craft', 'm190823_020339_optional_draft_creators', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c2f159b4-f783-4841-82e0-09b0ffb5307d'),
(152, 'craft', 'm190913_152146_update_preview_targets', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '8ca20792-3a94-4bb4-9c17-440df81eec21'),
(153, 'craft', 'm191107_122000_add_gql_project_config_support', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '500406bc-5f99-4d69-9048-435db118d3f1'),
(154, 'craft', 'm191204_085100_pack_savable_component_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '241aa010-fe0b-4519-bdb0-21e0b873bbc1'),
(155, 'craft', 'm191206_001148_change_tracking', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '6d67e76f-6ad7-4151-b5ad-96a401a25571'),
(156, 'craft', 'm191216_191635_asset_upload_tracking', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '176e0492-17ff-4321-807a-d68db14c1e6d'),
(157, 'craft', 'm191222_002848_peer_asset_permissions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '866dd599-f7af-4d6a-9698-7ea6ba553ffd'),
(158, 'craft', 'm200127_172522_queue_channels', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '308c5d5c-daab-4f44-a5f0-363c3c5eadc3'),
(159, 'craft', 'm200211_175048_truncate_element_query_cache', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '19fdfd49-a7e2-4e08-b251-c7b3392441ee'),
(160, 'craft', 'm200213_172522_new_elements_index', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '718e6e4c-32b1-40e2-b95e-cb19f2d22a19'),
(161, 'craft', 'm200228_195211_long_deprecation_messages', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '35e2a421-a979-4eae-af7a-c81076e47de4'),
(162, 'craft', 'm200306_054652_disabled_sites', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '23b07305-3943-4144-9833-802bb4c51c28'),
(163, 'craft', 'm200522_191453_clear_template_caches', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'f51cc8d1-8e68-4f51-857d-bf0f4373e825'),
(164, 'craft', 'm200606_231117_migration_tracks', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '8ca5f441-2b6c-44e6-afdb-bed75868dde1'),
(165, 'craft', 'm200619_215137_title_translation_method', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '399d36de-f2e0-4c51-9153-1105e252ed57'),
(166, 'craft', 'm200620_005028_user_group_descriptions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'dd715a14-eee4-4036-a08e-39da6fecbf2c'),
(167, 'craft', 'm200620_230205_field_layout_changes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '3c4e91df-a906-4e4c-ab84-572e86ce3106'),
(168, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'd04ac999-86b4-42e2-8d63-f8e2ccf48ba4'),
(169, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c83a46c1-025a-4a1d-9f9e-0905d6c9d2e6'),
(170, 'craft', 'm200630_183000_drop_configmap', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'f5b19134-0c61-43d3-b709-2f3ac7f4db5e'),
(171, 'craft', 'm200715_113400_transform_index_error_flag', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '662e36cd-9d9f-4ac5-b87a-d76ffe5b73b4'),
(172, 'craft', 'm200716_110900_replace_file_asset_permissions', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'f0240eed-3916-42ea-94ed-a9669403a80e'),
(173, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'c871ba53-bf1b-447a-a9dc-5a31513f611c'),
(174, 'craft', 'm200720_175543_drop_unique_constraints', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2b501ac4-50ae-426f-b996-e11bec1612e0'),
(175, 'craft', 'm200825_051217_project_config_version', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '966e4b9a-db8e-4303-933b-3a444a129f9d'),
(176, 'craft', 'm201116_190500_asset_title_translation_method', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '6f20d072-1d5e-448a-8b84-6e33f5ee6bc5'),
(177, 'craft', 'm201124_003555_plugin_trials', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'ffeb30bf-cd70-4706-b8e8-e3b9c91b1aca'),
(178, 'craft', 'm210209_135503_soft_delete_field_groups', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'fa462629-8ef1-4c98-a63c-506398f09a8e'),
(179, 'craft', 'm210212_223539_delete_invalid_drafts', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'b2bd5850-4574-413b-b468-cda8abe4a41c'),
(180, 'craft', 'm210214_202731_track_saved_drafts', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'f358859b-f873-4a21-8f7b-c09e373ad444'),
(181, 'craft', 'm210223_150900_add_new_element_gql_schema_components', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2e86ba25-0ff9-4484-9c25-9397fd697104'),
(182, 'craft', 'm210302_212318_canonical_elements', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '3de13638-c288-4541-8c9f-d48b24e4f9e4'),
(183, 'craft', 'm210326_132000_invalidate_projectconfig_cache', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '424ec65e-f104-4ea5-ad0b-de6f174e94c3'),
(184, 'craft', 'm210329_214847_field_column_suffixes', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'fec8a9fc-07ac-42da-a4a7-019013d36424'),
(185, 'craft', 'm210331_220322_null_author', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '900e046c-7202-42c8-a770-e95eb569e1cb'),
(186, 'craft', 'm210405_231315_provisional_drafts', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', 'b61e6eea-a50e-4dbb-a657-cb90977a45cc'),
(187, 'craft', 'm210602_111300_project_config_names_in_config', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '8045bc59-ca53-43f2-a030-ff3550ed8479'),
(188, 'craft', 'm210611_233510_default_placement_settings', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '1f4a6c93-cc15-4b98-bdc7-88f8a25562d8'),
(189, 'craft', 'm210613_145522_sortable_global_sets', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '17e97012-9532-41cb-9037-6695a21ae88c'),
(190, 'craft', 'm210613_184103_announcements', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '4596bd6d-2af4-4801-bad9-ce3d2d2d1883'),
(191, 'craft', 'm210829_000000_element_index_tweak', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-07 14:39:42', '90110c29-7377-43b6-811a-fa8988482206'),
(192, 'plugin:navigation', 'Install', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '830a8f52-85c1-4605-8530-36652662834f'),
(193, 'plugin:navigation', 'm180826_000000_propagate_nav_setting', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '9b703ed5-02ce-4ccc-ac8f-1cc9c4dfadea'),
(194, 'plugin:navigation', 'm180827_000000_propagate_nav_setting_additional', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', 'd0e79eb6-d423-49b4-b5a3-87d4afe3355d'),
(195, 'plugin:navigation', 'm181110_000000_add_elementSiteId', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '52bac5c0-540d-41f8-b8bf-153a5c0ad0c8'),
(196, 'plugin:navigation', 'm181123_000000_populate_elementSiteIds', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '4a432ecd-3ed4-49a8-96f2-9daf9e1cc6b9'),
(197, 'plugin:navigation', 'm190203_000000_add_instructions', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', 'a57764e8-40cc-4eaa-bc89-7d0b9522f4fa'),
(198, 'plugin:navigation', 'm190209_000000_project_config', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '0b1a2484-fb8c-469e-bc0a-fd35950d4f2e'),
(199, 'plugin:navigation', 'm190223_000000_permissions', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2a1a04a5-0a6f-406a-a041-7f27540c6acb'),
(200, 'plugin:navigation', 'm190307_000000_update_field_content', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', 'baf85235-7abb-407e-83a9-6c0db4e430dd'),
(201, 'plugin:navigation', 'm190310_000000_migrate_elementSiteId', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', 'f5032967-529d-4be0-a0ba-0bcee71e6aca'),
(202, 'plugin:navigation', 'm190314_000000_soft_deletes', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '95a30360-1264-4dc7-9bfd-ae9a7ba3b36a'),
(203, 'plugin:navigation', 'm190315_000000_project_config', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', 'a28e5221-5d4e-4397-9d09-aebac7317f12'),
(204, 'plugin:navigation', 'm191127_000000_fix_nav_handle', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '0a355915-2a28-4615-9377-d6cf1c41f222'),
(205, 'plugin:navigation', 'm191230_102505_add_fieldLayoutId', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', 'd501cbac-3a50-4652-9dbb-d3bc381e01e4'),
(206, 'plugin:navigation', 'm200108_000000_add_attributes', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2e9b9cc1-f966-446e-92e7-e3f247e01a1f'),
(207, 'plugin:navigation', 'm200108_100000_add_url_suffix', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', 'ce618f94-361d-42ae-b608-158428d6469a'),
(208, 'plugin:navigation', 'm200108_200000_add_max_nodes', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '6b3c7e57-673e-4acc-b9f3-feefc34f6fb5'),
(209, 'plugin:navigation', 'm200205_000000_add_data', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '57a86a4e-d79f-48df-ac9e-57ce61eb593e'),
(210, 'plugin:navigation', 'm200810_000000_fix_elementsiteid', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2c68e53b-da0c-4089-847e-28817d3729b4'),
(211, 'plugin:navigation', 'm200811_000000_fix_uris', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', 'a3311c57-47e1-4620-aa46-7e3aad629656'),
(212, 'plugin:navigation', 'm201017_000000_add_permissions', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '34006397-8288-49b5-a17e-88d0eeca27cd'),
(213, 'plugin:navigation', 'm201018_000000_site_settings', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-09 01:19:16', '27461a5f-bdac-42d1-98aa-07572a32dcd7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_navigation_navs`
--

CREATE TABLE `craft_navigation_navs` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `propagateNodes` tinyint(1) DEFAULT '0',
  `maxNodes` int(11) DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `siteSettings` text COLLATE utf8_unicode_ci,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_navigation_navs`
--

INSERT INTO `craft_navigation_navs` (`id`, `structureId`, `name`, `handle`, `instructions`, `sortOrder`, `propagateNodes`, `maxNodes`, `permissions`, `siteSettings`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'NavBar', 'navbar', '', 1, 0, NULL, '{\"craft\\\\elements\\\\Asset\":{\"enabled\":\"1\",\"permissions\":\"*\"},\"craft\\\\elements\\\\Category\":{\"enabled\":\"1\",\"permissions\":\"*\"},\"craft\\\\elements\\\\Entry\":{\"enabled\":\"1\",\"permissions\":\"*\"},\"craft\\\\elements\\\\Tag\":{\"enabled\":\"\",\"permissions\":\"*\"},\"custom\":{\"enabled\":\"1\"},\"verbb\\\\navigation\\\\nodetypes\\\\PassiveType\":{\"enabled\":\"1\"}}', '{\"cc13e251-63bd-43e6-9a2a-623700a63e01\":null}', NULL, '2022-02-09 01:21:00', '2022-02-09 01:21:00', NULL, '001a8fca-6de6-4d7e-865e-e575aefcf5f4');

-- --------------------------------------------------------

--
-- Table structure for table `craft_navigation_nodes`
--

CREATE TABLE `craft_navigation_nodes` (
  `id` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `navId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlSuffix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customAttributes` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  `newWindow` tinyint(1) DEFAULT '0',
  `deletedWithNav` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_navigation_nodes`
--

INSERT INTO `craft_navigation_nodes` (`id`, `elementId`, `navId`, `parentId`, `url`, `type`, `classes`, `urlSuffix`, `customAttributes`, `data`, `newWindow`, `deletedWithNav`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(15, 2, 1, NULL, NULL, 'craft\\elements\\Entry', NULL, NULL, '[]', '[]', 0, 0, '2022-02-09 01:26:45', '2022-02-09 01:26:45', '5f866d8f-17b2-46b9-b353-05f53bbfb614'),
(16, NULL, 1, NULL, 'https://www.google.com', NULL, NULL, NULL, '[]', '[]', 0, NULL, '2022-02-09 01:27:30', '2022-02-09 01:27:30', 'f94645fe-7a8f-4690-be62-896d1c39befb'),
(17, NULL, 1, NULL, '/', NULL, NULL, NULL, '[]', '[]', 0, NULL, '2022-02-09 12:41:06', '2022-02-09 12:41:06', 'f7739db2-3965-4d8d-87cc-0cde93c2d494');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'navigation', '1.4.24', '1.0.21', 'trial', NULL, '2022-02-09 01:19:16', '2022-02-09 01:19:16', '2022-02-12 22:54:48', '52d544f6-b493-4b26-aca5-05d439ac4844');

-- --------------------------------------------------------

--
-- Table structure for table `craft_projectconfig`
--

CREATE TABLE `craft_projectconfig` (
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_projectconfig`
--

INSERT INTO `craft_projectconfig` (`path`, `value`) VALUES
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.defaultPlacement', '\"end\"'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.autocapitalize', 'true'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.autocomplete', 'false'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.autocorrect', 'true'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.class', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.disabled', 'false'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.id', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.instructions', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.label', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.max', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.min', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.name', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.orientation', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.placeholder', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.readonly', 'false'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.requirable', 'false'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.size', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.step', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.tip', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.title', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.warning', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.elements.0.width', '100'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.name', '\"Content\"'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.fieldLayouts.03e4a702-0b8c-4a68-8c8a-e5ba731e1d5c.tabs.0.sortOrder', '1'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.handle', '\"boxesCategories\"'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.name', '\"Boxes Categories\"'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.hasUrls', 'true'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.template', '\"category/_entry\"'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.uriFormat', '\"category/{slug}\"'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.structure.maxLevels', 'null'),
('categoryGroups.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83.structure.uid', '\"beb0d4b1-13d4-4470-aa39-73c05e4ceb26\"'),
('dateModified', '1644521601'),
('email.fromEmail', '\"frankluisravlo@gmail.com\"'),
('email.fromName', '\"Craft Test\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.class', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.disabled', 'false'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.id', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.instructions', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.label', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.max', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.min', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.name', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.orientation', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.readonly', 'false'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.requirable', 'false'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.size', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.step', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.tip', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.title', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.warning', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.0.width', '100'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.1.fieldUid', '\"e31b7f96-999f-4685-b515-0b2bff1c87b9\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.1.instructions', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.1.label', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.1.required', 'false'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.1.tip', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.1.warning', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.1.width', '100'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.2.fieldUid', '\"ebbd4619-5032-4884-b341-d2788871984a\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.2.instructions', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.2.label', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.2.required', 'false'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.2.tip', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.2.warning', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.elements.2.width', '100'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.name', '\"Content\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.fieldLayouts.b3ac4fdf-c900-4a2b-af74-5e859546cb70.tabs.0.sortOrder', '1'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.handle', '\"default\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.hasTitleField', 'true'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.name', '\"Default\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.section', '\"82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7\"'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.sortOrder', '1'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.titleFormat', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.titleTranslationKeyFormat', 'null'),
('entryTypes.bf346d29-2efa-4e20-a368-5bc907d79d0a.titleTranslationMethod', '\"site\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.class', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.disabled', 'false'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.id', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.instructions', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.label', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.max', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.min', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.name', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.orientation', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.readonly', 'false'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.requirable', 'false'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.size', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.step', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.tip', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.title', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.warning', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.0.width', '100'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.1.fieldUid', '\"22b10151-540d-449f-b8e2-c6a4cc4887e9\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.1.instructions', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.1.label', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.1.required', 'false'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.1.tip', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.1.warning', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.1.width', '100'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.2.fieldUid', '\"db1540ab-4b16-429c-95da-8f7bc67f41d5\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.2.instructions', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.2.label', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.2.required', 'false'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.2.tip', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.2.warning', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.2.width', '100'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.3.fieldUid', '\"5a952317-2f39-4497-a59e-6b24ded4693d\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.3.instructions', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.3.label', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.3.required', 'false'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.3.tip', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.3.warning', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.elements.3.width', '100'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.name', '\"Content\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.fieldLayouts.b76ab467-6942-4381-9913-574513c8164f.tabs.0.sortOrder', '1'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.handle', '\"home\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.hasTitleField', 'false'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.name', '\"Home\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.section', '\"b453e6c7-4dcb-4711-b217-62ddd3351526\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.sortOrder', '1'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.titleTranslationKeyFormat', 'null'),
('entryTypes.d309aa79-2abc-449b-8ce0-21f361bebfe7.titleTranslationMethod', '\"site\"'),
('fieldGroups.432101b2-60c4-4648-85d0-ce89ccf2dad2.name', '\"Common\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.columnSuffix', '\"mxdhqtxh\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.contentColumnType', '\"text\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.fieldGroup', '\"432101b2-60c4-4648-85d0-ce89ccf2dad2\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.handle', '\"headerTitle\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.instructions', '\"\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.name', '\"Header Title\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.searchable', 'false'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.settings.byteLimit', 'null'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.settings.charLimit', 'null'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.settings.code', '\"\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.settings.columnType', 'null'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.settings.initialRows', '\"4\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.settings.multiline', '\"\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.settings.placeholder', 'null'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.settings.uiMode', '\"normal\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.translationKeyFormat', 'null'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.translationMethod', '\"none\"'),
('fields.22b10151-540d-449f-b8e2-c6a4cc4887e9.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.columnSuffix', 'null'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.contentColumnType', '\"string\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.fieldGroup', '\"432101b2-60c4-4648-85d0-ce89ccf2dad2\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.handle', '\"heroImage\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.instructions', '\"\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.name', '\"Hero Image\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.searchable', 'false'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.allowedKinds', 'null'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.allowSelfRelations', 'false'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.allowUploads', 'true'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.defaultUploadLocationSource', '\"volume:e93490a4-1acf-4c1d-b62d-eb7127e450e6\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.limit', '\"\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.localizeRelations', 'false'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.previewMode', '\"full\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.restrictFiles', '\"\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.selectionLabel', '\"\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.showSiteMenu', 'true'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.showUnpermittedFiles', 'false'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.showUnpermittedVolumes', 'false'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.singleUploadLocationSource', '\"volume:e93490a4-1acf-4c1d-b62d-eb7127e450e6\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.singleUploadLocationSubpath', '\"\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.source', 'null'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.sources', '\"*\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.targetSiteId', 'null'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.useSingleFolder', 'false'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.validateRelatedElements', 'false'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.settings.viewMode', '\"list\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.translationKeyFormat', 'null'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.translationMethod', '\"site\"'),
('fields.5a952317-2f39-4497-a59e-6b24ded4693d.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.columnSuffix', '\"tnkgbpbu\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.contentColumnType', '\"text\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.fieldGroup', '\"432101b2-60c4-4648-85d0-ce89ccf2dad2\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.handle', '\"headerSubtitle\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.instructions', '\"\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.name', '\"Header Subtitle\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.searchable', 'false'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.settings.byteLimit', 'null'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.settings.charLimit', 'null'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.settings.code', '\"\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.settings.columnType', 'null'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.settings.initialRows', '\"4\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.settings.multiline', '\"\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.settings.placeholder', 'null'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.settings.uiMode', '\"normal\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.translationKeyFormat', 'null'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.translationMethod', '\"none\"'),
('fields.db1540ab-4b16-429c-95da-8f7bc67f41d5.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.columnSuffix', '\"digvoubv\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.contentColumnType', '\"text\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.fieldGroup', '\"432101b2-60c4-4648-85d0-ce89ccf2dad2\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.handle', '\"boxSubtitle\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.instructions', '\"Subtitle Text field for the Boxes\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.name', '\"Box Subtitle\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.searchable', 'false'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.settings.byteLimit', 'null'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.settings.charLimit', 'null'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.settings.code', '\"\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.settings.columnType', 'null'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.settings.initialRows', '\"4\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.settings.multiline', '\"\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.settings.placeholder', 'null'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.settings.uiMode', '\"normal\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.translationKeyFormat', 'null'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.translationMethod', '\"none\"'),
('fields.e31b7f96-999f-4685-b515-0b2bff1c87b9.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.columnSuffix', 'null'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.contentColumnType', '\"string\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.fieldGroup', '\"432101b2-60c4-4648-85d0-ce89ccf2dad2\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.handle', '\"categoryField\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.instructions', '\"\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.name', '\"Category Field\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.searchable', 'false'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.allowLimit', 'false'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.allowMultipleSources', 'false'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.allowSelfRelations', 'false'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.branchLimit', '\"\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.limit', 'null'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.localizeRelations', 'false'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.selectionLabel', '\"\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.showSiteMenu', 'false'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.source', '\"group:5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.sources', '\"*\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.targetSiteId', 'null'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.validateRelatedElements', 'false'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.settings.viewMode', 'null'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.translationKeyFormat', 'null'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.translationMethod', '\"site\"'),
('fields.ebbd4619-5032-4884-b341-d2788871984a.type', '\"craft\\\\fields\\\\Categories\"'),
('meta.__names__.001a8fca-6de6-4d7e-865e-e575aefcf5f4', '\"NavBar\"'),
('meta.__names__.0980bef2-0084-459a-96f3-affdaa222dca', '\"Craft Test\"'),
('meta.__names__.22b10151-540d-449f-b8e2-c6a4cc4887e9', '\"Header Title\"'),
('meta.__names__.432101b2-60c4-4648-85d0-ce89ccf2dad2', '\"Common\"'),
('meta.__names__.5a952317-2f39-4497-a59e-6b24ded4693d', '\"Hero Image\"'),
('meta.__names__.5c65eb74-25bf-4ea1-b4a6-28e6d9a00b83', '\"Boxes Categories\"'),
('meta.__names__.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7', '\"Boxes\"'),
('meta.__names__.b453e6c7-4dcb-4711-b217-62ddd3351526', '\"Home\"'),
('meta.__names__.bf346d29-2efa-4e20-a368-5bc907d79d0a', '\"Default\"'),
('meta.__names__.cc13e251-63bd-43e6-9a2a-623700a63e01', '\"Craft Test\"'),
('meta.__names__.d309aa79-2abc-449b-8ce0-21f361bebfe7', '\"Home\"'),
('meta.__names__.db1540ab-4b16-429c-95da-8f7bc67f41d5', '\"Header Subtitle\"'),
('meta.__names__.e31b7f96-999f-4685-b515-0b2bff1c87b9', '\"Box Subtitle\"'),
('meta.__names__.e93490a4-1acf-4c1d-b62d-eb7127e450e6', '\"Assets\"'),
('meta.__names__.ebbd4619-5032-4884-b341-d2788871984a', '\"Category Field\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.handle', '\"navbar\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.instructions', '\"\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.maxNodes', '\"\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.name', '\"NavBar\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.craft\\elements\\Asset.enabled', '\"1\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.craft\\elements\\Asset.permissions', '\"*\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.craft\\elements\\Category.enabled', '\"1\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.craft\\elements\\Category.permissions', '\"*\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.craft\\elements\\Entry.enabled', '\"1\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.craft\\elements\\Entry.permissions', '\"*\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.craft\\elements\\Tag.enabled', '\"\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.craft\\elements\\Tag.permissions', '\"*\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.custom.enabled', '\"1\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.permissions.verbb\\navigation\\nodetypes\\PassiveType.enabled', '\"1\"'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.propagateNodes', 'false'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01', 'null'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.sortOrder', '1'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.structure.maxLevels', 'null'),
('navigation.navs.001a8fca-6de6-4d7e-865e-e575aefcf5f4.structure.uid', '\"bba124b8-5c0f-4770-a5dc-d93abb711701\"'),
('plugins.navigation.edition', '\"standard\"'),
('plugins.navigation.enabled', 'true'),
('plugins.navigation.licenseKey', '\"WIQSDK7NYEC2C1CXI5C1HKR4\"'),
('plugins.navigation.schemaVersion', '\"1.0.21\"'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.defaultPlacement', '\"end\"'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.enableVersioning', 'true'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.handle', '\"boxes\"'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.name', '\"Boxes\"'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.propagationMethod', '\"all\"'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.enabledByDefault', 'true'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.hasUrls', 'true'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.template', '\"boxes/_entry\"'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.uriFormat', '\"boxes/{slug}\"'),
('sections.82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7.type', '\"channel\"'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.defaultPlacement', '\"end\"'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.enableVersioning', 'true'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.handle', '\"home\"'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.name', '\"Home\"'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.propagationMethod', '\"all\"'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.enabledByDefault', 'true'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.hasUrls', 'true'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.template', '\"index.twig\"'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.siteSettings.cc13e251-63bd-43e6-9a2a-623700a63e01.uriFormat', '\"__home__\"'),
('sections.b453e6c7-4dcb-4711-b217-62ddd3351526.type', '\"single\"'),
('siteGroups.0980bef2-0084-459a-96f3-affdaa222dca.name', '\"Craft Test\"'),
('sites.cc13e251-63bd-43e6-9a2a-623700a63e01.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.cc13e251-63bd-43e6-9a2a-623700a63e01.handle', '\"default\"'),
('sites.cc13e251-63bd-43e6-9a2a-623700a63e01.hasUrls', 'true'),
('sites.cc13e251-63bd-43e6-9a2a-623700a63e01.language', '\"en-US\"'),
('sites.cc13e251-63bd-43e6-9a2a-623700a63e01.name', '\"Craft Test\"'),
('sites.cc13e251-63bd-43e6-9a2a-623700a63e01.primary', 'true'),
('sites.cc13e251-63bd-43e6-9a2a-623700a63e01.siteGroup', '\"0980bef2-0084-459a-96f3-affdaa222dca\"'),
('sites.cc13e251-63bd-43e6-9a2a-623700a63e01.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Craft Test\"'),
('system.schemaVersion', '\"3.7.8\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.autocomplete', 'false'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.autocorrect', 'true'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.class', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.disabled', 'false'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.id', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.instructions', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.label', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.max', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.min', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.name', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.orientation', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.placeholder', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.readonly', 'false'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.requirable', 'false'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.size', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.step', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.tip', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.title', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\AssetTitleField\"'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.warning', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.elements.0.width', '100'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.name', '\"Content\"'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.fieldLayouts.184347f2-ce98-4330-9d9d-a96389f3b7fc.tabs.0.sortOrder', '1'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.handle', '\"assets\"'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.hasUrls', 'true'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.name', '\"Assets\"'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.settings.path', '\"/Applications/MAMP/htdocs/craftcmsTest/web/assets\"'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.sortOrder', '1'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.titleTranslationKeyFormat', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.titleTranslationMethod', 'null'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.e93490a4-1acf-4c1d-b62d-eb7127e450e6.url', '\"@web/assets\"');

-- --------------------------------------------------------

--
-- Table structure for table `craft_queue`
--

CREATE TABLE `craft_queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 6, 20, NULL, 21, 1, '2022-02-10 12:18:21', '2022-02-10 12:18:21', '467a43f9-aa96-436f-805c-b8a6b3167adf'),
(2, 6, 23, NULL, 21, 1, '2022-02-10 12:18:56', '2022-02-10 12:18:56', 'c0eaaff3-2757-435f-8f7e-d68878cc67a7'),
(3, 6, 24, NULL, 22, 1, '2022-02-10 12:21:37', '2022-02-10 12:21:37', 'a8aff1fe-a2a4-44ea-af7a-90e59c3b6dcf'),
(4, 6, 25, NULL, 22, 1, '2022-02-10 12:21:40', '2022-02-10 12:21:40', '1d5545de-0694-4885-a0d1-32d8dacc4cf1'),
(5, 6, 26, NULL, 21, 1, '2022-02-10 12:22:05', '2022-02-10 12:22:05', '201e0e33-88f4-46e4-929c-c1dab690e099'),
(6, 6, 27, NULL, 21, 1, '2022-02-10 12:22:06', '2022-02-10 12:22:06', '5ce09802-04db-4788-9c4b-708317687fa8'),
(7, 6, 28, NULL, 22, 1, '2022-02-10 12:22:23', '2022-02-10 12:22:23', 'c6eca022-86a6-4f91-85c6-bb9ced3b0e3d'),
(8, 6, 29, NULL, 22, 1, '2022-02-10 12:22:24', '2022-02-10 12:22:24', '1c90b211-8c04-4ff4-8ae6-12ff24535621'),
(10, 6, 31, NULL, 21, 1, '2022-02-10 12:22:38', '2022-02-10 12:22:38', 'c0e9e296-8b8e-46cf-9689-2f9699db7843'),
(11, 6, 32, NULL, 21, 1, '2022-02-10 12:23:03', '2022-02-10 12:23:03', '3d5aa748-c216-4357-8e29-56d25f8e0855'),
(12, 6, 33, NULL, 21, 1, '2022-02-10 12:23:04', '2022-02-10 12:23:04', '0ba297d8-e419-4829-85b4-5a8ab974678a'),
(15, 4, 42, NULL, 40, 1, '2022-02-10 13:54:45', '2022-02-10 13:54:45', '176a3747-3986-4b4e-b853-938e4629c9b0'),
(19, 4, 45, NULL, 44, 1, '2022-02-10 14:35:47', '2022-02-10 14:35:47', '60bf06a7-3af5-4583-a168-7805ba3c43ed'),
(20, 4, 47, NULL, 44, 1, '2022-02-10 18:53:50', '2022-02-10 18:53:50', '020834c5-b9f2-4b45-bd96-d356366a66a6'),
(21, 4, 48, NULL, 44, 1, '2022-02-10 18:57:25', '2022-02-10 18:57:25', 'f302b011-26a2-4e16-9fbd-388d46d66ab6'),
(23, 4, 50, NULL, 44, 1, '2022-02-10 21:35:06', '2022-02-10 21:35:06', '46661948-e398-470c-b716-e94ae96171ad'),
(25, 4, 52, NULL, 44, 1, '2022-02-10 21:35:25', '2022-02-10 21:35:25', '5a642d6e-069a-4139-aaf6-a7374e7d911a'),
(28, 6, 30, NULL, 22, 1, '2022-02-11 00:55:54', '2022-02-11 00:55:54', 'dae34fe9-cecc-4f4e-9a81-53add4723273'),
(29, 6, 54, NULL, 22, 1, '2022-02-11 00:55:54', '2022-02-11 00:55:54', 'bf9efcba-c05a-469d-9faa-b9915e65d686'),
(31, 4, 56, NULL, 44, 1, '2022-02-11 00:58:28', '2022-02-11 00:58:28', 'dfe0637c-b868-4678-80e6-0706637741a6'),
(33, 6, 58, NULL, 21, 1, '2022-02-11 14:23:34', '2022-02-11 14:23:34', '42a6bcca-b991-4278-b050-15c4f0db1911'),
(36, 4, 2, NULL, 60, 1, '2022-02-11 17:01:25', '2022-02-11 17:01:25', '1e44dd34-38c4-406b-b497-dc76a798a0b6'),
(37, 4, 61, NULL, 60, 1, '2022-02-11 17:01:25', '2022-02-11 17:01:25', '231529c0-adba-4fe6-8d4c-684e960eb33a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_resourcepaths`
--

CREATE TABLE `craft_resourcepaths` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_resourcepaths`
--

INSERT INTO `craft_resourcepaths` (`hash`, `path`) VALUES
('147c4534', '@app/web/assets/edituser/dist'),
('16e6ecd7', '@app/web/assets/elementresizedetector/dist'),
('1702cbe7', '@app/web/assets/elementresizedetector/dist'),
('1856a491', '@app/web/assets/picturefill/dist'),
('19b283a1', '@app/web/assets/picturefill/dist'),
('1eeca98b', '@app/web/assets/xregexp/dist'),
('1f088ebb', '@app/web/assets/xregexp/dist'),
('20e3d60c', '@app/web/assets/jqueryui/dist'),
('2107f13c', '@app/web/assets/jqueryui/dist'),
('223731b7', '@app/web/assets/admintable/dist'),
('23d31687', '@app/web/assets/admintable/dist'),
('2c57c9ba', '@app/web/assets/focusvisible/dist'),
('2db3ee8a', '@app/web/assets/focusvisible/dist'),
('308b5ad9', '@app/web/assets/jquerytouchevents/dist'),
('316f7de9', '@app/web/assets/jquerytouchevents/dist'),
('32243826', '@app/web/assets/axios/dist'),
('33c01f16', '@app/web/assets/axios/dist'),
('340673cc', '@app/web/assets/editsection/dist'),
('34b0afc3', '@app/web/assets/vue/dist'),
('34ea749d', '@verbb/base/resources/dist'),
('355488f3', '@app/web/assets/vue/dist'),
('35e254fc', '@app/web/assets/editsection/dist'),
('4a6370a4', '@app/web/assets/fabric/dist'),
('4b875794', '@app/web/assets/fabric/dist'),
('5c5437e7', '@app/web/assets/editentry/dist'),
('5db010d7', '@app/web/assets/editentry/dist'),
('60b50049', '@app/web/assets/prismjs/dist'),
('61512779', '@app/web/assets/prismjs/dist'),
('62eb1da6', '@app/web/assets/updates/dist'),
('78d9c855', '@app/web/assets/velocity/dist'),
('793def65', '@app/web/assets/velocity/dist'),
('7a71fc99', '@app/web/assets/fields/dist'),
('7b95dba9', '@app/web/assets/fields/dist'),
('7cf2f5e7', '@app/web/assets/dashboard/dist'),
('7d16d2d7', '@app/web/assets/dashboard/dist'),
('8ada4488', '@app/web/assets/selectize/dist'),
('8b3e63b8', '@app/web/assets/selectize/dist'),
('8beebd16', '@app/web/assets/installer/dist'),
('8db9ab47', '@app/web/assets/updater/dist'),
('906bb84', '@verbb/navigation/resources/dist'),
('90afda21', '@app/web/assets/fieldsettings/dist'),
('914bfd11', '@app/web/assets/fieldsettings/dist'),
('929a7289', '@app/web/assets/craftsupport/dist'),
('937e55b9', '@app/web/assets/craftsupport/dist'),
('96c60f17', '@app/web/assets/iframeresizer/dist'),
('97222827', '@app/web/assets/iframeresizer/dist'),
('9a50be6c', '@app/web/assets/fileupload/dist'),
('9bb4995c', '@app/web/assets/fileupload/dist'),
('9c08de48', '@app/web/assets/updateswidget/dist'),
('9decf978', '@app/web/assets/updateswidget/dist'),
('a2b29c26', '@app/web/assets/recententries/dist'),
('a356bb16', '@app/web/assets/recententries/dist'),
('a42ebad2', '@app/web/assets/d3/dist'),
('a4c7f680', '@app/web/assets/pluginstore/dist'),
('a523d1b0', '@app/web/assets/pluginstore/dist'),
('a5ca9de2', '@app/web/assets/d3/dist'),
('ba2589e5', '@app/web/assets/login/dist'),
('bbc1aed5', '@app/web/assets/login/dist'),
('be1b9c9b', '@app/web/assets/cp/dist'),
('bfffbbab', '@app/web/assets/cp/dist'),
('c2d4ef04', '@app/web/assets/garnish/dist'),
('c330c834', '@app/web/assets/garnish/dist'),
('c6e4f015', '@app/web/assets/feed/dist'),
('c700d725', '@app/web/assets/feed/dist'),
('da90567c', '@bower/jquery/dist'),
('db74714c', '@bower/jquery/dist'),
('dc60de0a', '@app/web/assets/utilities/dist'),
('dd84f93a', '@app/web/assets/utilities/dist'),
('e23985b', '@app/web/assets/jquerypayment/dist'),
('eaaf5e4b', '@app/web/assets/timepicker/dist'),
('fc7bf6b', '@app/web/assets/jquerypayment/dist');

-- --------------------------------------------------------

--
-- Table structure for table `craft_revisions`
--

CREATE TABLE `craft_revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_revisions`
--

INSERT INTO `craft_revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 2, 1, 2, NULL),
(3, 2, 1, 3, 'Applied “Draft 1”'),
(4, 7, 1, 1, NULL),
(5, 7, 1, 2, NULL),
(6, 7, 1, 3, 'Applied “Draft 1”'),
(7, 2, 1, 4, NULL),
(8, 2, 1, 5, 'Applied “Draft 1”'),
(9, 2, 1, 6, 'Applied “Draft 1”'),
(10, 20, 1, 1, ''),
(11, 24, 1, 1, ''),
(12, 26, 1, 1, ''),
(13, 28, 1, 1, ''),
(14, 30, 1, 1, ''),
(15, 32, 1, 1, ''),
(16, 2, 1, 7, NULL),
(17, 2, 1, 8, NULL),
(18, 2, 1, 9, NULL),
(19, 2, 1, 10, NULL),
(20, 2, 1, 11, NULL),
(21, 2, 1, 12, NULL),
(22, 2, 1, 13, 'Applied “Draft 1”'),
(23, 2, 1, 14, 'Applied “Draft 1”'),
(24, 2, 1, 15, NULL),
(25, 2, 1, 16, NULL),
(26, 2, 1, 17, 'Applied “Draft 1”'),
(27, 2, 1, 18, 'Applied “Draft 1”'),
(28, 30, 1, 2, 'Applied “Draft 1”'),
(29, 2, 1, 19, 'Applied “Draft 1”'),
(30, 32, 1, 2, 'Applied “Draft 1”'),
(31, 2, 1, 20, 'Applied “Draft 1”');

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin '),
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' frankluisravlo gmail com '),
(1, 'slug', 0, 1, ''),
(2, 'slug', 0, 1, ' home '),
(2, 'title', 0, 1, ' home '),
(7, 'title', 0, 1, ' about '),
(7, 'slug', 0, 1, ' about '),
(15, 'slug', 0, 1, ' 1 '),
(15, 'title', 0, 1, ' home '),
(16, 'slug', 0, 1, ' 1 '),
(16, 'title', 0, 1, ' away '),
(17, 'slug', 0, 1, ' 1 '),
(17, 'title', 0, 1, ' home '),
(40, 'filename', 0, 1, ' hero banner placeholder light 1024x480 1 png '),
(20, 'title', 0, 1, ' box number 1 '),
(20, 'slug', 0, 1, ' box number 1 '),
(21, 'slug', 0, 1, ' outdoor '),
(21, 'title', 0, 1, ' outdoor '),
(22, 'slug', 0, 1, ' technology '),
(22, 'title', 0, 1, ' technology '),
(24, 'title', 0, 1, ' box number 2 '),
(24, 'slug', 0, 1, ' box number 2 '),
(26, 'title', 0, 1, ' box number 3 '),
(26, 'slug', 0, 1, ' box number 3 '),
(28, 'title', 0, 1, ' box number 4 '),
(28, 'slug', 0, 1, ' box number 4 '),
(30, 'slug', 0, 1, ' box number 5 '),
(30, 'title', 0, 1, ' box number 5 '),
(32, 'title', 0, 1, ' box number 6 '),
(32, 'slug', 0, 1, ' box number 6 '),
(40, 'extension', 0, 1, ' png '),
(40, 'kind', 0, 1, ' image '),
(40, 'slug', 0, 1, ''),
(40, 'title', 0, 1, ' hero banner placeholder light 1024x480 1 '),
(46, 'slug', 0, 1, ''),
(44, 'filename', 0, 1, ' hero banner placeholder light 1024x480 1 2022 02 10 143545 lvnu png '),
(44, 'extension', 0, 1, ' png '),
(44, 'kind', 0, 1, ' image '),
(44, 'slug', 0, 1, ''),
(44, 'title', 0, 1, ' hero banner placeholder light 1024x480 1 '),
(60, 'filename', 0, 1, ' mountains 7ddde89 jpeg '),
(60, 'extension', 0, 1, ' jpeg '),
(60, 'kind', 0, 1, ' image '),
(60, 'slug', 0, 1, ''),
(60, 'title', 0, 1, ' mountains 7ddde89 ');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `previewTargets` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home', 'home', 'single', 1, 'all', 'end', NULL, '2022-02-07 14:43:44', '2022-02-07 14:43:44', NULL, 'b453e6c7-4dcb-4711-b217-62ddd3351526'),
(2, NULL, 'About', 'about', 'single', 1, 'all', 'end', NULL, '2022-02-07 17:48:32', '2022-02-07 17:48:32', '2022-02-09 00:57:59', 'bd0dcf84-3d02-4cf8-9712-3b4a387fc40a'),
(3, NULL, 'Boxes', 'boxes', 'channel', 1, 'all', 'end', NULL, '2022-02-09 13:55:55', '2022-02-09 13:55:55', NULL, '82c6f946-5b9a-4f1e-a9e6-770a2c76bdd7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_sites`
--

CREATE TABLE `craft_sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text COLLATE utf8_unicode_ci,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections_sites`
--

INSERT INTO `craft_sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'index.twig', 1, '2022-02-07 14:43:44', '2022-02-10 18:57:25', '6795c921-193c-4611-8c45-25d18874bc43'),
(2, 2, 1, 1, 'about', 'about.twig', 1, '2022-02-07 17:48:32', '2022-02-07 17:48:32', 'b6aab5f3-25b5-4bfa-8ac8-40bcff874572'),
(3, 3, 1, 1, 'boxes/{slug}', 'boxes/_entry', 1, '2022-02-09 13:55:55', '2022-02-09 13:55:55', '221d7604-cc95-473b-b31b-ac1d53cc1632');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sequences`
--

CREATE TABLE `craft_sequences` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Q7qwZucEgNSji1RfT_i_k3aAH-uQqQkgkagJE5_QA2jrn0YgWHgRfTciOoZlv2oPlsXTY5BLjOOfvW2TyGLCm4vDScmdQcqHD1Rr', '2022-02-07 14:42:39', '2022-02-07 20:38:01', '29b04095-3a1b-489e-8584-0da3a7180783'),
(2, 1, 'jJPh4NqA58vu-t5bOkRgnM0pjMrFc6sOwmnkUPDmcUDIZVILbazqUQXYSht47Z5sfMw3akKOyLgKFVKS12ThXdIsMr4uqi-X7Oug', '2022-02-07 20:38:01', '2022-02-09 00:57:23', '29da725c-d6c6-41ed-96d2-8add1ea018c4'),
(3, 1, '5sFACPkrJROjX-MkZfv4diXg7-iEuOf2cGt3P12jSeQmHYee_LG8R5WV43vjPgBwyKWTKEwwNRjzYRAIOT6KssXVFz1Z2_Utpkvj', '2022-02-09 00:57:23', '2022-02-09 23:33:11', 'e131a5d4-5a4f-4d70-bf2e-489adf30fd38'),
(4, 1, 'R2ZAC9Ntyw2RBSWCgye4W2NWgALdrzTrCB193-d8cbQIg1FW2lnDFY3Zeba0jRcuHGI6w1_NLW0sMm4oBFfgFj408MpYa4rJq0X-', '2022-02-12 23:30:51', '2022-02-12 23:30:51', '4782deb6-045c-499f-88f3-65caf5840889');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_sitegroups`
--

CREATE TABLE `craft_sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sitegroups`
--

INSERT INTO `craft_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Craft Test', '2022-02-07 14:39:41', '2022-02-07 14:39:41', NULL, '0980bef2-0084-459a-96f3-affdaa222dca');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sites`
--

CREATE TABLE `craft_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sites`
--

INSERT INTO `craft_sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'Craft Test', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2022-02-07 14:39:41', '2022-02-07 14:39:41', NULL, 'cc13e251-63bd-43e6-9a2a-623700a63e01');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 6, 0, '2022-02-09 01:26:45', '2022-02-09 12:41:09', '3daaf953-2416-47bc-b0a4-d0ce9c39e413'),
(3, 1, 16, 1, 4, 5, 1, '2022-02-09 01:27:30', '2022-02-09 12:41:09', '9b90b040-318a-428d-8d27-d5c4880bdfca'),
(4, 1, 17, 1, 2, 3, 1, '2022-02-09 12:41:06', '2022-02-09 12:41:09', 'ef65cd3a-2f79-4857-bd69-c39de9afdd60'),
(5, 2, NULL, 5, 1, 6, 0, '2022-02-10 12:15:36', '2022-02-10 12:15:49', '12f6f966-2aeb-40d9-a3cf-40cda60a710f'),
(6, 2, 21, 5, 2, 3, 1, '2022-02-10 12:15:36', '2022-02-10 12:15:36', '5c973b81-58be-4017-88b3-d21507e5bd32'),
(7, 2, 22, 5, 4, 5, 1, '2022-02-10 12:15:49', '2022-02-10 12:15:49', 'db690c51-ee33-494f-922d-0eac76013285');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, '2022-02-09 01:21:00', '2022-02-09 01:21:00', NULL, 'bba124b8-5c0f-4770-a5dc-d93abb711701'),
(2, NULL, '2022-02-10 12:12:32', '2022-02-10 12:12:32', NULL, 'beb0d4b1-13d4-4470-aa39-73c05e4ceb26');

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemmessages`
--

CREATE TABLE `craft_systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachequeries`
--

CREATE TABLE `craft_templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpreferences`
--

CREATE TABLE `craft_userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_userpreferences`
--

INSERT INTO `craft_userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\"}');

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, NULL, NULL, 'frankluisravlo@gmail.com', '$2y$13$FfVKvo1W1N5Gsba3c19r8uz.x9R5NRQgRu8jmXvOjVCStg1sKGcoW', 1, 0, 0, 0, '2022-02-12 23:30:51', NULL, NULL, NULL, '2022-02-12 23:27:30', NULL, 1, '$2y$13$hXz6AviyH8A/gHOrm1AkdeeC7SK86UWZFlzFWmS5WNe3p5n4G56Gy', '2022-02-12 23:20:36', NULL, 0, '2022-02-07 14:39:42', '2022-02-07 14:39:42', '2022-02-12 23:30:51', '53c9acfd-6045-489e-9487-1688ed5251d7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_volumefolders`
--

CREATE TABLE `craft_volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_volumefolders`
--

INSERT INTO `craft_volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Assets', '', '2022-02-09 01:12:55', '2022-02-09 01:12:55', 'b402b5f5-64c2-49ef-8157-51a673630f8d'),
(2, NULL, NULL, 'Temporary source', NULL, '2022-02-09 01:13:01', '2022-02-09 01:13:01', 'cd3aeda2-e6c7-4aeb-ae33-eaf05e544de9'),
(3, 2, NULL, 'user_1', 'user_1/', '2022-02-09 01:13:01', '2022-02-09 01:13:01', '262f9d78-554e-4255-8556-d10e9c51bcb5');

-- --------------------------------------------------------

--
-- Table structure for table `craft_volumes`
--

CREATE TABLE `craft_volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_volumes`
--

INSERT INTO `craft_volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 3, 'Assets', 'assets', 'craft\\volumes\\Local', 1, '@web/assets', 'site', NULL, '{\"path\":\"/Applications/MAMP/htdocs/craftcmsTest/web/assets\"}', 1, '2022-02-09 01:12:55', '2022-02-10 19:33:21', NULL, 'e93490a4-1acf-4c1d-b62d-eb7127e450e6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2022-02-07 14:42:40', '2022-02-07 14:42:40', '55aa3eea-38ed-42c8-aa39-7bf348f929c8'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2022-02-07 14:42:40', '2022-02-07 14:42:40', 'b6190134-c401-41a2-90f2-31ecf686c8e7'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2022-02-07 14:42:40', '2022-02-07 14:42:40', '20896693-54b8-4909-b9e2-38a6268d5fa5'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2022-02-07 14:42:40', '2022-02-07 14:42:40', '131f9a5d-2d2d-4789-bb65-4234bfc340c5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_announcements`
--
ALTER TABLE `craft_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_ihbleixlizzpzoygzsrziklwqcouipkmywsh` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `craft_idx_jzgylzsfoifczjxjywvpteselpljbiudesga` (`dateRead`),
  ADD KEY `craft_fk_ynzgaxdfomuyefckxzqmpkutrfudusdysbar` (`pluginId`);

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_jbavgmzqvjgcilhpnhnijibhocjrwizmtwbu` (`sessionId`,`volumeId`),
  ADD KEY `craft_idx_xgbmgyrrzxzrpimxicdzemtmmjtymmfcxeiv` (`volumeId`);

--
-- Indexes for table `craft_assets`
--
ALTER TABLE `craft_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_prvpkdqrzrhoqsqqebigllxqlvxkbxzwfmct` (`filename`,`folderId`),
  ADD KEY `craft_idx_uibmkqpartgvjjyihbvjzwhyamcpxnjgyhew` (`folderId`),
  ADD KEY `craft_idx_rahqywjlevirtqvtxhigyycizakpwugecpaq` (`volumeId`),
  ADD KEY `craft_fk_qyrpzfbaobrbcsilpboczayatwhltbkfaaus` (`uploaderId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_aqimcwhwgggpgeiixlrnphcpzljjuqmxhjrc` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_vulutirquknvlyrjxyuucqutninahwdxujdi` (`name`),
  ADD KEY `craft_idx_jpnlmjvrffxvhcqmsrokcioonroblbbmitiv` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_nzlokulqsrkqzvqdemrloxyqzheeeqmedowj` (`groupId`),
  ADD KEY `craft_fk_grgngkbyvjzfnctdialdcdtigsjljtexpdbv` (`parentId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_doxrqbpbvooiloztfyrlkwxdwmkeqmtuczky` (`name`),
  ADD KEY `craft_idx_pyppsqufaoledkcldygbdnqwfocnqnefamla` (`handle`),
  ADD KEY `craft_idx_venxusnwdxrzusaphpetgrgvzovyfhfkzldq` (`structureId`),
  ADD KEY `craft_idx_gqnyjcavumfoatuvzmjbvozvuhlvdtgeibrr` (`fieldLayoutId`),
  ADD KEY `craft_idx_amekuibcckexzxgloauukvhmxbxrndpcnzut` (`dateDeleted`);

--
-- Indexes for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_iubjbbijjnjymqngnmiwngqxfsqdcvosgpzh` (`groupId`,`siteId`),
  ADD KEY `craft_idx_kkhnbckjoxouopqbslfgrefgoczibtzfimzx` (`siteId`);

--
-- Indexes for table `craft_changedattributes`
--
ALTER TABLE `craft_changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `craft_idx_jgqwiartcavoaxnylmmbwmcwtrpuygxizbkl` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `craft_fk_qcofcgzsjaxygjfvfkxrylsfcqtfzynfnxxt` (`siteId`),
  ADD KEY `craft_fk_uibdowupvcvurtretexzxxdjiojfclpwvhmw` (`userId`);

--
-- Indexes for table `craft_changedfields`
--
ALTER TABLE `craft_changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `craft_idx_jeoqmgfvrahftuqzezvmtmcxomtetuivthfs` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `craft_fk_zdwoyicknambitngkaefcjpryxhizvoetzpn` (`siteId`),
  ADD KEY `craft_fk_hhhkxpuqhaowoflenzjutolqwmgzcjmgobea` (`fieldId`),
  ADD KEY `craft_fk_sxnsrhvahblucmfrrekijnayugnktxrodeng` (`userId`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_akezkxqsmluzzkrnqyvnermpoacepnmqymnh` (`elementId`,`siteId`),
  ADD KEY `craft_idx_xxhoqxpxrkmfytdplysrgsjncgrbfdnicuxv` (`siteId`),
  ADD KEY `craft_idx_tbmnjytoljkocvxyxekyflyqvggxzaxfthyg` (`title`);

--
-- Indexes for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fk_ybqezzwyzvynqrjunajowomembvxwyghuzgy` (`userId`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_etrmbgugxfexpjhcklrffurbovatqrqgawoq` (`key`,`fingerprint`);

--
-- Indexes for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_bzgockhqcrqjhzojnwjblblaloovmtlgvgwl` (`creatorId`,`provisional`),
  ADD KEY `craft_idx_jcyklizkmbyjfpldiytlmqzoxyyqrparjcee` (`saved`),
  ADD KEY `craft_fk_tlvmxtlbccmwxoqodfqzjdmcoofvpzzmvqbx` (`sourceId`);

--
-- Indexes for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_voaqfquumhefzlmjfgxscdyjnwnhjgdlsvkd` (`type`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_ciqxfjgfycihdkrgigfjhxomrhdlquoctxgd` (`dateDeleted`),
  ADD KEY `craft_idx_rxieskdmyfsqbatkanzbyszziarjvjdarjek` (`fieldLayoutId`),
  ADD KEY `craft_idx_hdnafwywdwylawufffehkikwffvykirtjals` (`type`),
  ADD KEY `craft_idx_wiuwogoigeelpzowodhlninihfirfudygxyv` (`enabled`),
  ADD KEY `craft_idx_zoihzhhsspcftaysbwefwhqixvqlpllzljch` (`archived`,`dateCreated`),
  ADD KEY `craft_idx_jppwuuesbqbinootptivgtgqewediplgcdib` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `craft_fk_cyigshjndzqscxzgcxrsortywkzbxibtkeuv` (`canonicalId`),
  ADD KEY `craft_fk_cyyvykqspkroeyndlafnamupzsbpgyeldgwv` (`draftId`),
  ADD KEY `craft_fk_aqhunhxyiuqdlmqwpfcvdnnlhcqwtsvodgqu` (`revisionId`);

--
-- Indexes for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_pehegslaraxoymvjewdtqtpoykzauiqilxkm` (`elementId`,`siteId`),
  ADD KEY `craft_idx_xrwvrphgelqevrqxymofdwfyhcomqcjfljdq` (`siteId`),
  ADD KEY `craft_idx_scccnwpnlqeuframkdtglgbvjzcvrycmeewk` (`slug`,`siteId`),
  ADD KEY `craft_idx_ypathodvixiwbouibsoavypstgrhvnsjbsvg` (`enabled`),
  ADD KEY `craft_idx_rwhonfpcqpjijqxbfsedxggttxlmwtablyii` (`uri`,`siteId`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_vrtgippplbphenruqkwiwsvgpucltizrfrlm` (`postDate`),
  ADD KEY `craft_idx_hbytxqdsmjjttebebfkpyvexybrizvdifkmk` (`expiryDate`),
  ADD KEY `craft_idx_mikrmigttqiubcwrirunshjxiluvksxifhhg` (`authorId`),
  ADD KEY `craft_idx_ozewrgbggooxjgtcvhgwxwgkhogwlxmronda` (`sectionId`),
  ADD KEY `craft_idx_ldtgqgwrzjfgivbtnqoffwjdpljmewjgdfvc` (`typeId`),
  ADD KEY `craft_fk_feygbccvjchjlotabpdfodiuihdonqdhhusz` (`parentId`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_vhikqrnrxodswikginynkguobtaefxwfiudv` (`name`,`sectionId`),
  ADD KEY `craft_idx_qhazeqvfxgzvculqbmkvkjetickiqvvtxhrj` (`handle`,`sectionId`),
  ADD KEY `craft_idx_wmflfqpsdnmrekojocczbnxaidchebpgmhsf` (`sectionId`),
  ADD KEY `craft_idx_cgpqidquwwsrgruczlqorrhgswdeeryfuwnw` (`fieldLayoutId`),
  ADD KEY `craft_idx_szztplkausfhwwovxfnofupyzvjxzxykcahe` (`dateDeleted`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_umuxpdgbdehhhwvhtiqpgrhvqtpwuclpwdnj` (`name`),
  ADD KEY `craft_idx_gmaablivunsyyxcugunrrpumynurylbzycld` (`dateDeleted`,`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_brveikrbdxoqnnvamlrfhrmtxwctglnnnzbr` (`layoutId`,`fieldId`),
  ADD KEY `craft_idx_kqwpbusczqnnhrgzpmylrqpjdrwhteepzfgc` (`sortOrder`),
  ADD KEY `craft_idx_ovpqctymdqdyknyosbgfwohsdbfeendemeyg` (`tabId`),
  ADD KEY `craft_idx_jzmkmdvqcedfturxrrrqdnjcndeieiwoaded` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_gzxbujzsmhowkltrahqcxjfjnylgifkddjpd` (`dateDeleted`),
  ADD KEY `craft_idx_xmwpiihhqnzhjlrdwjrfbkrmmhbdrxtpbzly` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_nzphamyaniwmreceqvmcxtqhnpnrargrznfy` (`sortOrder`),
  ADD KEY `craft_idx_vbudrdvaqeejootusxqboszwqmnucvcufdas` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_wrltnxljjylowaypwvwrfvlcboijyxcdkocj` (`handle`,`context`),
  ADD KEY `craft_idx_vkosuknsabhpcmkcsqeifoobsgdljfmzqjvp` (`groupId`),
  ADD KEY `craft_idx_lujgwdstwrjegrvslpxnfqjynrzcwulspqib` (`context`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_txjanpqmxsfrhdbdtqotlemnwztsxyncbtlp` (`name`),
  ADD KEY `craft_idx_rnmmiaxgkrpzpnpafywdmipeesaamiyhcucs` (`handle`),
  ADD KEY `craft_idx_qpwlecdcyewphtfdtfkqdlmhohiegcayjtdf` (`fieldLayoutId`),
  ADD KEY `craft_idx_iwvfkchlukgimmqutobmuuyfxnabzemqwexy` (`sortOrder`);

--
-- Indexes for table `craft_gqlschemas`
--
ALTER TABLE `craft_gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_gqltokens`
--
ALTER TABLE `craft_gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_ueymdllrmamhehihiydxytarpmfkijlkzyru` (`accessToken`),
  ADD UNIQUE KEY `craft_idx_tlpxmqepmavmbiozjelojdpvrhrkkuxamsrc` (`name`),
  ADD KEY `craft_fk_unyahktkdbmsfyyvlbwwqsuqvxigtxvymzkq` (`schemaId`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_ftsuyhoptuqyxhcspmsyasgwkqdhnjqfwhbk` (`ownerId`),
  ADD KEY `craft_idx_vpkezqnulbnglsbaazpknurigbhubtwhyies` (`fieldId`),
  ADD KEY `craft_idx_gupvmolitfhmzxblghbeqszvxhbmatiinlse` (`typeId`),
  ADD KEY `craft_idx_emtpdomjwtrbhhdhnkqjiqbwfjioadktrqya` (`sortOrder`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_agalsltyyawiprursfrilxowibttpgbpgwxg` (`name`,`fieldId`),
  ADD KEY `craft_idx_agqnhkidqrrzkmtukjbaxhjhfvbhfnhjkydt` (`handle`,`fieldId`),
  ADD KEY `craft_idx_wgfwkecozhlteclrdtiowhzzkyefpkpvlqbt` (`fieldId`),
  ADD KEY `craft_idx_psqtbehwpucdvmvxqwzsphfywkjnqdzbdxae` (`fieldLayoutId`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_mzyqxfjchljvjdwlogpczhpapnpcovqqjaom` (`track`,`name`);

--
-- Indexes for table `craft_navigation_navs`
--
ALTER TABLE `craft_navigation_navs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_vavbqmxvzamhhqjsjsedgmlzmsrouriuwhrq` (`handle`),
  ADD KEY `craft_idx_ayvhzzsmbsuzujrxnpnknanjmyskkcnpultg` (`structureId`),
  ADD KEY `craft_idx_wbwjwppdhbbneofxfnzykepabfwwayqldrkn` (`fieldLayoutId`),
  ADD KEY `craft_idx_njnyybvoqyjpeaaxziedfdccauhmddnckoma` (`dateDeleted`);

--
-- Indexes for table `craft_navigation_nodes`
--
ALTER TABLE `craft_navigation_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_orkfrmuctnxjbukxdeomrjuawakyoctqefni` (`navId`),
  ADD KEY `craft_fk_xmixyexwknxtzgsndisivnyblxfuczuljdia` (`elementId`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_fgcfwupidplrdvqzaaolufkuaxfyguxwdvlr` (`handle`);

--
-- Indexes for table `craft_projectconfig`
--
ALTER TABLE `craft_projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `craft_queue`
--
ALTER TABLE `craft_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_cxulohuviaypmfwfhatpquzezhqcjwkhikcr` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `craft_idx_cpkwaddivxscoonjevwxqhucbikkpfbqvwgo` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_eaaiwlddixomwwufhrxqxmxkfjowvktatstt` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `craft_idx_jnakyoscglcatzximhbbdgkmjlrbxqtipncx` (`sourceId`),
  ADD KEY `craft_idx_spngldfkrlwtyeurczyrhcxpiyawwauofuhs` (`targetId`),
  ADD KEY `craft_idx_qlytubpswkiviokhakwdiyawpjzvulzjlrfz` (`sourceSiteId`);

--
-- Indexes for table `craft_resourcepaths`
--
ALTER TABLE `craft_resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_ylbpzckruqdkrmqtjoetokgqynxoysfquwow` (`sourceId`,`num`),
  ADD KEY `craft_fk_plhntapzfgsknwoimbvydffhjxvufwegdfuq` (`creatorId`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_idx_nwjlqlymyfqowawbajrlelfxuzshymszfkln` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_ziclmksqqgmloeulvtabkghkaqffuznepafu` (`handle`),
  ADD KEY `craft_idx_ynuvynndnrwgrodloeuvdxfvuxyaltrdgtgf` (`name`),
  ADD KEY `craft_idx_qrioqxzsculoqrnlslvganpvobpulxjjhpwo` (`structureId`),
  ADD KEY `craft_idx_trnjhlzortgghcymwrdhpbgzsqclanypgrrl` (`dateDeleted`);

--
-- Indexes for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_rbeepikrelovfquzekpicpgjzmjhiuzyobtb` (`sectionId`,`siteId`),
  ADD KEY `craft_idx_pbyomcwqkcgwjzwzeqduznzsfejsrluvjvja` (`siteId`);

--
-- Indexes for table `craft_sequences`
--
ALTER TABLE `craft_sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_eagozlqlngmnwyiiwzjgccqdeenbxavzautt` (`uid`),
  ADD KEY `craft_idx_aqtowptjpbvwrhskmitrjguvjeygblkingxk` (`token`),
  ADD KEY `craft_idx_xckjeiagdlqfifnwcrgsngyowsdsygoiwcwe` (`dateUpdated`),
  ADD KEY `craft_idx_wvczuweixovceipiscvqinktzuzzllrjlrfm` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_cawnkconljsemqisorazuxvyivrfwmmufkkz` (`userId`,`message`);

--
-- Indexes for table `craft_sitegroups`
--
ALTER TABLE `craft_sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_kjumuldlcloqngntnbwrlnpfkfomoprlpsnd` (`name`);

--
-- Indexes for table `craft_sites`
--
ALTER TABLE `craft_sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_kisdjdszboxizpsinyebieeohbijcynfhdye` (`dateDeleted`),
  ADD KEY `craft_idx_dqrocoprscokgxxbenmuiyadsdbgcujrnbuc` (`handle`),
  ADD KEY `craft_idx_gctysmifxcozwwlqqndxceizvgmxqvujsysg` (`sortOrder`),
  ADD KEY `craft_fk_ibwyfqfsvhgpcutybxsycbfyduhsgptsfclp` (`groupId`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_roefkgntgfbpbybyrfcoyimmdiaunywmfwzj` (`structureId`,`elementId`),
  ADD KEY `craft_idx_klgiwatxufvuodlctdejnimkllhufmbrkeva` (`root`),
  ADD KEY `craft_idx_nhtgnnarvcbsjkstgynaprbkcbxneseczjms` (`lft`),
  ADD KEY `craft_idx_rvcertuzgmbmkcuohiiuvwjvcuppzmbkbcsr` (`rgt`),
  ADD KEY `craft_idx_ibmvopwmvvsimspgjzdhtjbbqklzquanglub` (`level`),
  ADD KEY `craft_idx_mblgjlukcnojggsiblbgaxmhaarjndzrqghd` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_acsdqpgxomicygosinrrdflpwdqbtusixntj` (`dateDeleted`);

--
-- Indexes for table `craft_systemmessages`
--
ALTER TABLE `craft_systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_cdjqymhrpqzkzslpbwvkudtuhofuckflovpz` (`key`,`language`),
  ADD KEY `craft_idx_skxpnnlvebiyxggogdanxeaoqpizxqqdunxv` (`language`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_uippsirvzmrjcvwkvacnsdwyuawgfxdfbkmf` (`name`),
  ADD KEY `craft_idx_shlorfnhafxrhticmdmnxykyzshgbsrywnmq` (`handle`),
  ADD KEY `craft_idx_jtuucrowbnpdtkbuvnihucgyoknlvhkomnbl` (`dateDeleted`),
  ADD KEY `craft_fk_gdlhdxzibdfibzcrlnzfgtvkkizuprpinwxs` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_nbkzkvkdkdycnqeltdhawhifgljumsjsovht` (`groupId`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_hwfkoxpscsfarceibcrjjikspdkaotontfwv` (`cacheId`),
  ADD KEY `craft_idx_bdhclhvagbzhearupmftjuiqwqcostxflzjt` (`elementId`);

--
-- Indexes for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_havfnsgympthlfhbszuqbdtkuwrgywzybvtb` (`cacheId`),
  ADD KEY `craft_idx_nrsxwoybkbfemcsvmjtcuxhjnolmzxdloxjy` (`type`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_mndzkxtmajxkjhmsvaybklnsydsszkzpotnh` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `craft_idx_xsmhdbstfiocknbspxblyliahgdwgpwvpymh` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `craft_idx_aectwlfsguomgetdcwqnowkzjpxgldwwqmwy` (`siteId`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_tajvyybjdixylxmhpnclghecvsgsvkrimgjp` (`token`),
  ADD KEY `craft_idx_wcgtlhkvwbrcautwzllwicboblfzffuphplw` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_yttqcmhbcjgmpaqmvszcyudvafeonagiyngr` (`handle`),
  ADD KEY `craft_idx_eglicehprdfspmxdxgqznwrcneqqjvqmawql` (`name`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_fzfhotbpbxsfphqcnzktebsdawfyuupuiihx` (`groupId`,`userId`),
  ADD KEY `craft_idx_mspzoojfwycymspyccgvaefmoyemdsyyktgu` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_qrcwrcxnjqqnhruzvtzbxqccwvhoihtbfohu` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_ejrpyqiscwsorrhuntlhivbfinfqzzzflots` (`permissionId`,`groupId`),
  ADD KEY `craft_idx_hvpjbbweqxwufjmqcurjckonqfcboabrpaxf` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_yczpvvaoszwbmhoainvykbuuuoaeuhmtrjnk` (`permissionId`,`userId`),
  ADD KEY `craft_idx_gxkfecnzzyybnkastpcclddeowlzxvchwgno` (`userId`);

--
-- Indexes for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_dpldlalrptkataliyhrqhqaptrmzisbgdchi` (`uid`),
  ADD KEY `craft_idx_dvveyvzuawxxxvjxpmftyvohztzizgcbdcav` (`verificationCode`),
  ADD KEY `craft_idx_qhvxunyppseiiqrtubycecyuxtsyrqsyqaiy` (`email`),
  ADD KEY `craft_idx_ltrsgmckjkcmkfhwpejcklwdbgkqwjpahsqo` (`username`),
  ADD KEY `craft_fk_hmxbvqozywvowlgnijoxeoxucnxqljwgvlaw` (`photoId`);

--
-- Indexes for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_ulhylvvfixzjrcuzxgabyaedscuccejferhy` (`name`,`parentId`,`volumeId`),
  ADD KEY `craft_idx_tzbttjclnjvdffbhrunhdtirdpnyqyjppiia` (`parentId`),
  ADD KEY `craft_idx_cslmghdmwyxdbfkvvvwuzijslliuesihtssd` (`volumeId`);

--
-- Indexes for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_qdhokhjjxpzsuhafnbvzxiijiycsqgfmhijw` (`name`),
  ADD KEY `craft_idx_zrojoaamujkypdifspxdjpcabcoxdfifopcy` (`handle`),
  ADD KEY `craft_idx_gwxxmkcongypzpeehlihxqbbcwyxqfhaiosd` (`fieldLayoutId`),
  ADD KEY `craft_idx_ryeszjwlwovbdkkbqjrgkedchuacoqfmfpbr` (`dateDeleted`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_ueecokeobloxtlqsepowxvgcrgfkovkemeqf` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_announcements`
--
ALTER TABLE `craft_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `craft_gqlschemas`
--
ALTER TABLE `craft_gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_gqltokens`
--
ALTER TABLE `craft_gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `craft_navigation_navs`
--
ALTER TABLE `craft_navigation_navs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_queue`
--
ALTER TABLE `craft_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_sitegroups`
--
ALTER TABLE `craft_sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_sites`
--
ALTER TABLE `craft_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `craft_systemmessages`
--
ALTER TABLE `craft_systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_announcements`
--
ALTER TABLE `craft_announcements`
  ADD CONSTRAINT `craft_fk_vwqfjdtlddlsfckkupqkmlcrnhiagdhagldr` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_ynzgaxdfomuyefckxzqmpkutrfudusdysbar` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_fk_rbetvdqrstvffsvzpqktgzhwokpelhmncuor` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assets`
--
ALTER TABLE `craft_assets`
  ADD CONSTRAINT `craft_fk_ahhsmmdpwhniisdbaaecdjohddgzzvzjsxyv` FOREIGN KEY (`folderId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_mabaifvgiiufphzwamsumssghirqmtujqqwc` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_qyrpzfbaobrbcsilpboczayatwhltbkfaaus` FOREIGN KEY (`uploaderId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_zskeavwaecbgnshrrfpxitfaabuswggxmhht` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_fk_eruzmrvvbcoronjlkchljkmlmkohebsjrppz` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_grgngkbyvjzfnctdialdcdtigsjljtexpdbv` FOREIGN KEY (`parentId`) REFERENCES `craft_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_uzvgyjejrtmpthfnpsghsbgrnhodfotzjkkc` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_fk_akhmzpvdyynwcagetsmdgvspptnkyedgvyqm` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_zfpcdxkwfjxhqrpcespzvqcyfvorjoptxuca` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  ADD CONSTRAINT `craft_fk_hxtphighdnhesayhmyhliiufkcoykqorleqs` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_xpyfraxrkheqzugngqjbdcgmtgsohieshtbp` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_changedattributes`
--
ALTER TABLE `craft_changedattributes`
  ADD CONSTRAINT `craft_fk_qcofcgzsjaxygjfvfkxrylsfcqtfzynfnxxt` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_uibdowupvcvurtretexzxxdjiojfclpwvhmw` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_xurprqyhkijbbfoghvszfqiwqyqjasmvfbfs` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_changedfields`
--
ALTER TABLE `craft_changedfields`
  ADD CONSTRAINT `craft_fk_hhhkxpuqhaowoflenzjutolqwmgzcjmgobea` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_sxnsrhvahblucmfrrekijnayugnktxrodeng` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_wxbedzqmmazxkzofmbiwqewknbdiiuyfpvqt` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_zdwoyicknambitngkaefcjpryxhizvoetzpn` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_fk_nquhnbdhhfgpwmspfgtbmsmraovbsyykdhze` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_thoxrgispzcvkuxwrumheicmirtghlwspxvd` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  ADD CONSTRAINT `craft_fk_ybqezzwyzvynqrjunajowomembvxwyghuzgy` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  ADD CONSTRAINT `craft_fk_cyiazdcllnxwubfzigddyaszmzuwgkxzicia` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_tlvmxtlbccmwxoqodfqzjdmcoofvpzzmvqbx` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD CONSTRAINT `craft_fk_aqhunhxyiuqdlmqwpfcvdnnlhcqwtsvodgqu` FOREIGN KEY (`revisionId`) REFERENCES `craft_revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_cyigshjndzqscxzgcxrsortywkzbxibtkeuv` FOREIGN KEY (`canonicalId`) REFERENCES `craft_elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_cyyvykqspkroeyndlafnamupzsbpgyeldgwv` FOREIGN KEY (`draftId`) REFERENCES `craft_drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_smbqqwubbczhpbggxfamrgpliwjlyaohvwqu` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  ADD CONSTRAINT `craft_fk_cqikczzirvrgeitzdatyhfklwqmomcgzdurg` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_fgcmrqrlidomhpiqshivorpdhrwxfxidofvn` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_fk_feygbccvjchjlotabpdfodiuihdonqdhhusz` FOREIGN KEY (`parentId`) REFERENCES `craft_entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_ftftvdzrsxewtifwjukpfwkcdccivtiydosh` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_xksnhdyfkekbpadxldufrxvgniqstqzdesbk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_yfwznxgfaizhleknsihzubkhnwytnkygqdzy` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_zdfxaszgnovrscglxzsdbzpzydzzxcmzpdxo` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_fk_lwmocblbxqathhndgoxrpqctodojevawmxsh` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_rvazmtymcgwjadwbugniuzljxxydqggogang` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fk_admxaedgxoavkuyiiyxboaiwqqsgqblkokmz` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_kpfwythfjlaxlkbblaeemqslwcxmykivrvbl` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_lkcyktyrazxnktkbmoqkkthkalakgmaejkvw` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fk_kgqwfcvvuynlbvphrdxwkptjkxgiqbuoqpig` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fk_ldyiyfhmqjkyghbzxsansbjwyixtkouezjce` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_fk_ffpuzqakmdzfzdltsdfhqfgsobdawvgdhjug` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_yudqbbzrwgxpdhptfizywzrnqfmdsiyilgri` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_gqltokens`
--
ALTER TABLE `craft_gqltokens`
  ADD CONSTRAINT `craft_fk_unyahktkdbmsfyyvlbwwqsuqvxigtxvymzkq` FOREIGN KEY (`schemaId`) REFERENCES `craft_gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_fk_icciibbtpqgdpvwwpbgmgudfymoxhoflxfza` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_mfekwcjrohtnvvssidqtdjwzidlrzzbpnjdo` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_uxzcchozzfvehjxglhlkjryedvszixilxvns` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_xsptvzwteqwtzwtairbpdyhmttcsgqylxihe` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_fk_oufnktwxnvmlvvoayfnrisixfmfzkecstieo` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_xoxniuguwijjrhuvdvdsitafxdzcvughikxv` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_navigation_navs`
--
ALTER TABLE `craft_navigation_navs`
  ADD CONSTRAINT `craft_fk_kbxcdbqeujvixcqkslbxpurtrgmawralngzw` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_lhgsvlknivpeonmtgdyqpoihcpodlcuhqinx` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_navigation_nodes`
--
ALTER TABLE `craft_navigation_nodes`
  ADD CONSTRAINT `craft_fk_bgwkjgkccoagtvrhxphhjkouynijywsoeyug` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_qbncxrxydtqewetjpqokbhjlwlnemsecxusp` FOREIGN KEY (`navId`) REFERENCES `craft_navigation_navs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_xmixyexwknxtzgsndisivnyblxfuczuljdia` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_fk_gaxpevhnhtemrksqfsnzohqjplpmuhxboafb` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_kbszcsxvshijdhvbkigryxqxavwivwzfiscd` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_pmqckehyddekhqxizqlheqgdzugwzmeftvcf` FOREIGN KEY (`sourceSiteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_pzxomlzcokhjqxvfunfudxnfuketllpqivko` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  ADD CONSTRAINT `craft_fk_inguzxjtlycleeqhtekccpnrlmpeclgwgzth` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_plhntapzfgsknwoimbvydffhjxvufwegdfuq` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_fk_ktguzovlizizchwwzrsiuzfcvybydedggzon` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  ADD CONSTRAINT `craft_fk_hbevkfzztpauvasndsrwhqkdlwrutxshzspc` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_sqqiniwyirkoysjbfqgksujhjsoyyagxqqos` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_fk_qshefxewvflvwgxevrgqujnfurcdtgpabrxo` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_fk_lladpnlmzdxgimrywnaxnoqslmyhrkqdcubk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sites`
--
ALTER TABLE `craft_sites`
  ADD CONSTRAINT `craft_fk_ibwyfqfsvhgpcutybxsycbfyduhsgptsfclp` FOREIGN KEY (`groupId`) REFERENCES `craft_sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_fk_btyvrfqpyrpihttdpgfgsqsgkngrqlrjqpii` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_vhrqoexmncpztryimzvmbewkusvzfuxolfai` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_fk_gdlhdxzibdfibzcrlnzfgtvkkizuprpinwxs` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_fk_illhmfnejiilnjiopjwdctxwavcvkirvrbpq` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_onnwxafivfdvsuwsgtggnpvulcudqnybiqcu` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_fk_cwtlwwjfaugasvghhhovehiqhcrjdpnekith` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_qxxaubucuyaklxffksycrrycwlgbxjhgrori` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  ADD CONSTRAINT `craft_fk_jxvibmddttrbhfyqfbfgydtybjvunvjulvgl` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_fk_btsuidesbjfytrvehnymjabvprdrjnchxxtm` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_fk_aoaocktrnbvttgnnfighxmiyxmrdrmapvdib` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_egtfadkqbbneojkqehbwanmexswewhoqomev` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_fk_kstopdujquhrgzsiwznqbtrkqqtszuhipxsc` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_sdztqtjaxrttzbugmnpaczhxfizckqzawrlg` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_fk_rcgamlrepvvjcieggimygqbggugcssfpehgg` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_veuquhdwxvphcmdngkptirkskgqoagzgkpen` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  ADD CONSTRAINT `craft_fk_gcnkpvuzrrpwvvitxvrvirlbikstujaznxgt` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_fk_hmxbvqozywvowlgnijoxeoxucnxqljwgvlaw` FOREIGN KEY (`photoId`) REFERENCES `craft_assets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_nxgmibokiyapyubqcnygvxxahlxswtxijjgn` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  ADD CONSTRAINT `craft_fk_sfufdnqmldrogxdjqexykcgfccvtnynuzmki` FOREIGN KEY (`parentId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_zeebzhcaccbjpjrwvsizpdfmceelzlwqpard` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  ADD CONSTRAINT `craft_fk_mhgrpwmrrmvjqoktfhhziyxmpqdchosvvmrf` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_fk_eccypfyulxokfmrmdhlahfpnkptubcxccjkn` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
