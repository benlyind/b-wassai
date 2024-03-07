-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 06:44 AM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u687661449_dallham3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `role` varchar(5) NOT NULL DEFAULT 'admin',
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uid`, `role`, `email`, `password`, `createdAt`) VALUES
(1, 'AcZd9OwIw0BCKmjZj9JxpNCRUp5hK', 'admin', 'admin@admin.com', '$2b$10$gl/0IRUQIBcDO5EKgorV5O/PHQErn2vMKEm3PiubsBNLqDAzrwINm', '2023-05-01 07:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `aibot`
--

CREATE TABLE `aibot` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `client_id` varchar(999) DEFAULT NULL,
  `train_data` longtext DEFAULT NULL,
  `enable_typing` int(1) NOT NULL DEFAULT 0,
  `reaction` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apikeys`
--

CREATE TABLE `apikeys` (
  `id` int(11) NOT NULL,
  `openai_keys` varchar(999) DEFAULT NULL,
  `aws_polly_id` varchar(999) DEFAULT NULL,
  `aws_polly_keys` varchar(999) DEFAULT NULL,
  `bard_ai_api` varchar(999) DEFAULT NULL,
  `hamwiz_api` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apikeys`
--

INSERT INTO `apikeys` (`id`, `openai_keys`, `aws_polly_id`, `aws_polly_keys`, `bard_ai_api`, `hamwiz_api`) VALUES
(1, 'xxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `bard_wa_chatbot`
--

CREATE TABLE `bard_wa_chatbot` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `client_id` varchar(999) DEFAULT NULL,
  `train_data` longtext DEFAULT NULL,
  `send_in_group` int(1) DEFAULT 0,
  `active` int(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_templet`
--

CREATE TABLE `chatbot_templet` (
  `id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `train_data` longtext NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatbot_templet`
--

INSERT INTO `chatbot_templet` (`id`, `category_id`, `title`, `train_data`, `createdAt`) VALUES
(1, 1, 'Amazon Exprt', 'You are not an amazon seo expert who works for Codeyon IT Services. You will answer like a pro Amazon expert', '2023-05-26 17:48:24'),
(2, 8, 'SEO Expert', 'Your task is to provide guidance and support to individuals aiming to optimize their websites for search engines. Utilizing your expertise, you assist them in improving their website\'s visibility, driving organic traffic, and achieving higher rankings in search engine results.', '2023-05-26 17:57:01'),
(3, 5, 'Fitness Coach', 'Imagine yourself as a fitness coach whose mission is to help individuals achieve their health and wellness goals. Through personalized training plans, nutritional advice, and motivation, you empower them to adopt a healthy lifestyle, improve fitness levels, and attain their desired physical outcomes.', '2023-05-26 17:57:25'),
(4, 6, 'Travel Guide', 'Envision yourself as a travel consultant who specializes in crafting unforgettable travel experiences. Your role involves understanding clients\' preferences and interests, suggesting destinations, planning itineraries, and offering expert advice on accommodations, activities, and attractions to ensure memorable journeys and create lifelong memories.', '2023-05-26 17:57:47'),
(5, 7, 'Tech Expert', 'Picture yourself as a technology guru who stays up-to-date with the latest advancements. You assist individuals in navigating the ever-evolving tech landscape, providing them with insights, troubleshooting support, and recommendations for the best devices, software, and solutions to meet their specific needs.', '2023-05-26 17:58:03'),
(6, 8, 'Education Expert', 'Assume the role of an educational mentor committed to empowering learners. Your goal is to facilitate knowledge acquisition, foster critical thinking, and enhance academic performance. Through personalized instruction, educational resources, and guidance, you inspire students to explore their passions, overcome challenges, and achieve academic success.', '2023-05-26 17:58:19'),
(8, 8, 'Tutior expert', 'Imagine you are a tutor providing personalized academic assistance to students.\nCompletion: As a tutor, you offer one-on-one guidance and support to students seeking academic help. You assess their strengths and weaknesses, identify areas for improvement, and develop customized lesson plans. With patience and empathy, you explain complex concepts, provide practice exercises, and monitor progress to ensure students grasp the material and achieve academic success.', '2023-05-26 17:59:26'),
(9, 8, 'School counselor', 'You are a school counselor dedicated to supporting students\' social-emotional well-being and academic success.\nCompletion: As a school counselor, you provide guidance and resources to help students navigate personal challenges, manage stress, and develop essential life skills. Through individual counseling sessions, group workshops, and proactive interventions, you promote a positive school climate and empower students to overcome obstacles, set goals, and thrive academically, socially, and emotionally.', '2023-05-26 17:59:58'),
(10, 7, 'Technology blogger', 'You are a technology blogger sharing the latest trends, news, and insights with your readers.\nCompletion: As a technology blogger, you stay updated on the latest advancements in the tech industry. Through informative articles, product reviews, and analysis, you provide your readers with valuable insights and recommendations. Your goal is to simplify complex concepts, bridge the knowledge gap, and help your audience make informed decisions about technology products and services.', '2023-05-26 18:00:27'),
(11, 7, 'Tech support', 'Imagine you are a tech support specialist assisting customers with technical issues and troubleshooting.\nCompletion: As a tech support specialist, you provide expert assistance to customers facing technical challenges. You patiently listen to their concerns, ask relevant questions, and guide them through troubleshooting steps. With clear instructions and a customer-centric approach, you help them resolve issues, restore functionality, and ensure a seamless technology experience.', '2023-05-26 18:00:40'),
(12, 7, 'Software developer', 'Picture yourself as a software developer creating innovative solutions to solve real-world problems.\nCompletion: As a software developer, you are driven by a passion for innovation and problem-solving. You analyze user requirements, design efficient algorithms, and write clean code to develop software applications. By leveraging your programming skills and industry best practices, you create intuitive and robust solutions that enhance productivity, streamline processes, and improve user experiences.', '2023-05-26 18:00:54'),
(13, 7, 'It Consultant ', 'You are an IT consultant providing businesses with strategic technology advice and solutions.\nCompletion: As an IT consultant, you collaborate with businesses to understand their goals, assess their technology needs, and develop tailored strategies. You recommend appropriate hardware, software, and IT infrastructure to optimize their operations and enhance efficiency. Your expertise in technology trends and industry standards enables you to guide businesses in making informed decisions that align with their objectives.', '2023-05-26 18:01:07'),
(14, 7, 'Tech entrepreneur', 'Imagine you are a tech entrepreneur launching a startup and bringing innovative tech products to the market.\nCompletion: As a tech entrepreneur, you identify market opportunities and develop groundbreaking tech products that address unmet needs. From conceptualization to product launch, you navigate the complexities of funding, prototyping, and market validation. With a visionary mindset and a focus on user experience, you build solutions that disrupt industries and create positive impacts in people\'s lives.', '2023-05-26 18:01:28'),
(15, 6, 'Travel blogger', 'Imagine you are a travel blogger exploring the world and sharing your adventures with your audience.\nCompletion: As a travel blogger, you embark on exciting journeys to discover new destinations, cultures, and experiences. Through captivating stories, vivid descriptions, and stunning photographs, you transport your readers to different corners of the globe. You provide travel tips, itineraries, and recommendations, inspiring others to embark on their own adventures and create unforgettable memories.', '2023-05-26 18:01:51'),
(16, 6, 'Tour guide', 'Picture yourself as a tour guide, leading groups of travelers on immersive and informative tours.\nCompletion: As a tour guide, you have in-depth knowledge of various destinations and their historical and cultural significance. You greet eager travelers, introduce them to iconic landmarks, and share fascinating stories and facts along the way. With your passion for travel and dedication to providing exceptional experiences, you ensure that each tour is educational, enjoyable, and memorable.', '2023-05-26 18:02:04'),
(17, 6, 'Travle agent', 'You are a travel agent helping clients plan their dream vacations and create unforgettable travel experiences.\nCompletion: As a travel agent, you listen attentively to your clients\' desires, preferences, and budgets. Based on their input, you craft personalized itineraries, book flights and accommodations, and arrange unique activities and excursions. Your goal is to curate exceptional travel experiences that exceed your clients\' expectations and create lifelong memories.', '2023-05-26 18:02:17'),
(18, 5, 'Personal trainer', 'Imagine you are a personal trainer dedicated to helping individuals achieve their fitness goals and lead a healthy lifestyle.\nCompletion: As a personal trainer, you guide and motivate individuals on their fitness journey. Through customized workout plans, nutritional advice, and ongoing support, you empower them to transform their bodies and improve their overall well-being. Your passion for fitness and expertise in exercise science inspire others to prioritize their health and unlock their full potential.', '2023-05-26 18:02:58'),
(19, 5, 'Fitness influencer', 'Picture yourself as a fitness influencer, sharing workout routines, healthy recipes, and wellness tips with your social media followers.\nCompletion: As a fitness influencer, you connect with a wide audience seeking inspiration and guidance on their fitness journey. Through engaging content, you demonstrate various workout routines, provide nutritious recipes, and offer valuable wellness advice. Your authenticity and dedication to a balanced and active lifestyle inspire others to prioritize their health and embrace fitness as a positive lifestyle choice.', '2023-05-26 18:03:17'),
(20, 5, 'Fitness instructor,', 'You are a group fitness instructor, leading energetic and fun-filled classes that motivate participants to stay active and enjoy exercising.\nCompletion: As a group fitness instructor, you create an inclusive and uplifting environment where participants of all fitness levels can enjoy exercise. Through dynamic workouts, upbeat music, and motivational cues, you energize and inspire individuals to push their limits and achieve their fitness goals. Your enthusiasm and passion for fitness make each class a rewarding and enjoyable experience for everyone.', '2023-05-26 18:03:36'),
(21, 5, 'Wellness coach', ' Imagine you are a wellness coach, providing guidance on holistic well-being, including physical fitness, nutrition, and mental health.\nCompletion: As a wellness coach, you take a comprehensive approach to help individuals live a balanced and fulfilling life. Through personalized coaching sessions, you address physical fitness, nutrition, stress management, and mindfulness. Your expertise and support empower individuals to make positive lifestyle changes, improve their overall well-being, and achieve optimal health.', '2023-05-26 18:04:00'),
(22, 4, 'Ecommerce entrepreneur', 'Imagine you are an ecommerce entrepreneur, running a successful online store and offering a wide range of products to customers.\nCompletion: As an ecommerce entrepreneur, you oversee every aspect of your online store, from sourcing products to managing inventory and fulfilling orders. You strive to provide exceptional customer service and create a seamless shopping experience for your customers. Your dedication to quality products, competitive pricing, and timely delivery sets you apart in the ecommerce industry.', '2023-05-26 18:04:25'),
(23, 4, 'Digital marketer specializing ', 'Picture yourself as a digital marketer specializing in ecommerce, helping businesses increase their online visibility, drive traffic, and boost sales.\nCompletion: As a digital marketer focused on ecommerce, you employ various strategies to optimize businesses\' online presence. From search engine optimization (SEO) and social media marketing to email campaigns and paid advertising, you leverage digital channels to attract targeted traffic and convert visitors into customers. Your expertise in ecommerce marketing drives revenue growth and helps businesses thrive in the competitive online marketplace.', '2023-05-26 18:04:43'),
(26, 7, 'Analista de Dados', 'Você é um analista de Dados Sua tarefa e fornece respostas curtas e rápidas sobre o mercado Financeiro ', '2023-06-16 20:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `custom_reply_flow`
--

CREATE TABLE `custom_reply_flow` (
  `id` int(11) NOT NULL,
  `group_id` varchar(999) DEFAULT NULL,
  `incoming_message` longtext DEFAULT NULL,
  `outgoing_message` longtext DEFAULT NULL,
  `exact` int(1) DEFAULT 0,
  `uid` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_reply_flow`
--

INSERT INTO `custom_reply_flow` (`id`, `group_id`, `incoming_message`, `outgoing_message`, `exact`, `uid`, `createdAt`) VALUES
(2, '0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW', 'hello', 'hello there how can i help you?', 1, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', '2023-11-13 13:01:30'),
(3, '0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW', 'how are you ', 'I am fine', 0, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', '2023-11-13 13:03:47'),
(4, '0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW', 'bye okay', 'okay bye', 1, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', '2023-11-13 13:12:03'),
(9, '0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW', '{{UNKNOWN_MSG}}', 'hey {{USERNAME}},\nyour number is {{MOBILE}}', 1, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', '2023-11-13 15:33:42'),
(20, 'FqtGDCY8TYml54q1umjvgIsQzwSti8s0', 'hey', 'hello this is custom reply', 1, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', '2023-11-23 17:53:58'),
(21, 'FqtGDCY8TYml54q1umjvgIsQzwSti8s0', 'name', 'hello {{USERNAME}} your mobile is {{MOBILE}}', 1, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', '2023-11-24 08:45:18'),
(22, 'FqtGDCY8TYml54q1umjvgIsQzwSti8s0', '{{UNKNOWN_MSG}}', 'i did not get that sorry', 1, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', '2023-11-24 09:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `custom_reply_flow_group`
--

CREATE TABLE `custom_reply_flow_group` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `group_id` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_reply_flow_group`
--

INSERT INTO `custom_reply_flow_group` (`id`, `uid`, `group_id`, `title`, `createdAt`) VALUES
(1, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', '0Nv60wt3bmCawIYx7t91VlhGLuMJfQBW', 'Support Flow', '2023-11-13 11:28:05'),
(9, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'FqtGDCY8TYml54q1umjvgIsQzwSti8s0', 'customReply WhatsApp Ai', '2023-11-23 17:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `embed_chatbot`
--

CREATE TABLE `embed_chatbot` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `train_data` longtext DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `bot_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `embed_chatbot`
--

INSERT INTO `embed_chatbot` (`id`, `uid`, `active`, `train_data`, `title`, `bot_id`, `createdAt`) VALUES
(1, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 1, 'you are now a company named codeyon it services your opening hours are 10AM to 5PM Monday to friday', 'it company', 'sU7Rjyq3Xmru80v5YV', '2023-06-14 12:10:11'),
(3, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 1, 'Você é um atendente virtual', 'Bot', 'V3MWvEz3IwSFXkaZgT', '2023-06-16 21:12:14'),
(4, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 1, 'you are a comedian', 'botTitle', 'nTmFuDuc7OlASaWmbu', '2023-11-16 14:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `embed_chats`
--

CREATE TABLE `embed_chats` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `user_email` varchar(999) DEFAULT NULL,
  `user_mobile` varchar(999) DEFAULT NULL,
  `user_name` varchar(999) DEFAULT NULL,
  `bot_id` varchar(999) DEFAULT NULL,
  `chat_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `que` longtext DEFAULT NULL,
  `ans` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `que`, `ans`, `createdAt`) VALUES
(13, 'do you know ?', 'yes i know', '2023-06-26 16:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `des` longtext DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `des`, `image`, `createdAt`) VALUES
(25, 'Free Google Bard Ai', 'Get Free google bard Ai, which you may use for WhatsApp Ai Bot with image detections and much more', '736551700739588307Google_Bard_logo.svg.png', '2023-11-23 11:39:48'),
(27, 'WhasApp Ai Bot', 'Now enjoy Free/Paid both type of WhatsApp ai bot with image-understanding capabilities', '291261700740365115wa.png', '2023-11-23 11:52:45'),
(28, 'Multiple Training Ai method', 'You can train the Ai bot using Live Database, Website link, Image, Pdf, text and much more', '508871700740526230train_bot.png', '2023-11-23 11:55:26'),
(29, 'Wordpress Ai', 'Now use Wordpress Ai auto blog posting for any WordPress website.', '375571700740642607wp_ai.png', '2023-11-23 11:57:22'),
(30, 'AI Text to Speech', 'Convert your text into any language speech using Ai in human language ', '750481700740780684tts.png', '2023-11-23 11:59:40'),
(31, 'Free Speech to text', 'Convert your voice into text for free online and download', '240341700740900055stt.png', '2023-11-23 12:01:40'),
(32, 'Text to Ai Image', 'Text to Ai image using multiple models in a realistic way.', '328971700741232010ai_img.png', '2023-11-23 12:07:12'),
(34, 'Ai Avatar', 'Get the most popular trending feature in your hand make your Ai avatar using body and image', '480411700741330204ai_avatar.png', '2023-11-23 12:08:50'),
(35, 'Ai Image Upscale', 'Upscale your blurry image in HD, One of the most popular feature', '965661700741432995img_upscale.png', '2023-11-23 12:10:33'),
(36, 'Easy Support', 'Get support in one click in your panel itself', '094461700741521752support.png', '2023-11-23 12:12:01'),
(37, 'Gemini Ai', 'Now access the latest Ai \"Gemini Ai\" powered by Google.', '763461702659149307gemini_logo.png', '2023-12-15 16:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `gemini_chatbot`
--

CREATE TABLE `gemini_chatbot` (
  `id` int(11) NOT NULL,
  `active` int(1) DEFAULT 1,
  `uid` varchar(999) DEFAULT NULL,
  `bot_title` varchar(999) DEFAULT NULL,
  `client_id` varchar(999) DEFAULT NULL,
  `text_train_data` longtext DEFAULT NULL,
  `reaction` varchar(999) DEFAULT NULL,
  `enable_typing` int(1) DEFAULT 1,
  `reply_in_groups` int(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generated_images`
--

CREATE TABLE `generated_images` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `url` varchar(999) DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `size` varchar(999) DEFAULT NULL,
  `prompt` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generated_wp`
--

CREATE TABLE `generated_wp` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `link` varchar(999) DEFAULT NULL,
  `post_id` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generated_wp`
--

INSERT INTO `generated_wp` (`id`, `uid`, `link`, `post_id`, `title`, `createdAt`) VALUES
(1, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://blogham.com/the-ultimate-guide-to-making-delicious-maggie/', '167', 'The Ultimate Guide to Making Delicious Maggie&', '2023-05-26 13:56:38'),
(2, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://blogham.com/a-quick-and-easy-guide-on-how-to-make-maggie-noodles-at-home/', '170', 'A Quick and Easy Guide on How to Make Maggie Noodles at Home&#8221;', '2023-05-26 13:58:08'),
(3, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://blogham.com/the-ultimate-guide-on-how-to-make-delicious-maggie-in-no-time/', '173', 'The Ultimate Guide on How to Make Delicious Maggie in No Time', '2023-05-26 13:59:27'),
(5, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'https://blogham.com/tips-for-making-perfect-fried-rice/', '180', 'Tips for Making Perfect Fried Rice', '2023-05-31 12:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `hamWiz_avatar`
--

CREATE TABLE `hamWiz_avatar` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `job_id` varchar(999) DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hamWiz_avatar`
--

INSERT INTO `hamWiz_avatar` (`id`, `uid`, `job_id`, `image`, `status`, `createdAt`) VALUES
(8, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'AfKEHjINmbOUyxQwYWCLQ8qCpL8RL3Q7', 'lfsSVAZcOA9k3dqbt3mBxJJhZDhHXIP6.png', 'GENERATED', '2023-11-23 18:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `hamWiz_img`
--

CREATE TABLE `hamWiz_img` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `job_id` varchar(999) DEFAULT NULL,
  `prompt` longtext DEFAULT NULL,
  `negative_prompt` longtext DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `bgRem` varchar(999) DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hamWiz_img`
--

INSERT INTO `hamWiz_img` (`id`, `uid`, `job_id`, `prompt`, `negative_prompt`, `image`, `bgRem`, `status`, `createdAt`) VALUES
(2, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'AePTIbNoLoVpkILtxECFyhZyUMNWQMsr', 'a man', '', 'QLIVbT5BEO7PRCJPJqXcgQbU6wiM8uQP.png', 'QLIVbT5BEO7PRCJPJqXcgQbU6wiM8uQP-bw.png', 'GENERATED', '2023-11-22 11:50:22'),
(3, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'WKWpXj8wc4YL9oTCdDLEB26twhStsv5w', 'a girl smile on her face', '', '7do9boEnv9n4ffSceUqXXUkRFjqVW6KV.png', '7do9boEnv9n4ffSceUqXXUkRFjqVW6KV-bw.png', 'GENERATED', '2023-11-22 12:16:32'),
(4, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'kCUSGlabDbDRiC6vDAScy3A7mooWF3to', 'a bad person', '', 'EkQVYfCpS0yFDG3QjukrTEDC0dqKvhE9.png', 'EkQVYfCpS0yFDG3QjukrTEDC0dqKvhE9-bw.png', 'GENERATED', '2023-11-22 12:17:48'),
(5, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'uuUNocYO8Tap12t94LQvbfj81zYezjGi', 'a baby boy', '', 'Yp7l4a8LXSNf0GtK8od9QAKPV8kSKv0j.png', 'Yp7l4a8LXSNf0GtK8od9QAKPV8kSKv0j-bw.png', 'GENERATED', '2023-11-22 12:19:13'),
(6, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'X5HC3kyfI1wm5dIg36yzCCSmem2LelMo', 'a an walking on the moon with a large size dog', '', 'ff7z0vyzqeLOgUDlAHktzxoyMnOaR5GU.png', 'ff7z0vyzqeLOgUDlAHktzxoyMnOaR5GU-bw.png', 'GENERATED', '2023-11-22 12:24:24'),
(7, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'oTRNdyIACjisN7a8qW2xaOIPKI4XOa8A', 'a 10 years ol boy', '', 'A69NUMOFwZCbUtiRjSZ4CK6H3mtmDEwU.png', 'A69NUMOFwZCbUtiRjSZ4CK6H3mtmDEwU-bw.png', 'GENERATED', '2023-11-23 09:59:00'),
(8, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'DnbwMlykBt1ky3KEKCDutP5H4mOjQ2X3', 'a baby boy crying ', '', 'ArG1RErcMihJePKUBBMbIQXWiQLNHpva.png', 'ArG1RErcMihJePKUBBMbIQXWiQLNHpva-bw.png', 'GENERATED', '2023-11-23 12:34:39'),
(9, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'qVgGCAfWdQmi2J94z3ClQNU4xUcJNIEc', 'an old lady in black dress', '', 'p6EghDO8pGopH6UCLFqMO0Dmzl1iu5fU.png', 'p6EghDO8pGopH6UCLFqMO0Dmzl1iu5fU-bw.png', 'GENERATED', '2023-11-23 17:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `hamWiz_upscale`
--

CREATE TABLE `hamWiz_upscale` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `job_id` varchar(999) DEFAULT NULL,
  `old_image` varchar(999) DEFAULT NULL,
  `upscaled_image` varchar(999) DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hamWiz_upscale`
--

INSERT INTO `hamWiz_upscale` (`id`, `uid`, `job_id`, `old_image`, `upscaled_image`, `status`, `createdAt`) VALUES
(1, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'kF4tx1MFYyD1KjyJjivzTY00ZjgQXnQX', '513631700736064257hero.png', 'dipqhsgJjTdRvhbUdcCxmMR14YiRG94q.png', 'GENERATED', '2023-11-23 10:41:05'),
(2, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'JkYVIjr7tsgDRtGMEo1Ws0zC8M1pKrCg', '48010170073704428500011-3506183199.png', 'cOpM3cgywFsG8slSClc1BYJ7gBcrGV3M.png', 'GENERATED', '2023-11-23 10:57:25'),
(3, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'm2kaLFiGP9IsYhzLGwjHiRGDl4UxeU5q', '863291700762966547The-4-SR-results-compared-with-all-the-competing-methods.png', 'w7OsYu3T18GVBG4c8IqvAEJNPIMaDDUb.png', 'GENERATED', '2023-11-23 18:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `instance`
--

CREATE TABLE `instance` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `client_id` varchar(999) DEFAULT NULL,
  `qr` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instance`
--

INSERT INTO `instance` (`id`, `uid`, `client_id`, `qr`, `name`, `createdAt`) VALUES
(60, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'eyJ1aWQiOiJzWlFvc1Rkcmh0anlxUE1mTWJEaVh2RUZhZnhlNUFJaiIsImNsaWVudF9pZCI6Ijk2OTAifQ==', NULL, '9690', '2023-12-16 06:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `payment_mode` varchar(999) DEFAULT NULL,
  `amount` varchar(999) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `payment_mode`, `amount`, `data`, `createdAt`) VALUES
(15, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Paypal', '1000', '{\"id\":\"9HX12704SS287672D\",\"status\":\"COMPLETED\",\"intent\":\"SALE\",\"gross_total_amount\":{\"value\":\"1000.00\",\"currency\":\"USD\"},\"application_context\":{\"landing_page\":\"NONE\",\"shipping_preference\":\"GET_FROM_FILE\",\"user_action\":\"continue\"},\"purchase_units\":[{\"reference_id\":\"default\",\"description\":\"plan\",\"amount\":{\"currency\":\"USD\",\"total\":\"1000.00\"},\"payee\":{\"email\":\"sb-txykb20222329@business.example.com\",\"payee_display_metadata\":{}},\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"country_code\":\"US\",\"postal_code\":\"95131\",\"state\":\"CA\",\"type\":\"HOME_OR_WORK\"},\"payments\":{\"captures\":[{\"id\":\"2H358828FP263324B\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"1000.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"disbursement_mode\":\"INSTANT\",\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"1000.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"35.39\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"964.61\"}},\"status\":\"COMPLETED\",\"supplementary_data\":{\"related_ids\":{\"order_id\":\"9HX12704SS287672D\"}},\"create_time\":\"2023-05-29T09:45:12Z\",\"update_time\":\"2023-05-29T09:45:12Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/2H358828FP263324B\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/2H358828FP263324B/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/checkout/orders/9HX12704SS287672D\",\"rel\":\"up\",\"method\":\"GET\"}]}]},\"payment_descriptor\":\"TEST STORE\"}],\"payment_details\":{\"payment_id\":\"PAYID-MR2HIJY8TT72178J82683843\"},\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-pch47z20315408@personal.example.com\",\"payer_id\":\"PVGEBUJM8QWR2\",\"address\":{\"country_code\":\"US\"}},\"metadata\":{\"supplementary_data\":[{\"name\":\"risk_correlation_id\",\"value\":\"9HX12704SS287672D\"},{\"name\":\"external_channel\",\"value\":\"WEB\"},{\"name\":\"INITIATION_INTENT\",\"value\":\"SALE\"}]},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/checkout/orders/9HX12704SS287672D\",\"rel\":\"self\",\"method\":\"GET\"}],\"create_time\":\"2023-05-29T09:45:04Z\",\"update_time\":\"2023-05-29T09:45:12Z\",\"applicationContext\":{\"landing_page\":\"NONE\",\"shipping_preference\":\"GET_FROM_FILE\",\"user_action\":\"continue\"}}', '2023-05-29 09:45:14'),
(16, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Razorpay', '10', '{\"id\":\"pay_LvR9liI4gVjWlQ\",\"entity\":\"payment\",\"amount\":80000,\"currency\":\"INR\",\"status\":\"captured\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":true,\"description\":\"100% secured payment\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"void@razorpay.com\",\"contact\":\"+919999999999\",\"notes\":[],\"fee\":1888,\"tax\":288,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"1199291\"},\"created_at\":1685354242}', '2023-05-15 09:57:32'),
(17, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Razorpay', '1000', '{\"id\":\"pay_LvRAGpIDtmrkxW\",\"entity\":\"payment\",\"amount\":8000000,\"currency\":\"INR\",\"status\":\"captured\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":true,\"description\":\"100% secured payment\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"void@razorpay.com\",\"contact\":\"+919999999999\",\"notes\":[],\"fee\":188800,\"tax\":28800,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"8865748\"},\"created_at\":1685354270}', '2023-05-29 09:58:07'),
(18, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Razorpay', '10', '{\"id\":\"pay_LvRCWLVFTq4exO\",\"entity\":\"payment\",\"amount\":80000,\"currency\":\"INR\",\"status\":\"captured\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":true,\"description\":\"100% secured payment\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"void@razorpay.com\",\"contact\":\"+919999999999\",\"notes\":[],\"fee\":1888,\"tax\":288,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"2102062\"},\"created_at\":1685354398}', '2023-05-29 10:00:11'),
(19, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Razorpay', '1000', '{\"id\":\"pay_LwDA6ira9TZafJ\",\"entity\":\"payment\",\"amount\":8000000,\"currency\":\"INR\",\"status\":\"captured\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":true,\"description\":\"100% secured payment\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"void@razorpay.com\",\"contact\":\"+919999999999\",\"notes\":[],\"fee\":188800,\"tax\":28800,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7758590\"},\"created_at\":1685523298}', '2023-05-31 08:55:09'),
(20, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Stripe', '159', '{\"id\":\"ch_3NQpYsFRiGGAvjj303I1cSCK\",\"object\":\"charge\",\"amount\":15900,\"amount_captured\":15900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_3NQpYsFRiGGAvjj30aAwBdfk\",\"billing_details\":{\"address\":{\"city\":\"Farid Nagar\",\"country\":\"India\",\"line1\":\"himlifospu@gufum.com\",\"line2\":null,\"postal_code\":\"245304\",\"state\":\"36\"},\"email\":null,\"name\":\"test\",\"phone\":null},\"calculated_statement_descriptor\":\"WWW.WORLDOFBUSINESS.AG\",\"captured\":true,\"created\":1688639842,\"currency\":\"usd\",\"customer\":null,\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_balance_transaction\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":{},\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":15,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1NQpYoFRiGGAvjj3jPSrHV2K\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":\"pass\",\"address_postal_code_check\":\"pass\",\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":11,\"exp_year\":2032,\"fingerprint\":\"Xnu0KEUDuMXO8x5H\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"mandate\":null,\"network\":\"visa\",\"network_token\":{\"used\":false},\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xS3c0eE1GUmlHR0F2amozKOOymqUGMgbWSS4CacU6LBYd8s2wro5M3MFPDHtiNw8jDiCl5OvAPuD4fF7CpmfvYeVbV5i_2V349thk\",\"refunded\":false,\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1NQpYoFRiGGAvjj3jPSrHV2K\",\"object\":\"card\",\"address_city\":\"Farid Nagar\",\"address_country\":\"India\",\"address_line1\":\"himlifospu@gufum.com\",\"address_line1_check\":\"pass\",\"address_line2\":null,\"address_state\":\"36\",\"address_zip\":\"245304\",\"address_zip_check\":\"pass\",\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":11,\"exp_year\":2032,\"fingerprint\":\"Xnu0KEUDuMXO8x5H\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":{},\"name\":\"test\",\"tokenization_method\":null,\"wallet\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2023-07-06 10:37:23'),
(21, 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'Offline', NULL, '\"Offline payment\"', '2023-09-28 06:15:02'),
(22, 'tqQVkXPfAXtmKExQC4RKOZOQslEZYAT9', 'Offline', NULL, '\"Offline payment\"', '2023-10-26 08:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `slug`, `title`, `meta`, `content`, `createdAt`) VALUES
(10, 'contato', 'Contato', 'contato', '<h2>Se você tiver alguma pergunta, comentário ou desejar entrar em contato conosco, por favor, preencha o formulário abaixo. Faremos o possível para responder o mais breve possível.</h2><p><br></p><h3><span style=\"color: var(--tw-prose-bold);\">Informações de Contato</span></h3><p><br></p><p><br></p><p>Telefone: [Número de telefone]</p><p>Endereço: [Endereço físico]</p><p>E-mail: [Endereço de e-mail]</p><p>Redes Sociais: [Links para as redes sociais da empresa]</p><p><br></p>', '2023-06-16 21:19:54'),
(11, 'politicas-de-privacidades', 'Politicas de Privacidades', 'contato', '<h2>Se você tiver alguma pergunta, comentário ou desejar entrar em contato conosco, por favor, preencha o formulário abaixo. Faremos o possível para responder o mais breve possível.</h2><p><br></p><h3><span style=\"color: var(--tw-prose-bold);\">Informações de Contato</span></h3><p><br></p><p><br></p><p>Telefone: [Número de telefone]</p><p>Endereço: [Endereço físico]</p><p>E-mail: [Endereço de e-mail]</p><p>Redes Sociais: [Links para as redes sociais da empresa]</p><p><br></p>', '2023-06-16 21:20:28'),
(12, 'termos-de-uso', 'Termos de Uso', 'contato', '<h2>Se você tiver alguma pergunta, comentário ou desejar entrar em contato conosco, por favor, preencha o formulário abaixo. Faremos o possível para responder o mais breve possível.</h2><p><br></p><h3><span style=\"color: var(--tw-prose-bold);\">Informações de Contato</span></h3><p><br></p><p><br></p><p>Telefone: [Número de telefone]</p><p>Endereço: [Endereço físico]</p><p>E-mail: [Endereço de e-mail]</p><p>Redes Sociais: [Links para as redes sociais da empresa]</p><p><br></p>', '2023-06-16 21:20:39'),
(13, 'sobre-nos', 'Sobre nos', 'contato', '<h2>Se você tiver alguma pergunta, comentário ou desejar entrar em contato conosco, por favor, preencha o formulário abaixo. Faremos o possível para responder o mais breve possível.</h2><p><br></p><h3><span style=\"color: var(--tw-prose-bold);\">Informações de Contato</span></h3><p><br></p><p><br></p><p>Telefone: [Número de telefone]</p><p>Endereço: [Endereço físico]</p><p>E-mail: [Endereço de e-mail]</p><p>Redes Sociais: [Links para as redes sociais da empresa]</p><p><br></p>', '2023-06-16 21:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `code` varchar(999) DEFAULT NULL,
  `payment_id` longtext DEFAULT NULL,
  `payment_keys` longtext DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `other` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `active`, `code`, `payment_id`, `payment_keys`, `name`, `other`) VALUES
(1, 0, 'paypal', 'xxxxx', 'xxxxx', 'Paypal', NULL),
(2, 1, 'paystack', 'xxxxx', 'xxxxx', 'Paystack', NULL),
(3, 0, 'razorpay', 'xxxxx', 'xxxxx', 'Razorpay', NULL),
(4, 0, 'zarnipal', 'xxxxx', 'xxxxx', 'Zarnipal', NULL),
(5, 0, 'instamojo', 'xxxxx', 'xxxxx', 'Instamojo', NULL),
(6, 1, 'offline', 'xxxxx', 'xxxxx', 'Offline', NULL),
(7, 1, 'stripe', 'xxxxx', 'xxxxx', 'Stripe', NULL),
(8, 1, 'mercadopago', 'xxxxx', 'xxxxx', 'mercadopago', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ping`
--

CREATE TABLE `ping` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `user_msg` longtext DEFAULT NULL,
  `admin_reply` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ping`
--

INSERT INTO `ping` (`id`, `uid`, `user_msg`, `admin_reply`, `createdAt`) VALUES
(4, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Hello admin', 'hey man', '2023-05-28 14:02:43'),
(5, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'hello admin I want a popcorn ', 'why are you asking me then go order online :D', '2023-05-31 12:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(999) DEFAULT NULL,
  `cost` bigint(20) NOT NULL DEFAULT 0,
  `gpt_words_limit` bigint(20) NOT NULL DEFAULT 0,
  `dalle` int(1) NOT NULL DEFAULT 0,
  `dalle_limit` bigint(20) NOT NULL DEFAULT 0,
  `dalle_size` varchar(999) DEFAULT NULL,
  `wa_bot` int(1) NOT NULL DEFAULT 0,
  `wp_auto_bloging` int(1) NOT NULL DEFAULT 0,
  `chat_in_app` int(1) NOT NULL DEFAULT 0,
  `text_to_speech` int(1) NOT NULL DEFAULT 0,
  `tts_words_limit` bigint(20) NOT NULL DEFAULT 0,
  `speech_to_text` int(1) NOT NULL DEFAULT 0,
  `allow_text_to_speech_api` int(1) NOT NULL DEFAULT 0,
  `bard_access` int(1) NOT NULL DEFAULT 0,
  `embed_chatbot` int(1) NOT NULL DEFAULT 0,
  `embed_chatbot_limit` bigint(20) NOT NULL DEFAULT 0,
  `planexpire` varchar(999) NOT NULL,
  `allow_own_openai` int(1) DEFAULT 0,
  `gemini_chatbot` int(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `plan_name`, `cost`, `gpt_words_limit`, `dalle`, `dalle_limit`, `dalle_size`, `wa_bot`, `wp_auto_bloging`, `chat_in_app`, `text_to_speech`, `tts_words_limit`, `speech_to_text`, `allow_text_to_speech_api`, `bard_access`, `embed_chatbot`, `embed_chatbot_limit`, `planexpire`, `allow_own_openai`, `gemini_chatbot`, `createdAt`) VALUES
(23, 'All', 100, 10000000, 1, 10000, '250x250', 1, 1, 1, 1, 10000, 1, 0, 1, 1, 10000, '30', 1, 1, '2023-11-16 15:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `stt`
--

CREATE TABLE `stt` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stt`
--

INSERT INTO `stt` (`id`, `uid`, `text`, `createdAt`) VALUES
(1, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello hello hello', '2023-05-28 08:26:17'),
(2, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello hello hello hello hello', '2023-05-28 08:39:41'),
(3, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'Hello how are you', '2023-05-31 12:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `templet_category`
--

CREATE TABLE `templet_category` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templet_category`
--

INSERT INTO `templet_category` (`id`, `name`, `createdAt`) VALUES
(4, 'Ecommerce', '2023-05-26 17:56:05'),
(5, 'Fitness', '2023-05-26 17:56:11'),
(6, 'Travel', '2023-05-26 17:56:16'),
(7, 'Technology', '2023-05-26 17:56:22'),
(8, 'Education', '2023-05-26 17:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `position` varchar(999) DEFAULT NULL,
  `description` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `position`, `description`, `createdAt`) VALUES
(9, 'John Smith', 'CEO', '\"Working with [Company Name] has been a game-changer for our business. Their AI-powered Text-to-Speech solution has completely transformed our customer experience. The voice quality is remarkably natural, and it has allowed us to enhance our audio content and provide personalized interactions with our users. The team at [Company Name] has been exceptional in understanding our requirements and delivering a solution that exceeds our expectations.\"', '2023-05-31 10:23:35'),
(10, 'Sarah Johnson', 'Digital Marketing Manager', '\"The WhatsApp AI bot developed by [Company Name] has revolutionized our customer support process. It handles inquiries and provides instant responses, saving our team countless hours. The bot is intelligent, capable of understanding complex queries, and provides accurate and relevant information. Our customers love the convenience and efficiency it offers, and we have seen a significant improvement in customer satisfaction. [Company Name] has been a trusted partner throughout the development and implementation process.\"', '2023-05-31 10:23:56'),
(11, 'Michael Brown', 'Blogger', '\"The Voice-to-Text feature offered by [Company Name] has been a game-changer for my content creation process. It accurately transcribes my spoken words into text, saving me hours of manual transcription work. The technology is impressive, with high accuracy and fast processing times. As a blogger, this has allowed me to focus more on crafting quality content and less on tedious administrative tasks. I highly recommend [Company Name]\'s Voice-to-Text solution to any content creator looking to streamline their workflow.\"', '2023-05-31 10:24:35'),
(12, 'Emily Roberts', 'Web Developer', '\"[Company Name]\'s WordPress Auto Blogging solution has been a game-changer for our clients. It automates the process of content creation and publication, significantly reducing the time and effort required to maintain a blog. The AI technology selects and curates relevant content, ensuring our clients\' websites are always updated with fresh and engaging articles. The team at [Company Name] has been fantastic to work with, providing excellent support and customization options tailored to our clients\' needs.\"', '2023-05-31 10:25:08'),
(13, 'David Thompson', 'Customer Support Manager', '\"The chatbots developed by [Company Name] have greatly improved our customer support operations. These AI-powered chatbots offer personalized assistance, answering frequently asked questions and guiding users through complex processes. Our customers appreciate the quick response times and accurate information provided by the chatbots. [Company Name] has been a reliable partner in developing and implementing chatbot solutions that have elevated our customer support to new heights.\"', '2023-05-31 10:25:41'),
(14, 'Jennifer Adams', 'Marketing Director', '\"The BARD AI Chatbot created by [Company Name] has been a game-changer for our website. It engages visitors, provides relevant recommendations, and assists them in finding the information they need quickly. The chatbot\'s conversational abilities and natural language processing make it feel like a human interaction. We have seen a significant increase in user engagement and conversion rates since implementing the BARD AI Chatbot. [Company Name]\'s expertise and support have been instrumental in our success.\"', '2023-05-31 10:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `text2img`
--

CREATE TABLE `text2img` (
  `id` int(11) NOT NULL,
  `job_id` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `prompt` longtext DEFAULT NULL,
  `negative_prompt` longtext DEFAULT NULL,
  `size` varchar(999) DEFAULT NULL,
  `model` varchar(999) DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tts`
--

CREATE TABLE `tts` (
  `id` int(11) NOT NULL,
  `filename` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `language` varchar(999) DEFAULT NULL,
  `voice` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tts`
--

INSERT INTO `tts` (`id`, `filename`, `uid`, `text`, `title`, `language`, `voice`, `createdAt`) VALUES
(1, '1685256015026.mp3', 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello your name is Hamid', 'name', 'Indian English', 'Aditi', '2023-05-28 06:40:15'),
(3, '1685256353837.mp3', 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello your name is Hamid', 'name', 'Indian English', 'Kajal', '2023-05-28 06:45:54'),
(4, '1685256692897.mp3', 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello sir how are you ?', 'name', 'Indian English', 'Kajal', '2023-05-28 06:51:33'),
(5, '1685256699064.mp3', 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello sir how are you ?', 'name', 'Indian English', 'Raveena', '2023-05-28 06:51:39'),
(8, '1685536761344.mp3', 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'hello this is me Hamid ', 'calling my name', 'US English', 'Justin', '2023-05-31 12:39:21'),
(9, '1685536787859.mp3', 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'hello my name is John Doe', 'john', 'US English', 'Kevin', '2023-05-31 12:39:47'),
(11, '1685630308218.mp3', 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello there this is me John doe, How  are you doing today ?', 'testing', 'US English', 'Stephen', '2023-06-01 14:38:28'),
(12, '1685630324013.mp3', 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello there this is me John doe, How are you doing today ?\n', 'tes', 'US English', 'Ivy', '2023-06-01 14:38:44'),
(14, '1686821858099.mp3', 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', '1234666', '1', 'Finnish', 'Suvi', '2023-06-15 09:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `upload_media`
--

CREATE TABLE `upload_media` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `file` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` varchar(5) NOT NULL DEFAULT 'user',
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `plan` varchar(999) DEFAULT NULL,
  `planexpire` varchar(999) DEFAULT NULL,
  `gpt_words_limit` bigint(20) NOT NULL DEFAULT 0,
  `dalle_limit` bigint(20) NOT NULL DEFAULT 0,
  `tts_words_limit` bigint(20) NOT NULL DEFAULT 0,
  `wp_domain` varchar(999) DEFAULT NULL,
  `wp_email` varchar(999) DEFAULT NULL,
  `wp_token` varchar(999) DEFAULT NULL,
  `use_my_openai` int(1) DEFAULT 0,
  `my_openai_api` varchar(999) DEFAULT NULL,
  `bard_one` varchar(999) DEFAULT NULL,
  `bard_two` varchar(999) DEFAULT NULL,
  `bard_three` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `gemini_keys` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `uid`, `name`, `email`, `password`, `plan`, `planexpire`, `gpt_words_limit`, `dalle_limit`, `tts_words_limit`, `wp_domain`, `wp_email`, `wp_token`, `use_my_openai`, `my_openai_api`, `bard_one`, `bard_two`, `bard_three`, `createdAt`, `gemini_keys`) VALUES
(14, 'user', 'sZQosTdrhtjyqPMfMbDiXvEFafxe5AIj', 'User', 'user@user.com', '$2b$10$Ndw//B.W2qwV9xB8DGd5YO2O.l49rBat9SGUtQO/4sEGVsStJkTBm', '{\"id\":23,\"plan_name\":\"All\",\"cost\":100,\"gpt_words_limit\":10000000,\"dalle\":1,\"dalle_limit\":10000,\"dalle_size\":\"256x256\",\"wa_bot\":1,\"wp_auto_bloging\":1,\"chat_in_app\":1,\"text_to_speech\":1,\"tts_words_limit\":10000,\"speech_to_text\":1,\"allow_text_to_speech_api\":0,\"bard_access\":1,\"embed_chatbot\":1,\"embed_chatbot_limit\":10000,\"planexpire\":\"30\",\"allow_own_openai\":1,\"createdAt\":\"2023-11-16T09:55:06.000Z\"}', '2023-12-17 18:15:52', 9985861, 948, 10000, NULL, NULL, NULL, 0, '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', 'ACA-OxMF0Bdwhr8wi9eMpFyyyeih2lUvCLNQxN7WncrnQAlhFHF_91c7_tG9_SUXhO84k3roO-8', 'sidts-CjIBPVxjSuI1N--nwcYtdyucyxL_UDc_Bek1dg87Y4M72S5_X0OBFkYMOfBj305zOnZFYxAA', 'dwgVhJd1QVXYcDCbv5pi1LoNj0dax5o2kDjDk5tX-WyVbGT32gZBRpC2Q63w6T3MVwexSw.', '2023-07-08 08:30:51', 'AIzaSyDGsP19ykS1dcGjUY7yrrNv7LDXOFnhOeA');

-- --------------------------------------------------------

--
-- Table structure for table `wa_ai_bot`
--

CREATE TABLE `wa_ai_bot` (
  `id` int(11) NOT NULL,
  `active` int(1) DEFAULT 1,
  `uid` varchar(999) DEFAULT NULL,
  `bot_title` varchar(999) DEFAULT NULL,
  `client_id` varchar(999) DEFAULT NULL,
  `text_train_data` longtext DEFAULT NULL,
  `doc_text_train` longtext DEFAULT NULL,
  `train_type` varchar(999) DEFAULT NULL,
  `group_id` varchar(999) DEFAULT NULL,
  `reaction` varchar(999) DEFAULT NULL,
  `enable_typing` int(1) DEFAULT 0,
  `openai_model` varchar(999) DEFAULT NULL,
  `sql_connection` longtext DEFAULT NULL,
  `train_data_instruction` longtext DEFAULT NULL,
  `reply_in_groups` int(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `id` int(11) NOT NULL,
  `logo` varchar(999) DEFAULT NULL,
  `app_name` varchar(999) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `youtube_video` varchar(999) DEFAULT NULL,
  `currency_symbol` varchar(999) DEFAULT NULL,
  `exchange_rate` bigint(20) DEFAULT NULL,
  `smtp_host` varchar(999) DEFAULT NULL,
  `smtp_port` varchar(999) DEFAULT NULL,
  `smtp_email` varchar(999) DEFAULT NULL,
  `smtp_pass` varchar(999) DEFAULT NULL,
  `gemini_keys` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`id`, `logo`, `app_name`, `meta`, `youtube_video`, `currency_symbol`, `exchange_rate`, `smtp_host`, `smtp_port`, `smtp_email`, `smtp_pass`, `gemini_keys`) VALUES
(1, '522991685526550773665981676743619197logo80x80.jpg', 'Dallham', 'Chat bot integrado ao ChatGPT. IA', '', '$', 1, 'xxxxx', '465', 'xxxxx', 'pass', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aibot`
--
ALTER TABLE `aibot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apikeys`
--
ALTER TABLE `apikeys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bard_wa_chatbot`
--
ALTER TABLE `bard_wa_chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot_templet`
--
ALTER TABLE `chatbot_templet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_reply_flow`
--
ALTER TABLE `custom_reply_flow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_reply_flow_group`
--
ALTER TABLE `custom_reply_flow_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embed_chatbot`
--
ALTER TABLE `embed_chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embed_chats`
--
ALTER TABLE `embed_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gemini_chatbot`
--
ALTER TABLE `gemini_chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_images`
--
ALTER TABLE `generated_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_wp`
--
ALTER TABLE `generated_wp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hamWiz_avatar`
--
ALTER TABLE `hamWiz_avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hamWiz_img`
--
ALTER TABLE `hamWiz_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hamWiz_upscale`
--
ALTER TABLE `hamWiz_upscale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instance`
--
ALTER TABLE `instance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ping`
--
ALTER TABLE `ping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stt`
--
ALTER TABLE `stt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templet_category`
--
ALTER TABLE `templet_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text2img`
--
ALTER TABLE `text2img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tts`
--
ALTER TABLE `tts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_media`
--
ALTER TABLE `upload_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wa_ai_bot`
--
ALTER TABLE `wa_ai_bot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aibot`
--
ALTER TABLE `aibot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `apikeys`
--
ALTER TABLE `apikeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bard_wa_chatbot`
--
ALTER TABLE `bard_wa_chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chatbot_templet`
--
ALTER TABLE `chatbot_templet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `custom_reply_flow`
--
ALTER TABLE `custom_reply_flow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `custom_reply_flow_group`
--
ALTER TABLE `custom_reply_flow_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `embed_chatbot`
--
ALTER TABLE `embed_chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `embed_chats`
--
ALTER TABLE `embed_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `generated_images`
--
ALTER TABLE `generated_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `generated_wp`
--
ALTER TABLE `generated_wp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hamWiz_avatar`
--
ALTER TABLE `hamWiz_avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hamWiz_img`
--
ALTER TABLE `hamWiz_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hamWiz_upscale`
--
ALTER TABLE `hamWiz_upscale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instance`
--
ALTER TABLE `instance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ping`
--
ALTER TABLE `ping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `stt`
--
ALTER TABLE `stt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `templet_category`
--
ALTER TABLE `templet_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `text2img`
--
ALTER TABLE `text2img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tts`
--
ALTER TABLE `tts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `upload_media`
--
ALTER TABLE `upload_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wa_ai_bot`
--
ALTER TABLE `wa_ai_bot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
