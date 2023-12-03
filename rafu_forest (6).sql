-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 04:12 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rafu_forest`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'user', 'created', 1, 'App\\User', NULL, NULL, '{\"attributes\": {\"name\": \"Admin\", \"email\": \"admin@email.com\", \"status\": 1, \"password\": \"$2y$10$ZcnE7sHTcL2k/AYzld5sg.ubdOf6Bsf5lRImCxTQ9cAq5uL/Ut7AO\", \"phone_number\": null, \"profile_photo\": null}}', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(2, 'user', 'created', 2, 'App\\User', NULL, NULL, '{\"attributes\": {\"name\": \"User\", \"email\": \"user@email.com\", \"status\": 1, \"password\": \"$2y$10$V1.QihIb9O8tPHGrrdIPtuEa3EDvuXW9lORPkOXPBTmiZVpcMgGle\", \"phone_number\": null, \"profile_photo\": null}}', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(3, 'category', 'created', 1, 'App\\Category', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"category_name\": \"et\"}}', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(4, 'category', 'created', 2, 'App\\Category', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"category_name\": \"aut\"}}', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(5, 'category', 'created', 3, 'App\\Category', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"category_name\": \"nulla\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(6, 'category', 'created', 4, 'App\\Category', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"category_name\": \"quo\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(7, 'category', 'created', 5, 'App\\Category', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"category_name\": \"odit\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(8, 'post', 'created', 1, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Quia soluta quam perferendis ab cum. Enim quae quo ullam harum exercitationem aut delectus. Consequatur necessitatibus voluptatem exercitationem et. Ut aspernatur voluptatem eum in voluptatem. Blanditiis et quia corporis ut ab.\", \"post_title\": \"Quaerat non et et consequatur tempora.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?52981\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(9, 'post', 'created', 2, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Rem qui inventore blanditiis aut quasi. Rerum nihil possimus est quas nostrum.\", \"post_title\": \"Rerum vel porro ea dolorem.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?75636\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(10, 'post', 'created', 3, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Voluptas reiciendis ratione velit nostrum. Deleniti laboriosam sint provident nam consequatur sint aliquid. Quia sed rem labore odit dolor beatae sunt. Dolorem consequatur dignissimos nobis praesentium perspiciatis.\", \"post_title\": \"Quia est cupiditate beatae autem et qui nobis.\", \"category_id\": 2, \"featured_image\": \"https://lorempixel.com/840/580/?52291\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(11, 'post', 'created', 4, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Fuga mollitia quaerat deleniti eveniet quia. Quis amet in enim enim omnis. Molestias vel ex ut quo soluta quam. Consequatur quia dignissimos ut ipsa laudantium fugiat.\", \"post_title\": \"Labore et architecto sequi culpa sed non.\", \"category_id\": 2, \"featured_image\": \"https://lorempixel.com/840/580/?97980\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(12, 'post', 'created', 5, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Et officiis eos quia aut maiores a magni in. Odit quos quisquam beatae sint quisquam.\", \"post_title\": \"Labore unde amet et beatae delectus.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?29798\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(13, 'post', 'created', 6, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Dolore ut aut numquam dolorem. Consequatur sint reprehenderit nisi est est rerum ut. Eum voluptas iste et repellendus repudiandae in. Tempore ut libero qui expedita architecto nisi voluptate est.\", \"post_title\": \"Consequuntur vel et consectetur error neque ut esse quo.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?40774\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(14, 'post', 'created', 7, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Occaecati enim est veritatis repellat et nostrum voluptas. Omnis accusantium culpa velit hic quibusdam repudiandae velit. Voluptatem deleniti fugit vel maxime. Earum nihil est voluptatem voluptates doloremque commodi.\", \"post_title\": \"Nihil iure voluptates totam qui.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?85997\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(15, 'post', 'created', 8, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Ut dicta officia tempore necessitatibus. Totam quia suscipit provident quibusdam corporis earum. Odio nulla ducimus eos recusandae odio. Qui est ipsam voluptatem temporibus nihil.\", \"post_title\": \"Veniam laborum repudiandae quia fugiat fugiat.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?30549\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(16, 'post', 'created', 9, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Et eos vero accusantium sit voluptatem. Et ducimus pariatur est excepturi quam. Voluptatem provident quis magni explicabo voluptatem cum. Sapiente error et ea dolorem ex nesciunt.\", \"post_title\": \"Ad voluptatem facere tempore beatae debitis quae.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?23103\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(17, 'post', 'created', 10, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Reprehenderit consequatur ipsam vel nisi quisquam esse recusandae. Voluptatem enim quae esse cupiditate suscipit rerum dolore. Voluptates occaecati sed id vitae necessitatibus.\", \"post_title\": \"Voluptas consequatur numquam optio eum ut.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?12168\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(18, 'post', 'created', 11, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Vel quae suscipit enim aut sint dolorem. Repellat quia minus non debitis ut esse est tenetur. Temporibus ut libero eos architecto sunt. Modi numquam totam et et.\", \"post_title\": \"Quisquam vitae aperiam et in.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?55089\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(19, 'post', 'created', 12, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Rerum inventore non ea quidem nisi voluptate nihil. Voluptatum dolorum voluptatem nam corrupti aut.\", \"post_title\": \"Distinctio minima vel iusto qui inventore qui.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?47872\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(20, 'post', 'created', 13, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Natus dolor assumenda ut. Culpa quia pariatur molestias ut id non unde. Quidem unde aut repellat. Aut facere alias deserunt quasi quasi voluptate. Id perferendis quam velit eos sint.\", \"post_title\": \"Voluptas saepe ut iste quisquam.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?70273\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(21, 'post', 'created', 14, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Adipisci qui hic dolor eius. Amet facilis nihil porro possimus.\", \"post_title\": \"Velit et libero ducimus vel.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?93494\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(22, 'post', 'created', 15, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Repellat doloremque enim quas amet qui qui illum. Sit modi nobis rerum doloribus architecto. Occaecati voluptatem facere explicabo iure enim et.\", \"post_title\": \"Aut eum distinctio quod dignissimos.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?88777\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(23, 'post', 'created', 16, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Unde atque et in facilis consequatur illo. Iste culpa voluptas dolorem.\", \"post_title\": \"Reiciendis dignissimos nemo et sint et non sit.\", \"category_id\": 2, \"featured_image\": \"https://lorempixel.com/840/580/?64507\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(24, 'post', 'created', 17, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Unde qui voluptatem voluptatem est nam explicabo dolorem doloribus. Minima nulla cum aut beatae. Voluptas rem optio voluptatibus ex ut aspernatur aut.\", \"post_title\": \"Rem id in quod aspernatur sit.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?32302\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(25, 'post', 'created', 18, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Ipsa perferendis voluptatem officia vero. Qui atque itaque nobis et voluptas. Minus minus quos suscipit. Id necessitatibus sunt quis est. Hic explicabo nisi explicabo aut exercitationem nobis.\", \"post_title\": \"Dolor sint magni est enim consequatur tempora.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?86334\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(26, 'post', 'created', 19, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Nihil esse similique et optio. Animi quis natus distinctio aperiam consequatur. Sunt necessitatibus voluptatibus labore voluptatem. Earum vero et iste quidem.\", \"post_title\": \"Enim consequuntur ut non magni sed eaque tenetur.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?42453\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(27, 'post', 'created', 20, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Et sunt doloremque aliquam ratione atque atque. Tempore iure fuga ea quod dolore rerum. Eos et tenetur dolores. Modi totam fuga repellendus optio aut.\", \"post_title\": \"Eos eveniet perspiciatis voluptas illo qui dignissimos et sequi.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?16308\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(28, 'post', 'created', 21, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Aliquid alias sunt rerum. Veritatis quia consequuntur inventore quis excepturi ad eaque. Ut mollitia assumenda neque voluptas autem. Tempore nobis necessitatibus deserunt quas itaque eligendi.\", \"post_title\": \"Voluptas animi illum et distinctio.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?68856\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(29, 'post', 'created', 22, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Est delectus atque animi aut velit. In nostrum vitae illo rerum a eligendi et. Saepe architecto fugit et.\", \"post_title\": \"Pariatur provident in et quidem.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?38001\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(30, 'post', 'created', 23, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Id ut voluptatibus ut eligendi voluptatem repellendus illo. Est sit doloremque voluptas illo magni beatae. Corporis qui voluptates quam nobis accusantium.\", \"post_title\": \"Consequatur distinctio necessitatibus est culpa illo eaque.\", \"category_id\": 2, \"featured_image\": \"https://lorempixel.com/840/580/?50052\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(31, 'post', 'created', 24, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Eius et nulla laborum ex voluptates unde natus delectus. Ut saepe explicabo dolore nam magni perferendis voluptatem asperiores. Facilis velit sed dicta enim amet.\", \"post_title\": \"Corporis est nisi error eum sit qui nulla.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?50830\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(32, 'post', 'created', 25, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Eveniet a molestiae asperiores optio id. Sapiente et harum cumque aut et. Dolore quasi beatae sed fugiat. Commodi quae similique quis neque aut dolores odio.\", \"post_title\": \"Ut ut et rerum eligendi nostrum possimus et.\", \"category_id\": 2, \"featured_image\": \"https://lorempixel.com/840/580/?30520\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(33, 'post', 'created', 26, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Voluptatem aut odit inventore eligendi voluptas autem quos. Veniam porro voluptatem impedit unde. Eius consequatur expedita doloremque qui maiores qui.\", \"post_title\": \"Aut voluptatem nemo laudantium corporis et aliquid similique.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?39567\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(34, 'post', 'created', 27, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Iste ut ut vel sunt. Dolor ut excepturi nihil architecto enim ut libero. Consequatur ut dolores quia in non architecto fugiat alias. Ad earum est aut dolores molestiae.\", \"post_title\": \"Rerum architecto similique porro tenetur.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?68341\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(35, 'post', 'created', 28, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Et laborum ut ut nihil quisquam placeat expedita quia. Omnis rerum quod sit inventore veniam. Quaerat atque earum veritatis voluptatem. Ut sit perspiciatis excepturi non tenetur magni impedit.\", \"post_title\": \"Illo dolores repellendus hic numquam ipsum.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?73270\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(36, 'post', 'created', 29, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Nesciunt qui officia ea voluptatem sed. Eos id dolor incidunt est qui. Quas explicabo dolor voluptas molestiae voluptates. Inventore provident tenetur error numquam quasi est nobis.\", \"post_title\": \"Culpa facilis consequatur doloribus possimus ipsa ut impedit.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?34776\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(37, 'post', 'created', 30, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Nemo ut et quo nobis. Iure delectus aut molestiae quas saepe. Est tempore sed eos ut.\", \"post_title\": \"Sint inventore natus dolor nulla.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?17884\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(38, 'post', 'created', 31, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Aut laborum libero voluptate qui quis. Neque recusandae voluptatem molestiae eum et consequatur. Voluptatem vel praesentium natus accusantium cumque aut rerum. Placeat suscipit ad pariatur et occaecati non laudantium quae.\", \"post_title\": \"Aut blanditiis numquam perspiciatis neque nulla dolor labore.\", \"category_id\": 2, \"featured_image\": \"https://lorempixel.com/840/580/?14298\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(39, 'post', 'created', 32, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Ratione eum quae odio excepturi vero eum cupiditate. Ut ab modi earum maiores. Molestias quidem minima accusantium porro eos. In exercitationem beatae quam sunt harum.\", \"post_title\": \"Cumque ex possimus nesciunt sunt iste.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?38559\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(40, 'post', 'created', 33, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Distinctio reprehenderit cupiditate cupiditate perspiciatis. Culpa ut qui vel rerum qui. Perferendis at aut molestias doloribus rem iste non quibusdam.\", \"post_title\": \"In amet voluptatem ex nam qui.\", \"category_id\": 2, \"featured_image\": \"https://lorempixel.com/840/580/?68724\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(41, 'post', 'created', 34, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Ab hic facere et. In eos corporis qui nihil. Recusandae qui fuga occaecati exercitationem quidem repellendus sunt. Recusandae eveniet et tenetur cum pariatur. Et est unde aperiam ducimus.\", \"post_title\": \"Ut voluptatem qui quis eius odit et.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?19872\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(42, 'post', 'created', 35, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Soluta nesciunt unde non aut qui suscipit. Ab ex error et aliquid voluptas. Consequuntur aspernatur repellendus quasi architecto quasi magnam qui quos.\", \"post_title\": \"Eligendi vero voluptatem rerum odio.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?64586\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(43, 'post', 'created', 36, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Corporis iusto inventore repudiandae fuga voluptatibus. Atque dolor et facere doloribus qui. Tempora aut quibusdam consequatur rem libero consequatur. Est veritatis est numquam amet quibusdam voluptas.\", \"post_title\": \"Quo rem sed soluta eum temporibus.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?53387\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(44, 'post', 'created', 37, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Corporis delectus dolor eius in. Qui labore qui dignissimos praesentium velit veritatis. Ducimus molestias atque eum voluptatem. Quaerat amet explicabo enim distinctio quisquam cumque.\", \"post_title\": \"Harum iste aperiam illum labore earum ab.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?71546\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(45, 'post', 'created', 38, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Quisquam incidunt maiores est mollitia. Aut omnis reiciendis ut consequatur. Id non veniam voluptate qui rerum hic quia.\", \"post_title\": \"Quo fugit pariatur doloribus modi optio sit.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?33771\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(46, 'post', 'created', 39, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Facilis occaecati nihil sed aspernatur vel iusto. Dolorem ut hic possimus velit consectetur nam. Recusandae omnis ipsa eum ullam dolorem. Laborum consequuntur non accusamus libero dolorum.\", \"post_title\": \"Cum doloribus corporis nihil et eos deleniti.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?88531\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(47, 'post', 'created', 40, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Voluptatem est praesentium qui earum nostrum. Nam omnis qui sunt quia beatae nostrum possimus. Velit deserunt autem molestias et possimus. Odit ipsum et in.\", \"post_title\": \"Totam officia corrupti provident et ipsa labore.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?56780\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(48, 'post', 'created', 41, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Voluptatem voluptates qui corporis ex mollitia. Modi minima vero consequuntur modi. Sapiente id rerum aspernatur ut reprehenderit vel molestiae ipsum.\", \"post_title\": \"Dolores occaecati temporibus aliquam et rerum laudantium.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?67086\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(49, 'post', 'created', 42, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Suscipit laudantium et sed quo tempora quas quia. Tempora inventore perspiciatis non eos. Non maxime nostrum earum accusamus distinctio nesciunt. Dolores commodi dolore velit corporis.\", \"post_title\": \"Eum vel voluptatem hic corporis impedit.\", \"category_id\": 1, \"featured_image\": \"https://lorempixel.com/840/580/?12986\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(50, 'post', 'created', 43, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Et quisquam earum aut laborum velit quia. Porro sapiente repellat et distinctio doloribus dolor. Voluptas reprehenderit ullam inventore non voluptates.\", \"post_title\": \"Iusto ut veniam hic aut assumenda.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?15191\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(51, 'post', 'created', 44, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Enim nisi doloremque aut veritatis necessitatibus. Non voluptatem distinctio labore quo. Laboriosam impedit id itaque omnis rerum qui.\", \"post_title\": \"Aut assumenda dolores et quo repellat odio.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?85623\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(52, 'post', 'created', 45, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Rerum explicabo natus repellat. Maxime ut voluptatibus tempora tempore. Consequuntur ut quae vitae at. Dolores natus corrupti eum corporis harum.\", \"post_title\": \"Perspiciatis quis minus facere voluptas quos quasi voluptatibus.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?41867\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(53, 'post', 'created', 46, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Quo sit fuga omnis hic placeat. Velit ea dolore nostrum ducimus alias. Voluptatem nulla harum tenetur nulla et qui.\", \"post_title\": \"Illo qui nisi accusamus delectus numquam cumque.\", \"category_id\": 2, \"featured_image\": \"https://lorempixel.com/840/580/?97765\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(54, 'post', 'created', 47, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Consequatur explicabo occaecati in autem est possimus modi. Quo quas labore voluptatem nam id fuga autem. Et ut eos omnis voluptas in porro maiores. Ipsam exercitationem sunt est est est dicta.\", \"post_title\": \"Hic quae molestiae mollitia velit dolorem et quasi.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?95863\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(55, 'post', 'created', 48, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Corrupti dolorem quam sed enim suscipit. Consequatur aut sed id. Dolorum qui tempora et libero. Cum quae neque in a.\", \"post_title\": \"Vero et ipsa maxime minima neque facilis neque.\", \"category_id\": 4, \"featured_image\": \"https://lorempixel.com/840/580/?53366\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(56, 'post', 'created', 49, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 2, \"post_body\": \"Veniam maiores velit aut et corporis voluptas alias. Similique quis cumque mollitia et beatae. Sit ipsam eum corporis mollitia et magnam perferendis numquam. Laudantium iusto voluptatibus illo incidunt quis et quae.\", \"post_title\": \"Consequatur veniam enim qui minima iste dolor.\", \"category_id\": 5, \"featured_image\": \"https://lorempixel.com/840/580/?32911\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(57, 'post', 'created', 50, 'App\\Post', NULL, NULL, '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"post_body\": \"Enim quasi commodi sunt quibusdam consequatur sunt. Molestiae quo alias et odit similique. Dolore ullam aut ut nam. Debitis similique ex sunt nostrum maiores.\", \"post_title\": \"Repellendus recusandae omnis pariatur rem et dicta dolorum.\", \"category_id\": 3, \"featured_image\": \"https://lorempixel.com/840/580/?15419\"}}', '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(58, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-04-08 06:51:39', '2023-04-08 06:51:39'),
(59, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 06:51:48', '2023-04-08 06:51:48'),
(60, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 06:51:51', '2023-04-08 06:51:51'),
(61, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 06:51:54', '2023-04-08 06:51:54'),
(62, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 06:53:05', '2023-04-08 06:53:05'),
(63, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 06:53:12', '2023-04-08 06:53:12'),
(64, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 06:53:21', '2023-04-08 06:53:21'),
(65, 'category', 'created', 6, 'App\\Category', 1, 'App\\User', '{\"attributes\": {\"status\": 1, \"user_id\": 1, \"category_name\": \"TestCat\"}}', '2023-04-08 09:36:45', '2023-04-08 09:36:45'),
(66, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 09:39:14', '2023-04-08 09:39:14'),
(67, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 09:39:19', '2023-04-08 09:39:19'),
(68, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 09:39:22', '2023-04-08 09:39:22'),
(69, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 09:39:25', '2023-04-08 09:39:25'),
(70, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-08 09:39:27', '2023-04-08 09:39:27'),
(71, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-12 12:47:09', '2023-04-12 12:47:09'),
(72, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-12 12:47:28', '2023-04-12 12:47:28'),
(73, 'category', 'updated', 1, 'App\\Category', 1, 'App\\User', '{\"old\": {\"category_name\": \"et\"}, \"attributes\": {\"category_name\": \"etfsfds\"}}', '2023-04-12 12:50:58', '2023-04-12 12:50:58'),
(74, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-12 12:51:03', '2023-04-12 12:51:03'),
(75, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-18 10:43:45', '2023-04-18 10:43:45'),
(76, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-18 10:43:50', '2023-04-18 10:43:50'),
(77, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-18 10:43:53', '2023-04-18 10:43:53'),
(78, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-18 10:43:55', '2023-04-18 10:43:55'),
(79, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-18 10:43:58', '2023-04-18 10:43:58'),
(80, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-18 10:44:00', '2023-04-18 10:44:00'),
(81, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-18 10:44:21', '2023-04-18 10:44:21'),
(82, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-18 10:44:36', '2023-04-18 10:44:36'),
(83, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 08:33:25', '2023-04-30 08:33:25'),
(84, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 08:57:39', '2023-04-30 08:57:39'),
(85, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 08:57:45', '2023-04-30 08:57:45'),
(86, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 08:57:51', '2023-04-30 08:57:51'),
(87, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 08:58:03', '2023-04-30 08:58:03'),
(88, 'activity', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 08:58:11', '2023-04-30 08:58:11'),
(89, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 08:58:13', '2023-04-30 08:58:13'),
(90, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:00:23', '2023-04-30 09:00:23'),
(91, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\": \"d6SLYQZ31LmYFmbjW1yZ8WDjcB0oHOyYq3ATHgSo\", \"company_city\": \"Dinajpur\", \"company_logo\": null, \"company_name\": \"Forest Department Dinajpur\", \"default_role\": \"2\", \"company_email\": \"help@email.com\", \"company_phone\": \"+98765432111\", \"lockout_delay\": \"2\", \"company_address\": \"বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর\", \"record_per_page\": \"15\", \"max_login_attempts\": \"3\", \"company_currency_symbol\": \"₹\", \"register_notification_email\": \"0\"}', '2023-04-30 09:25:26', '2023-04-30 09:25:26'),
(92, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:25:26', '2023-04-30 09:25:26'),
(93, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\": \"d6SLYQZ31LmYFmbjW1yZ8WDjcB0oHOyYq3ATHgSo\", \"company_city\": \"Dinajpur\", \"company_logo\": null, \"company_name\": \"Forest Department Dinajpur\", \"default_role\": \"2\", \"company_email\": \"help@email.com\", \"company_phone\": \"+98765432111\", \"lockout_delay\": \"2\", \"company_address\": \"বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর\", \"record_per_page\": \"15\", \"max_login_attempts\": \"3\", \"company_currency_symbol\": \"₹\", \"register_notification_email\": \"0\"}', '2023-04-30 09:25:30', '2023-04-30 09:25:30'),
(94, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:25:30', '2023-04-30 09:25:30'),
(95, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:38:47', '2023-04-30 09:38:47'),
(96, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\": \"d6SLYQZ31LmYFmbjW1yZ8WDjcB0oHOyYq3ATHgSo\", \"company_city\": \"Dinajpur\", \"company_logo\": null, \"company_name\": \"Forest Department Dinajpur\", \"default_role\": \"2\", \"company_email\": \"help@email.com\", \"company_phone\": \"+98765432111\", \"lockout_delay\": \"2\", \"company_address\": \"বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর\", \"record_per_page\": \"15\", \"max_login_attempts\": \"3\", \"company_currency_symbol\": \"৳\", \"register_notification_email\": \"0\"}', '2023-04-30 09:38:57', '2023-04-30 09:38:57'),
(97, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:38:57', '2023-04-30 09:38:57'),
(98, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\": \"d6SLYQZ31LmYFmbjW1yZ8WDjcB0oHOyYq3ATHgSo\", \"company_city\": \"Dinajpur\", \"company_logo\": null, \"company_name\": \"Forest Department Dinajpur\", \"default_role\": \"2\", \"company_email\": \"dfodinajpur@gmail.com\", \"company_phone\": \"+98765432111\", \"lockout_delay\": \"2\", \"company_address\": \"বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর\", \"record_per_page\": \"15\", \"max_login_attempts\": \"3\", \"company_currency_symbol\": \"৳\", \"register_notification_email\": \"0\"}', '2023-04-30 09:41:28', '2023-04-30 09:41:28'),
(99, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:41:28', '2023-04-30 09:41:28'),
(100, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\": \"d6SLYQZ31LmYFmbjW1yZ8WDjcB0oHOyYq3ATHgSo\", \"company_city\": \"Dinajpur\", \"company_logo\": null, \"company_name\": \"Forest Department Dinajpur\", \"default_role\": \"2\", \"company_email\": \"dfodinajpur@gmail.com\", \"company_phone\": \"01999-006503\", \"lockout_delay\": \"2\", \"company_address\": \"বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর\", \"record_per_page\": \"15\", \"max_login_attempts\": \"3\", \"company_currency_symbol\": \"৳\", \"register_notification_email\": \"0\"}', '2023-04-30 09:43:08', '2023-04-30 09:43:08'),
(101, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:43:08', '2023-04-30 09:43:08'),
(102, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:44:58', '2023-04-30 09:44:58'),
(103, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-04-30 09:53:43', '2023-04-30 09:53:43'),
(104, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-04-30 13:04:28', '2023-04-30 13:04:28'),
(105, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-11 11:19:26', '2023-05-11 11:19:26'),
(106, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-11 11:44:29', '2023-05-11 11:44:29'),
(107, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-11 11:59:05', '2023-05-11 11:59:05'),
(108, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-11 12:00:14', '2023-05-11 12:00:14'),
(109, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-11 12:00:46', '2023-05-11 12:00:46'),
(110, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-11 13:52:42', '2023-05-11 13:52:42'),
(111, 'user', 'created', 3, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"SFNTC\", \"email\": \"sfntc@gmail.com\", \"status\": 0, \"password\": \"$2y$10$uEy4NlKg98uHFa5/ijQDQO3Pd4LQ1PSlUQJcB5QyGoCLVFx/mwqMm\", \"phone_number\": \"11112222\", \"profile_photo\": null}}', '2023-05-16 11:52:41', '2023-05-16 11:52:41'),
(112, 'user', 'updated', 3, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"$2y$10$uEy4NlKg98uHFa5/ijQDQO3Pd4LQ1PSlUQJcB5QyGoCLVFx/mwqMm\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$qQGEqOcnVav/e5zmSqwlBOH/jb2Y44BGv2s95OcjyWDOuhFJ1PEAy\"}}', '2023-05-16 11:52:58', '2023-05-16 11:52:58'),
(113, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-16 11:56:38', '2023-05-16 11:56:38'),
(114, 'user', 'updated', 3, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$qQGEqOcnVav/e5zmSqwlBOH/jb2Y44BGv2s95OcjyWDOuhFJ1PEAy\"}, \"attributes\": {\"password\": \"$2y$10$ToqApJlKKItZwfzTMe/QTOHQrxW2KxRrosXhtFZ3aDGqGgvOx/bT6\"}}', '2023-05-16 11:58:12', '2023-05-16 11:58:12'),
(115, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-16 11:58:17', '2023-05-16 11:58:17'),
(116, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-17 10:18:04', '2023-05-17 10:18:04'),
(117, 'settings', 'view', NULL, NULL, 3, 'App\\User', '[]', '2023-05-17 10:33:41', '2023-05-17 10:33:41'),
(118, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 07:19:02', '2023-05-21 07:19:02'),
(119, 'permission', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 07:19:07', '2023-05-21 07:19:07'),
(120, 'permission', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 07:37:15', '2023-05-21 07:37:15'),
(121, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 07:42:32', '2023-05-21 07:42:32'),
(122, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:11:59', '2023-05-21 16:11:59'),
(123, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:12:04', '2023-05-21 16:12:04'),
(124, 'role', 'created', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:13:54', '2023-05-21 16:13:54'),
(125, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:13:54', '2023-05-21 16:13:54'),
(126, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:13:57', '2023-05-21 16:13:57'),
(127, 'role', 'created', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:14:14', '2023-05-21 16:14:14'),
(128, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:14:14', '2023-05-21 16:14:14'),
(129, 'role', 'Edit', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:14:20', '2023-05-21 16:14:20'),
(130, 'role', 'updated', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:14:46', '2023-05-21 16:14:46'),
(131, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:14:46', '2023-05-21 16:14:46'),
(132, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:14:58', '2023-05-21 16:14:58'),
(133, 'role', 'created', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:15:47', '2023-05-21 16:15:47'),
(134, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:15:47', '2023-05-21 16:15:47'),
(135, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:17:06', '2023-05-21 16:17:06'),
(136, 'role', 'created', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:17:42', '2023-05-21 16:17:42'),
(137, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:17:43', '2023-05-21 16:17:43'),
(138, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:28:01', '2023-05-21 16:28:01'),
(139, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:28:25', '2023-05-21 16:28:25'),
(140, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:28:31', '2023-05-21 16:28:31'),
(141, 'role', 'created', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:16', '2023-05-21 16:29:16'),
(142, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:17', '2023-05-21 16:29:17'),
(143, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:36', '2023-05-21 16:29:36'),
(144, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:39', '2023-05-21 16:29:39'),
(145, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:41', '2023-05-21 16:29:41'),
(146, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:44', '2023-05-21 16:29:44'),
(147, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:46', '2023-05-21 16:29:46'),
(148, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:48', '2023-05-21 16:29:48'),
(149, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-21 16:29:50', '2023-05-21 16:29:50'),
(150, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-22 06:04:46', '2023-05-22 06:04:46'),
(151, 'role', 'Edit', NULL, NULL, 1, 'App\\User', '[]', '2023-05-22 06:04:51', '2023-05-22 06:04:51'),
(152, 'role', 'updated', NULL, NULL, 1, 'App\\User', '[]', '2023-05-22 06:05:07', '2023-05-22 06:05:07'),
(153, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-22 06:05:07', '2023-05-22 06:05:07'),
(154, 'role', 'Edit', NULL, NULL, 1, 'App\\User', '[]', '2023-05-22 06:05:45', '2023-05-22 06:05:45'),
(155, 'role', 'updated', NULL, NULL, 1, 'App\\User', '[]', '2023-05-22 06:06:03', '2023-05-22 06:06:03'),
(156, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-22 06:06:03', '2023-05-22 06:06:03'),
(157, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$ZcnE7sHTcL2k/AYzld5sg.ubdOf6Bsf5lRImCxTQ9cAq5uL/Ut7AO\"}, \"attributes\": {\"password\": \"$2y$10$whsNFzOWZSk.osbKSqzSUe9xiK.46RwAH267eMRbepijiEsnuGZqe\"}}', '2023-05-24 11:58:21', '2023-05-24 11:58:21'),
(158, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-26 07:17:31', '2023-05-26 07:17:31'),
(159, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-26 16:57:18', '2023-05-26 16:57:18'),
(160, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\": \"vUhI0i4rpRFS0oOsvJv0G3FlRI4qk9UgJt6uSXL3\", \"company_city\": \"Dinajpur\", \"company_logo\": null, \"company_name\": \"বন বিভাগ, দিনাজপুর\", \"default_role\": \"2\", \"company_email\": \"dfodinajpur@gmail.com\", \"company_phone\": \"01999-006503\", \"lockout_delay\": \"2\", \"company_address\": \"বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর\", \"record_per_page\": \"15\", \"max_login_attempts\": \"3\", \"company_currency_symbol\": \"৳\", \"register_notification_email\": \"0\"}', '2023-05-26 16:57:45', '2023-05-26 16:57:45'),
(161, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-26 16:57:46', '2023-05-26 16:57:46'),
(162, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-26 16:58:14', '2023-05-26 16:58:14'),
(163, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\": \"vUhI0i4rpRFS0oOsvJv0G3FlRI4qk9UgJt6uSXL3\", \"company_city\": \"Dinajpur\", \"company_logo\": null, \"company_name\": \"Forest Department Dinajpur\", \"default_role\": \"2\", \"company_email\": \"dfodinajpur@gmail.com\", \"company_phone\": \"01999-006503\", \"lockout_delay\": \"2\", \"company_address\": \"বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর\", \"record_per_page\": \"15\", \"max_login_attempts\": \"3\", \"company_currency_symbol\": \"৳\", \"register_notification_email\": \"0\"}', '2023-05-26 16:58:35', '2023-05-26 16:58:35'),
(164, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-26 16:58:35', '2023-05-26 16:58:35'),
(165, 'settings', 'updated', NULL, NULL, 1, 'App\\User', '{\"_token\": \"vUhI0i4rpRFS0oOsvJv0G3FlRI4qk9UgJt6uSXL3\", \"company_city\": \"Dinajpur\", \"company_logo\": null, \"company_name\": \"Forest Dinajpur\", \"default_role\": \"2\", \"company_email\": \"dfodinajpur@gmail.com\", \"company_phone\": \"01999-006503\", \"lockout_delay\": \"2\", \"company_address\": \"বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর\", \"record_per_page\": \"15\", \"max_login_attempts\": \"3\", \"company_currency_symbol\": \"৳\", \"register_notification_email\": \"0\"}', '2023-05-26 16:58:47', '2023-05-26 16:58:47'),
(166, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-26 16:58:47', '2023-05-26 16:58:47'),
(167, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-05-26 17:12:22', '2023-05-26 17:12:22'),
(168, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-05-27 05:54:39', '2023-05-27 05:54:39'),
(169, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-06-26 06:51:58', '2023-06-26 06:51:58'),
(170, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-06-26 07:53:19', '2023-06-26 07:53:19'),
(171, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-06-26 08:00:03', '2023-06-26 08:00:03'),
(172, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-06-26 08:01:01', '2023-06-26 08:01:01'),
(173, 'user', 'created', 4, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"সদর রেঞ্জ\", \"email\": \"dsadar@mail.com\", \"status\": 1, \"password\": \"$2y$10$bOa.S6WK3k2v1hZgJFOoKOuhqYrBM4m82K8D1IRiuLmIlF8kM68KW\", \"phone_number\": \"0\", \"profile_photo\": null}}', '2023-06-26 08:25:01', '2023-06-26 08:25:01'),
(174, 'user', 'created', 5, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"চরকাই রেঞ্জ\", \"email\": \"charkai@mail.com\", \"status\": 1, \"password\": \"$2y$10$Yvu2/lIgu5Wdu3k.QKAxn.u6hlQptl4vir7T8hJkbRCBl64R8Xy1e\", \"username\": \"charkai\", \"phone_number\": \"0\", \"profile_photo\": null}}', '2023-06-26 08:30:53', '2023-06-26 08:30:53'),
(175, 'user', 'created', 6, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"মধ্যপাড়া রেঞ্জ\", \"email\": \"maddhapara@mail.com\", \"status\": 1, \"password\": \"$2y$10$SPun2bbH1Xb8NMA36moFFuq954LoWOM0G/S5GmIhGOa0drXMIzmja\", \"username\": \"maddhapara\", \"designation\": \"রেঞ্জ কর্মকর্তা\", \"phone_number\": null, \"profile_photo\": null}}', '2023-06-26 10:51:29', '2023-06-26 10:51:29'),
(176, 'user', 'created', 7, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"ঠাকুরগাঁও রেঞ্জ\", \"email\": \"thakurgaon@mail.com\", \"status\": 1, \"password\": \"$2y$10$uyAPNq3EShYDI4RuJHPsPupdbpuNu7W900RCfzQ/yfW0/W8rwUDJm\", \"username\": \"thakurgaon\", \"designation\": \"রেঞ্জ কর্মকর্তা\", \"phone_number\": null, \"profile_photo\": null}}', '2023-06-26 10:55:54', '2023-06-26 10:55:54'),
(177, 'user', 'created', 8, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"দেবীগঞ্জ রেঞ্জ\", \"email\": \"debiganj@mail.com\", \"status\": 1, \"password\": \"$2y$10$uU6FqTtXS1ZUQa6sPDaVY.g0qk6yB8bgfqCxepUrvetTo5ifk60fG\", \"username\": \"debiganj\", \"designation\": \"রেঞ্জ কর্মকর্তা\", \"phone_number\": null, \"profile_photo\": null}}', '2023-06-26 11:01:32', '2023-06-26 11:01:32'),
(178, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-06-26 11:47:56', '2023-06-26 11:47:56'),
(179, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-06-26 11:48:13', '2023-06-26 11:48:13'),
(180, 'user', 'created', 9, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"ধর্মপুর বিট\", \"email\": \"dharmapurbeat@mail.com\", \"status\": 1, \"password\": \"$2y$10$/9ZGBxpFrq.WEKnGZ1lrTOr/DpVTSNX96w9mNoS8MwrKIFSqYmXKq\", \"username\": \"dharmapurbeat\", \"designation\": \"বিট কর্মকর্তা\", \"phone_number\": null, \"profile_photo\": null}}', '2023-06-26 12:31:26', '2023-06-26 12:31:26'),
(181, 'user', 'created', 10, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"চরকাই সদর বিট\", \"email\": \"charkisadarbeat@mail.com\", \"status\": 1, \"password\": \"$2y$10$I5VlOcoavUK9eTIlF2JjBeOyklX6rA2/EBaMTb9hdoh8SjnashwXW\", \"username\": \"charkisadarbeat\", \"designation\": \"বিট কর্মকর্তা\", \"phone_number\": null, \"profile_photo\": null}}', '2023-06-26 12:35:30', '2023-06-26 12:35:30'),
(182, 'user', 'deleted', 9, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"ধর্মপুর বিট\", \"email\": \"dharmapurbeat@mail.com\", \"status\": 1, \"password\": \"$2y$10$/9ZGBxpFrq.WEKnGZ1lrTOr/DpVTSNX96w9mNoS8MwrKIFSqYmXKq\", \"username\": \"dharmapurbeat\", \"designation\": \"বিট কর্মকর্তা\", \"phone_number\": null, \"profile_photo\": null}}', '2023-06-26 20:07:04', '2023-06-26 20:07:04'),
(183, 'user', 'deleted', 10, 'App\\User', 1, 'App\\User', '{\"attributes\": {\"name\": \"চরকাই সদর বিট\", \"email\": \"charkisadarbeat@mail.com\", \"status\": 1, \"password\": \"$2y$10$I5VlOcoavUK9eTIlF2JjBeOyklX6rA2/EBaMTb9hdoh8SjnashwXW\", \"username\": \"charkisadarbeat\", \"designation\": \"বিট কর্মকর্তা\", \"phone_number\": null, \"profile_photo\": null}}', '2023-06-26 20:07:09', '2023-06-26 20:07:09'),
(184, 'user', 'updated', 29, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"Re0y6U78\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$82Nsl86zlwp9r97Pt4z9uuQEzbmIR8AQGui3TR3NqLJSndrTehbxy\"}}', '2023-06-26 20:08:57', '2023-06-26 20:08:57'),
(185, 'user', 'updated', 30, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"v8Ru8l35\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$m5Y55fHFIBkrka6MbWYb0eBUlWuhkMT/uypOqFD8HU9MOTl9Njc56\"}}', '2023-06-26 20:09:18', '2023-06-26 20:09:18'),
(186, 'user', 'updated', 31, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"j0F00J1f\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$Bcfjs43oIt27NI6IU6/1mOpHAHnG/xAjBZNoP8dQc4x/U/PU3WpaS\"}}', '2023-06-26 20:09:31', '2023-06-26 20:09:31'),
(187, 'user', 'updated', 32, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"73lL1ln6\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$OLSWUqIgNO9cF03E.nt8ge7CEfAeKHrvtZMkA0dgoPu37fJBWz7AC\"}}', '2023-06-26 20:10:08', '2023-06-26 20:10:08'),
(188, 'user', 'updated', 33, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"p9U1Rb3O\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$hobl8qHni3hoxBu1IZ1mAer/CIUiebH8Lp5b3/Tdx4SSMHTY/OTti\"}}', '2023-06-26 20:10:20', '2023-06-26 20:10:20'),
(189, 'user', 'updated', 34, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"Pa265U6F\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$3iflXeSjVTouniTYlJ/i1.Pz4TcibZHWIPKPDsxxq0QSciCYuZ6Vi\"}}', '2023-06-26 20:10:32', '2023-06-26 20:10:32'),
(190, 'user', 'updated', 35, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"lZW7d19A\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$k0pt53fL0KD3sohtCVYMxeUdfNwSiGNmMRVONApMHIBBvTlSr/r3q\"}}', '2023-06-26 20:10:43', '2023-06-26 20:10:43'),
(191, 'user', 'updated', 36, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"iLtO899Q\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$fSUfppAg8DQ4SxN7J9sAf.SdSRlIDrTJMTgGoQoeCROvjNaXR0kLC\"}}', '2023-06-26 20:10:57', '2023-06-26 20:10:57'),
(192, 'user', 'updated', 37, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"GV97X4eQ\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$LBny9o7dl26Z34IlJfEdce5NhSo3leSRoq55AvLJcrUAmXeU5cxam\"}}', '2023-06-26 20:11:12', '2023-06-26 20:11:12'),
(193, 'user', 'updated', 38, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"yRTJ848G\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$If6FVsoywrz7ferqMieGEeKPjpDdGfV9v1hdis/U0HAdv340.s5au\"}}', '2023-06-26 20:11:37', '2023-06-26 20:11:37');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(194, 'user', 'updated', 39, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"35NzSZy2\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$c7/7zdAP3jHh6lR/A5kEVuGKuntBnggjVQBwuvcC6aEZzVKl8sSW.\"}}', '2023-06-26 20:11:50', '2023-06-26 20:11:50'),
(195, 'user', 'updated', 40, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"8WZ5i1wz\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$5uqQRzTE1lui1sTFaj6c6.9H7DLcsiSF3D7tPmmvt/ksRM.Mi0MNm\"}}', '2023-06-26 20:12:11', '2023-06-26 20:12:11'),
(196, 'user', 'updated', 41, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"50C9EcmQ\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$AMEc88a8fS4AD6gCfZt3Sud8CbMpLsEpfxWN73XWA54p.iCOBEFka\"}}', '2023-06-26 20:12:31', '2023-06-26 20:12:31'),
(197, 'user', 'updated', 42, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"HjB9J04c\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$nExC.iF.6MbiQM6LDRhRDeFLvokuDQywbWF.MabfsJgh4MqiyyNqa\"}}', '2023-06-26 20:12:47', '2023-06-26 20:12:47'),
(198, 'user', 'updated', 43, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"109SQj99\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$VX8bqupXBYmakxLBzhmkPuqs6XTs7AVFOAIgKqJH3F2dHQwuWjnx2\"}}', '2023-06-26 20:13:06', '2023-06-26 20:13:06'),
(199, 'user', 'updated', 44, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"3jgVmH87\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$SJd8g7twGFFzqriurZ/.vO6iYnjTBzk9nsCpGtTdmQ5g.ahApoaqu\"}}', '2023-06-26 20:13:22', '2023-06-26 20:13:22'),
(200, 'user', 'updated', 45, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"a2T2V824\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$sS/FI9m18eeFxxkcRLic5OdkJnQvk784IoTa9g8k3NUSO72UV3mZm\"}}', '2023-06-26 20:13:35', '2023-06-26 20:13:35'),
(201, 'user', 'updated', 46, 'App\\User', 1, 'App\\User', '{\"old\": {\"status\": 0, \"password\": \"fL6qW2y1\"}, \"attributes\": {\"status\": 1, \"password\": \"$2y$10$/yUE1oc6138xlg9tHbrXC.M.IyIQk50jxfSmtvuRcNsXvemWIZdSa\"}}', '2023-06-26 20:13:52', '2023-06-26 20:13:52'),
(202, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-06-26 20:14:57', '2023-06-26 20:14:57'),
(203, 'user', 'updated', 29, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$82Nsl86zlwp9r97Pt4z9uuQEzbmIR8AQGui3TR3NqLJSndrTehbxy\"}, \"attributes\": {\"password\": \"$2y$10$QFsdtxb0/NPIkx3LXJzeneWnbOESmVA3hYdG91o1h9MnUcx/p8UUy\"}}', '2023-06-26 20:25:43', '2023-06-26 20:25:43'),
(204, 'user', 'updated', 30, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$m5Y55fHFIBkrka6MbWYb0eBUlWuhkMT/uypOqFD8HU9MOTl9Njc56\"}, \"attributes\": {\"password\": \"$2y$10$Q4L6K/U3joJTJP7vbT8iE.HkMARCZ0eJ1pPw3YPsL/HiuUsg80dWe\"}}', '2023-06-26 20:26:11', '2023-06-26 20:26:11'),
(205, 'user', 'updated', 31, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$Bcfjs43oIt27NI6IU6/1mOpHAHnG/xAjBZNoP8dQc4x/U/PU3WpaS\"}, \"attributes\": {\"password\": \"$2y$10$8IpZzh5dFN.J8R/eX9Br5u2bxnGYOc59lL1Q1PI28mHPawE7QCCi6\"}}', '2023-06-26 20:27:29', '2023-06-26 20:27:29'),
(206, 'user', 'updated', 32, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$OLSWUqIgNO9cF03E.nt8ge7CEfAeKHrvtZMkA0dgoPu37fJBWz7AC\"}, \"attributes\": {\"password\": \"$2y$10$4VRHuTWy3ttGHNJxkpAWm.9yskej/9rs54DS4OJ9fefSa4sRv6iuS\"}}', '2023-06-26 20:28:02', '2023-06-26 20:28:02'),
(207, 'user', 'updated', 33, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$hobl8qHni3hoxBu1IZ1mAer/CIUiebH8Lp5b3/Tdx4SSMHTY/OTti\"}, \"attributes\": {\"password\": \"$2y$10$kHHxl72z4UxxErvYOPOR3.gY9SqSDqU9x/L3NsT77A3cvki8snZaa\"}}', '2023-06-26 20:28:41', '2023-06-26 20:28:41'),
(208, 'user', 'updated', 34, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$3iflXeSjVTouniTYlJ/i1.Pz4TcibZHWIPKPDsxxq0QSciCYuZ6Vi\"}, \"attributes\": {\"password\": \"$2y$10$ktC29atUpdiGFbbT7xR44.NUdGxscN1Bi/5Fp7dAIahLnpOKMqGVG\"}}', '2023-06-26 20:29:11', '2023-06-26 20:29:11'),
(209, 'user', 'updated', 35, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$k0pt53fL0KD3sohtCVYMxeUdfNwSiGNmMRVONApMHIBBvTlSr/r3q\"}, \"attributes\": {\"password\": \"$2y$10$wx5Cbr3vCqgSryfnWdUwiOfPVwOm6mEOovaCngLIA89wlgOlp2rB2\"}}', '2023-06-26 20:30:03', '2023-06-26 20:30:03'),
(210, 'user', 'updated', 36, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$fSUfppAg8DQ4SxN7J9sAf.SdSRlIDrTJMTgGoQoeCROvjNaXR0kLC\"}, \"attributes\": {\"password\": \"$2y$10$p71FzKKOZiYd5pahPfbT1um9YUDNz4TExbOUEg6SlL1AkOXEgo2j6\"}}', '2023-06-26 20:30:41', '2023-06-26 20:30:41'),
(211, 'user', 'updated', 37, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$LBny9o7dl26Z34IlJfEdce5NhSo3leSRoq55AvLJcrUAmXeU5cxam\"}, \"attributes\": {\"password\": \"$2y$10$ZZNheqaX1TjXpqgY7V0VYuX.15EyP.ksrsEUtZWqfgvWlCzQ/8KSq\"}}', '2023-06-26 20:31:06', '2023-06-26 20:31:06'),
(212, 'user', 'updated', 37, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$ZZNheqaX1TjXpqgY7V0VYuX.15EyP.ksrsEUtZWqfgvWlCzQ/8KSq\"}, \"attributes\": {\"password\": \"$2y$10$WzJ36TO9VKTpeF/.OHL6IOotDodbzmGjPc90Bb.T53ydoXZY10V.q\"}}', '2023-06-26 20:31:50', '2023-06-26 20:31:50'),
(213, 'user', 'updated', 38, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$If6FVsoywrz7ferqMieGEeKPjpDdGfV9v1hdis/U0HAdv340.s5au\"}, \"attributes\": {\"password\": \"$2y$10$figfG78PMco5/KkpCUjykO0YIGuwnH4atxM3S5UAqFrr30pTeKo7q\"}}', '2023-06-26 20:33:41', '2023-06-26 20:33:41'),
(214, 'user', 'updated', 39, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$c7/7zdAP3jHh6lR/A5kEVuGKuntBnggjVQBwuvcC6aEZzVKl8sSW.\"}, \"attributes\": {\"password\": \"$2y$10$5pJNy7pkSqp3HYt3nqqFI.4NGoi9QGaC32y2sNr2ZzaKN3IeLVjRe\"}}', '2023-06-26 20:34:28', '2023-06-26 20:34:28'),
(215, 'user', 'updated', 39, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$5pJNy7pkSqp3HYt3nqqFI.4NGoi9QGaC32y2sNr2ZzaKN3IeLVjRe\"}, \"attributes\": {\"password\": \"$2y$10$b7ZUujpsPXGRra9B7iD5GeKK/3KRl9SAWLoEXv8QQErA5mZVcjpYK\"}}', '2023-06-26 20:35:46', '2023-06-26 20:35:46'),
(216, 'user', 'updated', 40, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$5uqQRzTE1lui1sTFaj6c6.9H7DLcsiSF3D7tPmmvt/ksRM.Mi0MNm\"}, \"attributes\": {\"password\": \"$2y$10$cbPw2/cee2MzhKfhqQ6a9e8sykxdfrdvVbavMMLhbAmaA.U/I/x1y\"}}', '2023-06-26 20:36:18', '2023-06-26 20:36:18'),
(217, 'user', 'updated', 41, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$AMEc88a8fS4AD6gCfZt3Sud8CbMpLsEpfxWN73XWA54p.iCOBEFka\"}, \"attributes\": {\"password\": \"$2y$10$w927u1p3hkKzedqP5oiECu4BDJ3KzP9upJ11hVI29rpPR.gxhftDW\"}}', '2023-06-26 20:36:40', '2023-06-26 20:36:40'),
(218, 'user', 'updated', 42, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$nExC.iF.6MbiQM6LDRhRDeFLvokuDQywbWF.MabfsJgh4MqiyyNqa\"}, \"attributes\": {\"password\": \"$2y$10$7dCz652MHd3JAskvv9hoHe448Pxf9BWQRSnML3XZguInyvwLsT9Se\"}}', '2023-06-26 20:38:07', '2023-06-26 20:38:07'),
(219, 'user', 'updated', 43, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$VX8bqupXBYmakxLBzhmkPuqs6XTs7AVFOAIgKqJH3F2dHQwuWjnx2\"}, \"attributes\": {\"password\": \"$2y$10$IlVr8.xvUG2zfiLUcgDbL.lYsKIMye1ZZaiTIcRUD0TG5eCk1lXnS\"}}', '2023-06-26 20:38:39', '2023-06-26 20:38:39'),
(220, 'user', 'updated', 43, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$IlVr8.xvUG2zfiLUcgDbL.lYsKIMye1ZZaiTIcRUD0TG5eCk1lXnS\"}, \"attributes\": {\"password\": \"$2y$10$qyR9We69dUSZpDNk2ClwgeOTsSTsu.BApB18pirnKZYpeSk2eJB..\"}}', '2023-06-26 20:53:35', '2023-06-26 20:53:35'),
(221, 'user', 'updated', 44, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$SJd8g7twGFFzqriurZ/.vO6iYnjTBzk9nsCpGtTdmQ5g.ahApoaqu\"}, \"attributes\": {\"password\": \"$2y$10$vC/Fuc3sbTQzg0GHU4DAY.14469Bq5UP0Fqp9Hfles4yE/gsjzudy\"}}', '2023-06-26 20:53:54', '2023-06-26 20:53:54'),
(222, 'user', 'updated', 45, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$sS/FI9m18eeFxxkcRLic5OdkJnQvk784IoTa9g8k3NUSO72UV3mZm\"}, \"attributes\": {\"password\": \"$2y$10$1oKzNWLY.pKYJMPpsv0jLueAPswZbmFF78Ltl6bF1cFuTuild8NQG\"}}', '2023-06-26 20:54:14', '2023-06-26 20:54:14'),
(223, 'user', 'updated', 45, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$1oKzNWLY.pKYJMPpsv0jLueAPswZbmFF78Ltl6bF1cFuTuild8NQG\"}, \"attributes\": {\"password\": \"$2y$10$D5RQZ53o3UXepos8G3j2P.eztRwoTZkQ1kkRbbqWc3fbnEggm6aGm\"}}', '2023-06-26 20:54:50', '2023-06-26 20:54:50'),
(224, 'user', 'updated', 46, 'App\\User', 1, 'App\\User', '{\"old\": {\"password\": \"$2y$10$/yUE1oc6138xlg9tHbrXC.M.IyIQk50jxfSmtvuRcNsXvemWIZdSa\"}, \"attributes\": {\"password\": \"$2y$10$q6d46XtFi70g9wt5sx9Tx.t8cyrJTMG.CXDPn6MPm8.8Cbk3daQJW\"}}', '2023-06-26 20:55:06', '2023-06-26 20:55:06'),
(225, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-06-26 22:20:32', '2023-06-26 22:20:32'),
(226, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-06-26 22:20:48', '2023-06-26 22:20:48'),
(227, 'user', 'updated', 29, 'App\\User', 29, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-06-26 22:24:36', '2023-06-26 22:24:36'),
(228, 'user', 'updated', 29, 'App\\User', 29, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-06-26 22:36:01', '2023-06-26 22:36:01'),
(229, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-07-04 19:00:10', '2023-07-04 19:00:10'),
(230, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-07-05 14:08:13', '2023-07-05 14:08:13'),
(231, 'user', 'updated', 4, 'App\\User', 4, 'App\\User', '{\"old\": [], \"attributes\": []}', '2023-07-05 14:08:43', '2023-07-05 14:08:43'),
(232, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-07-12 13:11:08', '2023-07-12 13:11:08'),
(233, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-07-12 13:11:49', '2023-07-12 13:11:49'),
(234, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-07-12 13:11:54', '2023-07-12 13:11:54'),
(235, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-07-17 09:30:43', '2023-07-17 09:30:43'),
(236, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-07-17 09:32:06', '2023-07-17 09:32:06'),
(237, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-07-18 18:47:32', '2023-07-18 18:47:32'),
(238, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-08-05 20:39:56', '2023-08-05 20:39:56'),
(239, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-08-26 12:55:38', '2023-08-26 12:55:38'),
(240, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-08-26 12:56:03', '2023-08-26 12:56:03'),
(241, 'user', 'updated', 4, 'App\\User', 4, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-08-26 12:58:41', '2023-08-26 12:58:41'),
(242, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-08-30 21:17:26', '2023-08-30 21:17:26'),
(243, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-08-30 21:17:34', '2023-08-30 21:17:34'),
(244, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-14 11:13:35', '2023-10-14 11:13:35'),
(245, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-14 11:48:36', '2023-10-14 11:48:36'),
(246, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-14 13:12:21', '2023-10-14 13:12:21'),
(247, 'settings', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-14 13:12:21', '2023-10-14 13:12:21'),
(248, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-10-17 22:26:36', '2023-10-17 22:26:36'),
(249, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-17 22:30:10', '2023-10-17 22:30:10'),
(250, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-17 22:30:15', '2023-10-17 22:30:15'),
(251, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 05:27:03', '2023-10-26 05:27:03'),
(252, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 08:14:13', '2023-10-26 08:14:13'),
(253, 'role', 'Edit', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 08:14:19', '2023-10-26 08:14:19'),
(254, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 08:14:38', '2023-10-26 08:14:38'),
(255, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 08:14:42', '2023-10-26 08:14:42'),
(256, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 08:15:03', '2023-10-26 08:15:03'),
(257, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 08:15:05', '2023-10-26 08:15:05'),
(258, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 08:15:14', '2023-10-26 08:15:14'),
(259, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-26 08:16:22', '2023-10-26 08:16:22'),
(260, 'user', 'created', 47, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"demo\",\"designation\":\"demo_bit\",\"email\":\"demo@gmail.com\",\"username\":\"demo\",\"password\":\"$2y$10$J.\\/P5lMXIZjM.2aw.eEEtuTMteX\\/MhgJKp5q6Xy22\\/pyf7T81zOk.\",\"phone_number\":\"01867090247\",\"profile_photo\":null,\"status\":1}}', '2023-10-28 12:06:54', '2023-10-28 12:06:54'),
(261, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-28 13:28:34', '2023-10-28 13:28:34'),
(262, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-28 13:28:44', '2023-10-28 13:28:44'),
(263, 'permission', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-10-28 13:28:49', '2023-10-28 13:28:49'),
(264, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-28 13:28:58', '2023-10-28 13:28:58'),
(265, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-10-28 13:29:03', '2023-10-28 13:29:03'),
(266, 'role', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-10-28 13:29:21', '2023-10-28 13:29:21'),
(267, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-10-30 11:32:50', '2023-10-30 11:32:50'),
(268, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-10-31 09:52:58', '2023-10-31 09:52:58'),
(269, 'user', 'created', 48, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"Demo\",\"designation\":\"Demo\",\"email\":\"deep@gmail.com\",\"username\":\"demo\",\"password\":\"$2y$10$xlJXH.u.MBailKsoezrZxOEpqIYG0\\/2D68\\/b3WgZ7EjHqidTtKsky\",\"phone_number\":\"018797998978\",\"profile_photo\":null,\"status\":1}}', '2023-10-31 10:04:37', '2023-10-31 10:04:37'),
(270, 'user', 'created', 49, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"5YV4DTuByF\",\"designation\":\"rfijviKUrx\",\"email\":\"mdncr@q0xq.com\",\"username\":\"KP9gOb1Nu0\",\"password\":\"$2y$10$8F.qkGu5UOusl86WA0YCQ.qiM16g9pZVKKN2dwntnQDUO5g8vIzt2\",\"phone_number\":\"4643\",\"profile_photo\":null,\"status\":1}}', '2023-10-31 11:09:42', '2023-10-31 11:09:42'),
(271, 'user', 'deleted', 47, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"demo\",\"designation\":\"demo_bit\",\"email\":\"demo@gmail.com\",\"username\":\"demo\",\"password\":\"$2y$10$J.\\/P5lMXIZjM.2aw.eEEtuTMteX\\/MhgJKp5q6Xy22\\/pyf7T81zOk.\",\"phone_number\":\"01867090247\",\"profile_photo\":null,\"status\":1}}', '2023-10-31 12:57:41', '2023-10-31 12:57:41'),
(272, 'user', 'created', 50, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"Demo Bit\",\"designation\":\"Demo Podobi\",\"email\":\"demo@gmail.com\",\"username\":\"demo\",\"password\":\"$2y$10$Ml9hz1DyKE9jd2mmtesowuw1NjkMAo4R9DHWEI6glih\\/V9ox0v7ty\",\"phone_number\":\"018797998978\",\"profile_photo\":null,\"status\":1}}', '2023-10-31 13:11:12', '2023-10-31 13:11:12'),
(273, 'user', 'deleted', 48, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"Demo\",\"designation\":\"Demo\",\"email\":\"deep@gmail.com\",\"username\":\"demo\",\"password\":\"$2y$10$xlJXH.u.MBailKsoezrZxOEpqIYG0\\/2D68\\/b3WgZ7EjHqidTtKsky\",\"phone_number\":\"018797998978\",\"profile_photo\":null,\"status\":1}}', '2023-10-31 13:11:33', '2023-10-31 13:11:33'),
(274, 'user', 'deleted', 49, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"5YV4DTuByF\",\"designation\":\"rfijviKUrx\",\"email\":\"mdncr@q0xq.com\",\"username\":\"KP9gOb1Nu0\",\"password\":\"$2y$10$8F.qkGu5UOusl86WA0YCQ.qiM16g9pZVKKN2dwntnQDUO5g8vIzt2\",\"phone_number\":\"4643\",\"profile_photo\":null,\"status\":1}}', '2023-10-31 13:11:40', '2023-10-31 13:11:40'),
(275, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:16:08', '2023-10-31 13:16:08'),
(276, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:16:17', '2023-10-31 13:16:17'),
(277, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:16:59', '2023-10-31 13:16:59'),
(278, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:17:04', '2023-10-31 13:17:04'),
(279, 'permission', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:17:10', '2023-10-31 13:17:10'),
(280, 'permission', 'create', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:17:10', '2023-10-31 13:17:10'),
(281, 'permission', 'created', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:17:49', '2023-10-31 13:17:49'),
(282, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:17:51', '2023-10-31 13:17:51'),
(283, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:17:56', '2023-10-31 13:17:56'),
(284, 'permission', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:19:47', '2023-10-31 13:19:47'),
(285, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:19:59', '2023-10-31 13:19:59'),
(286, 'role', 'Edit', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:20:54', '2023-10-31 13:20:54'),
(287, 'role', 'updated', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:21:06', '2023-10-31 13:21:06'),
(288, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:21:08', '2023-10-31 13:21:08'),
(289, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-10-31 13:21:15', '2023-10-31 13:21:15'),
(290, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:48:48', '2023-10-31 13:48:48'),
(291, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-10-31 13:49:00', '2023-10-31 13:49:00'),
(292, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-10-31 13:50:07', '2023-10-31 13:50:07'),
(293, 'user', 'created', 51, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"Demo Bit Again\",\"designation\":\"demo bit again\",\"email\":\"demoagain@gmail.com\",\"username\":\"demoagain\",\"password\":\"$2y$10$G.GM5sbmj.nQ8KSD5AYeEuh9AKbBMh0\\/2X2\\/CmhOAfE5.snKzoWmG\",\"phone_number\":\"01867090247\",\"profile_photo\":null,\"status\":1}}', '2023-10-31 14:29:39', '2023-10-31 14:29:39'),
(294, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-11-01 09:12:47', '2023-11-01 09:12:47'),
(295, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-11-01 09:18:31', '2023-11-01 09:18:31'),
(296, 'user', 'created', 52, 'App\\User', 51, 'App\\User', '{\"attributes\":{\"name\":\"Ertugrul\",\"designation\":\"Beyim\",\"email\":\"ertugrul@gmail.com\",\"username\":\"ertugrul\",\"password\":\"$2y$10$k1pUQZ\\/xJX..gbq4l.\\/theYOUi7dKk4bLSlQRMEwNiZC1niDwIpwq\",\"phone_number\":\"018797998978\",\"profile_photo\":null,\"status\":1,\"range_id\":14}}', '2023-11-01 09:31:34', '2023-11-01 09:31:34'),
(297, 'role', 'view', NULL, NULL, 1, 'App\\User', '[]', '2023-11-07 17:08:53', '2023-11-07 17:08:53'),
(298, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-11-07 17:24:38', '2023-11-07 17:24:38'),
(299, 'permission', 'view', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 19:59:38', '2023-11-07 19:59:38'),
(300, 'role', 'view', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 19:59:41', '2023-11-07 19:59:41'),
(301, 'settings', 'view', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 19:59:48', '2023-11-07 19:59:48'),
(302, 'permission', 'view', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 20:00:07', '2023-11-07 20:00:07'),
(303, 'permission', 'view', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 20:00:12', '2023-11-07 20:00:12'),
(304, 'role', 'view', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 20:00:16', '2023-11-07 20:00:16'),
(305, 'role', 'create', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 20:00:32', '2023-11-07 20:00:32'),
(306, 'role', 'created', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 20:02:34', '2023-11-07 20:02:34'),
(307, 'role', 'view', NULL, NULL, 50, 'App\\User', '[]', '2023-11-07 20:02:36', '2023-11-07 20:02:36'),
(308, 'user', 'created', 53, 'App\\User', 1, 'App\\User', '{\"attributes\":{\"name\":\"demosfpc\",\"designation\":\"sfpc\",\"email\":\"sfpc@gmail.com\",\"username\":\"demosfpc\",\"password\":\"$2y$10$QB\\/t9hfghLvpcWskF\\/gWMetAiVEFQrcc1IMRAkFRIcww09MlldrE6\",\"phone_number\":\"01867090247\",\"profile_photo\":null,\"status\":1,\"range_id\":13}}', '2023-11-19 11:43:37', '2023-11-19 11:43:37'),
(309, 'user', 'updated', 1, 'App\\User', 1, 'App\\User', '{\"attributes\":[],\"old\":[]}', '2023-11-19 11:44:34', '2023-11-19 11:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `id` bigint UNSIGNED NOT NULL,
  `garden_id` bigint UNSIGNED NOT NULL,
  `voter_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`id`, `garden_id`, `voter_id`, `mobile`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '321342', 'dsf', '2023-10-21 09:16:46', '2023-10-21 09:16:46', NULL),
