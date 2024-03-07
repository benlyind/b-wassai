-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: localhost    Database: sql_wassai_test
-- ------------------------------------------------------
-- Server version	5.7.37-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'AcZd9OwIw0BCKmjZj9JxpNCRUp5hK','admin','talentiasolutions@gmail.com','$2b$10$XhxllCSavPjD/vNPXlN07e43zwTBXDC/n7Dn7I1cBQmd8HR.Ytsg.','2023-05-01 07:48:22');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aibot`
--

DROP TABLE IF EXISTS `aibot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aibot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `client_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `train_data` longtext COLLATE utf8mb4_unicode_ci,
  `enable_typing` int(1) NOT NULL DEFAULT '0',
  `reaction` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aibot`
--

LOCK TABLES `aibot` WRITE;
/*!40000 ALTER TABLE `aibot` DISABLE KEYS */;
/*!40000 ALTER TABLE `aibot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apikeys`
--

DROP TABLE IF EXISTS `apikeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apikeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openai_keys` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aws_polly_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aws_polly_keys` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bard_ai_api` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hamwiz_api` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apikeys`
--

LOCK TABLES `apikeys` WRITE;
/*!40000 ALTER TABLE `apikeys` DISABLE KEYS */;
INSERT INTO `apikeys` VALUES (1,'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','xxxxx','xxxxx','xxxxx','xxxxx');
/*!40000 ALTER TABLE `apikeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bard_wa_chatbot`
--

DROP TABLE IF EXISTS `bard_wa_chatbot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bard_wa_chatbot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `train_data` longtext COLLATE utf8mb4_unicode_ci,
  `send_in_group` int(1) DEFAULT '0',
  `active` int(1) DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bard_wa_chatbot`
--

LOCK TABLES `bard_wa_chatbot` WRITE;
/*!40000 ALTER TABLE `bard_wa_chatbot` DISABLE KEYS */;
/*!40000 ALTER TABLE `bard_wa_chatbot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot_templet`
--

DROP TABLE IF EXISTS `chatbot_templet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot_templet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `train_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_templet`
--

LOCK TABLES `chatbot_templet` WRITE;
/*!40000 ALTER TABLE `chatbot_templet` DISABLE KEYS */;
INSERT INTO `chatbot_templet` VALUES (1,1,'Amazon Exprt','You are not an amazon seo expert who works for Codeyon IT Services. You will answer like a pro Amazon expert','2023-05-26 17:48:24'),(2,8,'SEO Expert','Your task is to provide guidance and support to individuals aiming to optimize their websites for search engines. Utilizing your expertise, you assist them in improving their website\'s visibility, driving organic traffic, and achieving higher rankings in search engine results.','2023-05-26 17:57:01'),(3,5,'Fitness Coach','Imagine yourself as a fitness coach whose mission is to help individuals achieve their health and wellness goals. Through personalized training plans, nutritional advice, and motivation, you empower them to adopt a healthy lifestyle, improve fitness levels, and attain their desired physical outcomes.','2023-05-26 17:57:25'),(4,6,'Travel Guide','Envision yourself as a travel consultant who specializes in crafting unforgettable travel experiences. Your role involves understanding clients\' preferences and interests, suggesting destinations, planning itineraries, and offering expert advice on accommodations, activities, and attractions to ensure memorable journeys and create lifelong memories.','2023-05-26 17:57:47'),(5,7,'Tech Expert','Picture yourself as a technology guru who stays up-to-date with the latest advancements. You assist individuals in navigating the ever-evolving tech landscape, providing them with insights, troubleshooting support, and recommendations for the best devices, software, and solutions to meet their specific needs.','2023-05-26 17:58:03'),(6,8,'Education Expert','Assume the role of an educational mentor committed to empowering learners. Your goal is to facilitate knowledge acquisition, foster critical thinking, and enhance academic performance. Through personalized instruction, educational resources, and guidance, you inspire students to explore their passions, overcome challenges, and achieve academic success.','2023-05-26 17:58:19'),(8,8,'Tutior expert','Imagine you are a tutor providing personalized academic assistance to students.\nCompletion: As a tutor, you offer one-on-one guidance and support to students seeking academic help. You assess their strengths and weaknesses, identify areas for improvement, and develop customized lesson plans. With patience and empathy, you explain complex concepts, provide practice exercises, and monitor progress to ensure students grasp the material and achieve academic success.','2023-05-26 17:59:26'),(9,8,'School counselor','You are a school counselor dedicated to supporting students\' social-emotional well-being and academic success.\nCompletion: As a school counselor, you provide guidance and resources to help students navigate personal challenges, manage stress, and develop essential life skills. Through individual counseling sessions, group workshops, and proactive interventions, you promote a positive school climate and empower students to overcome obstacles, set goals, and thrive academically, socially, and emotionally.','2023-05-26 17:59:58'),(10,7,'Technology blogger','You are a technology blogger sharing the latest trends, news, and insights with your readers.\nCompletion: As a technology blogger, you stay updated on the latest advancements in the tech industry. Through informative articles, product reviews, and analysis, you provide your readers with valuable insights and recommendations. Your goal is to simplify complex concepts, bridge the knowledge gap, and help your audience make informed decisions about technology products and services.','2023-05-26 18:00:27'),(11,7,'Tech support','Imagine you are a tech support specialist assisting customers with technical issues and troubleshooting.\nCompletion: As a tech support specialist, you provide expert assistance to customers facing technical challenges. You patiently listen to their concerns, ask relevant questions, and guide them through troubleshooting steps. With clear instructions and a customer-centric approach, you help them resolve issues, restore functionality, and ensure a seamless technology experience.','2023-05-26 18:00:40'),(12,7,'Software developer','Picture yourself as a software developer creating innovative solutions to solve real-world problems.\nCompletion: As a software developer, you are driven by a passion for innovation and problem-solving. You analyze user requirements, design efficient algorithms, and write clean code to develop software applications. By leveraging your programming skills and industry best practices, you create intuitive and robust solutions that enhance productivity, streamline processes, and improve user experiences.','2023-05-26 18:00:54'),(13,7,'It Consultant ','You are an IT consultant providing businesses with strategic technology advice and solutions.\nCompletion: As an IT consultant, you collaborate with businesses to understand their goals, assess their technology needs, and develop tailored strategies. You recommend appropriate hardware, software, and IT infrastructure to optimize their operations and enhance efficiency. Your expertise in technology trends and industry standards enables you to guide businesses in making informed decisions that align with their objectives.','2023-05-26 18:01:07'),(14,7,'Tech entrepreneur','Imagine you are a tech entrepreneur launching a startup and bringing innovative tech products to the market.\nCompletion: As a tech entrepreneur, you identify market opportunities and develop groundbreaking tech products that address unmet needs. From conceptualization to product launch, you navigate the complexities of funding, prototyping, and market validation. With a visionary mindset and a focus on user experience, you build solutions that disrupt industries and create positive impacts in people\'s lives.','2023-05-26 18:01:28'),(15,6,'Travel blogger','Imagine you are a travel blogger exploring the world and sharing your adventures with your audience.\nCompletion: As a travel blogger, you embark on exciting journeys to discover new destinations, cultures, and experiences. Through captivating stories, vivid descriptions, and stunning photographs, you transport your readers to different corners of the globe. You provide travel tips, itineraries, and recommendations, inspiring others to embark on their own adventures and create unforgettable memories.','2023-05-26 18:01:51'),(16,6,'Tour guide','Picture yourself as a tour guide, leading groups of travelers on immersive and informative tours.\nCompletion: As a tour guide, you have in-depth knowledge of various destinations and their historical and cultural significance. You greet eager travelers, introduce them to iconic landmarks, and share fascinating stories and facts along the way. With your passion for travel and dedication to providing exceptional experiences, you ensure that each tour is educational, enjoyable, and memorable.','2023-05-26 18:02:04'),(17,6,'Travle agent','You are a travel agent helping clients plan their dream vacations and create unforgettable travel experiences.\nCompletion: As a travel agent, you listen attentively to your clients\' desires, preferences, and budgets. Based on their input, you craft personalized itineraries, book flights and accommodations, and arrange unique activities and excursions. Your goal is to curate exceptional travel experiences that exceed your clients\' expectations and create lifelong memories.','2023-05-26 18:02:17'),(18,5,'Personal trainer','Imagine you are a personal trainer dedicated to helping individuals achieve their fitness goals and lead a healthy lifestyle.\nCompletion: As a personal trainer, you guide and motivate individuals on their fitness journey. Through customized workout plans, nutritional advice, and ongoing support, you empower them to transform their bodies and improve their overall well-being. Your passion for fitness and expertise in exercise science inspire others to prioritize their health and unlock their full potential.','2023-05-26 18:02:58'),(19,5,'Fitness influencer','Picture yourself as a fitness influencer, sharing workout routines, healthy recipes, and wellness tips with your social media followers.\nCompletion: As a fitness influencer, you connect with a wide audience seeking inspiration and guidance on their fitness journey. Through engaging content, you demonstrate various workout routines, provide nutritious recipes, and offer valuable wellness advice. Your authenticity and dedication to a balanced and active lifestyle inspire others to prioritize their health and embrace fitness as a positive lifestyle choice.','2023-05-26 18:03:17'),(20,5,'Fitness instructor,','You are a group fitness instructor, leading energetic and fun-filled classes that motivate participants to stay active and enjoy exercising.\nCompletion: As a group fitness instructor, you create an inclusive and uplifting environment where participants of all fitness levels can enjoy exercise. Through dynamic workouts, upbeat music, and motivational cues, you energize and inspire individuals to push their limits and achieve their fitness goals. Your enthusiasm and passion for fitness make each class a rewarding and enjoyable experience for everyone.','2023-05-26 18:03:36'),(21,5,'Wellness coach',' Imagine you are a wellness coach, providing guidance on holistic well-being, including physical fitness, nutrition, and mental health.\nCompletion: As a wellness coach, you take a comprehensive approach to help individuals live a balanced and fulfilling life. Through personalized coaching sessions, you address physical fitness, nutrition, stress management, and mindfulness. Your expertise and support empower individuals to make positive lifestyle changes, improve their overall well-being, and achieve optimal health.','2023-05-26 18:04:00'),(22,4,'Ecommerce entrepreneur','Imagine you are an ecommerce entrepreneur, running a successful online store and offering a wide range of products to customers.\nCompletion: As an ecommerce entrepreneur, you oversee every aspect of your online store, from sourcing products to managing inventory and fulfilling orders. You strive to provide exceptional customer service and create a seamless shopping experience for your customers. Your dedication to quality products, competitive pricing, and timely delivery sets you apart in the ecommerce industry.','2023-05-26 18:04:25'),(23,4,'Digital marketer specializing ','Picture yourself as a digital marketer specializing in ecommerce, helping businesses increase their online visibility, drive traffic, and boost sales.\nCompletion: As a digital marketer focused on ecommerce, you employ various strategies to optimize businesses\' online presence. From search engine optimization (SEO) and social media marketing to email campaigns and paid advertising, you leverage digital channels to attract targeted traffic and convert visitors into customers. Your expertise in ecommerce marketing drives revenue growth and helps businesses thrive in the competitive online marketplace.','2023-05-26 18:04:43'),(26,7,'Analista de Dados','Você é um analista de Dados Sua tarefa e fornece respostas curtas e rápidas sobre o mercado Financeiro ','2023-06-16 20:04:09');
/*!40000 ALTER TABLE `chatbot_templet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_reply_flow`
--

DROP TABLE IF EXISTS `custom_reply_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_reply_flow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incoming_message` longtext COLLATE utf8mb4_unicode_ci,
  `outgoing_message` longtext COLLATE utf8mb4_unicode_ci,
  `exact` int(1) DEFAULT '0',
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_reply_flow`
--

LOCK TABLES `custom_reply_flow` WRITE;
/*!40000 ALTER TABLE `custom_reply_flow` DISABLE KEYS */;
INSERT INTO `custom_reply_flow` VALUES (2,'0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW','hello','hello there how can i help you?',1,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','2023-11-13 13:01:30'),(3,'0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW','how are you ','I am fine',0,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','2023-11-13 13:03:47'),(4,'0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW','bye okay','okay bye',1,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','2023-11-13 13:12:03'),(9,'0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW','{{UNKNOWN_MSG}}','hey {{USERNAME}},\nyour number is {{MOBILE}}',1,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','2023-11-13 15:33:42'),(20,'FqtGDCY8TYml54q1umjvgIsQzwSti8s0','hey','hello this is custom reply',1,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','2023-11-23 17:53:58'),(21,'FqtGDCY8TYml54q1umjvgIsQzwSti8s0','name','hello {{USERNAME}} your mobile is {{MOBILE}}',1,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','2023-11-24 08:45:18'),(22,'FqtGDCY8TYml54q1umjvgIsQzwSti8s0','{{UNKNOWN_MSG}}','i did not get that sorry',1,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','2023-11-24 09:24:38'),(23,'0OeSQmsXKjOX1o8ekpAZAzDkTZOzMsuf','halo min','Halo ka {{USERNAME}}, Terimakasih sudah menghubungi kami. Ada yang bisa dibantu ka ?',1,'QOHAq3mYvYpdMAgr965fGUGXgofXLXWg','2024-02-20 09:36:22');
/*!40000 ALTER TABLE `custom_reply_flow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_reply_flow_group`
--

DROP TABLE IF EXISTS `custom_reply_flow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_reply_flow_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_reply_flow_group`
--

LOCK TABLES `custom_reply_flow_group` WRITE;
/*!40000 ALTER TABLE `custom_reply_flow_group` DISABLE KEYS */;
INSERT INTO `custom_reply_flow_group` VALUES (1,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW','Support Flow','2023-11-13 11:28:05'),(9,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','FqtGDCY8TYml54q1umjvgIsQzwSti8s0','customReply WhatsApp Ai','2023-11-23 17:53:50'),(10,'QOHAq3mYvYpdMAgr965fGUGXgofXLXWg','0OeSQmsXKjOX1o8ekpAZAzDkTZOzMsuf','ORDER','2024-02-20 09:34:34');
/*!40000 ALTER TABLE `custom_reply_flow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embed_chatbot`
--

DROP TABLE IF EXISTS `embed_chatbot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `embed_chatbot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `train_data` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bot_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embed_chatbot`
--

LOCK TABLES `embed_chatbot` WRITE;
/*!40000 ALTER TABLE `embed_chatbot` DISABLE KEYS */;
INSERT INTO `embed_chatbot` VALUES (1,'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc',1,'you are now a company named codeyon it services your opening hours are 10AM to 5PM Monday to friday','it company','sU7Rjyq3Xmru80v5YV','2023-06-14 12:10:11'),(3,'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc',1,'Você é um atendente virtual','Bot','V3MWvEz3IwSFXkaZgT','2023-06-16 21:12:14'),(4,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj',1,'you are a comedian','botTitle','nTmFuDuc7OlASaWmbu','2023-11-16 14:46:22');
/*!40000 ALTER TABLE `embed_chatbot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embed_chats`
--

DROP TABLE IF EXISTS `embed_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `embed_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_mobile` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bot_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embed_chats`
--

LOCK TABLES `embed_chats` WRITE;
/*!40000 ALTER TABLE `embed_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `embed_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `que` longtext COLLATE utf8mb4_unicode_ci,
  `ans` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (13,'do you know ?','yes i know','2023-06-26 16:00:48');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (25,'Free Google Bard Ai','Get Free google bard Ai, which you may use for WhatsApp Ai Bot with image detections and much more','736551700739588307Google_Bard_logo.svg.png','2023-11-23 11:39:48'),(27,'WhasApp Ai Bot','Now enjoy Free/Paid both type of WhatsApp ai bot with image-understanding capabilities','291261700740365115wa.png','2023-11-23 11:52:45'),(28,'Multiple Training Ai method','You can train the Ai bot using Live Database, Website link, Image, Pdf, text and much more','508871700740526230train_bot.png','2023-11-23 11:55:26'),(29,'Wordpress Ai','Now use Wordpress Ai auto blog posting for any WordPress website.','375571700740642607wp_ai.png','2023-11-23 11:57:22'),(30,'AI Text to Speech','Convert your text into any language speech using Ai in human language ','750481700740780684tts.png','2023-11-23 11:59:40'),(31,'Free Speech to text','Convert your voice into text for free online and download','240341700740900055stt.png','2023-11-23 12:01:40'),(32,'Text to Ai Image','Text to Ai image using multiple models in a realistic way.','328971700741232010ai_img.png','2023-11-23 12:07:12'),(34,'Ai Avatar','Get the most popular trending feature in your hand make your Ai avatar using body and image','480411700741330204ai_avatar.png','2023-11-23 12:08:50'),(35,'Ai Image Upscale','Upscale your blurry image in HD, One of the most popular feature','965661700741432995img_upscale.png','2023-11-23 12:10:33'),(36,'Easy Support','Get support in one click in your panel itself','094461700741521752support.png','2023-11-23 12:12:01'),(37,'Gemini Ai','Now access the latest Ai \"Gemini Ai\" powered by Google.','763461702659149307gemini_logo.png','2023-12-15 16:52:29');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gemini_chatbot`
--

DROP TABLE IF EXISTS `gemini_chatbot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gemini_chatbot` (
  `id` int(11) NOT NULL,
  `active` int(1) DEFAULT '1',
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bot_title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_train_data` longtext COLLATE utf8mb4_unicode_ci,
  `reaction` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_typing` int(1) DEFAULT '1',
  `reply_in_groups` int(1) DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gemini_chatbot`
--

LOCK TABLES `gemini_chatbot` WRITE;
/*!40000 ALTER TABLE `gemini_chatbot` DISABLE KEYS */;
/*!40000 ALTER TABLE `gemini_chatbot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generated_images`
--

DROP TABLE IF EXISTS `generated_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generated_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prompt` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generated_images`
--

LOCK TABLES `generated_images` WRITE;
/*!40000 ALTER TABLE `generated_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `generated_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generated_wp`
--

DROP TABLE IF EXISTS `generated_wp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generated_wp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generated_wp`
--

LOCK TABLES `generated_wp` WRITE;
/*!40000 ALTER TABLE `generated_wp` DISABLE KEYS */;
INSERT INTO `generated_wp` VALUES (1,'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','https://blogham.com/the-ultimate-guide-to-making-delicious-maggie/','167','The Ultimate Guide to Making Delicious Maggie&','2023-05-26 13:56:38'),(2,'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','https://blogham.com/a-quick-and-easy-guide-on-how-to-make-maggie-noodles-at-home/','170','A Quick and Easy Guide on How to Make Maggie Noodles at Home&#8221;','2023-05-26 13:58:08'),(3,'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','https://blogham.com/the-ultimate-guide-on-how-to-make-delicious-maggie-in-no-time/','173','The Ultimate Guide on How to Make Delicious Maggie in No Time','2023-05-26 13:59:27'),(5,'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw','https://blogham.com/tips-for-making-perfect-fried-rice/','180','Tips for Making Perfect Fried Rice','2023-05-31 12:36:40');
/*!40000 ALTER TABLE `generated_wp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamWiz_avatar`
--

DROP TABLE IF EXISTS `hamWiz_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hamWiz_avatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamWiz_avatar`
--

LOCK TABLES `hamWiz_avatar` WRITE;
/*!40000 ALTER TABLE `hamWiz_avatar` DISABLE KEYS */;
INSERT INTO `hamWiz_avatar` VALUES (8,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','AfKEHjINmbOUyxQwYWCLQ8qCpL8RL3Q7','lfsSVAZcOA9k3dqbt3mBxJJhZDhHXIP6.png','GENERATED','2023-11-23 18:08:25');
/*!40000 ALTER TABLE `hamWiz_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamWiz_img`
--

DROP TABLE IF EXISTS `hamWiz_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hamWiz_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prompt` longtext COLLATE utf8mb4_unicode_ci,
  `negative_prompt` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgRem` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamWiz_img`
--

LOCK TABLES `hamWiz_img` WRITE;
/*!40000 ALTER TABLE `hamWiz_img` DISABLE KEYS */;
INSERT INTO `hamWiz_img` VALUES (2,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','AePTIbNoLoVpkILtxECFyhZyUMNWQMsr','a man','','QLIVbT5BEO7PRCJPJqXcgQbU6wiM8uQP.png','QLIVbT5BEO7PRCJPJqXcgQbU6wiM8uQP-bw.png','GENERATED','2023-11-22 11:50:22'),(3,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','WKWpXj8wc4YL9oTCdDLEB26twhStsv5w','a girl smile on her face','','7do9boEnv9n4ffSceUqXXUkRFjqVW6KV.png','7do9boEnv9n4ffSceUqXXUkRFjqVW6KV-bw.png','GENERATED','2023-11-22 12:16:32'),(4,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','kCUSGlabDbDRiC6vDAScy3A7mooWF3to','a bad person','','EkQVYfCpS0yFDG3QjukrTEDC0dqKvhE9.png','EkQVYfCpS0yFDG3QjukrTEDC0dqKvhE9-bw.png','GENERATED','2023-11-22 12:17:48'),(5,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','uuUNocYO8Tap12t94LQvbfj81zYezjGi','a baby boy','','Yp7l4a8LXSNf0GtK8od9QAKPV8kSKv0j.png','Yp7l4a8LXSNf0GtK8od9QAKPV8kSKv0j-bw.png','GENERATED','2023-11-22 12:19:13'),(6,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','X5HC3kyfI1wm5dIg36yzCCSmem2LelMo','a an walking on the moon with a large size dog','','ff7z0vyzqeLOgUDlAHktzxoyMnOaR5GU.png','ff7z0vyzqeLOgUDlAHktzxoyMnOaR5GU-bw.png','GENERATED','2023-11-22 12:24:24'),(7,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','oTRNdyIACjisN7a8qW2xaOIPKI4XOa8A','a 10 years ol boy','','A69NUMOFwZCbUtiRjSZ4CK6H3mtmDEwU.png','A69NUMOFwZCbUtiRjSZ4CK6H3mtmDEwU-bw.png','GENERATED','2023-11-23 09:59:00'),(8,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','DnbwMlykBt1ky3KEKCDutP5H4mOjQ2X3','a baby boy crying ','','ArG1RErcMihJePKUBBMbIQXWiQLNHpva.png','ArG1RErcMihJePKUBBMbIQXWiQLNHpva-bw.png','GENERATED','2023-11-23 12:34:39'),(9,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','qVgGCAfWdQmi2J94z3ClQNU4xUcJNIEc','an old lady in black dress','','p6EghDO8pGopH6UCLFqMO0Dmzl1iu5fU.png','p6EghDO8pGopH6UCLFqMO0Dmzl1iu5fU-bw.png','GENERATED','2023-11-23 17:56:14');
/*!40000 ALTER TABLE `hamWiz_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamWiz_upscale`
--

DROP TABLE IF EXISTS `hamWiz_upscale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hamWiz_upscale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_image` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upscaled_image` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamWiz_upscale`
--

LOCK TABLES `hamWiz_upscale` WRITE;
/*!40000 ALTER TABLE `hamWiz_upscale` DISABLE KEYS */;
INSERT INTO `hamWiz_upscale` VALUES (1,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','kF4tx1MFYyD1KjyJjivzTY00ZjgQXnQX','513631700736064257hero.png','dipqhsgJjTdRvhbUdcCxmMR14YiRG94q.png','GENERATED','2023-11-23 10:41:05'),(2,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','JkYVIjr7tsgDRtGMEo1Ws0zC8M1pKrCg','48010170073704428500011-3506183199.png','cOpM3cgywFsG8slSClc1BYJ7gBcrGV3M.png','GENERATED','2023-11-23 10:57:25'),(3,'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj','m2kaLFiGP9IsYhzLGwjHiRGDl4UxeU5q','863291700762966547The-4-SR-results-compared-with-all-the-competing-methods.png','w7OsYu3T18GVBG4c8IqvAEJNPIMaDDUb.png','GENERATED','2023-11-23 18:09:28');
/*!40000 ALTER TABLE `hamWiz_upscale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance`
--

DROP TABLE IF EXISTS `instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance`
--

LOCK TABLES `instance` WRITE;
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (23,'QOHAq3mYvYpdMAgr965fGUGXgofXLXWg','Offline',NULL,'\"Offline payment\"','2024-02-20 04:36:19');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_gateways`
--

DROP TABLE IF EXISTS `payment_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(1) NOT NULL DEFAULT '1',
  `code` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` longtext COLLATE utf8mb4_unicode_ci,
  `payment_keys` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_gateways`
--

LOCK TABLES `payment_gateways` WRITE;
/*!40000 ALTER TABLE `payment_gateways` DISABLE KEYS */;
INSERT INTO `payment_gateways` VALUES (1,0,'paypal','xxxxx','xxxxx','Paypal',NULL),(2,1,'paystack','xxxxx','xxxxx','Paystack',NULL),(3,0,'razorpay','xxxxx','xxxxx','Razorpay',NULL),(4,0,'zarnipal','xxxxx','xxxxx','Zarnipal',NULL),(5,0,'instamojo','xxxxx','xxxxx','Instamojo',NULL),(6,1,'offline','xxxxx','xxxxx','Offline',NULL),(7,1,'stripe','xxxxx','xxxxx','Stripe',NULL),(8,1,'mercadopago','xxxxx','xxxxx','mercadopago',NULL);
/*!40000 ALTER TABLE `payment_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ping`
--

DROP TABLE IF EXISTS `ping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_msg` longtext COLLATE utf8mb4_unicode_ci,
  `admin_reply` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ping`
--

LOCK TABLES `ping` WRITE;
/*!40000 ALTER TABLE `ping` DISABLE KEYS */;
INSERT INTO `ping` VALUES (4,'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','Hello admin','hey man','2023-05-28 14:02:43'),(5,'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw','hello admin I want a popcorn ','why are you asking me then go order online :D','2023-05-31 12:41:27');
/*!40000 ALTER TABLE `ping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` bigint(20) NOT NULL DEFAULT '0',
  `gpt_words_limit` bigint(20) NOT NULL DEFAULT '0',
  `dalle` int(1) NOT NULL DEFAULT '0',
  `dalle_limit` bigint(20) NOT NULL DEFAULT '0',
  `dalle_size` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wa_bot` int(1) NOT NULL DEFAULT '0',
  `wp_auto_bloging` int(1) NOT NULL DEFAULT '0',
  `chat_in_app` int(1) NOT NULL DEFAULT '0',
  `text_to_speech` int(1) NOT NULL DEFAULT '0',
  `tts_words_limit` bigint(20) NOT NULL DEFAULT '0',
  `speech_to_text` int(1) NOT NULL DEFAULT '0',
  `allow_text_to_speech_api` int(1) NOT NULL DEFAULT '0',
  `bard_access` int(1) NOT NULL DEFAULT '0',
  `embed_chatbot` int(1) NOT NULL DEFAULT '0',
  `embed_chatbot_limit` bigint(20) NOT NULL DEFAULT '0',
  `planexpire` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allow_own_openai` int(1) DEFAULT '0',
  `gemini_chatbot` int(1) DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'SULTAN',99000,1000000,0,0,'250x250',1,0,0,0,0,0,0,0,1,2,'30',0,0,'2024-02-20 06:05:29'),(23,'All',100,10000000,1,10000,'250x250',1,1,1,1,10000,1,0,1,1,10000,'30',1,1,'2023-11-16 15:25:06');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stt`
--

DROP TABLE IF EXISTS `stt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stt`
--

LOCK TABLES `stt` WRITE;
/*!40000 ALTER TABLE `stt` DISABLE KEYS */;
INSERT INTO `stt` VALUES (1,'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','hello hello hello','2023-05-28 08:26:17'),(2,'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','hello hello hello hello hello','2023-05-28 08:39:41'),(3,'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw','Hello how are you','2023-05-31 12:40:10');
/*!40000 ALTER TABLE `stt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templet_category`
--

DROP TABLE IF EXISTS `templet_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templet_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templet_category`
--

LOCK TABLES `templet_category` WRITE;
/*!40000 ALTER TABLE `templet_category` DISABLE KEYS */;
INSERT INTO `templet_category` VALUES (4,'Ecommerce','2023-05-26 17:56:05'),(5,'Fitness','2023-05-26 17:56:11'),(6,'Travel','2023-05-26 17:56:16'),(7,'Technology','2023-05-26 17:56:22'),(8,'Education','2023-05-26 17:56:27');
/*!40000 ALTER TABLE `templet_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES (9,'John Smith','CEO','\"Working with [Company Name] has been a game-changer for our business. Their AI-powered Text-to-Speech solution has completely transformed our customer experience. The voice quality is remarkably natural, and it has allowed us to enhance our audio content and provide personalized interactions with our users. The team at [Company Name] has been exceptional in understanding our requirements and delivering a solution that exceeds our expectations.\"','2023-05-31 10:23:35'),(10,'Sarah Johnson','Digital Marketing Manager','\"The WhatsApp AI bot developed by [Company Name] has revolutionized our customer support process. It handles inquiries and provides instant responses, saving our team countless hours. The bot is intelligent, capable of understanding complex queries, and provides accurate and relevant information. Our customers love the convenience and efficiency it offers, and we have seen a significant improvement in customer satisfaction. [Company Name] has been a trusted partner throughout the development and implementation process.\"','2023-05-31 10:23:56'),(11,'Michael Brown','Blogger','\"The Voice-to-Text feature offered by [Company Name] has been a game-changer for my content creation process. It accurately transcribes my spoken words into text, saving me hours of manual transcription work. The technology is impressive, with high accuracy and fast processing times. As a blogger, this has allowed me to focus more on crafting quality content and less on tedious administrative tasks. I highly recommend [Company Name]\'s Voice-to-Text solution to any content creator looking to streamline their workflow.\"','2023-05-31 10:24:35'),(12,'Emily Roberts','Web Developer','\"[Company Name]\'s WordPress Auto Blogging solution has been a game-changer for our clients. It automates the process of content creation and publication, significantly reducing the time and effort required to maintain a blog. The AI technology selects and curates relevant content, ensuring our clients\' websites are always updated with fresh and engaging articles. The team at [Company Name] has been fantastic to work with, providing excellent support and customization options tailored to our clients\' needs.\"','2023-05-31 10:25:08'),(13,'David Thompson','Customer Support Manager','\"The chatbots developed by [Company Name] have greatly improved our customer support operations. These AI-powered chatbots offer personalized assistance, answering frequently asked questions and guiding users through complex processes. Our customers appreciate the quick response times and accurate information provided by the chatbots. [Company Name] has been a reliable partner in developing and implementing chatbot solutions that have elevated our customer support to new heights.\"','2023-05-31 10:25:41'),(14,'Jennifer Adams','Marketing Director','\"The BARD AI Chatbot created by [Company Name] has been a game-changer for our website. It engages visitors, provides relevant recommendations, and assists them in finding the information they need quickly. The chatbot\'s conversational abilities and natural language processing make it feel like a human interaction. We have seen a significant increase in user engagement and conversion rates since implementing the BARD AI Chatbot. [Company Name]\'s expertise and support have been instrumental in our success.\"','2023-05-31 10:26:10');
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text2img`
--

DROP TABLE IF EXISTS `text2img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text2img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prompt` longtext COLLATE utf8mb4_unicode_ci,
  `negative_prompt` longtext COLLATE utf8mb4_unicode_ci,
  `size` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text2img`
--

LOCK TABLES `text2img` WRITE;
/*!40000 ALTER TABLE `text2img` DISABLE KEYS */;
/*!40000 ALTER TABLE `text2img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train_instructions`
--

DROP TABLE IF EXISTS `train_instructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train_instructions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `instruction` longtext NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_instructions`
--

LOCK TABLES `train_instructions` WRITE;
/*!40000 ALTER TABLE `train_instructions` DISABLE KEYS */;
INSERT INTO `train_instructions` VALUES (1,'Layanan Pelanggan Penjualan','Sebagai bot layanan pelanggan AI yang dilatih khusus,kamu harus melayani pelanggan dengan senang hati dan ramah, gunakan bahasa yang hangat serta personal. gunakan nama paggilan untuk mereka mengunakan \"kakak\" agar lebih terasa dekat.gunakan emoji jika diperlukan. jangan menyebutkan identitas kamu sebagai AI. gunakan kata \"kami\" .kamu harus membalas sesuai dengan data/informasi berikut secara detail dan terperinci. jika pelanggan tertarik, arahkan ke link produk',1);
/*!40000 ALTER TABLE `train_instructions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tts`
--

DROP TABLE IF EXISTS `tts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voice` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tts`
--

LOCK TABLES `tts` WRITE;
/*!40000 ALTER TABLE `tts` DISABLE KEYS */;
INSERT INTO `tts` VALUES (1,'1685256015026.mp3','RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','hello your name is Hamid','name','Indian English','Aditi','2023-05-28 06:40:15'),(3,'1685256353837.mp3','RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','hello your name is Hamid','name','Indian English','Kajal','2023-05-28 06:45:54'),(4,'1685256692897.mp3','RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','hello sir how are you ?','name','Indian English','Kajal','2023-05-28 06:51:33'),(5,'1685256699064.mp3','RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','hello sir how are you ?','name','Indian English','Raveena','2023-05-28 06:51:39'),(8,'1685536761344.mp3','pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw','hello this is me Hamid ','calling my name','US English','Justin','2023-05-31 12:39:21'),(9,'1685536787859.mp3','pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw','hello my name is John Doe','john','US English','Kevin','2023-05-31 12:39:47'),(11,'1685630308218.mp3','RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','hello there this is me John doe, How  are you doing today ?','testing','US English','Stephen','2023-06-01 14:38:28'),(12,'1685630324013.mp3','RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','hello there this is me John doe, How are you doing today ?\n','tes','US English','Ivy','2023-06-01 14:38:44'),(14,'1686821858099.mp3','RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc','1234666','1','Finnish','Suvi','2023-06-15 09:37:38');
/*!40000 ALTER TABLE `tts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_media`
--

DROP TABLE IF EXISTS `upload_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_media`
--

LOCK TABLES `upload_media` WRITE;
/*!40000 ALTER TABLE `upload_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planexpire` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpt_words_limit` bigint(20) NOT NULL DEFAULT '0',
  `dalle_limit` bigint(20) NOT NULL DEFAULT '0',
  `tts_words_limit` bigint(20) NOT NULL DEFAULT '0',
  `wp_domain` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wp_email` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wp_token` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_my_openai` int(1) DEFAULT '0',
  `my_openai_api` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bard_one` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bard_two` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bard_three` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gemini_keys` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (18,'user','QOHAq3mYvYpdMAgr965fGUGXgofXLXWg','benly','fdavidsaputra@gmail.com','$2b$10$JjrW4.Qa1LwdFScFgEpBWuLR1W/Ua.f7DFts8Grskh5OLtAOrQSbm','{\"id\":26,\"plan_name\":\"SULTAN\",\"cost\":99000,\"gpt_words_limit\":1000000,\"dalle\":0,\"dalle_limit\":0,\"dalle_size\":\"256x256\",\"wa_bot\":1,\"wp_auto_bloging\":0,\"chat_in_app\":0,\"text_to_speech\":0,\"tts_words_limit\":0,\"speech_to_text\":0,\"allow_text_to_speech_api\":0,\"bard_access\":0,\"embed_chatbot\":1,\"embed_chatbot_limit\":2,\"planexpire\":\"30\",\"allow_own_openai\":0,\"gemini_chatbot\":0,\"createdAt\":\"2024-02-20T06:05:29.000Z\"}','2024-03-21 06:05:54',419430,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2024-02-20 04:17:38','AIzaSyB6JDAHhotdkCwqEeNRZLZYXQCjndRadd0'),(19,'user','J1ooNaniW17mXNq04cujmSPCC53AdtIv','issdoom2','issdoom2@gmail.com','$2b$10$hqUHLGiV3SkCCvKr1tpJGOGN/miRrBsYc4BuiVn3zGQNPaQzG2jiS','{\"id\":26,\"plan_name\":\"SULTAN\",\"cost\":99000,\"gpt_words_limit\":1000000,\"dalle\":0,\"dalle_limit\":0,\"dalle_size\":\"256x256\",\"wa_bot\":1,\"wp_auto_bloging\":0,\"chat_in_app\":0,\"text_to_speech\":0,\"tts_words_limit\":0,\"speech_to_text\":0,\"allow_text_to_speech_api\":0,\"bard_access\":0,\"embed_chatbot\":1,\"embed_chatbot_limit\":2,\"planexpire\":\"30\",\"allow_own_openai\":0,\"gemini_chatbot\":0,\"createdAt\":\"2024-02-20T06:05:29.000Z\"}','2024-04-02 23:31:50',986884,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2024-03-03 16:31:13',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_ai_bot`
--

DROP TABLE IF EXISTS `wa_ai_bot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wa_ai_bot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(1) DEFAULT '1',
  `uid` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bot_title` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_train_data` longtext COLLATE utf8mb4_unicode_ci,
  `doc_text_train` longtext COLLATE utf8mb4_unicode_ci,
  `train_type` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `train_instruction_id` int(11) DEFAULT NULL,
  `group_id` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reaction` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_typing` int(1) DEFAULT '0',
  `openai_model` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_connection` longtext COLLATE utf8mb4_unicode_ci,
  `reply_in_groups` int(1) DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `constraint_train_instruction` (`train_instruction_id`),
  CONSTRAINT `constraint_train_instruction` FOREIGN KEY (`train_instruction_id`) REFERENCES `train_instructions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_ai_bot`
--

LOCK TABLES `wa_ai_bot` WRITE;
/*!40000 ALTER TABLE `wa_ai_bot` DISABLE KEYS */;
/*!40000 ALTER TABLE `wa_ai_bot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web`
--

DROP TABLE IF EXISTS `web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  `youtube_video` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` bigint(20) DEFAULT NULL,
  `smtp_host` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_email` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gemini_keys` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web`
--

LOCK TABLES `web` WRITE;
/*!40000 ALTER TABLE `web` DISABLE KEYS */;
INSERT INTO `web` VALUES (1,'522991685526550773665981676743619197logo80x80.jpg','WassAi','AI for Whatsapp','','IDR',1,'xxxxx','465','xxxxx','pass',NULL);
/*!40000 ALTER TABLE `web` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-07 22:57:38
