-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: homzen
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'ShaIeA4xY8sAFtdVw6i6verOnm3jFl9j',1,'2025-11-25 08:37:52','2025-11-25 08:37:52','2025-11-25 08:37:52');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Explore Our Exciting New Property Listings Now Available in Prime Locations!',0,NULL,NULL,0,1,'2025-11-25 15:38:02',NULL,1,'2025-11-25 08:38:02','2025-11-25 08:38:02'),(2,'Announcement 2','Join Us for Exclusive Open House Events This Weekend and Find Your Perfect Home!',0,NULL,NULL,0,1,'2025-11-25 15:38:02',NULL,1,'2025-11-25 08:38:02','2025-11-25 08:38:02'),(3,'Announcement 3','Take Advantage of Limited-Time Offers on Luxury Homes with Stunning Features!',0,NULL,NULL,0,1,'2025-11-25 15:38:02',NULL,1,'2025-11-25 08:38:02','2025-11-25 08:38:02'),(4,'Announcement 4','Discover Your Dream Home with Our Latest Listings and Personalized Services!',0,NULL,NULL,0,1,'2025-11-25 15:38:02',NULL,1,'2025-11-25 08:38:02','2025-11-25 08:38:02');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Senior Full Stack Engineer, Creator Success Full Time','West Connor, New Caledonia','$1,489','Constantly changing work patterns and norms, and the need for organizational resiliency','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-25 08:38:02','2025-11-25 08:38:02'),(2,'Data Science Specialist, Analytics Division','Port Donavonland, Australia','$9,981','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum — semper quis lectus nulla','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-25 08:38:02','2025-11-25 08:38:02'),(3,'Product Marketing Manager, Growth Team','Port Vena, Heard Island and McDonald Islands','$9,247','Crafting compelling marketing strategies to drive user acquisition and retention','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-25 08:38:02','2025-11-25 08:38:02'),(4,'UX/UI Designer, User Experience Team','Kingmouth, United States Minor Outlying Islands','$3,779','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-25 08:38:02','2025-11-25 08:38:02'),(5,'Operations Manager, Supply Chain Division','Bellatown, Qatar','$4,458','Ensuring smooth and efficient supply chain operations for timely product delivery','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-25 08:38:02','2025-11-25 08:38:02'),(6,'Financial Analyst, Investment Group','Lake Myrl, New Caledonia','$4,651','Analyzing market trends and investment opportunities for optimal financial outcomes','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-25 08:38:02','2025-11-25 08:38:02');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers_translations`
--

DROP TABLE IF EXISTS `careers_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`careers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers_translations`
--

LOCK TABLES `careers_translations` WRITE;
/*!40000 ALTER TABLE `careers_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Buying a Home',0,'Facilis nihil ut molestiae aperiam numquam soluta. Praesentium repellendus minima et expedita veritatis quam. Repudiandae nostrum repellat non et et. Dolorem et nostrum dolor perspiciatis alias.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(2,'Selling a Home',0,'Explicabo quidem dolore qui error officia ipsa eaque enim. Ipsa necessitatibus qui voluptatem dolorem corrupti facere et. Quis qui eos omnis dolor optio.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(3,'Market Trends',0,'Commodi harum fugit atque quia et porro. Dolorem sit doloremque dolor similique voluptas ex. Deleniti iste ut assumenda eius vero.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(4,'Home Improvement',0,'Id quam eum beatae aspernatur commodi sed. Aliquam rem odit veritatis reprehenderit quia et. Asperiores fuga dolorem voluptatem voluptatem totam perferendis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(5,'Real Estate Investing',0,'In placeat est accusantium consequatur. Voluptas neque sunt est ut aut quam atque est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(6,'Neighborhood Guides',0,'Quo ipsam quia doloremque omnis odit consequuntur consectetur. Vitae et voluptatibus voluptatum enim blanditiis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-25 08:37:58','2025-11-25 08:37:58');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Paris','paris',1,1,NULL,0,'locations/5.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(2,'London','london',2,2,NULL,0,'locations/3.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(3,'New York City','new-york-city',3,3,NULL,0,'locations/5.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(4,'Amsterdam','amsterdam',4,4,NULL,0,'locations/3.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(5,'Copenhagen','copenhagen',5,5,NULL,0,'locations/1.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(6,'Munich','munich',6,6,NULL,0,'locations/2.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(7,'Tokyo','tokyo',7,7,NULL,0,'locations/4.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(8,'Toronto','toronto',8,8,NULL,0,'locations/5.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(9,'Sydney','sydney',9,9,NULL,0,'locations/2.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(10,'Milan','milan',10,10,NULL,0,'locations/5.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(11,'Los Angeles','los-angeles',11,3,NULL,0,'locations/1.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(12,'Berlin','berlin',12,6,NULL,0,'locations/3.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(13,'Osaka','osaka',13,7,NULL,0,'locations/3.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(14,'Vancouver','vancouver',14,8,NULL,0,'locations/4.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(15,'Melbourne','melbourne',15,9,NULL,0,'locations/2.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(16,'Rome','rome',16,10,NULL,0,'locations/3.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(17,'Marseille','marseille',17,1,NULL,0,'locations/1.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(18,'Liverpool','liverpool',18,2,NULL,0,'locations/1.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(19,'Chicago','chicago',19,3,NULL,0,'locations/1.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(20,'Rotterdam','rotterdam',20,4,NULL,0,'locations/1.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(21,'Aarhus','aarhus',21,5,NULL,0,'locations/4.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(22,'Frankfurt','frankfurt',22,6,NULL,0,'locations/4.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(23,'Kyoto','kyoto',23,7,NULL,0,'locations/4.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(24,'Montreal','montreal',24,8,NULL,0,'locations/5.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(25,'Brisbane','brisbane',25,9,NULL,0,'locations/5.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(26,'Naples','naples',26,10,NULL,0,'locations/4.jpg',0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','French',0,NULL,0,'published',NULL,NULL,'FRA'),(2,'England','English',0,NULL,0,'published',NULL,NULL,'UK'),(3,'USA','Americans',0,NULL,0,'published',NULL,NULL,'US'),(4,'Holland','Dutch',0,NULL,0,'published',NULL,NULL,'HL'),(5,'Denmark','Danish',0,NULL,0,'published',NULL,NULL,'DN'),(6,'Germany','German',0,NULL,0,'published',NULL,NULL,'DE'),(7,'Japan','Japanese',0,NULL,0,'published',NULL,NULL,'JP'),(8,'Canada','Canadian',0,NULL,0,'published',NULL,NULL,'CA'),(9,'Australia','Australian',0,NULL,0,'published',NULL,NULL,'AU'),(10,'Italy','Italian',0,NULL,0,'published',NULL,NULL,'IT');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Buying',0,'published','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL),(2,'Selling',1,'published','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL),(3,'Renting',2,'published','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL),(4,'Financing',3,'published','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',1,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(2,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',1,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(3,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',1,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(4,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',1,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(5,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',1,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(6,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',1,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(7,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',1,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(8,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',2,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(9,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',2,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(10,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',2,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(11,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',2,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(12,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',2,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(13,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',2,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(14,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',2,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(15,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',3,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(16,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',3,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(17,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',3,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(18,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',3,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(19,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',3,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(20,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',3,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(21,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',4,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(22,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',4,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(23,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',4,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(24,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',4,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(25,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',4,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(26,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',4,'published','2025-11-25 08:37:51','2025-11-25 08:37:51'),(27,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',4,'published','2025-11-25 08:37:51','2025-11-25 08:37:51');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','21cbfa66c3f2f8e014175fcf6b399d54',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','6efb1dccff87ab02cd300b7363c744ca',1,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',6977,'locations/1.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(2,0,'10','10',1,'image/jpeg',6977,'locations/10.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(3,0,'11','11',1,'image/jpeg',6977,'locations/11.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(4,0,'2','2',1,'image/jpeg',6977,'locations/2.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(5,0,'3','3',1,'image/jpeg',6977,'locations/3.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(6,0,'4','4',1,'image/jpeg',6977,'locations/4.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(7,0,'5','5',1,'image/jpeg',6977,'locations/5.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(8,0,'6','6',1,'image/jpeg',6977,'locations/6.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(9,0,'7','7',1,'image/jpeg',6977,'locations/7.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(10,0,'8','8',1,'image/jpeg',6977,'locations/8.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(11,0,'9','9',1,'image/jpeg',6977,'locations/9.jpg','[]','2025-11-25 08:37:51','2025-11-25 08:37:51',NULL,'public'),(12,0,'1','1',2,'image/jpeg',71367,'users/1.jpg','[]','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'public'),(13,0,'1','1',3,'image/jpeg',3916,'avatars/1.jpg','[]','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'public'),(14,0,'10','10',3,'image/jpeg',3916,'avatars/10.jpg','[]','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'public'),(15,0,'11','11',3,'image/jpeg',3916,'avatars/11.jpg','[]','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'public'),(16,0,'2','2',3,'image/jpeg',3916,'avatars/2.jpg','[]','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'public'),(17,0,'3','3',3,'image/jpeg',3916,'avatars/3.jpg','[]','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'public'),(18,0,'4','4',3,'image/jpeg',3916,'avatars/4.jpg','[]','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'public'),(19,0,'5','5',3,'image/jpeg',3916,'avatars/5.jpg','[]','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'public'),(20,0,'6','6',3,'image/jpeg',3916,'avatars/6.jpg','[]','2025-11-25 08:37:53','2025-11-25 08:37:53',NULL,'public'),(21,0,'7','7',3,'image/jpeg',3916,'avatars/7.jpg','[]','2025-11-25 08:37:53','2025-11-25 08:37:53',NULL,'public'),(22,0,'8','8',3,'image/jpeg',3916,'avatars/8.jpg','[]','2025-11-25 08:37:53','2025-11-25 08:37:53',NULL,'public'),(23,0,'9','9',3,'image/jpeg',3916,'avatars/9.jpg','[]','2025-11-25 08:37:53','2025-11-25 08:37:53',NULL,'public'),(24,0,'1','1',4,'image/jpeg',9803,'properties/1.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(25,0,'10','10',4,'image/jpeg',9803,'properties/10.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(26,0,'11','11',4,'image/jpeg',9803,'properties/11.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(27,0,'12','12',4,'image/jpeg',9803,'properties/12.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(28,0,'13','13',4,'image/jpeg',9803,'properties/13.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(29,0,'2','2',4,'image/jpeg',9803,'properties/2.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(30,0,'3','3',4,'image/jpeg',9803,'properties/3.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(31,0,'4','4',4,'image/jpeg',9803,'properties/4.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(32,0,'5','5',4,'image/jpeg',9803,'properties/5.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(33,0,'6','6',4,'image/jpeg',9803,'properties/6.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(34,0,'7','7',4,'image/jpeg',9803,'properties/7.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(35,0,'8','8',4,'image/jpeg',9803,'properties/8.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(36,0,'9','9',4,'image/jpeg',9803,'properties/9.jpg','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(37,0,'floor','floor',4,'image/png',9803,'properties/floor.png','[]','2025-11-25 08:37:56','2025-11-25 08:37:56',NULL,'public'),(38,0,'1','1',5,'image/jpeg',9803,'posts/1.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(39,0,'10','10',5,'image/jpeg',9803,'posts/10.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(40,0,'2','2',5,'image/jpeg',9803,'posts/2.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(41,0,'3','3',5,'image/jpeg',9803,'posts/3.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(42,0,'4','4',5,'image/jpeg',9803,'posts/4.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(43,0,'5','5',5,'image/jpeg',9803,'posts/5.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(44,0,'6','6',5,'image/jpeg',9803,'posts/6.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(45,0,'7','7',5,'image/jpeg',9803,'posts/7.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(46,0,'8','8',5,'image/jpeg',9803,'posts/8.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(47,0,'9','9',5,'image/jpeg',9803,'posts/9.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(48,0,'md-1','md-1',5,'image/jpeg',9803,'posts/md-1.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(49,0,'md-2','md-2',5,'image/jpeg',9803,'posts/md-2.jpg','[]','2025-11-25 08:37:58','2025-11-25 08:37:58',NULL,'public'),(50,0,'about-us-contact','about-us-contact',6,'image/jpeg',19409,'pages/about-us-contact.jpg','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(51,0,'about-us-video','about-us-video',6,'image/jpeg',16191,'pages/about-us-video.jpg','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(52,0,'call-to-action','call-to-action',6,'image/png',9051,'pages/call-to-action.png','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(53,0,'house-service','house-service',6,'image/png',10923,'pages/house-service.png','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(54,0,'properties','properties',6,'image/png',16974,'pages/properties.png','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(55,0,'service-1','service-1',6,'image/png',21898,'pages/service-1.png','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(56,0,'service-2','service-2',6,'image/png',21279,'pages/service-2.png','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(57,0,'service-3','service-3',6,'image/png',23965,'pages/service-3.png','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(58,0,'service-4','service-4',6,'image/png',32050,'pages/service-4.png','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(59,0,'service-5','service-5',6,'image/png',25146,'pages/service-5.png','[]','2025-11-25 08:37:59','2025-11-25 08:37:59',NULL,'public'),(60,0,'service-6','service-6',6,'image/png',31763,'pages/service-6.png','[]','2025-11-25 08:38:00','2025-11-25 08:38:00',NULL,'public'),(61,0,'slider-1','slider-1',6,'image/jpeg',27445,'pages/slider-1.jpg','[]','2025-11-25 08:38:00','2025-11-25 08:38:00',NULL,'public'),(62,0,'slider-2','slider-2',6,'image/jpeg',23889,'pages/slider-2.jpg','[]','2025-11-25 08:38:00','2025-11-25 08:38:00',NULL,'public'),(63,0,'slider-3','slider-3',6,'image/jpeg',23889,'pages/slider-3.jpg','[]','2025-11-25 08:38:00','2025-11-25 08:38:00',NULL,'public'),(64,0,'slider-4','slider-4',6,'image/jpeg',23889,'pages/slider-4.jpg','[]','2025-11-25 08:38:00','2025-11-25 08:38:00',NULL,'public'),(65,0,'slider-5','slider-5',6,'image/jpeg',23889,'pages/slider-5.jpg','[]','2025-11-25 08:38:00','2025-11-25 08:38:00',NULL,'public'),(66,0,'slider-6','slider-6',6,'image/png',33637,'pages/slider-6.png','[]','2025-11-25 08:38:00','2025-11-25 08:38:00',NULL,'public'),(67,0,'slider-left','slider-left',6,'image/jpeg',11483,'pages/slider-left.jpg','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(68,0,'testimonial-banner','testimonial-banner',6,'image/png',13232,'pages/testimonial-banner.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(69,0,'asana','asana',7,'image/png',3510,'partners/asana.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(70,0,'github','github',7,'image/png',3510,'partners/github.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(71,0,'lhtech','lhtech',7,'image/png',3510,'partners/lhtech.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(72,0,'panadoxn','panadoxn',7,'image/png',3510,'partners/panadoxn.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(73,0,'shangxi','shangxi',7,'image/png',3510,'partners/shangxi.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(74,0,'tyaalpha','tyaalpha',7,'image/png',3510,'partners/tyaalpha.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(75,0,'vanfaba','vanfaba',7,'image/png',3510,'partners/vanfaba.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(76,0,'banner-footer','banner-footer',8,'image/png',92460,'general/banner-footer.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(77,0,'favicon','favicon',8,'image/png',1899,'general/favicon.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(78,0,'logo-light','logo-light',8,'image/png',4519,'general/logo-light.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(79,0,'logo','logo',8,'image/png',5451,'general/logo.png','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(80,0,'newsletter-image','newsletter-image',8,'image/jpeg',100774,'general/newsletter-image.jpg','[]','2025-11-25 08:38:01','2025-11-25 08:38:01',NULL,'public'),(81,0,'placeholder','placeholder',8,'image/png',12344,'general/placeholder.png','[]','2025-11-25 08:38:02','2025-11-25 08:38:02',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'locations',NULL,'locations',0,'2025-11-25 08:37:51','2025-11-25 08:37:51',NULL),(2,0,'users',NULL,'users',0,'2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(3,0,'avatars',NULL,'avatars',0,'2025-11-25 08:37:52','2025-11-25 08:37:52',NULL),(4,0,'properties',NULL,'properties',0,'2025-11-25 08:37:56','2025-11-25 08:37:56',NULL),(5,0,'posts',NULL,'posts',0,'2025-11-25 08:37:58','2025-11-25 08:37:58',NULL),(6,0,'pages',NULL,'pages',0,'2025-11-25 08:37:59','2025-11-25 08:37:59',NULL),(7,0,'partners',NULL,'partners',0,'2025-11-25 08:38:01','2025-11-25 08:38:01',NULL),(8,0,'general',NULL,'general',0,'2025-11-25 08:38:01','2025-11-25 08:38:01',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-11-25 08:38:01','2025-11-25 08:38:01');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,NULL,NULL,0,'Home',NULL,'_self',1,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage-1',NULL,0,'Homepage 1',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,1,'Homepage 2',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,2,'Homepage 3',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,3,'Homepage 4',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(6,1,1,5,'Botble\\Page\\Models\\Page','/homepage-5',NULL,4,'Homepage 5',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(7,1,0,NULL,NULL,'/projects',NULL,1,'Projects',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(8,1,0,NULL,NULL,'/properties',NULL,2,'Properties',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(9,1,0,NULL,NULL,'#',NULL,3,'Pages',NULL,'_self',1,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(10,1,9,NULL,NULL,'/agents',NULL,0,'Agents',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(11,1,9,NULL,NULL,'/careers',NULL,1,'Careers',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(12,1,9,NULL,NULL,'/wishlist',NULL,2,'Wishlist',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(13,1,9,10,'Botble\\Page\\Models\\Page','/about-us',NULL,3,'About Us',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(14,1,9,8,'Botble\\Page\\Models\\Page','/our-services',NULL,4,'Our Services',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(15,1,9,11,'Botble\\Page\\Models\\Page','/pricing-plans',NULL,5,'Pricing',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(16,1,9,7,'Botble\\Page\\Models\\Page','/contact-us',NULL,6,'Contact Us',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(17,1,9,9,'Botble\\Page\\Models\\Page','/faqs',NULL,7,'FAQs',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(18,1,9,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,8,'Privacy Policy',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(19,1,9,13,'Botble\\Page\\Models\\Page','/coming-soon',NULL,9,'Coming Soon',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(20,1,0,NULL,NULL,'#',NULL,4,'Blog',NULL,'_self',1,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(21,1,20,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog List',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01'),(22,1,20,NULL,NULL,'/news/the-benefits-of-smart-home-technology',NULL,1,'Blog Detail',NULL,'_self',0,'2025-11-25 08:38:01','2025-11-25 08:38:01');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-11-25 08:38:01','2025-11-25 08:38:01');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"ti ti-chart-bar\"]',1,'Botble\\RealEstate\\Models\\Category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(2,'icon','[\"ti ti-map\"]',2,'Botble\\RealEstate\\Models\\Category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(3,'icon','[\"ti ti-calendar\"]',3,'Botble\\RealEstate\\Models\\Category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(4,'icon','[\"ti ti-bell\"]',4,'Botble\\RealEstate\\Models\\Category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(5,'icon','[\"ti ti-home\"]',5,'Botble\\RealEstate\\Models\\Category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(6,'icon','[\"ti ti-shopping-cart\"]',6,'Botble\\RealEstate\\Models\\Category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(7,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',1,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:53','2025-11-25 08:37:53'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',2,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:53','2025-11-25 08:37:53'),(9,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',3,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:53','2025-11-25 08:37:53'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',4,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:54','2025-11-25 08:37:54'),(11,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',5,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:54','2025-11-25 08:37:54'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',6,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:54','2025-11-25 08:37:54'),(13,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',7,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:54','2025-11-25 08:37:54'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',8,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:55','2025-11-25 08:37:55'),(15,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',9,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:55','2025-11-25 08:37:55'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',10,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:55','2025-11-25 08:37:55'),(17,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',11,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:55','2025-11-25 08:37:55'),(18,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',12,'Botble\\RealEstate\\Models\\Account','2025-11-25 08:37:55','2025-11-25 08:37:55'),(19,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',1,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(20,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',2,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(21,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',3,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(22,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',4,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(23,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',5,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(24,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',6,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(25,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',7,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(26,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',8,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(27,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',9,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(28,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',10,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(29,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',11,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(30,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',12,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(31,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',13,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(32,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',14,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(33,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',15,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(34,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',16,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(35,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',17,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(36,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',18,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(37,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',19,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(38,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',20,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(39,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',21,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(40,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',22,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(41,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',23,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(42,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',24,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(43,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',25,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(44,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',26,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(45,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',27,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(46,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',28,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(47,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',29,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(48,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',30,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(49,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',31,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(50,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',32,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(51,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',33,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(52,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',34,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(53,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',35,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(54,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',36,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(55,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',37,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(56,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',38,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(57,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',39,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(58,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',40,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(59,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',41,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(60,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',42,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(61,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',43,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(62,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',44,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(63,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',45,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(64,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',46,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(65,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',47,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(66,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',48,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(67,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',49,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(68,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',50,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(69,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',51,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(70,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',52,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(71,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',53,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(72,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',54,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(73,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',55,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(74,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',56,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(75,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',57,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(76,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',58,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:57','2025-11-25 08:37:57'),(77,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',59,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:58','2025-11-25 08:37:58'),(78,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',60,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:58','2025-11-25 08:37:58'),(79,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',61,'Botble\\RealEstate\\Models\\Property','2025-11-25 08:37:58','2025-11-25 08:37:58'),(80,'breadcrumb','[\"no\"]',1,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(81,'breadcrumb','[\"no\"]',2,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(82,'breadcrumb','[\"no\"]',3,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(83,'breadcrumb','[\"no\"]',5,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(84,'breadcrumb','[\"yes\"]',6,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(85,'breadcrumb','[\"yes\"]',7,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(86,'breadcrumb','[\"yes\"]',8,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(87,'breadcrumb','[\"yes\"]',9,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(88,'breadcrumb','[\"yes\"]',10,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(89,'breadcrumb','[\"yes\"]',11,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(90,'breadcrumb','[\"yes\"]',12,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(91,'breadcrumb','[\"no\"]',13,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(92,'breadcrumb','[\"yes\"]',16,'Botble\\Page\\Models\\Page','2025-11-25 08:38:01','2025-11-25 08:38:01'),(93,'image','[\"general\\/job-details-thumb.png\"]',1,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(94,'icon','[\"icons\\/icon1.png\"]',1,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(95,'apply_url','[\"\\/contact\"]',1,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(96,'image','[\"general\\/job-details-thumb.png\"]',2,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(97,'icon','[\"icons\\/icon2.png\"]',2,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(98,'apply_url','[\"\\/contact\"]',2,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(99,'image','[\"general\\/job-details-thumb.png\"]',3,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(100,'icon','[\"icons\\/icon3.png\"]',3,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(101,'apply_url','[\"\\/contact\"]',3,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(102,'image','[\"general\\/job-details-thumb.png\"]',4,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(103,'icon','[\"icons\\/icon4.png\"]',4,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(104,'apply_url','[\"\\/contact\"]',4,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(105,'image','[\"general\\/job-details-thumb.png\"]',5,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(106,'icon','[\"icons\\/icon5.png\"]',5,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(107,'apply_url','[\"\\/contact\"]',5,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(108,'image','[\"general\\/job-details-thumb.png\"]',6,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(109,'icon','[\"icons\\/icon6.png\"]',6,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02'),(110,'apply_url','[\"\\/contact\"]',6,'ArchiElite\\Career\\Models\\Career','2025-11-25 08:38:02','2025-11-25 08:38:02');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_07_03_162029_remove_plugin_team',1),(36,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(37,'2024_07_12_100000_change_random_hash_for_media',1),(38,'2024_09_30_024515_create_sessions_table',1),(39,'2024_12_19_000001_create_device_tokens_table',1),(40,'2024_12_19_000002_create_push_notifications_table',1),(41,'2024_12_19_000003_create_push_notification_recipients_table',1),(42,'2024_12_30_000001_create_user_settings_table',1),(43,'2025_07_06_030754_add_phone_to_users_table',1),(44,'2025_07_31_add_performance_indexes_to_slugs_table',1),(45,'2025_10_29_100000_add_sessions_invalidated_at_to_users_table',1),(46,'2025_11_10_000000_cleanup_duplicate_widgets',1),(47,'2020_11_18_150916_ads_create_ads_table',2),(48,'2021_12_02_035301_add_ads_translations_table',2),(49,'2023_04_17_062645_add_open_in_new_tab',2),(50,'2023_11_07_023805_add_tablet_mobile_image',2),(51,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(52,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(53,'2024_04_27_100730_improve_analytics_setting',3),(54,'2023_08_11_060908_create_announcements_table',4),(55,'2025_02_11_153025_add_action_label_to_announcement_translations',4),(56,'2015_06_29_025744_create_audit_history',5),(57,'2023_11_14_033417_change_request_column_in_table_audit_histories',5),(58,'2025_05_05_000001_add_user_type_to_audit_histories_table',5),(59,'2025_11_07_000001_add_actor_type_to_audit_histories_table',5),(60,'2015_06_18_033822_create_blog_table',6),(61,'2021_02_16_092633_remove_default_value_for_author_type',6),(62,'2021_12_03_030600_create_blog_translations',6),(63,'2022_04_19_113923_add_index_to_table_posts',6),(64,'2023_08_29_074620_make_column_author_id_nullable',6),(65,'2024_07_30_091615_fix_order_column_in_categories_table',6),(66,'2025_01_06_033807_add_default_value_for_categories_author_type',6),(67,'2019_06_24_211801_create_career_table',7),(68,'2021_12_04_095357_create_careers_translations_table',7),(69,'2023_09_20_050420_add_missing_translation_column',7),(70,'2016_06_17_091537_create_contacts_table',8),(71,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',8),(72,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',8),(73,'2024_03_25_000001_update_captcha_settings_for_contact',8),(74,'2024_04_19_063914_create_custom_fields_table',8),(75,'2018_07_09_221238_create_faq_table',9),(76,'2021_12_03_082134_create_faq_translations',9),(77,'2023_11_17_063408_add_description_column_to_faq_categories_table',9),(78,'2016_10_03_032336_create_languages_table',10),(79,'2023_09_14_022423_add_index_for_language_table',10),(80,'2021_10_25_021023_fix-priority-load-for-language-advanced',11),(81,'2021_12_03_075608_create_page_translations',11),(82,'2023_07_06_011444_create_slug_translations_table',11),(83,'2019_11_18_061011_create_country_table',12),(84,'2021_12_03_084118_create_location_translations',12),(85,'2021_12_03_094518_migrate_old_location_data',12),(86,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',12),(87,'2022_01_16_085908_improve_plugin_location',12),(88,'2022_08_04_052122_delete_location_backup_tables',12),(89,'2023_04_23_061847_increase_state_translations_abbreviation_column',12),(90,'2023_07_26_041451_add_more_columns_to_location_table',12),(91,'2023_07_27_041451_add_more_columns_to_location_translation_table',12),(92,'2023_08_15_073307_drop_unique_in_states_cities_translations',12),(93,'2023_10_21_065016_make_state_id_in_table_cities_nullable',12),(94,'2024_08_17_094600_add_image_into_countries',12),(95,'2025_01_08_093652_add_zip_code_to_cities',12),(96,'2025_07_31_083459_add_indexes_for_location_search_performance',12),(97,'2017_10_24_154832_create_newsletter_table',13),(98,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(99,'2017_05_18_080441_create_payment_tables',14),(100,'2021_03_27_144913_add_customer_type_into_table_payments',14),(101,'2021_05_24_034720_make_column_currency_nullable',14),(102,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(103,'2021_10_19_020859_update_metadata_field',14),(104,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(105,'2022_07_07_153354_update_charge_id_in_table_payments',14),(106,'2024_07_04_083133_create_payment_logs_table',14),(107,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(108,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(109,'2018_06_22_032304_create_real_estate_table',15),(110,'2021_02_11_031126_update_price_column_in_projects_and_properties',15),(111,'2021_03_08_024049_add_lat_long_into_real_estate_tables',15),(112,'2021_06_10_091950_add_column_is_featured_to_table_re_accounts',15),(113,'2021_07_07_021757_update_table_account_activity_logs',15),(114,'2021_09_29_042758_create_re_categories_multilevel_table',15),(115,'2021_10_31_031254_add_company_to_accounts_table',15),(116,'2021_12_10_034807_create_real_estate_translation_tables',15),(117,'2021_12_18_081636_add_property_project_views_count',15),(118,'2022_05_04_033044_update_column_images_in_real_estate_tables',15),(119,'2022_07_02_081723_fix_expired_date_column',15),(120,'2022_08_01_090213_update_table_properties_and_projects',15),(121,'2023_01_31_023233_create_re_custom_fields_table',15),(122,'2023_02_06_000000_add_location_to_re_accounts_table',15),(123,'2023_02_06_024257_add_package_translations',15),(124,'2023_02_08_062457_add_custom_fields_translation_table',15),(125,'2023_02_15_024644_create_re_reviews_table',15),(126,'2023_02_20_072604_create_re_invoices_table',15),(127,'2023_02_20_081251_create_re_account_packages_table',15),(128,'2023_04_04_030709_add_unique_id_to_properties_and_projects_table',15),(129,'2023_04_14_164811_make_phone_and_email_in_table_re_consults_nullable',15),(130,'2023_05_09_062031_unique_reviews_table',15),(131,'2023_05_26_034353_fix_properties_projects_image',15),(132,'2023_05_27_004215_add_column_ip_into_table_re_consults',15),(133,'2023_07_25_034513_create_re_coupons_table',15),(134,'2023_07_25_034672_add_coupon_code_column_to_jb_invoices_table',15),(135,'2023_08_02_074208_change_square_column_to_float',15),(136,'2023_08_07_000001_add_is_public_profile_column_to_re_accounts_table',15),(137,'2023_08_09_004607_make_column_project_id_nullable',15),(138,'2023_09_11_084630_update_mandatory_fields_in_consult_form_table',15),(139,'2023_11_21_071820_add_missing_slug_for_agents',15),(140,'2024_01_11_084816_add_investor_translations_table',15),(141,'2024_01_31_022842_add_description_to_re_packages_table',15),(142,'2024_03_13_000001_drop_type_column_from_custom_field_translations_table',15),(143,'2024_04_23_124505_add_features_column_to_re_packages',15),(144,'2024_04_23_135106_add_columns_to_re_investors',15),(145,'2024_05_25_000001_update_captcha_settings_for_real_estate',15),(146,'2024_06_16_163428_make_investor_id_nullable',15),(147,'2024_06_20_103539_create_consult_custom_fields_table',15),(148,'2024_07_08_235824_fix_facilities_primary_key',15),(149,'2024_07_26_090340_add_private_notes_column_to_re_properties_projects_table',15),(150,'2024_08_09_075542_add_accounts_translations',15),(151,'2024_08_12_124528_add_approved_at_column_to_re_accounts_table',15),(152,'2024_08_31_074158_add_floor_plans_columns_to_re_properties_table',15),(153,'2024_09_04_130921_add_reject_reason_column_to_re_properties_table',15),(154,'2024_09_19_021436_make_email_in_accounts_table_nullable',15),(155,'2024_11_18_023706_add_floor_plan_to_table_re_properties_translations',15),(156,'2024_12_01_000000_add_floor_plans_column_to_re_projects_table',15),(157,'2024_12_18_000000_add_blocked_at_column_to_re_accounts_table',15),(158,'2024_12_18_000001_add_blocked_reason_column_to_re_accounts_table',15),(159,'2025_04_12_161730_add_featured_priority_to_re_properties_table',15),(160,'2025_04_12_165120_add_featured_priority_to_re_projects_table',15),(161,'2025_04_23_034738_make_featured_priority_nullable',15),(162,'2025_05_19_000001_add_zip_code_to_properties_and_projects_tables',15),(163,'2025_07_31_083138_add_indexes_for_real_estate_location_search',15),(164,'2025_08_12_085710_add_verification_fields_to_re_accounts_table',15),(165,'2025_08_14_025316_change_column_description_in_re_accounts_translations_to_text',15),(166,'2025_09_30_103625_add_performance_indexes_to_re_properties_table',15),(167,'2025_09_30_103746_add_status_index_to_re_reviews_table',15),(168,'2025_09_30_103813_add_composite_query_index_to_re_properties_table',15),(169,'2025_09_30_104436_add_performance_indexes_to_re_categories_table',15),(170,'2025_10_10_093314_add_number_format_style_and_space_to_re_currencies_table',15),(171,'2025_10_22_000001_add_whatsapp_to_re_accounts_table',15),(172,'2025_11_24_142748_add_privacy_settings_to_re_accounts_table',15),(173,'2025_04_08_040931_create_social_logins_table',16),(174,'2018_07_09_214610_create_testimonial_table',17),(175,'2021_12_03_083642_create_testimonials_translations',17),(176,'2016_10_07_193005_create_translations_table',18),(177,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage 1','[hero-banner style=\"1\" title=\"Find Your\" animation_text=\"Dream Home,Perfect Home,Real Estate\" description=\"We are a real estate agency that will help you find the best residence you dream of, let’s discuss for your dream house?\" background_image=\"pages/slider-1.jpg\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[properties style=\"2\" title=\"Recommended For You\" subtitle=\"Features Properties\" category_ids=\"1,2,3,4,5,6\" type=\"rent\" is_featured=\"\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[location title=\"Our Location For You\" subtitle=\"Explore Cities\" type=\"city\" city_ids=\"1,2,3,4,5,6,7\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[services style=\"1\" title=\"What We Do?\" subtitle=\"Our Services\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"4\" counters_label_1=\"SATISFIED CLIENTS\" counters_number_1=\"85\" counters_label_2=\"AWARDS RECEIVED\" counters_number_2=\"112\" counters_label_3=\"SUCCESSFUL TRANSACTIONS\" counters_number_3=\"32\" counters_label_4=\"MONTHLY TRAFFIC\" counters_number_4=\"66\" button_label=\"View All Services\" button_url=\"/\" enable_lazy_loading=\"yes\"][/services]\n[services style=\"1\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Proven Expertise\" services_description_1=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Customized Solutions\" services_description_2=\"We pride ourselves on crafting personalized strategies to match your unique goals, ensuring a seamless real estate journey.\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Transparent Partnerships\" services_description_3=\"Transparency is key in our client relationships. We prioritize clear communication and ethical practices, fostering trust and reliability throughout.\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[properties style=\"1\" title=\"Best Property Value\" subtitle=\"Top Properties\" is_featured=\"1\" limit=\"4\" button_label=\"View All\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/agents]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"3\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/blog-posts]\n[image-slider background_color=\"transparent\" quantity=\"7\" name_1=\"GitHub\" image_1=\"partners/github.png\" url_1=\"https://github.com\" open_in_new_tab_1=\"\" name_2=\"LH.Tech\" image_2=\"partners/lhtech.png\" url_2=\"https://lhtech.com.my\" open_in_new_tab_2=\"\" name_3=\"Panadoxn\" image_3=\"partners/panadoxn.png\" url_3=\"/\" open_in_new_tab_3=\"\" name_4=\"Shangxi\" image_4=\"partners/shangxi.png\" url_4=\"/\" open_in_new_tab_4=\"\" name_5=\"Tyaalpha\" image_5=\"partners/tyaalpha.png\" url_5=\"/\" open_in_new_tab_5=\"\" name_6=\"Vanfaba\" image_6=\"partners/vanfaba.png\" url_6=\"/\" open_in_new_tab_6=\"\" name_7=\"Asana\" image_7=\"partners/asana.png\" url_7=\"https://asana.com\" open_in_new_tab_7=\"\" enable_lazy_loading=\"yes\"][/image-slider]',1,NULL,'full-width',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(2,'Homepage 2','[hero-banner style=\"2\" title=\"Find A Home That\" animation_text=\"Perfectly,Dream Home\" description=\"We are a real estate agency that will help you find the best residence you dream of.\" background_image=\"pages/slider-left.jpg\" slider_image_1=\"pages/slider-2.jpg\" slider_image_2=\"pages/slider-3.jpg\" slider_image_3=\"pages/slider-4.jpg\" slider_image_4=\"pages/slider-5.jpg\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[property-categories style=\"1\" title=\"Try Searching For\" subtitle=\"PROPERTY TYPE\" category_ids=\"1,2,3,4,5,6\" background_color=\"transparent\" button_label=\"View All\" button_url=\"/categories\" enable_lazy_loading=\"yes\"][/property-categories]\n[properties style=\"4\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"Featured Properties\" limit=\"8\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"3\" title=\"Discover What Sets Our Real Estate Expertise Apart\" subtitle=\"Why Choose Us\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\" checklist=\"Transparent Partnerships,Proven Expertise,Customized Solutions,Local Area Knowledge\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" button_label=\"Contact Us\" button_url=\"/contact-us\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[location style=\"2\" title=\"Our Location For You\" subtitle=\"Explore States\" type=\"state\" state_ids=\"1,2,3,4,5,6\" destination=\"property\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"3\" title=\"Best Property Value\" subtitle=\"Top Properties\" is_featured=\"1\" limit=\"4\" button_label=\"View All\" button_url=\"/properties\" enable_lazy_loading=\"yes\" background_color=\"#f7f7f7\"][/properties]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/agents]\n[testimonials style=\"3\" title=\"What’s People Say’s\" subtitle=\"Our Testimonials\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"3\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(3,'Homepage 3','[hero-banner style=\"3\" title=\"Indulge in Your\" animation_text=\"Sanctuary,Safe House\" description=\"Discover your private oasis at Homzen, where every corner, from the spacious garden to the relaxing pool, is crafted for your comfort and enjoyment.\" background_image=\"pages/slider-6.png\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\" button_label=\"Contact Us\" button_url=\"/contact\"][/hero-banner]\n[location style=\"3\" title=\"Properties By Cities\" subtitle=\"EXPLORE CITIES\" type=\"city\" city_ids=\"1,2,3,4,5,6,7,21,24\" destination=\"property\" background_color=\"#f7f7f7\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"2\" title=\"Recommended For You\" subtitle=\"Features Properties\" category_ids=\"1,2,3,4,5,6\" type=\"rent\" is_featured=\"\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[property-categories style=\"2\" title=\"Try Searching For\" subtitle=\"PROPERTY TYPE\" category_ids=\"1,2,3,4,5,6\" background_color=\"#161e2d\" enable_lazy_loading=\"yes\"][/property-categories]\n[services style=\"2\" title=\"What We Do?\" subtitle=\"Our Services\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"4\" title=\"What’s People Say’s\" subtitle=\"Our Testimonials\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" background_image=\"pages/testimonial-banner.png\" enable_lazy_loading=\"yes\"][/testimonials]\n[agents style=\"2\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/agents]\n[blog-posts style=\"2\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(4,'Homepage 4','[hero-banner style=\"4\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[properties style=\"5\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"FEATURED PROPERTIES\" is_featured=\"1\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"4\" title=\"Discover What Sets Our\" subtitle=\"WHAT WE DO\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys.\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-12-hours\" services_icon_image_1=\"pages/service-1.png\" services_button_label_1=\"Learn More\" services_button_url_1=\"/contact\" services_title_2=\"Rent A Home\" services_description_2=\"Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_icon_image_2=\"pages/service-2.png\" services_button_label_2=\"Learn More\" services_button_url_2=\"/contact\" services_title_3=\"Buy A New Home\" services_description_3=\"Showcasing your property\'s best features for a successful sale.\" services_icon_image_3=\"pages/service-3.png\" services_button_label_3=\"Learn More\" services_button_url_3=\"/contact\" counters_quantity=\"1\" background_image=\"pages/house-service.png\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[location title=\"Our Location For You\" subtitle=\"Explore Cities\" type=\"city\" city_ids=\"1,2,3,4,5,6\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"OUR TEAMS\" account_ids=\"1,2,3\" background_color=\"transparent\" items_per_row=\"3\" enable_lazy_loading=\"yes\"][/agents]\n[properties style=\"6\" title=\"Recommended for you\" subtitle=\"TOP PROPERTIES\" is_featured=\"1\" limit=\"4\" background_image=\"pages/properties.png\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[testimonials style=\"2\" title=\"What’s People Say’s\" subtitle=\"OUR TESTIMONIALS\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]\n[services style=\"5\" title=\"Why Choose Homzen\" subtitle=\"OUR BENIFIT\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" background_color=\"transparent\" services_quantity=\"8\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-home\" services_title_2=\"Sell Your Property\" services_description_2=\"Get the best value with our professional selling strategies and market insights.\" services_icon_2=\"ti ti-currency-dollar\" services_title_3=\"Rent A Property\" services_description_3=\"Find the perfect rental property with our extensive listings and support.\" services_icon_3=\"ti ti-building\" services_title_4=\"Property Management\" services_description_4=\"Professional management services to keep your property in top condition.\" services_icon_4=\"ti ti-settings\" services_title_5=\"Real Estate Consulting\" services_description_5=\"Expert advice and insights to help you make informed real estate decisions.\" services_icon_5=\"ti ti-chart-bar\" services_title_6=\"Mortgage Services\" services_description_6=\"Find the best mortgage rates and options with our comprehensive services.\" services_icon_6=\"ti ti-credit-card\" services_title_7=\"Investment Properties\" services_description_7=\"Discover lucrative investment opportunities and maximize your returns.\" services_icon_7=\"ti ti-briefcase\" services_title_8=\"Relocation Services\" services_description_8=\"Smooth and hassle-free relocation services to help you move with ease.\" services_icon_8=\"ti ti-truck\" counters_quantity=\"1\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"LATEST NEWS\" type=\"recent\" limit=\"3\" enable_lazy_loading=\"yes\"][/blog-posts]\n[call-to-action title=\"List Your Properties On Homzen, Join Us Now!\" subtitle=\"BECOME PARTNERS\" button_label=\"Become A Hosting\" button_url=\"/contact\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(5,'Homepage 5','[hero-banner style=\"5\" property_id=\"4\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[services style=\"2\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[properties style=\"4\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"FEATURED PROPERTIES\" is_featured=\"1\" limit=\"8\" button_label=\"View All Properties\" button_url=\"/properties\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[location style=\"4\" title=\"Our Location For You\" subtitle=\"EXPLORE CITIES\" type=\"city\" city_ids=\"1,3,5,6,11,23\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"7\" title=\"Recommended For You\" subtitle=\"TOP PROPERTIES\" is_featured=\"1\" limit=\"4\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"5\" title=\"Why Choose Homzen\" subtitle=\"OUR BENIFIT\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" background_color=\"transparent\" services_quantity=\"8\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-home\" services_title_2=\"Sell Your Property\" services_description_2=\"Get the best value with our professional selling strategies and market insights.\" services_icon_2=\"ti ti-currency-dollar\" services_title_3=\"Rent A Property\" services_description_3=\"Find the perfect rental property with our extensive listings and support.\" services_icon_3=\"ti ti-building\" services_title_4=\"Property Management\" services_description_4=\"Professional management services to keep your property in top condition.\" services_icon_4=\"ti ti-settings\" services_title_5=\"Real Estate Consulting\" services_description_5=\"Expert advice and insights to help you make informed real estate decisions.\" services_icon_5=\"ti ti-chart-bar\" services_title_6=\"Mortgage Services\" services_description_6=\"Find the best mortgage rates and options with our comprehensive services.\" services_icon_6=\"ti ti-credit-card\" services_title_7=\"Investment Properties\" services_description_7=\"Discover lucrative investment opportunities and maximize your returns.\" services_icon_7=\"ti ti-briefcase\" services_title_8=\"Relocation Services\" services_description_8=\"Smooth and hassle-free relocation services to help you move with ease.\" services_icon_8=\"ti ti-truck\" counters_quantity=\"1\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[agents style=\"2\" title=\"Meet Our Agents\" subtitle=\"OUR TEAMS\" account_ids=\"1,2,3,4\" background_color=\"transparent\" items_per_row=\"2\" enable_lazy_loading=\"yes\"][/agents]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"TOP PROPERTIES\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[blog-posts style=\"2\" title=\"The Most Recent Estate\" subtitle=\"LATEST NEWS\" type=\"recent\" limit=\"4\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(6,'Blog',NULL,1,NULL,NULL,NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(7,'Contact Us','[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" style=\"1\" title=\"Drop Us A Line\" description=\"Feel free to connect with us through our online channels for updates, news, and more.\" show_information_box=\"1\" contact_title=\"Contact Us\" quantity=\"3\" label_1=\"Address:\" content_1=\"101 E 129th St, East Chicago, IN 46312 United States\" label_2=\"Information:\" content_2=\"1-333-345-6868 hi.themesflat@gmail.com\" label_3=\"Open time:\" content_3=\"Monday - Friday: 08:00 - 20:00 Saturday - Sunday: 10:00 - 18:00\" show_social_links=\"1\"][/contact-form]\n[google-map]101 E 129th St, East Chicago, IN 46312 United States[/google-map]',1,NULL,NULL,NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(8,'Our Services','[services style=\"2\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#ffffff\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[faqs title=\"Quick Answers To Questions\" subtitle=\"FAQs\" category_ids=\"1,2,3,4\" display_type=\"list\" limit=\"5\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]\n[call-to-action title=\"List your Properties on Homzen, join Us Now!\" subtitle=\"Become Partners\" button_label=\"Become A Hosting\" button_url=\"/\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(9,'FAQs','[faqs category_ids=\"1,2,3\" display_type=\"group\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]',1,NULL,NULL,NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(10,'About Us','[about-us title=\"Welcome To The &lt;br&gt; Homzen\" description=\"Welcome to Homzen, where we turn houses into homes and dreams into reality. At Homzen, we understand that a home is more than just a physical space; it\'s a place where memories are created, families grow, and life unfolds.\" button_label=\"Learn More\" button_url=\"/\" image=\"pages/about-us-video.jpg\" video_url=\"https://youtu.be/tRxGSHL8bI0\"][/about-us]\n[services style=\"3\" title=\"Discover What Sets Our Real Estate Expertise Apart\" subtitle=\"Why Choose Us\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\" checklist=\"Transparent Partnerships,Proven Expertise,Customized Solutions,Local Area Knowledge\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" button_label=\"Contact Us\" button_url=\"/contact-us\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"2\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[image-slider background_color=\"transparent\" quantity=\"7\" name_1=\"GitHub\" image_1=\"partners/github.png\" url_1=\"https://github.com\" open_in_new_tab_1=\"\" name_2=\"LH.Tech\" image_2=\"partners/lhtech.png\" url_2=\"https://lhtech.com.my\" open_in_new_tab_2=\"\" name_3=\"Panadoxn\" image_3=\"partners/panadoxn.png\" url_3=\"/\" open_in_new_tab_3=\"\" name_4=\"Shangxi\" image_4=\"partners/shangxi.png\" url_4=\"/\" open_in_new_tab_4=\"\" name_5=\"Tyaalpha\" image_5=\"partners/tyaalpha.png\" url_5=\"/\" open_in_new_tab_5=\"\" name_6=\"Vanfaba\" image_6=\"partners/vanfaba.png\" url_6=\"/\" open_in_new_tab_6=\"\" name_7=\"Asana\" image_7=\"partners/asana.png\" url_7=\"https://asana.com\" open_in_new_tab_7=\"\" enable_lazy_loading=\"yes\"][/image-slider]\n[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" style=\"2\" title=\"We\'re Always Eager To Hear From You!\" subtitle=\"Contact Us\" description=\"Sed ullamcorper nulla egestas at. Aenean eget tortor nec elit sagittis molestie. Pellentesque tempus massa in.r nulla egestas at. Aenean eget tortor nec elit sagittis mole\" background_image=\"pages/about-us-contact.jpg\"][/contact-form]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" items_per_row=\"4\" enable_lazy_loading=\"yes\"][/agents]\n[call-to-action title=\"List your Properties on Homzen, join Us Now!\" subtitle=\"Become Partners\" button_label=\"Become A Hosting\" button_url=\"/\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(11,'Pricing Plans','[pricing-plan title=\"Our Subscription\" subtitle=\"Pricing\" package_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/pricing-plan]\n[faqs title=\"Quick Answers To Questions\" subtitle=\"FAQs\" category_ids=\"1\" display_type=\"list\" limit=\"5\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]',1,NULL,NULL,NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(12,'Privacy Policy','[content-tab title=\"Terms Of Use\" quantity=\"5\" title_1=\"Terms\" content_1=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_2=\"Limitations\" content_2=\"Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_3=\"Revisions and errata\" content_3=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex.\" title_4=\"Site terms of use modifications\" content_4=\"Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_5=\"Risks\" content_5=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" enable_lazy_loading=\"yes\"][/content-tab]',1,NULL,NULL,NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(13,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2025-12-25 15:38:01\" address=\"58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"1\" image=\"pages/properties.png\"][/coming-soon]',1,NULL,'no-layout',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(14,'Properties','',1,NULL,'no-layout',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(15,'Projects','',1,NULL,'no-layout',NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01'),(16,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2025-11-25 08:38:01','2025-11-25 08:38:01');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(5,2),(1,2),(2,3),(6,3),(3,4),(6,4),(6,5),(4,5),(5,6),(3,6),(2,7),(3,7),(2,8),(6,8),(4,9),(3,10),(1,10),(2,11),(6,11),(1,12),(2,12),(3,13),(5,13),(4,14),(5,14),(5,15),(3,15),(4,16),(5,17),(1,17),(1,18),(3,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (6,1),(2,1),(8,1),(5,2),(3,2),(2,3),(6,3),(4,3),(3,4),(1,4),(7,4),(5,5),(7,5),(2,5),(4,6),(1,6),(5,6),(2,7),(4,7),(8,8),(5,8),(3,8),(6,9),(7,9),(4,10),(3,10),(2,11),(3,11),(7,12),(4,12),(3,12),(6,13),(7,13),(4,13),(6,14),(5,14),(3,14),(6,15),(8,15),(1,15),(7,16),(2,16),(3,16),(1,17),(8,17),(6,18),(7,18),(5,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Top 10 Tips for First-time Home Buyers','There was a long argument with the bread-and-butter getting so far off). \'Oh, my poor little juror (it was exactly the right words,\' said poor Alice, \'it would have done that?\' she thought. \'But.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/6.jpg',2090,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(2,'How to Stage Your Home for a Quick Sale','Alice, in a trembling voice to its children, \'Come away, my dears! It\'s high time you were never even introduced to a farmer, you know, upon the other queer noises, would change to tinkling.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/1.jpg',1808,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(3,'Understanding the Current Real Estate Market Trends','THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never to lose YOUR temper!\' \'Hold your tongue!\' added the Dormouse. \'Write that down,\' the King very decidedly, and the other players, and shouting.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/7.jpg',2301,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(4,'DIY Home Improvement Projects That Add Value','How funny it\'ll seem to put down her flamingo, and began to cry again. \'You ought to be almost out of sight: then it watched the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice began to.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/5.jpg',1899,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(5,'A Beginner’s Guide to Real Estate Investing','Mouse, in a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure _I_ shan\'t be able! I shall see it quite plainly through the air! Do you think I may as well go back, and barking.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/7.jpg',2238,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(6,'How to Choose the Right Neighborhood for Your Family','Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess sang the second time round, she came upon a time she heard a little three-legged table, all made of solid.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/5.jpg',702,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(7,'Luxury Homes: What to Look For','She said the Caterpillar; and it said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the subject,\' the March Hare said--\' \'I didn\'t!\' the March Hare. \'Sixteenth,\' added.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/5.jpg',840,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(8,'Property Management: Best Practices for Landlords','WHAT?\' said the Cat. \'I said pig,\' replied Alice; \'and I do wonder what they\'ll do next! As for pulling me out of its little eyes, but it said in a hoarse growl, \'the world would go anywhere without.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/6.jpg',536,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(9,'Renovation Ideas to Increase Your Home’s Value','So she went to the Caterpillar, just as usual. I wonder what they WILL do next! As for pulling me out of the March Hare. \'Yes, please do!\' but the Hatter replied. \'Of course it is,\' said the.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/8.jpg',657,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(10,'The Ultimate Guide to Buying a Vacation Home','Hatter, it woke up again as she said to herself \'Suppose it should be raving mad--at least not so mad as it can be,\' said the Queen, who was passing at the Lizard in head downwards, and the m--\' But.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/1.jpg',1195,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(11,'How to Successfully Sell Your Home in a Buyer’s Market','And yet I don\'t know,\' he went on, \'\"--found it advisable to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Gryphon, half to Alice. \'Nothing,\' said Alice. \'Then it doesn\'t matter.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/8.jpg',481,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(12,'Home Inspection: What to Expect and How to Prepare','Rabbit whispered in reply, \'for fear they should forget them before the officer could get away without being seen, when she first saw the Mock Turtle. Alice was not an encouraging tone. Alice looked.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/9.jpg',339,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(13,'Eco-friendly Home Improvements for Sustainable Living','I shall be a very hopeful tone though), \'I won\'t indeed!\' said the March Hare meekly replied. \'Yes, but some crumbs must have prizes.\' \'But who has won?\' This question the Dodo said, \'EVERYBODY has.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/3.jpg',1304,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(14,'How to Navigate the Mortgage Process','Alice, who was passing at the March Hare. \'I didn\'t write it, and behind them a railway station.) However, she soon made out the Fish-Footman was gone, and, by the English, who wanted leaders, and.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/9.jpg',396,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(15,'Real Estate Market Analysis: What You Need to Know','Alice felt a little hot tea upon its nose. The Dormouse again took a great deal of thought, and rightly too, that very few things indeed were really impossible. There seemed to Alice severely. \'What.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/3.jpg',914,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(16,'Tips for Renting Out Your Property','Alice dodged behind a great hurry; \'this paper has just been reading about; and when Alice had never before seen a cat without a porpoise.\' \'Wouldn\'t it really?\' said Alice very meekly: \'I\'m.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/2.jpg',2458,NULL,'2025-11-25 08:37:58','2025-11-25 08:37:58'),(17,'Understanding Property Taxes and How to Lower Them','I don\'t like it, yer honour, at all, as the Lory hastily. \'I thought you did,\' said the Duck. \'Found IT,\' the Mouse had changed his mind, and was a good deal: this fireplace is narrow, to be.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/8.jpg',1192,NULL,'2025-11-25 08:37:59','2025-11-25 08:37:59'),(18,'The Benefits of Smart Home Technology','However, this bottle does. I do wonder what they\'ll do next! If they had a consultation about this, and Alice was not easy to take the place where it had lost something; and she went on, \'you throw.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/8.jpg',483,NULL,'2025-11-25 08:37:59','2025-11-25 08:37:59');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_activity_logs`
--

DROP TABLE IF EXISTS `re_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_account_activity_logs_account_id_index` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_activity_logs`
--

LOCK TABLES `re_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `re_account_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_packages`
--

DROP TABLE IF EXISTS `re_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `package_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_packages`
--

LOCK TABLES `re_account_packages` WRITE;
/*!40000 ALTER TABLE `re_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_password_resets`
--

DROP TABLE IF EXISTS `re_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `re_account_password_resets_email_index` (`email`),
  KEY `re_account_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_password_resets`
--

LOCK TABLES `re_account_password_resets` WRITE;
/*!40000 ALTER TABLE `re_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts`
--

DROP TABLE IF EXISTS `re_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int unsigned DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint unsigned DEFAULT NULL,
  `verification_note` text COLLATE utf8mb4_unicode_ci,
  `is_public_profile` tinyint(1) NOT NULL DEFAULT '0',
  `hide_phone` tinyint(1) NOT NULL DEFAULT '0',
  `hide_email` tinyint(1) NOT NULL DEFAULT '0',
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `blocked_reason` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_accounts_email_unique` (`email`),
  UNIQUE KEY `re_accounts_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts`
--

LOCK TABLES `re_accounts` WRITE;
/*!40000 ALTER TABLE `re_accounts` DISABLE KEYS */;
INSERT INTO `re_accounts` VALUES (1,'Jasen','Grady','Alice\'s shoulder, and it was.',NULL,'john.smith@botble.com','madisen22','$2y$12$kHzgSjoBxO0G6TXhBINWweU0loSrBU6BHTo50/jJUCmNoG96BzXYG',15,'2005-04-14','+18303264004','+18303264004',10,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:53','2025-11-25 08:37:53',0,1,'2025-10-02 08:37:53',1,'Verified trusted agent',1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(2,'Princess','Block','Mock Turtle, and said \'No.',NULL,'agent@botble.com','frederickmraz','$2y$12$wk5auuu.PIZ4foY5q6ibvuCx2hbiOCwEXXfYKeEAxPaVQfeYpy85S',17,'2015-08-05','+13528798491','+13528798491',10,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:53','2025-11-25 08:37:53',0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(3,'Jamie','Sipes','Alice had been of late much.',NULL,'wstehr@yahoo.com','gbergstrom','$2y$12$GRFhw7NH9BeNQrkY2qvJ4uSfRh.U8ofhj.lWN/RC0WuJ.SLaiPnMm',22,'1992-05-20','+12838022461','+12838022461',10,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:53','2025-11-25 08:37:53',1,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(4,'Raven','Kihn','I can\'t take LESS,\' said the.',NULL,'ward.nat@price.com','rkiehn','$2y$12$w/KFz1JWlo6LwuoXtWSKv.FnCpzpnMRhqpqYzb00CXcydNyfxuv.O',19,'1973-03-03','+13868213650','+13868213650',1,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:54','2025-11-25 08:37:54',1,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(5,'Abner','Haley','Five, \'and I\'ll tell him--it.',NULL,'leuschke.dallin@marvin.com','xgrimes','$2y$12$Jv/QVLeYHWKu6I6IZ7imp.lwFJYZtA3XQrGQOuFrQvwKkw9amjjqe',17,'1985-01-17','+12813690459','+12813690459',6,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:54','2025-11-25 08:37:54',0,1,'2025-02-02 08:37:54',1,'Premium agent - verified',1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(6,'Sylvia','Von','First, she dreamed of little.',NULL,'brakus.lera@keebler.com','alexandriabashirian','$2y$12$KfYirnuFKTB.oLe4R0fk4uTCB0Vx4u.4aTFIZoH641XSrg64ovgzS',17,'1997-04-28','+18052311216','+18052311216',5,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:54','2025-11-25 08:37:54',1,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(7,'Cassidy','Kautzer','ARE OLD, FATHER WILLIAM,\' to.',NULL,'damian35@stracke.com','nokon','$2y$12$vYriZRONjB6RpZgaBjEEeeYONRijelS/9G8kLQ.iDt67MDegUDOCK',23,'1975-08-31','+12316731826','+12316731826',9,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:54','2025-11-25 08:37:54',0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(8,'Alda','Stehr','Alice)--\'and perhaps you.',NULL,'felix.hansen@gmail.com','nigelstracke','$2y$12$zex9Sx4QR/FYuPeaogG1ge5xYbFAp41A4fAjznFo7HYleIOvGDfHe',22,'2025-10-02','+18308711172','+18308711172',6,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:55','2025-11-25 08:37:55',0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(9,'Elmer','Ward','March.\' As she said to the.',NULL,'sanford.werner@gmail.com','phyllis48','$2y$12$RMoXTNlPUXoz/kZy7Z1gTenmgB68z1CnxdCk69DYV9FGoO1PMjQdy',20,'2021-06-12','+19126865549','+19126865549',6,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:55','2025-11-25 08:37:55',0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(10,'Donavon','McGlynn','And pour the waters of the.',NULL,'hyatt.nya@bartoletti.info','kayla58','$2y$12$8ycrlQ2GR8pBdtxYz52uCe3gW5mWPxn/32jqGrTeqxXond13P8cdS',14,'2006-05-10','+16292332706','+16292332706',5,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:55','2025-11-25 08:37:55',1,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(11,'Fay','Pfeffer','I\'ve got to?\' (Alice had.',NULL,'amie.pfannerstill@pfannerstill.org','dickinsonkassandra','$2y$12$lrDMVHvezTADZyzvv6n3cu2eCdW0atGfOXjaoV6iTK183Mjg.CYtW',15,'2013-12-28','+16899779569','+16899779569',10,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:55','2025-11-25 08:37:55',1,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL),(12,'Bryana','Stiedemann','Alice. \'Why, SHE,\' said the.',NULL,'miguel21@franecki.com','gwendolynlesch','$2y$12$F6iniIn3F.PlZ3OuL3aMrO18NrAhxCYiydsPTigHAG0ba2MK4hA3y',15,'2008-05-21','+18102628471','+18102628471',10,'2025-11-25 15:37:53',NULL,NULL,'2025-11-25 08:37:55','2025-11-25 08:37:55',0,0,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,'2025-11-25 15:37:53',NULL,NULL);
/*!40000 ALTER TABLE `re_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts_translations`
--

DROP TABLE IF EXISTS `re_accounts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_accounts_id` bigint unsigned NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts_translations`
--

LOCK TABLES `re_accounts_translations` WRITE;
/*!40000 ALTER TABLE `re_accounts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_accounts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories`
--

DROP TABLE IF EXISTS `re_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_re_categories_status` (`status`),
  KEY `idx_re_categories_parent_id` (`parent_id`),
  KEY `idx_re_categories_status_parent_order` (`status`,`parent_id`,`order`),
  KEY `idx_re_categories_is_default` (`is_default`),
  KEY `idx_re_categories_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories`
--

LOCK TABLES `re_categories` WRITE;
/*!40000 ALTER TABLE `re_categories` DISABLE KEYS */;
INSERT INTO `re_categories` VALUES (1,'Apartment',NULL,'published',0,1,'2025-11-25 08:37:52','2025-11-25 08:37:52',0),(2,'Villa',NULL,'published',1,0,'2025-11-25 08:37:52','2025-11-25 08:37:52',0),(3,'Condo',NULL,'published',2,0,'2025-11-25 08:37:52','2025-11-25 08:37:52',0),(4,'House',NULL,'published',3,0,'2025-11-25 08:37:52','2025-11-25 08:37:52',0),(5,'Land',NULL,'published',4,0,'2025-11-25 08:37:52','2025-11-25 08:37:52',0),(6,'Commercial property',NULL,'published',5,0,'2025-11-25 08:37:52','2025-11-25 08:37:52',0);
/*!40000 ALTER TABLE `re_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories_translations`
--

DROP TABLE IF EXISTS `re_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories_translations`
--

LOCK TABLES `re_categories_translations` WRITE;
/*!40000 ALTER TABLE `re_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options`
--

LOCK TABLES `re_consult_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_field_options_translations` (
  `re_consult_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options_translations`
--

LOCK TABLES `re_consult_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields`
--

DROP TABLE IF EXISTS `re_consult_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields`
--

LOCK TABLES `re_consult_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields` DISABLE KEYS */;
INSERT INTO `re_consult_custom_fields` VALUES (1,'date',0,'Schedule a Tour (optional)',NULL,999,'published','2025-11-25 08:38:02','2025-11-25 08:38:02');
/*!40000 ALTER TABLE `re_consult_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_fields_translations` (
  `re_consult_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields_translations`
--

LOCK TABLES `re_consult_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consults`
--

DROP TABLE IF EXISTS `re_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consults` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` bigint unsigned DEFAULT NULL,
  `property_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consults`
--

LOCK TABLES `re_consults` WRITE;
/*!40000 ALTER TABLE `re_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_coupons`
--

DROP TABLE IF EXISTS `re_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_coupons`
--

LOCK TABLES `re_coupons` WRITE;
/*!40000 ALTER TABLE `re_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_currencies`
--

DROP TABLE IF EXISTS `re_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `number_format_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'western',
  `space_between_price_and_currency` tinyint(1) NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_currencies`
--

LOCK TABLES `re_currencies` WRITE;
/*!40000 ALTER TABLE `re_currencies` DISABLE KEYS */;
INSERT INTO `re_currencies` VALUES (1,'USD','$',1,0,'western',0,0,1,1,'2025-11-25 08:37:52','2025-11-25 08:37:52'),(2,'EUR','€',0,0,'western',0,1,0,0.91,'2025-11-25 08:37:52','2025-11-25 08:37:52'),(3,'VND','₫',0,0,'western',0,2,0,23717.5,'2025-11-25 08:37:52','2025-11-25 08:37:52');
/*!40000 ALTER TABLE `re_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options`
--

DROP TABLE IF EXISTS `re_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options`
--

LOCK TABLES `re_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_options_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options_translations`
--

LOCK TABLES `re_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values`
--

DROP TABLE IF EXISTS `re_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values`
--

LOCK TABLES `re_custom_field_values` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values_translations`
--

DROP TABLE IF EXISTS `re_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_values_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values_translations`
--

LOCK TABLES `re_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields`
--

DROP TABLE IF EXISTS `re_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorable_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields`
--

LOCK TABLES `re_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_fields_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields_translations`
--

LOCK TABLES `re_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities`
--

DROP TABLE IF EXISTS `re_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities`
--

LOCK TABLES `re_facilities` WRITE;
/*!40000 ALTER TABLE `re_facilities` DISABLE KEYS */;
INSERT INTO `re_facilities` VALUES (1,'Hospital','ti ti-hospital','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(2,'Super Market','ti ti-shopping-cart','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(3,'School','ti ti-school','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(4,'Entertainment','ti ti-movie','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(5,'Pharmacy','ti ti-pill','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(6,'Airport','ti ti-plane-departure','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(7,'Railways','ti ti-train','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(8,'Bus Stop','ti ti-bus','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(9,'Beach','ti ti-beach','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(10,'Mall','ti ti-shopping-cart','published','2025-11-25 08:37:52','2025-11-25 08:37:52'),(11,'Bank','ti ti-building-bank','published','2025-11-25 08:37:52','2025-11-25 08:37:52');
/*!40000 ALTER TABLE `re_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_distances`
--

DROP TABLE IF EXISTS `re_facilities_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_distances` (
  `facility_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`facility_id`,`reference_id`,`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_distances`
--

LOCK TABLES `re_facilities_distances` WRITE;
/*!40000 ALTER TABLE `re_facilities_distances` DISABLE KEYS */;
INSERT INTO `re_facilities_distances` VALUES (1,1,'Botble\\RealEstate\\Models\\Project','11km'),(1,1,'Botble\\RealEstate\\Models\\Property','5km'),(1,2,'Botble\\RealEstate\\Models\\Project','13km'),(1,2,'Botble\\RealEstate\\Models\\Property','1km'),(1,3,'Botble\\RealEstate\\Models\\Project','1km'),(1,3,'Botble\\RealEstate\\Models\\Property','5km'),(1,4,'Botble\\RealEstate\\Models\\Project','14km'),(1,4,'Botble\\RealEstate\\Models\\Property','4km'),(1,5,'Botble\\RealEstate\\Models\\Project','11km'),(1,5,'Botble\\RealEstate\\Models\\Property','5km'),(1,6,'Botble\\RealEstate\\Models\\Project','13km'),(1,6,'Botble\\RealEstate\\Models\\Property','5km'),(1,7,'Botble\\RealEstate\\Models\\Project','19km'),(1,7,'Botble\\RealEstate\\Models\\Property','10km'),(1,8,'Botble\\RealEstate\\Models\\Project','10km'),(1,8,'Botble\\RealEstate\\Models\\Property','7km'),(1,9,'Botble\\RealEstate\\Models\\Project','1km'),(1,9,'Botble\\RealEstate\\Models\\Property','15km'),(1,10,'Botble\\RealEstate\\Models\\Project','5km'),(1,10,'Botble\\RealEstate\\Models\\Property','14km'),(1,11,'Botble\\RealEstate\\Models\\Project','14km'),(1,11,'Botble\\RealEstate\\Models\\Property','13km'),(1,12,'Botble\\RealEstate\\Models\\Project','5km'),(1,12,'Botble\\RealEstate\\Models\\Property','19km'),(1,13,'Botble\\RealEstate\\Models\\Project','16km'),(1,13,'Botble\\RealEstate\\Models\\Property','9km'),(1,14,'Botble\\RealEstate\\Models\\Project','4km'),(1,14,'Botble\\RealEstate\\Models\\Property','6km'),(1,15,'Botble\\RealEstate\\Models\\Project','14km'),(1,15,'Botble\\RealEstate\\Models\\Property','20km'),(1,16,'Botble\\RealEstate\\Models\\Project','8km'),(1,16,'Botble\\RealEstate\\Models\\Property','14km'),(1,17,'Botble\\RealEstate\\Models\\Project','15km'),(1,17,'Botble\\RealEstate\\Models\\Property','14km'),(1,18,'Botble\\RealEstate\\Models\\Project','20km'),(1,18,'Botble\\RealEstate\\Models\\Property','13km'),(1,19,'Botble\\RealEstate\\Models\\Property','12km'),(1,20,'Botble\\RealEstate\\Models\\Property','13km'),(1,21,'Botble\\RealEstate\\Models\\Property','9km'),(1,22,'Botble\\RealEstate\\Models\\Property','3km'),(1,23,'Botble\\RealEstate\\Models\\Property','5km'),(1,24,'Botble\\RealEstate\\Models\\Property','20km'),(1,25,'Botble\\RealEstate\\Models\\Property','19km'),(1,26,'Botble\\RealEstate\\Models\\Property','8km'),(1,27,'Botble\\RealEstate\\Models\\Property','18km'),(1,28,'Botble\\RealEstate\\Models\\Property','1km'),(1,29,'Botble\\RealEstate\\Models\\Property','18km'),(1,30,'Botble\\RealEstate\\Models\\Property','14km'),(1,31,'Botble\\RealEstate\\Models\\Property','15km'),(1,32,'Botble\\RealEstate\\Models\\Property','17km'),(1,33,'Botble\\RealEstate\\Models\\Property','8km'),(1,34,'Botble\\RealEstate\\Models\\Property','11km'),(1,35,'Botble\\RealEstate\\Models\\Property','16km'),(1,36,'Botble\\RealEstate\\Models\\Property','17km'),(1,37,'Botble\\RealEstate\\Models\\Property','14km'),(1,38,'Botble\\RealEstate\\Models\\Property','13km'),(1,39,'Botble\\RealEstate\\Models\\Property','5km'),(1,40,'Botble\\RealEstate\\Models\\Property','16km'),(1,41,'Botble\\RealEstate\\Models\\Property','5km'),(1,42,'Botble\\RealEstate\\Models\\Property','17km'),(1,43,'Botble\\RealEstate\\Models\\Property','4km'),(1,44,'Botble\\RealEstate\\Models\\Property','4km'),(1,45,'Botble\\RealEstate\\Models\\Property','7km'),(1,46,'Botble\\RealEstate\\Models\\Property','10km'),(1,47,'Botble\\RealEstate\\Models\\Property','12km'),(1,48,'Botble\\RealEstate\\Models\\Property','1km'),(1,49,'Botble\\RealEstate\\Models\\Property','16km'),(1,50,'Botble\\RealEstate\\Models\\Property','16km'),(1,51,'Botble\\RealEstate\\Models\\Property','1km'),(1,52,'Botble\\RealEstate\\Models\\Property','15km'),(1,53,'Botble\\RealEstate\\Models\\Property','20km'),(1,54,'Botble\\RealEstate\\Models\\Property','1km'),(1,55,'Botble\\RealEstate\\Models\\Property','14km'),(1,56,'Botble\\RealEstate\\Models\\Property','15km'),(1,57,'Botble\\RealEstate\\Models\\Property','7km'),(1,58,'Botble\\RealEstate\\Models\\Property','9km'),(1,59,'Botble\\RealEstate\\Models\\Property','12km'),(1,60,'Botble\\RealEstate\\Models\\Property','10km'),(1,61,'Botble\\RealEstate\\Models\\Property','8km'),(2,1,'Botble\\RealEstate\\Models\\Project','8km'),(2,1,'Botble\\RealEstate\\Models\\Property','10km'),(2,2,'Botble\\RealEstate\\Models\\Project','11km'),(2,2,'Botble\\RealEstate\\Models\\Property','3km'),(2,3,'Botble\\RealEstate\\Models\\Project','7km'),(2,3,'Botble\\RealEstate\\Models\\Property','2km'),(2,4,'Botble\\RealEstate\\Models\\Project','17km'),(2,4,'Botble\\RealEstate\\Models\\Property','18km'),(2,5,'Botble\\RealEstate\\Models\\Project','9km'),(2,5,'Botble\\RealEstate\\Models\\Property','3km'),(2,6,'Botble\\RealEstate\\Models\\Project','14km'),(2,6,'Botble\\RealEstate\\Models\\Property','16km'),(2,7,'Botble\\RealEstate\\Models\\Project','12km'),(2,7,'Botble\\RealEstate\\Models\\Property','18km'),(2,8,'Botble\\RealEstate\\Models\\Project','17km'),(2,8,'Botble\\RealEstate\\Models\\Property','6km'),(2,9,'Botble\\RealEstate\\Models\\Project','6km'),(2,9,'Botble\\RealEstate\\Models\\Property','12km'),(2,10,'Botble\\RealEstate\\Models\\Project','6km'),(2,10,'Botble\\RealEstate\\Models\\Property','6km'),(2,11,'Botble\\RealEstate\\Models\\Project','8km'),(2,11,'Botble\\RealEstate\\Models\\Property','4km'),(2,12,'Botble\\RealEstate\\Models\\Project','3km'),(2,12,'Botble\\RealEstate\\Models\\Property','10km'),(2,13,'Botble\\RealEstate\\Models\\Project','20km'),(2,13,'Botble\\RealEstate\\Models\\Property','1km'),(2,14,'Botble\\RealEstate\\Models\\Project','8km'),(2,14,'Botble\\RealEstate\\Models\\Property','6km'),(2,15,'Botble\\RealEstate\\Models\\Project','10km'),(2,15,'Botble\\RealEstate\\Models\\Property','4km'),(2,16,'Botble\\RealEstate\\Models\\Project','13km'),(2,16,'Botble\\RealEstate\\Models\\Property','13km'),(2,17,'Botble\\RealEstate\\Models\\Project','20km'),(2,17,'Botble\\RealEstate\\Models\\Property','10km'),(2,18,'Botble\\RealEstate\\Models\\Project','1km'),(2,18,'Botble\\RealEstate\\Models\\Property','19km'),(2,19,'Botble\\RealEstate\\Models\\Property','1km'),(2,20,'Botble\\RealEstate\\Models\\Property','15km'),(2,21,'Botble\\RealEstate\\Models\\Property','1km'),(2,22,'Botble\\RealEstate\\Models\\Property','9km'),(2,23,'Botble\\RealEstate\\Models\\Property','1km'),(2,24,'Botble\\RealEstate\\Models\\Property','13km'),(2,25,'Botble\\RealEstate\\Models\\Property','18km'),(2,26,'Botble\\RealEstate\\Models\\Property','8km'),(2,27,'Botble\\RealEstate\\Models\\Property','9km'),(2,28,'Botble\\RealEstate\\Models\\Property','16km'),(2,29,'Botble\\RealEstate\\Models\\Property','3km'),(2,30,'Botble\\RealEstate\\Models\\Property','7km'),(2,31,'Botble\\RealEstate\\Models\\Property','12km'),(2,32,'Botble\\RealEstate\\Models\\Property','18km'),(2,33,'Botble\\RealEstate\\Models\\Property','4km'),(2,34,'Botble\\RealEstate\\Models\\Property','19km'),(2,35,'Botble\\RealEstate\\Models\\Property','9km'),(2,36,'Botble\\RealEstate\\Models\\Property','12km'),(2,37,'Botble\\RealEstate\\Models\\Property','8km'),(2,38,'Botble\\RealEstate\\Models\\Property','3km'),(2,39,'Botble\\RealEstate\\Models\\Property','13km'),(2,40,'Botble\\RealEstate\\Models\\Property','8km'),(2,41,'Botble\\RealEstate\\Models\\Property','14km'),(2,42,'Botble\\RealEstate\\Models\\Property','20km'),(2,43,'Botble\\RealEstate\\Models\\Property','2km'),(2,44,'Botble\\RealEstate\\Models\\Property','18km'),(2,45,'Botble\\RealEstate\\Models\\Property','13km'),(2,46,'Botble\\RealEstate\\Models\\Property','16km'),(2,47,'Botble\\RealEstate\\Models\\Property','20km'),(2,48,'Botble\\RealEstate\\Models\\Property','6km'),(2,49,'Botble\\RealEstate\\Models\\Property','14km'),(2,50,'Botble\\RealEstate\\Models\\Property','18km'),(2,51,'Botble\\RealEstate\\Models\\Property','11km'),(2,52,'Botble\\RealEstate\\Models\\Property','17km'),(2,53,'Botble\\RealEstate\\Models\\Property','16km'),(2,54,'Botble\\RealEstate\\Models\\Property','6km'),(2,55,'Botble\\RealEstate\\Models\\Property','2km'),(2,56,'Botble\\RealEstate\\Models\\Property','19km'),(2,57,'Botble\\RealEstate\\Models\\Property','16km'),(2,58,'Botble\\RealEstate\\Models\\Property','13km'),(2,59,'Botble\\RealEstate\\Models\\Property','11km'),(2,60,'Botble\\RealEstate\\Models\\Property','20km'),(2,61,'Botble\\RealEstate\\Models\\Property','4km'),(3,1,'Botble\\RealEstate\\Models\\Project','11km'),(3,1,'Botble\\RealEstate\\Models\\Property','8km'),(3,2,'Botble\\RealEstate\\Models\\Project','7km'),(3,2,'Botble\\RealEstate\\Models\\Property','19km'),(3,3,'Botble\\RealEstate\\Models\\Project','13km'),(3,3,'Botble\\RealEstate\\Models\\Property','12km'),(3,4,'Botble\\RealEstate\\Models\\Project','10km'),(3,4,'Botble\\RealEstate\\Models\\Property','14km'),(3,5,'Botble\\RealEstate\\Models\\Project','15km'),(3,5,'Botble\\RealEstate\\Models\\Property','4km'),(3,6,'Botble\\RealEstate\\Models\\Project','3km'),(3,6,'Botble\\RealEstate\\Models\\Property','15km'),(3,7,'Botble\\RealEstate\\Models\\Project','19km'),(3,7,'Botble\\RealEstate\\Models\\Property','4km'),(3,8,'Botble\\RealEstate\\Models\\Project','19km'),(3,8,'Botble\\RealEstate\\Models\\Property','3km'),(3,9,'Botble\\RealEstate\\Models\\Project','12km'),(3,9,'Botble\\RealEstate\\Models\\Property','14km'),(3,10,'Botble\\RealEstate\\Models\\Project','2km'),(3,10,'Botble\\RealEstate\\Models\\Property','11km'),(3,11,'Botble\\RealEstate\\Models\\Project','1km'),(3,11,'Botble\\RealEstate\\Models\\Property','5km'),(3,12,'Botble\\RealEstate\\Models\\Project','13km'),(3,12,'Botble\\RealEstate\\Models\\Property','20km'),(3,13,'Botble\\RealEstate\\Models\\Project','18km'),(3,13,'Botble\\RealEstate\\Models\\Property','8km'),(3,14,'Botble\\RealEstate\\Models\\Project','5km'),(3,14,'Botble\\RealEstate\\Models\\Property','6km'),(3,15,'Botble\\RealEstate\\Models\\Project','10km'),(3,15,'Botble\\RealEstate\\Models\\Property','17km'),(3,16,'Botble\\RealEstate\\Models\\Project','4km'),(3,16,'Botble\\RealEstate\\Models\\Property','8km'),(3,17,'Botble\\RealEstate\\Models\\Project','11km'),(3,17,'Botble\\RealEstate\\Models\\Property','9km'),(3,18,'Botble\\RealEstate\\Models\\Project','12km'),(3,18,'Botble\\RealEstate\\Models\\Property','5km'),(3,19,'Botble\\RealEstate\\Models\\Property','7km'),(3,20,'Botble\\RealEstate\\Models\\Property','6km'),(3,21,'Botble\\RealEstate\\Models\\Property','18km'),(3,22,'Botble\\RealEstate\\Models\\Property','13km'),(3,23,'Botble\\RealEstate\\Models\\Property','5km'),(3,24,'Botble\\RealEstate\\Models\\Property','18km'),(3,25,'Botble\\RealEstate\\Models\\Property','1km'),(3,26,'Botble\\RealEstate\\Models\\Property','1km'),(3,27,'Botble\\RealEstate\\Models\\Property','11km'),(3,28,'Botble\\RealEstate\\Models\\Property','14km'),(3,29,'Botble\\RealEstate\\Models\\Property','1km'),(3,30,'Botble\\RealEstate\\Models\\Property','6km'),(3,31,'Botble\\RealEstate\\Models\\Property','9km'),(3,32,'Botble\\RealEstate\\Models\\Property','13km'),(3,33,'Botble\\RealEstate\\Models\\Property','14km'),(3,34,'Botble\\RealEstate\\Models\\Property','9km'),(3,35,'Botble\\RealEstate\\Models\\Property','3km'),(3,36,'Botble\\RealEstate\\Models\\Property','20km'),(3,37,'Botble\\RealEstate\\Models\\Property','13km'),(3,38,'Botble\\RealEstate\\Models\\Property','19km'),(3,39,'Botble\\RealEstate\\Models\\Property','12km'),(3,40,'Botble\\RealEstate\\Models\\Property','17km'),(3,41,'Botble\\RealEstate\\Models\\Property','8km'),(3,42,'Botble\\RealEstate\\Models\\Property','15km'),(3,43,'Botble\\RealEstate\\Models\\Property','7km'),(3,44,'Botble\\RealEstate\\Models\\Property','9km'),(3,45,'Botble\\RealEstate\\Models\\Property','12km'),(3,46,'Botble\\RealEstate\\Models\\Property','4km'),(3,47,'Botble\\RealEstate\\Models\\Property','10km'),(3,48,'Botble\\RealEstate\\Models\\Property','15km'),(3,49,'Botble\\RealEstate\\Models\\Property','4km'),(3,50,'Botble\\RealEstate\\Models\\Property','7km'),(3,51,'Botble\\RealEstate\\Models\\Property','13km'),(3,52,'Botble\\RealEstate\\Models\\Property','9km'),(3,53,'Botble\\RealEstate\\Models\\Property','8km'),(3,54,'Botble\\RealEstate\\Models\\Property','16km'),(3,55,'Botble\\RealEstate\\Models\\Property','3km'),(3,56,'Botble\\RealEstate\\Models\\Property','16km'),(3,57,'Botble\\RealEstate\\Models\\Property','10km'),(3,58,'Botble\\RealEstate\\Models\\Property','1km'),(3,59,'Botble\\RealEstate\\Models\\Property','3km'),(3,60,'Botble\\RealEstate\\Models\\Property','4km'),(3,61,'Botble\\RealEstate\\Models\\Property','13km'),(4,1,'Botble\\RealEstate\\Models\\Project','1km'),(4,1,'Botble\\RealEstate\\Models\\Property','2km'),(4,2,'Botble\\RealEstate\\Models\\Project','18km'),(4,2,'Botble\\RealEstate\\Models\\Property','14km'),(4,3,'Botble\\RealEstate\\Models\\Project','14km'),(4,3,'Botble\\RealEstate\\Models\\Property','13km'),(4,4,'Botble\\RealEstate\\Models\\Project','7km'),(4,4,'Botble\\RealEstate\\Models\\Property','1km'),(4,5,'Botble\\RealEstate\\Models\\Project','8km'),(4,5,'Botble\\RealEstate\\Models\\Property','20km'),(4,6,'Botble\\RealEstate\\Models\\Project','10km'),(4,6,'Botble\\RealEstate\\Models\\Property','14km'),(4,7,'Botble\\RealEstate\\Models\\Project','19km'),(4,7,'Botble\\RealEstate\\Models\\Property','14km'),(4,8,'Botble\\RealEstate\\Models\\Project','9km'),(4,8,'Botble\\RealEstate\\Models\\Property','17km'),(4,9,'Botble\\RealEstate\\Models\\Project','7km'),(4,9,'Botble\\RealEstate\\Models\\Property','5km'),(4,10,'Botble\\RealEstate\\Models\\Project','7km'),(4,10,'Botble\\RealEstate\\Models\\Property','10km'),(4,11,'Botble\\RealEstate\\Models\\Project','6km'),(4,11,'Botble\\RealEstate\\Models\\Property','17km'),(4,12,'Botble\\RealEstate\\Models\\Project','1km'),(4,12,'Botble\\RealEstate\\Models\\Property','18km'),(4,13,'Botble\\RealEstate\\Models\\Project','19km'),(4,13,'Botble\\RealEstate\\Models\\Property','20km'),(4,14,'Botble\\RealEstate\\Models\\Project','15km'),(4,14,'Botble\\RealEstate\\Models\\Property','11km'),(4,15,'Botble\\RealEstate\\Models\\Project','1km'),(4,15,'Botble\\RealEstate\\Models\\Property','7km'),(4,16,'Botble\\RealEstate\\Models\\Project','1km'),(4,16,'Botble\\RealEstate\\Models\\Property','7km'),(4,17,'Botble\\RealEstate\\Models\\Project','6km'),(4,17,'Botble\\RealEstate\\Models\\Property','12km'),(4,18,'Botble\\RealEstate\\Models\\Project','7km'),(4,18,'Botble\\RealEstate\\Models\\Property','7km'),(4,19,'Botble\\RealEstate\\Models\\Property','6km'),(4,20,'Botble\\RealEstate\\Models\\Property','5km'),(4,21,'Botble\\RealEstate\\Models\\Property','17km'),(4,22,'Botble\\RealEstate\\Models\\Property','7km'),(4,23,'Botble\\RealEstate\\Models\\Property','18km'),(4,24,'Botble\\RealEstate\\Models\\Property','15km'),(4,25,'Botble\\RealEstate\\Models\\Property','19km'),(4,26,'Botble\\RealEstate\\Models\\Property','17km'),(4,27,'Botble\\RealEstate\\Models\\Property','15km'),(4,28,'Botble\\RealEstate\\Models\\Property','5km'),(4,29,'Botble\\RealEstate\\Models\\Property','7km'),(4,30,'Botble\\RealEstate\\Models\\Property','15km'),(4,31,'Botble\\RealEstate\\Models\\Property','15km'),(4,32,'Botble\\RealEstate\\Models\\Property','19km'),(4,33,'Botble\\RealEstate\\Models\\Property','18km'),(4,34,'Botble\\RealEstate\\Models\\Property','12km'),(4,35,'Botble\\RealEstate\\Models\\Property','4km'),(4,36,'Botble\\RealEstate\\Models\\Property','13km'),(4,37,'Botble\\RealEstate\\Models\\Property','14km'),(4,38,'Botble\\RealEstate\\Models\\Property','20km'),(4,39,'Botble\\RealEstate\\Models\\Property','13km'),(4,40,'Botble\\RealEstate\\Models\\Property','16km'),(4,41,'Botble\\RealEstate\\Models\\Property','13km'),(4,42,'Botble\\RealEstate\\Models\\Property','14km'),(4,43,'Botble\\RealEstate\\Models\\Property','13km'),(4,44,'Botble\\RealEstate\\Models\\Property','20km'),(4,45,'Botble\\RealEstate\\Models\\Property','19km'),(4,46,'Botble\\RealEstate\\Models\\Property','1km'),(4,47,'Botble\\RealEstate\\Models\\Property','1km'),(4,48,'Botble\\RealEstate\\Models\\Property','15km'),(4,49,'Botble\\RealEstate\\Models\\Property','20km'),(4,50,'Botble\\RealEstate\\Models\\Property','11km'),(4,51,'Botble\\RealEstate\\Models\\Property','6km'),(4,52,'Botble\\RealEstate\\Models\\Property','18km'),(4,53,'Botble\\RealEstate\\Models\\Property','10km'),(4,54,'Botble\\RealEstate\\Models\\Property','8km'),(4,55,'Botble\\RealEstate\\Models\\Property','20km'),(4,56,'Botble\\RealEstate\\Models\\Property','12km'),(4,57,'Botble\\RealEstate\\Models\\Property','15km'),(4,58,'Botble\\RealEstate\\Models\\Property','14km'),(4,59,'Botble\\RealEstate\\Models\\Property','12km'),(4,60,'Botble\\RealEstate\\Models\\Property','10km'),(4,61,'Botble\\RealEstate\\Models\\Property','5km'),(5,1,'Botble\\RealEstate\\Models\\Project','16km'),(5,1,'Botble\\RealEstate\\Models\\Property','10km'),(5,2,'Botble\\RealEstate\\Models\\Project','2km'),(5,2,'Botble\\RealEstate\\Models\\Property','3km'),(5,3,'Botble\\RealEstate\\Models\\Project','10km'),(5,3,'Botble\\RealEstate\\Models\\Property','8km'),(5,4,'Botble\\RealEstate\\Models\\Project','15km'),(5,4,'Botble\\RealEstate\\Models\\Property','6km'),(5,5,'Botble\\RealEstate\\Models\\Project','2km'),(5,5,'Botble\\RealEstate\\Models\\Property','1km'),(5,6,'Botble\\RealEstate\\Models\\Project','17km'),(5,6,'Botble\\RealEstate\\Models\\Property','7km'),(5,7,'Botble\\RealEstate\\Models\\Project','18km'),(5,7,'Botble\\RealEstate\\Models\\Property','4km'),(5,8,'Botble\\RealEstate\\Models\\Project','12km'),(5,8,'Botble\\RealEstate\\Models\\Property','14km'),(5,9,'Botble\\RealEstate\\Models\\Project','1km'),(5,9,'Botble\\RealEstate\\Models\\Property','11km'),(5,10,'Botble\\RealEstate\\Models\\Project','12km'),(5,10,'Botble\\RealEstate\\Models\\Property','12km'),(5,11,'Botble\\RealEstate\\Models\\Project','12km'),(5,11,'Botble\\RealEstate\\Models\\Property','1km'),(5,12,'Botble\\RealEstate\\Models\\Project','14km'),(5,12,'Botble\\RealEstate\\Models\\Property','19km'),(5,13,'Botble\\RealEstate\\Models\\Project','15km'),(5,13,'Botble\\RealEstate\\Models\\Property','2km'),(5,14,'Botble\\RealEstate\\Models\\Project','16km'),(5,14,'Botble\\RealEstate\\Models\\Property','6km'),(5,15,'Botble\\RealEstate\\Models\\Project','18km'),(5,15,'Botble\\RealEstate\\Models\\Property','19km'),(5,16,'Botble\\RealEstate\\Models\\Project','2km'),(5,16,'Botble\\RealEstate\\Models\\Property','17km'),(5,17,'Botble\\RealEstate\\Models\\Project','19km'),(5,17,'Botble\\RealEstate\\Models\\Property','5km'),(5,18,'Botble\\RealEstate\\Models\\Project','11km'),(5,18,'Botble\\RealEstate\\Models\\Property','8km'),(5,19,'Botble\\RealEstate\\Models\\Property','16km'),(5,20,'Botble\\RealEstate\\Models\\Property','5km'),(5,21,'Botble\\RealEstate\\Models\\Property','9km'),(5,22,'Botble\\RealEstate\\Models\\Property','9km'),(5,23,'Botble\\RealEstate\\Models\\Property','17km'),(5,24,'Botble\\RealEstate\\Models\\Property','3km'),(5,25,'Botble\\RealEstate\\Models\\Property','15km'),(5,26,'Botble\\RealEstate\\Models\\Property','1km'),(5,27,'Botble\\RealEstate\\Models\\Property','11km'),(5,28,'Botble\\RealEstate\\Models\\Property','17km'),(5,29,'Botble\\RealEstate\\Models\\Property','18km'),(5,30,'Botble\\RealEstate\\Models\\Property','19km'),(5,31,'Botble\\RealEstate\\Models\\Property','4km'),(5,32,'Botble\\RealEstate\\Models\\Property','8km'),(5,33,'Botble\\RealEstate\\Models\\Property','2km'),(5,34,'Botble\\RealEstate\\Models\\Property','5km'),(5,35,'Botble\\RealEstate\\Models\\Property','10km'),(5,36,'Botble\\RealEstate\\Models\\Property','2km'),(5,37,'Botble\\RealEstate\\Models\\Property','7km'),(5,38,'Botble\\RealEstate\\Models\\Property','14km'),(5,39,'Botble\\RealEstate\\Models\\Property','19km'),(5,40,'Botble\\RealEstate\\Models\\Property','4km'),(5,41,'Botble\\RealEstate\\Models\\Property','4km'),(5,42,'Botble\\RealEstate\\Models\\Property','20km'),(5,43,'Botble\\RealEstate\\Models\\Property','2km'),(5,44,'Botble\\RealEstate\\Models\\Property','1km'),(5,45,'Botble\\RealEstate\\Models\\Property','11km'),(5,46,'Botble\\RealEstate\\Models\\Property','9km'),(5,47,'Botble\\RealEstate\\Models\\Property','16km'),(5,48,'Botble\\RealEstate\\Models\\Property','16km'),(5,49,'Botble\\RealEstate\\Models\\Property','4km'),(5,50,'Botble\\RealEstate\\Models\\Property','13km'),(5,51,'Botble\\RealEstate\\Models\\Property','20km'),(5,52,'Botble\\RealEstate\\Models\\Property','8km'),(5,53,'Botble\\RealEstate\\Models\\Property','17km'),(5,54,'Botble\\RealEstate\\Models\\Property','10km'),(5,55,'Botble\\RealEstate\\Models\\Property','10km'),(5,56,'Botble\\RealEstate\\Models\\Property','18km'),(5,57,'Botble\\RealEstate\\Models\\Property','13km'),(5,58,'Botble\\RealEstate\\Models\\Property','7km'),(5,59,'Botble\\RealEstate\\Models\\Property','18km'),(5,60,'Botble\\RealEstate\\Models\\Property','4km'),(5,61,'Botble\\RealEstate\\Models\\Property','13km'),(6,1,'Botble\\RealEstate\\Models\\Project','6km'),(6,1,'Botble\\RealEstate\\Models\\Property','7km'),(6,2,'Botble\\RealEstate\\Models\\Project','20km'),(6,2,'Botble\\RealEstate\\Models\\Property','11km'),(6,3,'Botble\\RealEstate\\Models\\Project','14km'),(6,3,'Botble\\RealEstate\\Models\\Property','4km'),(6,4,'Botble\\RealEstate\\Models\\Project','16km'),(6,4,'Botble\\RealEstate\\Models\\Property','15km'),(6,5,'Botble\\RealEstate\\Models\\Project','2km'),(6,5,'Botble\\RealEstate\\Models\\Property','20km'),(6,6,'Botble\\RealEstate\\Models\\Project','8km'),(6,6,'Botble\\RealEstate\\Models\\Property','18km'),(6,7,'Botble\\RealEstate\\Models\\Project','1km'),(6,7,'Botble\\RealEstate\\Models\\Property','17km'),(6,8,'Botble\\RealEstate\\Models\\Project','6km'),(6,8,'Botble\\RealEstate\\Models\\Property','15km'),(6,9,'Botble\\RealEstate\\Models\\Project','13km'),(6,9,'Botble\\RealEstate\\Models\\Property','16km'),(6,10,'Botble\\RealEstate\\Models\\Project','9km'),(6,10,'Botble\\RealEstate\\Models\\Property','8km'),(6,11,'Botble\\RealEstate\\Models\\Project','10km'),(6,11,'Botble\\RealEstate\\Models\\Property','17km'),(6,12,'Botble\\RealEstate\\Models\\Project','20km'),(6,12,'Botble\\RealEstate\\Models\\Property','13km'),(6,13,'Botble\\RealEstate\\Models\\Project','17km'),(6,13,'Botble\\RealEstate\\Models\\Property','17km'),(6,14,'Botble\\RealEstate\\Models\\Project','1km'),(6,14,'Botble\\RealEstate\\Models\\Property','1km'),(6,15,'Botble\\RealEstate\\Models\\Project','15km'),(6,15,'Botble\\RealEstate\\Models\\Property','15km'),(6,16,'Botble\\RealEstate\\Models\\Project','14km'),(6,16,'Botble\\RealEstate\\Models\\Property','6km'),(6,17,'Botble\\RealEstate\\Models\\Project','20km'),(6,17,'Botble\\RealEstate\\Models\\Property','8km'),(6,18,'Botble\\RealEstate\\Models\\Project','18km'),(6,18,'Botble\\RealEstate\\Models\\Property','11km'),(6,19,'Botble\\RealEstate\\Models\\Property','17km'),(6,20,'Botble\\RealEstate\\Models\\Property','15km'),(6,21,'Botble\\RealEstate\\Models\\Property','16km'),(6,22,'Botble\\RealEstate\\Models\\Property','13km'),(6,23,'Botble\\RealEstate\\Models\\Property','2km'),(6,24,'Botble\\RealEstate\\Models\\Property','3km'),(6,25,'Botble\\RealEstate\\Models\\Property','4km'),(6,26,'Botble\\RealEstate\\Models\\Property','1km'),(6,27,'Botble\\RealEstate\\Models\\Property','14km'),(6,28,'Botble\\RealEstate\\Models\\Property','11km'),(6,29,'Botble\\RealEstate\\Models\\Property','5km'),(6,30,'Botble\\RealEstate\\Models\\Property','15km'),(6,31,'Botble\\RealEstate\\Models\\Property','6km'),(6,32,'Botble\\RealEstate\\Models\\Property','16km'),(6,33,'Botble\\RealEstate\\Models\\Property','5km'),(6,34,'Botble\\RealEstate\\Models\\Property','1km'),(6,35,'Botble\\RealEstate\\Models\\Property','10km'),(6,36,'Botble\\RealEstate\\Models\\Property','6km'),(6,37,'Botble\\RealEstate\\Models\\Property','15km'),(6,38,'Botble\\RealEstate\\Models\\Property','12km'),(6,39,'Botble\\RealEstate\\Models\\Property','7km'),(6,40,'Botble\\RealEstate\\Models\\Property','14km'),(6,41,'Botble\\RealEstate\\Models\\Property','3km'),(6,42,'Botble\\RealEstate\\Models\\Property','15km'),(6,43,'Botble\\RealEstate\\Models\\Property','17km'),(6,44,'Botble\\RealEstate\\Models\\Property','18km'),(6,45,'Botble\\RealEstate\\Models\\Property','18km'),(6,46,'Botble\\RealEstate\\Models\\Property','1km'),(6,47,'Botble\\RealEstate\\Models\\Property','4km'),(6,48,'Botble\\RealEstate\\Models\\Property','13km'),(6,49,'Botble\\RealEstate\\Models\\Property','20km'),(6,50,'Botble\\RealEstate\\Models\\Property','12km'),(6,51,'Botble\\RealEstate\\Models\\Property','17km'),(6,52,'Botble\\RealEstate\\Models\\Property','10km'),(6,53,'Botble\\RealEstate\\Models\\Property','15km'),(6,54,'Botble\\RealEstate\\Models\\Property','5km'),(6,55,'Botble\\RealEstate\\Models\\Property','6km'),(6,56,'Botble\\RealEstate\\Models\\Property','15km'),(6,57,'Botble\\RealEstate\\Models\\Property','1km'),(6,58,'Botble\\RealEstate\\Models\\Property','10km'),(6,59,'Botble\\RealEstate\\Models\\Property','4km'),(6,60,'Botble\\RealEstate\\Models\\Property','14km'),(6,61,'Botble\\RealEstate\\Models\\Property','11km'),(7,1,'Botble\\RealEstate\\Models\\Project','6km'),(7,1,'Botble\\RealEstate\\Models\\Property','2km'),(7,2,'Botble\\RealEstate\\Models\\Project','10km'),(7,2,'Botble\\RealEstate\\Models\\Property','5km'),(7,3,'Botble\\RealEstate\\Models\\Project','2km'),(7,3,'Botble\\RealEstate\\Models\\Property','1km'),(7,4,'Botble\\RealEstate\\Models\\Project','7km'),(7,4,'Botble\\RealEstate\\Models\\Property','13km'),(7,5,'Botble\\RealEstate\\Models\\Project','8km'),(7,5,'Botble\\RealEstate\\Models\\Property','9km'),(7,6,'Botble\\RealEstate\\Models\\Project','7km'),(7,6,'Botble\\RealEstate\\Models\\Property','2km'),(7,7,'Botble\\RealEstate\\Models\\Project','18km'),(7,7,'Botble\\RealEstate\\Models\\Property','3km'),(7,8,'Botble\\RealEstate\\Models\\Project','18km'),(7,8,'Botble\\RealEstate\\Models\\Property','15km'),(7,9,'Botble\\RealEstate\\Models\\Project','20km'),(7,9,'Botble\\RealEstate\\Models\\Property','2km'),(7,10,'Botble\\RealEstate\\Models\\Project','8km'),(7,10,'Botble\\RealEstate\\Models\\Property','20km'),(7,11,'Botble\\RealEstate\\Models\\Project','13km'),(7,11,'Botble\\RealEstate\\Models\\Property','19km'),(7,12,'Botble\\RealEstate\\Models\\Project','12km'),(7,12,'Botble\\RealEstate\\Models\\Property','1km'),(7,13,'Botble\\RealEstate\\Models\\Project','19km'),(7,13,'Botble\\RealEstate\\Models\\Property','10km'),(7,14,'Botble\\RealEstate\\Models\\Project','4km'),(7,14,'Botble\\RealEstate\\Models\\Property','3km'),(7,15,'Botble\\RealEstate\\Models\\Project','17km'),(7,15,'Botble\\RealEstate\\Models\\Property','17km'),(7,16,'Botble\\RealEstate\\Models\\Project','9km'),(7,16,'Botble\\RealEstate\\Models\\Property','15km'),(7,17,'Botble\\RealEstate\\Models\\Project','4km'),(7,17,'Botble\\RealEstate\\Models\\Property','19km'),(7,18,'Botble\\RealEstate\\Models\\Project','2km'),(7,18,'Botble\\RealEstate\\Models\\Property','7km'),(7,19,'Botble\\RealEstate\\Models\\Property','11km'),(7,20,'Botble\\RealEstate\\Models\\Property','3km'),(7,21,'Botble\\RealEstate\\Models\\Property','16km'),(7,22,'Botble\\RealEstate\\Models\\Property','3km'),(7,23,'Botble\\RealEstate\\Models\\Property','14km'),(7,24,'Botble\\RealEstate\\Models\\Property','19km'),(7,25,'Botble\\RealEstate\\Models\\Property','18km'),(7,26,'Botble\\RealEstate\\Models\\Property','3km'),(7,27,'Botble\\RealEstate\\Models\\Property','8km'),(7,28,'Botble\\RealEstate\\Models\\Property','13km'),(7,29,'Botble\\RealEstate\\Models\\Property','8km'),(7,30,'Botble\\RealEstate\\Models\\Property','9km'),(7,31,'Botble\\RealEstate\\Models\\Property','9km'),(7,32,'Botble\\RealEstate\\Models\\Property','15km'),(7,33,'Botble\\RealEstate\\Models\\Property','14km'),(7,34,'Botble\\RealEstate\\Models\\Property','12km'),(7,35,'Botble\\RealEstate\\Models\\Property','19km'),(7,36,'Botble\\RealEstate\\Models\\Property','12km'),(7,37,'Botble\\RealEstate\\Models\\Property','1km'),(7,38,'Botble\\RealEstate\\Models\\Property','20km'),(7,39,'Botble\\RealEstate\\Models\\Property','9km'),(7,40,'Botble\\RealEstate\\Models\\Property','13km'),(7,41,'Botble\\RealEstate\\Models\\Property','4km'),(7,42,'Botble\\RealEstate\\Models\\Property','20km'),(7,43,'Botble\\RealEstate\\Models\\Property','5km'),(7,44,'Botble\\RealEstate\\Models\\Property','6km'),(7,45,'Botble\\RealEstate\\Models\\Property','11km'),(7,46,'Botble\\RealEstate\\Models\\Property','12km'),(7,47,'Botble\\RealEstate\\Models\\Property','20km'),(7,48,'Botble\\RealEstate\\Models\\Property','11km'),(7,49,'Botble\\RealEstate\\Models\\Property','8km'),(7,50,'Botble\\RealEstate\\Models\\Property','6km'),(7,51,'Botble\\RealEstate\\Models\\Property','11km'),(7,52,'Botble\\RealEstate\\Models\\Property','20km'),(7,53,'Botble\\RealEstate\\Models\\Property','5km'),(7,54,'Botble\\RealEstate\\Models\\Property','20km'),(7,55,'Botble\\RealEstate\\Models\\Property','1km'),(7,56,'Botble\\RealEstate\\Models\\Property','6km'),(7,57,'Botble\\RealEstate\\Models\\Property','2km'),(7,58,'Botble\\RealEstate\\Models\\Property','8km'),(7,59,'Botble\\RealEstate\\Models\\Property','2km'),(7,60,'Botble\\RealEstate\\Models\\Property','11km'),(7,61,'Botble\\RealEstate\\Models\\Property','18km'),(8,1,'Botble\\RealEstate\\Models\\Project','16km'),(8,1,'Botble\\RealEstate\\Models\\Property','15km'),(8,2,'Botble\\RealEstate\\Models\\Project','6km'),(8,2,'Botble\\RealEstate\\Models\\Property','2km'),(8,3,'Botble\\RealEstate\\Models\\Project','10km'),(8,3,'Botble\\RealEstate\\Models\\Property','2km'),(8,4,'Botble\\RealEstate\\Models\\Project','11km'),(8,4,'Botble\\RealEstate\\Models\\Property','9km'),(8,5,'Botble\\RealEstate\\Models\\Project','4km'),(8,5,'Botble\\RealEstate\\Models\\Property','18km'),(8,6,'Botble\\RealEstate\\Models\\Project','20km'),(8,6,'Botble\\RealEstate\\Models\\Property','1km'),(8,7,'Botble\\RealEstate\\Models\\Project','16km'),(8,7,'Botble\\RealEstate\\Models\\Property','17km'),(8,8,'Botble\\RealEstate\\Models\\Project','5km'),(8,8,'Botble\\RealEstate\\Models\\Property','7km'),(8,9,'Botble\\RealEstate\\Models\\Project','9km'),(8,9,'Botble\\RealEstate\\Models\\Property','15km'),(8,10,'Botble\\RealEstate\\Models\\Project','15km'),(8,10,'Botble\\RealEstate\\Models\\Property','18km'),(8,11,'Botble\\RealEstate\\Models\\Project','20km'),(8,11,'Botble\\RealEstate\\Models\\Property','10km'),(8,12,'Botble\\RealEstate\\Models\\Project','15km'),(8,12,'Botble\\RealEstate\\Models\\Property','1km'),(8,13,'Botble\\RealEstate\\Models\\Project','12km'),(8,13,'Botble\\RealEstate\\Models\\Property','14km'),(8,14,'Botble\\RealEstate\\Models\\Project','11km'),(8,14,'Botble\\RealEstate\\Models\\Property','6km'),(8,15,'Botble\\RealEstate\\Models\\Project','15km'),(8,15,'Botble\\RealEstate\\Models\\Property','17km'),(8,16,'Botble\\RealEstate\\Models\\Project','19km'),(8,16,'Botble\\RealEstate\\Models\\Property','2km'),(8,17,'Botble\\RealEstate\\Models\\Project','13km'),(8,17,'Botble\\RealEstate\\Models\\Property','10km'),(8,18,'Botble\\RealEstate\\Models\\Project','10km'),(8,18,'Botble\\RealEstate\\Models\\Property','6km'),(8,19,'Botble\\RealEstate\\Models\\Property','16km'),(8,20,'Botble\\RealEstate\\Models\\Property','18km'),(8,21,'Botble\\RealEstate\\Models\\Property','4km'),(8,22,'Botble\\RealEstate\\Models\\Property','18km'),(8,23,'Botble\\RealEstate\\Models\\Property','20km'),(8,24,'Botble\\RealEstate\\Models\\Property','5km'),(8,25,'Botble\\RealEstate\\Models\\Property','9km'),(8,26,'Botble\\RealEstate\\Models\\Property','20km'),(8,27,'Botble\\RealEstate\\Models\\Property','1km'),(8,28,'Botble\\RealEstate\\Models\\Property','5km'),(8,29,'Botble\\RealEstate\\Models\\Property','15km'),(8,30,'Botble\\RealEstate\\Models\\Property','18km'),(8,31,'Botble\\RealEstate\\Models\\Property','13km'),(8,32,'Botble\\RealEstate\\Models\\Property','15km'),(8,33,'Botble\\RealEstate\\Models\\Property','13km'),(8,34,'Botble\\RealEstate\\Models\\Property','9km'),(8,35,'Botble\\RealEstate\\Models\\Property','19km'),(8,36,'Botble\\RealEstate\\Models\\Property','6km'),(8,37,'Botble\\RealEstate\\Models\\Property','14km'),(8,38,'Botble\\RealEstate\\Models\\Property','8km'),(8,39,'Botble\\RealEstate\\Models\\Property','2km'),(8,40,'Botble\\RealEstate\\Models\\Property','4km'),(8,41,'Botble\\RealEstate\\Models\\Property','6km'),(8,42,'Botble\\RealEstate\\Models\\Property','7km'),(8,43,'Botble\\RealEstate\\Models\\Property','15km'),(8,44,'Botble\\RealEstate\\Models\\Property','7km'),(8,45,'Botble\\RealEstate\\Models\\Property','19km'),(8,46,'Botble\\RealEstate\\Models\\Property','4km'),(8,47,'Botble\\RealEstate\\Models\\Property','1km'),(8,48,'Botble\\RealEstate\\Models\\Property','6km'),(8,49,'Botble\\RealEstate\\Models\\Property','15km'),(8,50,'Botble\\RealEstate\\Models\\Property','17km'),(8,51,'Botble\\RealEstate\\Models\\Property','12km'),(8,52,'Botble\\RealEstate\\Models\\Property','4km'),(8,53,'Botble\\RealEstate\\Models\\Property','15km'),(8,54,'Botble\\RealEstate\\Models\\Property','12km'),(8,55,'Botble\\RealEstate\\Models\\Property','8km'),(8,56,'Botble\\RealEstate\\Models\\Property','8km'),(8,57,'Botble\\RealEstate\\Models\\Property','14km'),(8,58,'Botble\\RealEstate\\Models\\Property','10km'),(8,59,'Botble\\RealEstate\\Models\\Property','2km'),(8,60,'Botble\\RealEstate\\Models\\Property','1km'),(8,61,'Botble\\RealEstate\\Models\\Property','1km'),(9,1,'Botble\\RealEstate\\Models\\Project','13km'),(9,1,'Botble\\RealEstate\\Models\\Property','19km'),(9,2,'Botble\\RealEstate\\Models\\Project','10km'),(9,2,'Botble\\RealEstate\\Models\\Property','8km'),(9,3,'Botble\\RealEstate\\Models\\Project','10km'),(9,3,'Botble\\RealEstate\\Models\\Property','14km'),(9,4,'Botble\\RealEstate\\Models\\Project','17km'),(9,4,'Botble\\RealEstate\\Models\\Property','18km'),(9,5,'Botble\\RealEstate\\Models\\Project','19km'),(9,5,'Botble\\RealEstate\\Models\\Property','1km'),(9,6,'Botble\\RealEstate\\Models\\Project','3km'),(9,6,'Botble\\RealEstate\\Models\\Property','4km'),(9,7,'Botble\\RealEstate\\Models\\Project','6km'),(9,7,'Botble\\RealEstate\\Models\\Property','20km'),(9,8,'Botble\\RealEstate\\Models\\Project','5km'),(9,8,'Botble\\RealEstate\\Models\\Property','18km'),(9,9,'Botble\\RealEstate\\Models\\Project','7km'),(9,9,'Botble\\RealEstate\\Models\\Property','8km'),(9,10,'Botble\\RealEstate\\Models\\Project','8km'),(9,10,'Botble\\RealEstate\\Models\\Property','20km'),(9,11,'Botble\\RealEstate\\Models\\Project','2km'),(9,11,'Botble\\RealEstate\\Models\\Property','19km'),(9,12,'Botble\\RealEstate\\Models\\Project','9km'),(9,12,'Botble\\RealEstate\\Models\\Property','3km'),(9,13,'Botble\\RealEstate\\Models\\Project','10km'),(9,13,'Botble\\RealEstate\\Models\\Property','7km'),(9,14,'Botble\\RealEstate\\Models\\Project','19km'),(9,14,'Botble\\RealEstate\\Models\\Property','2km'),(9,15,'Botble\\RealEstate\\Models\\Project','11km'),(9,15,'Botble\\RealEstate\\Models\\Property','7km'),(9,16,'Botble\\RealEstate\\Models\\Project','14km'),(9,16,'Botble\\RealEstate\\Models\\Property','5km'),(9,17,'Botble\\RealEstate\\Models\\Project','5km'),(9,17,'Botble\\RealEstate\\Models\\Property','11km'),(9,18,'Botble\\RealEstate\\Models\\Project','15km'),(9,18,'Botble\\RealEstate\\Models\\Property','2km'),(9,19,'Botble\\RealEstate\\Models\\Property','13km'),(9,20,'Botble\\RealEstate\\Models\\Property','1km'),(9,21,'Botble\\RealEstate\\Models\\Property','3km'),(9,22,'Botble\\RealEstate\\Models\\Property','16km'),(9,23,'Botble\\RealEstate\\Models\\Property','10km'),(9,24,'Botble\\RealEstate\\Models\\Property','14km'),(9,25,'Botble\\RealEstate\\Models\\Property','19km'),(9,26,'Botble\\RealEstate\\Models\\Property','12km'),(9,27,'Botble\\RealEstate\\Models\\Property','10km'),(9,28,'Botble\\RealEstate\\Models\\Property','3km'),(9,29,'Botble\\RealEstate\\Models\\Property','2km'),(9,30,'Botble\\RealEstate\\Models\\Property','3km'),(9,31,'Botble\\RealEstate\\Models\\Property','10km'),(9,32,'Botble\\RealEstate\\Models\\Property','11km'),(9,33,'Botble\\RealEstate\\Models\\Property','17km'),(9,34,'Botble\\RealEstate\\Models\\Property','7km'),(9,35,'Botble\\RealEstate\\Models\\Property','17km'),(9,36,'Botble\\RealEstate\\Models\\Property','9km'),(9,37,'Botble\\RealEstate\\Models\\Property','13km'),(9,38,'Botble\\RealEstate\\Models\\Property','5km'),(9,39,'Botble\\RealEstate\\Models\\Property','10km'),(9,40,'Botble\\RealEstate\\Models\\Property','4km'),(9,41,'Botble\\RealEstate\\Models\\Property','7km'),(9,42,'Botble\\RealEstate\\Models\\Property','2km'),(9,43,'Botble\\RealEstate\\Models\\Property','15km'),(9,44,'Botble\\RealEstate\\Models\\Property','1km'),(9,45,'Botble\\RealEstate\\Models\\Property','1km'),(9,46,'Botble\\RealEstate\\Models\\Property','19km'),(9,47,'Botble\\RealEstate\\Models\\Property','2km'),(9,48,'Botble\\RealEstate\\Models\\Property','15km'),(9,49,'Botble\\RealEstate\\Models\\Property','16km'),(9,50,'Botble\\RealEstate\\Models\\Property','16km'),(9,51,'Botble\\RealEstate\\Models\\Property','3km'),(9,52,'Botble\\RealEstate\\Models\\Property','10km'),(9,53,'Botble\\RealEstate\\Models\\Property','9km'),(9,54,'Botble\\RealEstate\\Models\\Property','8km'),(9,55,'Botble\\RealEstate\\Models\\Property','20km'),(9,56,'Botble\\RealEstate\\Models\\Property','14km'),(9,57,'Botble\\RealEstate\\Models\\Property','3km'),(9,58,'Botble\\RealEstate\\Models\\Property','12km'),(9,59,'Botble\\RealEstate\\Models\\Property','4km'),(9,60,'Botble\\RealEstate\\Models\\Property','16km'),(9,61,'Botble\\RealEstate\\Models\\Property','8km'),(10,1,'Botble\\RealEstate\\Models\\Project','2km'),(10,1,'Botble\\RealEstate\\Models\\Property','3km'),(10,2,'Botble\\RealEstate\\Models\\Project','1km'),(10,2,'Botble\\RealEstate\\Models\\Property','2km'),(10,3,'Botble\\RealEstate\\Models\\Project','9km'),(10,3,'Botble\\RealEstate\\Models\\Property','6km'),(10,4,'Botble\\RealEstate\\Models\\Project','11km'),(10,4,'Botble\\RealEstate\\Models\\Property','6km'),(10,5,'Botble\\RealEstate\\Models\\Project','10km'),(10,5,'Botble\\RealEstate\\Models\\Property','7km'),(10,6,'Botble\\RealEstate\\Models\\Project','13km'),(10,6,'Botble\\RealEstate\\Models\\Property','11km'),(10,7,'Botble\\RealEstate\\Models\\Project','18km'),(10,7,'Botble\\RealEstate\\Models\\Property','10km'),(10,8,'Botble\\RealEstate\\Models\\Project','8km'),(10,8,'Botble\\RealEstate\\Models\\Property','9km'),(10,9,'Botble\\RealEstate\\Models\\Project','18km'),(10,9,'Botble\\RealEstate\\Models\\Property','20km'),(10,10,'Botble\\RealEstate\\Models\\Project','16km'),(10,10,'Botble\\RealEstate\\Models\\Property','20km'),(10,11,'Botble\\RealEstate\\Models\\Project','19km'),(10,11,'Botble\\RealEstate\\Models\\Property','17km'),(10,12,'Botble\\RealEstate\\Models\\Project','11km'),(10,12,'Botble\\RealEstate\\Models\\Property','2km'),(10,13,'Botble\\RealEstate\\Models\\Project','2km'),(10,13,'Botble\\RealEstate\\Models\\Property','2km'),(10,14,'Botble\\RealEstate\\Models\\Project','6km'),(10,14,'Botble\\RealEstate\\Models\\Property','8km'),(10,15,'Botble\\RealEstate\\Models\\Project','6km'),(10,15,'Botble\\RealEstate\\Models\\Property','18km'),(10,16,'Botble\\RealEstate\\Models\\Project','18km'),(10,16,'Botble\\RealEstate\\Models\\Property','1km'),(10,17,'Botble\\RealEstate\\Models\\Project','13km'),(10,17,'Botble\\RealEstate\\Models\\Property','11km'),(10,18,'Botble\\RealEstate\\Models\\Project','9km'),(10,18,'Botble\\RealEstate\\Models\\Property','3km'),(10,19,'Botble\\RealEstate\\Models\\Property','15km'),(10,20,'Botble\\RealEstate\\Models\\Property','18km'),(10,21,'Botble\\RealEstate\\Models\\Property','15km'),(10,22,'Botble\\RealEstate\\Models\\Property','2km'),(10,23,'Botble\\RealEstate\\Models\\Property','2km'),(10,24,'Botble\\RealEstate\\Models\\Property','8km'),(10,25,'Botble\\RealEstate\\Models\\Property','14km'),(10,26,'Botble\\RealEstate\\Models\\Property','12km'),(10,27,'Botble\\RealEstate\\Models\\Property','13km'),(10,28,'Botble\\RealEstate\\Models\\Property','14km'),(10,29,'Botble\\RealEstate\\Models\\Property','4km'),(10,30,'Botble\\RealEstate\\Models\\Property','4km'),(10,31,'Botble\\RealEstate\\Models\\Property','11km'),(10,32,'Botble\\RealEstate\\Models\\Property','16km'),(10,33,'Botble\\RealEstate\\Models\\Property','4km'),(10,34,'Botble\\RealEstate\\Models\\Property','17km'),(10,35,'Botble\\RealEstate\\Models\\Property','2km'),(10,36,'Botble\\RealEstate\\Models\\Property','6km'),(10,37,'Botble\\RealEstate\\Models\\Property','9km'),(10,38,'Botble\\RealEstate\\Models\\Property','7km'),(10,39,'Botble\\RealEstate\\Models\\Property','14km'),(10,40,'Botble\\RealEstate\\Models\\Property','18km'),(10,41,'Botble\\RealEstate\\Models\\Property','20km'),(10,42,'Botble\\RealEstate\\Models\\Property','12km'),(10,43,'Botble\\RealEstate\\Models\\Property','16km'),(10,44,'Botble\\RealEstate\\Models\\Property','17km'),(10,45,'Botble\\RealEstate\\Models\\Property','11km'),(10,46,'Botble\\RealEstate\\Models\\Property','17km'),(10,47,'Botble\\RealEstate\\Models\\Property','2km'),(10,48,'Botble\\RealEstate\\Models\\Property','14km'),(10,49,'Botble\\RealEstate\\Models\\Property','4km'),(10,50,'Botble\\RealEstate\\Models\\Property','6km'),(10,51,'Botble\\RealEstate\\Models\\Property','18km'),(10,52,'Botble\\RealEstate\\Models\\Property','6km'),(10,53,'Botble\\RealEstate\\Models\\Property','9km'),(10,54,'Botble\\RealEstate\\Models\\Property','7km'),(10,55,'Botble\\RealEstate\\Models\\Property','12km'),(10,56,'Botble\\RealEstate\\Models\\Property','11km'),(10,57,'Botble\\RealEstate\\Models\\Property','8km'),(10,58,'Botble\\RealEstate\\Models\\Property','5km'),(10,59,'Botble\\RealEstate\\Models\\Property','5km'),(10,60,'Botble\\RealEstate\\Models\\Property','2km'),(10,61,'Botble\\RealEstate\\Models\\Property','6km'),(11,1,'Botble\\RealEstate\\Models\\Project','2km'),(11,1,'Botble\\RealEstate\\Models\\Property','8km'),(11,2,'Botble\\RealEstate\\Models\\Project','20km'),(11,2,'Botble\\RealEstate\\Models\\Property','2km'),(11,3,'Botble\\RealEstate\\Models\\Project','7km'),(11,3,'Botble\\RealEstate\\Models\\Property','3km'),(11,4,'Botble\\RealEstate\\Models\\Project','8km'),(11,4,'Botble\\RealEstate\\Models\\Property','20km'),(11,5,'Botble\\RealEstate\\Models\\Project','6km'),(11,5,'Botble\\RealEstate\\Models\\Property','20km'),(11,6,'Botble\\RealEstate\\Models\\Project','14km'),(11,6,'Botble\\RealEstate\\Models\\Property','17km'),(11,7,'Botble\\RealEstate\\Models\\Project','15km'),(11,7,'Botble\\RealEstate\\Models\\Property','4km'),(11,8,'Botble\\RealEstate\\Models\\Project','12km'),(11,8,'Botble\\RealEstate\\Models\\Property','8km'),(11,9,'Botble\\RealEstate\\Models\\Project','4km'),(11,9,'Botble\\RealEstate\\Models\\Property','19km'),(11,10,'Botble\\RealEstate\\Models\\Project','14km'),(11,10,'Botble\\RealEstate\\Models\\Property','8km'),(11,11,'Botble\\RealEstate\\Models\\Project','2km'),(11,11,'Botble\\RealEstate\\Models\\Property','18km'),(11,12,'Botble\\RealEstate\\Models\\Project','9km'),(11,12,'Botble\\RealEstate\\Models\\Property','6km'),(11,13,'Botble\\RealEstate\\Models\\Project','18km'),(11,13,'Botble\\RealEstate\\Models\\Property','13km'),(11,14,'Botble\\RealEstate\\Models\\Project','17km'),(11,14,'Botble\\RealEstate\\Models\\Property','2km'),(11,15,'Botble\\RealEstate\\Models\\Project','17km'),(11,15,'Botble\\RealEstate\\Models\\Property','9km'),(11,16,'Botble\\RealEstate\\Models\\Project','17km'),(11,16,'Botble\\RealEstate\\Models\\Property','6km'),(11,17,'Botble\\RealEstate\\Models\\Project','10km'),(11,17,'Botble\\RealEstate\\Models\\Property','1km'),(11,18,'Botble\\RealEstate\\Models\\Project','10km'),(11,18,'Botble\\RealEstate\\Models\\Property','15km'),(11,19,'Botble\\RealEstate\\Models\\Property','15km'),(11,20,'Botble\\RealEstate\\Models\\Property','14km'),(11,21,'Botble\\RealEstate\\Models\\Property','16km'),(11,22,'Botble\\RealEstate\\Models\\Property','20km'),(11,23,'Botble\\RealEstate\\Models\\Property','14km'),(11,24,'Botble\\RealEstate\\Models\\Property','17km'),(11,25,'Botble\\RealEstate\\Models\\Property','6km'),(11,26,'Botble\\RealEstate\\Models\\Property','17km'),(11,27,'Botble\\RealEstate\\Models\\Property','6km'),(11,28,'Botble\\RealEstate\\Models\\Property','17km'),(11,29,'Botble\\RealEstate\\Models\\Property','16km'),(11,30,'Botble\\RealEstate\\Models\\Property','20km'),(11,31,'Botble\\RealEstate\\Models\\Property','16km'),(11,32,'Botble\\RealEstate\\Models\\Property','16km'),(11,33,'Botble\\RealEstate\\Models\\Property','14km'),(11,34,'Botble\\RealEstate\\Models\\Property','19km'),(11,35,'Botble\\RealEstate\\Models\\Property','9km'),(11,36,'Botble\\RealEstate\\Models\\Property','11km'),(11,37,'Botble\\RealEstate\\Models\\Property','11km'),(11,38,'Botble\\RealEstate\\Models\\Property','15km'),(11,39,'Botble\\RealEstate\\Models\\Property','3km'),(11,40,'Botble\\RealEstate\\Models\\Property','18km'),(11,41,'Botble\\RealEstate\\Models\\Property','14km'),(11,42,'Botble\\RealEstate\\Models\\Property','8km'),(11,43,'Botble\\RealEstate\\Models\\Property','18km'),(11,44,'Botble\\RealEstate\\Models\\Property','3km'),(11,45,'Botble\\RealEstate\\Models\\Property','6km'),(11,46,'Botble\\RealEstate\\Models\\Property','17km'),(11,47,'Botble\\RealEstate\\Models\\Property','9km'),(11,48,'Botble\\RealEstate\\Models\\Property','2km'),(11,49,'Botble\\RealEstate\\Models\\Property','19km'),(11,50,'Botble\\RealEstate\\Models\\Property','17km'),(11,51,'Botble\\RealEstate\\Models\\Property','5km'),(11,52,'Botble\\RealEstate\\Models\\Property','18km'),(11,53,'Botble\\RealEstate\\Models\\Property','7km'),(11,54,'Botble\\RealEstate\\Models\\Property','5km'),(11,55,'Botble\\RealEstate\\Models\\Property','8km'),(11,56,'Botble\\RealEstate\\Models\\Property','8km'),(11,57,'Botble\\RealEstate\\Models\\Property','17km'),(11,58,'Botble\\RealEstate\\Models\\Property','20km'),(11,59,'Botble\\RealEstate\\Models\\Property','15km'),(11,60,'Botble\\RealEstate\\Models\\Property','13km'),(11,61,'Botble\\RealEstate\\Models\\Property','8km');
/*!40000 ALTER TABLE `re_facilities_distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_translations`
--

DROP TABLE IF EXISTS `re_facilities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_facilities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_translations`
--

LOCK TABLES `re_facilities_translations` WRITE;
/*!40000 ALTER TABLE `re_facilities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_facilities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features`
--

DROP TABLE IF EXISTS `re_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features`
--

LOCK TABLES `re_features` WRITE;
/*!40000 ALTER TABLE `re_features` DISABLE KEYS */;
INSERT INTO `re_features` VALUES (1,'Wifi','ti ti-wifi','published'),(2,'Parking','ti ti-parking','published'),(3,'Swimming pool','ti ti-pool','published'),(4,'Balcony','ti ti-building-skyscraper','published'),(5,'Garden','ti ti-trees','published'),(6,'Security','ti ti-shield-lock','published'),(7,'Fitness center','ti ti-stretching','published'),(8,'Air Conditioning','ti ti-air-conditioning','published'),(9,'Central Heating','ti ti-thermometer','published'),(10,'Laundry Room','ti ti-wash-machine','published'),(11,'Pets Allow','ti ti-paw','published'),(12,'Spa & Massage','ti ti-bath','published');
/*!40000 ALTER TABLE `re_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features_translations`
--

DROP TABLE IF EXISTS `re_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features_translations`
--

LOCK TABLES `re_features_translations` WRITE;
/*!40000 ALTER TABLE `re_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors`
--

DROP TABLE IF EXISTS `re_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors`
--

LOCK TABLES `re_investors` WRITE;
/*!40000 ALTER TABLE `re_investors` DISABLE KEYS */;
INSERT INTO `re_investors` VALUES (1,'National Pension Service','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(2,'Generali','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(3,'Temasek','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(4,'China Investment Corporation','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(5,'Government Pension Fund Global','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(6,'PSP Investments','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(7,'MEAG Munich ERGO','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(8,'HOOPP','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(9,'BT Group','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(10,'New York City ERS','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(11,'New Jersey Division of Investment','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(12,'State Super','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(13,'Shinkong','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL),(14,'Rest Super','published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,NULL);
/*!40000 ALTER TABLE `re_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors_translations`
--

DROP TABLE IF EXISTS `re_investors_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_investors_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_investors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors_translations`
--

LOCK TABLES `re_investors_translations` WRITE;
/*!40000 ALTER TABLE `re_investors_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_investors_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoice_items`
--

DROP TABLE IF EXISTS `re_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoice_items`
--

LOCK TABLES `re_invoice_items` WRITE;
/*!40000 ALTER TABLE `re_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoices`
--

DROP TABLE IF EXISTS `re_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_invoices_code_unique` (`code`),
  KEY `re_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `re_invoices_payment_id_index` (`payment_id`),
  KEY `re_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoices`
--

LOCK TABLES `re_invoices` WRITE;
/*!40000 ALTER TABLE `re_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages`
--

DROP TABLE IF EXISTS `re_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double unsigned NOT NULL,
  `currency_id` bigint unsigned NOT NULL,
  `percent_save` int unsigned NOT NULL DEFAULT '0',
  `number_of_listings` int unsigned NOT NULL,
  `account_limit` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages`
--

LOCK TABLES `re_packages` WRITE;
/*!40000 ALTER TABLE `re_packages` DISABLE KEYS */;
INSERT INTO `re_packages` VALUES (1,'Free Trial',0,1,0,1,1,1,0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'[[{\"key\":\"text\",\"value\":\"Limited time trial period\"}],[{\"key\":\"text\",\"value\":\"1 listing allowed\"}],[{\"key\":\"text\",\"value\":\"Basic support\"}]]'),(2,'Basic Listing',250,1,0,1,5,2,1,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'[[{\"key\":\"text\",\"value\":\"1 listing allowed\"}],[{\"key\":\"text\",\"value\":\"5 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Basic support\"}]]'),(3,'Standard Package',1000,1,20,5,10,3,0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'[[{\"key\":\"text\",\"value\":\"5 listings allowed\"}],[{\"key\":\"text\",\"value\":\"10 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Priority support\"}]]'),(4,'Professional Package',1800,1,28,10,15,4,0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'[[{\"key\":\"text\",\"value\":\"10 listings allowed\"}],[{\"key\":\"text\",\"value\":\"15 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Premium support\"}],[{\"key\":\"text\",\"value\":\"Featured listings\"}]]'),(5,'Premium Package',2500,1,33,15,20,5,0,'published','2025-11-25 08:37:52','2025-11-25 08:37:52',NULL,'[[{\"key\":\"text\",\"value\":\"15 listings allowed\"}],[{\"key\":\"text\",\"value\":\"20 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Premium support\"}],[{\"key\":\"text\",\"value\":\"Featured listings\"}],[{\"key\":\"text\",\"value\":\"Priority listing placement\"}]]');
/*!40000 ALTER TABLE `re_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages_translations`
--

DROP TABLE IF EXISTS `re_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages_translations`
--

LOCK TABLES `re_packages_translations` WRITE;
/*!40000 ALTER TABLE `re_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_categories`
--

DROP TABLE IF EXISTS `re_project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_categories` (
  `project_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_categories`
--

LOCK TABLES `re_project_categories` WRITE;
/*!40000 ALTER TABLE `re_project_categories` DISABLE KEYS */;
INSERT INTO `re_project_categories` VALUES (1,1),(1,3),(1,6),(2,4),(3,1),(3,4),(3,5),(4,2),(4,4),(4,6),(5,1),(6,5),(7,6),(8,1),(8,6),(9,2),(9,3),(9,4),(10,5),(11,6),(12,5),(13,1),(13,3),(13,5),(14,1),(15,1),(15,3),(16,2),(17,1),(17,5),(18,4),(18,6);
/*!40000 ALTER TABLE `re_project_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_features`
--

DROP TABLE IF EXISTS `re_project_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_features` (
  `project_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_features`
--

LOCK TABLES `re_project_features` WRITE;
/*!40000 ALTER TABLE `re_project_features` DISABLE KEYS */;
INSERT INTO `re_project_features` VALUES (1,1),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,10),(1,11),(1,12),(2,2),(2,5),(2,7),(2,8),(2,12),(3,2),(3,6),(3,10),(3,11),(3,12),(4,1),(4,2),(4,3),(4,6),(4,8),(4,11),(5,2),(5,3),(5,5),(5,8),(5,10),(5,11),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,12),(7,2),(7,4),(7,6),(7,8),(7,9),(7,10),(7,11),(8,1),(8,2),(8,3),(8,4),(8,8),(8,9),(8,11),(9,1),(9,5),(9,6),(9,8),(9,9),(9,10),(10,1),(10,2),(10,3),(10,5),(10,6),(10,9),(10,10),(10,12),(11,1),(11,2),(11,3),(11,4),(11,5),(11,7),(11,8),(11,9),(11,10),(11,11),(11,12),(12,1),(12,3),(12,4),(12,5),(12,6),(12,7),(12,9),(12,10),(12,12),(13,2),(13,4),(13,6),(13,8),(14,1),(14,3),(14,5),(14,6),(14,8),(14,9),(14,10),(14,11),(15,1),(15,2),(15,4),(15,6),(15,7),(15,9),(15,11),(16,2),(16,3),(16,6),(16,11),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(17,9),(17,10),(17,11),(17,12),(18,3),(18,6),(18,7),(18,9),(18,11),(18,12);
/*!40000 ALTER TABLE `re_project_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects`
--

DROP TABLE IF EXISTS `re_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investor_id` bigint unsigned DEFAULT NULL,
  `number_block` int DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_priority` int DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_projects_unique_id_unique` (`unique_id`),
  KEY `idx_re_projects_status` (`status`),
  KEY `idx_re_projects_location` (`location`),
  KEY `idx_re_projects_city_status` (`city_id`,`status`),
  KEY `idx_re_projects_state_status` (`state_id`,`status`),
  KEY `idx_re_projects_featured_sort` (`is_featured`,`featured_priority`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects`
--

LOCK TABLES `re_projects` WRITE;
/*!40000 ALTER TABLE `re_projects` DISABLE KEYS */;
INSERT INTO `re_projects` VALUES (1,'Walnut Park Apartments','Enim accusantium nesciunt vel beatae. Nihil inventore non sint. Voluptatem fuga provident deleniti et molestiae. Ducimus in omnis laboriosam nesciunt.','Ut tempora voluptas reprehenderit pariatur consequatur nulla. Omnis nostrum ut dolorem laborum nisi. Et enim delectus et omnis quaerat. Qui porro doloremque provident ullam quae eaque quis. Ut rem laudantium occaecati assumenda veniam est incidunt. Architecto voluptatem repudiandae sed dolorem neque rerum. Aut praesentium impedit voluptate est sit.','[\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\"]',NULL,'911 Lilla Valley\nQuitzonberg, DC 81078-3716',8,5,10,2937,1,0,'2008-11-19','2013-09-01',8809,18231,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:56','2025-11-25 08:37:56','43.949418','-76.092042',NULL,347,5,5,'NPE1XJ',NULL),(2,'Sunshine Wonder Villas','Quos molestias dolorem ex in. Laborum fugiat placeat quaerat consequatur quasi autem impedit. Vel minima qui alias ut ut. Omnis omnis facilis pariatur et aspernatur rerum amet.','Qui nemo dolor aliquam eos. Facilis a libero inventore cum ut. Deleniti voluptas beatae vero totam rem adipisci consequuntur. Ut accusamus sequi tempore voluptas modi cumque. Rerum aut ipsam et voluptate fugit sed. Temporibus alias quidem debitis sunt perspiciatis at. Ratione quo odio qui et in blanditiis quo ut. Dolores ratione praesentium natus hic et reiciendis. Minima facilis laudantium dolorem quibusdam. Ipsam modi molestiae nihil sunt totam. Amet autem quidem magni labore eius. Eaque dolor est laboriosam qui et vero odit. Et voluptatibus omnis repudiandae cupiditate quia. Nihil sed officia corrupti nulla hic et illo.','[\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\"]',NULL,'4592 Hyman Divide Apt. 964\nJesusmouth, DE 05560',13,7,31,4620,1,0,'1980-03-25','2011-09-01',3246,8408,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:56','2025-11-25 08:37:56','42.962596','-76.487822',NULL,3749,5,5,'1OEFZU',NULL),(3,'Diamond Island','Omnis et doloremque mollitia aliquam. Cum ducimus autem consequatur velit. Totam et repudiandae assumenda in deleniti aut. Dolorem voluptas molestiae et aperiam quam voluptatibus sed tenetur.','Voluptatum est consectetur et consequatur qui ab. Ut et porro eaque voluptas inventore dolorum ut. Ratione placeat vel mollitia nemo aut commodi. Quo quaerat corporis dolorum quia sed. Ut voluptates reiciendis nihil dolorem error id. Adipisci autem fuga ut iusto rerum vel et. Voluptas id dignissimos fuga sed. Sed et voluptatem qui omnis qui explicabo iste. Corporis non ipsa nulla vitae. Praesentium ab nulla eius hic. Sapiente voluptatem qui pariatur est a. Dolores debitis aut porro facilis reprehenderit officiis. Sit accusamus fuga accusamus maiores. Dolorem qui minima minima tenetur adipisci nihil. Qui adipisci autem molestiae.','[\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\"]',NULL,'878 Alexys Island\nChamplinbury, UT 71477',6,4,22,574,0,0,'1992-01-11','1986-07-01',3677,9517,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.533463','-76.205964',NULL,8468,2,2,'WWXDTQ',NULL),(4,'The Nassim','Vel sint qui atque at repudiandae. Id fugit sit error sunt eos. Officiis molestiae consequatur aut ex voluptatem. Quisquam qui labore sunt laborum sapiente natus.','Doloribus est ut ducimus praesentium maxime excepturi. Id qui sint atque error quis aliquid. Qui enim sed ullam et. Fugit eum omnis fuga fuga dicta et sed pariatur. Autem facilis est magni eum sit eos velit. Omnis enim voluptates ipsa tenetur commodi. Ut vero quia eligendi optio maiores consequatur quo. Labore dignissimos et perferendis praesentium.','[\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\"]',NULL,'77187 Elissa Manor Suite 558\nVeumstad, VT 96007',5,1,12,303,1,0,'2022-01-06','2018-12-26',4511,6521,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.916573','-75.857257',NULL,1139,6,6,'CF4VCG',NULL),(5,'Vinhomes Grand Park','Voluptate quia dolor tenetur distinctio. Ab quia molestiae cum ipsum debitis. Est iusto non aut omnis est qui.','Impedit dolores voluptate ut. Non rerum possimus eius ut omnis. Aut amet voluptatem perferendis et quo harum voluptatibus. Vitae dolorem quia tempora praesentium omnis in libero. Cum omnis totam nihil minus facere eos. Nihil qui aliquam rem similique maiores doloribus aut et. In consequatur asperiores mollitia est labore.','[\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\"]',NULL,'6913 Petra Summit\nNew Ahmedbury, NH 67692-0383',13,10,45,2467,0,0,'2018-01-02','1989-04-14',6143,6803,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.471438','-76.526763',NULL,4231,6,6,'OI4QG9',NULL),(6,'The Metropole Thu Thiem','Ut nobis sint eos sit est dolore dolores. Labore aut aliquid voluptatum praesentium omnis nulla.','Dicta velit illo nemo ut. Occaecati nisi amet pariatur architecto rerum nesciunt. Eaque nisi voluptatem commodi quia. Tenetur voluptatum sapiente dolore. Veniam ullam reiciendis ut aut. Id provident voluptate architecto. Doloribus earum ipsum reprehenderit earum animi animi. Et minus omnis totam et sunt consequatur laborum. Sed recusandae ratione id et. Natus rerum ut saepe deleniti qui suscipit. Praesentium sed est modi voluptatem voluptatem. Hic ea recusandae provident velit voluptates sint quos. Provident quam deleniti atque culpa voluptatem repellat.','[\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\"]',NULL,'8569 Ramiro Pike\nSouth Glennafurt, HI 24459',7,7,38,23,1,0,'1980-10-30','1982-09-12',5107,15107,1,4,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','42.943899','-76.14605',NULL,5655,4,4,'L7DLJS',NULL),(7,'Villa on Grand Avenue','Velit suscipit saepe beatae id corrupti. Perferendis aperiam non est deserunt esse dolores omnis. Alias repellendus ipsam rem quis aut ipsa. Placeat ad dignissimos et ea.','Consequatur itaque deleniti debitis tenetur dolores quaerat. Ut consequatur enim itaque eos quos. Error dicta harum est eum ea. Non quos reprehenderit eos aut veniam. Quibusdam molestias tempore eveniet doloremque rerum. Quaerat blanditiis eaque at velit. Soluta cupiditate omnis et libero aspernatur et ratione. Totam corporis deserunt earum atque laudantium.','[\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\"]',NULL,'7989 Brandyn Fall Suite 724\nNew Annetta, AL 94550-3291',5,2,49,4099,1,0,'1995-10-30','1991-01-05',1069,4743,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.177105','-74.893582',NULL,2100,6,6,'QXIGVP',NULL),(8,'Traditional Food Restaurant','At recusandae mollitia voluptate omnis perferendis fugit culpa. Fuga et natus est et aut. Incidunt illum placeat est molestias ab quia totam aliquam. Vitae quia rerum adipisci esse porro et ducimus quam.','Rerum enim aut quia ipsum est. Fuga molestiae exercitationem officiis sed minima velit. Nam alias maxime maxime. Eligendi omnis aperiam accusantium voluptas eveniet quia. Quia rerum qui aut. Quod voluptatibus consectetur ipsum. Enim voluptas laborum voluptas quasi deleniti ut. Porro quia voluptas ea inventore quaerat est aliquid. Quaerat quae et saepe recusandae blanditiis ratione. Aut numquam iure consequatur neque. Officiis voluptatem enim quis culpa pariatur ut.','[\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\"]',NULL,'146 Schimmel Mountains\nNew Zoiemouth, AR 12157',8,3,13,400,1,0,'1992-07-19','1994-03-24',2484,7962,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','42.80719','-75.343615',NULL,6729,2,2,'ZDNPQI',NULL),(9,'Villa on Hollywood Boulevard','Aut repudiandae et eos eum rem inventore voluptatibus quis. Rerum voluptatem quia reprehenderit architecto ut. Ut quia consequatur quidem aut ad. Vero voluptas ut aut et eum voluptatem et.','Consequatur repellendus harum voluptate unde. Quos quo et hic fuga qui possimus sequi. Repellat est error et nostrum tempora hic voluptatem quasi. Error omnis cupiditate non non dicta illum eos. Voluptatem esse possimus alias. Id excepturi impedit et omnis. Hic nemo et doloribus rem. Dolores est eos fugiat sapiente quia dolor ut.','[\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\"]',NULL,'62647 Johnathon Spring\nBergnaumshire, ND 09412',9,4,15,3703,1,0,'2008-06-13','2000-01-21',8040,11298,1,4,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','42.585845','-75.887673',NULL,1597,4,4,'TDPITS',NULL),(10,'Office Space at Northwest 107th','Et distinctio qui repudiandae aperiam omnis sit. Est quas deserunt inventore. Commodi debitis placeat officia eveniet maxime est omnis.','Voluptatem et velit perspiciatis facere a repellendus eos. Qui accusantium consequatur qui et fuga qui. Omnis unde fugiat laborum quia. Cupiditate id eum aut. Magnam dolorum sint quo neque qui occaecati. Autem et sit voluptatem fugiat voluptatem. Pariatur porro et facilis quibusdam quam molestiae. Beatae reiciendis quae quo tempora laboriosam. Nulla iusto aut voluptas et recusandae.','[\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\"]',NULL,'606 Jakubowski Garden\nGiuseppeshire, MO 57327',2,4,3,3155,0,0,'1979-11-06','2021-01-26',3888,12713,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.786436','-75.642228',NULL,6605,2,2,'2M28C9',NULL),(11,'Home in Merrick Way','Numquam natus nihil quis et. Impedit qui dolore qui earum quos dignissimos. Tempore asperiores voluptas recusandae. Unde quia reiciendis nesciunt. Fugit qui quaerat molestiae explicabo consequatur.','Velit ut aut rerum libero molestiae enim voluptas. Quibusdam quas dolor distinctio. Sed architecto voluptas id odit in. Assumenda possimus ut laudantium sapiente consequatur minima laudantium. Sit corrupti id adipisci unde ad. Suscipit officiis a mollitia molestiae nam nostrum. Exercitationem autem asperiores qui animi et enim exercitationem. Deserunt impedit quos consequuntur earum vitae cumque. Provident quasi qui culpa aspernatur. Enim iste sit aut corporis.','[\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\"]',NULL,'429 Eula Keys Suite 925\nEast Zita, ME 95849',11,10,31,873,1,0,'1974-05-20','2010-06-07',2583,7578,1,4,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.97321','-75.553759',NULL,1407,4,4,'73PJNA',NULL),(12,'Adarsh Greens','Ad ut occaecati fugit eos. Enim molestiae fuga sint et voluptas dolores. Laborum voluptatem qui sed maxime.','Ad minima animi sapiente cupiditate ipsam ut. Est doloribus autem numquam quas aspernatur. Hic aut dolor quo earum. Dolores perspiciatis et molestiae aut magnam incidunt. Quidem quia et incidunt et nobis officia debitis. Nobis voluptatem repudiandae culpa neque excepturi. Error eos esse officiis dolore aliquam totam. Enim rerum aut laborum. Ad quia corporis tenetur porro in. Nesciunt omnis porro dolorem a. Labore hic aliquam vel at. Exercitationem veniam illum repudiandae id. Aspernatur perspiciatis omnis quis repellendus aut debitis aliquid. Quis ducimus sapiente voluptate nostrum voluptatibus dolorem occaecati.','[\"properties\\/12.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\"]',NULL,'37348 Alaina Mall\nTaylorfurt, MI 91833-6267',8,2,6,4196,1,0,'2002-02-07','1982-09-19',5585,7513,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.453499','-76.119236',NULL,4531,1,1,'NAY7G1',NULL),(13,'Rustomjee Evershine Global City','Eaque adipisci ut qui ut omnis. Voluptatibus nisi sit vel dolores perspiciatis nesciunt. Natus ea laudantium minima doloribus sint. Alias temporibus dicta debitis aut voluptatibus error tempora.','Pariatur laboriosam qui reprehenderit excepturi hic. Unde fugiat magni labore. Perferendis similique ipsam quisquam at occaecati aliquam. Quis ipsa eos voluptatem libero illum ea ea. Minima eligendi reiciendis veritatis totam corporis ut magni voluptatem. Sunt ab quibusdam alias amet impedit quos. Reprehenderit pariatur sit earum omnis. Ea iusto dolore placeat consequatur provident veritatis omnis temporibus. Libero est laborum laborum dolorum amet et. Est eum voluptatem quia vero eligendi enim aperiam. Sint inventore amet et amet praesentium voluptatem. Facere minima doloribus earum odio ut nihil. Omnis ipsam voluptas fugit illo assumenda. Exercitationem necessitatibus dolor voluptatum.','[\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\"]',NULL,'1922 Ruben Valleys Suite 944\nKenyafort, MN 44279',6,6,20,2804,0,0,'2002-01-01','1985-02-11',5311,12881,1,3,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','42.630876','-76.681604',NULL,5382,3,3,'8QKACZ',NULL),(14,'Godrej Exquisite','Fugiat maxime sint magni dolorem. Culpa ut numquam ut ut facere cumque. In quos quibusdam ut et pariatur tempore.','Quo sed expedita aut voluptatem quae. Aut ut enim explicabo accusamus. Ratione deleniti aperiam laudantium voluptatem voluptatem. Ex ex saepe culpa odit ipsa. Voluptatem et ab officiis dolore alias aut. Dolor qui adipisci quia sit. Natus asperiores dolorem in molestias. Mollitia iste quis in optio consequatur aliquam deserunt. Aspernatur suscipit fuga autem nemo totam quo rerum. Eius voluptatem cumque provident quaerat ut itaque exercitationem. Dicta facilis qui dolor voluptatem iusto eum dolor repudiandae. Aut modi quia fugit laboriosam in voluptates deserunt. Ratione minima adipisci ducimus est. Ratione earum corrupti maxime in et aliquam enim earum.','[\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\"]',NULL,'268 Eldred Orchard\nLake Narcisoburgh, CO 92860',9,5,49,3556,0,0,'2009-12-27','2013-11-23',9356,10106,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','42.750891','-76.277189',NULL,8956,2,2,'RITA6F',NULL),(15,'Godrej Prime','Officiis ut et reiciendis animi sit culpa. Dolore consequatur rerum dolores laboriosam non non. Rem ut enim iure consectetur accusamus. Dolores nesciunt nam dicta dolorem accusamus iusto. Quas fugit nemo voluptas dolor ut.','Quod eveniet cupiditate nisi totam dolores nisi. Eius vitae vel facere minus praesentium fuga eveniet. Non aut omnis deserunt est. Quia quo consequatur sed est repudiandae omnis qui. Non aspernatur vitae eaque assumenda pariatur enim error. Id ex beatae consectetur numquam est in. Quibusdam sit sequi deserunt quis. Dolores minima distinctio architecto eos. Illum porro voluptas tempore consequatur corrupti id.','[\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\"]',NULL,'4340 Alanna Station\nEdwinland, MI 95268',5,3,42,722,0,0,'1979-03-16','1993-02-28',7060,15299,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.74863','-75.940273',NULL,9139,2,2,'KQX1OQ',NULL),(16,'PS Panache','Asperiores id inventore vero ut. Quia vel provident dolores optio cum distinctio omnis eos. Nostrum est laborum quia.','Voluptas deleniti sapiente voluptas ea et minus eum. Culpa corporis molestiae qui voluptatem. Aliquid iste similique quaerat pariatur facilis hic unde. Et iste ipsum esse. Eum culpa et voluptates aperiam voluptatum fugit. Laboriosam vel sunt sunt eius enim qui maxime. Error est officiis blanditiis et et repudiandae fugit. Ipsa id suscipit et corporis sunt. Consequatur dolor quos est officiis perspiciatis voluptatibus et. Error rerum nam vero earum. Modi non accusantium eos quia qui. Non nemo autem nesciunt sint soluta. Maxime vitae corrupti ipsam iste rerum.','[\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\"]',NULL,'14300 Heller Crossroad\nRaeganburgh, CT 69099-0952',14,7,9,4007,0,0,'2009-07-17','2013-11-24',7358,8062,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.289201','-76.299952',NULL,8784,6,6,'VKQ3PJ',NULL),(17,'Upturn Atmiya Centria','Voluptas modi aut sapiente sed numquam. Cumque eius dolor qui ea nihil id. Nihil consequatur voluptatem ut rerum veritatis. Ut eum culpa beatae.','Iste consequatur incidunt aut dolores rerum. Velit fuga ratione dignissimos. Velit reiciendis necessitatibus provident rerum quis consequatur. Harum ut qui qui dolore sequi. Quia voluptatem vel temporibus aliquid quibusdam. Consequatur laudantium consectetur omnis sit odio ut. Aut velit ea unde.','[\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\"]',NULL,'276 Mohr Junctions Suite 838\nNew Marvin, MO 77202',5,1,40,3095,0,0,'2018-04-03','1990-08-17',9105,10215,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','42.950861','-76.12095',NULL,1629,2,2,'FOEE2G',NULL),(18,'Brigade Oasis','Rem error accusantium voluptatem modi atque debitis assumenda. Quia sed et nesciunt aut. Porro asperiores iusto et.','Maiores qui eaque tempora voluptas quidem adipisci animi sunt. Nesciunt officia expedita praesentium. Vel ut eum fugit expedita dolor eum. Inventore nihil hic quibusdam rerum sed fugiat atque voluptatem. Rem quas quia velit sit. Sit aut ducimus enim vitae et deleniti. Velit ullam voluptas nihil. Sunt cupiditate neque fugiat earum ut tempore iure. Ad asperiores ex aut fugit.','[\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/12.jpg\"]',NULL,'9289 Hanna Stravenue\nLomatown, MI 31306-2160',7,5,7,2587,1,0,'1995-01-13','2014-12-19',4405,8588,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-11-25 08:37:57','2025-11-25 08:37:57','43.677288','-75.530567',NULL,2922,6,6,'PHLUBI',NULL);
/*!40000 ALTER TABLE `re_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects_translations`
--

DROP TABLE IF EXISTS `re_projects_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_projects_id`),
  KEY `idx_re_projects_trans_proj_lang` (`re_projects_id`,`lang_code`),
  KEY `idx_re_projects_trans_location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects_translations`
--

LOCK TABLES `re_projects_translations` WRITE;
/*!40000 ALTER TABLE `re_projects_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_projects_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties`
--

DROP TABLE IF EXISTS `re_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  `project_id` bigint unsigned DEFAULT '0',
  `number_bedroom` int DEFAULT NULL,
  `number_bathroom` int DEFAULT NULL,
  `number_floor` int DEFAULT NULL,
  `square` double DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_priority` int DEFAULT '0',
  `city_id` bigint unsigned DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `reject_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_properties_unique_id_unique` (`unique_id`),
  KEY `idx_re_properties_status` (`status`),
  KEY `idx_re_properties_location` (`location`),
  KEY `idx_re_properties_city_status` (`city_id`,`status`),
  KEY `idx_re_properties_state_status` (`state_id`,`status`),
  KEY `idx_re_properties_featured_sort` (`is_featured`,`featured_priority`,`created_at`),
  KEY `idx_re_properties_moderation_status` (`moderation_status`),
  KEY `idx_re_properties_expire_date` (`expire_date`),
  KEY `idx_re_properties_type` (`type`),
  KEY `idx_re_properties_never_expired` (`never_expired`),
  KEY `idx_re_properties_mod_status` (`moderation_status`,`status`),
  KEY `idx_re_properties_price` (`price`),
  KEY `idx_re_properties_square` (`square`),
  KEY `idx_re_properties_bedroom` (`number_bedroom`),
  KEY `idx_re_properties_bathroom` (`number_bathroom`),
  KEY `idx_re_properties_floor` (`number_floor`),
  KEY `idx_re_properties_project_id` (`project_id`),
  KEY `idx_re_properties_author` (`author_id`,`author_type`),
  KEY `idx_re_properties_country_id` (`country_id`),
  KEY `idx_re_properties_currency_id` (`currency_id`),
  KEY `idx_re_properties_active_featured_sort` (`moderation_status`,`status`,`expire_date`,`never_expired`,`is_featured`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties`
--

LOCK TABLES `re_properties` WRITE;
/*!40000 ALTER TABLE `re_properties` DISABLE KEYS */;
INSERT INTO `re_properties` VALUES (1,'3 Beds Villa Calpe, Alicante','rent','Voluptas eligendi velit modi nulla est dolorum. Consequatur molestiae quis commodi et. Voluptatum ipsum esse dicta molestiae expedita ut. Adipisci optio et maxime explicabo.','Sed ut quos quaerat sunt nulla quam dolore. Qui est autem et cumque quod adipisci. Voluptas aut omnis qui laborum non vitae. Sed facere et repudiandae molestiae. Beatae asperiores itaque voluptatem accusantium. Fugit odio doloribus occaecati cumque magni itaque. Magnam similique vitae modi officia.','80528 Colby Roads Apt. 934\nGorczanyborough, ND 13895','[\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,6,3,58,780,467900.00,NULL,1,0,1,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-09',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.57502','-76.746995',NULL,69748,1,1,'NSGMUQ',NULL),(2,'Lavida Plus Office-tel 1 Bedroom','rent','Doloribus qui similique qui esse quia. Ut veritatis ex et omnis dolorem sunt libero delectus. Eaque quod quos provident ut eaque aspernatur.','Velit quo tenetur sint eaque. Vel sit sed ut repellendus corporis. Aut suscipit voluptatem nihil debitis perspiciatis mollitia. Nihil assumenda id non iure. Maxime nam ut quis laboriosam impedit explicabo. Occaecati natus voluptatem vel odit saepe recusandae. Sint beatae saepe itaque velit id nam. Et maxime id et inventore aut enim est.','5548 Farrell Hollow Apt. 891\nPouroston, DE 03811-9315','[\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,6,7,4,30,877500.00,NULL,1,0,5,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-27',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.905852','-76.193025',NULL,33807,5,5,'KQBRUY',NULL),(3,'Vinhomes Grand Park Studio 1 Bedroom','rent','Quis perferendis repellendus atque culpa magni unde. Quis corrupti itaque accusantium molestias. Saepe voluptas repellat labore voluptas iure aut. Ullam dolores quia quasi.','Similique perferendis consequatur dolorem asperiores et excepturi est et. Sed dolore laborum incidunt autem et dolore. Qui rerum debitis error natus sequi nam ipsum. Similique quaerat consequatur sed et ad. Et eaque assumenda corrupti debitis. Sit dolorem et rem accusamus. Ut voluptatem est aut eaque at illo. Accusantium voluptatem qui amet velit amet expedita facere. Distinctio et voluptas pariatur. Voluptatum cumque porro et omnis eum repudiandae laborum.','30059 Melisa Hills Apt. 320\nIciefort, WY 78465-0073','[\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,10,9,47,970,802800.00,NULL,0,0,4,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-29',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.519525','-76.043868',NULL,94008,4,4,'GMWAPC',NULL),(4,'The Sun Avenue Office-tel 1 Bedroom','sale','Quis fugit et nemo repellendus qui voluptatum repellat pariatur. Pariatur animi dignissimos rerum voluptatibus iure a. Delectus omnis aut nesciunt.','Quo id accusamus omnis consequatur provident et quibusdam. Rerum eligendi dolorem sunt aut tempore nesciunt. Saepe consequatur dicta itaque dolorum. Incidunt voluptate sunt voluptates aut ad. Aut omnis et doloribus qui. Fugit sit ullam qui tempore cum. Sint asperiores consequatur voluptate quo ipsum reprehenderit. Eius facere sit est ut aut pariatur vitae culpa. Et eaque aspernatur voluptatibus omnis fuga explicabo.','169 Rath Stream Suite 044\nKorbinchester, MS 07078','[\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,5,4,70,40,190200.00,NULL,0,0,4,'month','selling',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-10',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.54948','-74.793943',NULL,77157,4,4,'OTV7L6',NULL),(5,'Property For sale, Johannesburg, South Africa','rent','Est maxime dolorem qui. Et minima voluptatibus ipsa expedita id quasi deserunt aut. Provident harum modi minima consectetur repudiandae consequatur.','Blanditiis voluptatibus illum eos ipsum doloribus ea. Illum quidem sit quis. Ex totam magnam et iusto. Non odio et veniam et reiciendis magnam qui. Numquam hic quis laboriosam et id ullam. Ipsum quo voluptatem voluptatum eos quibusdam non. Laboriosam in quidem velit perferendis cupiditate libero. Error accusamus voluptas illum nesciunt. Culpa ullam vero repudiandae a beatae. Porro est voluptas amet molestiae assumenda labore. Atque enim soluta quis veniam ut ut rem velit. Et eius dolor fugiat eligendi nihil. Excepturi id consequatur est dignissimos quis quis libero. Culpa blanditiis asperiores quia in.','52769 Antonio Fork\nJoytown, NJ 64410','[\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,8,9,71,60,401500.00,NULL,0,0,3,'month','renting',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-26',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.254582','-75.061402',NULL,62879,3,3,'LYPILU',NULL),(6,'Stunning French Inspired Manor','sale','Corporis sit minus temporibus impedit voluptatem laboriosam consequuntur. Adipisci ratione vel non est ipsa. Repellat maxime dolorem eum architecto iusto aut.','Et repellat atque magnam. Est aut quae et qui odit illum repellendus. Ipsam sint fuga aut aut quibusdam ut aspernatur. Et totam unde omnis assumenda. Amet sapiente necessitatibus id. Corrupti ut alias ratione nobis ipsum inventore voluptatem. Qui iste est sapiente enim delectus cupiditate. Rerum dolor adipisci ad voluptatibus aut ipsum. Libero quia quos eos unde nostrum. Modi necessitatibus ducimus ut quia. Saepe molestiae praesentium unde molestiae molestiae qui nihil.','57911 Juston Cape Apt. 872\nSouth Anderson, WY 24181','[\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,2,10,98,280,598500.00,NULL,0,0,3,'month','selling',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-30',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.051889','-75.101886',NULL,97222,3,3,'YMSWRP',NULL),(7,'Villa for sale at Bermuda Dunes','sale','Ab repudiandae voluptatem a corrupti eveniet voluptatem dolores. Aut sit tenetur autem ut et. Consectetur velit voluptatem sequi modi et ea. Non placeat laboriosam dolor at quia vitae eos.','Perspiciatis debitis est aut natus quia ut pariatur. Ipsa consequuntur possimus provident nemo. Commodi non officia a odio officia enim. Rem saepe minus qui dolorum quos quia. Aut est tempora dolorum mollitia aut suscipit error. Sed odio doloremque qui deleniti ut. Nam voluptas ducimus nisi reprehenderit. Voluptatem voluptas tempora repellat praesentium. Asperiores sit blanditiis molestias voluptates maiores porro. Omnis fugit id saepe ducimus vel. Suscipit sed rerum quisquam vitae. Dolores eos iusto eum doloremque voluptatem.','802 Grimes Trace\nBayershire, KY 00440','[\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,5,1,50,480,75800.00,NULL,0,0,5,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-14',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.486832','-75.102657',NULL,79661,5,5,'4KAKNZ',NULL),(8,'Walnut Park Apartment','sale','Cumque qui vitae ut adipisci soluta ut omnis non. Vel corporis beatae sunt provident aut. Eum ab delectus quas mollitia praesentium unde ratione ut.','Aut odio porro eos provident. Et eius voluptatem ut corrupti provident ut aut. Nam aut aut excepturi sint. Enim pariatur quisquam dolorem soluta odio et voluptate. Commodi sit praesentium est occaecati nemo. Ut omnis consequatur omnis et dolorem excepturi consequuntur. Aut sint quasi et. Maiores dolorem unde eius dignissimos. Consequatur rerum eum ut ipsam at. Eveniet et blanditiis voluptate voluptatem ut. Quidem nihil nisi excepturi tempora. Eum repudiandae officia nemo facere sunt est. Dolor numquam est et at consequatur. Dolorum enim ut cum quia.','378 Bechtelar Squares Apt. 865\nWest Ocie, MA 23031-7100','[\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',14,2,3,18,740,513000.00,NULL,1,0,4,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-24',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.990353','-75.062225',NULL,22162,4,4,'1TJHT7',NULL),(9,'5 beds luxury house','rent','Aut ullam praesentium nihil ut et. Et eum quia impedit aut. Repellat enim officia nostrum iste ut eos voluptas.','Rerum nulla voluptates adipisci ut suscipit. Sapiente hic ut non illo qui. Nostrum totam ut dolor neque quia saepe quidem. Atque minima ad qui quo culpa voluptas quis. Eum occaecati eius maiores quae. Voluptas laudantium quis aut. Ad nulla quisquam et laboriosam libero. Inventore voluptatem voluptas adipisci magni et ratione non. Voluptatem voluptates ut iste possimus nam dolores provident. Repellendus dignissimos voluptatum illo ea. Consequatur tenetur dolorem voluptas quo harum ut qui. Qui quos at ea blanditiis ipsum a totam. Consectetur et sed delectus tempora reprehenderit eaque qui. Quo quia quam illum pariatur voluptates delectus quos.','38303 Turcotte Station Apt. 134\nSchummfurt, UT 49094','[\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,9,1,20,1000,945500.00,NULL,1,0,4,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-11',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.179706','-75.838237',NULL,83688,4,4,'BM09AT',NULL),(10,'Family Victorian \"View\" Home','rent','Explicabo a quo facilis. Quia neque cupiditate accusamus perspiciatis explicabo magni quia incidunt. Et officiis doloribus aut itaque deserunt sit. Eum quo nisi et ex eum et.','Quia at rerum architecto minus provident magni sed dolorem. Et molestiae nihil porro. Deserunt quo veritatis sit suscipit molestiae aspernatur alias quasi. Reiciendis aperiam et saepe dolores. Ut est quae non quo. Consectetur praesentium iste voluptate sit. Voluptatem inventore officiis tempore sit magni eaque voluptatibus. Officiis quia pariatur et voluptate itaque rerum dolorem. Corrupti ad quis quo omnis. Enim eligendi sed cupiditate eius qui quam et. Enim voluptas est voluptatibus rerum in.','95072 Weimann Viaduct Apt. 777\nRetafurt, NC 34547','[\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,4,9,41,470,934700.00,NULL,1,0,6,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-22',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.200083','-75.264857',NULL,94708,6,6,'Z5LF5D',NULL),(11,'Osaka Heights Apartment','sale','Debitis sunt dolor quisquam quisquam ut illo. Dolor laboriosam vel reprehenderit earum quo. Expedita et et voluptatem placeat eum minus. Eos dolor vel molestias quisquam provident sed officiis. Expedita tempora sit iste officia quas laudantium.','Consequatur autem voluptate quia qui mollitia qui dolor quia. Unde officia iusto dolorum laborum omnis est. Aut repellat rem vero enim delectus non nisi. Voluptas minus aut dolorem qui quo corrupti qui tempore. Recusandae nostrum blanditiis harum aperiam. Ea saepe rerum ullam in neque quo. Suscipit et mollitia harum quasi. Reprehenderit voluptas aut vel eos ut omnis. Incidunt dicta a sed suscipit. Molestiae voluptas dolor nisi aut harum quasi. Qui libero iusto voluptatibus delectus explicabo. Velit est dolore velit explicabo dolorem culpa.','81571 Hills Court\nWest Felicita, NM 62313','[\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,7,7,26,970,832800.00,NULL,1,0,3,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-12',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.278064','-75.669662',NULL,85431,3,3,'PW4XAZ',NULL),(12,'Private Estate Magnificent Views','sale','Pariatur quo fugiat distinctio commodi. Et dolorem sit voluptatem non dolores. Culpa deserunt et vel. Dolorem corporis a vel doloremque et aut.','Facere inventore ut quas sed in dolore qui. Perferendis optio et quo cupiditate. Quaerat consequuntur vitae porro quia aut eveniet eligendi. Non dolor laborum in accusantium sed id provident. Rem natus et aut. Totam delectus reiciendis nobis amet ea nihil numquam. Natus sit harum repellat magni odio.','28360 Hintz Alley\nPort Tara, VA 53063','[\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,2,7,42,170,137400.00,NULL,1,0,6,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-17',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.004875','-75.433574',NULL,40002,6,6,'PXYRUJ',NULL),(13,'Thompson Road House for rent','rent','Commodi rem recusandae dolores voluptatem assumenda officiis tenetur. Repudiandae et ut accusantium voluptas sunt voluptas dolor.','Fugiat laudantium consectetur quod non sit expedita. Tempora qui similique aliquid ducimus hic dolore autem. Repellat dolorem beatae quia in. Autem odio aliquam tempora autem rerum dignissimos. Quia nisi quasi tenetur repellat qui voluptatibus molestiae recusandae. Necessitatibus impedit eos neque repudiandae modi officiis. Corrupti saepe necessitatibus totam excepturi iste expedita. Quod cupiditate est qui vel omnis consequatur. Omnis necessitatibus eveniet quam ut corporis at eos.','19158 Schowalter Grove Suite 725\nNew Brooks, CO 12664-1982','[\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,5,6,68,620,758400.00,NULL,1,0,2,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-14',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.870059','-76.480925',NULL,19214,2,2,'DOGVBZ',NULL),(14,'Brand New 1 Bedroom Apartment In First Class Location','sale','Ab magni aut excepturi perspiciatis dignissimos vel. Numquam velit saepe ipsa ut. Dolorem consequatur accusamus a vel id cumque quidem. Et nobis aut vel doloribus sed.','Quia sit recusandae est pariatur. Eveniet nemo facilis distinctio maxime eligendi itaque nulla amet. Qui facere sunt deleniti neque animi odit dicta id. Voluptatem minima maxime et dolores. Et id odit perferendis ut quia. Ipsum possimus blanditiis officiis. Dolorem ea eaque voluptas nisi neque. Asperiores est qui enim aut ipsum minima et. Eos architecto asperiores exercitationem sunt dolorem voluptate voluptatem. Quas quibusdam ab iste non sed numquam harum. Quis ipsa veniam sed ex cum modi. Impedit ut et architecto autem unde voluptatem aut. Alias eveniet quibusdam qui.','67667 Schumm Highway\nLake Carlimouth, FL 70673','[\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,8,3,44,600,30200.00,NULL,1,0,2,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-12',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.738048','-75.069922',NULL,13762,2,2,'AJWARX',NULL),(15,'Elegant family home presents premium modern living','sale','Iusto ut eligendi sed aut repudiandae et. Beatae velit dicta nesciunt officiis odit molestiae vel. Magnam perferendis nihil minus similique enim neque.','Autem et repellendus ullam explicabo in. Doloribus nihil neque ullam. Quasi vitae molestiae illo adipisci. Molestias itaque optio accusamus dolorum eveniet et. Libero itaque distinctio aut distinctio numquam animi. Voluptas blanditiis voluptas et ex dolores enim voluptatem. Qui iusto praesentium reiciendis quibusdam. Quas ut et aperiam voluptatem qui quia. Quia ipsum et enim totam expedita et.','7604 Altenwerth Via Suite 279\nLake Lornaview, ME 04868-3726','[\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,8,7,5,210,78000.00,NULL,0,0,6,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-19',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.628395','-76.054943',NULL,40274,6,6,'RIAMSH',NULL),(16,'Luxury Apartments in Singapore for Sale','rent','Beatae ea delectus sunt corporis harum qui nisi. Est autem quam consequatur et nihil rerum et mollitia. Explicabo non maxime autem minus repellat sapiente. Eos quos error ex at veniam. Aut dicta cum rerum corporis eaque veniam.','Animi repudiandae ab facere incidunt. Aut vitae minima mollitia consequuntur inventore blanditiis tempora. Qui aut sint adipisci excepturi. Dolor enim cupiditate at id ratione rerum. Consectetur dolor placeat ut vel et soluta quam. At vel animi sapiente adipisci. Laudantium qui magnam odio doloribus. Voluptas dolorem inventore nemo qui sint voluptates impedit.','63436 Koss Avenue Suite 463\nSchulistfurt, OK 85333','[\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,8,5,71,40,147500.00,NULL,0,0,1,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-04',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.084092','-75.860821',NULL,39115,1,1,'YMTJCK',NULL),(17,'5 room luxury penthouse for sale in Kuala Lumpur','sale','Ullam culpa laboriosam dolorem aut alias corrupti. Corporis adipisci molestiae fugit incidunt odio consequatur. Nisi sed veritatis ullam sint fugiat eum.','Error excepturi rerum porro nobis eveniet consectetur. Cum aut quia consequatur qui rem ut. Nisi architecto autem quia dolor distinctio. Quidem assumenda eveniet reprehenderit rerum eos consectetur fugiat. Deleniti qui beatae voluptate consequatur optio recusandae. Ipsam iusto voluptatem animi dolores et. Harum sed nulla maiores nulla illo eius eaque. Voluptatum ad est et omnis vitae corporis dolor aspernatur. Mollitia repellat cum aut facilis quia possimus. Et ipsa et dolores cupiditate omnis molestiae qui. Totam eos in dolor ut vero maxime. Deserunt et nulla deserunt quam voluptas.','9378 Kylie Brook Suite 738\nRosenbaumbury, TN 14461','[\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,5,9,27,700,365900.00,NULL,1,0,6,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-26',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.309831','-76.010667',NULL,91008,6,6,'F0KLYO',NULL),(18,'2 Floor house in Compound Pejaten Barat Kemang','rent','Nobis est magnam nam sunt. Est nesciunt quia minus earum corporis exercitationem et. Ut ut qui voluptas error. Non molestiae unde voluptates soluta quia repellat reiciendis.','Incidunt est sequi nostrum praesentium culpa sint vero. Eum pariatur omnis non voluptatem. Saepe minima delectus nesciunt quos qui odio qui. Est blanditiis qui maiores et ut. Vel fugiat labore saepe. Natus maxime iusto veritatis commodi fuga. Doloremque dignissimos eum voluptas repellat magnam.','4942 Andreanne Mill\nClaireside, CT 01698','[\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,9,1,14,780,753400.00,NULL,0,0,5,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-27',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.109149','-75.201979',NULL,54103,5,5,'VFBVBZ',NULL),(19,'Apartment Muiderstraatweg in Diemen','rent','Repudiandae praesentium totam eum optio accusamus eos voluptatem. Delectus in et optio dolores. Earum quam saepe et soluta autem sit. Eum natus quia eligendi porro consequatur odio. Laboriosam nam aut aut fugit eius dignissimos.','Et sunt aspernatur eveniet exercitationem harum mollitia pariatur. Aut sint rerum distinctio. Aut voluptas ea id ea fugiat exercitationem id. Ipsa consequuntur ea quod ut cumque excepturi. Qui expedita commodi eum hic. Tempore distinctio itaque odit magnam et. Quo vel nihil sed qui commodi. Quo aut mollitia corporis maxime deserunt. Et eos suscipit et aut. Esse doloribus explicabo sit voluptas labore. Temporibus sint quo et dicta quaerat omnis quis. Soluta cumque sunt unde odio pariatur debitis sapiente.','2440 April Harbors Suite 481\nHesterfort, DE 12583-5130','[\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,9,1,17,230,238900.00,NULL,1,0,2,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-15',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.411075','-76.021702',NULL,73655,2,2,'B0AQIS',NULL),(20,'Nice Apartment for rent in Berlin','rent','Sequi veritatis ea unde repellat necessitatibus eaque. Ut eos cumque nostrum provident rerum necessitatibus. Incidunt velit eos sapiente praesentium quam. Non repellendus dolor amet et nemo.','Tenetur provident sapiente deleniti libero sed reprehenderit. Voluptates aut non non est laborum. Quia voluptatibus hic iusto qui et praesentium. Dolor eos quaerat ratione. Ut magni enim laborum error. Voluptas optio dolore repellat aut ut. Iste quisquam tenetur quia quae ad. Unde omnis nostrum perferendis consequatur id. In saepe facere laboriosam odit nihil sequi rerum. Beatae quos ea dolores in et et qui. Accusamus quia illum dolores qui.','79755 Lemke Squares\nEast Eleanora, ME 55496-9505','[\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,10,6,42,540,872700.00,NULL,0,0,1,'month','renting',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-20',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.003912','-75.735493',NULL,4029,1,1,'X5MGFC',NULL),(21,'Pumpkin Key - Private Island','rent','Est quos eum temporibus omnis corporis. Sit incidunt nemo architecto saepe. Qui ipsum a qui incidunt sit sed et praesentium. Tempore aut et in quas necessitatibus facere.','Sit magni debitis rerum aut. Ut asperiores omnis qui enim quas neque hic. Cumque dolorem ducimus officia voluptas temporibus voluptas maxime. Praesentium laudantium modi reiciendis et quisquam itaque ut. Et repudiandae facere non quia nihil non rerum. Non quia consequuntur reiciendis ut vel. Suscipit et sapiente ipsum optio sint voluptatum quasi ipsa. Est vel ducimus molestias deleniti repudiandae necessitatibus. Non inventore voluptas omnis ullam deserunt explicabo voluptatibus. Sint voluptatum quis architecto non quam.','9165 Clifford Crossing Apt. 274\nNew Mckenzie, MI 06652-6630','[\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,5,9,3,1000,428900.00,NULL,1,0,3,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-02',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.815576','-76.03886',NULL,27996,3,3,'3U70SV',NULL),(22,'Maplewood Estates','rent','Cum tempora aliquam ad dicta nulla sint consequatur. Laboriosam perspiciatis est perferendis quo quis. Laboriosam consequatur odit nisi eveniet repellat sed natus.','Labore voluptatem labore eveniet accusantium cumque debitis. Corrupti omnis laudantium et sunt. Modi voluptatem ut repellat hic incidunt nobis. Nesciunt sint aspernatur quidem voluptatem sit. Quis est est assumenda id voluptate quis est. Ut inventore asperiores et et libero ex. In aliquid perferendis aliquam rerum nulla quisquam. Laudantium illum ad perferendis consequuntur reprehenderit. Repudiandae consequatur quisquam molestiae ut. Sed ut aut labore qui. Vel qui atque facere numquam id.','39520 Golda Ridges\nRueckertown, DE 27283','[\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,6,1,36,110,854700.00,NULL,0,0,4,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-08',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.726312','-75.023207',NULL,61615,4,4,'8WKMQ3',NULL),(23,'Pine Ridge Manor','sale','Eum voluptas cupiditate laboriosam. Nulla molestiae molestiae quia voluptatem vel amet. Laudantium in quo soluta quis asperiores est nostrum. Quisquam nihil ut et nemo est.','Similique occaecati corrupti similique vitae quis nihil. Harum hic aut soluta consequuntur cum nostrum in. Voluptas dolorum sit beatae ratione. Dolore illum recusandae sunt velit dolor. Eum autem atque voluptatem ipsa nesciunt ea nam alias. Enim qui rem odio. Enim aliquam sunt in ipsa esse. In cumque nesciunt non dolores reiciendis at cumque. Eligendi eius quasi et quis nihil harum deserunt eligendi. Ipsum optio necessitatibus voluptas modi modi.','5068 Darryl Green Apt. 599\nPort Anaburgh, OH 62099','[\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',12,9,2,5,180,115100.00,NULL,0,0,1,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-18',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.427883','-76.475446',NULL,2450,1,1,'AQWSLQ',NULL),(24,'Oak Hill Residences','sale','Quis pariatur voluptas culpa dolor. Qui modi a qui et quia enim quia. Maxime sint non rerum et libero expedita est.','Quia libero quod accusamus aut corporis dolores. Blanditiis voluptas quo corporis exercitationem. Aliquid repellat soluta quia et ut et. Asperiores non voluptas architecto iure omnis et repellendus. Vitae voluptatum corrupti dicta corporis consequatur excepturi. Velit atque tenetur quasi accusamus laudantium voluptas. Alias ut asperiores nobis eius qui reiciendis amet.','681 Elisha Station\nSouth Carson, SC 06898-6643','[\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,9,4,88,720,244800.00,NULL,0,0,3,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-28',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.701204','-75.972131',NULL,83269,3,3,'DQSZP8',NULL),(25,'Sunnybrook Villas','sale','Excepturi perferendis sed aliquam ut incidunt minus quo. Id iusto consequatur autem est laborum neque ut. Quia vitae repudiandae accusantium et consequuntur.','Voluptas architecto quis ipsam velit possimus ullam. Hic rerum corporis odit sint tempora temporibus non. Molestiae ut fugit natus. Fugiat ad facilis voluptatibus ea excepturi. Eligendi aliquid quasi quia quos earum accusantium in. Praesentium esse atque hic cumque cupiditate quia officiis. Quod architecto alias nam amet.','1903 Kulas Avenue Suite 458\nKayceemouth, RI 30301-8724','[\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,9,10,52,550,712100.00,NULL,1,0,2,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-04',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.043762','-76.37391',NULL,65092,2,2,'5CASTQ',NULL),(26,'Riverstone Condominiums','sale','Exercitationem quos et exercitationem voluptatem blanditiis placeat. Quisquam ut omnis est cupiditate cumque sed. Qui omnis tempora maiores temporibus non vitae sed. Hic nihil libero qui in accusamus a.','Et laudantium aut dignissimos esse quam. Expedita hic accusantium quam et odio. Fugiat vero exercitationem fugiat qui ut rem sit eius. Ut perferendis soluta quam sed illo aut. Sed laboriosam qui omnis provident quos. Qui vero qui asperiores ab quasi. Aut et laudantium sapiente laboriosam. Consequuntur cupiditate ut temporibus eligendi neque doloribus. Neque rerum voluptates non impedit voluptatem quae neque. Omnis id aliquam mollitia eveniet consequatur. Et dicta quaerat optio accusantium et atque eveniet. Dolores et voluptate repellendus impedit vel. Deleniti incidunt laboriosam mollitia officia dicta eum molestiae.','75070 Mohr Motorway\nDenesikfurt, OR 98878','[\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,1,9,83,840,348600.00,NULL,1,0,1,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-04',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.884324','-74.925074',NULL,35338,1,1,'PKVOFX',NULL),(27,'Cedar Park Apartments','rent','Nulla eum suscipit asperiores unde et dolor autem quo. Aut explicabo blanditiis ratione sunt consequatur tenetur ut molestiae. Beatae natus quasi expedita at rerum numquam assumenda deleniti.','Ex repellendus vel enim cupiditate velit inventore eum. Aut illum ratione maxime ut nesciunt. Nisi quis et incidunt ex enim. Dolorem ut rem voluptas possimus mollitia. Qui nisi maiores rerum ut. Assumenda velit ipsum excepturi est sequi. Qui et est necessitatibus voluptatem doloremque. In quam doloribus doloremque eum voluptate nobis esse. Id mollitia vel laborum accusamus. Et aliquid iure vitae voluptates saepe ducimus. Et est ex sit. Sed ipsam eos dicta iste possimus. Ipsa saepe tenetur quisquam dolorum temporibus. Rerum optio illum dicta.','47459 Lubowitz Flat\nHoustonbury, RI 73425-6824','[\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,4,3,20,810,205200.00,NULL,0,0,6,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-08',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.771658','-76.748104',NULL,40602,6,6,'LZJLCQ',NULL),(28,'Lakeside Retreat','sale','Est facilis excepturi ipsam. Non accusantium animi totam explicabo cupiditate excepturi non eos. Eius veritatis sunt placeat omnis qui voluptatibus. Vel ipsa assumenda sapiente ab eos est error.','Consequatur et repudiandae sint possimus molestiae ea sit. Quos amet tempora recusandae expedita quibusdam voluptates. Laborum reiciendis similique at et rerum similique praesentium ducimus. Voluptates et dolorem reprehenderit voluptas. Fugit voluptas qui sunt quod. Numquam sit vitae neque omnis nulla et eum. Et pariatur dolorem quis eum commodi dolorem animi. Voluptas molestiae quam voluptatibus beatae.','16444 Larkin Dam Apt. 532\nNew Damarisfurt, IA 56438','[\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,9,6,77,960,649200.00,NULL,0,0,3,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-22',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.484085','-76.539769',NULL,14500,3,3,'OFANRO',NULL),(29,'Willow Creek Homes','sale','Est nam atque eos magnam quo. Qui labore rerum aut placeat necessitatibus esse. Quis quaerat quae et sed magni.','Odio modi aut non eaque veniam. Qui minus laborum consequatur quo asperiores quae ea. Enim sunt asperiores veritatis praesentium quasi animi. Quasi sequi hic beatae. Iusto odit doloremque sit unde. Fuga vel commodi fuga omnis aut. Modi libero aut molestiae temporibus nam possimus et ratione. Ea nesciunt at sit ex ducimus. Blanditiis ut facilis labore accusantium consequatur. Asperiores consequatur dignissimos quia labore. Quis eius rerum voluptatem non. Ipsam adipisci blanditiis animi laudantium. Architecto aut nisi aut atque. Repudiandae ut cupiditate autem aliquid et. Quis blanditiis magni esse aut dolores nemo porro.','3432 Donnelly Spurs Suite 830\nMuellerville, MN 92815-4973','[\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,8,2,17,360,848800.00,NULL,1,0,5,'month','selling',2,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-20',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.88447','-76.215255',NULL,88245,5,5,'MU6POK',NULL),(30,'Grandview Heights','sale','Odio ut hic aut in ea quas. Rerum et et hic ipsum voluptas architecto. Tempora fugit sint officia soluta eaque sed adipisci.','Ad eaque consequatur reiciendis saepe et dolorem. Qui est aliquam corporis dolorem commodi neque. Quam doloribus non ducimus asperiores architecto minus facilis eaque. Nemo ipsam sequi non molestiae. Occaecati in fuga excepturi debitis quia. Aliquid iste porro molestiae maiores iusto odio. Quis aperiam nisi quo dolore. Cumque at et vitae. Dolor repudiandae cumque quibusdam quam excepturi quasi illum.','976 Kshlerin Inlet\nDorianport, IN 54003-3357','[\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,8,5,6,110,794100.00,NULL,1,0,3,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-02',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.523395','-74.916852',NULL,44372,3,3,'Y7DNYE',NULL),(31,'Forest Glen Cottages','sale','Aut eos velit nesciunt reprehenderit. Dolores enim necessitatibus omnis sed. Rem accusamus non officia ducimus repudiandae ut vel. Dolor libero amet ea et voluptatum sapiente.','Laboriosam velit repellendus laborum voluptatem et. Cum aliquam et qui libero. Velit numquam quidem sunt nostrum. Repudiandae dolorem quod unde dignissimos. Blanditiis quia dolor consequuntur nostrum vel temporibus quaerat. Iusto accusamus praesentium perspiciatis eaque ut labore soluta et. Placeat a veritatis accusantium nulla. Quidem in illo totam natus at molestiae sed possimus. Excepturi dolore explicabo amet optio. At distinctio provident autem vero tenetur non quaerat. Nostrum labore consequatur quibusdam alias a asperiores provident laborum. Exercitationem occaecati nemo vel architecto est accusantium. Ipsam a voluptates consectetur ipsam repellendus. Magnam rerum ea nulla autem necessitatibus sed dolor est.','846 Larkin Run Apt. 646\nLake Franciscoton, FL 24227-4364','[\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,2,5,91,170,526300.00,NULL,1,0,6,'month','selling',2,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-08-18',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.970547','-75.64131',NULL,38431,6,6,'AUIGY3',NULL),(32,'Harborview Towers','rent','Veritatis ut corrupti necessitatibus natus asperiores impedit. Maxime et vel dolorum aspernatur facilis. Quis porro ad sed architecto et sed sit.','Non quas debitis excepturi nulla. Est iure ut possimus inventore molestiae quisquam quia sed. Aspernatur voluptatem aut rerum quibusdam molestiae. In ab earum labore molestias. Quibusdam voluptate minima ut enim accusamus aut aut. Debitis aut deleniti asperiores ut minima aliquam impedit. Maiores sint quis quis autem ut at. Ex iusto sed voluptatem necessitatibus. Perspiciatis veniam voluptatem magni. Vitae quia illum adipisci exercitationem et tenetur est et. Quo et suscipit cumque quod quisquam deleniti. Neque magnam suscipit rem quaerat. Ipsum voluptatem itaque eligendi animi aliquid.','7887 Yundt Plains\nTerrymouth, AL 85273','[\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,9,2,49,360,21600.00,NULL,0,0,5,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-01',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.957329','-75.362313',NULL,92801,5,5,'TDKOAL',NULL),(33,'Meadowlands Estates','rent','Exercitationem nisi provident reprehenderit et. Et magnam et odit facilis consequuntur facilis. Occaecati laboriosam sed id est aliquid id ab et.','Voluptatem et magni sint consequatur atque non atque quaerat. Sapiente debitis reiciendis soluta similique eligendi aliquid quia. Nobis ex nihil sed sit. Libero sunt neque laboriosam amet assumenda perferendis eum. Blanditiis molestiae ex aut nulla quia ducimus omnis. Qui ut fuga dolorem esse. Voluptate quas saepe earum nesciunt cumque qui ratione.','796 Merle Summit Apt. 419\nMarjorieland, AL 01499','[\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',12,7,1,74,780,725400.00,NULL,0,0,3,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-31',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.504039','-76.233683',NULL,79054,3,3,'9NE2ZM',NULL),(34,'Highland Meadows','rent','Adipisci accusantium consequatur ipsum ducimus. Iure ut sapiente corrupti ut ducimus. Enim aut omnis magni distinctio enim qui. Veritatis consequuntur optio nobis cum animi.','Eligendi enim assumenda dolor dolorem. Et quo aut fuga eius. Cumque omnis est ipsum vel autem nihil perspiciatis. Id voluptatem possimus nemo sequi ratione autem beatae quis. Quaerat dolores quis consequuntur dolore laudantium facere cum neque. Nulla iste quisquam impedit. Facilis voluptatibus assumenda neque officiis qui. Quia aut expedita veniam quisquam qui ut tenetur. Qui asperiores assumenda natus omnis. Molestiae dolore voluptatem consequuntur tenetur sequi.','45877 Junius Hills\nNew Ravenmouth, OH 02984-5351','[\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',18,5,2,17,130,264600.00,NULL,1,0,3,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-26',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.803375','-76.22889',NULL,64001,3,3,'UP6RYW',NULL),(35,'Brookfield Gardens','rent','Aperiam saepe natus quidem tempora sint nesciunt. Quia eligendi non aut nostrum laudantium. Libero ipsam veritatis ullam odio. Blanditiis magnam minima molestiae itaque et aspernatur.','Nisi recusandae et fuga quae totam eligendi voluptatem. Aut earum qui libero voluptatem. Id libero assumenda dolore magni. Veritatis quo itaque explicabo ad. Architecto vel consectetur nihil. Minima et earum quam dolorem sint eos dignissimos. Sunt odio delectus quae aut eaque non possimus nam. Laudantium harum ipsa sapiente et facere quo nam. Consequatur qui voluptas est earum adipisci nemo quo. Est quam at iusto non architecto et. Sit laboriosam repellat ullam vero officiis.','941 Richmond Hill\nNew Sophiashire, AK 32930','[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,2,8,74,470,280700.00,NULL,0,0,4,'month','renting',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-28',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.147536','-75.870528',NULL,1467,4,4,'PYY8CF',NULL),(36,'Silverwood Villas','rent','Facere modi natus nemo qui. Rerum alias velit officiis debitis. Neque est laudantium officia molestias ea distinctio facere. Totam ut non qui autem.','Tenetur rerum suscipit quo. Impedit quos in ducimus animi. Sequi aut numquam quaerat magnam vitae et est. Sequi in atque aperiam ducimus optio nostrum dolore. Consectetur eos asperiores quis ex commodi maiores. Libero illo ut culpa qui nisi eius quod. Dolor id vitae voluptate qui dolores. Laborum non vero nulla animi ad sed asperiores aut. Aperiam est soluta rem. Eos qui dolorem doloribus modi provident nobis. Voluptas dolores optio iusto deleniti. Ut eos provident nostrum velit autem et ratione nemo. Eum quos velit fugiat autem nisi voluptatem quos aut. Blanditiis maxime voluptate earum optio aut possimus accusamus.','435 Rebeca Vista\nSpencerville, MI 86444','[\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,1,8,56,470,166600.00,NULL,1,0,1,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-23',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.895187','-75.963358',NULL,94721,1,1,'WAS8R6',NULL),(37,'Evergreen Terrace','rent','Sed ipsum est et sunt tempora voluptas. Vitae sint natus quidem voluptas sapiente sit quas. Aut eaque iusto nihil minima voluptatem. Ducimus qui et reiciendis velit.','Et possimus libero corrupti natus quis. Corrupti asperiores pariatur ex consectetur illum quas. Et qui quo aut. Dolorem aut similique esse quo voluptas qui quod. Eos mollitia nihil sit excepturi incidunt dolorem. A qui ipsam quasi ut recusandae et ea suscipit. Quo deleniti aut est non labore ut perferendis.','744 Kian View Suite 643\nCronaland, MS 59743-7112','[\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,6,9,27,410,270200.00,NULL,1,0,1,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-13',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.050924','-76.556206',NULL,51721,1,1,'GFAFAO',NULL),(38,'Golden Gate Residences','rent','Veniam dicta aspernatur consequatur nihil ratione. Porro qui dignissimos occaecati veniam eos. Cupiditate inventore sequi quos iure nostrum. Perspiciatis distinctio explicabo quidem incidunt voluptas.','Placeat omnis architecto voluptate autem sit harum tempore. Quo consequuntur nihil ut fugiat. Et maiores distinctio et excepturi aliquid rem hic eveniet. Cupiditate mollitia quibusdam quis quidem aut tempore provident. Est aut dolor dignissimos. Aut et ut deleniti beatae. Et omnis optio repudiandae ut dolorem. Qui commodi praesentium quidem maxime omnis doloribus recusandae. Nulla reprehenderit minus sed ipsa. Aliquam repellendus excepturi maiores tenetur exercitationem ullam sint ipsa. Dolor sint ut odio facere quo. Voluptatem occaecati soluta voluptas vel. Explicabo rerum sed ea. Quaerat debitis a culpa perferendis et optio qui.','339 Gottlieb Pass\nWolffurt, TN 60556-1849','[\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',18,8,2,9,840,644000.00,NULL,0,0,6,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-03',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.587355','-74.816506',NULL,91362,6,6,'CE2OIW',NULL),(39,'Spring Blossom Park','rent','Odio molestias sint eveniet ex provident autem quia reiciendis. Amet facilis sit sed veritatis perferendis voluptas. Dolores minima ut culpa culpa magnam laborum. Qui unde qui aspernatur hic qui.','Sed qui consectetur sed et officia hic aspernatur. Voluptatem inventore velit expedita sint. Expedita magni illo et nisi amet alias. Hic vitae amet iure nisi eos dolorem dolores. Eius officiis quasi ex numquam. Doloremque dolor est in ducimus. Delectus sed quam dolor et. Omnis saepe accusamus cum dolorem.','507 Wintheiser Vista\nPort Beaulah, MO 64447','[\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,9,4,20,990,289000.00,NULL,1,0,1,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-04',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.074754','-75.869449',NULL,54518,1,1,'FY6XW0',NULL),(40,'Horizon Pointe','rent','Quas deserunt velit incidunt ut enim rem. Et suscipit atque vero voluptatem perferendis.','Vel officia error dolores minima in sit facilis perspiciatis. Vel laborum quo dolorem ullam. Laudantium nam et minus at velit provident id. Eum molestiae cum error. Voluptate beatae tempore est maiores quaerat in est et. Voluptatem voluptatum fuga aut aut ut. Incidunt iusto qui rerum voluptatum. Sapiente ipsa voluptas non recusandae reprehenderit et eos. Non molestias et non et. Corrupti facilis porro rerum vero amet et. Dolores perspiciatis provident et adipisci sapiente autem pariatur. Illo necessitatibus quia velit minima ut autem. Accusantium rerum perferendis eius ratione eum consequatur.','99359 Johan Villages Suite 632\nPort Tyreefort, CA 35438','[\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,9,9,91,690,306200.00,NULL,0,0,4,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-06',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.775875','-75.440755',NULL,63900,4,4,'UOW3CZ',NULL),(41,'Whispering Pines Lodge','rent','In et dolores saepe nihil facere eum. Quod autem odit sit inventore in consequatur. Eveniet amet iusto cum odit ut quia. Voluptatem sapiente quasi commodi sint.','Dolore molestiae pariatur voluptatem odit maiores ea maxime. Ipsum ex expedita rem. Velit perspiciatis enim illum blanditiis. Blanditiis doloribus dolorem autem reiciendis dolores aliquid est. Nam dolores molestiae est et veritatis sit. Saepe et accusantium sunt non. Veniam et quia fugiat eius. Molestias fugiat praesentium expedita qui. Error eligendi accusamus dolor maiores doloribus aperiam nobis quia.','3288 Sawayn Mills\nEast Allison, MA 55972','[\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,8,8,18,10,688400.00,NULL,1,0,2,'month','renting',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-08-23',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.759955','-75.182988',NULL,36447,2,2,'LKCV35',NULL),(42,'Sunset Ridge','rent','Sit consequatur et quis odit molestiae. Rerum voluptate quibusdam qui pariatur voluptatum doloremque dolorem. Magnam repellat ipsa fugit nulla architecto exercitationem.','Fugiat eligendi voluptate et unde ea. Accusantium cupiditate voluptatibus modi eum cupiditate quia ad. Perspiciatis et debitis amet et nobis. Aliquam quibusdam dolore rerum facere enim dignissimos. Non architecto nisi sunt non amet nulla cupiditate recusandae. Dolores eos molestiae nisi molestias odit. Dolores dolores architecto quam qui ad culpa. Repellendus ad esse quaerat reiciendis ut ad aut dolorum.','4143 Parker Trafficway\nAllymouth, OH 04192-1959','[\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,3,5,92,890,763900.00,NULL,1,0,5,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-08',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.533959','-76.100599',NULL,54632,5,5,'F8PDEB',NULL),(43,'Timberline Estates','rent','Ut odit laboriosam nemo reprehenderit ad aliquid totam. Inventore molestiae fuga consequatur. Rerum qui aut quia voluptates.','Ullam eligendi aut qui voluptatem quo quia. Assumenda laudantium quia beatae nostrum nisi. Delectus non magni et quisquam. Eveniet repellendus aut consequuntur deleniti et. Illo amet quis corporis eligendi cupiditate blanditiis. Ratione sunt quia voluptatibus corrupti. Ut et quaerat at tenetur qui ut. Voluptatem dolor mollitia laboriosam non porro quaerat voluptatem placeat. Qui quia cupiditate quod ea voluptate. Explicabo iure quo iure. Earum voluptatem voluptatibus perferendis labore qui.','59380 George Villages\nIdellaland, NY 66842','[\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,10,7,10,80,615100.00,NULL,0,0,2,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-11',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.932091','-76.203119',NULL,79708,2,2,'ZNNYGQ',NULL),(44,'Crystal Lake Condos','sale','Eum possimus ducimus nostrum esse voluptates iusto praesentium inventore. Corrupti id omnis ratione placeat aspernatur. Maxime voluptatem ut est et delectus quo perferendis. Sunt non ipsa voluptate ad quae unde exercitationem.','Id suscipit omnis provident aut laudantium sed. Perspiciatis at non optio. Quas dolores fugiat voluptate perferendis ut fugit minima. Nulla fugit aspernatur ut sunt. Veniam doloremque quod cupiditate assumenda laboriosam et magnam. Nihil libero similique error. Voluptatibus eius culpa perspiciatis dolorem. Quia earum consectetur incidunt aspernatur nam eaque. Ipsam assumenda minus magni voluptatem. Magnam magni facere minima quia. Reprehenderit qui porro tempora est architecto et laudantium consequatur. Modi aut at et. Itaque deleniti non odit voluptas optio unde temporibus.','5810 Lebsack Forest Apt. 659\nLindsaystad, RI 96724-6986','[\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,7,9,62,860,643100.00,NULL,1,0,4,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-12',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.091991','-76.07233',NULL,8066,4,4,'CIN318',NULL),(45,'Briarwood Apartments','rent','Earum eaque facilis eum adipisci quia quisquam non recusandae. Repellat quia culpa quidem delectus voluptatum. Consequatur possimus sapiente incidunt ipsa fugiat consequatur est ducimus.','Error sed corporis impedit consectetur. Tempora delectus et dolorem in. Expedita enim molestiae ea asperiores vero sed optio et. Odio vero quibusdam labore distinctio consequatur repudiandae adipisci. Nihil quia eius voluptatum libero. Ea esse harum iste ipsam est. Odio unde rerum qui dolor.','222 Loren Spur\nPriceville, NC 12218-4553','[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,5,5,92,60,554200.00,NULL,1,0,4,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-16',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.439712','-75.516902',NULL,65744,4,4,'FSXTME',NULL),(46,'Summit View','rent','Non blanditiis at totam adipisci ipsa rem porro. Ab dolorem incidunt qui sed excepturi alias vel. Dolore soluta in quisquam sunt nemo et. Incidunt rerum nihil corporis rem.','Fugiat sint ipsam officia. Ea quisquam in soluta ad. Alias facere quia nobis voluptatibus. Consequatur reprehenderit delectus a alias. Illum consequuntur omnis ipsum. Praesentium aut assumenda unde explicabo possimus. Esse est sunt odio quia et voluptatem adipisci. Ut dicta nam adipisci ipsam exercitationem modi. Ut omnis quia illum necessitatibus aut ullam porro. Dolores voluptas cupiditate voluptatibus aut. Molestiae quos omnis voluptatem nulla commodi.','390 Gay Island Apt. 243\nNorth Camdenborough, LA 10473','[\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,9,9,90,230,694100.00,NULL,1,0,1,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-25',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.230256','-75.784181',NULL,34383,1,1,'C9OXN8',NULL),(47,'Elmwood Park','rent','Nobis vero et architecto. Omnis ullam accusantium quod et ut accusantium et delectus. Tempora distinctio ipsa perspiciatis quo.','Architecto magni et inventore sunt qui nobis eaque. Molestiae quaerat nulla molestiae dolorem. Aut omnis deserunt mollitia ratione quam maiores placeat. Cum eligendi quia voluptas aut. Provident cum error iste officia vitae reiciendis. Maxime in maiores asperiores aliquam impedit totam. Cupiditate voluptate ad incidunt numquam. Nesciunt vero ut distinctio inventore sit ipsum. Ut ducimus ut sint nihil possimus maiores minima. Quasi omnis quo voluptatum ipsam nesciunt voluptatibus. Consequuntur fugit commodi deserunt dicta non unde et temporibus. Accusantium voluptatibus hic aut sunt accusantium reprehenderit.','43542 Witting Trail\nMortimerside, HI 34410','[\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,5,1,72,260,505100.00,NULL,0,0,6,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-01',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.799572','-75.472207',NULL,37784,6,6,'JL16K9',NULL),(48,'Stonegate Homes','sale','Quis accusamus quo ut nostrum consectetur. Dolorum quaerat quis ut. Sunt vero rerum ut voluptatem nesciunt adipisci dignissimos beatae. Dolores quidem fugit accusantium aperiam possimus a possimus quam. Quia dolores nemo et amet eius.','Et labore voluptatem cumque provident corporis vel unde. Modi doloremque qui quam occaecati amet nihil omnis exercitationem. Sed fugit autem saepe cum ut ut. Quia adipisci laborum aliquid ut ea repudiandae. Natus tempore consequatur explicabo. Culpa porro sequi consequatur ut consequatur. Accusantium ex at omnis est. Nesciunt aliquam quia aut optio dicta porro. Accusantium aut dolores et et.','954 Jammie Falls\nPort Sidney, DE 62952-5430','[\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,5,10,97,460,960800.00,NULL,1,0,1,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-25',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.72392','-75.924045',NULL,60236,1,1,'3QGVMF',NULL),(49,'Rosewood Villas','rent','Aliquid hic exercitationem ducimus veniam accusamus sed nisi. Et rerum tempora repudiandae. Autem sit totam voluptatem aut. Quia et ut qui molestiae et aut non.','Omnis sunt autem cumque accusantium. Ullam repellat hic vero dolore. Dolores id nihil doloribus in assumenda dolores molestiae. Aspernatur molestiae itaque perspiciatis rerum necessitatibus quasi tempora. Quis atque magnam voluptatem. Ut unde minus numquam ipsum labore soluta. Assumenda aut quia earum qui in praesentium aut. Et autem enim et sint ut quibusdam adipisci. Voluptatibus occaecati unde qui. Aut nulla voluptatem distinctio maxime vitae. Nostrum nihil impedit fuga qui et. Iusto atque ut et distinctio sit voluptas.','782 Sonya Hollow Suite 158\nParisianberg, CT 57592','[\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,9,7,55,490,573600.00,NULL,1,0,2,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-16',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.822808','-75.883733',NULL,26598,2,2,'YIRZVS',NULL),(50,'Prairie Meadows','rent','Fugit eos nostrum inventore dolor quia expedita omnis ipsam. Optio cumque pariatur nihil consequatur. Dicta occaecati perspiciatis ratione ad ipsam ad ex. Quidem dolores corrupti eum ut id recusandae officiis.','Quos consequatur maiores natus consequatur a. Suscipit aperiam voluptas deleniti et alias odio natus. Non eligendi qui quos odit. Enim dolorum et provident ab facere molestiae provident deleniti. Modi dolores et velit dolorum ipsam. Rem quasi qui repellendus quo nam. Id quas et quia iusto. Dolor dicta doloribus excepturi esse aut autem nemo. Architecto corporis vero voluptas. Suscipit ea aut alias quo vero. Est consequatur fugiat quo ut. Laudantium iure et animi quisquam fugiat explicabo modi aut. Odit ea nulla aut. Sint eveniet omnis perspiciatis velit eos.','27989 Streich Alley Apt. 891\nLuellachester, MS 56724','[\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,1,3,44,190,596300.00,NULL,1,0,2,'month','renting',2,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-06',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.287305','-76.268753',NULL,41650,2,2,'A7X9NG',NULL),(51,'Hawthorne Heights','rent','Hic quod quis molestiae dolor repellendus ut error. Temporibus ut quisquam voluptates dolores. Neque beatae eligendi id dignissimos consequatur deleniti. Distinctio quisquam fugiat dignissimos aperiam.','Consequatur possimus rem et aut sint quae nihil autem. Sit aut atque et in in dolores. Debitis qui eum ut vitae dolor laudantium reiciendis. Quasi quo sequi consequuntur asperiores qui ut quia. Laborum dolorum sit similique eaque repellat veritatis ipsum. Delectus impedit id rerum optio aut. Iusto reprehenderit adipisci aut dolor qui. Sed quos consequatur qui optio fuga odit. Eum nihil deserunt itaque architecto autem. Dolor aut necessitatibus quibusdam eum autem.','6601 Bashirian Corners\nSouth Andreburgh, IN 23696','[\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,3,3,68,120,87800.00,NULL,1,0,2,'month','renting',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-08-23',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.699664','-75.754097',NULL,33969,2,2,'1IRBJV',NULL),(52,'Sierra Vista','rent','Corporis eum hic laboriosam repellat recusandae non. Perspiciatis soluta quibusdam ratione aut rerum eos. Qui a nam aut perferendis. Sunt nesciunt laudantium sequi nobis occaecati optio.','Aut aut cupiditate labore nihil eveniet voluptatem dolor. Molestiae id porro aliquid quis aperiam. Commodi facere minus ut velit. Ad enim ullam provident vel corrupti. Fuga voluptatem nobis enim qui. Molestiae autem earum sunt beatae. Rem eos mollitia accusamus ab debitis cupiditate.','101 Watsica Vista\nGladysberg, OK 05262','[\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,1,7,70,350,640100.00,NULL,0,0,1,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-25',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.743861','-75.784853',NULL,22586,1,1,'LZUQEH',NULL),(53,'Autumn Leaves','rent','Blanditiis nihil tempore aspernatur aut modi sint. Quidem ut ea voluptatem quod fugiat aut quo. Et unde distinctio non sit pariatur. Ipsa quae veniam rem amet voluptatem dignissimos accusamus.','Odit reprehenderit consequuntur ut hic harum consequatur enim. Libero illum debitis esse doloribus maiores autem aspernatur. Eaque rerum aspernatur atque nemo ad dolorum. Commodi rerum molestiae omnis quos ut consequatur officiis. Architecto sequi eum aspernatur minus voluptas dolores rerum. Mollitia quas harum quos quae repellendus velit harum. Consequatur quia sunt at eaque illo. Voluptates debitis omnis ex. Quae omnis et voluptas. Ut et laboriosam quos natus ipsam. Ex officiis sint et ea explicabo. Expedita culpa velit recusandae sit consectetur id. Tempore odit ut quisquam enim rerum quis.','8014 Rohan Turnpike Suite 345\nDanielafort, WY 63388-5802','[\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',18,10,1,67,650,15100.00,NULL,0,0,4,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-24',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.378075','-76.569654',NULL,5789,4,4,'PV737N',NULL),(54,'Blue Sky Residences','sale','Possimus impedit aut beatae. Dicta dolorum similique in. Earum dolor quis iusto veritatis explicabo in.','Alias voluptates vero et incidunt omnis sed. Ea similique fugiat aperiam nihil eum et molestiae. Officia odit rem quos animi quos nam hic. Nihil modi ducimus nobis est molestias. Facere cumque saepe id omnis. Et optio maiores qui. Ullam distinctio explicabo molestiae eligendi. Veritatis ducimus impedit officiis similique aliquam alias fugiat. Ut sit necessitatibus doloremque officia.','489 Rempel Groves\nNorth Sierra, WY 76167','[\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,10,2,20,920,988500.00,NULL,0,0,6,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-06',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.802804','-74.806516',NULL,36446,6,6,'KZI3NG',NULL),(55,'Pebble Creek','sale','Numquam facere accusantium nobis sapiente. Impedit consequuntur laborum labore aut et ducimus praesentium. Nobis modi atque aut recusandae commodi voluptas.','Et libero nostrum enim laboriosam repellat id. Provident doloribus iure unde aut rerum harum officiis. Facilis id non dolor. Consequatur rerum autem repudiandae unde. Modi enim cum corporis dolor voluptatem vel eos. Ea ea odit non ex quae reprehenderit. Eum quia est sed modi et veritatis. Quam placeat laborum necessitatibus necessitatibus ut ratione et.','2875 Natalia Turnpike Apt. 023\nSouth Garland, NE 98950','[\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,2,5,77,820,673300.00,NULL,1,0,3,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-28',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.552373','-76.18523',NULL,38747,3,3,'C2EFYR',NULL),(56,'Magnolia Manor','sale','Suscipit accusamus minima optio laboriosam. Qui aut facilis dicta voluptatem. Eos fugiat mollitia earum qui corrupti.','Labore non illum corporis hic non aut et. Repudiandae ullam nemo aliquam recusandae. Consequatur commodi omnis harum ratione ex repudiandae. Fugit repellendus repellat esse odit sapiente. Autem rerum qui dolore recusandae unde. Doloremque sint voluptatem consequatur aliquid. Eum illum quasi deleniti fuga quos suscipit. Aperiam aut quia quaerat perferendis. Velit magnam sit quae dolor. Qui et distinctio praesentium nihil nihil laborum magni. Est ea voluptatum veniam nemo distinctio ut. Tempore odio corrupti quis et ipsam placeat. Et harum quas voluptates non voluptatem inventore. Voluptatem omnis necessitatibus quia temporibus et.','1376 Abernathy Estates\nLake Jennifer, SD 97346','[\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',10,8,2,1,210,397500.00,NULL,0,0,3,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-08-13',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.69417','-75.960573',NULL,3870,3,3,'VYRIY5',NULL),(57,'Cherry Blossom Estates','rent','Repudiandae dignissimos ad harum id eum at numquam. Et ut aut nesciunt ipsum corporis ab corporis consequatur. Et molestias ducimus illum tenetur consequatur in.','Est quos quo vero quibusdam. Nulla similique suscipit commodi sit deleniti adipisci dolor. Iusto excepturi aut ipsa ducimus unde nihil consectetur quia. Est architecto et similique eaque ut eaque odio aut. Totam facere aut eum asperiores officiis quia officiis. Reiciendis veritatis vel numquam velit. Nesciunt maxime in quo harum corporis. Voluptatem commodi magnam sunt ea minus sequi doloremque. Mollitia sint ex aspernatur sunt tenetur. Iusto perspiciatis vel suscipit nihil hic mollitia tenetur natus. Et qui iusto consectetur sunt dolorem cumque.','9198 Gaylord Knolls Suite 209\nNorth Antwon, NV 55669-7887','[\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,10,7,87,430,690200.00,NULL,1,0,6,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-29',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','42.977029','-75.986631',NULL,43448,6,6,'VJRDGA',NULL),(58,'Windsor Park','rent','Voluptatem pariatur illum consequatur libero exercitationem. Et ipsa qui praesentium vel. Nesciunt possimus corrupti rerum.','Qui mollitia nam et. Totam vitae rerum ipsa quia quidem. Quis quo qui eligendi blanditiis. Soluta repellat omnis a. Accusantium at quod aut accusamus dolorem sed. Consectetur quia quibusdam fugit nulla repellendus ut dolores. Facilis sapiente iste sed amet sunt a. Magnam voluptatibus rerum quia cum. Quia voluptatem quas aut consequatur quas ipsa sed.','111 Beer Junctions Apt. 168\nEast Dayana, DE 78283-8053','[\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',18,10,3,62,550,328700.00,NULL,0,0,3,'month','renting',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-28',0,1,'2025-11-25 08:37:57','2025-11-25 08:37:57','43.80138','-75.721057',NULL,90509,3,3,'85WPO9',NULL),(59,'Seaside Villas','rent','Sit qui tempore et sed at omnis vitae tempora. Alias excepturi sit quia eos odio. Explicabo aut consequatur repellat nisi. Sit et quo necessitatibus fuga quasi.','Et quo eos qui qui omnis. Commodi velit unde voluptas nam quis. Iste ipsum placeat consectetur nihil accusantium nesciunt. Voluptas exercitationem dolorum commodi id officiis distinctio in assumenda. Necessitatibus illum expedita natus laboriosam. Necessitatibus perferendis autem sint eum non quis. Exercitationem ea nihil quia autem. Velit veniam id laborum architecto est. Iste dolorem eum consequatur incidunt ea perspiciatis. Quas possimus eveniet expedita.','565 Selena Orchard\nHattiemouth, WI 45329-5961','[\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',14,6,7,39,20,921000.00,NULL,0,0,2,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-21',0,1,'2025-11-25 08:37:58','2025-11-25 08:37:58','43.767702','-75.596717',NULL,57536,2,2,'Y4NHII',NULL),(60,'Mountain View Retreat','rent','Aut numquam tempore iure quod. Repudiandae aliquam velit fugit. Libero amet odit sed.','Est nisi iusto sit nihil nobis qui. Et dicta incidunt cumque officia in et labore. Est vero incidunt culpa possimus. Accusantium laborum qui rerum aut et consequatur. Fugiat omnis eaque recusandae et. Beatae minus est quo nesciunt repellendus quos. Expedita quo officia maiores qui aperiam. Et fuga perferendis voluptatibus repudiandae. Ut dolorum consequatur repudiandae. Omnis et quia vel hic repellat. Repellat ut aliquid ut est sapiente eveniet autem. Libero in et adipisci non.','1207 Taylor Route\nNorth Avatown, TN 77954-7589','[\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,10,5,77,150,869700.00,NULL,0,0,6,'month','renting',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-08-14',0,1,'2025-11-25 08:37:58','2025-11-25 08:37:58','42.749212','-74.88484',NULL,64944,6,6,'XYTLW5',NULL),(61,'Amberwood Apartments','rent','Et optio error molestiae quo. Amet impedit quo voluptatum laborum. Id autem ut illum possimus dolorem commodi cumque. Et quidem veniam dolor adipisci dolore dolorem.','Et et illum dolor libero. Dignissimos expedita sed rerum autem laboriosam veniam est. Ea totam ut animi dolor. Eum eum porro vitae mollitia sunt nam quisquam. Deserunt totam sint expedita quas mollitia. Quia error sunt aspernatur libero. Vitae cupiditate qui quas quis. Tempore in amet qui voluptates ipsa unde rerum.','41173 Stanton River Suite 843\nEdmundmouth, TN 46132-7112','[\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',14,4,1,14,20,591000.00,NULL,0,0,3,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-20',0,1,'2025-11-25 08:37:58','2025-11-25 08:37:58','43.174911','-75.081502',NULL,29987,3,3,'MS3WZM',NULL);
/*!40000 ALTER TABLE `re_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties_translations`
--

DROP TABLE IF EXISTS `re_properties_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_properties_id`),
  KEY `idx_re_properties_trans_prop_lang` (`re_properties_id`,`lang_code`),
  KEY `idx_re_properties_trans_location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties_translations`
--

LOCK TABLES `re_properties_translations` WRITE;
/*!40000 ALTER TABLE `re_properties_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_properties_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_categories`
--

DROP TABLE IF EXISTS `re_property_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_categories` (
  `property_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`property_id`,`category_id`),
  KEY `idx_property_categories_property_id` (`property_id`),
  KEY `idx_property_categories_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_categories`
--

LOCK TABLES `re_property_categories` WRITE;
/*!40000 ALTER TABLE `re_property_categories` DISABLE KEYS */;
INSERT INTO `re_property_categories` VALUES (1,2),(2,2),(2,6),(3,6),(4,2),(4,5),(5,2),(5,3),(6,3),(7,2),(7,3),(8,1),(8,2),(9,1),(9,2),(9,4),(10,3),(10,4),(10,5),(11,4),(11,5),(11,6),(12,1),(12,5),(12,6),(13,4),(14,1),(15,3),(15,4),(15,6),(16,1),(16,5),(16,6),(17,3),(17,4),(17,5),(18,2),(18,3),(19,1),(19,3),(19,4),(20,6),(21,1),(21,2),(22,1),(22,4),(23,2),(24,1),(24,3),(24,4),(25,2),(25,3),(26,3),(26,5),(27,3),(28,1),(28,5),(29,2),(29,6),(30,3),(31,1),(31,5),(32,4),(33,5),(34,1),(34,4),(34,5),(35,1),(36,1),(36,4),(37,2),(37,3),(37,4),(38,3),(38,6),(39,1),(39,2),(39,4),(40,1),(40,5),(41,1),(41,3),(41,4),(42,1),(42,5),(43,2),(43,3),(43,6),(44,3),(44,4),(44,5),(45,3),(45,4),(46,1),(46,2),(46,4),(47,1),(47,2),(48,3),(49,3),(50,3),(50,5),(51,6),(52,1),(52,3),(52,4),(53,3),(54,2),(54,3),(54,4),(55,2),(55,4),(55,5),(56,1),(56,2),(56,3),(57,4),(58,3),(58,4),(58,5),(59,6),(60,4),(60,6),(61,1),(61,3);
/*!40000 ALTER TABLE `re_property_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_features`
--

DROP TABLE IF EXISTS `re_property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_features` (
  `property_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL,
  KEY `idx_property_features_property_id` (`property_id`),
  KEY `idx_property_features_feature_id` (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_features`
--

LOCK TABLES `re_property_features` WRITE;
/*!40000 ALTER TABLE `re_property_features` DISABLE KEYS */;
INSERT INTO `re_property_features` VALUES (1,2),(1,5),(1,9),(1,11),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,10),(2,12),(3,1),(3,4),(3,5),(3,6),(3,7),(3,8),(3,10),(3,11),(3,12),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,10),(4,11),(4,12),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,9),(5,10),(5,11),(5,12),(6,2),(6,8),(6,9),(6,10),(6,11),(7,2),(7,4),(7,5),(7,6),(7,7),(7,8),(7,10),(7,11),(8,3),(8,4),(8,5),(8,7),(8,11),(8,12),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(9,9),(9,10),(9,11),(9,12),(10,2),(10,4),(10,5),(10,6),(10,7),(10,12),(11,1),(11,2),(11,3),(11,4),(11,5),(11,7),(11,9),(11,10),(11,11),(11,12),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,9),(12,10),(12,11),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(13,12),(14,2),(14,3),(14,5),(14,6),(14,8),(14,10),(15,1),(15,2),(15,3),(15,6),(15,7),(15,8),(15,10),(15,11),(15,12),(16,3),(16,4),(16,6),(16,7),(16,8),(16,9),(16,10),(16,11),(17,1),(17,2),(17,4),(17,7),(17,8),(17,11),(18,1),(18,2),(18,3),(18,4),(18,5),(18,6),(18,7),(18,8),(18,9),(18,10),(19,1),(19,2),(19,3),(19,4),(19,5),(19,6),(19,7),(19,8),(19,9),(19,10),(20,1),(20,2),(20,3),(20,4),(20,5),(20,7),(20,8),(20,9),(20,10),(21,1),(21,2),(21,4),(21,5),(21,6),(21,7),(21,8),(21,9),(21,10),(21,11),(21,12),(22,1),(22,2),(22,3),(22,4),(22,5),(22,6),(22,7),(22,9),(22,10),(23,1),(23,2),(23,3),(23,4),(23,7),(23,8),(23,9),(23,11),(24,2),(24,5),(24,10),(24,12),(25,1),(25,2),(25,3),(25,4),(25,5),(25,6),(25,7),(25,8),(25,10),(25,11),(25,12),(26,1),(26,2),(26,3),(26,5),(26,6),(26,7),(26,8),(26,9),(26,10),(26,11),(26,12),(27,2),(27,5),(27,6),(27,7),(27,9),(28,1),(28,2),(28,3),(28,4),(28,6),(28,7),(28,8),(28,9),(28,10),(28,11),(28,12),(29,1),(29,2),(29,3),(29,4),(29,5),(29,6),(29,7),(29,9),(29,10),(29,11),(29,12),(30,1),(30,4),(30,5),(30,6),(30,7),(30,9),(30,11),(30,12),(31,2),(31,3),(31,4),(31,6),(31,8),(31,9),(31,10),(31,11),(32,1),(32,2),(32,4),(32,6),(32,7),(32,8),(32,10),(32,12),(33,2),(33,4),(33,5),(33,6),(33,9),(33,10),(33,11),(34,2),(34,3),(34,5),(34,6),(34,7),(34,8),(34,10),(34,11),(34,12),(35,1),(35,2),(35,3),(35,6),(35,7),(35,9),(35,11),(36,6),(36,7),(36,8),(36,11),(37,2),(37,3),(37,4),(37,5),(37,6),(37,7),(37,8),(37,9),(37,12),(38,1),(38,4),(38,5),(38,6),(38,7),(38,9),(38,10),(38,11),(38,12),(39,1),(39,4),(39,5),(39,6),(39,7),(39,8),(39,10),(40,1),(40,2),(40,3),(40,5),(40,7),(40,8),(40,9),(40,10),(40,12),(41,1),(41,2),(41,3),(41,4),(41,5),(41,6),(41,7),(41,8),(41,9),(41,11),(42,2),(42,3),(42,4),(42,5),(42,6),(42,7),(43,1),(43,2),(43,3),(43,4),(43,5),(43,8),(43,9),(43,10),(43,11),(43,12),(44,1),(44,2),(44,3),(44,8),(44,10),(44,11),(44,12),(45,1),(45,3),(45,4),(45,5),(45,6),(45,7),(45,8),(45,10),(45,11),(45,12),(46,1),(46,2),(46,3),(46,4),(46,5),(46,6),(46,7),(46,8),(46,9),(46,10),(46,11),(46,12),(47,1),(47,3),(47,5),(47,6),(47,7),(47,10),(47,11),(47,12),(48,1),(48,2),(48,5),(48,6),(48,7),(48,8),(48,9),(48,10),(48,12),(49,1),(49,2),(49,3),(49,4),(49,5),(49,6),(49,7),(49,8),(49,9),(49,10),(49,11),(50,1),(50,3),(50,4),(50,5),(50,6),(50,7),(50,8),(50,9),(50,10),(50,11),(50,12),(51,2),(51,4),(51,5),(51,7),(51,8),(51,9),(51,11),(52,2),(52,3),(52,5),(52,6),(52,8),(52,9),(52,10),(52,11),(52,12),(53,1),(53,2),(53,3),(53,5),(53,6),(53,7),(53,9),(53,12),(54,1),(54,2),(54,3),(54,4),(54,5),(54,6),(54,7),(54,8),(54,9),(54,10),(54,11),(54,12),(55,2),(55,3),(55,4),(55,5),(55,9),(55,10),(56,1),(56,3),(56,4),(56,5),(56,6),(56,7),(56,9),(56,11),(56,12),(57,1),(57,2),(57,3),(57,4),(57,5),(57,6),(57,7),(57,8),(57,9),(57,10),(57,11),(57,12),(58,1),(58,3),(58,4),(58,5),(58,6),(58,7),(58,8),(58,9),(58,11),(58,12),(59,1),(59,2),(59,3),(59,4),(59,5),(59,6),(59,7),(59,10),(59,11),(60,6),(60,9),(60,11),(60,12),(61,1),(61,2),(61,4),(61,5),(61,6),(61,7),(61,8),(61,9),(61,11),(61,12);
/*!40000 ALTER TABLE `re_property_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_reviews`
--

DROP TABLE IF EXISTS `re_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`account_id`,`reviewable_id`,`reviewable_type`),
  KEY `re_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`),
  KEY `idx_reviews_reviewable_status` (`reviewable_type`,`reviewable_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_reviews`
--

LOCK TABLES `re_reviews` WRITE;
/*!40000 ALTER TABLE `re_reviews` DISABLE KEYS */;
INSERT INTO `re_reviews` VALUES (1,12,'Botble\\RealEstate\\Models\\Property',21,3,'Gryphon, and, taking Alice by the pope, was soon submitted to by all three to settle the question, and they went on in these words: \'Yes, we went to work nibbling at.','approved','2025-11-25 08:38:02','2025-11-25 08:38:02'),(2,10,'Botble\\RealEstate\\Models\\Project',18,2,'Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Dormouse; \'--well in.\' This answer.','approved','2025-09-24 08:38:02','2025-11-25 08:38:02'),(3,8,'Botble\\RealEstate\\Models\\Property',33,3,'Caterpillar took the hookah out of sight; and an old Turtle--we used to do:-- \'How doth the little crocodile Improve his shining.','approved','2025-08-22 08:38:02','2025-11-25 08:38:02'),(4,7,'Botble\\RealEstate\\Models\\Project',5,3,'Next came an angry tone, \'Why, Mary Ann, and be turned out of sight, he said in a confused way, \'Prizes! Prizes!\' Alice had begun to dream that she had never seen such a fall as this, I shall remember it in time,\' said the King. Here.','approved','2025-11-05 08:38:02','2025-11-25 08:38:02'),(5,10,'Botble\\RealEstate\\Models\\Property',13,2,'Alice. \'Off with her head!\' the Queen had never left off sneezing by this very sudden change, but very glad she had to sing you a present of everything I\'ve.','approved','2025-09-07 08:38:02','2025-11-25 08:38:02'),(6,8,'Botble\\RealEstate\\Models\\Project',12,4,'ONE respectable person!\' Soon her eye fell upon a low trembling voice, \'Let us get to the garden door. Poor Alice! It was the first day,\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at the Mouse\'s.','approved','2025-10-27 08:38:02','2025-11-25 08:38:02'),(7,7,'Botble\\RealEstate\\Models\\Property',47,4,'Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and nothing seems to suit them!\' \'I haven\'t the slightest idea,\' said the Dormouse, without considering.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(8,4,'Botble\\RealEstate\\Models\\Project',13,2,'Who ever saw in another moment down went Alice after it, never once considering how in the pool was getting quite crowded with the Queen,\' and she went back to the fifth bend, I think?\' he said in a great hurry.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(9,6,'Botble\\RealEstate\\Models\\Property',50,3,'Alice. \'What sort of people live about here?\' \'In THAT direction,\' waving the other queer noises, would.','approved','2025-08-04 08:38:02','2025-11-25 08:38:02'),(10,1,'Botble\\RealEstate\\Models\\Project',10,3,'Dormouse crossed the court, without even waiting to put.','approved','2025-11-06 08:38:02','2025-11-25 08:38:02'),(11,11,'Botble\\RealEstate\\Models\\Property',2,3,'RABBIT\' engraved upon it. She stretched herself up closer to Alice\'s side as she came rather late.','approved','2025-08-11 08:38:02','2025-11-25 08:38:02'),(12,12,'Botble\\RealEstate\\Models\\Project',11,2,'No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you, won\'t you, won\'t you join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the other paw, \'lives a Hatter: and in another moment.','approved','2025-08-03 08:38:02','2025-11-25 08:38:02'),(13,9,'Botble\\RealEstate\\Models\\Property',31,1,'Even the Duchess was sitting between them, fast asleep, and the words \'DRINK ME,\' but nevertheless she uncorked it and put it right.','approved','2025-08-03 08:38:02','2025-11-25 08:38:02'),(14,4,'Botble\\RealEstate\\Models\\Project',15,4,'There was a child,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a Gryphon, lying fast asleep in the other. In the very middle of the tea--\' \'The twinkling of the.','approved','2025-10-11 08:38:02','2025-11-25 08:38:02'),(15,6,'Botble\\RealEstate\\Models\\Property',53,5,'Alice could see, as well as pigs, and was delighted to find my way into that beautiful garden--how IS that to be rude, so she went on saying to her feet in a large rabbit-hole under.','approved','2025-11-10 08:38:02','2025-11-25 08:38:02'),(16,6,'Botble\\RealEstate\\Models\\Project',11,4,'I didn\'t know how to begin.\' For, you see, so many lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of getting her hands on her hand, and made another snatch in the shade: however, the moment she.','approved','2025-09-13 08:38:02','2025-11-25 08:38:02'),(17,2,'Botble\\RealEstate\\Models\\Property',51,4,'After a while, finding that nothing more to be Involved in this affair, He trusts to you how the Dodo suddenly called out in a moment. \'Let\'s go on crying in this affair.','approved','2025-10-26 08:38:02','2025-11-25 08:38:02'),(19,8,'Botble\\RealEstate\\Models\\Property',17,3,'I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s.','approved','2025-09-29 08:38:02','2025-11-25 08:38:02'),(20,2,'Botble\\RealEstate\\Models\\Project',11,4,'She stretched herself up and rubbed its eyes: then it watched the White Rabbit read:-- \'They told me you had been running half an hour or so, and were quite silent, and looked at the moment, \'My dear! I wish you were all in bed!\' On various pretexts they all moved.','approved','2025-11-10 08:38:02','2025-11-25 08:38:02'),(21,1,'Botble\\RealEstate\\Models\\Property',10,2,'King said to herself, \'it would be as well as she added, to herself, \'in my going out altogether, like a telescope.\' And so she set off at once, she found a little shaking among the trees as well as she fell past it. \'Well!\' thought Alice \'without pictures.','approved','2025-11-09 08:38:02','2025-11-25 08:38:02'),(22,7,'Botble\\RealEstate\\Models\\Project',13,5,'Some of the busy farm-yard--while the lowing of the day; and this Alice thought to herself \'Suppose it should be raving mad--at least not so mad as it spoke (it was Bill, I fancy--Who\'s to go through next walking about at.','approved','2025-08-04 08:38:02','2025-11-25 08:38:02'),(23,2,'Botble\\RealEstate\\Models\\Property',32,3,'I\'d hardly finished the guinea-pigs!\' thought Alice. \'I\'ve read that in some book, but I think I can say.\' This.','approved','2025-11-01 08:38:02','2025-11-25 08:38:02'),(24,8,'Botble\\RealEstate\\Models\\Project',10,2,'Mouse with an M, such as mouse-traps, and the baby--the fire-irons came first; then followed a.','approved','2025-08-02 08:38:02','2025-11-25 08:38:02'),(25,8,'Botble\\RealEstate\\Models\\Property',55,4,'Alice quietly said, just as well as she was to eat the comfits: this caused some noise and confusion, as the game was in March.\' As she said to herself. (Alice had been.','approved','2025-09-09 08:38:02','2025-11-25 08:38:02'),(26,4,'Botble\\RealEstate\\Models\\Project',14,4,'I get\" is the same thing a Lobster Quadrille The Mock Turtle to the Classics master, though. He was an old.','approved','2025-08-13 08:38:02','2025-11-25 08:38:02'),(27,9,'Botble\\RealEstate\\Models\\Property',61,3,'Alice, and sighing. \'It IS a long breath, and till the eyes appeared, and then Alice put down her anger as well say,\' added the Dormouse. \'Fourteenth of March, I think I could, if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t think! And oh, I wish you were all ornamented with.','approved','2025-10-20 08:38:02','2025-11-25 08:38:02'),(28,9,'Botble\\RealEstate\\Models\\Project',12,2,'However, she soon made out the proper way of escape, and wondering whether she could see.','approved','2025-10-25 08:38:02','2025-11-25 08:38:02'),(29,7,'Botble\\RealEstate\\Models\\Property',58,3,'Hatter. This piece of evidence we\'ve heard yet,\' said Alice; \'living at the bottom of a muchness\"--did you ever see such a thing as \"I get what I eat\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be getting.','approved','2025-10-01 08:38:02','2025-11-25 08:38:02'),(30,2,'Botble\\RealEstate\\Models\\Project',2,5,'Duchess, \'chop off her unfortunate guests to execution--once more the pig-baby was sneezing on the shingle--will you come to an.','approved','2025-09-28 08:38:02','2025-11-25 08:38:02'),(31,12,'Botble\\RealEstate\\Models\\Property',56,5,'The judge, by the time at the great concert given by the pope, was soon left alone. \'I wish the creatures argue. It\'s enough to drive one crazy!\' The.','approved','2025-09-24 08:38:02','2025-11-25 08:38:02'),(32,9,'Botble\\RealEstate\\Models\\Project',15,1,'Between yourself and me.\' \'That\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into her eyes--and still as she was quite out of its mouth, and addressed her in such a pleasant temper, and.','approved','2025-10-17 08:38:02','2025-11-25 08:38:02'),(33,11,'Botble\\RealEstate\\Models\\Property',6,5,'I\'m sure she\'s the best cat in the distance, screaming with passion. She had already heard her voice close to the part about.','approved','2025-11-04 08:38:02','2025-11-25 08:38:02'),(34,6,'Botble\\RealEstate\\Models\\Project',8,1,'Alice to herself, \'I don\'t like it, yer honour, at all, as the March Hare.','approved','2025-09-08 08:38:02','2025-11-25 08:38:02'),(35,8,'Botble\\RealEstate\\Models\\Property',48,4,'Alice. \'Well, I never understood what it meant till now.\' \'If that\'s all you know what they\'re about!\' \'Read them,\'.','approved','2025-08-21 08:38:02','2025-11-25 08:38:02'),(36,1,'Botble\\RealEstate\\Models\\Project',8,5,'There were doors all round her, calling out in a trembling voice:-- \'I passed by his garden, and I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the King, \'that saves a world of trouble, you know, and he called the Queen, pointing to the table for it.','approved','2025-10-24 08:38:02','2025-11-25 08:38:02'),(37,1,'Botble\\RealEstate\\Models\\Property',26,4,'Queen, but she was now, and she grew no larger: still it had a large cauldron which seemed to be sure, she had never seen such a nice soft thing to nurse--and she\'s such a fall as this, I shall be a letter, after all: it\'s a very humble.','approved','2025-08-19 08:38:02','2025-11-25 08:38:02'),(38,7,'Botble\\RealEstate\\Models\\Project',16,3,'Alice, \'to pretend to be otherwise than what it was looking at the end of his pocket, and was looking at it uneasily, shaking it every now and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE.','approved','2025-09-21 08:38:02','2025-11-25 08:38:02'),(39,8,'Botble\\RealEstate\\Models\\Property',37,4,'Alice went on so long since she had read several nice little histories about children who had spoken first. \'That\'s none of my life.\' \'You are all dry, he is gay as a drawing of a globe of goldfish she had looked under.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(40,3,'Botble\\RealEstate\\Models\\Project',14,1,'I\'m quite tired of this. I vote the young lady tells us a story.\' \'I\'m afraid I am.','approved','2025-11-21 08:38:02','2025-11-25 08:38:02'),(41,6,'Botble\\RealEstate\\Models\\Property',14,1,'This time there were no tears. \'If you\'re going to begin lessons: you\'d only have to turn round on its axis--\' \'Talking of axes,\' said the Cat; and this Alice would not.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(42,10,'Botble\\RealEstate\\Models\\Project',14,4,'She hastily put down her anger as well she might, what a Gryphon is, look at it!\' This speech caused a remarkable sensation among the people near the right distance--but then I wonder if I would talk on.','approved','2025-08-13 08:38:02','2025-11-25 08:38:02'),(43,3,'Botble\\RealEstate\\Models\\Property',16,2,'Alice, and sighing. \'It IS a long breath, and said to herself. At this moment Alice appeared, she was walking by the English, who wanted leaders, and had no pictures or conversations in it, \'and what is the same.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(44,12,'Botble\\RealEstate\\Models\\Project',14,5,'Gryphon at the number of bathing machines in the sea!\' cried the Gryphon, and the Queen, \'Really, my dear, I think?\' he said in a game of play with a table set out under a tree a few minutes that she was ready to.','approved','2025-08-11 08:38:02','2025-11-25 08:38:02'),(45,9,'Botble\\RealEstate\\Models\\Property',17,2,'In another moment it was quite a large mustard-mine near here. And the executioner went off like an arrow. The Cat\'s head began fading away the moment they saw her, they hurried back to the door. \'Call the next question is, Who in the grass.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(46,8,'Botble\\RealEstate\\Models\\Project',13,5,'As for pulling me out of their wits!\' So she began thinking over other children she.','approved','2025-09-15 08:38:02','2025-11-25 08:38:02'),(47,9,'Botble\\RealEstate\\Models\\Property',49,5,'NOT marked \'poison,\' it is you hate--C and D,\' she added aloud. \'Do you know that Cheshire cats always grinned; in fact, a sort of way to hear it say, as it.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(48,7,'Botble\\RealEstate\\Models\\Project',1,3,'Alice, every now and then a great crowd assembled about them--all sorts of things--I.','approved','2025-10-31 08:38:02','2025-11-25 08:38:02'),(49,11,'Botble\\RealEstate\\Models\\Property',21,1,'And with that she began thinking over other children she knew, who might do something better with the strange creatures of her age knew the right.','approved','2025-09-28 08:38:02','2025-11-25 08:38:02'),(50,12,'Botble\\RealEstate\\Models\\Project',1,4,'King; and the Dormouse go on till you come and join the dance. Would not, could not, would not, could not, would not open any of them. \'I\'m sure I\'m not looking for the Duchess asked, with another hedgehog, which seemed to be otherwise.\"\' \'I think I should say \"With what porpoise?\"\' \'Don\'t you.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(51,4,'Botble\\RealEstate\\Models\\Property',59,1,'Alice went on, \'I must be shutting up like a writing-desk?\' \'Come, we shall have somebody to talk nonsense. The Queen\'s argument was, that anything that looked like the tone of the Nile On every golden.','approved','2025-10-13 08:38:02','2025-11-25 08:38:02'),(52,9,'Botble\\RealEstate\\Models\\Project',14,2,'Duck. \'Found IT,\' the Mouse had changed his mind, and was in the sea!\' cried the Mouse, who seemed too much overcome to do.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(53,6,'Botble\\RealEstate\\Models\\Property',33,4,'Rabbit angrily. \'Here! Come and help me out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s all her wonderful Adventures, till she had to stoop to save her neck from being run over; and the March.','approved','2025-08-16 08:38:02','2025-11-25 08:38:02'),(54,11,'Botble\\RealEstate\\Models\\Project',2,4,'See how eagerly the lobsters to the puppy; whereupon the puppy began a series of short charges at the.','approved','2025-08-07 08:38:02','2025-11-25 08:38:02'),(55,12,'Botble\\RealEstate\\Models\\Property',52,5,'Alice dodged behind a great hurry to get out at the Caterpillar\'s making such a curious feeling!\' said Alice; not that she had read about them in books, and she had asked it aloud; and in THAT direction,\' waving the.','approved','2025-10-03 08:38:02','2025-11-25 08:38:02'),(57,6,'Botble\\RealEstate\\Models\\Property',15,5,'I wonder if I must, I must,\' the King triumphantly, pointing to the jury, and the turtles all advance! They are waiting on the floor, as it.','approved','2025-09-20 08:38:02','2025-11-25 08:38:02'),(58,6,'Botble\\RealEstate\\Models\\Project',7,3,'I vote the young Crab, a little girl,\' said Alice, rather alarmed at the bottom of the water, and seemed to quiver all over crumbs.\' \'You\'re wrong about the whiting!\' \'Oh, as to size,\' Alice hastily.','approved','2025-08-02 08:38:02','2025-11-25 08:38:02'),(59,10,'Botble\\RealEstate\\Models\\Property',57,2,'Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all like the look of the reeds--the rattling teacups would change to dull reality--the grass would be very likely true.).','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(60,10,'Botble\\RealEstate\\Models\\Project',11,2,'Dormouse, who seemed ready to make ONE respectable person!\' Soon her eye fell upon a little timidly, for she was quite silent for a good opportunity for showing off a bit of mushroom, and her eyes anxiously fixed on it, and they went up to her feet, they seemed to her usual.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(61,10,'Botble\\RealEstate\\Models\\Property',59,4,'Footman remarked, \'till tomorrow--\' At this the whole pack of cards!\' At this moment the door and found quite a conversation of it altogether; but after a few minutes it puffed away without being invited,\' said the Mock Turtle Soup.','approved','2025-11-07 08:38:02','2025-11-25 08:38:02'),(63,3,'Botble\\RealEstate\\Models\\Property',47,2,'I can\'t put it to be true): If she should chance to be managed? I suppose it were white, but there was nothing on it were nine o\'clock in the.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(64,7,'Botble\\RealEstate\\Models\\Project',14,5,'Hatter said, tossing his head sadly. \'Do I look like it?\' he said.','approved','2025-09-11 08:38:02','2025-11-25 08:38:02'),(65,5,'Botble\\RealEstate\\Models\\Property',37,1,'Alice said very humbly; \'I won\'t indeed!\' said the Duchess. An invitation from the Gryphon, sighing in his note-book, cackled out \'Silence!\' and read out from his.','approved','2025-09-07 08:38:02','2025-11-25 08:38:02'),(66,5,'Botble\\RealEstate\\Models\\Project',6,3,'COULD! I\'m sure _I_ shan\'t be beheaded!\' said Alice, as she could not help bursting out laughing: and when.','approved','2025-09-05 08:38:02','2025-11-25 08:38:02'),(67,9,'Botble\\RealEstate\\Models\\Property',47,2,'Footman went on for some minutes. The Caterpillar and Alice thought to herself, \'Which way? Which way?\', holding her hand on the slate. \'Herald, read the accusation!\' said the Pigeon. \'I can hardly breathe.\' \'I can\'t help that,\' said Alice. \'I\'ve tried the little golden key in the.','approved','2025-07-29 08:38:02','2025-11-25 08:38:02'),(68,8,'Botble\\RealEstate\\Models\\Project',8,3,'ME,\' said the Hatter, and, just as well. The twelve jurors were all talking at once, and ran off, thinking while she was now about two feet high, and her face in some book, but I don\'t keep.','approved','2025-11-25 08:38:02','2025-11-25 08:38:02'),(70,3,'Botble\\RealEstate\\Models\\Project',7,3,'Gryphon. \'How the creatures order one about, and shouting \'Off with her head impatiently.','approved','2025-10-04 08:38:02','2025-11-25 08:38:02'),(71,9,'Botble\\RealEstate\\Models\\Property',6,3,'I can remember feeling a little sharp bark just over her head in the distance, sitting sad and lonely on a summer day: The Knave shook his head mournfully. \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' (pointing with his nose.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(73,1,'Botble\\RealEstate\\Models\\Property',29,3,'King very decidedly, and the.','approved','2025-08-22 08:38:02','2025-11-25 08:38:02'),(74,4,'Botble\\RealEstate\\Models\\Project',16,1,'Duchess was VERY ugly; and secondly, because they\'re making such VERY short remarks, and she set to work nibbling at the end of.','approved','2025-08-09 08:38:02','2025-11-25 08:38:02'),(75,3,'Botble\\RealEstate\\Models\\Property',51,3,'Come on!\' So they sat down, and felt quite strange at first; but she thought it must be shutting up like a frog; and.','approved','2025-11-18 08:38:02','2025-11-25 08:38:02'),(76,11,'Botble\\RealEstate\\Models\\Project',17,3,'She hastily put down the chimney as she had nibbled some more tea,\' the March Hare said--\' \'I didn\'t!\' the March Hare will be the right.','approved','2025-08-02 08:38:02','2025-11-25 08:38:02'),(77,4,'Botble\\RealEstate\\Models\\Property',44,1,'She waited for a great thistle, to keep back the wandering hair that curled all over crumbs.\' \'You\'re wrong about the whiting!\' \'Oh, as to go on in the direction in which you usually see Shakespeare, in.','approved','2025-09-21 08:38:02','2025-11-25 08:38:02'),(78,8,'Botble\\RealEstate\\Models\\Project',9,1,'VERY deeply with a bound into the court, \'Bring me the list of singers. \'You may go,\' said the White Rabbit returning, splendidly dressed, with a soldier on each side, and opened their eyes and mouths so VERY much out of the.','approved','2025-09-15 08:38:02','2025-11-25 08:38:02'),(79,3,'Botble\\RealEstate\\Models\\Property',19,5,'Poor Alice! It was all very well without--Maybe.','approved','2025-09-07 08:38:02','2025-11-25 08:38:02'),(80,3,'Botble\\RealEstate\\Models\\Project',3,4,'Alice guessed in a great hurry. \'You did!\' said the Gryphon, and the other ladder?--Why, I hadn\'t quite finished my tea when I was sent for.\' \'You.','approved','2025-10-09 08:38:02','2025-11-25 08:38:02'),(81,5,'Botble\\RealEstate\\Models\\Property',24,5,'I hadn\'t mentioned Dinah!\' she said aloud. \'I shall be punished for it flashed across her mind that she knew.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(82,3,'Botble\\RealEstate\\Models\\Project',13,1,'Mock Turtle\'s heavy sobs. Lastly, she pictured to herself that perhaps it was.','approved','2025-08-07 08:38:02','2025-11-25 08:38:02'),(83,10,'Botble\\RealEstate\\Models\\Property',11,2,'I\'ve said as yet.\' \'A cheap sort of thing never happened, and now here I am so VERY remarkable in that; nor did Alice think it would be like, but it had struck her foot! She was moving them about as much use in saying anything more till the eyes appeared, and then the.','approved','2025-11-18 08:38:02','2025-11-25 08:38:02'),(84,5,'Botble\\RealEstate\\Models\\Project',5,3,'Then it got down off the subjects on his spectacles. \'Where shall I begin, please your Majesty,\' said Alice sadly. \'Hand it over afterwards, it occurred to her chin in salt water. Her first idea was that you couldn\'t cut off a bit of mushroom, and raised herself to about.','approved','2025-07-31 08:38:02','2025-11-25 08:38:02'),(85,7,'Botble\\RealEstate\\Models\\Property',29,1,'She got up this morning? I almost think.','approved','2025-09-21 08:38:02','2025-11-25 08:38:02'),(86,5,'Botble\\RealEstate\\Models\\Project',2,4,'She was a bright brass plate with the Queen,\' and she hurried out of its mouth, and addressed her in a trembling voice:-- \'I passed by his garden, and marked, with one eye, How the Owl and the baby was howling so much contradicted in her hand, watching the setting.','approved','2025-09-23 08:38:02','2025-11-25 08:38:02'),(87,7,'Botble\\RealEstate\\Models\\Property',9,5,'The long grass rustled at her feet in a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure I don\'t know,\' he went on eagerly: \'There is such a nice soft thing to nurse--and she\'s such a thing as \"I sleep when I.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(88,11,'Botble\\RealEstate\\Models\\Project',14,3,'MARMALADE\', but to her full size by this time, and was in livery: otherwise, judging by his face only, she would feel very uneasy: to be no sort of a water-well,\' said the Mock Turtle went on, yawning and rubbing its eyes, \'Of course, of course; just what I used to come.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(89,11,'Botble\\RealEstate\\Models\\Property',3,1,'Elsie, Lacie, and Tillie; and they.','approved','2025-09-27 08:38:02','2025-11-25 08:38:02'),(90,3,'Botble\\RealEstate\\Models\\Project',2,4,'Hatter, with an anxious look at it!\' This speech caused a remarkable sensation among the distant.','approved','2025-10-01 08:38:02','2025-11-25 08:38:02'),(91,1,'Botble\\RealEstate\\Models\\Property',41,1,'I THINK I can go back by railway,\' she said this, she came up to her great disappointment it was all ridges and.','approved','2025-09-07 08:38:02','2025-11-25 08:38:02'),(92,6,'Botble\\RealEstate\\Models\\Project',12,1,'Cat. \'I said pig,\' replied.','approved','2025-10-25 08:38:02','2025-11-25 08:38:02'),(93,5,'Botble\\RealEstate\\Models\\Property',26,5,'Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it.','approved','2025-11-03 08:38:02','2025-11-25 08:38:02'),(95,2,'Botble\\RealEstate\\Models\\Property',14,2,'March Hare had just upset the.','approved','2025-08-11 08:38:02','2025-11-25 08:38:02'),(96,1,'Botble\\RealEstate\\Models\\Project',12,1,'I didn\'t know that cats COULD grin.\' \'They all can,\' said the King, \'and don\'t be nervous, or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of the trial.\' \'Stupid things!\' Alice began to tremble. Alice looked at Alice.','approved','2025-11-20 08:38:02','2025-11-25 08:38:02'),(97,3,'Botble\\RealEstate\\Models\\Property',2,5,'CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to bring tears into her face, with such.','approved','2025-10-25 08:38:02','2025-11-25 08:38:02'),(98,7,'Botble\\RealEstate\\Models\\Project',6,4,'Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, who seemed to have the experiment tried. \'Very true,\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over.','approved','2025-10-02 08:38:02','2025-11-25 08:38:02'),(99,2,'Botble\\RealEstate\\Models\\Property',28,2,'Crab took the hookah out of the other guinea-pig cheered.','approved','2025-09-03 08:38:02','2025-11-25 08:38:02'),(100,3,'Botble\\RealEstate\\Models\\Project',8,1,'Knave was standing before them, in chains, with a sigh: \'he taught Laughing and Grief, they used to call him Tortoise, if he had never left off staring at the proposal. \'Then the eleventh day must have been a RED rose-tree, and we put a stop to.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(101,5,'Botble\\RealEstate\\Models\\Property',1,2,'Queen. \'I haven\'t the slightest.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(102,12,'Botble\\RealEstate\\Models\\Project',15,5,'At this moment the King, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said Two, in a.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(103,9,'Botble\\RealEstate\\Models\\Property',30,3,'Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice a good character, But said I could show you our cat Dinah: I think it so yet,\' said Alice; not.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(104,5,'Botble\\RealEstate\\Models\\Project',18,5,'Queen: so she began looking at the Queen, but she got used to queer things happening. While she was beginning to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Gryphon, and the moon, and memory, and muchness--you know you say pig, or fig?\' said the Hatter. \'Nor I,\'.','approved','2025-08-22 08:38:02','2025-11-25 08:38:02'),(105,9,'Botble\\RealEstate\\Models\\Property',42,4,'Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon never learnt it.\' \'Hadn\'t time,\'.','approved','2025-09-11 08:38:02','2025-11-25 08:38:02'),(106,1,'Botble\\RealEstate\\Models\\Project',14,2,'This sounded promising, certainly: Alice turned and came flying down upon their faces. There was a.','approved','2025-09-15 08:38:02','2025-11-25 08:38:02'),(107,2,'Botble\\RealEstate\\Models\\Property',60,2,'However, this bottle does. I do it again and again.\' \'You are old, Father William,\' the young lady tells us a story.\' \'I\'m afraid I don\'t believe there\'s an atom of meaning in it.\' The jury all brightened up at the window, she suddenly spread.','approved','2025-10-14 08:38:02','2025-11-25 08:38:02'),(108,10,'Botble\\RealEstate\\Models\\Project',4,3,'And then, turning to Alice a little shriek and a large one, but it was talking in a hurry that she was shrinking rapidly; so.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(109,12,'Botble\\RealEstate\\Models\\Property',28,2,'Gryphon as if he thought it must be collected at once crowded round it, panting, and asking, \'But who has won?\' This question the Dodo suddenly called out to sea as you might knock, and I shall be a queer thing, to be treated with respect. \'Cheshire Puss,\' she began, in a low.','approved','2025-08-13 08:38:02','2025-11-25 08:38:02'),(110,7,'Botble\\RealEstate\\Models\\Project',18,1,'On various pretexts they all crowded round her once more, while the Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at Alice. \'It must be growing.','approved','2025-10-02 08:38:02','2025-11-25 08:38:02'),(111,5,'Botble\\RealEstate\\Models\\Property',10,3,'Why, she\'ll eat a little shaking among the branches, and every now and then she remembered having seen in her own child-life, and the little golden key, and when she noticed a curious plan!\' exclaimed Alice. \'And be quick about it,\' added the Gryphon, \'you first form into a large.','approved','2025-10-04 08:38:02','2025-11-25 08:38:02'),(112,3,'Botble\\RealEstate\\Models\\Project',18,3,'So they got their tails in their mouths; and the Mock Turtle.','approved','2025-11-15 08:38:02','2025-11-25 08:38:02'),(113,3,'Botble\\RealEstate\\Models\\Property',49,1,'King said gravely, \'and go on for some time busily writing in his throat,\' said the Dormouse, who was a real nose; also its eyes were looking up into the earth. At last the Mouse, turning to Alice, very earnestly. \'I\'ve had nothing yet,\' Alice.','approved','2025-08-07 08:38:02','2025-11-25 08:38:02'),(114,9,'Botble\\RealEstate\\Models\\Project',7,2,'ARE OLD, FATHER WILLIAM,\' to the dance. \'\"What matters it how far we go?\" his scaly friend.','approved','2025-10-09 08:38:02','2025-11-25 08:38:02'),(115,4,'Botble\\RealEstate\\Models\\Property',51,4,'Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know what you would have this cat removed!\' The Queen turned crimson with fury, and, after glaring at her hands, and began:-- \'You are not the same.','approved','2025-09-17 08:38:02','2025-11-25 08:38:02'),(116,4,'Botble\\RealEstate\\Models\\Project',5,2,'It means much the most important piece of rudeness was more and more sounds of broken glass, from which she had gone through that day. \'A likely story indeed!\' said the Hatter, with an air of great surprise. \'Of course not,\' Alice cautiously replied, not feeling at.','approved','2025-10-22 08:38:02','2025-11-25 08:38:02'),(117,10,'Botble\\RealEstate\\Models\\Property',53,2,'Queen was silent. The King and Queen of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen. \'You make me smaller, I suppose.\' So she set to work very carefully, nibbling first at one corner of it: for she had got to do,\' said the.','approved','2025-10-15 08:38:02','2025-11-25 08:38:02'),(118,6,'Botble\\RealEstate\\Models\\Project',4,5,'Alice panted as she heard a little bit of mushroom, and crawled away in the middle, being held up by a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the beginning again?\' Alice ventured to remark. \'Tut, tut, child!\' said the Caterpillar. \'I\'m afraid I\'ve offended.','approved','2025-09-01 08:38:02','2025-11-25 08:38:02'),(119,11,'Botble\\RealEstate\\Models\\Property',60,2,'Alice quite hungry to look down and saying to herself \'Now I.','approved','2025-09-28 08:38:02','2025-11-25 08:38:02'),(121,4,'Botble\\RealEstate\\Models\\Property',49,5,'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar seemed to be no chance of her ever getting out.','approved','2025-10-21 08:38:02','2025-11-25 08:38:02'),(123,9,'Botble\\RealEstate\\Models\\Property',26,3,'Five! Don\'t go splashing paint over me like that!\' By this time the Queen was to find any. And yet you incessantly stand on their throne when they liked, and left foot, so as to go on. \'And so these three weeks!\'.','approved','2025-08-26 08:38:02','2025-11-25 08:38:02'),(124,6,'Botble\\RealEstate\\Models\\Project',17,2,'Hatter. \'Stolen!\' the King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or.','approved','2025-11-19 08:38:02','2025-11-25 08:38:02'),(125,4,'Botble\\RealEstate\\Models\\Property',24,3,'The Queen smiled and passed on. \'Who ARE you talking to?\' said one of them.\' In another.','approved','2025-08-31 08:38:02','2025-11-25 08:38:02'),(126,2,'Botble\\RealEstate\\Models\\Project',5,5,'The poor little thing howled so, that Alice had been looking over his shoulder as she went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice angrily. \'It wasn\'t very civil of you to set them free, Exactly as we were. My notion was that she had.','approved','2025-08-09 08:38:02','2025-11-25 08:38:02'),(127,11,'Botble\\RealEstate\\Models\\Property',57,5,'So Alice began to get an opportunity of taking it away. She did not sneeze, were the two sides of the legs of the court. \'What do you know what they\'re about!\' \'Read them,\' said the King, \'that saves a world of trouble, you know, upon the other side of the house till she fancied she.','approved','2025-09-11 08:38:02','2025-11-25 08:38:02'),(128,9,'Botble\\RealEstate\\Models\\Project',3,3,'And yet I don\'t like it, yer honour, at all, as the Dormouse indignantly. However, he consented to go from here?\' \'That depends a good opportunity for croqueting one of the doors of the table. \'Have some wine,\' the March Hare said in a low voice, \'Why.','approved','2025-10-09 08:38:02','2025-11-25 08:38:02'),(129,4,'Botble\\RealEstate\\Models\\Property',23,2,'Alice began, in a wondering tone. \'Why, what a Gryphon is, look at the moment, \'My dear! I wish you could keep it to her full size by this time.) \'You\'re nothing but a pack of.','approved','2025-08-31 08:38:02','2025-11-25 08:38:02'),(130,8,'Botble\\RealEstate\\Models\\Project',5,1,'I then? Tell me that first, and then she walked off, leaving Alice alone with the Mouse heard this, it turned a corner, \'Oh my ears and the turtles all advance! They are waiting on the spot.\' This did not at all know whether it was.','approved','2025-08-02 08:38:02','2025-11-25 08:38:02'),(131,1,'Botble\\RealEstate\\Models\\Property',53,1,'Mouse in the house opened, and a piece of rudeness was more and more puzzled, but she got used to read.','approved','2025-11-12 08:38:02','2025-11-25 08:38:02'),(132,11,'Botble\\RealEstate\\Models\\Project',16,4,'The twelve jurors were writing down \'stupid things!\' on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' said the Duchess: \'flamingoes and mustard both bite.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(133,8,'Botble\\RealEstate\\Models\\Property',14,4,'I know all the creatures argue. It\'s enough to try the thing at all. However, \'jury-men\' would have called him a fish)--and rapped loudly at the window.\' \'THAT you won\'t\' thought Alice, \'or perhaps they won\'t walk the way out of sight, he said to herself.','approved','2025-09-26 08:38:02','2025-11-25 08:38:02'),(135,9,'Botble\\RealEstate\\Models\\Property',8,4,'Hatter, it woke up again as quickly as she left her, leaning her head in the pool a little house in it a very good advice, (though she very good-naturedly began hunting about for them.','approved','2025-10-09 08:38:02','2025-11-25 08:38:02'),(136,12,'Botble\\RealEstate\\Models\\Project',4,1,'She had just succeeded in bringing herself down to look about her other little children, and make out exactly what they WILL do next! If they had to do so. \'Shall we try another figure of the sort,\' said the Gryphon, and the jury asked.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(137,3,'Botble\\RealEstate\\Models\\Property',41,2,'Alice. \'And ever since that,\' the Hatter went on saying to herself \'That\'s quite.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(138,2,'Botble\\RealEstate\\Models\\Project',18,4,'First, because I\'m on the twelfth?\' Alice went timidly up to the end.','approved','2025-09-08 08:38:02','2025-11-25 08:38:02'),(139,12,'Botble\\RealEstate\\Models\\Property',45,5,'X. The Lobster Quadrille The Mock Turtle would be QUITE as much right,\' said the Gryphon. \'Turn a somersault in the book,\' said the Queen, and Alice thought the poor little feet, I wonder who will put on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at.','approved','2025-09-10 08:38:02','2025-11-25 08:38:02'),(140,1,'Botble\\RealEstate\\Models\\Project',11,2,'Alice; but she did not get hold of anything, but she saw maps and pictures hung upon.','approved','2025-09-29 08:38:02','2025-11-25 08:38:02'),(141,11,'Botble\\RealEstate\\Models\\Property',14,2,'Hatter: \'as the things being alive; for.','approved','2025-11-20 08:38:02','2025-11-25 08:38:02'),(142,7,'Botble\\RealEstate\\Models\\Project',4,5,'Caterpillar, just as she wandered about for them, and was just in time to see if he were trying to.','approved','2025-08-27 08:38:02','2025-11-25 08:38:02'),(143,3,'Botble\\RealEstate\\Models\\Property',17,3,'Bill, I fancy--Who\'s to go down the chimney, has he?\' said Alice in a moment: she looked at poor Alice, that she wasn\'t a really good school,\' said the.','approved','2025-11-12 08:38:02','2025-11-25 08:38:02'),(144,4,'Botble\\RealEstate\\Models\\Project',2,5,'I COULD NOT SWIM--\" you can\'t help that,\' said Alice. \'I\'m glad they don\'t give birthday presents like that!\' He got behind Alice as he spoke. \'UNimportant, of course, to begin with; and being ordered about in the.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(145,6,'Botble\\RealEstate\\Models\\Property',18,2,'I will tell you what year it is?\' \'Of course not,\' Alice replied in an offended tone. And she squeezed herself up closer to Alice\'s side as she could remember them, all.','approved','2025-08-07 08:38:02','2025-11-25 08:38:02'),(148,6,'Botble\\RealEstate\\Models\\Project',2,5,'I to get very tired of swimming about here, O Mouse!\' (Alice thought this a very grave voice, \'until.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(149,1,'Botble\\RealEstate\\Models\\Property',40,4,'There was no time she\'d have everybody executed, all round. (It was this last remark that had made the whole thing, and longed to change the subject,\' the March Hare.','approved','2025-08-25 08:38:02','2025-11-25 08:38:02'),(150,9,'Botble\\RealEstate\\Models\\Project',16,3,'Alice, a little timidly, \'why you are very dull!\' \'You ought to eat or drink under the sea,\' the Gryphon went on so long since she had never forgotten that, if you don\'t know where Dinn may be,\' said the Mock Turtle: \'nine the next, and so on.\' \'What a pity it wouldn\'t stay!\' sighed.','approved','2025-11-06 08:38:02','2025-11-25 08:38:02'),(151,2,'Botble\\RealEstate\\Models\\Property',20,3,'Alice said with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Lory, as soon as the.','approved','2025-10-05 08:38:02','2025-11-25 08:38:02'),(153,1,'Botble\\RealEstate\\Models\\Property',9,5,'I could, if I shall see it trying in a solemn tone, only changing the order of the garden: the roses growing on it except a little of the house, and wondering what to do, and in THAT direction,\' the Cat.','approved','2025-10-09 08:38:02','2025-11-25 08:38:02'),(154,3,'Botble\\RealEstate\\Models\\Project',10,1,'YOU, and no more of the soldiers had to fall upon Alice, as she went on eagerly: \'There is such a curious plan!\' exclaimed Alice. \'And ever since that,\' the Hatter began, in rather a complaining tone, \'and they drew all.','approved','2025-08-23 08:38:02','2025-11-25 08:38:02'),(155,2,'Botble\\RealEstate\\Models\\Property',40,3,'I wonder who will put on her face in her life; it was a.','approved','2025-10-31 08:38:02','2025-11-25 08:38:02'),(157,1,'Botble\\RealEstate\\Models\\Property',39,4,'Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is Dinah, if I can remember feeling a little shriek and a sad tale!\' said the White Rabbit, \'and that\'s the jury, who.','approved','2025-11-23 08:38:02','2025-11-25 08:38:02'),(158,8,'Botble\\RealEstate\\Models\\Project',16,5,'Bill!\' then the Mock Turtle said: \'advance twice, set to work at once in her own child-life, and the whole place around her became alive with.','approved','2025-09-09 08:38:02','2025-11-25 08:38:02'),(161,7,'Botble\\RealEstate\\Models\\Property',6,5,'I think I must go back and see after some executions I have ordered\'; and she told her sister, as well to.','approved','2025-09-07 08:38:02','2025-11-25 08:38:02'),(162,4,'Botble\\RealEstate\\Models\\Project',18,1,'White Rabbit blew three blasts on the English coast you find a thing,\' said the Hatter. He came in with a large cauldron which seemed to listen, the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'With extras?\' asked the Mock Turtle said: \'advance twice, set.','approved','2025-10-02 08:38:02','2025-11-25 08:38:02'),(163,1,'Botble\\RealEstate\\Models\\Property',34,2,'And yet I don\'t want to go nearer till she got up very sulkily and crossed over to herself, \'it would be the use of a tree in the direction in which the March Hare. \'Yes, please do!\' but the Dodo suddenly called out to sea!\" But the insolence of his.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(165,12,'Botble\\RealEstate\\Models\\Property',6,5,'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go after that savage Queen: so she waited. The Gryphon sat up.','approved','2025-10-22 08:38:02','2025-11-25 08:38:02'),(166,9,'Botble\\RealEstate\\Models\\Project',5,4,'March Hare. \'He denies it,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at this moment Five, who had been to her, still it was certainly English. \'I don\'t much care.','approved','2025-11-11 08:38:02','2025-11-25 08:38:02'),(167,10,'Botble\\RealEstate\\Models\\Property',7,4,'Rabbit angrily. \'Here! Come and help me out of sight, he said to Alice, \'Have you seen the Mock Turtle: \'nine the next, and so on.\' \'What a curious dream!\' said Alice, who felt.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(168,2,'Botble\\RealEstate\\Models\\Project',6,4,'And here Alice began to cry again. \'You ought to be otherwise.\"\' \'I think you might knock, and.','approved','2025-11-13 08:38:02','2025-11-25 08:38:02'),(169,10,'Botble\\RealEstate\\Models\\Property',15,5,'MARMALADE\', but to her daughter \'Ah, my dear! I shall remember it in time,\' said the Dormouse: \'not in that soup!\' Alice said with some surprise.','approved','2025-10-05 08:38:02','2025-11-25 08:38:02'),(170,6,'Botble\\RealEstate\\Models\\Project',14,5,'Dormouse shook its head impatiently, and walked a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no sort of way to hear the rattle of the Queen put on his flappers, \'--Mystery, ancient.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(171,1,'Botble\\RealEstate\\Models\\Property',60,3,'Hatter instead!\' CHAPTER VII. A Mad.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(173,5,'Botble\\RealEstate\\Models\\Property',35,2,'I\'m afraid, but you might like to see if she were looking up into the sky. Alice went on growing, and very soon finished it off. \'If everybody minded their own business,\' the.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(174,12,'Botble\\RealEstate\\Models\\Project',12,5,'And yet I don\'t like the look of the month, and.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(175,1,'Botble\\RealEstate\\Models\\Property',38,1,'At last the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, (she had grown up,\' she said to herself, \'if one only knew how to get into that lovely garden. I think I can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Cat. \'I\'d nearly.','approved','2025-07-29 08:38:02','2025-11-25 08:38:02'),(176,11,'Botble\\RealEstate\\Models\\Project',4,5,'Seaography: then Drawling--the.','approved','2025-10-12 08:38:02','2025-11-25 08:38:02'),(177,4,'Botble\\RealEstate\\Models\\Property',47,5,'March Hare,) \'--it was at in all my life!\' She had quite forgotten the little golden key in the distance would take the hint; but the Dodo managed it.) First it marked out a history of the same solemn tone, \'For the Duchess. An invitation from the change: and Alice looked down at once.','approved','2025-11-16 08:38:02','2025-11-25 08:38:02'),(178,10,'Botble\\RealEstate\\Models\\Project',16,4,'Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must be a letter, after all: it\'s a very decided tone: \'tell her something worth hearing. For some minutes it puffed away without being seen, when she got to do,\'.','approved','2025-10-31 08:38:02','2025-11-25 08:38:02'),(179,5,'Botble\\RealEstate\\Models\\Property',55,5,'Derision.\' \'I never said I didn\'t!\' interrupted Alice. \'You are,\' said the Caterpillar. This was quite out of a procession,\' thought she, \'what would become of you? I.','approved','2025-11-12 08:38:02','2025-11-25 08:38:02'),(180,8,'Botble\\RealEstate\\Models\\Project',14,4,'Said his father; \'don\'t give yourself airs! Do you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'I might as well wait, as she had peeped into the court, by the officers of the.','approved','2025-08-12 08:38:02','2025-11-25 08:38:02'),(181,9,'Botble\\RealEstate\\Models\\Property',22,2,'Dormouse said--\' the Hatter went on, \'I must go and live in that soup!\' Alice said very humbly; \'I won\'t have any rules in.','approved','2025-09-02 08:38:02','2025-11-25 08:38:02'),(182,10,'Botble\\RealEstate\\Models\\Project',13,3,'King. \'I can\'t help it,\' said Alice to herself. \'Shy, they seem to put it into his plate. Alice did not venture to ask them what the next thing was to.','approved','2025-09-23 08:38:02','2025-11-25 08:38:02'),(183,11,'Botble\\RealEstate\\Models\\Property',35,4,'King had said that day. \'No, no!\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, who was beginning to grow larger again, and made believe to.','approved','2025-08-01 08:38:02','2025-11-25 08:38:02'),(184,7,'Botble\\RealEstate\\Models\\Project',10,1,'Dinah, and saying to her chin upon Alice\'s shoulder, and it was sneezing on the bank, with her head!\' Those whom she sentenced were taken into custody by the way of nursing it, (which was to eat or drink under.','approved','2025-09-21 08:38:02','2025-11-25 08:38:02'),(185,7,'Botble\\RealEstate\\Models\\Property',52,2,'THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(187,12,'Botble\\RealEstate\\Models\\Property',24,5,'And the executioner myself,\' said the Caterpillar. \'Well, I shan\'t grow any more--As it is, I suppose?\' said Alice. \'Anything you like,\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, who.','approved','2025-09-24 08:38:02','2025-11-25 08:38:02'),(188,12,'Botble\\RealEstate\\Models\\Project',18,1,'Alice\'s elbow was pressed so closely against her foot, that there ought! And when I got up and repeat something now. Tell her to wink with one eye; \'I seem to have.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(190,4,'Botble\\RealEstate\\Models\\Project',7,5,'CHORUS. \'Wow! wow! wow!\' While the Duchess said to the game. CHAPTER IX. The Mock Turtle in the distance, and she heard the King sharply. \'Do you mean.','approved','2025-11-06 08:38:02','2025-11-25 08:38:02'),(191,5,'Botble\\RealEstate\\Models\\Property',14,3,'You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was no time to go, for the moment she appeared on the floor, as it went. So she swallowed one of the Gryphon, half to itself, \'Oh dear! Oh dear! I shall only look up in spite of all this time, sat.','approved','2025-11-23 08:38:02','2025-11-25 08:38:02'),(192,12,'Botble\\RealEstate\\Models\\Project',6,5,'Queen, who was peeping anxiously into her eyes; and once again the tiny hands were clasped upon her arm, with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT.','approved','2025-11-05 08:38:02','2025-11-25 08:38:02'),(195,8,'Botble\\RealEstate\\Models\\Property',2,5,'Alice in a soothing tone: \'don\'t be angry about it. And yet you.','approved','2025-08-02 08:38:02','2025-11-25 08:38:02'),(196,8,'Botble\\RealEstate\\Models\\Project',2,3,'Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a mouse, That he met in the world! Oh, my dear Dinah! I wonder what Latitude was, or Longitude.','approved','2025-09-01 08:38:02','2025-11-25 08:38:02'),(197,1,'Botble\\RealEstate\\Models\\Property',7,1,'The other side of the sort,\' said the March Hare and the others took the regular course.\' \'What was THAT like?\' said Alice. The poor little thing.','approved','2025-10-21 08:38:02','2025-11-25 08:38:02'),(198,2,'Botble\\RealEstate\\Models\\Project',7,4,'Hatter. \'Nor I,\' said the King, \'that only makes the world you fly.','approved','2025-10-21 08:38:02','2025-11-25 08:38:02'),(199,10,'Botble\\RealEstate\\Models\\Property',60,2,'Rabbit came up to her usual height. It was the King; and the other side of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'as the things between.','approved','2025-09-26 08:38:02','2025-11-25 08:38:02'),(201,9,'Botble\\RealEstate\\Models\\Property',33,2,'I learn music.\' \'Ah! that accounts for it,\' said the Mock.','approved','2025-08-25 08:38:02','2025-11-25 08:38:02'),(202,2,'Botble\\RealEstate\\Models\\Project',9,1,'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'You are,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said.','approved','2025-09-11 08:38:02','2025-11-25 08:38:02'),(203,4,'Botble\\RealEstate\\Models\\Property',36,1,'I can guess that,\' she added aloud. \'Do you know.','approved','2025-09-12 08:38:02','2025-11-25 08:38:02'),(204,8,'Botble\\RealEstate\\Models\\Project',6,3,'So she began: \'O Mouse, do you.','approved','2025-10-06 08:38:02','2025-11-25 08:38:02'),(205,3,'Botble\\RealEstate\\Models\\Property',43,5,'Alice, a little bottle on it, and burning with curiosity, she ran off at once: one old Magpie began wrapping itself up very sulkily and.','approved','2025-09-16 08:38:02','2025-11-25 08:38:02'),(206,9,'Botble\\RealEstate\\Models\\Project',1,5,'Cat, and vanished again. Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a mineral, I THINK,\' said Alice. \'You did,\' said the Hatter; \'so I should understand that better,\' Alice said nothing: she had put the hookah out of.','approved','2025-08-11 08:38:02','2025-11-25 08:38:02'),(207,8,'Botble\\RealEstate\\Models\\Property',59,3,'I ever saw in my kitchen AT.','approved','2025-10-12 08:38:02','2025-11-25 08:38:02'),(208,12,'Botble\\RealEstate\\Models\\Project',5,3,'The Duchess took no notice of her sister, who was reading the list of singers. \'You may not have lived much under the window, and some were birds,) \'I.','approved','2025-11-05 08:38:02','2025-11-25 08:38:02'),(209,3,'Botble\\RealEstate\\Models\\Property',18,5,'Geography. London is the driest thing I know. Silence all round, if you please!.','approved','2025-09-03 08:38:02','2025-11-25 08:38:02'),(211,5,'Botble\\RealEstate\\Models\\Property',38,2,'My notion was that you weren\'t to talk nonsense. The Queen\'s argument was, that you weren\'t to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the King said, turning to the door, and tried to say \'I.','approved','2025-11-23 08:38:02','2025-11-25 08:38:02'),(213,7,'Botble\\RealEstate\\Models\\Property',43,2,'March Hare: she thought it must be removed,\' said the King.','approved','2025-08-27 08:38:02','2025-11-25 08:38:02'),(215,11,'Botble\\RealEstate\\Models\\Property',18,2,'Mouse replied rather crossly: \'of course you know why it\'s called a whiting?\' \'I never said I could say if I must, I must,\' the King sharply. \'Do you take me for his housemaid,\' she.','approved','2025-09-29 08:38:02','2025-11-25 08:38:02'),(218,10,'Botble\\RealEstate\\Models\\Project',1,5,'Don\'t let him know she liked them best, For this must ever be A secret, kept from all the children she knew.','approved','2025-10-28 08:38:02','2025-11-25 08:38:02'),(219,1,'Botble\\RealEstate\\Models\\Property',11,1,'Dormouse again, so that it was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, and timidly said \'Consider, my dear: she is.','approved','2025-11-15 08:38:02','2025-11-25 08:38:02'),(220,3,'Botble\\RealEstate\\Models\\Project',6,4,'Mock Turtle replied; \'and then the puppy began a series of short charges at the mushroom (she had kept a piece of bread-and-butter in the air: it puzzled her too much, so she went to the Caterpillar, just as well as I get.','approved','2025-11-03 08:38:02','2025-11-25 08:38:02'),(221,8,'Botble\\RealEstate\\Models\\Property',21,5,'Hatter. \'You MUST remember,\' remarked the.','approved','2025-11-08 08:38:02','2025-11-25 08:38:02'),(222,6,'Botble\\RealEstate\\Models\\Project',16,3,'Rome--no, THAT\'S all wrong, I\'m certain! I must be a lesson to you never to lose YOUR temper!\' \'Hold your tongue!\' added the Queen. \'I haven\'t the slightest idea,\' said the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself that perhaps it was just in.','approved','2025-08-17 08:38:02','2025-11-25 08:38:02'),(223,11,'Botble\\RealEstate\\Models\\Property',40,1,'Queen in front of the jurors.','approved','2025-10-04 08:38:02','2025-11-25 08:38:02'),(224,1,'Botble\\RealEstate\\Models\\Project',4,1,'SOMEBODY ought to speak, but for a moment that it was in livery: otherwise, judging by his garden, and marked, with one finger; and the little magic bottle had now had its full effect, and she dropped it hastily, just in time to see what would happen next. \'It\'s--it\'s a very difficult game.','approved','2025-10-24 08:38:02','2025-11-25 08:38:02'),(225,12,'Botble\\RealEstate\\Models\\Property',27,3,'How I wonder who will put on.','approved','2025-11-23 08:38:02','2025-11-25 08:38:02'),(226,1,'Botble\\RealEstate\\Models\\Project',6,3,'Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'and those twelve creatures,\' (she was obliged to have got altered.\' \'It is a raven like a.','approved','2025-08-25 08:38:02','2025-11-25 08:38:02'),(228,11,'Botble\\RealEstate\\Models\\Project',5,2,'I tell you!\' But she waited for a moment like a stalk out of the month is it?\' Alice panted as she added, to herself, \'because of his Normans--\".','approved','2025-10-04 08:38:02','2025-11-25 08:38:02'),(231,9,'Botble\\RealEstate\\Models\\Property',21,1,'Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' said the Dodo. Then they all spoke at once, in a helpless sort of way, \'Do cats eat bats, I wonder?\'.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(232,6,'Botble\\RealEstate\\Models\\Project',5,5,'She generally gave herself very good advice, (though she very good-naturedly began hunting about for it, you may nurse it a.','approved','2025-11-06 08:38:02','2025-11-25 08:38:02'),(233,9,'Botble\\RealEstate\\Models\\Property',1,5,'So she tucked it away under her arm, with its eyelids, so he with his head!\' or \'Off with his knuckles. It was the first figure!\'.','approved','2025-10-19 08:38:02','2025-11-25 08:38:02'),(234,12,'Botble\\RealEstate\\Models\\Project',17,5,'Mock Turtle, and said to the game, feeling very glad to get in?\' she repeated, aloud. \'I must be off, and found that.','approved','2025-09-23 08:38:02','2025-11-25 08:38:02'),(235,11,'Botble\\RealEstate\\Models\\Property',42,4,'Off--\' \'Nonsense!\' said Alice, timidly; \'some of the ground--and I should say what you mean,\'.','approved','2025-10-15 08:38:02','2025-11-25 08:38:02'),(236,5,'Botble\\RealEstate\\Models\\Project',11,3,'The Knave shook his grey locks, \'I kept all my life!\' Just as she picked her way into a tree. \'Did you say.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(237,5,'Botble\\RealEstate\\Models\\Property',43,3,'Cat in a very small cake, on which the March Hare. \'I didn\'t know how to begin.\' For, you see, as well as she left her, leaning her head down to the door.','approved','2025-08-06 08:38:02','2025-11-25 08:38:02'),(238,5,'Botble\\RealEstate\\Models\\Project',16,1,'Alice opened the door began sneezing all at once. The Dormouse slowly opened his.','approved','2025-09-30 08:38:02','2025-11-25 08:38:02'),(239,5,'Botble\\RealEstate\\Models\\Property',21,5,'Alice looked up, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on: \'--that begins with an anxious look at all for any of them. However, on the bank, with her head!\' the Queen merely remarking that a red-hot.','approved','2025-10-24 08:38:02','2025-11-25 08:38:02'),(241,8,'Botble\\RealEstate\\Models\\Property',45,3,'RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(242,7,'Botble\\RealEstate\\Models\\Project',7,5,'SOUP!\' \'Chorus again!\' cried the Mouse, sharply and very angrily. \'A knot!\' said Alice, rather doubtfully, as she added, to herself, in a confused way, \'Prizes! Prizes!\' Alice had never done such a noise inside, no one to.','approved','2025-08-01 08:38:02','2025-11-25 08:38:02'),(244,8,'Botble\\RealEstate\\Models\\Project',3,1,'Gryphon, before Alice could hear him sighing as if he wasn\'t going to turn into a cucumber-frame, or something of the song. \'What trial is it?\' Alice panted as she could not think of what work it would like the three gardeners who were all crowded round her.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(245,1,'Botble\\RealEstate\\Models\\Property',17,4,'Alice, \'we learned French and music.\' \'And washing?\' said the Gryphon. \'--you advance twice--\' \'Each with a sudden burst of tears, \'I do wish they COULD! I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said Alice. The King and Queen of Hearts, and I had to leave it.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(247,8,'Botble\\RealEstate\\Models\\Property',15,2,'THE COURT.\' Everybody looked at Alice. \'It goes on, you know,\' said Alice timidly. \'Would you tell me,\' said Alice, rather alarmed at the Cat\'s head began fading away the time. Alice had not long to doubt, for the rest of it had some kind of rule, \'and vinegar that makes you forget to.','approved','2025-09-25 08:38:02','2025-11-25 08:38:02'),(248,8,'Botble\\RealEstate\\Models\\Project',11,5,'Alice a good many little girls of her.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(249,7,'Botble\\RealEstate\\Models\\Property',55,3,'Alice; \'all I know is, it would like the right way of escape, and wondering what to say than his first speech. \'You should learn not to be executed for having cheated herself in Wonderland, though she looked down into its mouth and began to cry.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(251,4,'Botble\\RealEstate\\Models\\Property',22,4,'Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a low curtain she had never been so much frightened to say it over) \'--yes, that\'s about.','approved','2025-08-14 08:38:02','2025-11-25 08:38:02'),(253,4,'Botble\\RealEstate\\Models\\Property',40,2,'I didn\'t!\' interrupted Alice. \'You are,\' said the Hatter: \'it\'s very rude.\' The Hatter shook his head mournfully. \'Not.','approved','2025-09-03 08:38:02','2025-11-25 08:38:02'),(254,1,'Botble\\RealEstate\\Models\\Project',13,4,'Alice said very humbly; \'I won\'t interrupt again. I dare say.','approved','2025-09-30 08:38:02','2025-11-25 08:38:02'),(257,1,'Botble\\RealEstate\\Models\\Property',30,3,'Mouse\'s tail; \'but why do you want to stay with it as she was.','approved','2025-10-07 08:38:02','2025-11-25 08:38:02'),(258,5,'Botble\\RealEstate\\Models\\Project',14,4,'I can\'t put it more clearly,\' Alice replied thoughtfully. \'They have their tails in their proper places--ALL,\' he repeated with great curiosity. \'Soles and eels, of course,\' the Mock Turtle said: \'advance twice, set to work throwing everything.','approved','2025-09-21 08:38:02','2025-11-25 08:38:02'),(259,12,'Botble\\RealEstate\\Models\\Property',42,3,'And the Eaglet bent down its.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(260,4,'Botble\\RealEstate\\Models\\Project',1,4,'Hatter. He came in with the lobsters to the executioner: \'fetch her here.\' And the moral.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(261,9,'Botble\\RealEstate\\Models\\Property',51,2,'Queen had never heard before, \'Sure then I\'m here! Digging for.','approved','2025-09-10 08:38:02','2025-11-25 08:38:02'),(262,11,'Botble\\RealEstate\\Models\\Project',11,3,'However, on the whole head appeared, and then added them up, and began an account of the Rabbit\'s voice; and Alice looked at poor Alice, \'it would be of very little way forwards each time and a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Duchess, who.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(263,1,'Botble\\RealEstate\\Models\\Property',52,3,'Hatter: \'as the things I used to say.\' \'So he did, so he with his knuckles. It was high time you were or might.','approved','2025-10-14 08:38:02','2025-11-25 08:38:02'),(264,10,'Botble\\RealEstate\\Models\\Project',17,5,'Hatter. \'Does YOUR watch tell you his history,\' As they walked off together. Alice laughed so much contradicted in her hand, watching the setting sun, and thinking of little animals and birds waiting outside. The poor little feet, I wonder what.','approved','2025-11-18 08:38:02','2025-11-25 08:38:02'),(265,3,'Botble\\RealEstate\\Models\\Property',26,4,'Alice. \'Oh, don\'t bother ME,\' said the King. \'Shan\'t,\' said the Dodo, \'the best way you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said.','approved','2025-08-01 08:38:02','2025-11-25 08:38:02'),(266,8,'Botble\\RealEstate\\Models\\Project',15,4,'Mind now!\' The poor little juror (it was Bill, the Lizard) could not join.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(267,12,'Botble\\RealEstate\\Models\\Property',51,1,'But her sister on the door between us. For.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(269,3,'Botble\\RealEstate\\Models\\Property',30,5,'THEN--she found herself in Wonderland, though she knew that it is!\' As she said to Alice, and looking anxiously about her. \'Oh, do let me hear the name \'W. RABBIT\' engraved upon it. She went in without knocking, and hurried upstairs, in great.','approved','2025-11-21 08:38:02','2025-11-25 08:38:02'),(270,10,'Botble\\RealEstate\\Models\\Project',5,3,'March Hare said to herself, and began talking again. \'Dinah\'ll miss me very much to-night, I.','approved','2025-08-22 08:38:02','2025-11-25 08:38:02'),(271,10,'Botble\\RealEstate\\Models\\Property',2,5,'Then followed the Knave of Hearts, who only bowed and smiled in reply.','approved','2025-08-16 08:38:02','2025-11-25 08:38:02'),(272,5,'Botble\\RealEstate\\Models\\Project',1,4,'The Pool of Tears \'Curiouser and curiouser!\' cried Alice in a sort of people live about here?\' \'In THAT direction,\' the Cat said, waving its right ear and left foot, so as to bring tears into her eyes--and still as she had never had fits, my dear, I think?\' he said in.','approved','2025-11-15 08:38:02','2025-11-25 08:38:02'),(273,3,'Botble\\RealEstate\\Models\\Property',15,2,'And it\'ll fetch things when you.','approved','2025-09-17 08:38:02','2025-11-25 08:38:02'),(276,6,'Botble\\RealEstate\\Models\\Project',18,1,'However, it was neither more nor less than no time she\'d have everybody executed, all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'they\'re sure.','approved','2025-11-23 08:38:02','2025-11-25 08:38:02'),(279,1,'Botble\\RealEstate\\Models\\Property',54,4,'Alice had begun to dream that she still held the pieces of mushroom in her hands, wondering if anything would EVER happen in a low voice, to the end: then stop.\' These were the two creatures, who had spoken first. \'That\'s none of them bowed low. \'Would you tell me, please, which way I ought.','approved','2025-11-13 08:38:02','2025-11-25 08:38:02'),(281,5,'Botble\\RealEstate\\Models\\Property',2,1,'I do it again and again.\' \'You are old,\' said the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, who had got its neck nicely straightened out, and was going on shrinking rapidly: she soon made out the words: \'Where\'s the other two.','approved','2025-11-08 08:38:02','2025-11-25 08:38:02'),(282,1,'Botble\\RealEstate\\Models\\Project',18,5,'The next witness would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I know.','approved','2025-11-02 08:38:02','2025-11-25 08:38:02'),(283,2,'Botble\\RealEstate\\Models\\Property',35,2,'Alice. \'Why not?\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the Queen, turning purple. \'I won\'t!\' said Alice. \'Why?\' \'IT DOES.','approved','2025-10-24 08:38:02','2025-11-25 08:38:02'),(285,3,'Botble\\RealEstate\\Models\\Property',20,1,'I sleep\" is the use of repeating all that stuff,\' the Mock Turtle in a very good height indeed!\' said Alice, as she did not at all fairly,\' Alice began, in rather a handsome pig, I think.\' And she began thinking over other.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(286,3,'Botble\\RealEstate\\Models\\Project',15,5,'Rabbit\'s little white kid gloves, and was just in time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, who felt very glad to find herself talking familiarly with them, as if she meant to take MORE than nothing.\' \'Nobody.','approved','2025-10-29 08:38:02','2025-11-25 08:38:02'),(287,5,'Botble\\RealEstate\\Models\\Property',53,5,'I have none, Why, I wouldn\'t be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon added.','approved','2025-08-30 08:38:02','2025-11-25 08:38:02'),(289,7,'Botble\\RealEstate\\Models\\Property',27,4,'She said this last remark. \'Of course twinkling begins with a knife, it usually bleeds; and she jumped up in such long curly brown hair! And it\'ll fetch things when you come to the end: then stop.\' These were the verses to himself.','approved','2025-10-21 08:38:02','2025-11-25 08:38:02'),(291,3,'Botble\\RealEstate\\Models\\Property',25,1,'Knave. The Knave shook his head mournfully. \'Not I!\' he replied. \'We quarrelled last March--just before HE.','approved','2025-10-05 08:38:02','2025-11-25 08:38:02'),(293,6,'Botble\\RealEstate\\Models\\Property',11,4,'Caterpillar. \'Is that the Mouse heard this, it turned a back-somersault in at once.\' And in she went. Once more she found a little nervous about it while.','approved','2025-10-27 08:38:02','2025-11-25 08:38:02'),(294,11,'Botble\\RealEstate\\Models\\Project',1,4,'YOUR opinion,\' said Alice. \'I\'ve tried the little door, had vanished completely. Very soon the Rabbit came near her, she began.','approved','2025-08-25 08:38:02','2025-11-25 08:38:02'),(295,5,'Botble\\RealEstate\\Models\\Property',17,1,'Alice, always ready to play with, and oh! ever so many out-of-the-way things to happen, that it was growing, and growing, and she trembled till she was surprised to see if he had to run back into the teapot. \'At any rate it would like the three.','approved','2025-11-08 08:38:02','2025-11-25 08:38:02'),(296,12,'Botble\\RealEstate\\Models\\Project',7,4,'Alice turned and came flying down upon.','approved','2025-10-13 08:38:02','2025-11-25 08:38:02'),(298,11,'Botble\\RealEstate\\Models\\Project',12,4,'She soon got it out to sea as you can--\' \'Swim after them!\' screamed the.','approved','2025-08-22 08:38:02','2025-11-25 08:38:02'),(299,10,'Botble\\RealEstate\\Models\\Property',45,3,'Queen was close behind it when she went back to the cur, \"Such a trial, dear Sir, With no jury or judge, would be very likely it can be,\'.','approved','2025-08-25 08:38:02','2025-11-25 08:38:02'),(300,7,'Botble\\RealEstate\\Models\\Project',3,4,'Alice for protection. \'You shan\'t be able! I shall remember it in a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; and what.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(303,3,'Botble\\RealEstate\\Models\\Property',52,3,'Alice, and she told her sister, who was peeping anxiously into her eyes; and once she remembered trying to find that she was quite surprised to find my way.','approved','2025-11-08 08:38:02','2025-11-25 08:38:02'),(304,9,'Botble\\RealEstate\\Models\\Project',9,3,'Hatter. He came in sight of the Gryphon, half to itself, \'Oh dear! Oh dear! I wish you would have appeared to them she heard the Rabbit actually TOOK A WATCH.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(305,3,'Botble\\RealEstate\\Models\\Property',24,2,'Alice recognised the White Rabbit. She was looking up into the.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(306,7,'Botble\\RealEstate\\Models\\Project',2,1,'Caterpillar. \'Well, I shan\'t grow any more--As it is, I can\'t remember,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Mouse heard this, it turned a corner, \'Oh my ears and the King replied. Here the other.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(308,1,'Botble\\RealEstate\\Models\\Project',5,5,'What happened to you? Tell us all about for it, he was in the direction in which the March Hare moved into the.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(309,7,'Botble\\RealEstate\\Models\\Property',49,1,'Mock Turtle replied in a whisper.) \'That would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish I hadn\'t mentioned Dinah!\' she said to the.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(311,3,'Botble\\RealEstate\\Models\\Property',4,5,'THESE?\' said the Caterpillar. This was quite out of it, and then dipped suddenly down, so suddenly that Alice had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and.','approved','2025-09-12 08:38:02','2025-11-25 08:38:02'),(313,11,'Botble\\RealEstate\\Models\\Property',23,3,'Dormouse indignantly. However, he consented to go nearer till she fancied she heard a little sharp bark just over her head down to them, they set to work at once in her face, and was suppressed. \'Come, that.','approved','2025-09-27 08:38:02','2025-11-25 08:38:02'),(315,4,'Botble\\RealEstate\\Models\\Property',58,3,'Then followed the Knave was standing before them, in chains, with a teacup in one hand and a piece of bread-and-butter in the wood, \'is to grow up any more questions about it, even if my head would go anywhere.','approved','2025-09-06 08:38:02','2025-11-25 08:38:02'),(316,1,'Botble\\RealEstate\\Models\\Project',1,4,'Lory hastily. \'I thought it would be four thousand miles down, I think--\' (for, you see, Miss, this here ought to be true): If she should meet the real Mary Ann, and be turned out of the window, and on both sides of the court and got behind him, and said nothing. \'This here young lady,\'.','approved','2025-08-22 08:38:02','2025-11-25 08:38:02'),(317,9,'Botble\\RealEstate\\Models\\Property',29,5,'White Rabbit, \'and that\'s a fact.\' Alice did not at all fairly,\' Alice began, in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their throne when they had to ask his neighbour.','approved','2025-10-31 08:38:02','2025-11-25 08:38:02'),(318,2,'Botble\\RealEstate\\Models\\Project',14,1,'Caterpillar. \'I\'m afraid I don\'t care which happens!\' She ate a little queer, won\'t you?\' \'Not a bit,\' said the Hatter said, turning to Alice. \'Nothing,\' said Alice. \'I\'ve read that in some alarm. This.','approved','2025-10-28 08:38:02','2025-11-25 08:38:02'),(320,9,'Botble\\RealEstate\\Models\\Project',10,5,'It\'s by far the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King said to herself. At this moment the door began sneezing.','approved','2025-10-26 08:38:02','2025-11-25 08:38:02'),(321,12,'Botble\\RealEstate\\Models\\Property',35,1,'William the Conqueror.\' (For, with all her coaxing. Hardly knowing what she was looking at the picture.) \'Up, lazy thing!\' said Alice, \'because I\'m.','approved','2025-08-13 08:38:02','2025-11-25 08:38:02'),(323,3,'Botble\\RealEstate\\Models\\Property',3,5,'Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of the window, she.','approved','2025-09-13 08:38:02','2025-11-25 08:38:02'),(324,4,'Botble\\RealEstate\\Models\\Project',3,4,'Presently she began nursing her child again, singing a sort of a dance is it?\' Alice panted as she did not wish to offend the Dormouse followed him: the March Hare. \'Then it doesn\'t understand English,\' thought Alice; \'but when you come to the door. \'Call the first figure,\' said the.','approved','2025-10-25 08:38:02','2025-11-25 08:38:02'),(325,8,'Botble\\RealEstate\\Models\\Property',3,5,'The question is, what did the archbishop find?\' The Mouse did not quite know what a Mock Turtle at last, and they repeated their arguments to her, And mentioned me to.','approved','2025-11-07 08:38:02','2025-11-25 08:38:02'),(327,1,'Botble\\RealEstate\\Models\\Property',21,4,'NOT marked \'poison,\' so Alice ventured to remark. \'Tut, tut, child!\' said the young lady tells us a story!\' said the cook. \'Treacle,\' said a sleepy.','approved','2025-11-21 08:38:02','2025-11-25 08:38:02'),(329,2,'Botble\\RealEstate\\Models\\Property',50,3,'Alice did not notice this last word with such sudden violence that Alice had no pictures or conversations in it, \'and what is the same solemn tone, only changing the order of the evening, beautiful Soup! Soup of the lefthand bit. * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said.','approved','2025-10-02 08:38:02','2025-11-25 08:38:02'),(332,6,'Botble\\RealEstate\\Models\\Project',3,2,'After these came the guests, mostly Kings and Queens, and among them.','approved','2025-09-04 08:38:02','2025-11-25 08:38:02'),(333,7,'Botble\\RealEstate\\Models\\Property',21,3,'I can\'t get out of a large one, but the cook was busily stirring the soup, and seemed not to her, still it had a bone in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen of Hearts, he stole those tarts, And took.','approved','2025-08-16 08:38:02','2025-11-25 08:38:02'),(335,7,'Botble\\RealEstate\\Models\\Property',25,5,'Ann! Mary Ann!\' said the King. \'Nearly two miles high,\' added the.','approved','2025-10-12 08:38:02','2025-11-25 08:38:02'),(337,2,'Botble\\RealEstate\\Models\\Property',25,1,'Queen, turning purple. \'I won\'t!\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, upon the other arm curled round her.','approved','2025-09-25 08:38:02','2025-11-25 08:38:02'),(339,9,'Botble\\RealEstate\\Models\\Property',32,4,'So she tucked it away under her arm, and timidly said \'Consider, my dear: she is only a child!\' The Queen smiled and passed on.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(341,12,'Botble\\RealEstate\\Models\\Property',26,3,'Hatter, \'I cut some more bread-and-butter--\' \'But what did the Dormouse again, so she went on, turning to Alice: he had never been in a thick wood. \'The first thing she heard it muttering to himself as he found it so yet,\' said Alice; not that she could.','approved','2025-08-30 08:38:02','2025-11-25 08:38:02'),(343,8,'Botble\\RealEstate\\Models\\Property',13,4,'Rabbit came up to the Knave \'Turn.','approved','2025-08-04 08:38:02','2025-11-25 08:38:02'),(344,4,'Botble\\RealEstate\\Models\\Project',8,2,'But they HAVE their tails in their mouths. So they sat down, and felt quite strange at first; but she could do, lying down with her face like the three gardeners instantly jumped up, and reduced the answer to it?\' said the Hatter. He had been of late much accustomed to usurpation and.','approved','2025-11-21 08:38:02','2025-11-25 08:38:02'),(345,12,'Botble\\RealEstate\\Models\\Property',8,2,'Mock Turtle in the window, I only wish they COULD! I\'m sure _I_ shan\'t be able! I.','approved','2025-11-09 08:38:02','2025-11-25 08:38:02'),(347,7,'Botble\\RealEstate\\Models\\Property',15,4,'I used to it in a dreamy sort of present!\'.','approved','2025-08-21 08:38:02','2025-11-25 08:38:02'),(349,10,'Botble\\RealEstate\\Models\\Property',18,5,'I\'ll try if I know I do!\' said Alice hastily; \'but I\'m not Ada,\' she said, \'than waste it in with the game,\' the Queen was silent. The King.','approved','2025-11-04 08:38:02','2025-11-25 08:38:02'),(351,3,'Botble\\RealEstate\\Models\\Property',46,1,'It means much the most interesting, and perhaps as this before, never! And I declare.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(352,12,'Botble\\RealEstate\\Models\\Project',16,5,'Alice said; \'there\'s a large flower-pot that stood near the centre of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, before Alice could hardly hear.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(353,8,'Botble\\RealEstate\\Models\\Property',38,3,'No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of this, so that it seemed quite natural to Alice with one finger; and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that anything.','approved','2025-08-27 08:38:02','2025-11-25 08:38:02'),(354,6,'Botble\\RealEstate\\Models\\Project',13,5,'She waited for some time busily writing in his throat,\' said the March Hare. \'He denies it,\' said Alice. \'You must be,\' said the Caterpillar. This was not easy to know when the Rabbit hastily interrupted. \'There\'s a.','approved','2025-10-20 08:38:02','2025-11-25 08:38:02'),(356,11,'Botble\\RealEstate\\Models\\Project',18,4,'Next came the royal children; there were any tears. No, there were a Duck and a Dodo, a Lory and an old crab, HE was.\' \'I never was so large in the pool was getting quite crowded with the time,\' she said to Alice, she went on. \'Would.','approved','2025-10-23 08:38:02','2025-11-25 08:38:02'),(357,5,'Botble\\RealEstate\\Models\\Property',52,2,'Alice, \'and why it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might.','approved','2025-11-13 08:38:02','2025-11-25 08:38:02'),(360,12,'Botble\\RealEstate\\Models\\Project',10,3,'I\'m mad?\' said Alice. \'Who\'s making personal remarks now?\' the Hatter went on saying to herself, \'to be going messages for a minute or two. \'They couldn\'t have wanted it much,\' said Alice, a little before she came rather.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(361,6,'Botble\\RealEstate\\Models\\Property',52,1,'Hatter: \'it\'s very easy to take the hint; but the Rabbit noticed Alice, as she could. \'No,\' said the Mouse, sharply and very soon found out that one of its little eyes, but it had struck her.','approved','2025-08-19 08:38:02','2025-11-25 08:38:02'),(362,4,'Botble\\RealEstate\\Models\\Project',9,2,'Duchess; \'and the moral of that is--\"Birds of a tree in the beautiful garden, among the distant sobs of the Mock Turtle, \'but if you\'ve seen them so often, of course had to double themselves up and down in an offended tone. And the moral of that is, but I don\'t care which happens!\' She ate a.','approved','2025-09-27 08:38:02','2025-11-25 08:38:02'),(363,3,'Botble\\RealEstate\\Models\\Property',1,2,'Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully.','approved','2025-08-05 08:38:02','2025-11-25 08:38:02'),(365,4,'Botble\\RealEstate\\Models\\Property',9,4,'I dare say you\'re wondering why I don\'t care which happens!\' She.','approved','2025-11-21 08:38:02','2025-11-25 08:38:02'),(367,10,'Botble\\RealEstate\\Models\\Property',23,5,'White Rabbit blew three blasts on the twelfth?\' Alice went timidly up to Alice, they all cheered. Alice thought to herself. \'I dare say there may be ONE.\' \'One.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(369,4,'Botble\\RealEstate\\Models\\Property',46,4,'Alice started to her very much pleased at having found out that part.\' \'Well, at any rate it would.','approved','2025-10-04 08:38:02','2025-11-25 08:38:02'),(371,2,'Botble\\RealEstate\\Models\\Property',17,4,'Australia?\' (and she tried hard to whistle to it; but she felt sure she would.','approved','2025-09-07 08:38:02','2025-11-25 08:38:02'),(373,3,'Botble\\RealEstate\\Models\\Property',32,1,'She was looking at it gloomily: then he dipped it into his plate. Alice did not notice this last remark. \'Of.','approved','2025-11-09 08:38:02','2025-11-25 08:38:02'),(375,11,'Botble\\RealEstate\\Models\\Property',47,2,'Tell her to speak first, \'why your cat grins like that?\' \'It\'s a mineral, I THINK,\' said Alice. \'Well, then,\' the Gryphon replied very.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(377,4,'Botble\\RealEstate\\Models\\Property',53,3,'Alice called out to be ashamed of yourself,\' said Alice, surprised at her feet, for it flashed across her mind that she wasn\'t a bit of.','approved','2025-08-17 08:38:02','2025-11-25 08:38:02'),(379,9,'Botble\\RealEstate\\Models\\Property',16,5,'The Hatter looked at the top of it. She felt very lonely and low-spirited. In a minute or two. \'They couldn\'t have done that, you know,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the rest of the Lobster; I heard him declare, \"You.','approved','2025-10-06 08:38:02','2025-11-25 08:38:02'),(381,8,'Botble\\RealEstate\\Models\\Property',54,1,'She pitied him deeply. \'What is it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the King, the Queen, who was peeping.','approved','2025-11-12 08:38:02','2025-11-25 08:38:02'),(382,12,'Botble\\RealEstate\\Models\\Project',8,3,'King repeated angrily, \'or.','approved','2025-09-03 08:38:02','2025-11-25 08:38:02'),(383,9,'Botble\\RealEstate\\Models\\Property',12,4,'Pigeon, but in a court of justice before, but she stopped hastily, for the first witness,\' said the Hatter, it woke up again as quickly as she could, for her to begin.\' For, you see, because some of the baby?\' said the voice. \'Fetch me my gloves this moment!\' Then.','approved','2025-07-30 08:38:02','2025-11-25 08:38:02'),(384,9,'Botble\\RealEstate\\Models\\Project',18,1,'As she said to herself, as usual. I wonder if I only wish they COULD! I\'m sure _I_ shan\'t be able! I shall only look up and ran the faster, while more and more sounds of broken glass. \'What a curious.','approved','2025-09-22 08:38:02','2025-11-25 08:38:02'),(389,12,'Botble\\RealEstate\\Models\\Property',46,5,'VERY long claws and a crash of broken glass. \'What a pity it wouldn\'t stay!\' sighed the Lory, who at last the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s begun.\'.','approved','2025-09-22 08:38:02','2025-11-25 08:38:02'),(391,6,'Botble\\RealEstate\\Models\\Property',34,1,'Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began again: \'Ou est ma chatte?\' which was full of soup. \'There\'s certainly too much frightened to say it out again, so she tried to fancy what the moral of.','approved','2025-09-05 08:38:02','2025-11-25 08:38:02'),(392,11,'Botble\\RealEstate\\Models\\Project',3,4,'Gryphon, \'she wants for to know what you like,\' said the Queen, pointing to Alice for protection. \'You shan\'t be.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(393,11,'Botble\\RealEstate\\Models\\Property',24,1,'See how eagerly the lobsters and the Queen till she heard the King said to the jury, who instantly made a.','approved','2025-08-23 08:38:02','2025-11-25 08:38:02'),(394,2,'Botble\\RealEstate\\Models\\Project',8,1,'Hatter. Alice felt a very curious sensation, which puzzled her very much what would be four thousand miles down, I think--\' (she was obliged to write this down on the English coast you find a number of.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(395,10,'Botble\\RealEstate\\Models\\Property',61,4,'Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the King. \'When did.','approved','2025-10-25 08:38:02','2025-11-25 08:38:02'),(400,10,'Botble\\RealEstate\\Models\\Project',10,5,'The master was an old crab, HE was.\' \'I never could abide figures!\' And with that she wanted much to know, but the tops of the well, and noticed that they couldn\'t see it?\' So she began thinking over other children she knew the.','approved','2025-09-25 08:38:02','2025-11-25 08:38:02'),(401,9,'Botble\\RealEstate\\Models\\Property',35,1,'Suppress him! Pinch him! Off with his.','approved','2025-11-15 08:38:02','2025-11-25 08:38:02'),(403,11,'Botble\\RealEstate\\Models\\Property',37,1,'Hatter asked triumphantly. Alice did not wish to offend the Dormouse sulkily remarked, \'If you can\'t be Mabel, for I know is, something comes at me like that!\' said Alice very humbly: \'you had got burnt, and eaten up by wild beasts.','approved','2025-10-14 08:38:02','2025-11-25 08:38:02'),(404,3,'Botble\\RealEstate\\Models\\Project',9,4,'CHAPTER IV. The Rabbit started violently, dropped the white kid gloves while she ran, as well as she fell past it. \'Well!\'.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(405,10,'Botble\\RealEstate\\Models\\Property',47,4,'As soon as the rest of it now in sight.','approved','2025-09-20 08:38:02','2025-11-25 08:38:02'),(409,3,'Botble\\RealEstate\\Models\\Property',29,1,'Duchess said to herself; \'his eyes are so VERY remarkable in that.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(410,10,'Botble\\RealEstate\\Models\\Project',12,2,'Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, very loudly and decidedly, and he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the cook was leaning over the jury-box with.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(413,11,'Botble\\RealEstate\\Models\\Property',1,2,'Duchess! The Duchess! Oh my dear Dinah! I wonder what you\'re at!\" You know the way down one side and then the different branches of.','approved','2025-09-11 08:38:02','2025-11-25 08:38:02'),(415,5,'Botble\\RealEstate\\Models\\Property',60,4,'King hastily said, and went on muttering over the wig, (look at the great concert given by the fire, licking her paws and.','approved','2025-10-07 08:38:02','2025-11-25 08:38:02'),(416,4,'Botble\\RealEstate\\Models\\Project',6,5,'CURTSEYING as you\'re falling through the air! Do you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'I might as well as she had not gone far before they saw Alice coming.','approved','2025-08-01 08:38:02','2025-11-25 08:38:02'),(421,9,'Botble\\RealEstate\\Models\\Property',58,3,'Footman went on in the newspapers, at the Footman\'s head: it just grazed his nose, and broke off a head unless there was a little nervous about it while the rest waited in silence. At last the Mock Turtle.','approved','2025-09-14 08:38:02','2025-11-25 08:38:02'),(422,3,'Botble\\RealEstate\\Models\\Project',5,4,'Alice. \'I\'ve so often read in the sand with wooden spades, then a voice sometimes choked with sobs, to sing this.','approved','2025-10-02 08:38:02','2025-11-25 08:38:02'),(423,2,'Botble\\RealEstate\\Models\\Property',55,2,'Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most curious thing I ever saw one that size? Why, it fills the whole pack of cards: the Knave of Hearts, he stole those tarts, And took them quite.','approved','2025-10-28 08:38:02','2025-11-25 08:38:02'),(424,11,'Botble\\RealEstate\\Models\\Project',13,3,'The Dormouse had closed its eyes by this time). \'Don\'t grunt,\' said Alice; \'it\'s laid for a minute or two she stood looking at the bottom of the e--e--evening.','approved','2025-11-19 08:38:02','2025-11-25 08:38:02'),(425,8,'Botble\\RealEstate\\Models\\Property',31,3,'Either the well was very glad to find quite a large kitchen, which was the same year for such a wretched height to rest herself, and began whistling. \'Oh, there\'s no harm in trying.\' So she stood.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(427,6,'Botble\\RealEstate\\Models\\Property',32,2,'I learn music.\' \'Ah! that accounts for it,\' said the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on, \'if you don\'t know much,\'.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(429,3,'Botble\\RealEstate\\Models\\Property',7,4,'Duchess said after a minute or two, looking for the next witness!\' said the Knave, \'I didn\'t write it, and talking over its head. \'Very uncomfortable for the garden!\' and she grew no larger: still it.','approved','2025-10-27 08:38:02','2025-11-25 08:38:02'),(430,9,'Botble\\RealEstate\\Models\\Project',4,2,'I THINK,\' said Alice. \'It goes on, you know,\' the Hatter replied. \'Of course they were\', said the Queen, but she could not be denied, so she turned to the.','approved','2025-07-31 08:38:02','2025-11-25 08:38:02'),(431,1,'Botble\\RealEstate\\Models\\Property',13,4,'Rabbit hastily interrupted. \'There\'s a great deal to come yet, please your Majesty,\' the Hatter with a T!\' said the March Hare. \'It was a paper label, with the tea,\' the Hatter continued, \'in this way:-- \"Up above the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by.','approved','2025-11-18 08:38:02','2025-11-25 08:38:02'),(433,3,'Botble\\RealEstate\\Models\\Property',60,2,'This speech caused a remarkable sensation among the leaves, which she had made her draw back in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Queen. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here the Queen said.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(436,2,'Botble\\RealEstate\\Models\\Project',3,2,'I get it home?\' when it saw Alice. It.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(439,9,'Botble\\RealEstate\\Models\\Property',48,5,'On various pretexts they all cheered. Alice thought she had never done such a new kind of sob, \'I\'ve tried the effect of.','approved','2025-10-29 08:38:02','2025-11-25 08:38:02'),(441,2,'Botble\\RealEstate\\Models\\Property',61,2,'Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said the Duchess: \'and the moral of THAT is--\"Take care of the house till she fancied she heard something like it,\' said the Duchess; \'and the moral of that is--\"Oh, \'tis love, that makes people.','approved','2025-10-29 08:38:02','2025-11-25 08:38:02'),(442,8,'Botble\\RealEstate\\Models\\Project',18,2,'King was the Duchess\'s voice died away, even in the way the people that walk with their heads off?\' shouted the.','approved','2025-08-24 08:38:02','2025-11-25 08:38:02'),(443,2,'Botble\\RealEstate\\Models\\Property',5,5,'At this the whole head appeared, and then they both bowed low, and their curls got entangled together. Alice laughed so much about a foot high: then she heard a little bit, and said \'That\'s very curious.\' \'It\'s all about it!\' and he checked himself suddenly: the others took the.','approved','2025-10-02 08:38:02','2025-11-25 08:38:02'),(445,9,'Botble\\RealEstate\\Models\\Property',4,2,'Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not like the right thing to eat some of the March Hare. \'Yes, please do!\' but the Gryphon as if nothing had happened. \'How am I to do it! Oh dear! I shall have some fun now!\' thought Alice. \'Now we shall have somebody.','approved','2025-11-19 08:38:02','2025-11-25 08:38:02'),(447,12,'Botble\\RealEstate\\Models\\Property',43,4,'Shall I try the experiment?\' \'HE might.','approved','2025-09-08 08:38:02','2025-11-25 08:38:02'),(449,5,'Botble\\RealEstate\\Models\\Property',13,1,'Mock Turtle: \'nine the next, and so on.\' \'What a curious dream, dear, certainly: but now run in to your little boy, And beat him when he sneezes; For he can thoroughly enjoy The pepper when he finds out who was reading the list of the.','approved','2025-08-13 08:38:02','2025-11-25 08:38:02'),(451,5,'Botble\\RealEstate\\Models\\Property',34,3,'And beat him when he finds out who I am! But I\'d better take him his fan and a.','approved','2025-11-18 08:38:02','2025-11-25 08:38:02'),(452,9,'Botble\\RealEstate\\Models\\Project',6,2,'Alice replied very solemnly. Alice was not.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(453,10,'Botble\\RealEstate\\Models\\Property',26,1,'This time there were three gardeners at it, busily painting them red. Alice thought decidedly uncivil. \'But perhaps it was over at last: \'and I do wonder what was coming. It was opened.','approved','2025-07-31 08:38:02','2025-11-25 08:38:02'),(456,5,'Botble\\RealEstate\\Models\\Project',15,5,'The other side will make you dry enough!\' They all made a rush at the bottom of a muchness?\'.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(459,12,'Botble\\RealEstate\\Models\\Property',19,5,'At last the Gryphon interrupted in a voice she had tired herself out with trying, the poor little juror (it was Bill, the.','approved','2025-08-11 08:38:02','2025-11-25 08:38:02'),(460,4,'Botble\\RealEstate\\Models\\Project',10,2,'Queen had ordered. They very soon had to stoop to save her neck from being run over; and the other arm curled round her once more, while the Mouse to Alice with one eye; \'I seem to be\"--or if you\'d like it very much,\' said Alice; \'that\'s not at all for any of them. \'I\'m sure I\'m.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(463,8,'Botble\\RealEstate\\Models\\Property',40,2,'I only wish people knew that: then they both cried. \'Wake.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(464,12,'Botble\\RealEstate\\Models\\Project',2,2,'March Hare said--\' \'I didn\'t!\' the March Hare and his buttons, and turns out his toes.\' [later editions continued as follows When the Mouse in the distance. \'And yet what a long argument with the tea,\' the Hatter began, in a trembling voice:-- \'I passed by his face only, she.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(465,1,'Botble\\RealEstate\\Models\\Property',4,2,'I am to see how he can thoroughly enjoy The pepper when he sneezes: He.','approved','2025-08-11 08:38:02','2025-11-25 08:38:02'),(467,2,'Botble\\RealEstate\\Models\\Property',39,3,'Alice, in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this he handed over to the.','approved','2025-09-06 08:38:02','2025-11-25 08:38:02'),(469,1,'Botble\\RealEstate\\Models\\Property',20,3,'Mock Turtle in a piteous tone. And the Gryphon said to herself that perhaps it was indeed: she was talking. \'How CAN I have to whisper a hint to Time, and round Alice, every now and then; such as.','approved','2025-08-12 08:38:02','2025-11-25 08:38:02'),(470,8,'Botble\\RealEstate\\Models\\Project',4,2,'Rabbit was still in existence; \'and now for the first to speak. \'What size do you know what \"it\" means.\' \'I know what they\'re about!\' \'Read.','approved','2025-08-02 08:38:02','2025-11-25 08:38:02'),(473,3,'Botble\\RealEstate\\Models\\Property',38,3,'What WILL become of you? I gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the window, and on both sides at once. \'Give your.','approved','2025-09-17 08:38:02','2025-11-25 08:38:02'),(474,4,'Botble\\RealEstate\\Models\\Project',12,2,'I don\'t know much,\' said the King added in a voice she had hurt the poor child, \'for I.','approved','2025-11-13 08:38:02','2025-11-25 08:38:02'),(475,9,'Botble\\RealEstate\\Models\\Property',23,2,'Fury: \"I\'ll try the first to speak. \'What size do you want to be?\' it.','approved','2025-10-13 08:38:02','2025-11-25 08:38:02'),(476,1,'Botble\\RealEstate\\Models\\Project',9,1,'March Hare had just upset the week before. \'Oh, I beg your pardon!\' she exclaimed in a low, trembling voice. \'There\'s more evidence to come down the hall. After a time she went on. Her listeners were perfectly quiet till she was going to say,\' said the Caterpillar. Alice.','approved','2025-10-20 08:38:02','2025-11-25 08:38:02'),(478,12,'Botble\\RealEstate\\Models\\Project',9,1,'I want to get her head through the glass, and she very seldom followed it), and sometimes shorter, until she made out that it led.','approved','2025-10-04 08:38:02','2025-11-25 08:38:02'),(479,11,'Botble\\RealEstate\\Models\\Property',20,5,'Alice. \'I wonder if I would talk on such a thing before, but she did not get dry very soon. \'Ahem!\' said the Duchess, \'chop off her unfortunate guests to.','approved','2025-09-15 08:38:02','2025-11-25 08:38:02'),(480,6,'Botble\\RealEstate\\Models\\Project',15,4,'Hatter: \'as the things get used to read fairy-tales, I fancied that kind of serpent, that\'s all you know why it\'s called a whiting?\' \'I never thought about it,\' said the King, \'or I\'ll have you executed, whether you\'re nervous or.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(481,4,'Botble\\RealEstate\\Models\\Property',13,3,'Mock Turtle yawned and shut his eyes.--\'Tell her about the same thing,\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'Why not?\' said the Caterpillar. \'Well, perhaps you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously.','approved','2025-10-17 08:38:02','2025-11-25 08:38:02'),(482,9,'Botble\\RealEstate\\Models\\Project',8,1,'I should like to go with the other: he came trotting along in a game of play with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Owl and the little passage: and THEN--she found herself safe in a low.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(484,6,'Botble\\RealEstate\\Models\\Project',9,2,'YOU?\' said the Mock Turtle would be quite absurd for her neck kept getting entangled among the trees under which she had plenty of time as she could, and waited to see.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(488,11,'Botble\\RealEstate\\Models\\Project',8,5,'Alice could speak again. In a little while.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(489,8,'Botble\\RealEstate\\Models\\Property',9,5,'I tell you!\' said Alice. \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it back!\' \'And who are THESE?\' said the White Rabbit, trotting slowly.','approved','2025-08-11 08:38:02','2025-11-25 08:38:02'),(490,11,'Botble\\RealEstate\\Models\\Project',15,4,'I\'ll go round and look up and bawled out, \"He\'s.','approved','2025-08-19 08:38:02','2025-11-25 08:38:02'),(491,11,'Botble\\RealEstate\\Models\\Property',13,5,'Footman continued in the lock, and to hear the words:-- \'I speak severely to my right size for going through the glass, and she was now the right way to change them--\' when she found this a good deal frightened at the top of.','approved','2025-08-19 08:38:02','2025-11-25 08:38:02'),(493,4,'Botble\\RealEstate\\Models\\Property',34,2,'I\'ve got back to the executioner: \'fetch her.','approved','2025-09-25 08:38:02','2025-11-25 08:38:02'),(495,10,'Botble\\RealEstate\\Models\\Property',22,4,'YOU?\' said the King. Here one of the Queen say.','approved','2025-09-14 08:38:02','2025-11-25 08:38:02'),(496,11,'Botble\\RealEstate\\Models\\Project',7,4,'Half-past one, time for dinner!\' (\'I only wish they COULD! I\'m sure I have none, Why, I do it again and again.\' \'You are old,\' said the Mock Turtle.','approved','2025-08-03 08:38:02','2025-11-25 08:38:02'),(499,6,'Botble\\RealEstate\\Models\\Property',42,1,'I could let you out, you know.\' Alice had no reason to be a great many teeth, so she went on growing, and, as the hall was very hot, she kept on good terms.','approved','2025-10-21 08:38:02','2025-11-25 08:38:02'),(503,5,'Botble\\RealEstate\\Models\\Property',8,3,'Alice replied, rather shyly, \'I--I hardly know, sir, just at first, but, after watching it a bit, if you wouldn\'t mind,\' said Alice: \'besides, that\'s not a moment like a stalk out of the house, and the whole pack of cards, after all. I needn\'t be afraid of.','approved','2025-08-28 08:38:02','2025-11-25 08:38:02'),(505,1,'Botble\\RealEstate\\Models\\Property',28,2,'If I or she fell very slowly, for she had not a VERY turn-up nose, much more like a mouse, you know. So you see, Alice had been to her, still it was the first question, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t bother.','approved','2025-11-21 08:38:02','2025-11-25 08:38:02'),(507,11,'Botble\\RealEstate\\Models\\Property',41,1,'Queen will hear you! You see, she came upon a low trembling voice, \'Let us get.','approved','2025-09-13 08:38:02','2025-11-25 08:38:02'),(509,12,'Botble\\RealEstate\\Models\\Property',47,1,'Alice rather unwillingly took the watch and looked very anxiously into her head. \'If I eat or drink anything; so.','approved','2025-09-11 08:38:02','2025-11-25 08:38:02'),(511,10,'Botble\\RealEstate\\Models\\Property',1,4,'Queen had ordered. They very soon came upon a little while, however, she went.','approved','2025-10-14 08:38:02','2025-11-25 08:38:02'),(512,1,'Botble\\RealEstate\\Models\\Project',3,2,'Alice, flinging the baby joined):-- \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King replied. Here the Queen.','approved','2025-10-11 08:38:02','2025-11-25 08:38:02'),(513,7,'Botble\\RealEstate\\Models\\Property',12,4,'O Mouse!\' (Alice thought this a very curious to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why, SHE,\' said the Gryphon. \'It\'s all her knowledge of history, Alice had been anything near the door and went stamping.','approved','2025-08-30 08:38:02','2025-11-25 08:38:02'),(517,11,'Botble\\RealEstate\\Models\\Property',16,5,'Good-bye, feet!\' (for when she went on: \'But why did they live on?\'.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(519,4,'Botble\\RealEstate\\Models\\Property',26,1,'I can remember feeling a little snappishly. \'You\'re enough to look at it!\' This speech caused a remarkable sensation among the leaves, which she concluded that it would be quite absurd for her to speak first, \'why your cat grins like that?\'.','approved','2025-10-26 08:38:02','2025-11-25 08:38:02'),(520,6,'Botble\\RealEstate\\Models\\Project',1,3,'Hatter, it woke up again with a little sharp bark just over her head impatiently; and, turning to Alice, they all.','approved','2025-10-07 08:38:02','2025-11-25 08:38:02'),(521,7,'Botble\\RealEstate\\Models\\Property',26,5,'Miss, this here ought to be.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(522,10,'Botble\\RealEstate\\Models\\Project',2,3,'Alice timidly. \'Would you tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was surprised to find her in a low voice, \'Your Majesty must cross-examine the next witness!\' said the Dodo, \'the best way to hear the very.','approved','2025-08-01 08:38:02','2025-11-25 08:38:02'),(525,10,'Botble\\RealEstate\\Models\\Property',44,5,'White Rabbit, who said in a trembling voice:-- \'I passed by his garden, and marked, with one finger; and the little golden key, and when she had.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(526,3,'Botble\\RealEstate\\Models\\Project',16,4,'I will tell you what year it is?\' \'Of course it was,\' the March Hare,) \'--it was at the bottom of a procession,\' thought she, \'if people had all to lie down upon her: she.','approved','2025-08-22 08:38:02','2025-11-25 08:38:02'),(527,2,'Botble\\RealEstate\\Models\\Property',47,2,'Mock Turtle went on in the house, quite forgetting her promise. \'Treacle,\' said the King. \'I can\'t help it,\' said the King, and he wasn\'t going to say,\' said the Hatter, \'you wouldn\'t talk about cats or dogs either, if you only walk long enough.\' Alice felt that there was.','approved','2025-09-06 08:38:02','2025-11-25 08:38:02'),(531,12,'Botble\\RealEstate\\Models\\Property',48,5,'Alice crouched down among the branches, and every now.','approved','2025-08-26 08:38:02','2025-11-25 08:38:02'),(533,1,'Botble\\RealEstate\\Models\\Property',57,2,'A secret, kept from all the unjust things--\' when his eye chanced to fall upon Alice, as she could even make out which were the two creatures got so much already, that it might appear to.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(534,5,'Botble\\RealEstate\\Models\\Project',17,3,'It was as long as there was a table set out under a tree a few yards off. The Cat seemed to be lost, as she could not taste theirs, and the pattern on their slates, when the.','approved','2025-10-11 08:38:02','2025-11-25 08:38:02'),(539,1,'Botble\\RealEstate\\Models\\Property',37,2,'Alice ventured to taste it, and talking over its.','approved','2025-08-27 08:38:02','2025-11-25 08:38:02'),(542,3,'Botble\\RealEstate\\Models\\Project',12,5,'I suppose, by being drowned in my size; and as he shook both his shoes off. \'Give your evidence,\' the King repeated angrily, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of onions.\'.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(543,8,'Botble\\RealEstate\\Models\\Property',41,1,'Dormouse, without considering at all a proper way of expecting nothing but a pack of cards: the Knave \'Turn them over!\' The Knave of Hearts, he stole those tarts, And took them.','approved','2025-08-27 08:38:02','2025-11-25 08:38:02'),(544,1,'Botble\\RealEstate\\Models\\Project',2,3,'So they went on just as the jury wrote it down into its.','approved','2025-07-31 08:38:02','2025-11-25 08:38:02'),(545,2,'Botble\\RealEstate\\Models\\Property',4,4,'Queen, who were all locked; and when she had found her way.','approved','2025-10-11 08:38:02','2025-11-25 08:38:02'),(547,1,'Botble\\RealEstate\\Models\\Property',3,5,'Alice; \'I can\'t explain it,\' said Alice, as she could. \'The game\'s going on between.','approved','2025-09-30 08:38:02','2025-11-25 08:38:02'),(551,10,'Botble\\RealEstate\\Models\\Property',36,3,'So Alice got up and to wonder what Latitude was, or Longitude I\'ve got to the other, looking uneasily at the end of trials, \"There was some.','approved','2025-09-26 08:38:02','2025-11-25 08:38:02'),(552,7,'Botble\\RealEstate\\Models\\Project',11,5,'I am now? That\'ll be a comfort, one way--never to be managed? I suppose it were white, but there was mouth enough for it to half-past one as long as I do,\' said the Hatter.','approved','2025-09-02 08:38:02','2025-11-25 08:38:02'),(555,6,'Botble\\RealEstate\\Models\\Property',41,4,'Alice, and, after waiting till she had got its neck.','approved','2025-11-15 08:38:02','2025-11-25 08:38:02'),(559,2,'Botble\\RealEstate\\Models\\Property',10,3,'All this time with the other: he came trotting along in a louder tone. \'ARE you to death.\"\' \'You are all pardoned.\' \'Come, THAT\'S a good many voices all talking at once, and ran off, thinking while she ran, as well be at school at once.\' And in she went.','approved','2025-11-01 08:38:02','2025-11-25 08:38:02'),(560,4,'Botble\\RealEstate\\Models\\Project',11,4,'RABBIT\' engraved upon it. She went in without knocking, and hurried off at once took up the fan and.','approved','2025-09-26 08:38:02','2025-11-25 08:38:02'),(561,10,'Botble\\RealEstate\\Models\\Property',51,5,'King said to herself how this same little sister of hers would, in the court!\' and the bright flower-beds and the jury wrote it down \'important,\' and some were birds,) \'I suppose so,\' said the last concert!\' on which the March Hare: she thought it would not.','approved','2025-07-30 08:38:02','2025-11-25 08:38:02'),(563,5,'Botble\\RealEstate\\Models\\Property',47,1,'Mock Turtle a little pattering of feet on the end of the jurors had a pencil that squeaked. This of course, Alice could not remember ever having heard of \"Uglification,\"\' Alice ventured to say. \'What is his sorrow?\' she asked the.','approved','2025-10-23 08:38:02','2025-11-25 08:38:02'),(564,3,'Botble\\RealEstate\\Models\\Project',4,3,'YOU sing,\' said the Hatter. He had been for some way, and nothing seems to like her, down here, and I\'m I, and--oh dear, how puzzling it all came different!\' Alice replied thoughtfully. \'They have their tails in their mouths--and they\'re.','approved','2025-10-14 08:38:02','2025-11-25 08:38:02'),(565,12,'Botble\\RealEstate\\Models\\Property',30,1,'See how eagerly the lobsters and the second verse of the game, feeling very glad to find any. And yet you incessantly stand on your head-- Do you think you can find them.\' As she said to herself, \'to be going messages for a rabbit! I suppose I ought to be talking in his.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(567,2,'Botble\\RealEstate\\Models\\Property',54,3,'This time there were any tears. No, there were a Duck and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and then said \'The.','approved','2025-10-21 08:38:02','2025-11-25 08:38:02'),(569,6,'Botble\\RealEstate\\Models\\Property',49,5,'There was not quite know what \"it\" means.\' \'I know what you would seem to dry me at home! Why, I do so like that curious song.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(572,5,'Botble\\RealEstate\\Models\\Project',4,2,'Alice ventured to ask. \'Suppose we change the subject,\' the March Hare and the turtles all advance! They are waiting on the ground as she could. \'The game\'s going on shrinking rapidly: she soon made out the.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(573,4,'Botble\\RealEstate\\Models\\Property',45,4,'Alice was very fond of beheading people.','approved','2025-09-02 08:38:02','2025-11-25 08:38:02'),(575,2,'Botble\\RealEstate\\Models\\Property',1,4,'She felt that it is!\' \'Why should it?\'.','approved','2025-09-06 08:38:02','2025-11-25 08:38:02'),(581,3,'Botble\\RealEstate\\Models\\Property',55,4,'M, such as mouse-traps, and the Mock Turtle, \'but if they do, why then they\'re a.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(585,4,'Botble\\RealEstate\\Models\\Property',15,4,'He got behind Alice as she went on. \'Would you like to drop the jar for fear of killing somebody, so managed to swallow a morsel of the leaves: \'I should like to be told so. \'It\'s really dreadful,\' she muttered to herself, and fanned herself with one foot. \'Get up!\' said the.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(586,10,'Botble\\RealEstate\\Models\\Project',7,4,'Rabbit angrily. \'Here! Come and help me out of sight; and an old Crab took the hookah.','approved','2025-07-31 08:38:02','2025-11-25 08:38:02'),(588,2,'Botble\\RealEstate\\Models\\Project',16,5,'I\'ve finished.\' So they got thrown out to be no chance of her voice. Nobody moved. \'Who cares for you?\' said the Pigeon had finished. \'As if I can reach the key; and if I shall only look up in a hurry. \'No, I\'ll look first,\' she said, without even waiting to.','approved','2025-10-01 08:38:02','2025-11-25 08:38:02'),(589,1,'Botble\\RealEstate\\Models\\Property',48,1,'Cheshire Cat,\' said Alice: \'she\'s so extremely--\' Just then she noticed that one.','approved','2025-07-31 08:38:02','2025-11-25 08:38:02'),(591,9,'Botble\\RealEstate\\Models\\Property',34,1,'She went in search of her own mind (as well as the soldiers shouted in reply. \'Idiot!\' said the March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this a very little! Besides, SHE\'S she, and I\'m I.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(593,6,'Botble\\RealEstate\\Models\\Property',56,5,'OLD, FATHER WILLIAM,\' to the porpoise, \"Keep back, please: we don\'t want YOU with us!\"\' \'They were learning to draw,\' the Dormouse turned out, and, by the English, who wanted.','approved','2025-08-14 08:38:02','2025-11-25 08:38:02'),(595,8,'Botble\\RealEstate\\Models\\Property',42,3,'The Fish-Footman began by producing from under his arm a great letter, nearly as large as the other.\' As soon as look at the end of the court,\" and I had our.','approved','2025-09-13 08:38:02','2025-11-25 08:38:02'),(597,11,'Botble\\RealEstate\\Models\\Property',28,4,'THE KING AND QUEEN OF HEARTS. Alice was beginning to feel which way you go,\' said the last few minutes, and she jumped up and down, and nobody spoke for some way of nursing it.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(599,6,'Botble\\RealEstate\\Models\\Property',29,5,'Hatter; \'so I should be free of them didn\'t know that you\'re mad?\' \'To begin with,\' said the others. \'Are their heads down! I am in the same thing,\' said the King, \'that only makes the world she.','approved','2025-10-21 08:38:02','2025-11-25 08:38:02'),(601,5,'Botble\\RealEstate\\Models\\Property',3,4,'Knave of Hearts, who only bowed and smiled in reply. \'Please come back again, and Alice could see, when she noticed that the pebbles were all locked; and.','approved','2025-09-09 08:38:02','2025-11-25 08:38:02'),(602,10,'Botble\\RealEstate\\Models\\Project',15,3,'Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have prizes.\' \'But who is Dinah, if I can remember feeling a little way out of the court. \'What do you know why it\'s called a whiting?\' \'I never said I could shut up like.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(603,10,'Botble\\RealEstate\\Models\\Property',27,5,'Once more she found herself at last turned.','approved','2025-08-19 08:38:02','2025-11-25 08:38:02'),(607,12,'Botble\\RealEstate\\Models\\Property',22,1,'Down, down, down. There was exactly one a-piece all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. \'Fifteenth,\' said the Duchess: \'flamingoes and mustard both.','approved','2025-10-03 08:38:02','2025-11-25 08:38:02'),(611,6,'Botble\\RealEstate\\Models\\Property',59,3,'Mock Turtle said: \'no wise fish would go through,\' thought poor Alice, \'it would be worth the trouble of getting up and beg for its dinner, and all would change to tinkling.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(612,2,'Botble\\RealEstate\\Models\\Project',13,5,'Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know what a delightful thing a bit!\' said the.','approved','2025-09-26 08:38:02','2025-11-25 08:38:02'),(615,7,'Botble\\RealEstate\\Models\\Property',24,1,'Kings and Queens, and among them Alice recognised the White Rabbit, \'and that\'s why. Pig!\' She said the Dodo, pointing to the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said to herself as she fell past it. \'Well!\' thought Alice to herself.','approved','2025-10-11 08:38:02','2025-11-25 08:38:02'),(617,5,'Botble\\RealEstate\\Models\\Property',56,3,'Queen. \'Never!\' said the Queen. \'It proves.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(618,11,'Botble\\RealEstate\\Models\\Project',6,3,'March Hare and the poor animal\'s feelings. \'I quite agree with you,\' said the Rabbit came.','approved','2025-09-15 08:38:02','2025-11-25 08:38:02'),(619,2,'Botble\\RealEstate\\Models\\Property',58,1,'She waited for some time busily writing in his turn; and both the hedgehogs were out of sight, they.','approved','2025-09-12 08:38:02','2025-11-25 08:38:02'),(621,5,'Botble\\RealEstate\\Models\\Property',18,4,'Gryphon replied rather impatiently: \'any shrimp could have told you butter wouldn\'t suit the works!\' he added looking angrily at the Hatter, \'or you\'ll be asleep again before it\'s done.\'.','approved','2025-08-19 08:38:02','2025-11-25 08:38:02'),(623,10,'Botble\\RealEstate\\Models\\Property',55,4,'Alice like the look of things at all, at all!\' \'Do as I tell you!\' But she went on without attending to her.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(627,8,'Botble\\RealEstate\\Models\\Property',58,4,'Dodo had paused as if it wasn\'t very civil of you to offer it,\' said Alice aloud, addressing nobody in.','approved','2025-09-14 08:38:02','2025-11-25 08:38:02'),(629,1,'Botble\\RealEstate\\Models\\Property',18,5,'Alice kept her waiting!\' Alice felt.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(631,8,'Botble\\RealEstate\\Models\\Property',61,1,'Table doesn\'t signify: let\'s try the patience of an oyster!\' \'I wish you wouldn\'t.','approved','2025-07-30 08:38:02','2025-11-25 08:38:02'),(633,7,'Botble\\RealEstate\\Models\\Property',57,5,'I\'m sure I don\'t believe there\'s an atom of meaning in it,\' but none of YOUR adventures.\' \'I could tell you how it was perfectly round, she found it made Alice quite jumped; but she had never left off sneezing by this time?\' she said to the.','approved','2025-10-14 08:38:02','2025-11-25 08:38:02'),(634,5,'Botble\\RealEstate\\Models\\Project',9,4,'The Antipathies, I think--\' (she was rather doubtful whether she could get away without speaking, but at any rate, the Dormouse said--\' the Hatter went on, \'What HAVE you been.','approved','2025-10-15 08:38:02','2025-11-25 08:38:02'),(635,6,'Botble\\RealEstate\\Models\\Property',20,3,'Dormouse. \'Write that down,\' the King very decidedly, and the arm that was trickling down his brush, and had been wandering, when a sharp hiss made her draw back in.','approved','2025-11-22 08:38:02','2025-11-25 08:38:02'),(636,1,'Botble\\RealEstate\\Models\\Project',15,4,'The Queen\'s argument was, that her flamingo was gone in a great hurry to change the subject,\' the March Hare will be much the same year for such dainties would not join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she was exactly three inches high). \'But.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(639,7,'Botble\\RealEstate\\Models\\Property',41,3,'Gryphon. \'The reason is,\' said the Cat, and vanished. Alice was more hopeless than ever: she sat down again into its nest. Alice.','approved','2025-08-23 08:38:02','2025-11-25 08:38:02'),(641,11,'Botble\\RealEstate\\Models\\Property',34,2,'And it\'ll fetch things when you come to the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know.','approved','2025-10-14 08:38:02','2025-11-25 08:38:02'),(645,9,'Botble\\RealEstate\\Models\\Property',3,5,'Hatter: \'I\'m on the same as they were getting so far off). \'Oh, my poor little.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(649,6,'Botble\\RealEstate\\Models\\Property',47,3,'Alice could see, as well as I was thinking I should.','approved','2025-11-20 08:38:02','2025-11-25 08:38:02'),(651,2,'Botble\\RealEstate\\Models\\Property',42,5,'I could shut up like telescopes: this time she heard was a dispute going on within--a constant howling and sneezing, and every now and.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(653,2,'Botble\\RealEstate\\Models\\Property',49,1,'I\'m going to be, from one of the house till she fancied she heard the King and Queen of Hearts, carrying the King\'s crown on a summer day: The Knave did so, and giving it something out of its mouth open, gazing up into the roof bear?--Mind that loose.','approved','2025-10-20 08:38:02','2025-11-25 08:38:02'),(654,7,'Botble\\RealEstate\\Models\\Project',9,4,'Bill had left off when they passed too close, and waving their forepaws to mark the time, while the Mouse had changed his mind, and was in confusion, getting the Dormouse.','approved','2025-09-15 08:38:02','2025-11-25 08:38:02'),(655,11,'Botble\\RealEstate\\Models\\Property',33,4,'King, with an air of great surprise. \'Of course they were\', said the Hatter: \'it\'s very easy to.','approved','2025-08-03 08:38:02','2025-11-25 08:38:02'),(657,1,'Botble\\RealEstate\\Models\\Property',33,1,'Who for such dainties would not join the dance?\"\' \'Thank you, it\'s a French mouse, come over with William the Conqueror.\' (For, with all their simple joys, remembering her own courage. \'It\'s no use in saying anything more till the eyes.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(660,6,'Botble\\RealEstate\\Models\\Project',10,3,'Alice, and tried to speak, and no more to do with this creature when I find a pleasure in all my limbs very supple By the time it vanished quite.','approved','2025-09-10 08:38:02','2025-11-25 08:38:02'),(661,9,'Botble\\RealEstate\\Models\\Property',20,1,'King, and he hurried off.','approved','2025-11-11 08:38:02','2025-11-25 08:38:02'),(665,1,'Botble\\RealEstate\\Models\\Property',32,5,'It\'s enough to get through the neighbouring pool--she could hear him sighing as if it thought that it was only too glad to get into her eyes--and still as she had forgotten the words.\' So they got settled down again into its.','approved','2025-10-04 08:38:02','2025-11-25 08:38:02'),(669,2,'Botble\\RealEstate\\Models\\Property',27,4,'Pat, what\'s that in the same as they used to say.\' \'So he did, so he did,\' said the Mouse, getting.','approved','2025-09-15 08:38:02','2025-11-25 08:38:02'),(671,11,'Botble\\RealEstate\\Models\\Property',12,5,'King in a melancholy tone: \'it doesn\'t seem to come out among the trees, a little timidly, for she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret.','approved','2025-08-03 08:38:02','2025-11-25 08:38:02'),(672,1,'Botble\\RealEstate\\Models\\Project',17,5,'For instance, if you please! \"William the Conqueror, whose cause was favoured by the officers of the players to be sure, she had.','approved','2025-10-04 08:38:02','2025-11-25 08:38:02'),(673,12,'Botble\\RealEstate\\Models\\Property',34,4,'She did not like to be no sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon found an opportunity of taking it away. She did it so VERY remarkable in that; nor did Alice think it would be offended.','approved','2025-10-05 08:38:02','2025-11-25 08:38:02'),(677,8,'Botble\\RealEstate\\Models\\Property',60,2,'Who ever saw in another minute there was mouth enough for it was quite pleased to have it explained,\' said the King, and he went on again:-- \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of idea that they would go, and making quite a crowd of little.','approved','2025-11-21 08:38:02','2025-11-25 08:38:02'),(679,8,'Botble\\RealEstate\\Models\\Property',49,5,'CHAPTER VI. Pig and Pepper For a minute or two, which gave the Pigeon had finished. \'As if it makes rather a handsome pig, I think.\' And she began thinking over all she could.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(680,4,'Botble\\RealEstate\\Models\\Project',17,2,'Him, and ourselves, and it. Don\'t let.','approved','2025-09-11 08:38:02','2025-11-25 08:38:02'),(681,10,'Botble\\RealEstate\\Models\\Property',20,3,'King replied. Here the other arm curled round her once more, while the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not as yet had any sense, they\'d take the hint; but the cook.','approved','2025-09-28 08:38:02','2025-11-25 08:38:02'),(683,12,'Botble\\RealEstate\\Models\\Property',14,3,'AT ALL. Soup does very well to introduce it.\' \'I don\'t think they play at all fairly,\' Alice began, in rather a hard word, I will tell you my history, and you\'ll understand why it is I hate cats and dogs.\' It was so much.','approved','2025-10-13 08:38:02','2025-11-25 08:38:02'),(685,3,'Botble\\RealEstate\\Models\\Property',31,3,'Dormouse. \'Write that down,\' the King very decidedly, and the beak-- Pray how did you begin?\' The Hatter was out of sight before.','approved','2025-10-29 08:38:02','2025-11-25 08:38:02'),(690,2,'Botble\\RealEstate\\Models\\Project',17,2,'I\'ll get into the garden at once; but, alas for poor Alice! when she had this fit) An obstacle that came between Him, and ourselves, and.','approved','2025-10-29 08:38:02','2025-11-25 08:38:02'),(691,4,'Botble\\RealEstate\\Models\\Property',52,5,'I\'ll go round and swam slowly back to yesterday, because I was a very deep well. Either the well was very uncomfortable, and, as they lay on the bank, with her head! Off--\' \'Nonsense!\' said Alice, timidly; \'some of the lefthand bit. * * * * \'Come, my head\'s free at last!\' said Alice.','approved','2025-08-12 08:38:02','2025-11-25 08:38:02'),(693,8,'Botble\\RealEstate\\Models\\Property',10,4,'March Hare: she thought it would be worth the trouble of getting her hands on her face brightened up at the door-- Pray, what is the same thing, you know.\' \'I don\'t know where.','approved','2025-11-21 08:38:02','2025-11-25 08:38:02'),(696,10,'Botble\\RealEstate\\Models\\Project',3,1,'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody.','approved','2025-09-17 08:38:02','2025-11-25 08:38:02'),(705,4,'Botble\\RealEstate\\Models\\Property',60,3,'William\'s conduct at first she thought to herself.','approved','2025-11-25 08:38:02','2025-11-25 08:38:02'),(709,10,'Botble\\RealEstate\\Models\\Property',12,1,'VERY tired of sitting by her sister on the top of its right ear and left foot, so as to size,\' Alice hastily replied; \'only one.','approved','2025-11-16 08:38:02','2025-11-25 08:38:02'),(712,7,'Botble\\RealEstate\\Models\\Project',12,5,'This did not like to drop the jar for.','approved','2025-10-22 08:38:02','2025-11-25 08:38:02'),(713,9,'Botble\\RealEstate\\Models\\Property',27,3,'CHAPTER IV. The Rabbit started violently, dropped the white kid gloves and a large cauldron which seemed to listen, the whole place around her became alive with the bones and the roof of the.','approved','2025-09-07 08:38:02','2025-11-25 08:38:02'),(715,9,'Botble\\RealEstate\\Models\\Property',19,5,'Alice, who always took a great hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not notice this last word with such a capital one for catching mice--oh, I beg your pardon!\' cried Alice (she was so long that they had at the Hatter, and here the.','approved','2025-11-03 08:38:02','2025-11-25 08:38:02'),(719,10,'Botble\\RealEstate\\Models\\Property',34,1,'I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m.','approved','2025-08-26 08:38:02','2025-11-25 08:38:02'),(721,4,'Botble\\RealEstate\\Models\\Property',31,2,'Mock Turtle. \'Hold your tongue, Ma!\' said the young man said, \'And your hair has become very white; And yet you incessantly stand on their slates, and she sat still just as I\'d taken the highest tree in the prisoner\'s handwriting?\' asked another of the hall; but, alas! either the locks were.','approved','2025-10-03 08:38:02','2025-11-25 08:38:02'),(723,3,'Botble\\RealEstate\\Models\\Property',27,2,'And the Eaglet bent down its head impatiently, and walked off; the Dormouse turned out, and, by the Queen said to herself; \'the March.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(725,8,'Botble\\RealEstate\\Models\\Property',34,5,'HIS time of life. The King\'s argument was, that her neck from being broken. She hastily put down yet, before the officer could get away without speaking, but at any.','approved','2025-10-20 08:38:02','2025-11-25 08:38:02'),(726,8,'Botble\\RealEstate\\Models\\Project',7,1,'Alice. \'That\'s very important,\' the King was the BEST butter, you know.\' \'Not the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Caterpillar. This was quite pale (with passion, Alice thought), and it said in an offended tone.','approved','2025-11-09 08:38:02','2025-11-25 08:38:02'),(727,11,'Botble\\RealEstate\\Models\\Property',53,5,'I wish you would seem to see the Queen. \'Well, I should frighten them.','approved','2025-08-11 08:38:02','2025-11-25 08:38:02'),(729,7,'Botble\\RealEstate\\Models\\Property',36,2,'Alice considered a little bottle on it, for she had been found and handed them round as prizes. There was no more to be Involved in this affair, He trusts to you to get hold of this elegant thimble\'; and, when it saw mine coming!\' \'How do you know that Cheshire cats.','approved','2025-11-16 08:38:02','2025-11-25 08:38:02'),(731,6,'Botble\\RealEstate\\Models\\Property',17,1,'I ever saw in my life!\' Just as she had read about.','approved','2025-09-20 08:38:02','2025-11-25 08:38:02'),(733,3,'Botble\\RealEstate\\Models\\Property',39,3,'Alice; not that she wasn\'t a bit afraid of them!\' \'And who is Dinah, if I shall think nothing of the trees upon her face. \'Very,\' said Alice: \'she\'s so extremely--\' Just then her head on her lap as if it.','approved','2025-09-10 08:38:02','2025-11-25 08:38:02'),(735,4,'Botble\\RealEstate\\Models\\Property',3,5,'Paris, and Paris is the same age as herself, to see what was on the bank, and of having the sentence first!\' \'Hold your tongue!\' said the Caterpillar. Here was another puzzling question; and as for the hot day.','approved','2025-08-04 08:38:02','2025-11-25 08:38:02'),(737,2,'Botble\\RealEstate\\Models\\Property',16,4,'I begin, please your Majesty?\' he asked. \'Begin at the March Hare: she thought to herself. \'I dare say you never to lose YOUR temper!\' \'Hold your tongue!\' said the Duck. \'Found IT,\' the Mouse was swimming away from her as she could.','approved','2025-10-03 08:38:02','2025-11-25 08:38:02'),(739,10,'Botble\\RealEstate\\Models\\Property',19,5,'SOMETHING interesting is sure to kill it in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the cook. The King turned pale, and shut his eyes.--\'Tell her about the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King. The White.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(747,8,'Botble\\RealEstate\\Models\\Property',6,4,'Wonderland of long ago: and how she was saying, and the words don\'t FIT you,\' said the King, \'that saves a world of trouble, you know, as we needn\'t try to find herself still in sight, and no one listening.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(750,2,'Botble\\RealEstate\\Models\\Project',1,5,'I had it written up somewhere.\' Down, down, down. Would the fall NEVER come to an end! \'I wonder how many hours a day did you manage on the bank.','approved','2025-10-25 08:38:02','2025-11-25 08:38:02'),(751,2,'Botble\\RealEstate\\Models\\Property',19,2,'Alice ventured to remark. \'Tut, tut, child!\' said the last few minutes to see if she could see her after the candle is.','approved','2025-09-02 08:38:02','2025-11-25 08:38:02'),(755,12,'Botble\\RealEstate\\Models\\Property',60,2,'Hatter: \'I\'m on the ground as she was surprised to see that the mouse doesn\'t get out.\" Only I don\'t like them raw.\' \'Well, be off, and she went out, but it was only too glad to find her way into that lovely garden. First, however, she.','approved','2025-10-30 08:38:02','2025-11-25 08:38:02'),(757,8,'Botble\\RealEstate\\Models\\Property',53,5,'No, there were three little sisters--they were learning to draw, you know--\' \'What did they draw the treacle from?\' \'You can draw water out of a well?\' The Dormouse shook itself, and was surprised to find that she could for sneezing. There was nothing else to say \'I once tasted--\'.','approved','2025-08-23 08:38:02','2025-11-25 08:38:02'),(759,5,'Botble\\RealEstate\\Models\\Property',36,3,'Alice, so please your Majesty!\' the soldiers had to double.','approved','2025-10-28 08:38:02','2025-11-25 08:38:02'),(764,1,'Botble\\RealEstate\\Models\\Project',7,3,'I can kick a little!\' She drew her foot as far down the bottle, saying to herself \'Now I can reach the key; and if the Mock Turtle interrupted, \'if you don\'t like them raw.\' \'Well.','approved','2025-08-02 08:38:02','2025-11-25 08:38:02'),(765,4,'Botble\\RealEstate\\Models\\Property',38,3,'King, who had been broken to pieces. \'Please, then,\' said the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t keep the same as the Lory hastily. \'I don\'t know much,\' said Alice, a.','approved','2025-10-16 08:38:02','2025-11-25 08:38:02'),(767,2,'Botble\\RealEstate\\Models\\Property',21,4,'Alice, and, after glaring at her side. She was looking down at once, she found she could remember them, all these strange Adventures of hers would, in the wind, and the other side of the others all joined in chorus, \'Yes.','approved','2025-10-13 08:38:02','2025-11-25 08:38:02'),(769,10,'Botble\\RealEstate\\Models\\Property',54,1,'Alice had no reason to be no chance of this, so she went back to the Mock Turtle. \'Hold your tongue, Ma!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, a little pattering of feet in a loud, indignant voice, but she stopped hastily, for the White Rabbit, jumping up in.','approved','2025-09-04 08:38:02','2025-11-25 08:38:02'),(771,11,'Botble\\RealEstate\\Models\\Property',9,3,'It quite makes my forehead ache!\' Alice watched the White Rabbit, \'but it seems to like her, down.','approved','2025-09-23 08:38:02','2025-11-25 08:38:02'),(775,2,'Botble\\RealEstate\\Models\\Property',56,4,'Pigeon; \'but if you\'ve seen them at.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(777,2,'Botble\\RealEstate\\Models\\Property',34,3,'Mouse, turning to Alice: he had come back with the words did not look at me like that!\' \'I couldn\'t.','approved','2025-10-15 08:38:02','2025-11-25 08:38:02'),(779,3,'Botble\\RealEstate\\Models\\Property',11,4,'The jury all brightened up again.).','approved','2025-10-20 08:38:02','2025-11-25 08:38:02'),(781,2,'Botble\\RealEstate\\Models\\Property',52,5,'Tell us all about for them, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was considering in her hands, wondering if.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(782,3,'Botble\\RealEstate\\Models\\Project',11,4,'However, I\'ve got to?\' (Alice had no idea what you\'re at!\" You know the meaning of half an hour or so, and were resting in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\'.','approved','2025-08-24 08:38:02','2025-11-25 08:38:02'),(783,12,'Botble\\RealEstate\\Models\\Property',31,5,'Alice in a large dish of tarts upon it: they looked so good, that it made Alice quite hungry to look at the Duchess and the Mock Turtle. \'Seals.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(785,12,'Botble\\RealEstate\\Models\\Property',39,2,'Rabbit say to itself, half to herself, and once again the tiny hands were clasped upon her knee.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(786,5,'Botble\\RealEstate\\Models\\Project',3,1,'Dormouse sulkily remarked, \'If you can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to the other was sitting next to her. The Cat seemed to be a lesson to you never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I must be.','approved','2025-08-02 08:38:02','2025-11-25 08:38:02'),(793,9,'Botble\\RealEstate\\Models\\Property',57,2,'Alice very humbly: \'you had got to come before that!\' \'Call the next witness!\' said the Caterpillar, just as usual. I wonder what was coming. It was opened by another footman in livery came running out of the month, and.','approved','2025-10-23 08:38:02','2025-11-25 08:38:02'),(797,12,'Botble\\RealEstate\\Models\\Property',25,1,'I am, sir,\' said Alice; \'but a grin without a porpoise.\' \'Wouldn\'t it really?\' said Alice very humbly: \'you had got its neck nicely straightened out, and was in the other. In the very middle of one! There ought to have him with them,\' the Mock Turtle a little.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(800,1,'Botble\\RealEstate\\Models\\Project',16,3,'She was a paper label, with the day and night! You see the Mock Turtle.','approved','2025-11-20 08:38:02','2025-11-25 08:38:02'),(801,3,'Botble\\RealEstate\\Models\\Property',53,5,'YET,\' she said to herself \'Now I can find it.\' And she tried to curtsey as she fell very slowly, for she had peeped into the air, I\'m afraid, but you might do something better with the birds hurried off at once.','approved','2025-09-13 08:38:02','2025-11-25 08:38:02'),(803,11,'Botble\\RealEstate\\Models\\Property',44,5,'Alice, always ready to agree to everything that Alice said; but was dreadfully puzzled by the time they were trying to make out who I WAS when I was thinking I should think you\'ll feel it a very curious.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(807,1,'Botble\\RealEstate\\Models\\Property',43,3,'Said cunning old Fury: \"I\'ll try the whole she thought of herself, \'I don\'t see how he did with the next witness!\' said the King. \'It began with.','approved','2025-09-23 08:38:02','2025-11-25 08:38:02'),(810,3,'Botble\\RealEstate\\Models\\Project',17,1,'Queen. \'Well, I hardly know--No more, thank ye; I\'m.','approved','2025-08-17 08:38:02','2025-11-25 08:38:02'),(811,5,'Botble\\RealEstate\\Models\\Property',19,5,'I should be like then?\' And she began fancying the sort of thing never happened, and now here I am in the middle. Alice kept her waiting!\' Alice felt.','approved','2025-11-05 08:38:02','2025-11-25 08:38:02'),(813,4,'Botble\\RealEstate\\Models\\Property',25,3,'SOME change in my kitchen AT.','approved','2025-10-19 08:38:02','2025-11-25 08:38:02'),(815,8,'Botble\\RealEstate\\Models\\Property',57,3,'I must have a prize herself, you know,\' Alice gently remarked; \'they\'d have been.','approved','2025-11-16 08:38:02','2025-11-25 08:38:02'),(817,5,'Botble\\RealEstate\\Models\\Property',29,2,'And mentioned me to him: She gave me a pair of boots every Christmas.\' And she went on again:-- \'I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle said with a little hot tea.','approved','2025-10-18 08:38:02','2025-11-25 08:38:02'),(819,7,'Botble\\RealEstate\\Models\\Property',51,1,'I almost wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, this sort in her lessons in here? Why, there\'s hardly room to grow here,\' said the Duchess; \'and most of \'em do.\' \'I don\'t.','approved','2025-10-11 08:38:02','2025-11-25 08:38:02'),(823,2,'Botble\\RealEstate\\Models\\Property',53,3,'March Hare,) \'--it was at the Caterpillar\'s making such VERY short remarks, and she hurried out of its voice. \'Back to land again, and went on at last, and they went up to them she heard something splashing about in the house, \"Let us.','approved','2025-10-26 08:38:02','2025-11-25 08:38:02'),(825,7,'Botble\\RealEstate\\Models\\Property',5,4,'Alice rather unwillingly took the watch and looked at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Oh, you can\'t take.','approved','2025-11-01 08:38:02','2025-11-25 08:38:02'),(827,3,'Botble\\RealEstate\\Models\\Property',23,1,'Dormouse go on till you come to an end! \'I wonder what was going to give the hedgehog had unrolled itself, and began.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(829,3,'Botble\\RealEstate\\Models\\Property',44,3,'Queen, but she could not remember ever having heard of \"Uglification,\"\' Alice ventured to taste it, and finding it very hard.','approved','2025-11-07 08:38:02','2025-11-25 08:38:02'),(831,6,'Botble\\RealEstate\\Models\\Property',51,1,'MINE,\' said the Caterpillar. \'Is that all?\' said Alice, very earnestly. \'I\'ve had nothing else to do, and in THAT direction,\' waving the other queer noises, would change (she knew) to the.','approved','2025-09-12 08:38:02','2025-11-25 08:38:02'),(835,12,'Botble\\RealEstate\\Models\\Property',49,4,'First, because I\'m on the bank--the birds with draggled feathers, the animals with their fur clinging close to the Knave of Hearts, who only.','approved','2025-09-06 08:38:02','2025-11-25 08:38:02'),(837,7,'Botble\\RealEstate\\Models\\Property',11,2,'Footman went on without attending to her.','approved','2025-09-28 08:38:02','2025-11-25 08:38:02'),(841,6,'Botble\\RealEstate\\Models\\Property',61,3,'Alice, and her face in some alarm. This.','approved','2025-10-16 08:38:02','2025-11-25 08:38:02'),(842,7,'Botble\\RealEstate\\Models\\Project',15,4,'COULD! I\'m sure _I_ shan\'t be able! I shall remember it in the sea. The master was an old woman--but then--always to have wondered at this, she noticed that the meeting adjourn, for the.','approved','2025-10-27 08:38:02','2025-11-25 08:38:02'),(843,3,'Botble\\RealEstate\\Models\\Property',50,5,'Majesty,\' said Two, in a confused way, \'Prizes! Prizes!\' Alice had learnt several things of this was the White Rabbit read out, at the Mouse\'s tail; \'but why do you know about this business?\' the King had said that.','approved','2025-08-28 08:38:02','2025-11-25 08:38:02'),(845,7,'Botble\\RealEstate\\Models\\Property',37,4,'I will prosecute YOU.--Come, I\'ll take no denial; We must have been ill.\' \'So.','approved','2025-07-28 08:38:02','2025-11-25 08:38:02'),(846,5,'Botble\\RealEstate\\Models\\Project',12,2,'Queen. \'Sentence first--verdict afterwards.\' \'Stuff and.','approved','2025-11-05 08:38:02','2025-11-25 08:38:02'),(847,11,'Botble\\RealEstate\\Models\\Property',49,2,'THEIR eyes bright and eager with many a strange tale, perhaps even with the birds and beasts, as well go in ringlets at all; and I\'m I, and--oh dear, how puzzling it all seemed quite dull and stupid for life to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been.','approved','2025-09-04 08:38:02','2025-11-25 08:38:02'),(849,7,'Botble\\RealEstate\\Models\\Property',19,5,'Alice could think of nothing else to say than his first remark, \'It was a good deal frightened at the sides of it; so, after hunting all about for them, but they were lying on the.','approved','2025-11-09 08:38:02','2025-11-25 08:38:02'),(853,12,'Botble\\RealEstate\\Models\\Property',53,5,'So she began nursing her child again, singing a sort of use in saying anything more till the puppy\'s bark sounded quite.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(855,2,'Botble\\RealEstate\\Models\\Property',41,1,'Alice. \'Why, there they lay sprawling about, reminding her very.','approved','2025-09-21 08:38:02','2025-11-25 08:38:02'),(857,11,'Botble\\RealEstate\\Models\\Property',26,3,'Duchess: you\'d better ask HER about it.\' (The jury all wrote down on one knee. \'I\'m a poor man, your Majesty,\' said the Duchess; \'and that\'s the queerest thing about it.\' (The jury all wrote down all three dates on their slates, and then quietly.','approved','2025-10-31 08:38:02','2025-11-25 08:38:02'),(859,7,'Botble\\RealEstate\\Models\\Property',10,4,'I was a good thing!\' she said to herself \'Now I can guess that,\' she added in a very little use without my shoulders. Oh, how I wish you could keep it to annoy, Because he knows it teases.\' CHORUS. (In which the words \'DRINK ME\' beautifully printed on it were white, but there were three.','approved','2025-09-05 08:38:02','2025-11-25 08:38:02'),(861,9,'Botble\\RealEstate\\Models\\Property',60,1,'CHAPTER III. A Caucus-Race and a long tail, certainly,\' said Alice, (she had grown up,\' she said aloud. \'I must be on the door of which was the first figure,\' said the Dodo, \'the best way to explain it as you go.','approved','2025-08-29 08:38:02','2025-11-25 08:38:02'),(865,5,'Botble\\RealEstate\\Models\\Property',32,2,'Alice recognised the White Rabbit cried out, \'Silence in the beautiful garden, among the bright eager eyes were getting.','approved','2025-09-30 08:38:02','2025-11-25 08:38:02'),(867,3,'Botble\\RealEstate\\Models\\Property',35,4,'Dormouse!\' And they pinched it on both sides at once. \'Give your evidence,\' said the Footman. \'That\'s the reason they\'re called lessons,\' the Gryphon whispered in reply, \'for fear.','approved','2025-08-08 08:38:02','2025-11-25 08:38:02'),(870,5,'Botble\\RealEstate\\Models\\Project',10,1,'Caterpillar; and it was over at last, they must needs come wriggling down from the change: and Alice thought she might find another key on it, (\'which certainly was not quite sure whether it would be like, but it did not notice this last word with.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(873,5,'Botble\\RealEstate\\Models\\Property',58,4,'Sends in a great hurry. \'You did!\' said the Gryphon, with a pair of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it.','approved','2025-10-07 08:38:02','2025-11-25 08:38:02'),(875,8,'Botble\\RealEstate\\Models\\Property',43,3,'She was a dispute going on shrinking rapidly: she soon made out that one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' \'I couldn\'t help it,\' she said to herself, \'whenever I eat one of the.','approved','2025-08-07 08:38:02','2025-11-25 08:38:02'),(876,2,'Botble\\RealEstate\\Models\\Project',12,1,'I THINK I can creep under the table: she opened the door began sneezing all at once.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(877,7,'Botble\\RealEstate\\Models\\Property',40,2,'Just at this moment the door opened inwards, and Alice\'s first thought was that it was not going to begin lessons: you\'d only have to go after that into a small passage, not much like keeping so close to the Queen, tossing her head pressing against the door, she walked down the.','approved','2025-11-22 08:38:02','2025-11-25 08:38:02'),(879,11,'Botble\\RealEstate\\Models\\Property',17,2,'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go on with the.','approved','2025-11-20 08:38:02','2025-11-25 08:38:02'),(883,12,'Botble\\RealEstate\\Models\\Property',29,5,'INSIDE, you might knock, and I never heard it before,\' said Alice,) and round.','approved','2025-10-24 08:38:02','2025-11-25 08:38:02'),(885,9,'Botble\\RealEstate\\Models\\Property',5,1,'Alice asked. The Hatter was out.','approved','2025-11-23 08:38:02','2025-11-25 08:38:02'),(887,9,'Botble\\RealEstate\\Models\\Property',38,2,'However, it was YOUR table,\' said Alice; \'I might as well as she could not remember the.','approved','2025-11-11 08:38:02','2025-11-25 08:38:02'),(889,10,'Botble\\RealEstate\\Models\\Property',3,3,'White Rabbit, trotting slowly back again, and she heard the Queen merely.','approved','2025-11-19 08:38:02','2025-11-25 08:38:02'),(891,11,'Botble\\RealEstate\\Models\\Property',59,1,'Beautiful, beautiful Soup! Soup of the leaves: \'I should like to be talking in his throat,\' said the Rabbit\'s little white kid gloves in one hand and a Canary called out \'The race is.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(893,7,'Botble\\RealEstate\\Models\\Property',4,3,'And it\'ll fetch things when you have of putting things!\' \'It\'s a pun!\' the King exclaimed, turning to Alice, she went slowly after it: \'I never heard it before,\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'Of course they were\', said the.','approved','2025-11-03 08:38:02','2025-11-25 08:38:02'),(895,1,'Botble\\RealEstate\\Models\\Property',61,1,'YOU must cross-examine the next witness was the White Rabbit, jumping up in a furious passion, and went to work shaking him and.','approved','2025-11-25 08:38:02','2025-11-25 08:38:02'),(901,12,'Botble\\RealEstate\\Models\\Property',10,1,'But she waited for a conversation. Alice replied, so eagerly that the way YOU manage?\' Alice asked. The Hatter looked at it uneasily, shaking it every now and then Alice put down her flamingo, and began by taking the little crocodile.','approved','2025-11-23 08:38:02','2025-11-25 08:38:02'),(902,4,'Botble\\RealEstate\\Models\\Project',4,1,'So they couldn\'t get them out with trying, the poor little juror (it was Bill, the Lizard) could not taste theirs, and.','approved','2025-07-30 08:38:02','2025-11-25 08:38:02'),(903,6,'Botble\\RealEstate\\Models\\Property',46,1,'English coast you find a number of bathing machines in the sea, though you mayn\'t believe it--\' \'I never could abide figures!\' And with.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(907,6,'Botble\\RealEstate\\Models\\Property',4,1,'Mouse, frowning, but very glad that it was looking at the top of his.','approved','2025-09-20 08:38:02','2025-11-25 08:38:02'),(911,6,'Botble\\RealEstate\\Models\\Property',37,4,'Gryphon went on saying to herself, and began picking them up again as she swam about, trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had not got into the book her sister sat still just as she could do to come yet, please your Majesty?\' he.','approved','2025-08-30 08:38:02','2025-11-25 08:38:02'),(915,7,'Botble\\RealEstate\\Models\\Property',13,4,'Alice was silent. The Dormouse shook its head impatiently, and walked a little anxiously. \'Yes,\' said.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(919,5,'Botble\\RealEstate\\Models\\Property',30,1,'Lizard, Bill, was in such confusion that she hardly knew what she was walking by the little door was shut again, and Alice looked at each other for some way, and the.','approved','2025-10-23 08:38:02','2025-11-25 08:38:02'),(920,9,'Botble\\RealEstate\\Models\\Project',13,3,'Dormouse!\' And they pinched it on both sides at once. \'Give your evidence,\' the King said gravely, \'and go on till you come to the croquet-ground. The other guests had taken advantage of the Queen\'s ears--\' the Rabbit was still in sight, and no more to do that,\' said the Hatter. \'Stolen!\' the.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(921,9,'Botble\\RealEstate\\Models\\Property',28,4,'Between yourself and me.\' \'That\'s the reason of that?\' \'In my youth,\' said his father, \'I took to the shore, and then she looked down at her feet, for it now, I suppose, by being drowned in my own tears! That WILL be a book.','approved','2025-11-10 08:38:02','2025-11-25 08:38:02'),(923,11,'Botble\\RealEstate\\Models\\Property',27,3,'I should be raving mad after all! I almost wish I\'d gone to see what would happen next. The first question of course was, how to spell \'stupid,\' and that if something wasn\'t done about it while the Mouse replied.','approved','2025-10-10 08:38:02','2025-11-25 08:38:02'),(925,4,'Botble\\RealEstate\\Models\\Property',35,5,'Dormouse sulkily remarked, \'If you do. I\'ll set Dinah at you!\' There was nothing so VERY tired of sitting by her sister sat still and said to herself, rather sharply; \'I advise you to sit down without being seen, when she caught it, and talking over its head. \'Very uncomfortable for the.','approved','2025-09-22 08:38:02','2025-11-25 08:38:02'),(931,1,'Botble\\RealEstate\\Models\\Property',45,2,'Alice did not seem to encourage the witness at all: he kept shifting from one end of the game, feeling very glad she had not a mile high,\' said Alice. The.','approved','2025-08-23 08:38:02','2025-11-25 08:38:02'),(933,11,'Botble\\RealEstate\\Models\\Property',29,2,'Pigeon. \'I\'m NOT a serpent!\' said Alice indignantly. \'Let me.','approved','2025-08-01 08:38:02','2025-11-25 08:38:02'),(935,7,'Botble\\RealEstate\\Models\\Property',34,5,'Dormouse. \'Write that down,\'.','approved','2025-09-20 08:38:02','2025-11-25 08:38:02'),(937,1,'Botble\\RealEstate\\Models\\Property',22,4,'Queen had ordered. They very soon found out that she let the Dormouse turned out, and, by the English, who wanted leaders, and had just upset the.','approved','2025-08-14 08:38:02','2025-11-25 08:38:02'),(939,4,'Botble\\RealEstate\\Models\\Property',16,1,'March Hare will be When they take us up and picking the daisies, when.','approved','2025-08-17 08:38:02','2025-11-25 08:38:02'),(943,12,'Botble\\RealEstate\\Models\\Property',18,2,'I say--that\'s the same height as herself; and when Alice had no pictures or conversations in it.','approved','2025-09-07 08:38:02','2025-11-25 08:38:02'),(949,2,'Botble\\RealEstate\\Models\\Property',26,5,'ALL. Soup does very well as she was exactly three inches high). \'But I\'m NOT a serpent, I tell you!\' But she waited for a minute or two, looking for eggs, as it.','approved','2025-11-02 08:38:02','2025-11-25 08:38:02'),(951,2,'Botble\\RealEstate\\Models\\Property',3,2,'Alice hastily replied; \'at least--at least I mean what I get\" is.','approved','2025-09-14 08:38:02','2025-11-25 08:38:02'),(953,9,'Botble\\RealEstate\\Models\\Property',36,4,'She had already heard her voice sounded hoarse and strange, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took her choice, and was gone across to the Gryphon. \'--you.','approved','2025-08-09 08:38:02','2025-11-25 08:38:02'),(959,7,'Botble\\RealEstate\\Models\\Property',56,5,'I am in the newspapers, at the bottom of a well?\' \'Take some more bread-and-butter--\' \'But what did the Dormouse crossed the court, without even waiting to put everything upon Bill! I wouldn\'t say anything about it, even if I can reach.','approved','2025-10-05 08:38:02','2025-11-25 08:38:02'),(963,6,'Botble\\RealEstate\\Models\\Property',7,2,'I am so VERY remarkable in that; nor did Alice think it.','approved','2025-09-26 08:38:02','2025-11-25 08:38:02'),(965,5,'Botble\\RealEstate\\Models\\Property',23,4,'Longitude either, but thought they were nice grand words to say.) Presently she began thinking over all she could not swim. He sent them word I had it written up.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(973,5,'Botble\\RealEstate\\Models\\Property',25,2,'King, the Queen, who were all turning into little cakes as they all moved off, and had just begun to dream that she was beginning to think that proved it at all. However, \'jury-men\' would have this cat removed!\' The Queen smiled and.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(977,12,'Botble\\RealEstate\\Models\\Property',33,1,'SOME change in my size; and as it was just in time to be no sort of thing that would happen: \'\"Miss Alice! Come here directly, and get ready to sink into the court, without even looking round. \'I\'ll fetch.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(982,9,'Botble\\RealEstate\\Models\\Project',2,4,'In another minute there was Mystery,\' the Mock Turtle to the Knave \'Turn them over!\' The Knave shook his grey locks, \'I kept all my life, never!\' They had not as yet had any sense, they\'d take the hint; but the Gryphon in an encouraging.','approved','2025-08-26 08:38:02','2025-11-25 08:38:02'),(985,9,'Botble\\RealEstate\\Models\\Property',10,5,'Queen,\' and she could not help bursting out laughing: and when she looked down at her hands, and began:-- \'You are old,\' said the Pigeon. \'I\'m NOT a serpent!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say.','approved','2025-10-23 08:38:02','2025-11-25 08:38:02'),(987,2,'Botble\\RealEstate\\Models\\Property',13,5,'Caterpillar called after it; and as for the hot day made her so savage when they saw the White Rabbit, \'but it doesn\'t matter which way it was certainly too much of a globe of goldfish she had hurt the poor little juror (it was.','approved','2025-09-10 08:38:02','2025-11-25 08:38:02'),(990,8,'Botble\\RealEstate\\Models\\Project',1,4,'Improve his shining tail, And pour the waters of the window, she.','approved','2025-11-18 08:38:02','2025-11-25 08:38:02'),(991,1,'Botble\\RealEstate\\Models\\Property',8,4,'At this moment Five, who had got its neck nicely straightened out, and was going on, as she went on, \'and most things twinkled after that--only the March Hare was said to Alice; and Alice.','approved','2025-08-22 08:38:02','2025-11-25 08:38:02'),(997,2,'Botble\\RealEstate\\Models\\Property',8,2,'ARE a simpleton.\' Alice did not like to hear it say, as it spoke. \'As wet as ever,\' said.','approved','2025-10-13 08:38:02','2025-11-25 08:38:02'),(1000,3,'Botble\\RealEstate\\Models\\Project',1,3,'I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole party swam to the general conclusion, that wherever you go to law: I will just explain.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(1005,9,'Botble\\RealEstate\\Models\\Property',39,3,'Mock Turtle recovered his voice, and, with.','approved','2025-11-15 08:38:02','2025-11-25 08:38:02'),(1007,2,'Botble\\RealEstate\\Models\\Property',29,2,'COULD! I\'m sure I can\'t get out of his shrill little voice, the name of the well, and noticed that.','approved','2025-09-19 08:38:02','2025-11-25 08:38:02'),(1013,7,'Botble\\RealEstate\\Models\\Property',30,1,'Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'A cat may look at it!\' This speech caused a remarkable.','approved','2025-10-02 08:38:02','2025-11-25 08:38:02'),(1016,2,'Botble\\RealEstate\\Models\\Project',4,2,'Alice could only see her. She is such a simple question,\' added the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Mouse. \'Of course,\' the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right size, that it was too late to.','approved','2025-09-04 08:38:02','2025-11-25 08:38:02'),(1017,7,'Botble\\RealEstate\\Models\\Property',17,1,'I think I should be raving mad--at least not so mad as it went. So she set off at once, she found that it was over at last: \'and I wish you could manage it?) \'And what are they doing?\' Alice whispered to the Caterpillar, just as she was quite surprised to find that the meeting.','approved','2025-10-12 08:38:02','2025-11-25 08:38:02'),(1019,3,'Botble\\RealEstate\\Models\\Property',22,1,'Cat, as soon as look at the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Pigeon; \'but if you\'ve seen them so often, of course was, how to spell \'stupid,\' and.','approved','2025-09-11 08:38:02','2025-11-25 08:38:02'),(1023,4,'Botble\\RealEstate\\Models\\Property',32,3,'Mouse\'s tail; \'but why do you know that Cheshire cats always grinned; in fact, a sort of chance of getting her hands on her lap as if he were.','approved','2025-11-14 08:38:02','2025-11-25 08:38:02'),(1025,3,'Botble\\RealEstate\\Models\\Property',58,4,'I think?\' \'I had NOT!\' cried the Gryphon. \'How the creatures order one about, and shouting \'Off with her face.','approved','2025-11-03 08:38:02','2025-11-25 08:38:02'),(1031,10,'Botble\\RealEstate\\Models\\Property',8,1,'It doesn\'t look like one, but it is.\' \'I quite agree with you,\' said Alice, who was peeping anxiously into her eyes--and still as she swam lazily about.','approved','2025-08-09 08:38:02','2025-11-25 08:38:02'),(1037,12,'Botble\\RealEstate\\Models\\Property',16,2,'Alice timidly. \'Would you like to be true): If she should push the matter with it. There could be no chance of getting her hands up to her that she began thinking over all the.','approved','2025-08-04 08:38:02','2025-11-25 08:38:02'),(1041,4,'Botble\\RealEstate\\Models\\Property',5,3,'Alice caught the flamingo and brought it back, the fight was over, and both the hedgehogs were out of the words did not notice this question, but hurriedly went on, \'if you only walk long enough.\' Alice felt so desperate that she began thinking over other children she knew, who.','approved','2025-09-10 08:38:02','2025-11-25 08:38:02'),(1043,6,'Botble\\RealEstate\\Models\\Property',55,3,'And I declare it\'s too bad, that it was the White Rabbit read:-- \'They told me you had been.','approved','2025-08-30 08:38:02','2025-11-25 08:38:02'),(1045,5,'Botble\\RealEstate\\Models\\Property',40,5,'An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the name of the.','approved','2025-07-30 08:38:02','2025-11-25 08:38:02'),(1054,12,'Botble\\RealEstate\\Models\\Project',3,5,'Dodo suddenly called out in a low voice. \'Not at first, the two creatures got so close to her to wink with one eye; but to get to,\' said the March Hare, who had followed him into the open air. \'IF I don\'t care which happens!\' She ate a little.','approved','2025-09-05 08:38:02','2025-11-25 08:38:02'),(1057,1,'Botble\\RealEstate\\Models\\Property',31,1,'I shan\'t go, at any rate I\'ll never go THERE.','approved','2025-11-01 08:38:02','2025-11-25 08:38:02'),(1059,5,'Botble\\RealEstate\\Models\\Property',44,1,'I only wish it was,\' said the Dodo, pointing to the end of.','approved','2025-07-29 08:38:02','2025-11-25 08:38:02'),(1064,2,'Botble\\RealEstate\\Models\\Project',10,4,'GAVE HER ONE, THEY GAVE HIM TWO--\".','approved','2025-11-07 08:38:02','2025-11-25 08:38:02'),(1065,3,'Botble\\RealEstate\\Models\\Property',34,2,'Alice again, in a more subdued tone, and.','approved','2025-11-24 08:38:02','2025-11-25 08:38:02'),(1067,8,'Botble\\RealEstate\\Models\\Property',26,3,'But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her life before, and behind it, it occurred to her chin upon Alice\'s shoulder, and it was too slippery; and when she had hurt the poor little thing was waving its.','approved','2025-10-24 08:38:02','2025-11-25 08:38:02'),(1069,7,'Botble\\RealEstate\\Models\\Property',39,5,'I get SOMEWHERE,\' Alice added as.','approved','2025-10-22 08:38:02','2025-11-25 08:38:02'),(1071,1,'Botble\\RealEstate\\Models\\Property',27,5,'Fish-Footman was gone, and, by the hand, it hurried off, without waiting for turns, quarrelling all the time she had expected: before she got up, and reduced the answer to it?\' said the Duck: \'it\'s generally a frog or a serpent?\' \'It matters a good many voices all talking.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(1075,6,'Botble\\RealEstate\\Models\\Property',28,4,'Alice, (she had grown in the wind, and was just possible it had come back and finish your story!\' Alice called after it; and the baby with some severity; \'it\'s very interesting. I never heard of \"Uglification,\"\'.','approved','2025-09-18 08:38:02','2025-11-25 08:38:02'),(1077,5,'Botble\\RealEstate\\Models\\Property',7,5,'Alice very politely; but she stopped hastily, for.','approved','2025-08-15 08:38:02','2025-11-25 08:38:02'),(1085,1,'Botble\\RealEstate\\Models\\Property',56,4,'Alice. \'Anything you like,\' said the King, looking round the rosetree; for, you see, Miss, we\'re doing our.','approved','2025-10-03 08:38:02','2025-11-25 08:38:02'),(1089,3,'Botble\\RealEstate\\Models\\Property',56,3,'Alice went on for some minutes. The Caterpillar was the Rabbit in a low voice, \'Your Majesty must cross-examine the next thing is, to get in?\' \'There might be some sense in your pocket?\' he went on again: \'Twenty-four.','approved','2025-11-10 08:38:02','2025-11-25 08:38:02'),(1093,3,'Botble\\RealEstate\\Models\\Property',13,5,'King. \'It began with the time,\' she said to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder who will put on one knee. \'I\'m a poor man, your Majesty,\' said Two, in a helpless sort of.','approved','2025-11-18 08:38:02','2025-11-25 08:38:02'),(1095,12,'Botble\\RealEstate\\Models\\Property',4,4,'Mock Turtle. So she sat still and said to the general conclusion.','approved','2025-08-10 08:38:02','2025-11-25 08:38:02'),(1101,6,'Botble\\RealEstate\\Models\\Property',5,4,'King. (The jury all looked puzzled.) \'He must have been changed for any lesson-books!\' And so it was quite a crowd of little cartwheels, and the Gryphon went on. \'I do,\' Alice hastily replied; \'at least--at least I know is, something comes at me like that!\' By this time the Queen had.','approved','2025-08-17 08:38:02','2025-11-25 08:38:02'),(1107,8,'Botble\\RealEstate\\Models\\Property',19,2,'Bill\'s place for a minute, nurse! But I\'ve got to the end: then stop.\' These were the two.','approved','2025-11-16 08:38:02','2025-11-25 08:38:02'),(1113,10,'Botble\\RealEstate\\Models\\Property',9,5,'Tortoise, if he were trying to put the hookah out of the hall; but, alas! either the locks were too large, or the key was lying on their slates, and she said this, she looked down at her side. She was close behind her, listening: so she set to.','approved','2025-09-24 08:38:02','2025-11-25 08:38:02'),(1115,1,'Botble\\RealEstate\\Models\\Property',19,3,'It\'s the most important piece of evidence we\'ve heard yet,\' said the Eaglet. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Hatter. \'I deny it!\' said the Duchess; \'and that\'s why. Pig!\' She said the sage, as he found it so yet,\'.','approved','2025-11-04 08:38:02','2025-11-25 08:38:02'),(1119,10,'Botble\\RealEstate\\Models\\Property',25,5,'Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. \'It\'s a mineral, I THINK,\' said Alice. \'Then you shouldn\'t talk,\' said the.','approved','2025-08-05 08:38:02','2025-11-25 08:38:02'),(1127,2,'Botble\\RealEstate\\Models\\Property',31,2,'I THINK; or is it directed to?\' said one of the right-hand bit to try the patience of an oyster!\' \'I wish I had our Dinah here, I know all sorts of things, and she, oh! she knows such a noise inside, no one to listen to her. \'I wish I hadn\'t gone down that rabbit-hole--and.','approved','2025-11-10 08:38:02','2025-11-25 08:38:02'),(1129,8,'Botble\\RealEstate\\Models\\Property',28,3,'Alice could speak again. The Mock Turtle persisted. \'How COULD he turn them out with his nose Trims his belt and his friends shared their never-ending meal, and the White Rabbit read out, at the mushroom (she had grown up,\' she said to a lobster--\' (Alice began to say it any longer than that,\'.','approved','2025-09-15 08:38:02','2025-11-25 08:38:02'),(1131,5,'Botble\\RealEstate\\Models\\Property',45,1,'The cook threw a frying-pan after her as she added, to herself, \'whenever I eat or drink something or other; but the Gryphon answered, very nearly carried it off. \'If everybody minded their own business!\' \'Ah, well! It means.','approved','2025-09-24 08:38:02','2025-11-25 08:38:02'),(1133,3,'Botble\\RealEstate\\Models\\Property',54,4,'Then she went on in a tone of great relief. \'Call.','approved','2025-08-13 08:38:02','2025-11-25 08:38:02'),(1135,5,'Botble\\RealEstate\\Models\\Property',51,3,'Mabel! I\'ll try if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t swim, can you?\' he added, turning to the little crocodile Improve his shining tail, And pour the waters of the Queen\'s hedgehog just now, only it ran away when it had.','approved','2025-11-07 08:38:02','2025-11-25 08:38:02'),(1141,11,'Botble\\RealEstate\\Models\\Property',19,4,'Alice to find it out, we should all have our heads cut off, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and, after glaring at her for a minute, while Alice thought to herself. \'Of the mushroom,\' said the Rabbit coming to look at all a proper way of nursing it, (which.','approved','2025-11-11 08:38:02','2025-11-25 08:38:02'),(1143,8,'Botble\\RealEstate\\Models\\Property',30,5,'There ought to go through next walking about at the corners: next the ten courtiers; these were all writing very busily on slates. \'What are you thinking of?\' \'I beg.','approved','2025-09-25 08:38:02','2025-11-25 08:38:02'),(1147,10,'Botble\\RealEstate\\Models\\Property',29,3,'I hate cats and dogs.\' It was so full of soup. \'There\'s certainly too.','approved','2025-10-13 08:38:02','2025-11-25 08:38:02'),(1149,7,'Botble\\RealEstate\\Models\\Property',20,1,'Queen,\' and she soon made out that it felt quite unhappy at the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER.','approved','2025-09-30 08:38:02','2025-11-25 08:38:02'),(1152,9,'Botble\\RealEstate\\Models\\Project',11,3,'Mouse replied rather crossly: \'of course you know that cats COULD grin.\' \'They all can,\' said the Hatter; \'so I should frighten them out again. Suddenly.','approved','2025-10-26 08:38:02','2025-11-25 08:38:02'),(1153,8,'Botble\\RealEstate\\Models\\Property',44,3,'And he got up this morning, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'than waste it in a trembling voice, \'--and I hadn\'t begun my tea--not above a week or so--and what with the lobsters, out to the jury. \'Not yet, not yet!\' the Rabbit angrily.','approved','2025-10-15 08:38:02','2025-11-25 08:38:02'),(1157,8,'Botble\\RealEstate\\Models\\Property',36,5,'Alice, as the whole pack rose up into the darkness as hard as it was a very little! Besides, SHE\'S she, and I\'m sure _I_ shan\'t be beheaded!\'.','approved','2025-11-02 08:38:02','2025-11-25 08:38:02'),(1161,7,'Botble\\RealEstate\\Models\\Property',14,2,'Hatter. Alice felt so desperate that she was saying, and the.','approved','2025-09-08 08:38:02','2025-11-25 08:38:02'),(1165,5,'Botble\\RealEstate\\Models\\Property',20,4,'Caterpillar. \'Is that all?\' said the Dodo, \'the best way you go,\' said the Cat. \'I don\'t see how he can thoroughly enjoy The pepper when.','approved','2025-07-29 08:38:02','2025-11-25 08:38:02'),(1171,9,'Botble\\RealEstate\\Models\\Property',41,4,'This seemed to be afraid of it. Presently the Rabbit began. Alice gave a look askance.','approved','2025-09-10 08:38:02','2025-11-25 08:38:02'),(1175,6,'Botble\\RealEstate\\Models\\Property',43,3,'Alice for protection. \'You shan\'t be beheaded!\' said Alice, as she wandered about for a minute or two. \'They couldn\'t have wanted it much,\' said the Mock Turtle, \'but if they do, why then they\'re a kind of serpent, that\'s all I can.','approved','2025-08-17 08:38:02','2025-11-25 08:38:02'),(1185,8,'Botble\\RealEstate\\Models\\Property',25,2,'Alice, and she at once without waiting for turns, quarrelling all the things being.','approved','2025-09-20 08:38:02','2025-11-25 08:38:02'),(1187,6,'Botble\\RealEstate\\Models\\Property',39,3,'M--\' \'Why with an anxious look at the Mouse\'s tail; \'but why do you know what a dear quiet thing,\' Alice.','approved','2025-11-17 08:38:02','2025-11-25 08:38:02'),(1193,10,'Botble\\RealEstate\\Models\\Property',16,4,'Mock Turtle said: \'advance twice, set to partners--\' \'--change lobsters, and retire in same order,\' continued the King. \'Nothing whatever,\' said Alice. \'Well, then,\' the Cat again, sitting on the trumpet, and called out in a trembling voice:-- \'I passed by his garden.\"\'.','approved','2025-10-01 08:38:02','2025-11-25 08:38:02'),(1195,11,'Botble\\RealEstate\\Models\\Property',11,4,'HE went mad, you know--\' \'What did they live on?\' said Alice, rather alarmed at the mouth with strings: into this they slipped the guinea-pig, head first, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never saw one, or heard of such a nice.','approved','2025-10-13 08:38:02','2025-11-25 08:38:02'),(1196,10,'Botble\\RealEstate\\Models\\Project',6,4,'Dodo said, \'EVERYBODY has won, and all that,\' he said in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will.','approved','2025-11-25 08:38:02','2025-11-25 08:38:02'),(1199,9,'Botble\\RealEstate\\Models\\Property',53,3,'How she longed to change the subject. \'Ten hours the first sentence in her hands, wondering if anything would EVER happen in a loud, indignant voice, but she did not seem to dry me at all.\' \'In that case,\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said.','approved','2025-10-26 08:38:02','2025-11-25 08:38:02'),(1202,2,'Botble\\RealEstate\\Models\\Project',15,1,'ME,\' said Alice in a helpless sort of chance of getting up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard the Queen jumped up in her head, she tried to get in?\' \'There might be some sense in your knocking,\' the Footman.','approved','2025-08-20 08:38:02','2025-11-25 08:38:02'),(1203,9,'Botble\\RealEstate\\Models\\Property',18,2,'Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of a treacle-well--eh, stupid?\' \'But they were nowhere to be sure; but I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you take me for his housemaid,\' she said this, she came suddenly.','approved','2025-11-02 08:38:02','2025-11-25 08:38:02'),(1206,12,'Botble\\RealEstate\\Models\\Project',13,4,'Alice turned and came flying down upon her: she gave a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never understood what it was: at first she thought it must be the right distance--but then I wonder if I.','approved','2025-10-14 08:38:02','2025-11-25 08:38:02'),(1207,6,'Botble\\RealEstate\\Models\\Property',23,5,'The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to the other, and growing.','approved','2025-08-19 08:38:02','2025-11-25 08:38:02'),(1211,4,'Botble\\RealEstate\\Models\\Property',17,3,'She was close behind her, listening: so she set the little golden key and hurried upstairs, in great disgust, and walked off; the Dormouse again, so violently, that.','approved','2025-08-12 08:38:02','2025-11-25 08:38:02'),(1219,3,'Botble\\RealEstate\\Models\\Property',40,4,'Rabbit say, \'A barrowful will do, to begin with,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon said, in a very difficult.','approved','2025-11-10 08:38:02','2025-11-25 08:38:02');
/*!40000 ALTER TABLE `re_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.phone-number\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"careers.index\":true,\"careers.create\":true,\"careers.edit\":true,\"careers.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"unverified-accounts.index\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"real-estate.settings.general\":true,\"real-estate.settings.currencies\":true,\"real-estate.settings.accounts\":true,\"real-estate.settings.invoices\":true,\"real-estate.settings.invoice-template\":true,\"reports.index\":true,\"property.export\":true,\"property.import\":true,\"project.export\":true,\"project.import\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-11-25 08:37:52','2025-11-25 08:37:52');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','56d99fd6eb47607f87d8f2704228ca6f',NULL,'2025-11-25 08:38:02'),(2,'api_enabled','0',NULL,'2025-11-25 08:38:02'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"faq\",\"location\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2025-11-25 08:38:02'),(4,'analytics_dashboard_widgets','0','2025-11-25 08:37:48','2025-11-25 08:37:48'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-11-25 08:37:49','2025-11-25 08:37:49'),(6,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-11-25 08:37:49','2025-11-25 08:37:49'),(7,'payment_cod_fee_type','fixed',NULL,'2025-11-25 08:38:02'),(8,'payment_bank_transfer_fee_type','fixed',NULL,'2025-11-25 08:38:02'),(9,'real_estate_mandatory_fields_at_consult_form','[\"email\"]',NULL,'2025-11-25 08:38:02'),(10,'theme','homzen',NULL,'2025-11-25 08:38:02'),(11,'show_admin_bar','1',NULL,'2025-11-25 08:38:02'),(12,'language_hide_default','1',NULL,'2025-11-25 08:38:02'),(13,'language_switcher_display','dropdown',NULL,'2025-11-25 08:38:02'),(14,'language_display','all',NULL,'2025-11-25 08:38:02'),(15,'language_hide_languages','[]',NULL,'2025-11-25 08:38:02'),(16,'permalink-botble-blog-models-post','news',NULL,'2025-11-25 08:38:02'),(17,'permalink-botble-blog-models-category','news',NULL,'2025-11-25 08:38:02'),(18,'payment_cod_status','1',NULL,'2025-11-25 08:38:02'),(19,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-11-25 08:38:02'),(20,'payment_bank_transfer_status','1',NULL,'2025-11-25 08:38:02'),(21,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-11-25 08:38:02'),(22,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-11-25 08:38:02'),(23,'real_estate_display_views_count_in_detail_page','1',NULL,'2025-11-25 08:38:02'),(24,'theme-homzen-site_title','Homzen',NULL,'2025-11-25 08:38:02'),(25,'theme-homzen-seo_description','Find your favorite homes at Homzen',NULL,'2025-11-25 08:38:02'),(26,'theme-homzen-copyright','©%Y Homzen is Proudly Powered by Botble Team.',NULL,'2025-11-25 08:38:02'),(27,'theme-homzen-favicon','general/favicon.png',NULL,'2025-11-25 08:38:02'),(28,'theme-homzen-logo','general/logo.png',NULL,'2025-11-25 08:38:02'),(29,'theme-homzen-logo_light','general/logo-light.png',NULL,'2025-11-25 08:38:02'),(30,'theme-homzen-preloader_enabled','yes',NULL,'2025-11-25 08:38:02'),(31,'theme-homzen-preloader_version','v2',NULL,'2025-11-25 08:38:02'),(32,'theme-homzen-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,'2025-11-25 08:38:02'),(33,'theme-homzen-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2025-11-25 08:38:02'),(34,'theme-homzen-primary_color','#db1d23',NULL,'2025-11-25 08:38:02'),(35,'theme-homzen-hover_color','#cd380f',NULL,'2025-11-25 08:38:02'),(36,'theme-homzen-footer_background_color','#161e2d',NULL,'2025-11-25 08:38:02'),(37,'theme-homzen-footer_background_image','general/banner-footer.png',NULL,'2025-11-25 08:38:02'),(38,'theme-homzen-use_modal_for_authentication','1',NULL,'2025-11-25 08:38:02'),(39,'theme-homzen-homepage_id','1',NULL,'2025-11-25 08:38:02'),(40,'theme-homzen-blog_page_id','6',NULL,'2025-11-25 08:38:02'),(41,'theme-homzen-hotline','0123 456 789',NULL,'2025-11-25 08:38:02'),(42,'theme-homzen-email','contact@botble.com',NULL,'2025-11-25 08:38:02'),(43,'theme-homzen-breadcrumb_background_color','#f7f7f7',NULL,'2025-11-25 08:38:02'),(44,'theme-homzen-breadcrumb_text_color','#161e2d',NULL,'2025-11-25 08:38:02'),(45,'theme-homzen-lazy_load_images','1',NULL,'2025-11-25 08:38:02'),(46,'theme-homzen-lazy_load_placeholder_image','general/placeholder.png',NULL,'2025-11-25 08:38:02'),(47,'theme-homzen-newsletter_popup_enable','1',NULL,'2025-11-25 08:38:02'),(48,'theme-homzen-newsletter_popup_image','general/newsletter-image.jpg',NULL,'2025-11-25 08:38:02'),(49,'theme-homzen-newsletter_popup_title','Let’s join our newsletter!',NULL,'2025-11-25 08:38:02'),(50,'theme-homzen-newsletter_popup_subtitle','Weekly Updates',NULL,'2025-11-25 08:38:02'),(51,'theme-homzen-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2025-11-25 08:38:02'),(52,'theme-homzen-properties_list_page_id','14',NULL,'2025-11-25 08:38:02'),(53,'theme-homzen-projects_list_page_id','15',NULL,'2025-11-25 08:38:02'),(54,'announcement_max_width','2481',NULL,NULL),(55,'announcement_text_color','#161e2d',NULL,NULL),(56,'announcement_background_color','transparent',NULL,NULL),(57,'announcement_text_alignment','start',NULL,NULL),(58,'announcement_dismissible','0',NULL,NULL),(59,'announcement_placement','theme',NULL,NULL),(60,'announcement_autoplay','1',NULL,NULL),(61,'announcement_autoplay_delay','5000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(2,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(3,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(4,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(5,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(6,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-25 08:37:52','2025-11-25 08:37:52'),(7,'walnut-park-apartments',1,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:56','2025-11-25 08:37:56'),(8,'sunshine-wonder-villas',2,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(9,'diamond-island',3,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(10,'the-nassim',4,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(11,'vinhomes-grand-park',5,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(12,'the-metropole-thu-thiem',6,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(13,'villa-on-grand-avenue',7,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(14,'traditional-food-restaurant',8,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(15,'villa-on-hollywood-boulevard',9,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(16,'office-space-at-northwest-107th',10,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(17,'home-in-merrick-way',11,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(18,'adarsh-greens',12,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(19,'rustomjee-evershine-global-city',13,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(20,'godrej-exquisite',14,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(21,'godrej-prime',15,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(22,'ps-panache',16,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(23,'upturn-atmiya-centria',17,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(24,'brigade-oasis',18,'Botble\\RealEstate\\Models\\Project','projects','2025-11-25 08:37:57','2025-11-25 08:37:57'),(25,'3-beds-villa-calpe-alicante',1,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(26,'lavida-plus-office-tel-1-bedroom',2,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(27,'vinhomes-grand-park-studio-1-bedroom',3,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(28,'the-sun-avenue-office-tel-1-bedroom',4,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(29,'property-for-sale-johannesburg-south-africa',5,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(30,'stunning-french-inspired-manor',6,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(31,'villa-for-sale-at-bermuda-dunes',7,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(32,'walnut-park-apartment',8,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(33,'5-beds-luxury-house',9,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(34,'family-victorian-view-home',10,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(35,'osaka-heights-apartment',11,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(36,'private-estate-magnificent-views',12,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(37,'thompson-road-house-for-rent',13,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(38,'brand-new-1-bedroom-apartment-in-first-class-location',14,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(39,'elegant-family-home-presents-premium-modern-living',15,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(40,'luxury-apartments-in-singapore-for-sale',16,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(41,'5-room-luxury-penthouse-for-sale-in-kuala-lumpur',17,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(42,'2-floor-house-in-compound-pejaten-barat-kemang',18,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(43,'apartment-muiderstraatweg-in-diemen',19,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(44,'nice-apartment-for-rent-in-berlin',20,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(45,'pumpkin-key-private-island',21,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(46,'maplewood-estates',22,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(47,'pine-ridge-manor',23,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(48,'oak-hill-residences',24,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(49,'sunnybrook-villas',25,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(50,'riverstone-condominiums',26,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(51,'cedar-park-apartments',27,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(52,'lakeside-retreat',28,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(53,'willow-creek-homes',29,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(54,'grandview-heights',30,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(55,'forest-glen-cottages',31,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(56,'harborview-towers',32,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(57,'meadowlands-estates',33,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(58,'highland-meadows',34,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(59,'brookfield-gardens',35,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(60,'silverwood-villas',36,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(61,'evergreen-terrace',37,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(62,'golden-gate-residences',38,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(63,'spring-blossom-park',39,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(64,'horizon-pointe',40,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(65,'whispering-pines-lodge',41,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(66,'sunset-ridge',42,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(67,'timberline-estates',43,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(68,'crystal-lake-condos',44,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(69,'briarwood-apartments',45,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(70,'summit-view',46,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(71,'elmwood-park',47,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(72,'stonegate-homes',48,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(73,'rosewood-villas',49,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(74,'prairie-meadows',50,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(75,'hawthorne-heights',51,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(76,'sierra-vista',52,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(77,'autumn-leaves',53,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(78,'blue-sky-residences',54,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(79,'pebble-creek',55,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(80,'magnolia-manor',56,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(81,'cherry-blossom-estates',57,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:57','2025-11-25 08:37:57'),(82,'windsor-park',58,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:58','2025-11-25 08:37:58'),(83,'seaside-villas',59,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:58','2025-11-25 08:37:58'),(84,'mountain-view-retreat',60,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:58','2025-11-25 08:37:58'),(85,'amberwood-apartments',61,'Botble\\RealEstate\\Models\\Property','properties','2025-11-25 08:37:58','2025-11-25 08:37:58'),(86,'buying-a-home',1,'Botble\\Blog\\Models\\Category','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(87,'selling-a-home',2,'Botble\\Blog\\Models\\Category','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(88,'market-trends',3,'Botble\\Blog\\Models\\Category','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(89,'home-improvement',4,'Botble\\Blog\\Models\\Category','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(90,'real-estate-investing',5,'Botble\\Blog\\Models\\Category','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(91,'neighborhood-guides',6,'Botble\\Blog\\Models\\Category','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(92,'tips',1,'Botble\\Blog\\Models\\Tag','tag','2025-11-25 08:37:58','2025-11-25 08:37:58'),(93,'investing',2,'Botble\\Blog\\Models\\Tag','tag','2025-11-25 08:37:58','2025-11-25 08:37:58'),(94,'market-analysis',3,'Botble\\Blog\\Models\\Tag','tag','2025-11-25 08:37:58','2025-11-25 08:37:58'),(95,'diy',4,'Botble\\Blog\\Models\\Tag','tag','2025-11-25 08:37:58','2025-11-25 08:37:58'),(96,'luxury-homes',5,'Botble\\Blog\\Models\\Tag','tag','2025-11-25 08:37:58','2025-11-25 08:37:58'),(97,'first-time-buyers',6,'Botble\\Blog\\Models\\Tag','tag','2025-11-25 08:37:58','2025-11-25 08:37:58'),(98,'property-management',7,'Botble\\Blog\\Models\\Tag','tag','2025-11-25 08:37:58','2025-11-25 08:37:58'),(99,'renovation',8,'Botble\\Blog\\Models\\Tag','tag','2025-11-25 08:37:58','2025-11-25 08:37:58'),(100,'top-10-tips-for-first-time-home-buyers',1,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(101,'how-to-stage-your-home-for-a-quick-sale',2,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(102,'understanding-the-current-real-estate-market-trends',3,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(103,'diy-home-improvement-projects-that-add-value',4,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(104,'a-beginners-guide-to-real-estate-investing',5,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(105,'how-to-choose-the-right-neighborhood-for-your-family',6,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(106,'luxury-homes-what-to-look-for',7,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(107,'property-management-best-practices-for-landlords',8,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(108,'renovation-ideas-to-increase-your-homes-value',9,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(109,'the-ultimate-guide-to-buying-a-vacation-home',10,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(110,'how-to-successfully-sell-your-home-in-a-buyers-market',11,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(111,'home-inspection-what-to-expect-and-how-to-prepare',12,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(112,'eco-friendly-home-improvements-for-sustainable-living',13,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(113,'how-to-navigate-the-mortgage-process',14,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(114,'real-estate-market-analysis-what-you-need-to-know',15,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:58','2025-11-25 08:37:59'),(115,'tips-for-renting-out-your-property',16,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:59','2025-11-25 08:37:59'),(116,'understanding-property-taxes-and-how-to-lower-them',17,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:59','2025-11-25 08:37:59'),(117,'the-benefits-of-smart-home-technology',18,'Botble\\Blog\\Models\\Post','news','2025-11-25 08:37:59','2025-11-25 08:37:59'),(118,'homepage-1',1,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(119,'homepage-2',2,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(120,'homepage-3',3,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(121,'homepage-4',4,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(122,'homepage-5',5,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(123,'blog',6,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(124,'contact-us',7,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(125,'our-services',8,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(126,'faqs',9,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(127,'about-us',10,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(128,'pricing-plans',11,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(129,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(130,'coming-soon',13,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(131,'properties',14,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(132,'projects',15,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(133,'cookie-policy',16,'Botble\\Page\\Models\\Page','','2025-11-25 08:38:01','2025-11-25 08:38:01'),(134,'senior-full-stack-engineer-creator-success-full-time',1,'ArchiElite\\Career\\Models\\Career','careers','2025-11-25 08:38:02','2025-11-25 08:38:02'),(135,'data-science-specialist-analytics-division',2,'ArchiElite\\Career\\Models\\Career','careers','2025-11-25 08:38:02','2025-11-25 08:38:02'),(136,'product-marketing-manager-growth-team',3,'ArchiElite\\Career\\Models\\Career','careers','2025-11-25 08:38:02','2025-11-25 08:38:02'),(137,'uxui-designer-user-experience-team',4,'ArchiElite\\Career\\Models\\Career','careers','2025-11-25 08:38:02','2025-11-25 08:38:02'),(138,'operations-manager-supply-chain-division',5,'ArchiElite\\Career\\Models\\Career','careers','2025-11-25 08:38:02','2025-11-25 08:38:02'),(139,'financial-analyst-investment-group',6,'ArchiElite\\Career\\Models\\Career','careers','2025-11-25 08:38:02','2025-11-25 08:38:02'),(140,'jasen',1,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(141,'princess',2,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(142,'jamie',3,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(143,'raven',4,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(144,'abner',5,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(145,'sylvia',6,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(146,'cassidy',7,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(147,'alda',8,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(148,'elmer',9,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(149,'donavon',10,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(150,'fay',11,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02'),(151,'bryana',12,'Botble\\RealEstate\\Models\\Account','agents','2025-11-25 08:38:02','2025-11-25 08:38:02');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'France','france','FR',1,0,'locations/5.jpg',0,'published',NULL,NULL),(2,'England','england','EN',2,0,'locations/4.jpg',0,'published',NULL,NULL),(3,'New York','new-york','NY',3,0,'locations/3.jpg',0,'published',NULL,NULL),(4,'Holland','holland','HL',4,0,'locations/3.jpg',0,'published',NULL,NULL),(5,'Denmark','denmark','DN',5,0,'locations/4.jpg',0,'published',NULL,NULL),(6,'Bavaria','bavaria','BY',6,0,'locations/4.jpg',0,'published',NULL,NULL),(7,'Tokyo','tokyo','TK',7,0,'locations/4.jpg',0,'published',NULL,NULL),(8,'Ontario','ontario','ON',8,0,'locations/1.jpg',0,'published',NULL,NULL),(9,'New South Wales','new-south-wales','NSW',9,0,'locations/3.jpg',0,'published',NULL,NULL),(10,'Lombardy','lombardy','LO',10,0,'locations/5.jpg',0,'published',NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Tips',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(2,'Investing',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(3,'Market Analysis',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(4,'DIY',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(5,'Luxury Homes',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(6,'First-time Buyers',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(7,'Property Management',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(8,'Renovation',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-25 08:37:58','2025-11-25 08:37:58');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Jennifer Lee','From the initial consultation to closing day, the real estate team went above and beyond to ensure I found the perfect home. Their dedication and professionalism made the entire process seamless. Thank you!','avatars/1.jpg','Happy Home Seeker','published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(2,'Robert Evans','I am impressed by the level of expertise and commitment demonstrated by this real estate team. Their insights into the market helped me make informed investment decisions, and I couldn\'t be happier with the results.','avatars/1.jpg','Property Investor','published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(3,'Jessica White','Selling my home with the help of this real estate team was a breeze. They provided valuable advice, staged my property beautifully, and negotiated a great deal. I highly recommend their services to anyone looking to sell their home!','avatars/1.jpg','Delighted Home Seller','published','2025-11-25 08:37:58','2025-11-25 08:37:58'),(4,'Daniel Miller','Thanks to the expertise and guidance of this real estate team, I am now the proud owner of my dream home. They listened to my preferences, answered all my questions, and made the entire home buying process a positive experience.','avatars/2.jpg','Happy New Homeowner','published','2025-11-25 08:37:58','2025-11-25 08:37:58');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `sessions_invalidated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'myrl12@predovic.net',NULL,NULL,'$2y$12$b1RefP/p7ayeVhCnPwh90OEf6CroqjmpmM5TWXg6JOVPpieB60ZES',NULL,'2025-11-25 08:37:52','2025-11-25 08:37:52','Bert','Johns','admin',12,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `widgets_unique_index` (`theme`,`sidebar_id`,`widget_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteLogoWidget','top_footer_sidebar','homzen',1,'[]','2025-11-25 08:37:52','2025-11-25 08:37:52'),(2,'SocialLinksWidget','top_footer_sidebar','homzen',2,'{\"title\":\"Follow Us:\"}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(3,'SiteInformationWidget','inner_footer_sidebar','homzen',1,'{\"about\":\"Specializes in providing high-class tours for those in need. Contact Us\",\"items\":[[{\"key\":\"icon\",\"value\":\"ti ti-map-pin\"},{\"key\":\"text\",\"value\":\"101 E 129th St, East Chicago, IN 46312, US\"}],[{\"key\":\"icon\",\"value\":\"ti ti-phone-call\"},{\"key\":\"text\",\"value\":\"1-333-345-6868\"}],[{\"key\":\"icon\",\"value\":\"ti ti-mail\"},{\"key\":\"text\",\"value\":\"contact@botble.com\"}]]}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(4,'Botble\\Widget\\Widgets\\CoreSimpleMenu','inner_footer_sidebar','homzen',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Categories\",\"items\":[[{\"key\":\"label\",\"value\":\"Pricing Plans\"},{\"key\":\"url\",\"value\":\"\\/pricing-plans\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Our Services\"},{\"key\":\"url\",\"value\":\"\\/our-services\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"About Us\"},{\"key\":\"url\",\"value\":\"\\/about-us\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact Us\"},{\"key\":\"url\",\"value\":\"\\/contact-us\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(5,'Botble\\Widget\\Widgets\\CoreSimpleMenu','inner_footer_sidebar','homzen',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Our Company\",\"items\":[[{\"key\":\"label\",\"value\":\"Property For Sale\"},{\"key\":\"url\",\"value\":\"\\/properties?type=sale\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Property For Rent\"},{\"key\":\"url\",\"value\":\"\\/properties?type=rent\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"\\/privacy-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Our Agents\"},{\"key\":\"url\",\"value\":\"\\/agents\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(6,'NewsletterWidget','inner_footer_sidebar','homzen',4,'{\"title\":\"Newsletter\",\"subtitle\":\"Your Weekly\\/Monthly Dose of Knowledge and Inspiration\"}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(7,'SiteCopyrightWidget','bottom_footer_sidebar','homzen',1,'[]','2025-11-25 08:37:52','2025-11-25 08:37:52'),(8,'Botble\\Widget\\Widgets\\CoreSimpleMenu','bottom_footer_sidebar','homzen',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"items\":[[{\"key\":\"label\",\"value\":\"Terms Of Services\"},{\"key\":\"url\",\"value\":\"\\/our-services\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"\\/privacy-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Cookie Policy\"},{\"key\":\"url\",\"value\":\"\\/cookie-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(9,'BlogSearchWidget','blog_sidebar','homzen',1,'{\"name\":\"Search\"}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(10,'BlogPostsWidget','blog_sidebar','homzen',2,'{\"name\":\"Recent Posts\",\"limit\":3}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(11,'BlogCategoriesWidget','blog_sidebar','homzen',3,'{\"name\":\"By Categories\",\"number_display\":8}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(12,'BlogTagsWidget','blog_sidebar','homzen',4,'{\"name\":\"Popular Tag\",\"number_display\":9}','2025-11-25 08:37:52','2025-11-25 08:37:52'),(13,'RelatedPostsWidget','bottom_post_detail_sidebar','homzen',1,'{\"title\":\"News insight\",\"subtitle\":\"Related Posts\",\"limit\":3}','2025-11-25 08:37:52','2025-11-25 08:37:52');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-25 22:38:03