(2, 1, NULL, '321342', 'dsf', '2023-10-28 07:19:20', '2023-10-28 07:19:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bits`
--

CREATE TABLE `bits` (
  `id` bigint UNSIGNED NOT NULL,
  `range_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_english` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_head_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bits`
--

INSERT INTO `bits` (`id`, `range_id`, `name`, `name_english`, `office_head_designation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 'demo_bit', 'demo_bit', 'Demo_designation', '2023-10-19 10:39:43', '2023-10-28 07:20:07', NULL),
(8, 13, 'Demo Bit', 'Demo Bit', 'Demo Podobi', '2023-10-31 13:09:08', '2023-10-31 13:09:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'etfsfds', 1, 1, '2023-04-08 06:51:18', '2023-04-12 12:50:58'),
(2, 'aut', 1, 2, '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(3, 'nulla', 1, 1, '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(4, 'quo', 1, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(5, 'odit', 1, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(6, 'TestCat', 1, 1, '2023-04-08 09:36:45', '2023-04-08 09:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dsfdfs', '2023-04-12 11:43:43', '2023-04-12 11:43:43', NULL),
(2, 'zxcxzcxzczcxz', '2023-04-12 11:51:09', '2023-04-12 11:51:09', NULL),
(3, 'sdfsdfdsfdsf', '2023-04-12 11:51:14', '2023-04-12 11:51:14', NULL),
(4, '.htaccess', '2023-04-13 07:34:42', '2023-04-13 07:34:42', NULL),
(5, 'Rafusoft', '2023-05-09 12:56:32', '2023-05-09 12:56:32', NULL),
(6, 'Rafusoft', '2023-05-10 09:55:11', '2023-05-10 09:55:11', NULL),
(7, 'Hello', '2023-10-26 08:48:15', '2023-10-26 08:48:15', NULL),
(8, 'Demo Country', '2023-10-26 13:51:40', '2023-10-26 13:51:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country_divisions`
--

CREATE TABLE `country_divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_divisions`
--

INSERT INTO `country_divisions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Marketing', '2023-10-26 13:49:47', '2023-10-26 13:50:47', NULL),
(13, 'Demo Country Division', '2023-10-26 13:51:23', '2023-10-26 13:51:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `country_division_id` bigint UNSIGNED NOT NULL,
  `circle_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `country_division_id`, `circle_id`, `name`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 11, 1, 'দিনাজপুর', 1, NULL, '2023-01-12 05:12:12', '2023-01-12 05:32:57'),
(8, 11, 1, 'ঠাকুরগাঁও', 1, NULL, '2023-01-12 05:51:43', '2023-01-12 05:51:43'),
(9, 11, 1, 'পঞ্চগড়', 1, NULL, '2023-01-12 05:52:47', '2023-01-12 05:52:47'),
(21, 11, 1, 'hellott', NULL, NULL, '2023-10-21 05:48:14', '2023-10-21 06:17:54'),
(22, 13, 1, 'Demo district', NULL, NULL, '2023-10-26 13:52:31', '2023-10-26 13:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forest_types`
--

CREATE TABLE `forest_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forest_types`
--

INSERT INTO `forest_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'স্ট্রীপ', '2023-05-21 22:05:28', '2023-05-21 22:05:28'),
(3, 'কৃষিবন', '2023-05-21 22:06:39', '2023-05-21 22:06:39'),
(4, 'উডলট এবং ঔষধি প্রজাতির বনায়ন', '2023-06-27 06:16:03', '2023-10-26 07:40:49'),
(5, 'বিরল ও বিপদাপন্ন প্রজাতির বনায়ন', '2023-06-26 18:00:00', NULL),
(6, 'এনরিচমেন্ট বনায়ন', '2023-06-26 18:00:00', NULL),
(7, 'দ্রুত বর্ধনশীল প্রজাতির মিশ্র বনায়ন', '2023-06-26 18:00:00', NULL),
(8, 'স্ট্যান্ড ইমপ্রভমেন্ট', '2023-06-26 18:00:00', NULL),
(9, 'শাল কপিচ ব্যবস্থাপনা', '2023-06-26 18:00:00', NULL),
(10, 'বিরল ও বিপদাপন্ন প্রজাতির বনায়ন', '2023-06-26 18:00:00', NULL),
(11, 'এনটিএফপি আন্ডার প্ল্যানটেশন', '2023-06-26 18:00:00', NULL),
(13, 'Demo Forest Type', '2023-10-26 07:45:21', '2023-10-26 07:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `gardens`
--

CREATE TABLE `gardens` (
  `id` bigint UNSIGNED NOT NULL,
  `garden_information_id` bigint DEFAULT NULL,
  `range_id` int DEFAULT NULL,
  `bit_id` int DEFAULT NULL,
  `sfpc_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `creation_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotation` tinyint DEFAULT NULL,
  `cut_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harvested_amount` decimal(10,2) DEFAULT NULL,
  `land_owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beneficiary_male` smallint DEFAULT NULL,
  `beneficiary_female` smallint DEFAULT NULL,
  `union_parishad_id` bigint DEFAULT NULL,
  `expiration_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garden_area` decimal(10,2) DEFAULT NULL,
  `garden_area_km` decimal(10,2) DEFAULT NULL,
  `forest_revenew` decimal(10,2) DEFAULT NULL,
  `tff_profit_share` decimal(10,2) DEFAULT NULL,
  `beneficiarys_profit_share` decimal(10,2) DEFAULT NULL,
  `union_parisadh_profit_share` decimal(10,2) DEFAULT NULL,
  `nursery_expense` decimal(10,2) NOT NULL,
  `creation_cost` decimal(10,2) NOT NULL,
  `contract_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_attachment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `edit_request` enum('none','requested','permitted','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forest_type_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garden_size` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gardens`
--

INSERT INTO `gardens` (`id`, `garden_information_id`, `range_id`, `bit_id`, `sfpc_id`, `project_id`, `creation_year`, `rotation`, `cut_year`, `harvested_amount`, `land_owner_name`, `beneficiary_male`, `beneficiary_female`, `union_parishad_id`, `expiration_year`, `garden_area`, `garden_area_km`, `forest_revenew`, `tff_profit_share`, `beneficiarys_profit_share`, `union_parisadh_profit_share`, `nursery_expense`, `creation_cost`, `contract_attachment`, `agreement_attachment`, `approved_by`, `edit_request`, `forest_type_id`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `location`, `garden_size`) VALUES
(5, NULL, 13, 50, NULL, 4, '2000-2001', 1, '2000-2001', NULL, NULL, 20, 20, NULL, '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, '100.00', '100.00', NULL, '1698830130.png', NULL, NULL, 13, 50, '2023-11-01 09:15:30', '2023-11-01 09:15:30', NULL, 'fdsg', 0),
(6, NULL, 13, 50, NULL, 4, '2001-2002', 1, '2000-2001', NULL, NULL, 50, 50, NULL, '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, '50.00', '50.00', NULL, '', NULL, NULL, 13, 50, '2023-11-20 21:48:01', '2023-11-20 21:48:01', NULL, 'asdf', 50),
(7, NULL, 13, 52, NULL, 4, '2000-2001', 1, '2000-2001', NULL, NULL, 10, 10, NULL, '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, '60.00', '70.00', NULL, '', NULL, NULL, 13, 50, '2023-12-02 16:20:18', '2023-12-02 16:20:18', NULL, NULL, 60),
(8, NULL, 13, 52, NULL, 4, '2000-2001', 1, '2000-2001', NULL, NULL, 10, 10, NULL, '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, '60.00', '70.00', NULL, '', NULL, NULL, 13, 50, '2023-12-02 16:23:36', '2023-12-02 16:23:36', NULL, NULL, 60),
(9, NULL, 13, 52, NULL, 4, '2000-2001', 1, '2000-2001', NULL, NULL, 10, 10, NULL, '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, '60.00', '70.00', NULL, '', NULL, NULL, 13, 50, '2023-12-02 16:25:24', '2023-12-02 16:25:24', NULL, NULL, 60),
(10, NULL, 13, 52, NULL, 4, '2000-2001', 1, '2000-2001', NULL, NULL, 10, 10, NULL, '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, '60.00', '70.00', NULL, '', NULL, NULL, 13, 50, '2023-12-02 16:28:36', '2023-12-02 16:28:36', NULL, NULL, 60),
(11, NULL, 13, 52, NULL, 4, '2000-2001', 1, '2000-2001', NULL, NULL, 10, 10, NULL, '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, '60.00', '70.00', NULL, '', NULL, NULL, 13, 50, '2023-12-02 16:32:34', '2023-12-02 16:32:34', NULL, NULL, 60),
(12, NULL, 13, 52, NULL, 4, '2000-2001', 1, '2000-2001', NULL, NULL, 22, 22, NULL, '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, '44.00', '34.00', NULL, '', NULL, NULL, 13, 50, '2023-12-02 16:38:09', '2023-12-02 16:38:09', NULL, NULL, 60),
(13, NULL, 13, 50, NULL, 4, '2000-2001', 2, '2000-2001', NULL, NULL, 12, 12, NULL, '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, '45.00', '456.00', NULL, '', NULL, NULL, 13, 50, '2023-12-03 02:39:34', '2023-12-03 02:39:34', NULL, NULL, 60);

-- --------------------------------------------------------

--
-- Table structure for table `garden_bikritos`
--

CREATE TABLE `garden_bikritos` (
  `id` bigint UNSIGNED NOT NULL,
  `garden_id` int NOT NULL,
  `bit_id` int DEFAULT NULL,
  `sfpc_id` int DEFAULT NULL,
  `bikrito_bagan_shon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dorpotro_biggopti_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bikrito_date` date NOT NULL,
  `total_lot_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garden_bikritos`
--

INSERT INTO `garden_bikritos` (`id`, `garden_id`, `bit_id`, `sfpc_id`, `bikrito_bagan_shon`, `dorpotro_biggopti_no`, `bikrito_date`, `total_lot_count`, `created_at`, `updated_at`) VALUES
(1, 6, NULL, NULL, '2008-2009', '123123', '2023-11-28', 60, '2023-11-27 19:40:51', '2023-11-27 19:40:51'),
(2, 13, NULL, NULL, '2000-2001', '777', '2023-12-02', 10, '2023-12-03 02:40:11', '2023-12-03 02:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `garden_information`
--

CREATE TABLE `garden_information` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` smallint NOT NULL,
  `range_id` smallint UNSIGNED NOT NULL,
  `thana_id` smallint UNSIGNED NOT NULL,
  `forest_type_id` smallint UNSIGNED NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `garden_area_hectare` decimal(10,2) DEFAULT NULL,
  `garden_area_km` decimal(10,2) DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garden_information`
--

INSERT INTO `garden_information` (`id`, `district_id`, `range_id`, `thana_id`, `forest_type_id`, `details`, `garden_area_hectare`, `garden_area_km`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 4, 2, 3, 'sfssddfdsfdsfs', '8080.00', NULL, 1, '2023-07-07 10:55:29', '2023-07-07 10:55:29', NULL),
(2, 7, 4, 7, 1, 'ssafsdaf', NULL, '1020.00', 1, '2023-07-07 13:04:06', '2023-07-07 13:04:06', NULL),
(3, 7, 4, 1, 3, 'dsgfdgsdgdss', '1020.00', NULL, 1, '2023-07-07 17:44:59', '2023-07-07 17:44:59', NULL),
(5, 7, 4, 1, 1, 'dfdffs', NULL, '1020.00', 1, '2023-07-08 18:20:34', '2023-07-08 18:20:34', NULL),
(6, 22, 1, 24, 13, 'demo desc bagan info', '100.00', NULL, 1, '2023-10-28 08:06:59', '2023-10-28 08:06:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `garden_in_unions`
--

CREATE TABLE `garden_in_unions` (
  `id` bigint UNSIGNED NOT NULL,
  `garden_id` bigint UNSIGNED NOT NULL,
  `union_parishad_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garden_in_unions`
--

INSERT INTO `garden_in_unions` (`id`, `garden_id`, `union_parishad_id`, `created_at`, `updated_at`) VALUES
(1, 1, 11, NULL, NULL),
(2, 1, 12, NULL, NULL),
(3, 1, 13, NULL, NULL),
(4, 1, 14, NULL, NULL),
(5, 1, 15, NULL, NULL),
(6, 1, 16, NULL, NULL),
(7, 1, 17, NULL, NULL),
(8, 1, 18, NULL, NULL),
(9, 1, 19, NULL, NULL),
(10, 1, 20, NULL, NULL),
(11, 1, 21, NULL, NULL),
(12, 2, 49, NULL, NULL),
(13, 2, 50, NULL, NULL),
(14, 2, 51, NULL, NULL),
(15, 3, 1, NULL, NULL),
(16, 3, 2, NULL, NULL),
(17, 3, 3, NULL, NULL),
(18, 3, 4, NULL, NULL),
(19, 3, 5, NULL, NULL),
(20, 3, 6, NULL, NULL),
(21, 3, 7, NULL, NULL),
(22, 3, 8, NULL, NULL),
(23, 3, 9, NULL, NULL),
(24, 3, 10, NULL, NULL),
(25, 4, 7, NULL, NULL),
(26, 4, 8, NULL, NULL),
(27, 4, 9, NULL, NULL),
(28, 4, 10, NULL, NULL),
(29, 5, 8, NULL, NULL),
(30, 5, 9, NULL, NULL),
(31, 5, 10, NULL, NULL),
(32, 6, 200, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `garden_types`
--

CREATE TABLE `garden_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `forest_revenew` decimal(10,2) NOT NULL,
  `tff_profit_share` decimal(10,2) NOT NULL,
  `beneficiarys_profit_share` decimal(10,2) NOT NULL,
  `union_parisadh_profit_share` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garden_types`
--

INSERT INTO `garden_types` (`id`, `name`, `forest_revenew`, `tff_profit_share`, `beneficiarys_profit_share`, `union_parisadh_profit_share`, `created_at`, `updated_at`) VALUES
(1, 'Test Garden Type', '200.00', '200.00', '200.00', '200.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` bigint UNSIGNED NOT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `party_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'বন অধিদপ্তর', 1, '2023-11-27 23:12:14', '2023-11-27 23:12:14'),
(2, 2, 'সড়ক ও জনপথ', 1, '2023-11-27 23:12:55', '2023-11-27 23:12:55'),
(3, 2, 'পানি উন্নয়ন বোর্ড', 1, '2023-11-27 23:12:55', '2023-11-27 23:12:55'),
(4, 2, 'বাংলাদেশ রেলওয়ে', 1, '2023-11-27 23:15:58', '2023-11-27 23:15:58'),
(5, 2, 'স্থানীয় প্রকৌশল অধিদপ্তর', 1, '2023-11-27 23:15:58', '2023-11-27 23:15:58'),
(6, 2, 'জেলা পরিষদ', 1, '2023-11-27 23:15:58', '2023-11-27 23:15:58'),
(7, 2, 'জেলা প্রশাসন', 1, '2023-11-27 23:16:56', '2023-11-27 23:16:56'),
(8, 3, 'চুক্তিনামা অনুযায়ী সংশ্লিষ্ট উপকারভোগীগণ', 1, '2023-11-29 09:24:54', '2023-11-29 09:24:54'),
(9, 5, 'সংশ্লিষ্ট বৃক্ষরোপণ তহবিল ব্যবস্থাপনা কমিটি', 1, '2023-11-29 09:25:52', '2023-11-29 09:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `land_owners`
--

CREATE TABLE `land_owners` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `land_owners`
--

INSERT INTO `land_owners` (`id`, `name`, `address`, `phone`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Marketing', 'Chittagong,Raozan,dewanpur', '01878090900', '6 o mothsdafg', '2023-10-21 08:24:05', '2023-10-21 08:25:06', NULL),
(3, 'Demo Land Owner', 'Demo address', '01867090247', 'demo desc', '2023-10-28 07:18:10', '2023-10-28 07:18:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_16_085749_create_settings_table', 1),
(5, '2020_06_16_094101_create_activity_log_table', 1),
(6, '2020_06_16_094554_create_permission_tables', 1),
(7, '2020_06_16_100611_add_profile_fields_to_users_table', 1),
(8, '2020_07_10_153635_create_categories_table', 1),
(9, '2020_07_10_153700_create_posts_table', 1),
(10, '2022_12_18_082935_create_country_divisions_table', 2),
(11, '2022_12_18_083120_create_districts_table', 2),
(12, '2022_12_18_100100_create_ranges_table', 2),
(13, '2022_12_18_101600_create_projects_table', 2),
(14, '2022_12_18_101855_create_sfpcs_table', 2),
(15, '2022_12_18_102621_create_garden_types_table', 2),
(16, '2022_12_18_104407_create_land_owners_table', 2),
(17, '2022_12_18_113244_create_union_parishads_table', 2),
(18, '2022_12_18_114136_create_gardens_table', 2),
(19, '2022_12_18_114616_create_beneficiaries_table', 2),
(20, '2022_12_18_115803_add_sfpc_id_to_users_table', 2),
(21, '2022_12_18_120141_create_wood_lots_table', 2),
(22, '2023_01_14_063828_create_countries_table', 3),
(24, '2023_05_20_233754_create_wood_lot_payment_histories_table', 4),
(25, '2023_05_22_032758_create_forest_types_table', 5),
(26, '2023_05_23_121640_create_tree_species_information_table', 6),
(27, '2023_06_27_183616_create_range_in_districts_table', 7),
(29, '2023_06_27_185014_create_range_thanas_table', 8),
(33, '2023_07_04_232453_create_garden_information_table', 9),
(34, '2023_07_07_001510_create_parties_table', 10),
(35, '2023_07_07_002525_create_institutes_table', 11),
(36, '2023_07_07_155528_create_garden_in_unions_table', 12),
(37, '2023_07_08_011834_create_party_in_gardens_table', 13),
(38, '2023_05_20_233343_create_wood_lot_payments_table', 14),
(39, '2023_10_30_193145_create_range_in_unions_table', 14),
(40, '2023_10_30_200246_add_district_id_to_ranges_table', 15),
(41, '2023_11_23_054343_create_garden_bikritos_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1),
(3, 'App\\User', 1),
(4, 'App\\User', 1),
(5, 'App\\User', 1),
(6, 'App\\User', 1),
(7, 'App\\User', 1),
(8, 'App\\User', 1),
(9, 'App\\User', 1),
(10, 'App\\User', 1),
(11, 'App\\User', 1),
(12, 'App\\User', 1),
(13, 'App\\User', 1),
(14, 'App\\User', 1),
(15, 'App\\User', 1),
(16, 'App\\User', 1),
(17, 'App\\User', 1),
(18, 'App\\User', 1),
(19, 'App\\User', 1),
(20, 'App\\User', 1),
(21, 'App\\User', 1),
(22, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(1, 'App\\User', 3),
(3, 'App\\User', 4),
(3, 'App\\User', 5),
(3, 'App\\User', 6),
(3, 'App\\User', 7),
(3, 'App\\User', 8),
(6, 'App\\User', 29),
(6, 'App\\User', 30),
(6, 'App\\User', 31),
(6, 'App\\User', 32),
(6, 'App\\User', 33),
(6, 'App\\User', 34),
(6, 'App\\User', 35),
(6, 'App\\User', 36),
(6, 'App\\User', 37),
(6, 'App\\User', 38),
(6, 'App\\User', 39),
(6, 'App\\User', 40),
(6, 'App\\User', 41),
(6, 'App\\User', 42),
(6, 'App\\User', 43),
(6, 'App\\User', 44),
(6, 'App\\User', 45),
(6, 'App\\User', 46),
(6, 'App\\User', 50),
(6, 'App\\User', 51),
(6, 'App\\User', 52),
(8, 'App\\User', 53);

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'বন অধিদপ্তর', 1, '2023-07-06 20:04:27', NULL),
(2, 'ভূমি মালিক সংস্থা', 1, '2023-07-06 20:04:27', NULL),
(3, 'উপকারভোগীগণ', 1, '2023-07-06 20:04:27', NULL),
(4, 'স্থানীয় ইউনিয়ন পরিষদ', 1, '2023-07-06 20:04:27', NULL),
(5, 'বৃক্ষরোপণ তহবিল', 1, '2023-07-06 20:04:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `party_in_gardens`
--

CREATE TABLE `party_in_gardens` (
  `id` bigint UNSIGNED NOT NULL,
  `garden_id` bigint UNSIGNED NOT NULL,
  `party_id` int NOT NULL,
  `institute_id` int NOT NULL,
  `percentage` tinyint NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `party_in_gardens`
--

INSERT INTO `party_in_gardens` (`id`, `garden_id`, `party_id`, `institute_id`, `percentage`, `comment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(21, 6, 1, 1, 45, '', NULL, NULL, NULL),
(22, 6, 4, 200, 50, '', NULL, NULL, NULL),
(23, 6, 5, 9, 5, '', NULL, NULL, NULL),
(24, 13, 1, 1, 10, '', NULL, NULL, NULL),
(25, 13, 2, 4, 10, '', NULL, NULL, NULL),
(26, 13, 2, 3, 10, '', NULL, NULL, NULL),
(27, 13, 2, 8, 10, '', NULL, NULL, NULL),
(29, 13, 5, 9, 50, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'update-settings', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(2, 'view-user', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(3, 'create-user', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(4, 'update-user', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(5, 'destroy-user', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(6, 'view-role', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(7, 'view-permission', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(8, 'create-role', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(9, 'create-permission', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(10, 'update-role', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(11, 'update-permission', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(12, 'destroy-role', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(13, 'destroy-permission', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(14, 'view-activity-log', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(15, 'view-category', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(16, 'create-category', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(17, 'update-category', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(18, 'destroy-category', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(19, 'view-post', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(20, 'create-post', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(21, 'update-post', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(22, 'destroy-post', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(23, 'create-garden', 'web', '2023-10-31 13:17:49', '2023-10-31 13:17:49'),
(24, 'view-garden', 'web', '2023-10-31 13:17:50', '2023-10-31 13:17:50'),
(25, 'edit-garden', 'web', '2023-10-31 13:17:50', '2023-10-31 13:17:50'),
(26, 'delete-garden', 'web', '2023-10-31 13:17:50', '2023-10-31 13:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_body`, `featured_image`, `status`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Quaerat non et et consequatur tempora.', 'Quia soluta quam perferendis ab cum. Enim quae quo ullam harum exercitationem aut delectus. Consequatur necessitatibus voluptatem exercitationem et. Ut aspernatur voluptatem eum in voluptatem. Blanditiis et quia corporis ut ab.', 'https://lorempixel.com/840/580/?52981', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(2, 'Rerum vel porro ea dolorem.', 'Rem qui inventore blanditiis aut quasi. Rerum nihil possimus est quas nostrum.', 'https://lorempixel.com/840/580/?75636', 1, 3, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(3, 'Quia est cupiditate beatae autem et qui nobis.', 'Voluptas reiciendis ratione velit nostrum. Deleniti laboriosam sint provident nam consequatur sint aliquid. Quia sed rem labore odit dolor beatae sunt. Dolorem consequatur dignissimos nobis praesentium perspiciatis.', 'https://lorempixel.com/840/580/?52291', 1, 2, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(4, 'Labore et architecto sequi culpa sed non.', 'Fuga mollitia quaerat deleniti eveniet quia. Quis amet in enim enim omnis. Molestias vel ex ut quo soluta quam. Consequatur quia dignissimos ut ipsa laudantium fugiat.', 'https://lorempixel.com/840/580/?97980', 1, 2, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(5, 'Labore unde amet et beatae delectus.', 'Et officiis eos quia aut maiores a magni in. Odit quos quisquam beatae sint quisquam.', 'https://lorempixel.com/840/580/?29798', 1, 1, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(6, 'Consequuntur vel et consectetur error neque ut esse quo.', 'Dolore ut aut numquam dolorem. Consequatur sint reprehenderit nisi est est rerum ut. Eum voluptas iste et repellendus repudiandae in. Tempore ut libero qui expedita architecto nisi voluptate est.', 'https://lorempixel.com/840/580/?40774', 1, 1, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(7, 'Nihil iure voluptates totam qui.', 'Occaecati enim est veritatis repellat et nostrum voluptas. Omnis accusantium culpa velit hic quibusdam repudiandae velit. Voluptatem deleniti fugit vel maxime. Earum nihil est voluptatem voluptates doloremque commodi.', 'https://lorempixel.com/840/580/?85997', 1, 4, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(8, 'Veniam laborum repudiandae quia fugiat fugiat.', 'Ut dicta officia tempore necessitatibus. Totam quia suscipit provident quibusdam corporis earum. Odio nulla ducimus eos recusandae odio. Qui est ipsam voluptatem temporibus nihil.', 'https://lorempixel.com/840/580/?30549', 1, 4, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(9, 'Ad voluptatem facere tempore beatae debitis quae.', 'Et eos vero accusantium sit voluptatem. Et ducimus pariatur est excepturi quam. Voluptatem provident quis magni explicabo voluptatem cum. Sapiente error et ea dolorem ex nesciunt.', 'https://lorempixel.com/840/580/?23103', 1, 1, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(10, 'Voluptas consequatur numquam optio eum ut.', 'Reprehenderit consequatur ipsam vel nisi quisquam esse recusandae. Voluptatem enim quae esse cupiditate suscipit rerum dolore. Voluptates occaecati sed id vitae necessitatibus.', 'https://lorempixel.com/840/580/?12168', 1, 4, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(11, 'Quisquam vitae aperiam et in.', 'Vel quae suscipit enim aut sint dolorem. Repellat quia minus non debitis ut esse est tenetur. Temporibus ut libero eos architecto sunt. Modi numquam totam et et.', 'https://lorempixel.com/840/580/?55089', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(12, 'Distinctio minima vel iusto qui inventore qui.', 'Rerum inventore non ea quidem nisi voluptate nihil. Voluptatum dolorum voluptatem nam corrupti aut.', 'https://lorempixel.com/840/580/?47872', 1, 4, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(13, 'Voluptas saepe ut iste quisquam.', 'Natus dolor assumenda ut. Culpa quia pariatur molestias ut id non unde. Quidem unde aut repellat. Aut facere alias deserunt quasi quasi voluptate. Id perferendis quam velit eos sint.', 'https://lorempixel.com/840/580/?70273', 1, 5, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(14, 'Velit et libero ducimus vel.', 'Adipisci qui hic dolor eius. Amet facilis nihil porro possimus.', 'https://lorempixel.com/840/580/?93494', 1, 3, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(15, 'Aut eum distinctio quod dignissimos.', 'Repellat doloremque enim quas amet qui qui illum. Sit modi nobis rerum doloribus architecto. Occaecati voluptatem facere explicabo iure enim et.', 'https://lorempixel.com/840/580/?88777', 1, 3, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(16, 'Reiciendis dignissimos nemo et sint et non sit.', 'Unde atque et in facilis consequatur illo. Iste culpa voluptas dolorem.', 'https://lorempixel.com/840/580/?64507', 1, 2, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(17, 'Rem id in quod aspernatur sit.', 'Unde qui voluptatem voluptatem est nam explicabo dolorem doloribus. Minima nulla cum aut beatae. Voluptas rem optio voluptatibus ex ut aspernatur aut.', 'https://lorempixel.com/840/580/?32302', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(18, 'Dolor sint magni est enim consequatur tempora.', 'Ipsa perferendis voluptatem officia vero. Qui atque itaque nobis et voluptas. Minus minus quos suscipit. Id necessitatibus sunt quis est. Hic explicabo nisi explicabo aut exercitationem nobis.', 'https://lorempixel.com/840/580/?86334', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(19, 'Enim consequuntur ut non magni sed eaque tenetur.', 'Nihil esse similique et optio. Animi quis natus distinctio aperiam consequatur. Sunt necessitatibus voluptatibus labore voluptatem. Earum vero et iste quidem.', 'https://lorempixel.com/840/580/?42453', 1, 4, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(20, 'Eos eveniet perspiciatis voluptas illo qui dignissimos et sequi.', 'Et sunt doloremque aliquam ratione atque atque. Tempore iure fuga ea quod dolore rerum. Eos et tenetur dolores. Modi totam fuga repellendus optio aut.', 'https://lorempixel.com/840/580/?16308', 1, 1, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(21, 'Voluptas animi illum et distinctio.', 'Aliquid alias sunt rerum. Veritatis quia consequuntur inventore quis excepturi ad eaque. Ut mollitia assumenda neque voluptas autem. Tempore nobis necessitatibus deserunt quas itaque eligendi.', 'https://lorempixel.com/840/580/?68856', 1, 3, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(22, 'Pariatur provident in et quidem.', 'Est delectus atque animi aut velit. In nostrum vitae illo rerum a eligendi et. Saepe architecto fugit et.', 'https://lorempixel.com/840/580/?38001', 1, 4, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(23, 'Consequatur distinctio necessitatibus est culpa illo eaque.', 'Id ut voluptatibus ut eligendi voluptatem repellendus illo. Est sit doloremque voluptas illo magni beatae. Corporis qui voluptates quam nobis accusantium.', 'https://lorempixel.com/840/580/?50052', 1, 2, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(24, 'Corporis est nisi error eum sit qui nulla.', 'Eius et nulla laborum ex voluptates unde natus delectus. Ut saepe explicabo dolore nam magni perferendis voluptatem asperiores. Facilis velit sed dicta enim amet.', 'https://lorempixel.com/840/580/?50830', 1, 1, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(25, 'Ut ut et rerum eligendi nostrum possimus et.', 'Eveniet a molestiae asperiores optio id. Sapiente et harum cumque aut et. Dolore quasi beatae sed fugiat. Commodi quae similique quis neque aut dolores odio.', 'https://lorempixel.com/840/580/?30520', 1, 2, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(26, 'Aut voluptatem nemo laudantium corporis et aliquid similique.', 'Voluptatem aut odit inventore eligendi voluptas autem quos. Veniam porro voluptatem impedit unde. Eius consequatur expedita doloremque qui maiores qui.', 'https://lorempixel.com/840/580/?39567', 1, 1, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(27, 'Rerum architecto similique porro tenetur.', 'Iste ut ut vel sunt. Dolor ut excepturi nihil architecto enim ut libero. Consequatur ut dolores quia in non architecto fugiat alias. Ad earum est aut dolores molestiae.', 'https://lorempixel.com/840/580/?68341', 1, 3, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(28, 'Illo dolores repellendus hic numquam ipsum.', 'Et laborum ut ut nihil quisquam placeat expedita quia. Omnis rerum quod sit inventore veniam. Quaerat atque earum veritatis voluptatem. Ut sit perspiciatis excepturi non tenetur magni impedit.', 'https://lorempixel.com/840/580/?73270', 1, 1, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(29, 'Culpa facilis consequatur doloribus possimus ipsa ut impedit.', 'Nesciunt qui officia ea voluptatem sed. Eos id dolor incidunt est qui. Quas explicabo dolor voluptas molestiae voluptates. Inventore provident tenetur error numquam quasi est nobis.', 'https://lorempixel.com/840/580/?34776', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(30, 'Sint inventore natus dolor nulla.', 'Nemo ut et quo nobis. Iure delectus aut molestiae quas saepe. Est tempore sed eos ut.', 'https://lorempixel.com/840/580/?17884', 1, 4, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(31, 'Aut blanditiis numquam perspiciatis neque nulla dolor labore.', 'Aut laborum libero voluptate qui quis. Neque recusandae voluptatem molestiae eum et consequatur. Voluptatem vel praesentium natus accusantium cumque aut rerum. Placeat suscipit ad pariatur et occaecati non laudantium quae.', 'https://lorempixel.com/840/580/?14298', 1, 2, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(32, 'Cumque ex possimus nesciunt sunt iste.', 'Ratione eum quae odio excepturi vero eum cupiditate. Ut ab modi earum maiores. Molestias quidem minima accusantium porro eos. In exercitationem beatae quam sunt harum.', 'https://lorempixel.com/840/580/?38559', 1, 1, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(33, 'In amet voluptatem ex nam qui.', 'Distinctio reprehenderit cupiditate cupiditate perspiciatis. Culpa ut qui vel rerum qui. Perferendis at aut molestias doloribus rem iste non quibusdam.', 'https://lorempixel.com/840/580/?68724', 1, 2, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(34, 'Ut voluptatem qui quis eius odit et.', 'Ab hic facere et. In eos corporis qui nihil. Recusandae qui fuga occaecati exercitationem quidem repellendus sunt. Recusandae eveniet et tenetur cum pariatur. Et est unde aperiam ducimus.', 'https://lorempixel.com/840/580/?19872', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(35, 'Eligendi vero voluptatem rerum odio.', 'Soluta nesciunt unde non aut qui suscipit. Ab ex error et aliquid voluptas. Consequuntur aspernatur repellendus quasi architecto quasi magnam qui quos.', 'https://lorempixel.com/840/580/?64586', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(36, 'Quo rem sed soluta eum temporibus.', 'Corporis iusto inventore repudiandae fuga voluptatibus. Atque dolor et facere doloribus qui. Tempora aut quibusdam consequatur rem libero consequatur. Est veritatis est numquam amet quibusdam voluptas.', 'https://lorempixel.com/840/580/?53387', 1, 3, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(37, 'Harum iste aperiam illum labore earum ab.', 'Corporis delectus dolor eius in. Qui labore qui dignissimos praesentium velit veritatis. Ducimus molestias atque eum voluptatem. Quaerat amet explicabo enim distinctio quisquam cumque.', 'https://lorempixel.com/840/580/?71546', 1, 5, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(38, 'Quo fugit pariatur doloribus modi optio sit.', 'Quisquam incidunt maiores est mollitia. Aut omnis reiciendis ut consequatur. Id non veniam voluptate qui rerum hic quia.', 'https://lorempixel.com/840/580/?33771', 1, 3, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(39, 'Cum doloribus corporis nihil et eos deleniti.', 'Facilis occaecati nihil sed aspernatur vel iusto. Dolorem ut hic possimus velit consectetur nam. Recusandae omnis ipsa eum ullam dolorem. Laborum consequuntur non accusamus libero dolorum.', 'https://lorempixel.com/840/580/?88531', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(40, 'Totam officia corrupti provident et ipsa labore.', 'Voluptatem est praesentium qui earum nostrum. Nam omnis qui sunt quia beatae nostrum possimus. Velit deserunt autem molestias et possimus. Odit ipsum et in.', 'https://lorempixel.com/840/580/?56780', 1, 3, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(41, 'Dolores occaecati temporibus aliquam et rerum laudantium.', 'Voluptatem voluptates qui corporis ex mollitia. Modi minima vero consequuntur modi. Sapiente id rerum aspernatur ut reprehenderit vel molestiae ipsum.', 'https://lorempixel.com/840/580/?67086', 1, 3, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(42, 'Eum vel voluptatem hic corporis impedit.', 'Suscipit laudantium et sed quo tempora quas quia. Tempora inventore perspiciatis non eos. Non maxime nostrum earum accusamus distinctio nesciunt. Dolores commodi dolore velit corporis.', 'https://lorempixel.com/840/580/?12986', 1, 1, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(43, 'Iusto ut veniam hic aut assumenda.', 'Et quisquam earum aut laborum velit quia. Porro sapiente repellat et distinctio doloribus dolor. Voluptas reprehenderit ullam inventore non voluptates.', 'https://lorempixel.com/840/580/?15191', 1, 3, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(44, 'Aut assumenda dolores et quo repellat odio.', 'Enim nisi doloremque aut veritatis necessitatibus. Non voluptatem distinctio labore quo. Laboriosam impedit id itaque omnis rerum qui.', 'https://lorempixel.com/840/580/?85623', 1, 5, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(45, 'Perspiciatis quis minus facere voluptas quos quasi voluptatibus.', 'Rerum explicabo natus repellat. Maxime ut voluptatibus tempora tempore. Consequuntur ut quae vitae at. Dolores natus corrupti eum corporis harum.', 'https://lorempixel.com/840/580/?41867', 1, 4, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(46, 'Illo qui nisi accusamus delectus numquam cumque.', 'Quo sit fuga omnis hic placeat. Velit ea dolore nostrum ducimus alias. Voluptatem nulla harum tenetur nulla et qui.', 'https://lorempixel.com/840/580/?97765', 1, 2, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(47, 'Hic quae molestiae mollitia velit dolorem et quasi.', 'Consequatur explicabo occaecati in autem est possimus modi. Quo quas labore voluptatem nam id fuga autem. Et ut eos omnis voluptas in porro maiores. Ipsam exercitationem sunt est est est dicta.', 'https://lorempixel.com/840/580/?95863', 1, 5, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(48, 'Vero et ipsa maxime minima neque facilis neque.', 'Corrupti dolorem quam sed enim suscipit. Consequatur aut sed id. Dolorum qui tempora et libero. Cum quae neque in a.', 'https://lorempixel.com/840/580/?53366', 1, 4, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(49, 'Consequatur veniam enim qui minima iste dolor.', 'Veniam maiores velit aut et corporis voluptas alias. Similique quis cumque mollitia et beatae. Sit ipsam eum corporis mollitia et magnam perferendis numquam. Laudantium iusto voluptatibus illo incidunt quis et quae.', 'https://lorempixel.com/840/580/?32911', 1, 5, 2, '2023-04-08 06:51:19', '2023-04-08 06:51:19'),
(50, 'Repellendus recusandae omnis pariatur rem et dicta dolorum.', 'Enim quasi commodi sunt quibusdam consequatur sunt. Molestiae quo alias et odit similique. Dolore ullam aut ut nam. Debitis similique ex sunt nostrum maiores.', 'https://lorempixel.com/840/580/?15419', 1, 3, 1, '2023-04-08 06:51:19', '2023-04-08 06:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `profit_distributions`
--

CREATE TABLE `profit_distributions` (
  `id` bigint UNSIGNED NOT NULL,
  `garden_id` bigint UNSIGNED NOT NULL,
  `office_order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `office_order_date` date NOT NULL,
  `tff_profit_share` decimal(10,2) DEFAULT NULL,
  `beneficiary_profit_share` decimal(10,2) DEFAULT NULL,
  `beneficiary_male` smallint DEFAULT NULL,
  `beneficiary_female` smallint DEFAULT NULL,
  `land_owner_profit_share` decimal(10,2) DEFAULT NULL,
  `union_parishadh_profit_share` decimal(10,2) DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `edit_request` enum('none','requested','permitted','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profit_distributions`
--

INSERT INTO `profit_distributions` (`id`, `garden_id`, `office_order_no`, `office_order_date`, `tff_profit_share`, `beneficiary_profit_share`, `beneficiary_male`, `beneficiary_female`, `land_owner_profit_share`, `union_parishadh_profit_share`, `approved_by`, `edit_request`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, '112121', '2023-06-13', '500.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 08:06:49', '2023-06-13 08:06:49'),
(2, 1, '112121', '2023-06-14', '500.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 19:44:15', '2023-06-13 19:44:15'),
(3, 1, '112121', '2023-06-14', '500.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 20:37:30', '2023-06-13 20:37:30'),
(4, 1, '112121', '2023-06-14', '500.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 20:38:33', '2023-06-13 20:38:33'),
(5, 1, '112121', '2023-06-14', '500.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 20:39:32', '2023-06-13 20:39:32'),
(6, 1, '112121', '2023-06-14', '444543.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 20:40:38', '2023-06-13 20:40:38'),
(7, 1, '112121', '2023-06-14', '444543.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 20:43:16', '2023-06-13 20:43:16'),
(8, 1, '112121', '2023-06-14', '444543.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 20:43:42', '2023-06-13 20:43:42'),
(9, 1, '112121', '2023-06-14', '444543.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-13 20:43:58', '2023-06-13 20:43:58'),
(10, 1, '112121', '2023-06-14', '500.00', '100.00', 100, 200, '2222.00', '43444.00', NULL, NULL, 1, '2023-06-14 11:03:01', '2023-06-14 11:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'অনুন্নয়ন খাত', '2023-06-26 15:58:50', '2023-06-26 15:58:50', NULL),
(2, 'টেকসই বন ও জীবিকা (সুফল)', '2023-06-26 15:58:50', '2023-06-26 15:58:50', NULL),
(3, 'টিএফএফ', '2023-06-26 16:00:59', '2023-06-26 16:00:59', NULL),
(4, 'Demo Project', '2023-10-26 13:52:49', '2023-10-26 13:52:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ranges`
--

CREATE TABLE `ranges` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_english` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_head_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thana_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranges`
--

INSERT INTO `ranges` (`id`, `district_id`, `name`, `name_english`, `office_head_designation`, `created_at`, `updated_at`, `deleted_at`, `thana_id`) VALUES
(1, 7, 'সদর রেঞ্জ', 'Sadar Range', 'রেঞ্জ কর্মকর্তা', '2023-06-21 11:40:18', '2023-06-21 11:40:18', NULL, 1),
(2, 7, 'চরকাই রেঞ্জ', 'Charkai Range', 'রেঞ্জ কর্মকর্তা', '2023-06-21 11:40:18', '2023-06-21 11:40:18', NULL, 1),
(5, 7, 'মধ্যপাড়া রেঞ্জ', 'Maddhapara Range', 'রেঞ্জ কর্মকর্তা', '2023-06-21 11:42:22', '2023-06-21 11:42:22', NULL, 1),
(6, 7, 'ঠাকুরগাঁও রেঞ্জ', 'Thakurgaon Range', 'রেঞ্জ কর্মকর্তা', '2023-06-21 11:42:22', '2023-06-21 11:42:22', NULL, 1),
(7, 7, 'দেবীগঞ্জ রেঞ্জ', 'Debiganj Range', 'রেঞ্জ কর্মকর্তা', '2023-06-21 11:45:34', '2023-06-21 11:45:34', NULL, 1),
(9, 9, 'fsadf', 'asdftt', 'sadf', '2023-10-21 07:44:54', '2023-10-21 07:56:59', NULL, 1),
(13, 22, 'Demo Range', 'Demo range', 'Demo podobi', '2023-10-31 13:08:24', '2023-10-31 13:08:24', NULL, 24),
(14, 9, 'demoagain', 'Demo again', '23', '2023-10-31 14:28:11', '2023-10-31 14:28:11', NULL, 17);

-- --------------------------------------------------------

--
-- Table structure for table `range_in_districts`
--

CREATE TABLE `range_in_districts` (
  `id` bigint UNSIGNED NOT NULL,
  `range_id` bigint UNSIGNED NOT NULL,
  `district_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `range_in_districts`
--

INSERT INTO `range_in_districts` (`id`, `range_id`, `district_id`, `created_at`, `updated_at`) VALUES
(1, 2, 7, NULL, NULL),
(2, 5, 7, NULL, NULL),
(3, 6, 7, NULL, NULL),
(4, 7, 8, NULL, NULL),
(5, 8, 9, NULL, NULL),
(6, 7, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `range_in_unions`
--

CREATE TABLE `range_in_unions` (
  `id` bigint UNSIGNED NOT NULL,
  `range_id` int NOT NULL,
  `union_parishad_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `range_in_unions`
--

INSERT INTO `range_in_unions` (`id`, `range_id`, `union_parishad_id`, `created_at`, `updated_at`) VALUES
(1, 11, 200, NULL, NULL),
(2, 12, 200, NULL, NULL),
(3, 13, 200, NULL, NULL),
(4, 14, 103, NULL, NULL),
(5, 14, 104, NULL, NULL),
(6, 14, 105, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `range_thanas`
--

CREATE TABLE `range_thanas` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `thana_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `range_thanas`
--

INSERT INTO `range_thanas` (`id`, `user_id`, `thana_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(2, 5, 9, NULL, NULL),
(3, 6, 8, NULL, NULL),
(4, 8, 15, NULL, NULL),
(5, 7, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(2, 'user', 'web', '2023-04-08 06:51:18', '2023-04-08 06:51:18'),
(3, 'তথ্য প্রদানকারী (রেঞ্জ/কেন্দ্র)', 'web', '2023-05-21 16:13:54', '2023-05-22 06:06:03'),
(4, 'অনুমোদনকারী', 'web', '2023-05-21 16:14:14', '2023-05-21 16:14:14'),
(5, 'প্রতিবেদন প্রস্তুতকারী/যাচাইকারী', 'web', '2023-05-21 16:15:47', '2023-05-21 16:15:47'),
(6, 'বীট', 'web', '2023-05-21 16:17:42', '2023-05-21 16:17:42'),
(7, 'এসএফএনটিসি', 'web', '2023-05-21 16:29:16', '2023-05-21 16:29:16'),
(8, 'sfpc', 'web', '2023-11-07 20:02:34', '2023-11-07 20:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(21, 5),
(22, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(10, 7),
(11, 7),
(12, 7),
(13, 7),
(14, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 8),
(14, 8),
(15, 8),
(16, 8),
(17, 8),
(18, 8),
(19, 8),
(20, 8),
(21, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(26, 8);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'company_name', 'Forest Dinajpur'),
(2, 'company_email', 'dfodinajpur@gmail.com'),
(3, 'company_phone', '01999-006503'),
(4, 'company_address', 'বিভাগীয় বন কর্মকর্তার কার্যালয়, সামাজিক বন বিভাগ, মিশন রোড, দিনাজপুর সদর'),
(5, 'company_city', 'Dinajpur'),
(6, 'company_currency_symbol', '৳'),
(7, 'record_per_page', '15'),
(8, 'default_role', '2'),
(9, 'max_login_attempts', '3'),
(10, 'lockout_delay', '2');

-- --------------------------------------------------------

--
-- Table structure for table `sfntc`
--

CREATE TABLE `sfntc` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_english` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_head_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sfpcs`
--

CREATE TABLE `sfpcs` (
  `id` bigint UNSIGNED NOT NULL,
  `range_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_english` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_head_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sfpcs`
--

INSERT INTO `sfpcs` (`id`, `range_id`, `name`, `name_english`, `office_head_designation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'বিরল এসএফপিসি', 'Birol SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(2, 2, 'হাকিমপুর এসএফপিসি', 'Hakimpur SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(3, 3, 'বিরামপুর এসএফপিসি', 'Birampur SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(4, 4, 'নবাবগঞ্জ এসএফপিসি', 'Nawabganj SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(5, 5, 'ঘোড়াঘাট এসএফপিসি', 'Ghoraghat SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(6, 6, 'পার্বতীপুর এসএফপিসি', 'Parbatipur SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(7, 7, 'ফুলবাড়ী এসএফপিসি', 'Phulbari SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(8, 8, 'চিরিরবন্দর এসএফপিসি', 'Chirirbandar SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(9, 9, 'খানসামা এসএফপিসি', 'Khansama SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(10, 10, 'বীরগঞ্জ এসএফপিসি', 'Birganj SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(11, 11, 'বোচাগঞ্জ এসএফপিসি', 'Bochaganj SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(12, 12, 'কাহারোল এসএফপিসি', 'Kaharol SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(13, 13, 'পীরগঞ্জ এসএফপিসি', 'Pirganj SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(14, 14, 'রানীশংকৈল এসএফপিসি', 'Ranisankail SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(15, 15, 'হরিপুর এসএফপিসি', 'Haripur SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(16, 16, 'ঠাকুরগাঁও সদর এসএফপিসি', 'Thakurgaon Sadar SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(17, 17, 'বালিয়াডাঙ্গী এসএফপিসি', 'Baliadangi SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(18, 18, 'দেবীগঞ্জ এসএফপিসি', 'Debiganj SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(19, 19, 'বোদা এসএফপিসি', 'Boda SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(20, 20, 'পঞ্চগড় সদর এসএফপিসি', 'Panchagarh Sadar SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(21, 21, 'তেঁতুলিয়া এসএফপিসি', 'Tetulia SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(22, 22, 'আটোয়ারী এসএফপিসি', 'Atwari SFPC', 'ভারপ্রাপ্ত কর্মকর্তা', '2023-06-26 20:23:25', '2023-06-26 20:23:25', NULL),
(23, 13, 'demosfpc', 'demosfpc', 'hello', '2023-11-07 21:02:40', '2023-11-07 21:02:40', NULL),
(24, 13, 'sfpc_demo', 'sfopc_demo', 'hello', '2023-11-07 21:05:38', '2023-11-07 21:05:38', NULL),
(25, 13, 'sfpc_demo', 'sfopc_demo', 'hello', '2023-11-07 21:07:07', '2023-11-07 21:07:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tff_profit_distributions`
--

CREATE TABLE `tff_profit_distributions` (
  `id` int UNSIGNED NOT NULL,
  `garden_id` bigint UNSIGNED NOT NULL,
  `office_order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `office_order_date` date NOT NULL,
  `tff_profit_share` decimal(10,2) NOT NULL,
  `approved_by` int DEFAULT NULL,
  `edit_request` enum('none','requested','permitted','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'none',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint UNSIGNED NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `name`, `district_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'সদর', 7, 1, '2023-08-26 13:05:33', NULL),
(2, 'বিরল', 7, 1, '2023-08-26 13:05:33', NULL),
(3, 'বোচাগঞ্জ', 7, 1, '2023-08-26 13:05:33', NULL),
(4, 'কাহারোল', 7, 1, '2023-08-26 13:05:33', NULL),
(5, 'বীরগঞ্জ', 7, 1, '2023-08-26 13:05:33', NULL),
(6, 'ঘোড়াঘাট', 7, 1, '2023-08-26 13:05:33', NULL),
(7, 'হাকিমপুর', 7, 1, '2023-08-26 13:05:33', NULL),
(8, 'পার্বতীপুর', 7, 1, '2023-08-26 13:05:33', NULL),
(9, 'বিরামপুর', 7, 1, '2023-08-26 13:05:33', NULL),
(10, 'খানসামা', 7, 1, '2023-08-26 13:05:33', NULL),
(11, 'চিরিরবন্দর', 7, 1, '2023-08-26 13:05:33', NULL),
(12, 'ফুলবাড়ী', 7, 1, '2023-08-26 13:05:33', NULL),
(13, 'নবাবগঞ্জ', 7, 1, '2023-08-26 13:05:33', NULL),
(14, 'বোদা', 9, 1, '2023-08-26 13:05:33', NULL),
(15, 'দেবীগঞ্জ', 9, 1, '2023-08-26 13:05:33', NULL),
(16, 'আটোয়ারী', 9, 1, '2023-08-26 13:05:33', NULL),
(17, 'তেঁতুলিয়া', 9, 1, '2023-08-26 13:05:33', NULL),
(18, 'পঞ্চগড় সদর', 9, 1, '2023-08-26 13:05:33', NULL),
(19, 'ঠাকুরগাঁও সদর', 8, 1, '2023-08-26 13:05:33', NULL),
(20, 'পীরগঞ্জ', 8, 1, '2023-08-26 13:05:33', NULL),
(21, 'রাণীশংকৈল', 8, 1, '2023-08-26 13:05:33', NULL),
(22, 'বালিয়াডাঙ্গী', 8, 1, '2023-08-26 13:05:33', NULL),
(23, 'হরিপুর', 8, 1, '2023-08-26 13:05:33', NULL),
(24, 'Demo thana', 22, 1, '2023-10-28 06:23:59', '2023-10-28 06:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `tree_species_information`
--

CREATE TABLE `tree_species_information` (
  `id` bigint UNSIGNED NOT NULL,
  `wood_lot_id` bigint UNSIGNED NOT NULL,
  `species` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `species_count` int NOT NULL,
  `wood_amount` decimal(10,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tree_species_information`
--

INSERT INTO `tree_species_information` (`id`, `wood_lot_id`, `species`, `species_count`, `wood_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ইউক্যা', 55, '56.00', NULL, NULL, NULL),
(2, 1, 'বকাইন', 33, '3300.00', NULL, NULL, NULL),
(3, 1, 'জারুল', 55, '33.00', NULL, NULL, NULL),
(4, 1, 'মেহগুনী', 66, '77.00', NULL, NULL, NULL),
(5, 2, 'ইউক্যা', 48, '321.00', NULL, NULL, NULL),
(6, 2, 'বকাইন', 16, '6.00', NULL, NULL, NULL),
(7, 2, 'আকাশমনি', 6, '12.00', NULL, NULL, NULL),
(8, 2, 'জারুল', 1, '0.00', NULL, NULL, NULL),
(9, 2, 'মেহগুনী', 1, '0.00', NULL, NULL, NULL),
(10, 2, 'গামার', 1, '4.00', NULL, NULL, NULL),
(11, 2, 'চিতরাশি', 2, '9.00', NULL, NULL, NULL),
(12, 3, 'ইউক্যা', 36, '243.00', NULL, NULL, NULL),
(13, 3, 'বকাইন', 10, '4.00', NULL, NULL, NULL),
(14, 3, 'আকাশমনি', 14, '31.00', NULL, NULL, NULL),
(15, 3, 'মেহগুনী', 7, '0.00', NULL, NULL, NULL),
(16, 3, 'ইপিল ইপিল', 1, '0.00', NULL, NULL, NULL),
(17, 3, 'গামার', 2, '2.00', NULL, NULL, NULL),
(18, 3, 'মিনজিরী', 2, '0.00', NULL, NULL, NULL),
(19, 3, 'চিতরাশি', 3, '5.00', NULL, NULL, NULL),
(20, 4, 'ইউক্যা', 22, '213.00', NULL, NULL, NULL),
(21, 4, 'বকাইন', 5, '1.00', NULL, NULL, NULL),
(22, 4, 'আকাশমনি', 11, '29.00', NULL, NULL, NULL),
(23, 4, 'মেহগুনী', 8, '1.00', NULL, NULL, NULL),
(24, 4, 'ইপিল ইপিল', 1, '3.00', NULL, NULL, NULL),
(25, 4, 'ডাউয়া', 1, '0.00', NULL, NULL, NULL),
(26, 4, 'মিনজিরী', 1, '3.00', NULL, NULL, NULL),
(27, 4, 'চিতরাশি', 1, '0.00', NULL, NULL, NULL),
(28, 5, 'ইউক্যা', 31, '233.00', NULL, NULL, NULL),
(29, 5, 'বকাইন', 5, '0.00', NULL, NULL, NULL),
(30, 5, 'আকাশমনি', 16, '10.00', NULL, NULL, NULL),
(31, 5, 'মেহগুনী', 4, '0.00', NULL, NULL, NULL),
(32, 5, 'ইপিল ইপিল', 1, '4.00', NULL, NULL, NULL),
(33, 5, 'চিতরাশি', 3, '0.00', NULL, NULL, NULL),
(34, 6, 'ইউক্যা', 36, '252.00', NULL, NULL, NULL),
(35, 6, 'বকাইন', 3, '0.00', NULL, NULL, NULL),
(36, 6, 'আকাশমনি', 9, '12.00', NULL, NULL, NULL),
(37, 6, 'মেহগুনী', 2, '0.00', NULL, NULL, NULL),
(38, 7, 'ইউক্যা', 47, '249.00', NULL, NULL, NULL),
(39, 7, 'আকাশমনি', 3, '10.00', NULL, NULL, NULL),
(40, 8, 'ইউক্যা', 40, '222.00', NULL, NULL, NULL),
(41, 8, 'বকাইন', 3, '3.00', NULL, NULL, NULL),
(42, 8, 'আকাশমনি', 4, '12.00', NULL, NULL, NULL),
(43, 8, 'চিতরাশি', 3, '4.00', NULL, NULL, NULL),
(44, 9, 'ইউক্যা', 30, '194.00', NULL, NULL, NULL),
(45, 9, 'বকাইন', 8, '10.00', NULL, NULL, NULL),
(46, 9, 'আকাশমনি', 2, '5.00', NULL, NULL, NULL),
(47, 9, 'মেহগুনী', 1, '0.00', NULL, NULL, NULL),
(48, 9, 'ইপিল ইপিল', 2, '0.00', NULL, NULL, NULL),
(49, 9, 'গামার', 1, '0.00', NULL, NULL, NULL),
(50, 9, 'চিতরাশি', 8, '23.00', NULL, NULL, NULL),
(51, 9, 'কড়াই', 4, '7.00', NULL, NULL, NULL),
(52, 10, 'ইউক্যা', 93, '408.00', NULL, NULL, NULL),
(53, 10, 'আকাশমনি', 23, '40.00', NULL, NULL, NULL),
(54, 10, 'চিতরাশি', 16, '7.00', NULL, NULL, NULL),
(55, 11, 'ইউক্যা', 55, '272.00', NULL, NULL, NULL),
(56, 11, 'আকাশমনি', 1, '9.00', NULL, NULL, NULL),
(57, 11, 'গামার', 1, '1.00', NULL, NULL, NULL),
(58, 11, 'চিতরাশি', 2, '0.00', NULL, NULL, NULL),
(59, 12, 'ইউক্যা', 66, '272.00', NULL, NULL, NULL),
(60, 12, 'বকাইন', 1, '0.00', NULL, NULL, NULL),
(61, 12, 'আকাশমনি', 3, '5.00', NULL, NULL, NULL),
(62, 12, 'চিতরাশি', 5, '6.00', NULL, NULL, NULL),
(63, 13, 'ইউক্যা', 43, '281.00', NULL, NULL, NULL),
(64, 13, 'বকাইন', 1, '1.00', NULL, NULL, NULL),
(65, 13, 'আকাশমনি', 15, '31.00', NULL, NULL, NULL),
(66, 13, 'চিতরাশি', 4, '8.00', NULL, NULL, NULL),
(67, 14, 'ইউক্যা', 51, '226.00', NULL, NULL, NULL),
(68, 14, 'বকাইন', 6, '1.00', NULL, NULL, NULL),
(69, 14, 'আকাশমনি', 5, '13.00', NULL, NULL, NULL),
(70, 14, 'গামার', 1, '0.00', NULL, NULL, NULL),
(71, 14, 'চিতরাশি', 3, '4.00', NULL, NULL, NULL),
(72, 14, 'মিনজিরী', 1, '1.00', NULL, NULL, NULL),
(73, 15, 'ইউক্যা', 45, '203.00', NULL, NULL, NULL),
(74, 15, 'আকাশমনি', 13, '25.00', NULL, NULL, NULL),
(75, 15, 'চিতরাশি', 2, '1.00', NULL, NULL, NULL),
(76, 16, 'ইউক্যা', 44, '217.00', NULL, NULL, NULL),
(77, 16, 'আকাশমনি', 1, '1.00', NULL, NULL, NULL),
(78, 16, 'চিতরাশি', 1, '0.00', NULL, NULL, NULL),
(79, 17, 'ইউক্যা', 40, '198.00', NULL, NULL, NULL),
(80, 18, 'ইউক্যা', 40, '309.00', NULL, NULL, NULL),
(81, 19, 'ইউক্যা', 40, '311.00', NULL, NULL, NULL),
(82, 20, 'ইউক্যা', 40, '263.00', NULL, NULL, NULL),
(83, 21, 'ইউক্যা', 40, '197.00', NULL, NULL, NULL),
(84, 22, 'ইউক্যা', 38, '173.00', NULL, NULL, NULL),
(85, 22, 'কড়ই', 2, '10.00', NULL, NULL, NULL),
(86, 23, 'ইউক্যা', 38, '221.00', NULL, NULL, NULL),
(87, 23, 'কড়ই', 2, '4.00', NULL, NULL, NULL),
(88, 24, 'ইউক্যা', 37, '255.00', NULL, NULL, NULL),
(89, 24, 'ইপিল ইপিল', 1, '3.00', NULL, NULL, NULL),
(90, 24, 'কড়ই', 2, '2.00', NULL, NULL, NULL),
(91, 25, 'ইউক্যা', 39, '231.00', NULL, NULL, NULL),
(92, 25, 'ইপিল ইপিল', 1, '1.00', NULL, NULL, NULL),
(93, 26, 'ইউক্যা', 34, '208.00', NULL, NULL, NULL),
(94, 26, 'অর্জুন', 1, '2.00', NULL, NULL, NULL),
(95, 26, 'ইপিল ইপিল', 3, '7.00', NULL, NULL, NULL),
(96, 26, 'কড়ই', 2, '5.00', NULL, NULL, NULL),
(97, 27, 'ইউক্যা', 32, '250.00', NULL, NULL, NULL),
(98, 27, 'মেহগুনী', 3, '3.00', NULL, NULL, NULL),
(99, 27, 'ইপিল ইপিল', 2, '8.00', NULL, NULL, NULL),
(100, 27, 'কড়ই', 3, '17.00', NULL, NULL, NULL),
(101, 28, 'ইউক্যা', 28, '226.00', NULL, NULL, NULL),
(102, 29, 'ইউক্যা', 52, '285.00', NULL, NULL, NULL),
(103, 29, 'বকাইন', 1, '0.00', NULL, NULL, NULL),
(104, 29, 'আকাশমনি', 7, '15.00', NULL, NULL, NULL),
(105, 29, 'অর্জুন', 1, '1.00', NULL, NULL, NULL),
(106, 29, 'ইপিল ইপিল', 7, '24.00', NULL, NULL, NULL),
(107, 29, 'কড়ই', 12, '55.00', NULL, NULL, NULL),
(108, 30, 'ইউক্যা', 57, '311.00', NULL, NULL, NULL),
(109, 30, 'বকাইন', 3, '2.00', NULL, NULL, NULL),
(110, 30, 'আকাশমনি', 11, '40.00', NULL, NULL, NULL),
(111, 30, 'ইপিল ইপিল', 6, '3.00', NULL, NULL, NULL),
(112, 30, 'কড়ই', 3, '6.00', NULL, NULL, NULL),
(113, 31, 'ইউক্যা', 13, '60.00', NULL, NULL, NULL),
(114, 31, 'বকাইন', 1, '0.00', NULL, NULL, NULL),
(115, 31, 'আকাশমনি', 23, '144.00', NULL, NULL, NULL),
(116, 31, 'কড়ই', 3, '9.00', NULL, NULL, NULL),
(117, 32, 'ইউক্যা', 33, '187.00', NULL, NULL, NULL),
(118, 32, 'বকাইন', 2, '0.00', NULL, NULL, NULL),
(119, 32, 'আকাশমনি', 3, '23.00', NULL, NULL, NULL),
(120, 32, 'কড়ই', 2, '4.00', NULL, NULL, NULL),
(121, 33, 'ইউক্যা', 29, '236.00', NULL, NULL, NULL),
(122, 33, 'বকাইন', 1, '1.00', NULL, NULL, NULL),
(123, 33, 'আকাশমনি', 6, '42.00', NULL, NULL, NULL),
(124, 33, 'পিটালী', 1, '0.00', NULL, NULL, NULL),
(125, 33, 'ইপিল ইপিল', 4, '1.00', NULL, NULL, NULL),
(126, 33, 'কদম', 1, '0.00', NULL, NULL, NULL),
(127, 33, 'কড়ই', 10, '12.00', NULL, NULL, NULL),
(128, 34, 'বকাইন', 1, '0.00', NULL, NULL, NULL),
(129, 34, 'আকাশমনি', 4, '14.00', NULL, NULL, NULL),
(130, 34, 'গামার', 1, '19.00', NULL, NULL, NULL),
(131, 34, 'সেগুন', 1, '12.00', NULL, NULL, NULL),
(132, 34, 'আগর', 1, '3.00', NULL, NULL, NULL),
(133, 34, 'কাঁঠাল', 3, '35.00', NULL, NULL, NULL),
(134, 34, 'জিগনী', 1, '0.00', NULL, NULL, NULL),
(135, 34, 'লোহা কাঠ', 4, '82.00', NULL, NULL, NULL),
(136, 35, 'আকাশমনি', 77, '138.00', NULL, NULL, NULL),
(137, 35, 'ইউক্যা', 29, '54.00', NULL, NULL, NULL),
(138, 35, 'বেলজিয়াম', 4, '9.00', NULL, NULL, NULL),
(139, 36, 'আকাশমনি', 69, '107.00', NULL, NULL, NULL),
(140, 36, 'ইউক্যা', 20, '24.00', NULL, NULL, NULL),
(141, 36, 'বেলজিয়াম', 1, '2.00', NULL, NULL, NULL),
(142, 37, 'আকাশমনি', 97, '181.00', NULL, NULL, NULL),
(143, 37, 'ইউক্যা', 14, '25.00', NULL, NULL, NULL),
(144, 37, 'শীল কড়ই', 2, '4.00', NULL, NULL, NULL),
(145, 37, 'বেলজিয়াম', 3, '6.00', NULL, NULL, NULL),
(146, 38, 'আকাশমনি', 29, '68.00', NULL, NULL, NULL),
(147, 38, 'শাল', 3, '16.00', NULL, NULL, NULL),
(148, 39, 'আকাশমনি', 15, '51.00', NULL, NULL, NULL),
(149, 39, 'ইউক্যা', 12, '321.00', NULL, NULL, NULL),
(150, 40, 'ইউক্যা', 6, '260.00', NULL, NULL, NULL),
(151, 40, 'আকাশমনি', 19, '67.00', NULL, NULL, NULL),
(152, 40, 'কড়ই', 1, '5.00', NULL, NULL, NULL),
(153, 40, 'মিনজিরি', 1, '7.00', NULL, NULL, NULL),
(154, 41, 'আকাশমনি', 23, '72.00', NULL, NULL, NULL),
(155, 41, 'ইউক্যা', 4, '53.00', NULL, NULL, NULL),
(156, 42, 'আকাশমনি', 18, '43.00', NULL, NULL, NULL),
(157, 42, 'মিনজিরি', 9, '106.00', NULL, NULL, NULL),
(158, 43, 'আকাশমনি', 23, '126.00', NULL, NULL, NULL),
(159, 43, 'ইউক্যা', 4, '80.00', NULL, NULL, NULL),
(160, 44, 'আকাশমনি', 4, '197.00', NULL, NULL, NULL),
(161, 44, 'ইউক্যা', 23, '15.00', NULL, NULL, NULL),
(162, 45, 'ইউক্যা', 21, '218.00', NULL, NULL, NULL),
(163, 45, 'আকাশমনি', 6, '20.00', NULL, NULL, NULL),
(164, 46, 'আকাশমনি', 6, '18.00', NULL, NULL, NULL),
(165, 46, 'ইউক্যা', 21, '166.00', NULL, NULL, NULL),
(166, 47, 'আকাশমনি', 8, '13.00', NULL, NULL, NULL),
(167, 47, 'মিনজিরি', 1, '6.00', NULL, NULL, NULL),
(168, 47, 'ইউক্যা', 18, '205.00', NULL, NULL, NULL),
(169, 48, 'ইউক্যা', 8, '247.00', NULL, NULL, NULL),
(170, 48, 'আকাশমনি', 2, '3.00', NULL, NULL, NULL),
(171, 49, 'ইউক্যা', 7, '200.00', NULL, NULL, NULL),
(172, 49, 'আকাশমনি', 10, '46.00', NULL, NULL, NULL),
(173, 50, 'ইউক্যা', 6, '254.00', NULL, NULL, NULL),
(174, 50, 'আকাশমনি', 1, '1.00', NULL, NULL, NULL),
(175, 51, 'ইউক্যা', 18, '235.00', NULL, NULL, NULL),
(176, 51, 'আকাশমনি', 2, '9.00', NULL, NULL, NULL),
(177, 52, 'ইউক্যা', 18, '207.00', NULL, NULL, NULL),
(178, 52, 'আকাশমনি', 8, '9.00', NULL, NULL, NULL),
(179, 52, 'মিনজিরি', 1, '5.00', NULL, NULL, NULL),
(180, 53, 'ইউক্যা', 25, '139.00', NULL, NULL, NULL),
(181, 53, 'আকাশমনি', 2, '7.00', NULL, NULL, NULL),
(182, 54, 'ইউক্যা', 27, '287.00', NULL, NULL, NULL),
(183, 55, 'ইউক্যা', 18, '204.00', NULL, NULL, NULL),
(184, 55, 'আকাশমনি', 4, '24.00', NULL, NULL, NULL),
(185, 55, 'কড়ই', 5, '106.00', NULL, NULL, NULL),
(186, 56, 'ইউক্যা', 27, '244.00', NULL, NULL, NULL),
(187, 57, 'ইউক্যা', 26, '145.00', NULL, NULL, NULL),
(188, 57, 'আকাশমনি', 1, '2.00', NULL, NULL, NULL),
(189, 58, 'ইউক্যা', 25, '162.00', NULL, NULL, NULL),
(190, 58, 'আকাশমনি', 2, '6.00', NULL, NULL, NULL),
(191, 59, 'ইউক্যা', 22, '256.00', NULL, NULL, NULL),
(192, 59, 'আকাশমনি', 4, '6.00', NULL, NULL, NULL),
(193, 59, 'মিনজিরি', 1, '10.00', NULL, NULL, NULL),
(194, 60, 'ইউক্যা', 18, '123.00', NULL, NULL, NULL),
(195, 60, 'আকাশমনি', 9, '61.00', NULL, NULL, NULL),
(196, 61, 'আকাশমনি', 12, '201.00', NULL, NULL, NULL),
(197, 61, 'ইউক্যা', 15, '131.00', NULL, NULL, NULL),
(198, 62, 'ইউক্যা', 23, '139.00', NULL, NULL, NULL),
(199, 62, 'আকাশমনি', 2, '15.00', NULL, NULL, NULL),
(200, 62, 'মিনজিরি', 2, '20.00', NULL, NULL, NULL),
(201, 63, 'ইউক্যা', 27, '229.00', NULL, NULL, NULL),
(202, 64, 'ইউক্যা', 26, '160.00', NULL, NULL, NULL),
(203, 64, 'আকাশমনি', 1, '4.00', NULL, NULL, NULL),
(204, 65, 'ইউক্যা', 26, '197.00', NULL, NULL, NULL),
(205, 65, 'কড়ই', 1, '4.00', NULL, NULL, NULL),
(206, 66, 'ইউক্যা', 26, '165.00', NULL, NULL, NULL),
(207, 66, 'মিনজিরি', 1, '4.00', NULL, NULL, NULL),
(208, 67, 'ইউক্যা', 25, '219.00', NULL, NULL, NULL),
(209, 67, 'আকাশমনি', 1, '13.00', NULL, NULL, NULL),
(210, 67, 'কড়ই', 1, '7.00', NULL, NULL, NULL),
(211, 68, 'ইউক্যা', 27, '204.00', NULL, NULL, NULL),
(212, 69, 'ইউক্যা', 24, '205.00', NULL, NULL, NULL),
(213, 69, 'কড়ই', 3, '10.00', NULL, NULL, NULL),
(214, 70, 'ইউক্যা', 21, '215.00', NULL, NULL, NULL),
(215, 70, 'আকাশমনি', 4, '32.00', NULL, NULL, NULL),
(216, 70, 'কড়ই', 1, '4.00', NULL, NULL, NULL),
(217, 70, 'মিনজিরি', 1, '8.00', NULL, NULL, NULL),
(218, 71, 'ইউক্যা', 17, '173.00', NULL, NULL, NULL),
(219, 71, 'আকাশমনি', 9, '31.00', NULL, NULL, NULL),
(220, 71, 'কড়ই', 1, '0.00', NULL, NULL, NULL),
(221, 72, 'ইউক্যা', 16, '216.00', NULL, NULL, NULL),
(222, 72, 'আকাশমনি', 9, '81.00', NULL, NULL, NULL),
(223, 72, 'কড়ই', 2, '9.00', NULL, NULL, NULL),
(224, 73, 'ইউক্যা', 26, '279.00', NULL, NULL, NULL),
(225, 73, 'আকাশমনি', 1, '6.00', NULL, NULL, NULL),
(226, 74, 'ইউক্যা', 25, '244.00', NULL, NULL, NULL),
(227, 74, 'আকাশমনি', 2, '25.00', NULL, NULL, NULL),
(228, 75, 'ইউক্যা', 24, '174.00', NULL, NULL, NULL),
(229, 75, 'কড়ই', 3, '3.00', NULL, NULL, NULL),
(230, 76, 'ইউক্যা', 24, '128.00', NULL, NULL, NULL),
(231, 76, 'মিনজিরি', 1, '4.00', NULL, NULL, NULL),
(232, 76, 'কড়ই', 2, '5.00', NULL, NULL, NULL),
(233, 77, 'ইউক্যা', 26, '201.00', NULL, NULL, NULL),
(234, 77, 'কড়ই', 1, '1.00', NULL, NULL, NULL),
(235, 78, 'ইউক্যা', 27, '116.00', NULL, NULL, NULL),
(236, 79, 'ইউক্যা', 27, '173.00', NULL, NULL, NULL),
(237, 80, 'ইউক্যা', 27, '104.00', NULL, NULL, NULL),
(238, 81, 'ইউক্যা', 22, '166.00', NULL, NULL, NULL),
(239, 81, 'আকাশমনি', 5, '20.00', NULL, NULL, NULL),
(240, 82, 'ইউক্যা', 10, '102.00', NULL, NULL, NULL),
(241, 82, 'আকাশমনি', 17, '95.00', NULL, NULL, NULL),
(242, 83, 'ইউক্যা', 25, '154.00', NULL, NULL, NULL),
(243, 83, 'আকাশমনি', 2, '13.00', NULL, NULL, NULL),
(244, 84, 'ইউক্যা', 27, '110.00', NULL, NULL, NULL),
(245, 85, 'ইউক্যা', 27, '170.00', NULL, NULL, NULL),
(246, 86, 'ইউক্যা', 27, '158.00', NULL, NULL, NULL),
(247, 87, 'ইউক্যা', 27, '209.00', NULL, NULL, NULL),
(248, 88, 'ইউক্যা', 27, '172.00', NULL, NULL, NULL),
(249, 89, 'ইউক্যা', 24, '147.00', NULL, NULL, NULL),
(250, 89, 'কড়ই', 3, '3.00', NULL, NULL, NULL),
(251, 90, 'ইউক্যা', 25, '175.00', NULL, NULL, NULL),
(252, 90, 'আকাশমনি', 1, '0.00', NULL, NULL, NULL),
(253, 90, 'বহেরা', 1, '11.00', NULL, NULL, NULL),
(254, 91, 'ইউক্যা', 25, '201.00', NULL, NULL, NULL),
(255, 91, 'মিনজিরি', 2, '12.00', NULL, NULL, NULL),
(256, 92, 'ইউক্যা', 25, '227.00', NULL, NULL, NULL),
(257, 92, 'কড়ই', 2, '1.00', NULL, NULL, NULL),
(258, 93, 'ইউক্যা', 28, '194.00', NULL, NULL, NULL),
(259, 94, 'ইউক্যা', 22, '247.00', NULL, NULL, NULL),
(260, 94, 'মিনজিরি', 4, '23.00', NULL, NULL, NULL),
(261, 94, 'কড়ই', 1, '0.00', NULL, NULL, NULL),
(262, 95, 'ইউক্যা', 21, '183.00', NULL, NULL, NULL),
(263, 95, 'আকাশমনি', 2, '4.00', NULL, NULL, NULL),
(264, 95, 'কড়ই', 1, '3.00', NULL, NULL, NULL),
(265, 95, 'মিনজিরি', 3, '28.00', NULL, NULL, NULL),
(266, 96, 'ইউক্যা', 20, '164.00', NULL, NULL, NULL),
(267, 96, 'আকাশমনি', 5, '23.00', NULL, NULL, NULL),
(268, 96, 'কড়ই', 1, '11.00', NULL, NULL, NULL),
(269, 96, 'মিনজিরি', 1, '9.00', NULL, NULL, NULL),
(270, 97, 'ইউক্যা', 19, '140.00', NULL, NULL, NULL),
(271, 97, 'আকাশমনি', 5, '24.00', NULL, NULL, NULL),
(272, 97, 'কড়ই', 3, '42.00', NULL, NULL, NULL),
(273, 98, 'ইউক্যা', 27, '216.00', NULL, NULL, NULL),
(274, 99, 'ইউক্যা', 24, '233.00', NULL, NULL, NULL),
(275, 99, 'আকাশমনি', 3, '7.00', NULL, NULL, NULL),
(276, 100, 'ইউক্যা', 26, '195.00', NULL, NULL, NULL),
(277, 100, 'আকাশমনি', 1, '1.00', NULL, NULL, NULL),
(278, 101, 'ইউক্যা', 27, '179.00', NULL, NULL, NULL),
(279, 102, 'ইউক্যা', 25, '188.00', NULL, NULL, NULL),
(280, 102, 'মিনজিরি', 1, '3.00', NULL, NULL, NULL),
(281, 102, 'কড়ই', 1, '1.00', NULL, NULL, NULL),
(282, 103, 'ইউক্যা', 27, '184.00', NULL, NULL, NULL),
(283, 104, 'ইউক্যা', 27, '216.00', NULL, NULL, NULL),
(284, 105, 'ইউক্যা', 27, '219.00', NULL, NULL, NULL),
(285, 106, 'ইউক্যা', 22, '152.00', NULL, NULL, NULL),
(286, 106, 'আকাশমনি', 1, '8.00', NULL, NULL, NULL),
(287, 106, 'মিনজিরি', 3, '24.00', NULL, NULL, NULL),
(288, 106, 'কড়ই', 1, '7.00', NULL, NULL, NULL),
(289, 107, 'ইউক্যা', 19, '165.00', NULL, NULL, NULL),
(290, 107, 'আকাশমনি', 7, '40.00', NULL, NULL, NULL),
(291, 107, 'মিনজিরি', 1, '3.00', NULL, NULL, NULL),
(292, 108, 'ইউক্যা', 21, '212.00', NULL, NULL, NULL),
(293, 108, 'আকাশমনি', 6, '20.00', NULL, NULL, NULL),
(294, 109, 'ইউক্যা', 22, '301.00', NULL, NULL, NULL),
(295, 109, 'আকাশমনি', 2, '9.00', NULL, NULL, NULL),
(296, 109, 'মিনজিরি', 1, '16.00', NULL, NULL, NULL),
(297, 109, 'গামার', 2, '13.00', NULL, NULL, NULL),
(298, 110, 'ইউক্যা', 24, '259.00', NULL, NULL, NULL),
(299, 110, 'আকাশমনি', 1, '14.00', NULL, NULL, NULL),
(300, 110, 'গামার', 1, '8.00', NULL, NULL, NULL),
(301, 110, 'পিটালি', 1, '11.00', NULL, NULL, NULL),
(302, 111, 'ইউক্যা', 23, '325.00', NULL, NULL, NULL),
(303, 111, 'মিনজিরি', 4, '24.00', NULL, NULL, NULL),
(304, 112, 'ইউক্যা', 23, '283.00', NULL, NULL, NULL),
(305, 112, 'আকাশমনি', 3, '47.00', NULL, NULL, NULL),
(306, 112, 'মিনজিরি', 1, '13.00', NULL, NULL, NULL),
(307, 113, 'ইউক্যা', 22, '230.00', NULL, NULL, NULL),
(308, 113, 'মিনজিরি', 3, '30.00', NULL, NULL, NULL),
(309, 113, 'কড়ই', 2, '19.00', NULL, NULL, NULL),
(310, 114, 'ইউক্যা', 26, '331.00', NULL, NULL, NULL),
(311, 114, 'আকাশমনি', 1, '2.00', NULL, NULL, NULL),
(312, 115, 'ইউক্যা', 16, '204.00', NULL, NULL, NULL),
(313, 115, 'আকাশমনি', 6, '80.00', NULL, NULL, NULL),
(314, 115, 'মিনজিরি', 1, '20.00', NULL, NULL, NULL),
(315, 115, 'কড়ই', 4, '90.00', NULL, NULL, NULL),
(316, 116, 'ইউক্যা', 23, '339.00', NULL, NULL, NULL),
(317, 116, 'আকাশমনি', 3, '3.00', NULL, NULL, NULL),
(318, 116, 'মিনজিরি', 1, '4.00', NULL, NULL, NULL),
(319, 117, 'ইউক্যা', 12, '141.00', NULL, NULL, NULL),
(320, 117, 'আকাশমনি', 15, '69.00', NULL, NULL, NULL),
(321, 118, 'ইউক্যা', 14, '182.00', NULL, NULL, NULL),
(322, 118, 'আকাশমনি', 13, '41.00', NULL, NULL, NULL),
(323, 119, 'ইউক্যা', 4, '49.00', NULL, NULL, NULL),
(324, 119, 'আকাশমনি', 23, '174.00', NULL, NULL, NULL),
(325, 120, 'ইউক্যা', 6, '104.00', NULL, NULL, NULL),
(326, 120, 'আকাশমনি', 21, '262.00', NULL, NULL, NULL),
(327, 121, 'ইউক্যা', 5, '56.00', NULL, NULL, NULL),
(328, 121, 'আকাশমনি', 22, '177.00', NULL, NULL, NULL),
(329, 122, 'আকাশমনি', 19, '57.00', NULL, NULL, NULL),
(330, 122, 'ইউক্যা', 8, '76.00', NULL, NULL, NULL),
(331, 123, 'ইউক্যা', 25, '298.00', NULL, NULL, NULL),
(332, 123, 'আকাশমনি', 2, '3.00', NULL, NULL, NULL),
(333, 124, 'ইউক্যা', 26, '254.00', NULL, NULL, NULL),
(334, 124, 'আকাশমনি', 1, '2.00', NULL, NULL, NULL),
(335, 125, 'ইউক্যা', 21, '299.00', NULL, NULL, NULL),
(336, 125, 'আকাশমনি', 6, '45.00', NULL, NULL, NULL),
(337, 126, 'ইউক্যা', 18, '154.00', NULL, NULL, NULL),
(338, 126, 'আকাশমনি', 7, '79.00', NULL, NULL, NULL),
(339, 126, 'মিনজিরি', 2, '26.00', NULL, NULL, NULL),
(340, 127, 'ইউক্যা', 20, '212.00', NULL, NULL, NULL),
(341, 127, 'আকাশমনি', 4, '13.00', NULL, NULL, NULL),
(342, 127, 'মিনজিরি', 3, '21.00', NULL, NULL, NULL),
(343, 128, 'ইউক্যা', 22, '254.00', NULL, NULL, NULL),
(344, 128, 'আকাশমনি', 4, '19.00', NULL, NULL, NULL),
(345, 128, 'মিনজিরি', 1, '9.00', NULL, NULL, NULL),
(346, 129, 'ইউক্যা', 12, '139.00', NULL, NULL, NULL),
(347, 129, 'আকাশমনি', 15, '109.00', NULL, NULL, NULL),
(348, 130, 'ইউক্যা', 1, '19.00', NULL, NULL, NULL),
(349, 130, 'আকাশমনি', 26, '253.00', NULL, NULL, NULL),
(350, 131, 'আকাশমনি', 24, '230.00', NULL, NULL, NULL),
(351, 131, 'ইউক্যা', 3, '76.00', NULL, NULL, NULL),
(352, 132, 'আকাশমনি', 23, '152.00', NULL, NULL, NULL),
(353, 132, 'ইউক্যা', 4, '93.00', NULL, NULL, NULL),
(354, 133, 'আকাশমনি', 19, '108.00', NULL, NULL, NULL),
(355, 133, 'ইউক্যা', 8, '111.00', NULL, NULL, NULL),
(356, 134, 'আকাশমনি', 25, '179.00', NULL, NULL, NULL),
(357, 134, 'ইউক্যা', 2, '31.00', NULL, NULL, NULL),
(358, 135, 'আকাশমনি', 18, '164.00', NULL, NULL, NULL),
(359, 135, 'ইউক্যা', 9, '88.00', NULL, NULL, NULL),
(360, 136, 'আকাশমনি', 22, '312.00', NULL, NULL, NULL),
(361, 136, 'ইউক্যা', 1, '16.00', NULL, NULL, NULL),
(362, 136, 'মিনজিরি', 3, '35.00', NULL, NULL, NULL),
(363, 136, 'কড়ই', 1, '58.00', NULL, NULL, NULL),
(364, 137, 'আকাশমনি', 20, '248.00', NULL, NULL, NULL),
(365, 137, 'মিনজিরি', 6, '92.00', NULL, NULL, NULL),
(366, 137, 'কড়ই', 1, '9.00', NULL, NULL, NULL),
(367, 138, 'আকাশমনি', 1, '28.00', NULL, NULL, NULL),
(368, 138, 'ইউক্যা', 9, '224.00', NULL, NULL, NULL),
(369, 139, 'আকাশমনি', 24, '323.00', NULL, NULL, NULL),
(370, 139, 'ইউক্যা', 2, '51.00', NULL, NULL, NULL),
(371, 139, 'মিনজিরি', 1, '11.00', NULL, NULL, NULL),
(372, 140, 'আকাশমনি', 25, '159.00', NULL, NULL, NULL),
(373, 140, 'ইউক্যা', 2, '34.00', NULL, NULL, NULL),
(374, 141, 'আকাশমনি', 26, '223.00', NULL, NULL, NULL),
(375, 141, 'ইউক্যা', 7, '168.00', NULL, NULL, NULL),
(376, 142, 'ইউক্যা', 25, '308.00', NULL, NULL, NULL),
(377, 142, 'গামার', 1, '1.00', NULL, NULL, NULL),
(378, 142, 'জারুল', 1, '0.00', NULL, NULL, NULL),
(379, 143, 'ইউক্যা', 7, '97.00', NULL, NULL, NULL),
(380, 143, 'মিনজিরি', 11, '51.00', NULL, NULL, NULL),
(381, 143, 'গামার', 9, '35.00', NULL, NULL, NULL),
(382, 144, 'ইউক্যা', 13, '106.00', NULL, NULL, NULL),
(383, 144, 'মিনজিরি', 14, '78.00', NULL, NULL, NULL),
(384, 145, 'ইউক্যা', 9, '90.00', NULL, NULL, NULL),
(385, 145, 'আকাশমনি', 16, '123.00', NULL, NULL, NULL),
(386, 145, 'মিনজিরি', 2, '7.00', NULL, NULL, NULL),
(387, 146, 'আকাশমনি', 14, '102.00', NULL, NULL, NULL),
(388, 146, 'ইউক্যা', 7, '161.00', NULL, NULL, NULL),
(389, 146, 'গামার', 6, '39.00', NULL, NULL, NULL),
(390, 147, 'ইউক্যা', 22, '195.00', NULL, NULL, NULL),
(391, 147, 'আকাশমনি', 2, '6.00', NULL, NULL, NULL),
(392, 147, 'মিনজিরি', 3, '10.00', NULL, NULL, NULL),
(393, 148, 'আকাশমনি', 160, '158.00', NULL, NULL, NULL),
(394, 149, 'আকাশমনি', 158, '168.00', NULL, NULL, NULL),
(395, 149, 'মেহগনি', 2, '0.00', NULL, NULL, NULL),
(396, 150, 'আকাশমনি', 91, '118.00', NULL, NULL, NULL),
(397, 150, 'ইউক্যা', 8, '67.00', NULL, NULL, NULL),
(398, 150, 'ইপিল ইপিল', 1, '3.00', NULL, NULL, NULL),
(399, 151, 'আকাশমনি', 113, '132.00', NULL, NULL, NULL),
(400, 151, 'ইউক্যা', 7, '33.00', NULL, NULL, NULL),
(401, 152, 'আকাশমনি', 120, '177.00', NULL, NULL, NULL),
(402, 153, 'আকাশমনি', 140, '166.00', NULL, NULL, NULL),
(403, 154, 'আকাশমনি', 160, '172.00', NULL, NULL, NULL),
(404, 155, 'আকাশমনি', 100, '167.00', NULL, NULL, NULL),
(405, 156, 'আকাশমনি', 99, '146.00', NULL, NULL, NULL),
(406, 156, 'ইউক্যা', 1, '5.00', NULL, NULL, NULL),
(407, 157, 'আকাশমনি', 159, '165.00', NULL, NULL, NULL),
(408, 157, 'বকাইন', 1, '1.00', NULL, NULL, NULL),
(409, 158, 'আকাশমনি', 97, '171.00', NULL, NULL, NULL),
(410, 158, 'ইউক্যা', 2, '14.00', NULL, NULL, NULL),
(411, 158, 'বকাইন', 1, '0.00', NULL, NULL, NULL),
(412, 159, 'আকাশমনি', 95, '106.00', NULL, NULL, NULL),
(413, 159, 'ইউক্যা', 5, '36.00', NULL, NULL, NULL),
(414, 160, 'আকাশমনি', 117, '138.00', NULL, NULL, NULL),
(415, 160, 'ইউক্যা', 3, '23.00', NULL, NULL, NULL),
(416, 161, 'আকাশমনি', 98, '155.00', NULL, NULL, NULL),
(417, 161, 'হরতকি', 1, '9.00', NULL, NULL, NULL),
(418, 161, 'শিশু', 1, '5.00', NULL, NULL, NULL),
(419, 162, 'আকাশমনি', 114, '119.00', NULL, NULL, NULL),
(420, 162, 'ইউক্যা', 6, '52.00', NULL, NULL, NULL),
(421, 163, 'আকাশমনি', 98, '143.00', NULL, NULL, NULL),
(422, 163, 'ইউক্যা', 1, '15.00', NULL, NULL, NULL),
(423, 163, 'জিগনি', 1, '1.00', NULL, NULL, NULL),
(424, 164, 'আকাশমনি', 97, '143.00', NULL, NULL, NULL),
(425, 164, 'ইউক্যা', 3, '20.00', NULL, NULL, NULL),
(426, 165, 'আকাশমনি', 95, '114.00', NULL, NULL, NULL),
(427, 165, 'ইউক্যা', 4, '28.00', NULL, NULL, NULL),
(428, 165, 'গামার', 1, '0.00', NULL, NULL, NULL),
(429, 166, 'আকাশমনি', 129, '120.00', NULL, NULL, NULL),
(430, 166, 'ইউক্যা', 11, '40.00', NULL, NULL, NULL),
(431, 167, 'আকাশমনি', 139, '149.00', NULL, NULL, NULL),
(432, 167, 'ইপিল ইপিল', 1, '1.00', NULL, NULL, NULL),
(433, 168, 'আকাশমনি', 120, '159.00', NULL, NULL, NULL),
(434, 169, 'আকাশমনি', 138, '150.00', NULL, NULL, NULL),
(435, 169, 'ইপিল ইপিল', 1, '3.00', NULL, NULL, NULL),
(436, 169, 'গামার', 1, '0.00', NULL, NULL, NULL),
(437, 170, 'আকাশমনি', 159, '136.00', NULL, NULL, NULL),
(438, 170, 'গামার', 1, '0.00', NULL, NULL, NULL),
(439, 171, 'আকাশমনি', 140, '147.00', NULL, NULL, NULL),
(440, 172, 'আকাশমনি', 118, '188.00', NULL, NULL, NULL),
(441, 172, 'গামার', 2, '8.00', NULL, NULL, NULL),
(442, 173, 'আকাশমনি', 78, '164.00', NULL, NULL, NULL),
(443, 173, 'ইউক্যা', 2, '9.00', NULL, NULL, NULL),
(444, 174, 'আকাশমনি', 153, '119.00', NULL, NULL, NULL),
(445, 174, 'ইউক্যা', 5, '41.00', NULL, NULL, NULL),
(446, 174, 'মেহগনি', 2, '0.00', NULL, NULL, NULL),
(447, 175, 'আকাশমনি', 238, '151.00', NULL, NULL, NULL),
(448, 175, 'মেহগনি', 2, '2.00', NULL, NULL, NULL),
(449, 176, 'আকাশমনি', 160, '167.00', NULL, NULL, NULL),
(450, 177, 'আকাশমনি', 82, '178.00', NULL, NULL, NULL),
(451, 178, 'আকাশমনি', 122, '135.00', NULL, NULL, NULL),
(452, 178, 'ইউক্যা', 19, '29.00', NULL, NULL, NULL),
(453, 178, 'শিল কড়ই', 4, '10.00', NULL, NULL, NULL),
(454, 178, 'শিশু', 5, '8.00', NULL, NULL, NULL),
(455, 179, 'আকাশমনি', 106, '135.00', NULL, NULL, NULL),
(456, 179, 'ইউক্যা', 5, '29.00', NULL, NULL, NULL),
(457, 179, 'শিশু', 15, '10.00', NULL, NULL, NULL),
(458, 179, 'কড়ই', 2, '8.00', NULL, NULL, NULL),
(459, 180, 'ইউক্যা', 17, '203.00', NULL, NULL, NULL),
(460, 180, 'আকাশমনি', 3, '3.00', NULL, NULL, NULL),
(461, 181, 'আকাশমনি', 17, '85.00', NULL, NULL, NULL),
(462, 181, 'ইউক্যা', 6, '77.00', NULL, NULL, NULL),
(463, 181, 'বকাইন', 1, '2.00', NULL, NULL, NULL),
(464, 181, 'ইপিল ইপিল', 1, '1.00', NULL, NULL, NULL),
(465, 182, 'আকাশমনি', 25, '64.00', NULL, NULL, NULL),
(466, 182, 'ইউক্যা', 2, '37.00', NULL, NULL, NULL),
(467, 182, 'বকাইন', 16, '30.00', NULL, NULL, NULL),
(468, 182, 'শিল কড়ই', 2, '12.00', NULL, NULL, NULL),
(469, 183, 'আকাশমনি', 34, '105.00', NULL, NULL, NULL),
(470, 183, 'ইউক্যা', 1, '12.00', NULL, NULL, NULL),
(471, 183, 'বকাইন', 21, '42.00', NULL, NULL, NULL),
(472, 183, 'ইপিল ইপিল', 3, '10.00', NULL, NULL, NULL),
(473, 184, 'আকাশমনি', 30, '107.00', NULL, NULL, NULL),
(474, 184, 'ইউক্যা', 7, '32.00', NULL, NULL, NULL),
(475, 184, 'বকাইন', 20, '49.00', NULL, NULL, NULL),
(476, 184, 'ইপিল ইপিল', 1, '2.00', NULL, NULL, NULL),
(477, 184, 'শিল কড়ই', 1, '2.00', NULL, NULL, NULL),
(478, 184, 'শিমুল', 1, '1.00', NULL, NULL, NULL),
(479, 185, 'আকাশমনি', 12, '76.00', NULL, NULL, NULL),
(480, 185, 'ইউক্যা', 6, '87.00', NULL, NULL, NULL),
(481, 185, 'বকাইন', 10, '13.00', NULL, NULL, NULL),
(482, 185, 'শিল কড়ই', 1, '4.00', NULL, NULL, NULL),
(483, 185, 'ইপিল ইপিল', 1, '8.00', NULL, NULL, NULL),
(484, 186, 'আকাশমনি', 15, '48.00', NULL, NULL, NULL),
(485, 186, 'ইউক্যা', 10, '95.00', NULL, NULL, NULL),
(486, 186, 'বকাইন', 5, '5.00', NULL, NULL, NULL),
(487, 187, 'আকাশমনি', 12, '36.00', NULL, NULL, NULL),
(488, 187, 'ইউক্যা', 12, '86.00', NULL, NULL, NULL),
(489, 187, 'বকাইন', 1, '2.00', NULL, NULL, NULL),
(490, 187, 'ইপিল ইপিল', 2, '11.00', NULL, NULL, NULL),
(491, 187, 'শিল কড়ই', 2, '11.00', NULL, NULL, NULL),
(492, 187, 'শিমুল', 1, '16.00', NULL, NULL, NULL),
(493, 188, 'আকাশমনি', 18, '39.00', NULL, NULL, NULL),
(494, 188, 'ইউক্যা', 17, '129.00', NULL, NULL, NULL),
(495, 188, 'বকাইন', 20, '52.00', NULL, NULL, NULL),
(496, 188, 'ইপিল ইপিল', 3, '4.00', NULL, NULL, NULL),
(497, 188, 'শিমুল', 1, '2.00', NULL, NULL, NULL),
(498, 188, 'হরতকি', 1, '8.00', NULL, NULL, NULL),
(499, 189, 'ইউক্যা', 15, '97.00', NULL, NULL, NULL),
(500, 189, 'ইপিল ইপিল', 17, '33.00', NULL, NULL, NULL),
(501, 189, 'বকাইন', 16, '39.00', NULL, NULL, NULL),
(502, 189, 'আকাশমনি', 1, '0.00', NULL, NULL, NULL),
(503, 189, 'কড়ই', 1, '0.00', NULL, NULL, NULL),
(504, 190, 'আকাশমনি', 17, '66.00', NULL, NULL, NULL),
(505, 190, 'ইউক্যা', 14, '110.00', NULL, NULL, NULL),
(506, 190, 'ইপিল ইপিল', 2, '2.00', NULL, NULL, NULL),
(507, 190, 'বকাইন', 1, '1.00', NULL, NULL, NULL),
(508, 190, 'শিল কড়ই', 1, '2.00', NULL, NULL, NULL),
(509, 191, 'আকাশমনি', 10, '200.00', NULL, NULL, NULL),
(510, 191, 'মেহগুনী', 10, '20.00', NULL, NULL, NULL),
(511, 191, 'সেগুন', 10, '25.00', NULL, NULL, NULL),
(512, 192, 'ইউক্যা', 10, '1000.00', NULL, NULL, NULL),
(513, 192, 'বকাইন', 5, '500.00', NULL, NULL, NULL),
(514, 192, 'জারুল', 6, '600.00', NULL, NULL, NULL),
(515, 193, 'ইউক্যা', 10, '1000.00', NULL, NULL, NULL),
(516, 193, 'বকাইন', 5, '1000.00', NULL, NULL, NULL),
(517, 193, 'জারুল', 5, '100.00', NULL, NULL, NULL),
(518, 194, 'আকাশমনি', 10, '500.00', NULL, NULL, NULL),
(519, 194, 'গামার', 11, '1100.00', NULL, NULL, NULL),
(520, 194, 'জারুল', 16, '1600.00', NULL, NULL, NULL),
(521, 195, 'ইউক্যা', 10, '1000.00', NULL, NULL, NULL),
(522, 195, 'বকাইন', 5, '500.00', NULL, NULL, NULL),
(523, 195, 'আকাশমনি', 6, '600.00', NULL, NULL, NULL),
(524, 195, 'জারুল', 5, '500.00', NULL, NULL, NULL),
(525, 196, 'ইউক্যা', 5, '500.00', NULL, NULL, NULL),
(526, 196, 'বকাইন', 8, '800.00', NULL, NULL, NULL),
(527, 196, 'আকাশমনি', 8, '900.00', NULL, NULL, NULL),
(528, 196, 'জারুল', 5, '500.00', NULL, NULL, NULL),
(529, 196, 'মিনজিরী', 4, '400.00', NULL, NULL, NULL),
(530, 197, 'ইউক্যা', 5, '500.00', NULL, NULL, NULL),
(531, 197, 'বকাইন', 3, '300.00', NULL, NULL, NULL),
(532, 197, 'আকাশমনি', 5, '500.00', NULL, NULL, NULL),
(533, 198, 'ইউক্যা', 10, '1000.00', NULL, NULL, NULL),
(534, 198, 'বকাইন', 5, '500.00', NULL, NULL, NULL),
(535, 198, 'আকাশমনি', 3, '300.00', NULL, NULL, NULL),
(536, 198, 'জারুল', 4, '400.00', NULL, NULL, NULL),
(537, 199, 'ইউক্যা', 10, '100.00', NULL, NULL, NULL),
(538, 199, 'বকাইন', 20, '200.00', NULL, NULL, NULL),
(539, 199, 'আকাশমনি', 30, '300.00', NULL, NULL, NULL),
(540, 200, 'ইউক্যা', 10, '200.00', NULL, NULL, NULL),
(541, 200, 'বকাইন', 5, '500.00', NULL, NULL, NULL),
(542, 200, 'আকাশমনি', 9, '900.00', NULL, NULL, NULL),
(543, 201, 'বকাইন', 10, '20.00', NULL, NULL, NULL),
(544, 201, 'আকাশমনি', 20, '30.00', NULL, NULL, NULL),
(545, 201, 'গামার', 25, '33.00', NULL, NULL, NULL),
(546, 201, 'জারুল', 5, '300.00', NULL, NULL, NULL),
(547, 201, 'মিনজিরী', 6, '600.00', NULL, NULL, NULL),
(548, 201, 'শাল', 50, '33.00', NULL, NULL, NULL),
(549, 201, 'কড়াই', 40, '60.00', NULL, NULL, NULL),
(550, 201, 'আগর', 33, '3300.00', NULL, NULL, NULL),
(551, 202, 'ইউক্যা', 10, '200.00', NULL, NULL, NULL),
(552, 202, 'বকাইন', 20, '300.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `union_parishads`
--

CREATE TABLE `union_parishads` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thana_id` int NOT NULL,
  `district_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `union_parishads`
--

INSERT INTO `union_parishads` (`id`, `name`, `thana_id`, `district_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '১নং চেহেলগাজী', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(2, '২নং সুন্দরবন', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(3, '৩নং ফাজিলপুর', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(4, '৪নং শেখপুরা', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(5, '৫নং শশরা', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(6, '৬নং আউলিয়াপুর', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(7, '৭নং উথরাইল', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(8, '৮নং শংকরপুর', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(9, '৯নং আস্করপুর', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(10, '১০নং কমলপুর', 1, 7, '2023-08-26 13:05:33', NULL, NULL),
(11, '০১নং আজিমপুর', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(12, '২নং ফরক্কাবাদ', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(13, '৩নং ধামইর', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(14, '৪নং শহরগ্রাম', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(15, '৫নং বিরল', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(16, '৬নং ভান্ডারা', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(17, '৭নং বিজোরা', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(18, '৮নং ধর্মপুর', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(19, '৯নং মঙ্গলপুর', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(20, '১০নং রানীপুকুর', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(21, '১১নং পলাশ বাড়ি', 2, 7, '2023-08-26 13:05:33', NULL, NULL),
(22, '১ নং নাফানগর', 3, 7, '2023-08-26 13:05:33', NULL, NULL),
(23, '২ নং ইশানিয়া', 3, 7, '2023-08-26 13:05:33', NULL, NULL),
(24, '৩ নং মুশিদহাট', 3, 7, '2023-08-26 13:05:33', NULL, NULL),
(25, '৪ নং আটগাঁও', 3, 7, '2023-08-26 13:05:33', NULL, NULL),
(26, '৫ নং ছাতইল', 3, 7, '2023-08-26 13:05:33', NULL, NULL),
(27, '৬ নং রণগাঁও', 3, 7, '2023-08-26 13:05:33', NULL, NULL),
(28, '১নং ডাবর', 4, 7, '2023-08-26 13:05:33', NULL, NULL),
(29, '২নং রসুলপুর', 4, 7, '2023-08-26 13:05:33', NULL, NULL),
(30, '৩নং মুকুন্দপুর', 4, 7, '2023-08-26 13:05:33', NULL, NULL),
(31, '৪নং তারগাঁও', 4, 7, '2023-08-26 13:05:33', NULL, NULL),
(32, '৫নং সুন্দরপুর', 4, 7, '2023-08-26 13:05:33', NULL, NULL),
(33, '৬নং রামচন্দ্রপুর', 4, 7, '2023-08-26 13:05:33', NULL, NULL),
(34, '১নং শিবরামপুর', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(35, '২নং পলাশবাড়ী', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(36, '৩নং শতগ্রাম', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(37, '৪নং পাল্টাপুর', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(38, '৫নং সুজালপুর', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(39, '৬নং নিজপাড়া', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(40, '৭নং মোহাম্মদপুর', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(41, '৮নং ভোগনগর', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(42, '৯নং সাতোর', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(43, '১০নং মোহনপুর', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(44, '১১নং মরিচা', 5, 7, '2023-08-26 13:05:33', NULL, NULL),
(45, '০১ নং বুলাকিপুর', 6, 7, '2023-08-26 13:05:33', NULL, NULL),
(46, '০২নং পালশা', 6, 7, '2023-08-26 13:05:33', NULL, NULL),
(47, '০৩ নং সিংড়া', 6, 7, '2023-08-26 13:05:33', NULL, NULL),
(48, '০৪ নং ঘোড়াঘাট', 6, 7, '2023-08-26 13:05:33', NULL, NULL),
(49, '১নংখট্টামাধবপাড়া', 7, 7, '2023-08-26 13:05:33', NULL, NULL),
(50, '২নং বোয়ালদাড়', 7, 7, '2023-08-26 13:05:33', NULL, NULL),
(51, '৩নং আলীহাট', 7, 7, '2023-08-26 13:05:33', NULL, NULL),
(52, '০১নং বেলাইচন্ডি', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(53, '০২নং মন্মথপুর', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(54, '০৩ নং রামপুর', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(55, '০৪ নং পলাশবাড়ী', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(56, '০৫ নং চন্ডিপুর', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(57, '০৬ নং মোমিনপুর', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(58, '০৭ নং মোস্তফাপুর', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(59, '০৮ নং হাবড়া', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(60, '০৯ নং হামিদপুর', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(61, '১০ নং হরিরামপুর', 8, 7, '2023-08-26 13:05:33', NULL, NULL),
(62, '১নং মুকুন্দপুর', 9, 7, '2023-08-26 13:05:33', NULL, NULL),
(63, '২নং কাটলা', 9, 7, '2023-08-26 13:05:33', NULL, NULL),
(64, '৩নং খানপুর', 9, 7, '2023-08-26 13:05:33', NULL, NULL),
(65, '৪নং দিওড়', 9, 7, '2023-08-26 13:05:33', NULL, NULL),
(66, '৫নং বিনাইল', 9, 7, '2023-08-26 13:05:33', NULL, NULL),
(67, '৬নং জোতবানী', 9, 7, '2023-08-26 13:05:33', NULL, NULL),
(68, '৭নং পলিপ্রয়াগপুর', 9, 7, '2023-08-26 13:05:33', NULL, NULL),
(69, '১নং আলোকঝাড়ী', 10, 7, '2023-08-26 13:05:33', NULL, NULL),
(70, '২নং ভেড়ভেড়ী', 10, 7, '2023-08-26 13:05:33', NULL, NULL),
(71, '৩নং আঙ্গার পাড়া', 10, 7, '2023-08-26 13:05:33', NULL, NULL),
(72, '৪নং খামার পাড়া', 10, 7, '2023-08-26 13:05:33', NULL, NULL),
(73, '৫নং ভাবকী', 10, 7, '2023-08-26 13:05:33', NULL, NULL),
(74, '৬নং গোয়ালডিহি', 10, 7, '2023-08-26 13:05:33', NULL, NULL),
(75, '০১নং নশরতপুর', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(76, '২নং সাতনালা', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(77, '৩নং ফতেজং পুর', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(78, '০৪নং ইবস পুর', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(79, '০৫নং আব্দুল পুর', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(80, '০৬নং অমর পুর', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(81, '৭নং আউলিয়াপুকুর', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(82, '০৮নং সাইতাড়া', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(83, '০৯নং ভিয়াইল', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(84, '১০নং পুনট্টি', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(85, '১১নং তেতুলিয়া', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(86, '১২নং আলোকডিহি', 11, 7, '2023-08-26 13:05:33', NULL, NULL),
(87, '1নং এলুয়াড়ী', 12, 7, '2023-08-26 13:05:33', NULL, NULL),
(88, '২নং আলাদীপুর', 12, 7, '2023-08-26 13:05:33', NULL, NULL),
(89, '৩নং কাজিহাল', 12, 7, '2023-08-26 13:05:33', NULL, NULL),
(90, '৪নং বেতদীঘি', 12, 7, '2023-08-26 13:05:33', NULL, NULL),
(91, '৫নং খয়েরবাড়ী', 12, 7, '2023-08-26 13:05:33', NULL, NULL),
(92, '৬নং দৌলতপুর', 12, 7, '2023-08-26 13:05:33', NULL, NULL),
(93, '৭নং শিবনগর', 12, 7, '2023-08-26 13:05:33', NULL, NULL),
(94, '১নং জয়পুর', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(95, '২নং বিনোদনগর', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(96, '৩ নং গোলাপগঞ্জ', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(97, '৪নং শালখুরিয়া', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(98, '৫নং পুটিমারা', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(99, '৬নং ভাদুরিয়া', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(100, '৭নং দাউদপুর', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(101, '৮নং মাহমুদপুর', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(102, '৯নং কুশদহ', 13, 7, '2023-08-26 13:05:33', NULL, NULL),
(103, 'বাংলাবান্ধা', 17, 9, '2023-08-26 13:05:33', NULL, NULL),
(104, 'তিরনইহাট', 17, 9, '2023-08-26 13:05:33', NULL, NULL),
(105, 'তেঁতুলিয়া', 17, 9, '2023-08-26 13:05:33', NULL, NULL),
(106, 'শালবাহান', 17, 9, '2023-08-26 13:05:33', NULL, NULL),
(107, 'ভজনপুর', 17, 9, '2023-08-26 13:05:33', NULL, NULL),
(108, 'বুড়াবুড়ি', 17, 9, '2023-08-26 13:05:33', NULL, NULL),
(109, 'দেবনগর', 17, 9, '2023-08-26 13:05:33', NULL, NULL),
(110, 'চাকলাহাট', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(111, 'সাতমেড়া', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(112, 'অমরখানা', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(113, 'হাড়িভাষা', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(114, 'কাঃ কাজলদিঘি', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(115, 'ধাক্কামারা', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(116, 'গড়িনাবাড়ী', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(117, 'মাগুড়া', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(118, 'পঞ্চগড় সদর', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(119, 'হাফিজাবাদ', 18, 9, '2023-08-26 13:05:33', NULL, NULL),
(120, 'তোড়িয়া', 16, 9, '2023-08-26 13:05:33', NULL, NULL),
(121, 'আলোয়াখোওয়া', 16, 9, '2023-08-26 13:05:33', NULL, NULL),
(122, 'রাধানগর', 16, 9, '2023-08-26 13:05:33', NULL, NULL),
(123, 'ধামোর', 16, 9, '2023-08-26 13:05:33', NULL, NULL),
(124, 'মির্জাপুর', 16, 9, '2023-08-26 13:05:33', NULL, NULL),
(125, 'বলরামপুর', 16, 9, '2023-08-26 13:05:33', NULL, NULL),
(126, 'বেংহারি', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(127, 'ময়দানদিঘি', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(128, 'ঝলইশালশিরি', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(129, 'সাকোয়া', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(130, 'পাঁচপীর', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(131, 'বোদা', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(132, 'কাজলদিঘী কালিয়াগঞ্জ', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(133, 'মাড়েয়া', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(134, 'বড়শশী', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(135, 'চন্দনবাড়ী', 14, 9, '2023-08-26 13:05:33', NULL, NULL),
(136, 'দেবীগঞ্জ', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(137, 'সোনাহার', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(138, 'দন্ডপাল', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(139, 'শালডাংগা', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(140, 'টেপ্রীগঞ্জ', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(141, 'চিলাহ\r\n\r\nাটি', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(142, 'সুন্দরদিঘী', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(143, 'পামুলী', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(144, 'দেবীডুবা', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(145, 'চেংঠি হাজরাডাঙ্গা', 15, 9, '2023-08-26 13:05:33', NULL, NULL),
(146, 'রুহিয়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(147, 'আখানগর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(148, 'আকচা', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(149, 'বড়গাঁও', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(150, 'বালিয়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(151, 'আউলিয়াপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(152, 'চিলারং', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(153, 'রহিমানপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(154, 'রায়পুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(155, 'জামালপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(156, 'মোহম্মাদপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(157, 'সালন্দর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(158, 'গড়েয়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(159, 'রাজাগাঁও', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(160, 'দেবীপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(161, 'নারগুন', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(162, 'জগন্নাথপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(163, 'শুখানপুকুরী', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(164, 'বেগুনবাড়ী', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(165, 'রুহিয়া পশ্চিম', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(166, 'ঢোলার হাট', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(167, 'সেনুয়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(168, 'পাড়িয়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(169, 'চাড়োল', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(170, 'ধনতলা', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(171, 'বড়পলাশ বাড়ী', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(172, 'দুওসুও', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(173, 'ভানোর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(174, 'আমজানখোর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(175, 'বড়বাড়ি', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(176, 'সৈয়দপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(177, 'ভোমরাদহ', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(178, 'কোষারাণীগঞ্জ', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(179, 'খনগাঁও', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(180, 'পীরগঞ্জ', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(181, 'হাজীপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(182, 'দৌলতপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(183, 'সেনগাঁও', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(184, 'জাবর হাট', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(185, 'বৈরচুনা', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(186, 'হরিপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(187, 'গেদুড়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(188, 'আমগাঁও', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(189, 'বকুয়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(190, 'ডাঙ্গীপাড়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(191, 'ভাতুরিয়া', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(192, 'ধর্মগড়', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(193, 'নেকমরদ', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(194, 'হোসেনগাঁও', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(195, 'লেহেম্বা', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(196, 'বাচোর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(197, 'কাশিপুর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(198, 'রাতোর', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(199, 'নন্দুয়ার', 19, 8, '2023-08-26 13:05:33', NULL, NULL),
(200, 'Marketing', 24, 22, '2023-10-28 07:09:43', '2023-10-28 07:09:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sfpc_id` int UNSIGNED DEFAULT NULL,
  `range_id` int DEFAULT NULL,
  `sfntc_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `designation`, `email`, `phone_number`, `profile_photo`, `email_verified_at`, `username`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `sfpc_id`, `range_id`, `sfntc_id`) VALUES
(1, 'Admin', NULL, 'admin@email.com', NULL, NULL, '2023-06-26 22:52:21', 'admin', '$2a$12$LQktvjaxsBG2/NsOo0bdselVglryLeiPPDwg7jEqlcBGZhrcEPj9G', 'zfiwCNxYW9S48SEJLJrpOd6Rku7wtAJdlru7qAPMQYObsL5v5BgMnAFp6WlB', '2023-04-08 06:51:18', '2023-05-24 11:58:21', 1, NULL, 1, NULL),
(2, 'User', NULL, 'user@email.com', NULL, NULL, '2023-06-26 22:52:21', 'user', '$2y$10$V1.QihIb9O8tPHGrrdIPtuEa3EDvuXW9lORPkOXPBTmiZVpcMgGle', NULL, '2023-04-08 06:51:18', '2023-04-08 06:51:18', 1, NULL, NULL, NULL),
(3, 'SFNTC', NULL, 'sfntc@gmail.com', NULL, NULL, '2023-06-26 22:52:21', 'sfntc', '$2y$10$ToqApJlKKItZwfzTMe/QTOHQrxW2KxRrosXhtFZ3aDGqGgvOx/bT6', NULL, '2023-05-16 11:52:41', '2023-05-16 11:58:12', 1, NULL, NULL, 3),
(4, 'সদর রেঞ্জ', 'রেঞ্জ কর্মকর্তা', 'dsadar@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'dsadar', '$2y$10$bOa.S6WK3k2v1hZgJFOoKOuhqYrBM4m82K8D1IRiuLmIlF8kM68KW', 'IXEcpHOMuXFDdX2CHgJ0noG4Ucz10RqjGpB4ALk2d6cTJI7p1J27EN7QYwZ7', '2023-06-26 08:25:01', '2023-06-26 08:25:01', 1, NULL, 1, NULL),
(5, 'চরকাই রেঞ্জ', 'রেঞ্জ কর্মকর্তা', 'charkai@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'charkai', '$2a$12$LQktvjaxsBG2/NsOo0bdselVglryLeiPPDwg7jEqlcBGZhrcEPj9G', NULL, '2023-06-26 08:30:53', '2023-06-26 08:30:53', 1, NULL, 2, NULL),
(6, 'মধ্যপাড়া রেঞ্জ', 'রেঞ্জ কর্মকর্তা', 'maddhapara@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'maddhapara', '$2y$10$SPun2bbH1Xb8NMA36moFFuq954LoWOM0G/S5GmIhGOa0drXMIzmja', NULL, '2023-06-26 10:51:29', '2023-06-26 10:51:29', 1, NULL, 5, NULL),
(7, 'ঠাকুরগাঁও রেঞ্জ', 'রেঞ্জ কর্মকর্তা', 'thakurgaon@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'thakurgaon', '$2a$12$LQktvjaxsBG2/NsOo0bdselVglryLeiPPDwg7jEqlcBGZhrcEPj9G', NULL, '2023-06-26 10:55:54', '2023-06-26 10:55:54', 1, NULL, 6, NULL),
(8, 'দেবীগঞ্জ রেঞ্জ', 'রেঞ্জ কর্মকর্তা', 'debiganj@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'debiganj', '$2y$10$uU6FqTtXS1ZUQa6sPDaVY.g0qk6yB8bgfqCxepUrvetTo5ifk60fG', NULL, '2023-06-26 11:01:32', '2023-06-26 11:01:32', 1, NULL, 7, NULL),
(29, 'ধর্মপুর বিট', 'বিট কর্মকর্তা', 'dharmapurbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'dharmapurbeat', '$2y$10$QFsdtxb0/NPIkx3LXJzeneWnbOESmVA3hYdG91o1h9MnUcx/p8UUy', 'Z80nkDk5wIMnhRtM2uqnIsYybCgqT83Lr6omQxSa4v3ZLpti3wEF9gm24vXW', NULL, '2023-06-26 20:25:43', 1, NULL, NULL, NULL),
(30, 'চরকাই সদর বিট', 'বিট কর্মকর্তা', 'charkisadarbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'charkisadarbeat', '$2y$10$Ml9hz1DyKE9jd2mmtesowuw1NjkMAo4R9DHWEI6glih/V9ox0v7ty', NULL, NULL, '2023-06-26 20:26:11', 1, NULL, NULL, NULL),
(31, 'প্রায়াগপুর বিট', 'বিট কর্মকর্তা', 'prayagpurbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'prayagpurbeat', '$2y$10$8IpZzh5dFN.J8R/eX9Br5u2bxnGYOc59lL1Q1PI28mHPawE7QCCi6', NULL, NULL, '2023-06-26 20:27:29', 1, NULL, NULL, NULL),
(32, 'নবাবগঞ্জ বিট', 'বিট কর্মকর্তা', 'nawabganjbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'nawabganjbeat', '$2y$10$4VRHuTWy3ttGHNJxkpAWm.9yskej/9rs54DS4OJ9fefSa4sRv6iuS', NULL, NULL, '2023-06-26 20:28:02', 1, NULL, NULL, NULL),
(33, 'হরিপুর বিট', 'বিট কর্মকর্তা', 'horipurbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'horipurbeat', '$2y$10$kHHxl72z4UxxErvYOPOR3.gY9SqSDqU9x/L3NsT77A3cvki8snZaa', NULL, NULL, '2023-06-26 20:28:41', 1, NULL, NULL, NULL),
(34, 'ভাদুরিয়া বিট', 'বিট কর্মকর্তা', 'vaduriyabeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'vaduriyabeat', '$2y$10$ktC29atUpdiGFbbT7xR44.NUdGxscN1Bi/5Fp7dAIahLnpOKMqGVG$2a$12$LQktvjaxsBG2/NsOo0bdselVglryLeiPPDwg7jEqlcBGZhrcEPj9G', NULL, NULL, '2023-06-26 20:29:11', 1, NULL, NULL, NULL),
(35, 'মধ্যপাড়া সদর বিট', 'বিট কর্মকর্তা', 'maddhaparasadarbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'maddhaparasadarbeat', '$2y$10$wx5Cbr3vCqgSryfnWdUwiOfPVwOm6mEOovaCngLIA89wlgOlp2rB2', NULL, NULL, '2023-06-26 20:30:03', 1, NULL, NULL, NULL),
(36, 'কুশদহ বিট', 'বিট কর্মকর্তা', 'kushdohobeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'kushdohobeat', '$2y$10$p71FzKKOZiYd5pahPfbT1um9YUDNz4TExbOUEg6SlL1AkOXEgo2j6', NULL, NULL, '2023-06-26 20:30:41', 1, NULL, NULL, NULL),
(37, 'আফতাবগঞ্জ বিট', 'বিট কর্মকর্তা', 'aftabganjbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'aftabganjbeat', '$2y$10$WzJ36TO9VKTpeF/.OHL6IOotDodbzmGjPc90Bb.T53ydoXZY10V.q', NULL, NULL, '2023-06-26 20:31:50', 1, NULL, NULL, NULL),
(38, 'ভবানীপুর বিট', 'বিট কর্মকর্তা', 'vobanipurbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'vobanipurbeat', '$2y$10$figfG78PMco5/KkpCUjykO0YIGuwnH4atxM3S5UAqFrr30pTeKo7q', NULL, NULL, '2023-06-26 20:33:41', 1, NULL, NULL, NULL),
(39, 'সিংড়া বিট', 'বিট কর্মকর্তা', 'singrabeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'singrabeat', '$2a$12$LQktvjaxsBG2/NsOo0bdselVglryLeiPPDwg7jEqlcBGZhrcEPj9G', NULL, NULL, '2023-06-26 20:35:46', 1, NULL, NULL, NULL),
(40, 'বীরগঞ্জ বিট', 'বিট কর্মকর্তা', 'birganjbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'birganjbeat', '$2y$10$cbPw2/cee2MzhKfhqQ6a9e8sykxdfrdvVbavMMLhbAmaA.U/I/x1y', NULL, NULL, '2023-06-26 20:36:18', 1, NULL, NULL, NULL),
(41, 'পীরগঞ্জ বিট', 'বিট কর্মকর্তা', 'pirganjbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'pirganjbeat', '$2y$10$w927u1p3hkKzedqP5oiECu4BDJ3KzP9upJ11hVI29rpPR.gxhftDW', NULL, NULL, '2023-06-26 20:36:40', 1, NULL, NULL, NULL),
(42, 'দেবীগঞ্জ সদর বিট', 'বিট কর্মকর্তা', 'debiganjsadarbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'debiganjsadarbeat', '$2y$10$7dCz652MHd3JAskvv9hoHe448Pxf9BWQRSnML3XZguInyvwLsT9Se', NULL, NULL, '2023-06-26 20:38:07', 1, NULL, NULL, NULL),
(43, 'বটতলী বিট', 'বিট কর্মকর্তা', 'bottolibeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'bottolibeat', '$2y$10$qyR9We69dUSZpDNk2ClwgeOTsSTsu.BApB18pirnKZYpeSk2eJB..', NULL, NULL, '2023-06-26 20:53:35', 1, NULL, NULL, NULL),
(44, 'বদেশ্বরী বিট', 'বিট কর্মকর্তা', 'bodeshwaribeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'bodeshwaribeat', '$2y$10$vC/Fuc3sbTQzg0GHU4DAY.14469Bq5UP0Fqp9Hfles4yE/gsjzudy', NULL, NULL, '2023-06-26 20:53:54', 1, NULL, NULL, NULL),
(45, 'পঞ্চগড় সদর বিট', 'বিট কর্মকর্তা', 'panchagarhsadarbeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'panchagarhsadarbeat', '$2y$10$D5RQZ53o3UXepos8G3j2P.eztRwoTZkQ1kkRbbqWc3fbnEggm6aGm', NULL, NULL, '2023-06-26 20:54:50', 1, NULL, NULL, NULL),
(46, 'তেঁতুলিয়া বিট', 'বিট কর্মকর্তা', 'tetuliabeat@mail.com', NULL, NULL, '2023-06-26 22:52:21', 'tetuliabeat', '$2y$10$q6d46XtFi70g9wt5sx9Tx.t8cyrJTMG.CXDPn6MPm8.8Cbk3daQJW', NULL, NULL, '2023-06-26 20:55:06', 1, NULL, NULL, NULL),
(50, 'Demo Bit', 'Demo Podobi', 'demo@gmail.com', '018797998978', NULL, '2023-06-26 22:52:21', 'demo', '$2y$10$QB/t9hfghLvpcWskF/gWMetAiVEFQrcc1IMRAkFRIcww09MlldrE6', NULL, '2023-10-31 13:11:12', '2023-10-31 13:11:12', 1, NULL, 13, NULL),
(51, 'Demo Bit Again', 'demo bit again', 'demoagain@gmail.com', '01867090247', NULL, '2023-10-31 14:29:39', 'demoagain', '$2y$10$G.GM5sbmj.nQ8KSD5AYeEuh9AKbBMh0/2X2/CmhOAfE5.snKzoWmG', NULL, '2023-10-31 14:29:39', '2023-10-31 14:29:39', 1, NULL, 14, NULL),
(52, 'Ertugrul', 'Beyim', 'ertugrul@gmail.com', '018797998978', NULL, '2023-11-01 09:31:34', 'ertugrul', '$2y$10$k1pUQZ/xJX..gbq4l./theYOUi7dKk4bLSlQRMEwNiZC1niDwIpwq', NULL, '2023-11-01 09:31:34', '2023-11-01 09:31:34', 1, NULL, 14, NULL),
(53, 'demosfpc', 'sfpc', 'sfpc@gmail.com', '01867090247', NULL, '2023-11-19 11:43:37', 'demosfpc', '$2y$10$QB/t9hfghLvpcWskF/gWMetAiVEFQrcc1IMRAkFRIcww09MlldrE6', NULL, '2023-11-19 11:43:37', '2023-11-19 11:43:37', 1, NULL, 13, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wood_lots`
--

CREATE TABLE `wood_lots` (
  `id` bigint UNSIGNED NOT NULL,
  `garden_id` bigint UNSIGNED NOT NULL,
  `division_group_no_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `range_lot_no_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel` mediumint NOT NULL,
  `bolli_count` mediumint NOT NULL,
  `tenderer_name_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quoted_rate` decimal(10,2) NOT NULL,
  `advance_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `advance_amount` decimal(10,2) NOT NULL,
  `collateral_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collateral_amount` decimal(10,2) NOT NULL,
  `tree_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_tree_count` int DEFAULT NULL,
  `total_number_of_trees` int DEFAULT NULL,
  `total_wood_amount` float DEFAULT NULL,
  `tree_count_from` mediumint DEFAULT NULL,
  `tree_count_to` mediumint DEFAULT NULL,
  `tendar_date` date DEFAULT NULL,
  `tendar_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lot_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sold_amount` decimal(10,2) DEFAULT NULL,
  `tree_count` int DEFAULT NULL,
  `wood_amount_sft` int DEFAULT NULL,
  `wood_fuel_sqft` int DEFAULT NULL,
  `wood_bolli_count` int DEFAULT NULL,
  `money_collection_slip_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_amount` decimal(10,2) DEFAULT NULL,
  `money_collection_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forest_revenew` decimal(10,2) DEFAULT NULL,
  `beneficiary_invoice_date` date DEFAULT NULL,
  `beneficiary_invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beneficiary_share_amount` decimal(10,2) DEFAULT NULL,
  `tff_invoice_date` date DEFAULT NULL,
  `tff_invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tff_share_amount` decimal(10,2) DEFAULT NULL,
  `money_deposit_slip_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_deposit` decimal(10,2) DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `edit_request` enum('none','requested','permitted','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wood_lots`
--

INSERT INTO `wood_lots` (`id`, `garden_id`, `division_group_no_year`, `range_lot_no_year`, `fuel`, `bolli_count`, `tenderer_name_address`, `quoted_rate`, `advance_details`, `advance_amount`, `collateral_details`, `collateral_amount`, `tree_type`, `total_tree_count`, `total_number_of_trees`, `total_wood_amount`, `tree_count_from`, `tree_count_to`, `tendar_date`, `tendar_no`, `lot_no`, `sold_amount`, `tree_count`, `wood_amount_sft`, `wood_fuel_sqft`, `wood_bolli_count`, `money_collection_slip_no`, `collection_amount`, `money_collection_date`, `invoice_date`, `invoice_no`, `forest_revenew`, `beneficiary_invoice_date`, `beneficiary_invoice_no`, `beneficiary_share_amount`, `tff_invoice_date`, `tff_invoice_no`, `tff_share_amount`, `money_deposit_slip_no`, `money_deposit`, `approved_by`, `edit_request`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'test group number and year', 'test range and lot', 11, 22, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '5500.00', '', '0.00', '', '0.00', '', NULL, 35, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-31 12:58:50', '2023-05-31 12:58:50', NULL),
(2, 1, '১৮১ (খাড়া) অব ২০2২-২৩', '01/উগো (খাড়া) অব ২০২2-২3', 274, 21, 'মেসার্স দোলা এন্টারপ্রাইজ, প্রোঃ মোঃ আহাদুজ্জামান দিপু, পিতা-ইসাহাক আলী, মাতা- জামিলা খাতুন, সাং-কালিতলা,ডাকঘর-দিনাজপুর-৫২০০, দিনাজপুর।', '140000.00', '', '0.00', '', '0.00', '', 75, 75, 352, 1, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3224242', '500.00', '2023-06-08', '2023-06-09', '123', '123.00', '2023-06-09', '123', '123.00', '2023-06-09', '123', '123.00', '6060', '5000.00', NULL, NULL, 0, NULL, '2023-06-09 12:50:54', NULL),
(3, 1, '১৮২ (খাড়া) অব ২০2২-২৩', '0২/উগো (খাড়া) অব ২০২2-২3', 283, 26, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '117300.00', '', '0.00', '', '0.00', '', 75, 75, 285, 76, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(4, 1, '১৮৩ (খাড়া) অব ২০2২-২৩', '0৩/উগো (খাড়া) অব ২০২2-২3', 256, 19, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '107350.00', '', '0.00', '', '0.00', '', 50, 50, 250, 151, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(5, 1, '১৮৪ (খাড়া) অব ২০2২-২৩', '0৪/উগো (খাড়া) অব ২০২2-২3', 230, 26, 'মেসার্স দোলা এন্টারপ্রাইজ, প্রোঃ মোঃ আহাদুজ্জামান দিপু, পিতা-ইসাহাক আলী, মাতা- জামিলা খাতুন, সাং-কালিতলা,ডাকঘর-দিনাজপুর-৫২০০, দিনাজপুর।', '101000.00', '', '0.00', '', '0.00', '', 60, 60, 247, 201, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3224242', '500.00', '2023-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-03 18:27:00', NULL),
(6, 1, '১৮৫ (খাড়া) অব ২০2২-২৩', '0৫/উগো (খাড়া) অব ২০২2-২3', 209, 31, 'মেসার্স দোলা এন্টারপ্রাইজ, প্রোঃ মোঃ আহাদুজ্জামান দিপু, পিতা-ইসাহাক আলী, মাতা- জামিলা খাতুন, সাং-কালিতলা,ডাকঘর-দিনাজপুর-৫২০০, দিনাজপুর।', '101500.00', '', '0.00', '', '0.00', '', 50, 50, 264, 261, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3224242', '500.00', '2023-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '46646446', '1010.00', NULL, NULL, 0, NULL, '2023-06-03 18:16:34', NULL),
(7, 1, '১৮৬ (খাড়া) অব ২০2২-২৩', '0৬/উগো (খাড়া) অব ২০২2-২3', 170, 38, 'আল ইহ্‌সান ট্রেডার্স, প্রোঃ মোঃ কাশ্মীর হোসেন বাপ্পী, পিতাঃ মৃত মোঃ কালাম, মাতা- পারভীন, সাং- কাঞ্চন কলোনী, ডাকঘর-সদর, জেলা-দিনাজপুর।', '100000.00', '', '0.00', '', '0.00', '', 50, 50, 259, 311, 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(8, 1, '১৮৭ (খাড়া) অব ২০2২-২৩', '0৭/উগো (খাড়া) অব ২০২2-২3', 175, 28, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '100000.00', '', '0.00', '', '0.00', '', 50, 50, 241, 361, 410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3224242', '500.00', '2023-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-03 18:17:09', NULL),
(9, 1, '১৮৮ (খাড়া) অব ২০2২-২৩', '0৮/উগো (খাড়া) অব ২০২2-২3', 168, 20, 'মেসার্স দোলা এন্টারপ্রাইজ, প্রোঃ মোঃ আহাদুজ্জামান দিপু, পিতা-ইসাহাক আলী, মাতা- জামিলা খাতুন, সাং-কালিতলা,ডাকঘর-দিনাজপুর-৫২০০, দিনাজপুর।', '91000.00', '', '0.00', '', '0.00', '', 56, 56, 239, 411, 466, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(10, 1, '১৮৯ (খাড়া) অব ২০2২-২৩', '0৯/উগো (খাড়া) অব ২০২2-২3', 335, 60, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '183700.00', '', '0.00', '', '0.00', '', 132, 132, 455, 467, 598, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07', '2121212121', '200.00', NULL, NULL, NULL, NULL, NULL, NULL, '6060', '2000.00', NULL, NULL, 0, NULL, '2023-06-07 11:02:25', NULL),
(11, 1, '১৯০ (খাড়া) অব ২০2২-২৩', '১০/উগো (খাড়া) অব ২০২2-২3', 197, 43, 'মেসার্স রিয়াদ টিম্বার, প্রোঃ মোঃ নজরুল ইসলাম, পিতাঃ মোঃ মহবুর, মাতাঃ ফুরকি খাতুন, সাং- সনকা, সনকা-৫২২০, বীরগঞ্জ, দিনাজপুর।', '115000.00', '', '0.00', '', '0.00', '', 59, 59, 282, 599, 657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(12, 1, '১৯১ (খাড়া) অব ২০2২-২৩', '১১/উগো (খাড়া) অব ২০২2-২3', 202, 52, 'মেসার্স রিয়াদ টিম্বার, প্রোঃ মোঃ নজরুল ইসলাম, পিতাঃ মোঃ মহবুর, মাতাঃ ফুরকি খাতুন, সাং- সনকা, সনকা-৫২২০, বীরগঞ্জ, দিনাজপুর।', '112500.00', '', '0.00', '', '0.00', '', 75, 75, 283, 658, 732, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(13, 1, '১৯২ (খাড়া) অব ২০2২-২৩', '১২/উগো (খাড়া) অব ২০২2-২3', 216, 41, 'মেসার্স দোলা এন্টারপ্রাইজ, প্রোঃ মোঃ আহাদুজ্জামান দিপু, পিতা-ইসাহাক আলী, মাতা- জামিলা খাতুন, সাং-কালিতলা,ডাকঘর-দিনাজপুর-৫২০০, দিনাজপুর।', '146000.00', '', '0.00', '', '0.00', '', 63, 63, 321, 733, 795, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(14, 1, '১৯৩ (খাড়া) অব ২০2২-২৩', '১৩/উগো (খাড়া) অব ২০২2-২3', 178, 39, 'মেসার্স দোলা এন্টারপ্রাইজ, প্রোঃ মোঃ আহাদুজ্জামান দিপু, পিতা-ইসাহাক আলী, মাতা- জামিলা খাতুন, সাং-কালিতলা,ডাকঘর-দিনাজপুর-৫২০০, দিনাজপুর।', '113400.00', '', '0.00', '', '0.00', '', 67, 67, 245, 796, 862, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(15, 1, '১৯৪ (খাড়া) অব ২০2২-২৩', '১৪/উগো (খাড়া) অব ২০২2-২3', 160, 38, 'মেসার্স দোলা এন্টারপ্রাইজ, প্রোঃ মোঃ আহাদুজ্জামান দিপু, পিতা-ইসাহাক আলী, মাতা- জামিলা খাতুন, সাং-কালিতলা,ডাকঘর-দিনাজপুর-৫২০০, দিনাজপুর।', '114000.00', '', '0.00', '', '0.00', '', 60, 60, 229, 863, 922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(16, 1, '১৯৫ (খাড়া) অব ২০2২-২৩', '১৫/উগো (খাড়া) অব ২০২2-২3', 132, 35, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '90700.00', '', '0.00', '', '0.00', '', 46, 46, 218, 923, 968, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(17, 1, '১৯৬ (খাড়া) অব ২০2২-২৩', '১৬/উগো (খাড়া) অব ২০২2-২3', 108, 36, 'মেসার্স দোলা এন্টারপ্রাইজ, প্রোঃ মোঃ আহাদুজ্জামান দিপু, পিতা-ইসাহাক আলী, মাতা- জামিলা খাতুন, সাং-কালিতলা,ডাকঘর-দিনাজপুর-৫২০০, দিনাজপুর।', '88200.00', '', '0.00', '', '0.00', '', 40, 40, 198, 969, 1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(18, 1, '১৯৭ (খাড়া) অব ২০2২-২৩', '১৭/উগো (খাড়া) অব ২০২2-২3', 209, 37, 'সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ মোছাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, ডাক- নিউ রসুলপুর-৬৫৭০, বদল্গাছা, নওগাঁ।', '136658.00', '', '0.00', '', '0.00', '', 40, 40, 309, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(19, 1, '১৯৮ (খাড়া) অব ২০2২-২৩', '১৮/উগো (খাড়া) অব ২০২2-২3', 218, 33, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '133700.00', '', '0.00', '', '0.00', '', 40, 40, 311, 41, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(20, 1, '১৯৯ (খাড়া) অব ২০2২-২৩', '১৯/উগো (খাড়া) অব ২০২2-২3', 210, 34, 'সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ মোছাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, ডাক- নিউ রসুলপুর-৬৫৭০, বদল্গাছা, নওগাঁ।', '118136.00', '', '0.00', '', '0.00', '', 40, 40, 263, 81, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(21, 1, '২০০ (খাড়া) অব ২০2২-২৩', '২০/উগো (খাড়া) অব ২০২2-২3', 130, 32, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '75000.00', '', '0.00', '', '0.00', '', 40, 40, 197, 121, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(22, 1, '২০১ (খাড়া) অব ২০2২-২৩', '২১/উগো (খাড়া) অব ২০২2-২3', 153, 27, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '75700.00', '', '0.00', '', '0.00', '', 40, 40, 183, 161, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(23, 1, '২০২ (খাড়া) অব ২০2২-২৩', '২২/উগো (খাড়া) অব ২০২2-২3', 176, 20, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '95000.00', '', '0.00', '', '0.00', '', 40, 40, 225, 201, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(24, 1, '২০৩ (খাড়া) অব ২০2২-২৩', '২৩/উগো (খাড়া) অব ২০২2-২3', 201, 26, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '107900.00', '', '0.00', '', '0.00', '', 40, 40, 260, 241, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(25, 1, '২০৪ (খাড়া) অব ২০2২-২৩', '২৪/উগো (খাড়া) অব ২০২2-২3', 216, 41, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '96300.00', '', '0.00', '', '0.00', '', 40, 40, 232, 281, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(26, 1, '২০৫ (খাড়া) অব ২০2২-২৩', '২৫/উগো (খাড়া) অব ২০২2-২3', 223, 30, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '92700.00', '', '0.00', '', '0.00', '', 40, 40, 222, 321, 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(27, 1, '২০৬ (খাড়া) অব ২০2২-২৩', '২৬/উগো (খাড়া) অব ২০২2-২3', 248, 30, 'আল ইহ্‌সান ট্রেডার্স, প্রোঃ মোঃ কাশ্মীর হোসেন বাপ্পী, পিতাঃ মৃত মোঃ কালাম, মাতা- পারভীন, সাং- কাঞ্চন কলোনী, ডাকঘর-সদর, জেলা-দিনাজপুর।', '121000.00', '', '0.00', '', '0.00', '', 40, 40, 278, 361, 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(28, 1, '২০৭ (খাড়া) অব ২০2২-২৩', '২৭/উগো (খাড়া) অব ২০২2-২3', 183, 32, 'আল ইহ্‌সান ট্রেডার্স, প্রোঃ মোঃ কাশ্মীর হোসেন বাপ্পী, পিতাঃ মৃত মোঃ কালাম, মাতা- পারভীন, সাং- কাঞ্চন কলোনী, ডাকঘর-সদর, জেলা-দিনাজপুর।', '110000.00', '', '0.00', '', '0.00', '', 28, 28, 226, 401, 428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(29, 1, '২০৮ (খাড়া) অব ২০2২-২৩', '২৮/উগো (খাড়া) অব ২০২2-২3', 222, 29, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '159750.00', '', '0.00', '', '0.00', '', 80, 80, 380, 1, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(30, 1, '২০৯ (খাড়া) অব ২০2২-২৩', '২৯/উগো (খাড়া) অব ২০২2-২3', 220, 37, 'আল ইহ্‌সান ট্রেডার্স, প্রোঃ মোঃ কাশ্মীর হোসেন বাপ্পী, পিতাঃ মৃত মোঃ কালাম, মাতা- পারভীন, সাং- কাঞ্চন কলোনী, ডাকঘর-সদর, জেলা-দিনাজপুর।', '160000.00', '', '0.00', '', '0.00', '', 80, 80, 362, 81, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(31, 1, '২১০ (খাড়া) অব ২০2২-২৩', '৩০/উগো (খাড়া) অব ২০২2-২3', 169, 15, 'সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ মোছাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, ডাক- নিউ রসুলপুর-৬৫৭০, বদল্গাছা, নওগাঁ।', '127718.00', '', '0.00', '', '0.00', '', 40, 40, 213, 161, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(32, 1, '২১১ (খাড়া) অব ২০2২-২৩', '৩১/উগো (খাড়া) অব ২০২2-২3', 179, 18, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '91000.00', '', '0.00', '', '0.00', '', 40, 40, 214, 201, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(33, 1, '২১2 (খাড়া) অব ২০2২-২৩', '৩২/উগো (খাড়া) অব ২০২2-২3', 270, 23, 'আল ইহ্‌সান ট্রেডার্স, প্রোঃ মোঃ কাশ্মীর হোসেন বাপ্পী, পিতাঃ মৃত মোঃ কালাম, মাতা- পারভীন, সাং- কাঞ্চন কলোনী, ডাকঘর-সদর, জেলা-দিনাজপুর।', '112000.00', '', '0.00', '', '0.00', '', 40, 52, 292, 201, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(34, 1, '২১৩ (ঝঃপঃ) অব ২০2২-২৩', '৩৩/উগো (ঝঃপঃ) অব ২০২2-২3', 62, 0, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '113700.00', '', '0.00', '', '0.00', '', 16, 16, 165, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(35, 1, '২১৪ (আহরিত) অব ২০2২-২৩', '৩৪/উগো/০১/খান (আহরিত) অব ২০২2-২3', 0, 0, 'মেসার্স রিয়াদ টিম্বার, প্রোঃ মোঃ নজরুল ইসলাম, পিতাঃ মোঃ মহবুর, মাতাঃ ফুরকি খাতুন, সাং- সনকা, সনকা-৫২২০, বীরগঞ্জ, দিনাজপুর।', '68000.00', '', '0.00', '', '0.00', '', 100, 110, 201, 901, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(36, 1, '২১৫ (আহরিত) অব ২০2২-২৩', '৩৫/উগো/০২/খান (আহরিত) অব ২০২2-২3', 0, 0, 'মেসার্স নিয়াজ ট্রেডিং, প্রোঃ মোঃ নুরে আলম, পিতাঃ ওয়াজেদ আলী, মাতাঃ মোছাঃ আমাতুন, সাং- মুরারীপুর, ডাক- ঘুঘুডাঙ্গা-৫২০০, দিনাজপুর সদর, দিনাজপুর', '65000.00', '', '0.00', '', '0.00', '', 90, 90, 133, 1001, 1090, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(37, 1, '২১৬ (আহরিত) অব ২০2২-২৩', '৩৬/উগো/০৩/খান (আহরিত) অব ২০২2-২3', 0, 0, 'মেসার্স শিবলী ট্রেডার্স, প্রোঃ মোঃ হাসেম আলী, পিতাঃ মোঃ আব্দুল মান্নান শাহ, মাতাঃ মোছাঃ হাজেরা বেগম, সাং- বালুয়াভাটা, বদরগঞ্জ-৫৪৩০, রংপুর।', '87700.00', '', '0.00', '', '0.00', '', 116, 116, 216, 1091, 1206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(38, 1, '২১৭ (ঝঃপ), (আহরিত) অব ২০2২-২৩', '৩৭/উগো/০৪/খান (ঝঃপ), (আহরিত) অব ২০২2-২3', 0, 0, 'মেসার্স চৌধুরী \"স\" মিল, প্রোঃ মোঃ আব্দুল মালেক, পিতাঃ কলিম উদ্দীন, মাতাঃ মোছাঃ মালেকা বেগম, সাং- নিজপাড়া, ডাকঘর- বলরামপুর-৫২২০, বীরগঞ্জ, দিনাজপুর', '37500.00', '', '0.00', '', '0.00', '', 32, 32, 84, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(39, 1, '২১৮ (খাড়া) অব ২০2২-২৩', '০১/সদর/০১/ধর্ম (খাড়া) অব ২০২২-২৩', 123, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '152380.00', '', '0.00', '', '0.00', '', 27, 27, 372, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(40, 1, '২১৯ (খাড়া) অব ২০2২-২৩', '০২/সদর/০২/ধর্ম (খাড়া) অব ২০২২-২৩', 93, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '134395.00', '', '0.00', '', '0.00', '', 27, 27, 339, 28, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(41, 1, '২২০ (খাড়া) অব ২০2২-২৩', '০৩/সদর/০৩/ধর্ম (খাড়া) অব ২০২২-২৩', 57, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '37000.00', '', '0.00', '', '0.00', '', 27, 27, 125, 55, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(42, 1, '২২১ (খাড়া) অব ২০2২-২৩', '০৪/সদর/০৪/ধর্ম (খাড়া) অব ২০২২-২৩', 92, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '44000.00', '', '0.00', '', '0.00', '', 27, 27, 149, 82, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(43, 1, '২২২ (খাড়া) অব ২০2২-২৩', '০৫/সদর/০৫/ধর্ম (খাড়া) অব ২০২২-২৩', 27, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '103000.00', '', '0.00', '', '0.00', '', 27, 27, 206, 109, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(44, 1, '২২৩ (খাড়া) অব ২০2২-২৩', '০৬/সদর/০৬/ধর্ম (খাড়া) অব ২০২২-২৩', 31, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '73000.00', '', '0.00', '', '0.00', '', 27, 27, 212, 136, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(45, 1, '২২৪ (খাড়া) অব ২০2২-২৩', '০৭/সদর/০৭/ধর্ম (খাড়া) অব ২০২২-২৩', 45, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '69000.00', '', '0.00', '', '0.00', '', 27, 27, 238, 163, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(46, 1, '২২৫ (খাড়া) অব ২০2২-২৩', '০৮/সদর/০৮/ধর্ম (খাড়া) অব ২০২২-২৩', 40, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '47000.00', '', '0.00', '', '0.00', '', 27, 27, 184, 190, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(47, 1, '২২৬ (খাড়া) অব ২০2২-২৩', '০৯/সদর/০৯/ধর্ম (খাড়া) অব ২০২২-২৩', 41, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '69000.00', '', '0.00', '', '0.00', '', 27, 27, 224, 217, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(48, 1, '২২৭ (খাড়া) অব ২০2২-২৩', '১০/সদর/১০/ধর্ম (খাড়া) অব ২০২২-২৩', 58, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '70000.00', '', '0.00', '', '0.00', '', 10, 10, 250, 244, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(49, 1, '২২৮ (খাড়া) অব ২০2২-২৩', '১১/সদর/১১/ধর্ম (খাড়া) অব ২০২২-২৩', 49, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '85000.00', '', '0.00', '', '0.00', '', 17, 17, 246, 254, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(50, 1, '২২৯ (খাড়া) অব ২০2২-২৩', '১২/সদর/১২/ধর্ম (খাড়া) অব ২০২২-২৩', 43, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '75000.00', '', '0.00', '', '0.00', '', 7, 7, 255, 271, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(51, 1, '২৩০ (খাড়া) অব ২০2২-২৩', '১৩/সদর/১৩/ধর্ম (খাড়া) অব ২০২২-২৩', 34, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '45000.00', '', '0.00', '', '0.00', '', 20, 20, 244, 278, 297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(52, 1, '২৩১ (খাড়া) অব ২০2২-২৩', '১৪/সদর/১৪/ধর্ম (খাড়া) অব ২০২২-২৩', 33, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '62000.00', '', '0.00', '', '0.00', '', 27, 27, 221, 298, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(53, 1, '২৩২ (খাড়া) অব ২০2২-২৩', '১৫/সদর/১৫/ধর্ম (খাড়া) অব ২০২২-২৩', 21, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '48000.00', '', '0.00', '', '0.00', '', 27, 27, 146, 325, 351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(54, 1, '২৩৩ (খাড়া) অব ২০2২-২৩', '১৬/সদর/১৬/ধর্ম (খাড়া) অব ২০২২-২৩', 38, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '68000.00', '', '0.00', '', '0.00', '', 27, 27, 287, 352, 378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(55, 1, '২৩৫ (খাড়া) অব ২০2২-২৩', '১৮/সদর/১৮/ধর্ম (খাড়া) অব ২০২২-২৩', 68, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '88000.00', '', '0.00', '', '0.00', '', 27, 27, 334, 406, 432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(56, 1, '২৩৬ (খাড়া) অব ২০2২-২৩', '১৯/সদর/১৯/ধর্ম (খাড়া) অব ২০২২-২৩', 30, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '70000.00', '', '0.00', '', '0.00', '', 27, 27, 244, 433, 459, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(57, 1, '২৩৭ (খাড়া) অব ২০2২-২৩', '২০/সদর/২০/ধর্ম (খাড়া) অব ২০২২-২৩', 22, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '40000.00', '', '0.00', '', '0.00', '', 27, 27, 147, 460, 486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(58, 1, '২৪১ (খাড়া) অব ২০2২-২৩', '২৪/সদর/২৪/ধর্ম (খাড়া) অব ২০২২-২৩', 27, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '35000.00', '', '0.00', '', '0.00', '', 27, 27, 168, 568, 594, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(59, 1, '২৪৩ (খাড়া) অব ২০2২-২৩', '২৬/সদর/২৬/ধর্ম (খাড়া) অব ২০২২-২৩', 43, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '83000.00', '', '0.00', '', '0.00', '', 27, 27, 272, 622, 648, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(60, 1, '২৪৪ (খাড়া) অব ২০2২-২৩', '২৭/সদর/২৭/ধর্ম (খাড়া) অব ২০২২-২৩', 29, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '50000.00', '', '0.00', '', '0.00', '', 27, 27, 184, 649, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(61, 1, '২৪৫ (খাড়া) অব ২০2২-২৩', '২৮/সদর/২৮/ধর্ম (খাড়া) অব ২০২২-২৩', 61, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '110000.00', '', '0.00', '', '0.00', '', 27, 27, 332, 676, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(62, 1, '২৪৬ (খাড়া) অব ২০2২-২৩', '২৯/সদর/২৯/ধর্ম (খাড়া) অব ২০২২-২৩', 30, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '52000.00', '', '0.00', '', '0.00', '', 27, 27, 174, 703, 729, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(63, 1, '২৪৭ (খাড়া) অব ২০2২-২৩', '৩০/সদর/৩০/ধর্ম (খাড়া) অব ২০২২-২৩', 29, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '50000.00', '', '0.00', '', '0.00', '', 27, 27, 229, 730, 756, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(64, 1, '২৪৯ (খাড়া) অব ২০2২-২৩', '৩২/সদর/৩২/ধর্ম (খাড়া) অব ২০২২-২৩', 30, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '40000.00', '', '0.00', '', '0.00', '', 27, 27, 164, 784, 810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(65, 1, '২৫০ (খাড়া) অব ২০2২-২৩', '৩৩/সদর/৩৩/ধর্ম (খাড়া) অব ২০২২-২৩', 21, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '53000.00', '', '0.00', '', '0.00', '', 27, 27, 201, 811, 837, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(66, 1, '২৫১ (খাড়া) অব ২০2২-২৩', '৩৪/সদর/৩৪/ধর্ম (খাড়া) অব ২০২২-২৩', 22, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '36000.00', '', '0.00', '', '0.00', '', 27, 27, 169, 838, 864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(67, 1, '২৫২ (খাড়া) অব ২০2২-২৩', '৩৫/সদর/৩৫/ধর্ম (খাড়া) অব ২০২২-২৩', 28, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '57000.00', '', '0.00', '', '0.00', '', 27, 27, 239, 865, 891, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(68, 1, '২৫৩ (খাড়া) অব ২০2২-২৩', '৩৬/সদর/৩৬/ধর্ম (খাড়া) অব ২০২২-২৩', 29, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '62000.00', '', '0.00', '', '0.00', '', 27, 27, 204, 892, 918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(69, 1, '২৫৪ (খাড়া) অব ২০2২-২৩', '৩৭/সদর/৩৭/ধর্ম (খাড়া) অব ২০২২-২৩', 26, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '61000.00', '', '0.00', '', '0.00', '', 27, 27, 215, 919, 945, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(70, 1, '২৫৫ (খাড়া) অব ২০2২-২৩', '৩৮/সদর/৩৮/ধর্ম (খাড়া) অব ২০২২-২৩', 44, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '75000.00', '', '0.00', '', '0.00', '', 27, 27, 259, 946, 972, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(71, 1, '২৫৬ (খাড়া) অব ২০2২-২৩', '৩৯/সদর/৩৯/ধর্ম (খাড়া) অব ২০২২-২৩', 24, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '53000.00', '', '0.00', '', '0.00', '', 27, 27, 204, 973, 999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(72, 1, '২৫৭ (খাড়া) অব ২০2২-২৩', '৪০/সদর/৪০/ধর্ম (খাড়া) অব ২০২২-২৩', 45, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '114000.00', '', '0.00', '', '0.00', '', 27, 27, 306, 1000, 1026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(73, 1, '২৫৮ (খাড়া) অব ২০2২-২৩', '৪১/সদর/৪১/ধর্ম (খাড়া) অব ২০২২-২৩', 37, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '80000.00', '', '0.00', '', '0.00', '', 27, 27, 285, 1027, 1053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(74, 1, '২৫৯ (খাড়া) অব ২০2২-২৩', '৪২/সদর/৪২/ধর্ম (খাড়া) অব ২০২২-২৩', 40, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '90000.00', '', '0.00', '', '0.00', '', 27, 27, 269, 1054, 1080, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(75, 1, '২৬০ (খাড়া) অব ২০2২-২৩', '৪৩/সদর/৪৩/ধর্ম (খাড়া) অব ২০২২-২৩', 19, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '40000.00', '', '0.00', '', '0.00', '', 27, 27, 177, 1081, 1107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(76, 1, '২৬২ (খাড়া) অব ২০2২-২৩', '৪৫/সদর/৪৫/ধর্ম (খাড়া) অব ২০২২-২৩', 23, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '41000.00', '', '0.00', '', '0.00', '', 27, 27, 137, 1135, 1161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(77, 1, '২৬৩ (খাড়া) অব ২০2২-২৩', '৪৬/সদর/৪৬/ধর্ম (খাড়া) অব ২০২২-২৩', 23, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '45000.00', '', '0.00', '', '0.00', '', 27, 27, 202, 1162, 1188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(78, 1, '২৬৪ (খাড়া) অব ২০2২-২৩', '৪৭/সদর/৪৭/ধর্ম (খাড়া) অব ২০২২-২৩', 18, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '33000.00', '', '0.00', '', '0.00', '', 27, 27, 116, 1189, 1215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(79, 1, '২৬৫ (খাড়া) অব ২০2২-২৩', '৪৮/সদর/৪৮/ধর্ম (খাড়া) অব ২০২২-২৩', 21, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '38000.00', '', '0.00', '', '0.00', '', 27, 27, 173, 1216, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(80, 1, '২৬৭ (খাড়া) অব ২০2২-২৩', '৫০/সদর/৫০/ধর্ম (খাড়া) অব ২০২২-২৩', 17, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '28000.00', '', '0.00', '', '0.00', '', 27, 27, 104, 1270, 1296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(81, 1, '২৭১ (খাড়া) অব ২০2২-২৩', '5৪/সদর/5৪/ধর্ম (খাড়া) অব ২০২২-২৩', 29, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '40000.00', '', '0.00', '', '0.00', '', 27, 27, 186, 1378, 1404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(82, 1, '২৭২ (খাড়া) অব ২০2২-২৩', '5৫/সদর/5৫/ধর্ম (খাড়া) অব ২০২২-২৩', 34, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '58000.00', '', '0.00', '', '0.00', '', 27, 27, 197, 1405, 1431, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(83, 1, '২৭৪ (খাড়া) অব ২০2২-২৩', '5৭/সদর/5৭/ধর্ম (খাড়া) অব ২০২২-২৩', 28, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '30000.00', '', '0.00', '', '0.00', '', 27, 27, 167, 1459, 1485, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(84, 1, '২৭৭ (খাড়া) অব ২০2২-২৩', '৬০/সদর/৬০/ধর্ম (খাড়া) অব ২০২২-২৩', 20, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '31000.00', '', '0.00', '', '0.00', '', 27, 27, 110, 1540, 1566, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(85, 1, '২৭৮ (খাড়া) অব ২০2২-২৩', '৬১/সদর/৬১/ধর্ম (খাড়া) অব ২০২২-২৩', 33, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '51000.00', '', '0.00', '', '0.00', '', 27, 27, 170, 1567, 1593, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(86, 1, '২৭৯ (খাড়া) অব ২০2২-২৩', '৬২/সদর/৬২/ধর্ম (খাড়া) অব ২০২২-২৩', 26, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '47000.00', '', '0.00', '', '0.00', '', 27, 27, 158, 1594, 1620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(87, 1, '২৮০ (খাড়া) অব ২০2২-২৩', '৬৩/সদর/৬৩/ধর্ম (খাড়া) অব ২০২২-২৩', 36, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '61000.00', '', '0.00', '', '0.00', '', 27, 27, 209, 1621, 1647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(88, 1, '২৮১ (খাড়া) অব ২০2২-২৩', '৬৪/সদর/৬৪/ধর্ম (খাড়া) অব ২০২২-২৩', 30, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '52000.00', '', '0.00', '', '0.00', '', 27, 27, 172, 1648, 1674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(89, 1, '২৮২ (খাড়া) অব ২০2২-২৩', '৬৫/সদর/৬৫/ধর্ম (খাড়া) অব ২০২২-২৩', 23, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '46000.00', '', '0.00', '', '0.00', '', 27, 27, 150, 1675, 1701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(90, 1, '২৮৩ (খাড়া) অব ২০2২-২৩', '৬৬/সদর/৬৬/ধর্ম (খাড়া) অব ২০২২-২৩', 27, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '58000.00', '', '0.00', '', '0.00', '', 27, 27, 186, 1702, 1728, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(91, 1, '২৮৪ (খাড়া) অব ২০2২-২৩', '৬৭/সদর/৬৭/ধর্ম (খাড়া) অব ২০২২-২৩', 38, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '62000.00', '', '0.00', '', '0.00', '', 27, 27, 213, 1729, 1755, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(92, 1, '২৮৫ (খাড়া) অব ২০2২-২৩', '৬৮/সদর/৬৮/ধর্ম (খাড়া) অব ২০২২-২৩', 33, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '66000.00', '', '0.00', '', '0.00', '', 27, 27, 228, 1756, 1782, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(93, 1, '২৮৬ (খাড়া) অব ২০2২-২৩', '৬৯/সদর/৬৯/ধর্ম (খাড়া) অব ২০২২-২৩', 34, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '57000.00', '', '0.00', '', '0.00', '', 28, 28, 194, 1783, 1810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(94, 1, '২৮৭ (খাড়া) অব ২০2২-২৩', '৭০/সদর/৭০/ধর্ম (খাড়া) অব ২০২২-২৩', 39, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '86000.00', '', '0.00', '', '0.00', '', 27, 27, 270, 1811, 1837, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(95, 1, '২৮৮ (খাড়া) অব ২০2২-২৩', '৭১/সদর/৭১/ধর্ম (খাড়া) অব ২০২২-২৩', 28, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '58000.00', '', '0.00', '', '0.00', '', 27, 27, 218, 1838, 1864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(96, 1, '২৮৯ (খাড়া) অব ২০2২-২৩', '৭২/সদর/৭২/ধর্ম (খাড়া) অব ২০২২-২৩', 70, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '40000.00', '', '0.00', '', '0.00', '', 27, 27, 207, 1865, 1891, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(97, 1, '২৯০ (খাড়া) অব ২০2২-২৩', '৭৩/সদর/৭৩/ধর্ম (খাড়া) অব ২০২২-২৩', 22, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '44000.00', '', '0.00', '', '0.00', '', 27, 27, 206, 1892, 1918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(98, 1, '২৯১ (খাড়া) অব ২০2২-২৩', '৭৪/সদর/৭৪/ধর্ম (খাড়া) অব ২০২২-২৩', 44, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '45000.00', '', '0.00', '', '0.00', '', 27, 27, 216, 1919, 1945, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(99, 1, '২৯২ (খাড়া) অব ২০2২-২৩', '৭৫/সদর/৭৫/ধর্ম (খাড়া) অব ২০২২-২৩', 27, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '70000.00', '', '0.00', '', '0.00', '', 27, 27, 240, 1946, 1972, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(100, 1, '২৯৩ (খাড়া) অব ২০2২-২৩', '৭৬/সদর/৭৬/ধর্ম (খাড়া) অব ২০২২-২৩', 29, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '64000.00', '', '0.00', '', '0.00', '', 27, 27, 196, 1973, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(101, 1, '২৯৪ (খাড়া) অব ২০2২-২৩', '৭৭/সদর/৭৭/ধর্ম (খাড়া) অব ২০২২-২৩', 25, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '42000.00', '', '0.00', '', '0.00', '', 27, 27, 179, 2000, 2026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(102, 1, '২৯৫ (খাড়া) অব ২০2২-২৩', '৭৮/সদর/৭৮/ধর্ম (খাড়া) অব ২০২২-২৩', 30, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '53000.00', '', '0.00', '', '0.00', '', 27, 27, 192, 2027, 2053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(103, 1, '২৯৬ (খাড়া) অব ২০2২-২৩', '৭৯/সদর/৭৯/ধর্ম (খাড়া) অব ২০২২-২৩', 28, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '50000.00', '', '0.00', '', '0.00', '', 27, 27, 184, 2054, 2080, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(104, 1, '২৯৭ (খাড়া) অব ২০2২-২৩', '৮০/সদর/৮০/ধর্ম (খাড়া) অব ২০২২-২৩', 37, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '55000.00', '', '0.00', '', '0.00', '', 27, 27, 216, 2081, 2107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(105, 1, '২৯৮ (খাড়া) অব ২০2২-২৩', '৮১/সদর/৮১/ধর্ম (খাড়া) অব ২০২২-২৩', 41, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '60000.00', '', '0.00', '', '0.00', '', 27, 27, 219, 2108, 2134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(106, 1, '৩০০ (খাড়া) অব ২০2২-২৩', '৮৩/সদর/৮৩/ধর্ম (খাড়া) অব ২০২২-২৩', 35, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '55000.00', '', '0.00', '', '0.00', '', 27, 27, 191, 2162, 2188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(107, 1, '৩০১ (খাড়া) অব ২০2২-২৩', '৮৪/সদর/৮৪/ধর্ম (খাড়া) অব ২০২২-২৩', 35, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '71000.00', '', '0.00', '', '0.00', '', 27, 27, 208, 2189, 2215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(108, 1, '৩০২ (খাড়া) অব ২০2২-২৩', '৮৫/সদর/৮৫/ধর্ম (খাড়া) অব ২০২২-২৩', 37, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '71000.00', '', '0.00', '', '0.00', '', 27, 27, 232, 2216, 2242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(109, 1, '৩০৬ (খাড়া) অব ২০2২-২৩', '৮৯/সদর/৮৯/ধর্ম (খাড়া) অব ২০২২-২৩', 40, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '90000.00', '', '0.00', '', '0.00', '', 27, 27, 339, 2324, 2350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `wood_lots` (`id`, `garden_id`, `division_group_no_year`, `range_lot_no_year`, `fuel`, `bolli_count`, `tenderer_name_address`, `quoted_rate`, `advance_details`, `advance_amount`, `collateral_details`, `collateral_amount`, `tree_type`, `total_tree_count`, `total_number_of_trees`, `total_wood_amount`, `tree_count_from`, `tree_count_to`, `tendar_date`, `tendar_no`, `lot_no`, `sold_amount`, `tree_count`, `wood_amount_sft`, `wood_fuel_sqft`, `wood_bolli_count`, `money_collection_slip_no`, `collection_amount`, `money_collection_date`, `invoice_date`, `invoice_no`, `forest_revenew`, `beneficiary_invoice_date`, `beneficiary_invoice_no`, `beneficiary_share_amount`, `tff_invoice_date`, `tff_invoice_no`, `tff_share_amount`, `money_deposit_slip_no`, `money_deposit`, `approved_by`, `edit_request`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(110, 1, '৩০৭ (খাড়া) অব ২০2২-২৩', '৯০/সদর/৯০/ধর্ম (খাড়া) অব ২০২২-২৩', 31, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '75000.00', '', '0.00', '', '0.00', '', 27, 27, 292, 2351, 2377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(111, 1, '৩০৮ (খাড়া) অব ২০2২-২৩', '৯১/সদর/৯১/ধর্ম (খাড়া) অব ২০২২-২৩', 53, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '85000.00', '', '0.00', '', '0.00', '', 27, 27, 349, 2378, 2404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(112, 1, '৩০৯ (খাড়া) অব ২০2২-২৩', '৯২/সদর/৯২/ধর্ম (খাড়া) অব ২০২২-২৩', 37, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '110000.00', '', '0.00', '', '0.00', '', 27, 27, 343, 2405, 2431, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(113, 1, '৩১০ (খাড়া) অব ২০2২-২৩', '৯৩/সদর/৯৩/ধর্ম (খাড়া) অব ২০২২-২৩', 36, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '70000.00', '', '0.00', '', '0.00', '', 27, 27, 279, 2432, 2458, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(114, 1, '৩১১ (খাড়া) অব ২০2২-২৩', '৯৪/সদর/৯৪/ধর্ম (খাড়া) অব ২০২২-২৩', 39, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '139842.00', '', '0.00', '', '0.00', '', 27, 27, 333, 2459, 2485, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(115, 1, '৩১২ (খাড়া) অব ২০2২-২৩', '৯৫/সদর/৯৫/ধর্ম (খাড়া) অব ২০২২-২৩', 48, 0, 'মেসার্স ফাতিমা ট্রেডার্স, প্রোঃ মোছাঃ শারমীন বেগম, স্বামীঃ মোঃ জাকারিয়া, মাতাঃ মোছাঃ ছালেহা খাতুন, সাং- শিবপুর, স্বপ্নপুরী-৫২৬০, নবাবগঞ্জ, দিনাজপুর', '160000.00', '', '0.00', '', '0.00', '', 27, 27, 394, 2486, 2512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(116, 1, '৩১৩ (খাড়া) অব ২০2২-২৩', '৯৬/সদর/৯৬/ধর্ম (খাড়া) অব ২০২২-২৩', 42, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '141350.00', '', '0.00', '', '0.00', '', 27, 27, 346, 2513, 2539, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(117, 1, '৩২১ (খাড়া) অব ২০2২-২৩', '১০৪/সদর/১০৪/ধর্ম (খাড়া) অব ২০২২-২৩', 37, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '65000.00', '', '0.00', '', '0.00', '', 27, 27, 210, 2729, 2755, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(118, 1, '৩২২ (খাড়া) অব ২০2২-২৩', '১০৫/সদর/১০৫/ধর্ম (খাড়া) অব ২০২২-২৩', 35, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '78750.00', '', '0.00', '', '0.00', '', 27, 27, 223, 2756, 2782, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(119, 1, '৩২৩ (খাড়া) অব ২০2২-২৩', '১০৬/সদর/১০৬/ধর্ম (খাড়া) অব ২০২২-২৩', 38, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '110000.00', '', '0.00', '', '0.00', '', 27, 27, 223, 2783, 2809, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(120, 1, '৩২৫ (খাড়া) অব ২০2২-২৩', '১০৮/সদর/১০৮/ধর্ম (খাড়া) অব ২০২২-২৩', 50, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '147799.00', '', '0.00', '', '0.00', '', 27, 27, 366, 2837, 2863, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(121, 1, '৩২৬ (খাড়া) অব ২০2২-২৩', '১০৯/সদর/১০৯/ধর্ম (খাড়া) অব ২০২২-২৩', 37, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '95108.00', '', '0.00', '', '0.00', '', 27, 27, 233, 2864, 2890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(122, 1, '৩২৭ (খাড়া) অব ২০2২-২৩', '১১০/সদর/১১০/ধর্ম (খাড়া) অব ২০২২-২৩', 21, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '55200.00', '', '0.00', '', '0.00', '', 27, 27, 133, 2891, 2917, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(123, 1, '৩২৮ (খাড়া) অব ২০2২-২৩', '১১১/সদর/১১১/ধর্ম (খাড়া) অব ২০২২-২৩', 37, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '73000.00', '', '0.00', '', '0.00', '', 27, 27, 301, 2918, 2944, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(124, 1, '৩৩০ (খাড়া) অব ২০2২-২৩', '১১৩/সদর/১১৩/ধর্ম (খাড়া) অব ২০২২-২৩', 33, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '85394.00', '', '0.00', '', '0.00', '', 27, 27, 256, 2972, 2998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(125, 1, '৩৩১ (খাড়া) অব ২০2২-২৩', '১১৪/সদর/১১৪/ধর্ম (খাড়া) অব ২০২২-২৩', 41, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '142750.00', '', '0.00', '', '0.00', '', 27, 27, 344, 2999, 3025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(126, 1, '৩৩২ (খাড়া) অব ২০2২-২৩', '১১৫/সদর/১১৫/ধর্ম (খাড়া) অব ২০২২-২৩', 34, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '60000.00', '', '0.00', '', '0.00', '', 27, 27, 259, 3026, 3052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(127, 1, '৩৩৪ (খাড়া) অব ২০2২-২৩', '১১৭/সদর/১১৭/ধর্ম (খাড়া) অব ২০২২-২৩', 38, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '66000.00', '', '0.00', '', '0.00', '', 27, 27, 246, 3080, 3106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(128, 1, '৩৩৫ (খাড়া) অব ২০2২-২৩', '১১৮/সদর/১১৮/ধর্ম (খাড়া) অব ২০২২-২৩', 43, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '64000.00', '', '0.00', '', '0.00', '', 27, 27, 282, 3107, 3133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(129, 1, '৩৩৭ (খাড়া) অব ২০2২-২৩', '১২০/সদর/১২০/ধর্ম (খাড়া) অব ২০২২-২৩', 41, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '93860.00', '', '0.00', '', '0.00', '', 27, 27, 248, 3161, 3187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(130, 1, '৩৩৮ (খাড়া) অব ২০2২-২৩', '১২১/সদর/১২১/ধর্ম (খাড়া) অব ২০২২-২৩', 41, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '121000.00', '', '0.00', '', '0.00', '', 27, 27, 272, 3188, 3214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(131, 1, '৩৩৯ (খাড়া) অব ২০2২-২৩', '১২২/সদর/১২২/ধর্ম (খাড়া) অব ২০২২-২৩', 39, 0, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '137000.00', '', '0.00', '', '0.00', '', 27, 27, 306, 3215, 3241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(132, 1, '৩৪০ (খাড়া) অব ২০2২-২৩', '১২৩/সদর/১২৩/ধর্ম (খাড়া) অব ২০২২-২৩', 32, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '111394.00', '', '0.00', '', '0.00', '', 27, 27, 245, 3242, 3268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(133, 1, '৩৪১ (খাড়া) অব ২০2২-২৩', '১২৪/সদর/১২৪/ধর্ম (খাড়া) অব ২০২২-২৩', 30, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '94586.00', '', '0.00', '', '0.00', '', 27, 27, 219, 3269, 3295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(134, 1, '৩৪২ (খাড়া) অব ২০2২-২৩', '১২৫/সদর/১২৫/ধর্ম (খাড়া) অব ২০২২-২৩', 34, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '101319.00', '', '0.00', '', '0.00', '', 27, 27, 210, 3296, 3322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(135, 1, '৩৪৩ (খাড়া) অব ২০2২-২৩', '১২৬/সদর/১২৬/ধর্ম (খাড়া) অব ২০২২-২৩', 36, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '136600.00', '', '0.00', '', '0.00', '', 27, 27, 252, 3323, 3349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(136, 1, '৩৪৪ (খাড়া) অব ২০2২-২৩', '১২৭/সদর/১২৭/ধর্ম (খাড়া) অব ২০২২-২৩', 51, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '236181.00', '', '0.00', '', '0.00', '', 27, 27, 421, 3350, 3376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(137, 1, '৩৪৫ (খাড়া) অব ২০2২-২৩', '১২৮/সদর/১২৮/ধর্ম (খাড়া) অব ২০২২-২৩', 58, 0, 'মেসার্স ফাতিমা ট্রেডার্স, প্রোঃ মোছাঃ শারমীন বেগম, স্বামীঃ মোঃ জাকারিয়া, মাতাঃ মোছাঃ ছালেহা খাতুন, সাং- শিবপুর, স্বপ্নপুরী-৫২৬০, নবাবগঞ্জ, দিনাজপুর', '180000.00', '', '0.00', '', '0.00', '', 27, 27, 349, 3377, 3403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(138, 1, '৩৪৮ (খাড়া) অব ২০2২-২৩', '১৩১/সদর/১৩১/ধর্ম (খাড়া) অব ২০২২-২৩', 26, 0, 'মেসার্স ফাতিমা ট্রেডার্স, প্রোঃ মোছাঃ শারমীন বেগম, স্বামীঃ মোঃ জাকারিয়া, মাতাঃ মোছাঃ ছালেহা খাতুন, সাং- শিবপুর, স্বপ্নপুরী-৫২৬০, নবাবগঞ্জ, দিনাজপুর', '120260.00', '', '0.00', '', '0.00', '', 10, 10, 252, 3448, 3457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(139, 1, '৩৪৯ (খাড়া) অব ২০2২-২৩', '১৩২/সদর/১৩২/ধর্ম (খাড়া) অব ২০২২-২৩', 44, 0, 'মেসার্স ফাতিমা ট্রেডার্স, প্রোঃ মোছাঃ শারমীন বেগম, স্বামীঃ মোঃ জাকারিয়া, মাতাঃ মোছাঃ ছালেহা খাতুন, সাং- শিবপুর, স্বপ্নপুরী-৫২৬০, নবাবগঞ্জ, দিনাজপুর', '245000.00', '', '0.00', '', '0.00', '', 27, 27, 385, 3458, 3484, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(140, 1, '৩৫০ (খাড়া) অব ২০2২-২৩', '১৩৩/সদর/১৩৩/ধর্ম (খাড়া) অব ২০২২-২৩', 31, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '109681.00', '', '0.00', '', '0.00', '', 27, 27, 193, 3485, 3511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(141, 1, '৩৫১ (খাড়া) অব ২০2২-২৩', '১৩৪/সদর/১৩৪/ধর্ম (খাড়া) অব ২০২২-২৩', 49, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '172425.00', '', '0.00', '', '0.00', '', 33, 33, 391, 3512, 3544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(142, 1, '৩৫২ (খাড়া) অব ২০2২-২৩', '১৩৫/সদর/১৩৫/ধর্ম (খাড়া) অব ২০২২-২৩', 68, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '122071.00', '', '0.00', '', '0.00', '', 27, 27, 309, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(143, 1, '৩৫৩ (খাড়া) অব ২০2২-২৩', '১৩৬/সদর/১৩৬/ধর্ম (খাড়া) অব ২০২২-২৩', 41, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '59302.00', '', '0.00', '', '0.00', '', 27, 27, 183, 28, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(144, 1, '৩৫৪ (খাড়া) অব ২০2২-২৩', '১৩৭/সদর/১৩৭/ধর্ম (খাড়া) অব ২০২২-২৩', 42, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '52547.00', '', '0.00', '', '0.00', '', 27, 27, 184, 55, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(145, 1, '৩৫৫ (খাড়া) অব ২০2২-২৩', '১৩৮/সদর/১৩৮/ধর্ম (খাড়া) অব ২০২২-২৩', 47, 0, 'মেসার্স ফাতিমা ট্রেডার্স, প্রোঃ মোছাঃ শারমীন বেগম, স্বামীঃ মোঃ জাকারিয়া, মাতাঃ মোছাঃ ছালেহা খাতুন, সাং- শিবপুর, স্বপ্নপুরী-৫২৬০, নবাবগঞ্জ, দিনাজপুর', '125000.00', '', '0.00', '', '0.00', '', 27, 27, 220, 82, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(146, 1, '৩৫৬ (খাড়া) অব ২০2২-২৩', '১৩৯/সদর/১৩৯/ধর্ম (খাড়া) অব ২০২২-২৩', 53, 0, 'মেসার্স ফাতিমা ট্রেডার্স, প্রোঃ মোছাঃ শারমীন বেগম, স্বামীঃ মোঃ জাকারিয়া, মাতাঃ মোছাঃ ছালেহা খাতুন, সাং- শিবপুর, স্বপ্নপুরী-৫২৬০, নবাবগঞ্জ, দিনাজপুর', '160106.00', '', '0.00', '', '0.00', '', 27, 27, 302, 109, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(147, 1, '৩৫৭ (খাড়া) অব ২০2২-২৩', '১৪০/সদর/১৪০/ধর্ম (খাড়া) অব ২০২২-২৩', 38, 0, 'মেসার্স গফুর \"স\" মিল, প্রোঃ মোঃ আফসার আলী বাবু, পিতাঃ আব্দুল গফুর মিয়া, মাতাঃ মোছাঃ আছিয়া খাতুন, সাং- বাজার, বিরল-৫২১০, বিরল, দিনাজপুর', '64264.00', '', '0.00', '', '0.00', '', 27, 27, 211, 136, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(148, 1, '৩৫৯ (খাড়া) অব ২০2২-২৩', '১৪২/সদর (খাড়া) অব ২০২২-২৩', 134, 38, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '100000.00', '', '0.00', '', '0.00', '', 160, 160, 158, 1, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(149, 1, '৩৬০ (খাড়া) অব ২০2২-২৩', '১৪৩/সদর (খাড়া) অব ২০২২-২৩', 127, 29, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '100000.00', '', '0.00', '', '0.00', '', 160, 160, 168, 161, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(150, 1, '৩৬১ (খাড়া) অব ২০2২-২৩', '১৪৪/সদর (খাড়া) অব ২০২২-২৩', 112, 6, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '110000.00', '', '0.00', '', '0.00', '', 100, 100, 188, 321, 420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(151, 1, '৩৬২ (খাড়া) অব ২০2২-২৩', '১৪৫/সদর (খাড়া) অব ২০২২-২৩', 113, 20, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '95000.00', '', '0.00', '', '0.00', '', 120, 120, 165, 421, 540, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(152, 1, '৩৬৩ (খাড়া) অব ২০2২-২৩', '১৪৬/সদর (খাড়া) অব ২০২২-২৩', 138, 19, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '110000.00', '', '0.00', '', '0.00', '', 120, 120, 177, 541, 660, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(153, 1, '৩৬৪ (খাড়া) অব ২০2২-২৩', '১৪৭/সদর (খাড়া) অব ২০২২-২৩', 142, 29, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '115000.00', '', '0.00', '', '0.00', '', 140, 140, 166, 661, 800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(154, 1, '৩৬৫ (খাড়া) অব ২০2২-২৩', '১৪৮/সদর (খাড়া) অব ২০২২-২৩', 138, 27, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '105000.00', '', '0.00', '', '0.00', '', 160, 160, 172, 801, 960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(155, 1, '৩৬৬ (খাড়া) অব ২০2২-২৩', '১৪৯/সদর (খাড়া) অব ২০২২-২৩', 121, 10, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '100000.00', '', '0.00', '', '0.00', '', 100, 100, 167, 961, 1060, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(156, 1, '৩৬৭ (খাড়া) অব ২০2২-২৩', '১৫০/সদর (খাড়া) অব ২০২২-২৩', 105, 14, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '95000.00', '', '0.00', '', '0.00', '', 100, 100, 151, 1061, 1160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(157, 1, '৩৬৮ (খাড়া) অব ২০2২-২৩', '১৫১/সদর (খাড়া) অব ২০২২-২৩', 138, 28, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '105000.00', '', '0.00', '', '0.00', '', 160, 160, 166, 1161, 1320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(158, 1, '৩৬৯ (খাড়া) অব ২০2২-২৩', '১৫২/সদর (খাড়া) অব ২০২২-২৩', 112, 5, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '103000.00', '', '0.00', '', '0.00', '', 100, 100, 185, 1321, 1420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(159, 1, '৩৭০ (খাড়া) অব ২০2২-২৩', '১৫৩/সদর (খাড়া) অব ২০২২-২৩', 104, 18, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '90000.00', '', '0.00', '', '0.00', '', 100, 100, 142, 1421, 1520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(160, 1, '৩৭১ (খাড়া) অব ২০2২-২৩', '১৫৪/সদর (খাড়া) অব ২০২২-২৩', 128, 12, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '100000.00', '', '0.00', '', '0.00', '', 120, 120, 161, 1521, 1640, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(161, 1, '৩৭২ (খাড়া) অব ২০2২-২৩', '১৫৫/সদর (খাড়া) অব ২০২২-২৩', 114, 13, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '100000.00', '', '0.00', '', '0.00', '', 100, 100, 169, 1641, 1740, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(162, 1, '৩৭৩ (খাড়া) অব ২০2২-২৩', '১৫৬/সদর (খাড়া) অব ২০২২-২৩', 115, 15, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '95000.00', '', '0.00', '', '0.00', '', 120, 120, 171, 1741, 1860, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(163, 1, '৩৭৪ (খাড়া) অব ২০2২-২৩', '১৫৭/সদর (খাড়া) অব ২০২২-২৩', 118, 5, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '99000.00', '', '0.00', '', '0.00', '', 100, 100, 159, 1861, 1960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(164, 1, '৩৭৫ (খাড়া) অব ২০2২-২৩', '১৫৮/সদর (খাড়া) অব ২০২২-২৩', 108, 8, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '100000.00', '', '0.00', '', '0.00', '', 100, 100, 163, 1961, 2060, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(165, 1, '৩৭৬ (খাড়া) অব ২০2২-২৩', '১৫৯/সদর (খাড়া) অব ২০২২-২৩', 112, 8, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '90000.00', '', '0.00', '', '0.00', '', 100, 100, 142, 2061, 2160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(166, 1, '৩৭৭ (খাড়া) অব ২০2২-২৩', '১৬০/সদর (খাড়া) অব ২০২২-২৩', 138, 19, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '105000.00', '', '0.00', '', '0.00', '', 140, 140, 160, 2161, 2300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(167, 1, '৩৭৮ (খাড়া) অব ২০2২-২৩', '১৬১/সদর (খাড়া) অব ২০২২-২৩', 130, 21, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '95000.00', '', '0.00', '', '0.00', '', 140, 140, 150, 2301, 2440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(168, 1, '৩৭৯ (খাড়া) অব ২০2২-২৩', '১৬২/সদর (খাড়া) অব ২০২২-২৩', 124, 28, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '95000.00', '', '0.00', '', '0.00', '', 120, 120, 159, 2441, 2560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(169, 1, '৩৮০ (খাড়া) অব ২০2২-২৩', '১৬৩/সদর (খাড়া) অব ২০২২-২৩', 124, 29, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '95000.00', '', '0.00', '', '0.00', '', 140, 140, 153, 2561, 2700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(170, 1, '৩৮১ (খাড়া) অব ২০2২-২৩', '১৬৪/সদর (খাড়া) অব ২০২২-২৩', 125, 29, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '95000.00', '', '0.00', '', '0.00', '', 160, 160, 136, 2701, 2860, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(171, 1, '৩৮২ (খাড়া) অব ২০2২-২৩', '১৬৫/সদর (খাড়া) অব ২০২২-২৩', 133, 31, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '103000.00', '', '0.00', '', '0.00', '', 140, 140, 147, 2861, 3000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(172, 1, '৩৮৩ (খাড়া) অব ২০2২-২৩', '১৬৬/সদর (খাড়া) অব ২০২২-২৩', 154, 8, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '105000.00', '', '0.00', '', '0.00', '', 120, 120, 196, 3001, 3120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(173, 1, '৩৮৪ (খাড়া) অব ২০2২-২৩', '১৬৭/সদর (খাড়া) অব ২০২২-২৩', 101, 9, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '100000.00', '', '0.00', '', '0.00', '', 80, 80, 173, 3121, 3200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(174, 1, '৩৮৫ (খাড়া) অব ২০2২-২৩', '১৬৮/সদর (খাড়া) অব ২০২২-২৩', 139, 46, 'মেসার্স ফালাহ ট্রেডার্স, প্রোঃ মোঃ হালিম, পিতাঃ আব্দুর রশিদ, মাতাঃ হালিমা খাতুন, সাং- কাঞ্চন কলোনী, প্রধান ডাকঘর-৫২০০, দিনাজপুর সদর, দিনাজপুর। ', '106000.00', '', '0.00', '', '0.00', '', 160, 160, 160, 3201, 3360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(175, 1, '৩৮৬ (খাড়া) অব ২০2২-২৩', '১৬৯/সদর (খাড়া) অব ২০২২-২৩', 187, 82, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '122000.00', '', '0.00', '', '0.00', '', 240, 240, 153, 3361, 3600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(176, 1, '৩৮৭ (খাড়া) অব ২০2২-২৩', '১৭০/সদর (খাড়া) অব ২০২২-২৩', 143, 41, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '105000.00', '', '0.00', '', '0.00', '', 160, 160, 167, 3601, 3760, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(177, 1, '৩৮৮ (খাড়া) অব ২০2২-২৩', '১৭১/সদর (খাড়া) অব ২০২২-২৩', 106, 15, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '97000.00', '', '0.00', '', '0.00', '', 82, 82, 178, 3761, 3842, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(178, 1, '৩৮৯ (ঝঃপঃ) অব ২০2২-২৩', '১৭২/সদর (ঝঃপঃ) অব ২০২২-২৩', 0, 0, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '56000.00', '', '0.00', '', '0.00', '', 150, 150, 182, 1, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(179, 1, '৩৯০ (ঝঃপঃ) অব ২০2২-২৩', '১৭৩/সদর (ঝঃপঃ) অব ২০২২-২৩', 0, 0, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '50000.00', '', '0.00', '', '0.00', '', 128, 128, 182, 151, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(180, 1, '৩৯১ (খাড়া) অব ২০2২-২৩', '০১ রাম (খাড়া) অব ২০২২-২৩', 72, 0, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '77750.00', '', '0.00', '', '0.00', '', 20, 20, 206, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(181, 1, '৩৯২ (খাড়া) অব ২০2২-২৩', '০২ রাম (খাড়া) অব ২০২২-২৩', 68, 2, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '65000.00', '', '0.00', '', '0.00', '', 25, 25, 165, 21, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(182, 1, '৩৯৩ (খাড়া) অব ২০2২-২৩', '০৩ রাম (খাড়া) অব ২০২২-২৩', 85, 9, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '55000.00', '', '0.00', '', '0.00', '', 45, 45, 143, 46, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(183, 1, '৩৯৪ (খাড়া) অব ২০2২-২৩', '০৪ রাম (খাড়া) অব ২০২২-২৩', 138, 7, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '70000.00', '', '0.00', '', '0.00', '', 60, 59, 169, 91, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(184, 1, '৩৯৫ (খাড়া) অব ২০2২-২৩', '০৫ রাম (খাড়া) অব ২০২২-২৩', 150, 7, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '75000.00', '', '0.00', '', '0.00', '', 60, 60, 193, 151, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(185, 1, '৩৯৬ (খাড়া) অব ২০2২-২৩', '০৬ রাম (খাড়া) অব ২০২২-২৩', 94, 4, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '71000.00', '', '0.00', '', '0.00', '', 30, 30, 188, 211, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(186, 1, '৩৯৭ (খাড়া) অব ২০2২-২৩', '০৭ রাম (খাড়া) অব ২০২২-২৩', 84, 6, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '58000.00', '', '0.00', '', '0.00', '', 30, 30, 148, 241, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(187, 1, '৩৯৮ (খাড়া) অব ২০2২-২৩', '০৮ রাম (খাড়া) অব ২০২২-২৩', 67, 2, 'মেসার্স সাগর খাদ্য ভান্ডার, প্রোঃ মোঃ আসাদুজ্জামান, পিতাঃ মোঃ মিজানুর রহমান, মাতাঃ মোছাঃ আসমা বেগম, সাং- অনন্ত্রামপুর, অনন্তরামপুর-৫৪৭০, পীরগঞ্জ, রংপুর।', '57000.00', '', '0.00', '', '0.00', '', 30, 30, 162, 271, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(188, 1, '৩৯৯ (খাড়া) অব ২০2২-২৩', '০৯ রাম (খাড়া) অব ২০২২-২৩', 117, 2, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '92498.00', '', '0.00', '', '0.00', '', 60, 60, 234, 301, 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(189, 1, '৪০০ (খাড়া) অব ২০2২-২৩', '১০ রাম (খাড়া) অব ২০২২-২৩', 87, 7, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '68316.00', '', '0.00', '', '0.00', '', 50, 50, 169, 361, 410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(190, 1, '৪০১ (খাড়া) অব ২০2২-২৩', '১১ রাম (খাড়া) অব ২০২২-২৩', 74, 3, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসুলপুর-৬৫৭০, বদলগাছা, নওগাঁ', '68189.00', '', '0.00', '', '0.00', '', 35, 35, 181, 411, 445, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(191, 1, 'sdfdssfdsafdsa', 'dsafdsffsa', 44, 44, 'dsfsfd22', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 05:06:49', '2023-06-01 05:06:49', NULL),
(192, 1, 'test group number and year2', 'test range and lot2', 11, 22, 'Rafusoft', '68189.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 05:14:44', '2023-06-01 05:14:44', NULL),
(193, 1, 'test group number and year3', 'test range and lot3', 15, 44, 'dsfsfd223', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 05:20:48', '2023-06-01 05:20:48', NULL),
(194, 1, 'test group number and year4', 'test range and lot22', 155, 3, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '68189.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 05:31:43', '2023-06-01 05:31:43', NULL),
(195, 1, 'test group number and year4', 'test range and lot4', 100, 3, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 05:34:31', '2023-06-01 05:34:31', NULL),
(196, 1, 'test group number and year5', 'test range and lot4', 50, 6, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 05:58:21', '2023-06-01 05:58:21', NULL),
(197, 1, 'test group number and year6', 'test range and lot6', 30, 35, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 06:29:20', '2023-06-01 06:29:20', NULL),
(198, 1, 'test group number and year7', 'test range and lot7', 25, 55, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 06:33:52', '2023-06-01 06:33:52', NULL),
(199, 1, 'test group number and year8', 'test range and lot8', 44, 44, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 06:46:27', '2023-06-01 06:46:27', NULL),
(200, 1, 'test group number and year4', 'test range and lot4', 44, 3, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-01 09:54:07', '2023-06-01 09:54:07', NULL),
(201, 1, 'test group number and year', 'test range and lot', 44, 44, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '68189.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-05 11:56:58', '2023-06-05 11:56:58', NULL),
(202, 1, 'test group number and year', 'test range and lot2', 44, 44, 'মেসার্স সুবর্ণা ফার্নিচার, প্রোঃ মোঃ নাহিদ হোসেন, পিতাঃ ইসলাম মন্ডল, মাতাঃ নাইচ বানু, সাং- শ্রীকৃষ্ণপুর, নিউ রসু', '2344.00', '', '0.00', '', '0.00', '', NULL, 3434, 3434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-06 15:04:33', '2023-07-06 15:04:33', NULL),
(203, 5, 'demo', 'demo', 20, 20, 'demo dorpotro', '20.00', 'demo ogrim', '20.00', 'demo jamanot', '20.00', 'demo projati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-11-20 12:16:42', '2023-11-20 12:16:42', NULL),
(204, 6, 'demo 6', '611212023', 60, 80, 'demo dorpotro two', '50.00', 'demo ogrim two', '50.00', 'demo jamanot two', '60.00', 'demo projati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-11-20 21:49:22', '2023-11-20 21:49:22', NULL),
(205, 5, 'demo20', 'demo20', 20, 20, 'demo dorpotro three', '20.00', 'demo ogrim three', '20.00', 'demo jamanot three', '20.00', 'demo projati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-11-22 11:26:56', '2023-11-22 11:26:56', NULL),
(206, 6, 'demo2030', 'demo2030', 40, 50, 'demo dorpotro four', '50.00', 'demo ogrim four', '50.00', 'demo jamanot four', '100.00', 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-11-27 20:29:23', '2023-11-27 20:29:23', NULL),
(208, 13, '778', '779776', 34, 33, 'Sumon islam', '56.00', 'ogrimer biboron demo test for lot deposite', '34.00', 'jamanoter biboron demo test for lot deposite', '33.00', 'gaser projati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-03 02:42:12', '2023-12-03 02:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wood_lot_deposit_payments`
--

CREATE TABLE `wood_lot_deposit_payments` (
  `id` int NOT NULL,
  `wood_lot_id` int NOT NULL,
  `money_deposit_slip_no` varchar(255) NOT NULL,
  `party_id` int NOT NULL,
  `institute_id` int NOT NULL,
  `deposit_amount` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wood_lot_deposit_payments`
--

INSERT INTO `wood_lot_deposit_payments` (`id`, `wood_lot_id`, `money_deposit_slip_no`, `party_id`, `institute_id`, `deposit_amount`, `comment`, `created_at`, `updated_at`) VALUES
(1, 208, 'hello', 2, 3, '60.00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 208, '60', 2, 4, '80.00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 208, '80', 2, 4, '90.00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 208, 'ththy', 2, 4, '80.00', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wood_lot_payments`
--

CREATE TABLE `wood_lot_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `wood_lot_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wood_lot_payment_histories`
--

CREATE TABLE `wood_lot_payment_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `wood_lot_id` int NOT NULL,
  `money_collection_slip_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_collection_date` date NOT NULL,
  `money_deposit_slip_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_deposit` decimal(10,2) DEFAULT NULL,
  `collection_amount` decimal(10,2) NOT NULL,
  `vat` int NOT NULL,
  `tax` int NOT NULL,
  `late_fees` decimal(10,2) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wood_lot_payment_histories`
--

INSERT INTO `wood_lot_payment_histories` (`id`, `wood_lot_id`, `money_collection_slip_no`, `money_collection_date`, `money_deposit_slip_no`, `money_deposit`, `collection_amount`, `vat`, `tax`, `late_fees`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 53, '3030', '2023-05-21', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 19:03:55', '2023-05-20 19:03:55', NULL),
(2, 53, '3030', '2023-05-21', '5555', '2000.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 19:06:02', '2023-05-20 19:06:02', NULL),
(3, 53, '3030', '2023-05-21', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 19:34:35', '2023-05-20 19:34:35', NULL),
(4, 53, '3030', '2023-05-21', '6060', '3243242.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 19:37:23', '2023-05-20 19:37:23', NULL),
(5, 53, '3030', '2023-05-21', '6060', '2000.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 19:40:21', '2023-05-20 19:40:21', NULL),
(6, 53, '3030', '2023-05-21', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 19:40:37', '2023-05-20 19:40:37', NULL),
(7, 53, '3224242', '2023-05-04', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 19:48:14', '2023-05-20 19:48:14', NULL),
(8, 53, '3030', '2023-05-21', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 20:33:40', '2023-05-20 20:33:40', NULL),
(9, 53, '3030', '2023-05-21', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-05-20 20:33:50', '2023-05-20 20:33:50', NULL),
(10, 53, '3224242', '2023-05-21', '46646446', '5000.00', '0.00', 0, 0, '0.00', 1, '2023-05-21 12:11:55', '2023-05-21 12:11:55', NULL),
(11, 1, '3224242', '2023-06-10', '343242', '3243242.00', '0.00', 0, 0, '0.00', 1, '2023-06-01 13:43:53', '2023-06-01 13:43:53', NULL),
(12, 1, '3030', '2023-06-03', '6060', '5000.00', '0.00', 0, 0, '0.00', 1, '2023-06-03 09:34:21', '2023-06-03 09:34:21', NULL),
(13, 1, '3030', '2023-06-03', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-06-03 09:35:57', '2023-06-03 09:35:57', NULL),
(14, 1, '3224242', '2023-06-03', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-06-03 10:01:29', '2023-06-03 10:01:29', NULL),
(15, 1, '3030', '2023-06-03', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-06-03 10:10:25', '2023-06-03 10:10:25', NULL),
(16, 1, '3030', '2023-06-03', '6060', '1010.00', '0.00', 0, 0, '0.00', 1, '2023-06-03 10:43:14', '2023-06-03 10:43:14', NULL),
(17, 205, '3030', '2023-11-21', NULL, NULL, '0.00', 50, 80, '30.00', 50, '2023-11-22 12:17:42', '2023-11-22 12:17:42', NULL),
(18, 205, '3030', '2023-11-23', NULL, NULL, '70.00', 10, 20, '20.00', 50, '2023-11-22 20:39:19', '2023-11-22 20:39:19', NULL),
(19, 206, '3030', '2023-11-28', NULL, NULL, '70.00', 50, 80, '30.00', 50, '2023-11-27 20:30:34', '2023-11-27 20:30:34', NULL),
(20, 204, '3030', '2023-12-01', NULL, NULL, '50.00', 10, 10, '10.00', 50, '2023-12-02 14:20:31', '2023-12-02 14:20:31', NULL),
(21, 204, 'demo_roshid_test_02', '2023-12-08', NULL, NULL, '50.00', 10, 10, '10.00', 50, '2023-12-02 14:53:15', '2023-12-02 14:53:15', NULL),
(22, 204, 'demo_roshid_test_02', '2023-12-08', NULL, NULL, '50.00', 10, 10, '10.00', 50, '2023-12-02 14:53:15', '2023-12-02 14:53:15', NULL),
(23, 204, 'demo_roshid_test_03', '2023-11-30', NULL, NULL, '20.00', 10, 10, '10.00', 50, '2023-12-02 14:54:26', '2023-12-02 14:54:26', NULL),
(24, 208, 'demo_roshid_test_02_deposit', '2023-12-15', NULL, NULL, '400.00', 10, 10, '50.00', 50, '2023-12-03 02:44:41', '2023-12-03 02:44:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bits`
--
ALTER TABLE `bits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_divisions`
--
ALTER TABLE `country_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forest_types`
--
ALTER TABLE `forest_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gardens`
--
ALTER TABLE `gardens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garden_bikritos`
--
ALTER TABLE `garden_bikritos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garden_information`
--
ALTER TABLE `garden_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garden_in_unions`
--
ALTER TABLE `garden_in_unions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garden_types`
--
ALTER TABLE `garden_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `land_owners`
--
ALTER TABLE `land_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_in_gardens`
--
ALTER TABLE `party_in_gardens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `profit_distributions`
--
ALTER TABLE `profit_distributions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranges`
--
ALTER TABLE `ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `range_in_districts`
--
ALTER TABLE `range_in_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `range_in_unions`
--
ALTER TABLE `range_in_unions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `range_thanas`
--
ALTER TABLE `range_thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `sfntc`
--
ALTER TABLE `sfntc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sfpcs`
--
ALTER TABLE `sfpcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tff_profit_distributions`
--
ALTER TABLE `tff_profit_distributions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tree_species_information`
--
ALTER TABLE `tree_species_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `union_parishads`
--
ALTER TABLE `union_parishads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wood_lots`
--
ALTER TABLE `wood_lots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wood_lot_deposit_payments`
--
ALTER TABLE `wood_lot_deposit_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wood_lot_payments`
--
ALTER TABLE `wood_lot_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wood_lot_payment_histories`
--
ALTER TABLE `wood_lot_payment_histories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bits`
--
ALTER TABLE `bits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `country_divisions`
--
ALTER TABLE `country_divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forest_types`
--
ALTER TABLE `forest_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gardens`
--
ALTER TABLE `gardens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `garden_bikritos`
--
ALTER TABLE `garden_bikritos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `garden_information`
--
ALTER TABLE `garden_information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `garden_in_unions`
--
ALTER TABLE `garden_in_unions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `garden_types`
--
ALTER TABLE `garden_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `land_owners`
--
ALTER TABLE `land_owners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `party_in_gardens`
--
ALTER TABLE `party_in_gardens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `profit_distributions`
--
ALTER TABLE `profit_distributions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ranges`
--
ALTER TABLE `ranges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `range_in_districts`
--
ALTER TABLE `range_in_districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `range_in_unions`
--
ALTER TABLE `range_in_unions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `range_thanas`
--
ALTER TABLE `range_thanas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sfntc`
--
ALTER TABLE `sfntc`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sfpcs`
--
ALTER TABLE `sfpcs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tff_profit_distributions`
--
ALTER TABLE `tff_profit_distributions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tree_species_information`
--
ALTER TABLE `tree_species_information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `union_parishads`
--
ALTER TABLE `union_parishads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `wood_lots`
--
ALTER TABLE `wood_lots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `wood_lot_deposit_payments`
--
ALTER TABLE `wood_lot_deposit_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wood_lot_payments`
--
ALTER TABLE `wood_lot_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wood_lot_payment_histories`
--
ALTER TABLE `wood_lot_payment_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
