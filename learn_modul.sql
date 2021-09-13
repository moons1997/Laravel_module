-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 13 2021 г., 06:03
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `learn_modul`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_09_181403_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `todos`
--

INSERT INTO `todos` (`id`, `title`, `body`, `completed`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Qui neque qui sequi quasi asperiores nostrum qui.', 'Et perferendis sed possimus qui quidem. Occaecati ut necessitatibus suscipit minus deleniti officiis. Neque necessitatibus laboriosam qui aut cum cumque.', 0, 3, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(2, 'Assumenda sapiente vel autem eius sint voluptate assumenda.', 'Atque corrupti porro fugit excepturi necessitatibus voluptas natus. Quia odit voluptatibus accusantium qui numquam minus facilis. Eius consectetur iste consequatur et quasi dolorem.', 1, 4, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(3, 'Officia occaecati ut inventore.', 'Nobis tempora ut vel accusantium maiores. Blanditiis consequuntur nobis velit commodi. Ratione qui aut eos. Recusandae commodi et sunt animi recusandae dicta.', 0, 8, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(4, 'Nesciunt numquam quo quisquam deleniti sed.', 'Et repudiandae consequatur quo necessitatibus. Sunt saepe vel et voluptatibus. Vero adipisci voluptatum reiciendis non.', 1, 1, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(5, 'Consequatur dolore in veritatis aut iste est tempore.', 'Sapiente in consequatur possimus voluptates error error ut. Dolores sint quia labore ut aut molestiae quia. Sit sapiente facilis non quidem ut. Iure iure alias quis ratione suscipit ut. Quisquam laudantium aliquid quos fugiat occaecati qui voluptas quibusdam.', 1, 10, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(6, 'Nobis blanditiis consequatur odit architecto velit quasi.', 'Temporibus tenetur qui fugit. Occaecati nulla eos aut corrupti animi. Facilis odit quas quo recusandae vero facilis. Eligendi eligendi recusandae ut officia dolores.', 1, 6, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(7, 'Saepe commodi odit cupiditate quam reiciendis.', 'Est sunt et maiores tenetur. Molestiae voluptatum qui dolores omnis ipsa voluptas. Et facere repudiandae animi aut aliquid harum est ducimus. Aut odio omnis consequatur velit esse modi dolor nisi. Labore temporibus omnis atque animi sit nemo ea.', 1, 4, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(8, 'Asperiores molestias corporis aut rem atque sit enim.', 'Nulla sit reiciendis est numquam voluptate voluptate. Consequatur accusamus expedita explicabo sit qui reiciendis blanditiis. Amet eos doloremque voluptatum earum eaque. Vero dolor architecto et quo iste laboriosam enim.', 0, 6, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(9, 'Neque dolorum odit labore est aliquam officia.', 'Ad natus sed ut vitae eos non ut. Enim suscipit sapiente consequuntur laboriosam excepturi reprehenderit.', 1, 6, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(10, 'Fugit nulla non inventore ea autem.', 'Aut sunt exercitationem vel quasi magni. Officia sed blanditiis libero magni. Aliquid est iste ipsa iusto dolores. Minus non qui fugit vel. Et sint beatae distinctio ut porro.', 1, 9, '2021-09-10 00:38:31', '2021-09-10 00:38:31'),
(11, 'Enim nihil animi perspiciatis omnis ut quo.', 'Ut natus explicabo nesciunt quos. Corporis enim dolore occaecati est enim consequuntur molestias. Enim est velit nobis quia maxime est. Ut aut et quis possimus.', 0, 3, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(12, 'Non quae sint fugit qui non.', 'Nisi qui molestias iusto est quibusdam et rerum sequi. Voluptas non sunt quo.', 0, 10, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(13, 'Expedita quo cumque voluptatem sed et.', 'Quisquam hic temporibus facere et. Et qui cumque assumenda necessitatibus quisquam aut. Quia quis nulla qui alias est. Incidunt nihil architecto quasi sint reprehenderit atque.', 0, 8, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(14, 'Ut odio voluptatem unde qui enim occaecati.', 'Culpa quia quod expedita sequi dolorum. Distinctio ipsa veritatis hic et. Maiores quidem dolor vel cum aut. Eligendi natus suscipit consequatur aut non tempora.', 1, 9, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(15, 'Sed autem distinctio aliquam nisi.', 'Mollitia ut velit sequi enim assumenda. Sit eos consectetur eius sit beatae sit. Rerum autem veniam ipsa inventore incidunt laboriosam mollitia. Sunt esse quam nostrum. Cupiditate enim voluptas quod at.', 0, 1, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(16, 'Tenetur odio vel enim necessitatibus atque.', 'Iste quia eius necessitatibus in perspiciatis ut eveniet. Illo qui nisi consectetur perspiciatis veniam commodi. In sapiente et quia amet unde.', 0, 8, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(17, 'Facilis ut dolorem itaque ab dolorem.', 'Quis quae magnam nulla non expedita molestias molestias. Eligendi sunt quaerat sunt non.', 0, 7, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(18, 'Ad ratione harum facere sunt animi laborum voluptatem.', 'Eligendi consequatur qui quia animi. Placeat veritatis fuga voluptas voluptas accusamus voluptatum.', 1, 8, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(19, 'Inventore error est laudantium odio non dolorem doloremque.', 'Qui ratione ipsam rerum quae. Aut numquam est esse dolore minus est deserunt quia. Omnis et enim optio libero qui.', 1, 2, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(20, 'Qui maiores et atque ullam rerum reiciendis.', 'Doloribus odio quae expedita cum et. Dolores nihil quasi consequuntur totam. Id aliquid aut magni officia maiores in.', 0, 6, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(21, 'Ipsam aliquam et atque labore asperiores quia ea.', 'Consequuntur et animi voluptas veniam. Tempora voluptas et omnis voluptatem dolor. Earum et quam consequuntur.', 0, 3, '2021-09-10 00:38:32', '2021-09-10 00:38:32'),
(22, 'Aliquam qui exercitationem suscipit laborum sint.', 'Qui non hic commodi expedita maxime quo saepe. Iure exercitationem voluptatem vel aperiam. Eum est omnis magnam fugiat quia est voluptate.', 1, 4, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(23, 'Cumque quia neque occaecati cumque.', 'Qui odit omnis illum molestias aliquid sint. Adipisci ut mollitia natus ex sunt. Voluptas non quos magnam. Doloremque necessitatibus eos reprehenderit est vitae blanditiis.', 0, 9, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(24, 'Aut omnis cumque modi nulla.', 'Eos quia cupiditate earum modi ea beatae. Eaque consequatur tenetur ratione non qui eveniet. Reprehenderit officiis rem reiciendis rerum unde. Voluptatum eos asperiores optio quis.', 0, 8, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(25, 'Et aspernatur natus nam eaque incidunt quas corrupti.', 'Veritatis amet deserunt aut dicta non. Quia et libero nulla praesentium ut harum. Qui amet beatae iusto deleniti rerum accusamus.', 1, 6, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(26, 'Repellendus et et praesentium quas dolorem.', 'Perferendis omnis reiciendis qui et praesentium aut. Ut dolor repellendus omnis hic reprehenderit. Voluptas exercitationem adipisci non mollitia temporibus. Nihil et ipsam nobis deleniti.', 0, 6, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(27, 'Id reprehenderit qui voluptatibus harum mollitia.', 'Voluptatem ducimus molestiae in sint eos odit cumque consequatur. Qui id aut nobis et dolores pariatur sed. Quibusdam et corporis nemo ea aperiam qui. Sapiente accusamus officiis dolores eum et ex.', 0, 3, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(28, 'Laborum nulla et et rerum.', 'Sed consequatur sit est qui quos nostrum. Maiores modi est hic dolor animi. Provident molestias velit ducimus. In vero natus perspiciatis qui eius dolor eveniet.', 1, 4, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(29, 'Voluptatem qui consequatur ipsam.', 'Earum cum saepe dolor amet vel ad itaque. Ullam qui nihil quis et repudiandae architecto consequatur libero.', 1, 8, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(30, 'Ipsam pariatur autem non ut odit.', 'Doloremque assumenda ea quibusdam accusantium. Id repudiandae voluptatem quis repellat soluta dolores voluptas.', 0, 1, '2021-09-10 00:38:33', '2021-09-10 00:38:33'),
(31, 'Voluptate aliquid omnis perspiciatis odit.', 'Eligendi omnis accusantium sit animi vero aut soluta sit. Iure ratione ut nemo veritatis quis nemo modi. Debitis quo quidem debitis nostrum. Quasi quidem aut quos dolores aut voluptates.', 1, 5, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(32, 'Ex blanditiis incidunt soluta mollitia vero magnam.', 'Omnis blanditiis incidunt quis aspernatur nihil ut quam. Maxime aut voluptates sunt doloribus et perspiciatis. Hic deleniti officiis aut aut fuga non dicta temporibus.', 0, 5, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(33, 'Veritatis doloremque veniam non magni aut et.', 'Tempore dolores vel enim et laboriosam sint numquam. Corporis quos suscipit neque et dolor perferendis ullam quos. Sunt dolorem saepe accusantium exercitationem. Qui qui cum dolorum qui sunt possimus.', 1, 5, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(34, 'Consequatur totam commodi est ad ipsum minus iste.', 'Quia earum alias dolorum est et. Ullam sequi est reiciendis voluptatem unde quisquam. Corporis voluptates voluptatem distinctio earum voluptates quae non. Inventore maxime dignissimos rerum eum excepturi eligendi. Nihil voluptas amet aut rerum.', 1, 5, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(35, 'Tempora quis iure tenetur saepe recusandae commodi qui.', 'Aut temporibus mollitia quis suscipit autem qui nostrum. Non dolor dolorem incidunt quae autem nostrum non. Quia omnis vitae qui ut repellendus deleniti. Quam sit corporis ipsa omnis error at vel.', 1, 1, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(36, 'Culpa deleniti similique corporis rerum odio consequatur cum a.', 'Itaque quia libero illum. In beatae placeat qui. Quibusdam voluptate repudiandae maiores sunt nemo. In sunt necessitatibus occaecati debitis alias asperiores in.', 1, 3, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(37, 'Vel aut magni omnis commodi non tempora at.', 'Qui qui perspiciatis at facilis. Nihil ut repudiandae iste eius est enim veniam. Quas deleniti exercitationem quis assumenda quod quia eum. Laudantium et consequatur sint molestiae.', 0, 3, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(38, 'Quo doloribus et sit molestias labore aut.', 'Quisquam pariatur nihil quos quidem quis. Et dolorem voluptatem possimus ea eos. Illo quo ut impedit aperiam. Quo ut aut dicta sed totam sunt consequuntur laboriosam.', 0, 8, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(39, 'Quia modi dolorem expedita recusandae.', 'Dolor quidem incidunt est ut ut perspiciatis. Sint incidunt dolorem voluptatem illum molestiae consequatur. Iusto voluptas cupiditate iusto corporis. Et ut iusto quae vel enim.', 0, 5, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(40, 'Deserunt eos tenetur architecto dolorem eos.', 'Vitae magni nisi est accusamus saepe repellat est. Aperiam ut quia molestiae voluptatem illo. Cumque repellat et nihil in unde.', 0, 2, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(41, 'Itaque deserunt est odio facere maxime sint.', 'Odio quam incidunt impedit. Laudantium quo nihil ab repellendus nobis vel similique rerum.', 1, 7, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(42, 'Totam quia quia impedit.', 'Officia accusamus non facere earum dolorem numquam odit. Quidem rerum magni ut dolor temporibus quia. Nihil et voluptas quia eos.', 0, 2, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(43, 'Dolorum reprehenderit dolores tempore nam.', 'Minima facilis praesentium excepturi ipsa. Impedit sunt amet voluptatibus officiis dignissimos in distinctio ut. Sed asperiores est quas aperiam inventore.', 0, 9, '2021-09-10 00:38:34', '2021-09-10 00:38:34'),
(44, 'Officiis aut consectetur voluptatem illo dolores quisquam quod.', 'Magni distinctio fuga amet non dolor velit quisquam. Repellat amet tenetur doloremque. Quisquam laborum in ut quo pariatur. Aut est iure accusamus rerum.', 1, 10, '2021-09-10 00:38:35', '2021-09-10 00:38:35'),
(45, 'Recusandae impedit facere ipsa doloremque dolor.', 'Officia maiores quasi quo voluptas rerum eius optio quas. Quas aut ipsam pariatur facere ea. Quam praesentium amet sint adipisci. Assumenda et exercitationem unde corrupti et.', 1, 3, '2021-09-10 00:38:35', '2021-09-10 00:38:35'),
(46, 'Ea consequuntur et aperiam quasi facilis.', 'Atque deleniti non a. Dolorem illo facere exercitationem dignissimos aut. Facere voluptatem consequatur error pariatur qui suscipit.', 1, 8, '2021-09-10 00:38:35', '2021-09-10 00:38:35'),
(47, 'Quaerat accusantium ea dolorem quidem aut et.', 'Quod ratione illum magnam sequi enim earum ratione ducimus. Veniam fugit et delectus dolores qui. Qui consequatur quia ab.', 0, 8, '2021-09-10 00:38:35', '2021-09-10 00:38:35'),
(48, 'Blanditiis inventore voluptatem tenetur.', 'Dolorem aspernatur dolor quibusdam iste animi et quam. Dicta itaque possimus velit nobis quia et quis voluptatibus. Nesciunt explicabo omnis explicabo. Voluptatem rem velit omnis est.', 0, 1, '2021-09-10 00:38:35', '2021-09-10 00:38:35'),
(49, 'Fuga non soluta tempore.', 'Voluptatem eaque et voluptatum vitae facilis occaecati. Voluptatem ratione deserunt doloremque omnis. Dolor et quia ipsa et.', 1, 9, '2021-09-10 00:38:35', '2021-09-10 00:38:35'),
(50, 'Veritatis voluptatem laboriosam aut qui.', 'Corporis illo ullam odit repudiandae cum molestiae. Magnam alias voluptas qui. Omnis vel itaque unde laboriosam et voluptatem.', 0, 9, '2021-09-10 00:38:35', '2021-09-10 00:38:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zachary Klein PhD', 'kendrick92@example.net', '2021-09-10 00:36:40', '$2y$10$0wzrUjliulJ2AD5M7o6l6OsSvBJPxPeS1yrxJWIWFaplP8ShBbqwK', 'uTLmEgZdNf', '2021-09-10 00:36:41', '2021-09-10 00:36:41'),
(2, 'Prof. Kiara Legros', 'murazik.mollie@example.com', '2021-09-10 00:36:41', '$2y$10$zc1c.NabC6hak8eYxodtsOvaPuyMljE2358FYDh9/FaO921ghMtYG', 'Pq4MlcVMbP', '2021-09-10 00:36:41', '2021-09-10 00:36:41'),
(3, 'Dr. Kim Schuster', 'kuhlman.raul@example.com', '2021-09-10 00:36:41', '$2y$10$O3NZ8n3.Jh25Z3EaCcIizu2el9qeF0D0ZQwU9Lc97oA/0FopdRY/q', 'AnxlM6MQiw', '2021-09-10 00:36:41', '2021-09-10 00:36:41'),
(4, 'Skylar Hilpert', 'wshields@example.com', '2021-09-10 00:36:41', '$2y$10$93WALZ7Igs3Pa5VPFWYMUOVGwXi/MZI5JVakNYJvXdifN/HlsAXtO', '1ER6CCZBya', '2021-09-10 00:36:42', '2021-09-10 00:36:42'),
(5, 'Giovani Goyette', 'meredith01@example.net', '2021-09-10 00:36:41', '$2y$10$9dTu1pxrMw58HVqsLJCJzeU5wanTcAkccrCpSoZ6RV7ioViUmi35O', 'iqGU2WSI1g', '2021-09-10 00:36:42', '2021-09-10 00:36:42'),
(6, 'Hal Conroy', 'luisa.purdy@example.com', '2021-09-10 00:36:41', '$2y$10$UhXT7rAceJWbbhktKCdA1.gH7dheANX2J7dQ85jXARGqr6AMfG6Ae', 'cuECZUBZ7w', '2021-09-10 00:36:42', '2021-09-10 00:36:42'),
(7, 'Prof. Dan Ritchie', 'ifisher@example.com', '2021-09-10 00:36:41', '$2y$10$w7pYdyRM0iljyyTl8gwrjeec1j7QdWO8L2uqgJdlHPXX9w/LepTce', 'xZvAbdNc9I', '2021-09-10 00:36:42', '2021-09-10 00:36:42'),
(8, 'Vilma Flatley', 'germaine.hane@example.com', '2021-09-10 00:36:41', '$2y$10$33LZ6D5xqdiHDmKMPRdQnuCAEANuqi6qZqxKel4BwKkArEAby/pEK', 'XFN9hW9XuO', '2021-09-10 00:36:42', '2021-09-10 00:36:42'),
(9, 'Zoie Wisoky', 'kshlerin.tate@example.org', '2021-09-10 00:36:41', '$2y$10$0IHn/H9citgbWYVqBiMN4uR.Bi6kYxzXkUPIL4N82HKMyTCL/1CGm', 'sG9MOsbvcq', '2021-09-10 00:36:42', '2021-09-10 00:36:42'),
(10, 'Ms. Etha Gerlach IV', 'gshanahan@example.org', '2021-09-10 00:36:41', '$2y$10$82hV9VlQ1haIpORvnZhqUOJVn3ClDLnA4mP.FhEdSFfnbBxXvIOhq', 'RiBuD6vaAx', '2021-09-10 00:36:42', '2021-09-10 00:36:42'),
(11, 'test', 'test@gmail.com', NULL, '$2y$10$czJCi7MUxiqHtFZmWBmVZ.oAHqaeXWo.YZkQY.ZBiOjzBzLjOlqje', NULL, '2021-09-10 23:11:08', '2021-09-10 23:11:08'),
(12, 'test2', 'test2@gmail.com', NULL, '$2y$10$dOmuLFT4s7J5PSx/UvxGt.l1k91.JFGInDOiJgutHEx15ll5xZg2u', NULL, '2021-09-10 23:32:53', '2021-09-10 23:32:53'),
(13, 'test3', 'test3@gmail.com', NULL, '$2y$10$rcp2j7Lh1/KdECwC6MwYiuwt93G7rGJKmq7.C5ajA.5yIPwPrliVS', NULL, '2021-09-11 01:33:05', '2021-09-11 01:33:05'),
(14, 'test4', 'test4@gmail.com', NULL, '$2y$10$8TiuAg/tuPvyY.oGNeMz6eyUMnfPzDUZheJqul5YOHlqY7NSqoq9K', NULL, '2021-09-11 01:38:00', '2021-09-11 01:38:00'),
(15, 'test5', 'test5@gmail.com', NULL, '$2y$10$3mYsnkGV/h.ufDjmFkLPR.mxvXf9XbLzV1jl0mF5JRLj08WW..zQy', NULL, '2021-09-11 01:43:07', '2021-09-11 01:43:07'),
(16, 'test6', 'test6@gmail.com', NULL, '$2y$10$z1/1k8jddDeP2vp8x5WzEOsWlmGMrOoI5pi/vBYSuxFsfR47hvBLy', NULL, '2021-09-11 01:47:13', '2021-09-11 01:47:13'),
(17, 'test7', 'test7@gmail.com', NULL, '$2y$10$XMFDRKrLQCK41k2ra5063uFAhqCdpCjFWICGlpxhm8PisutpdNWnK', NULL, '2021-09-11 01:47:53', '2021-09-11 01:47:53'),
(18, 'test8', 'test8@gmail.com', NULL, '$2y$10$xdvjxL57yPzhG8ToZf0UCuDFWJnyHmuqn/CljqirdS03fKOKEDQlS', NULL, '2021-09-11 12:30:07', '2021-09-11 12:30:07'),
(19, 'test9', 'test9@gmail.com', NULL, '$2y$10$ZQwG1mqbvr2y4ZUA.Zllx.RPXHPsuMarVh998hhsMlhSWNY2fdeAW', NULL, '2021-09-11 14:12:08', '2021-09-11 14:12:08');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
