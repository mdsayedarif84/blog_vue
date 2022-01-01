-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 02:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rocky Graham', 'rocky-graham', 0, '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(2, 'Elnora Schuppe', 'elnora-schuppe', 0, '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(3, 'Miss Samantha Rodriguez', 'miss-samantha-rodriguez', 0, '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(4, 'Oleta Marvin', 'oleta-marvin', 1, '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(5, 'Carson Lockman', 'carson-lockman', 1, '2021-12-25 09:58:28', '2021-12-25 09:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2021_12_25_081410_create_categories_table', 1),
(6, '2021_12_25_081411_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('draft','published') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `thumbnail`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 'Voluptates quam nesciunt minus est ratione.', 'Necessitatibus voluptas natus voluptatibus rerum laboriosam. Est dolores est aliquam molestiae. Dolor voluptatem blanditiis unde et tempore enim quos.', 'https://via.placeholder.com/640x480.png/005500?text=ipsam', 'draft', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(2, 7, 4, 'Natus in tempora id veniam adipisci et sapiente.', 'Aut ut necessitatibus ut molestias molestias aperiam sed. Expedita autem ducimus veniam et cumque sint. Ab est qui saepe qui fuga eaque odio.', 'https://via.placeholder.com/640x480.png/004422?text=nihil', 'draft', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(3, 12, 2, 'Eum sit hic id vel molestias unde.', 'Autem molestiae alias vel dicta nostrum. Voluptatem ratione corrupti nisi facilis est tempora quia. Sint molestiae cumque nulla. Non recusandae est quia similique.', 'https://via.placeholder.com/640x480.png/00dddd?text=beatae', 'draft', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(4, 6, 2, 'Ipsam sunt laborum id ad porro dolorem in.', 'Tenetur provident ipsa dolorum consequatur sint vitae quia. Aut architecto illo aut et dolorem quaerat sequi. Consectetur iure non culpa. Maxime in dolor cupiditate excepturi enim.', 'https://via.placeholder.com/640x480.png/00ee55?text=aut', 'draft', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(5, 14, 5, 'Nisi dolorum quo sed eaque sed aliquam beatae autem.', 'Ut consequuntur aspernatur ut quaerat. Provident magni eligendi aut est velit quia est. Ducimus similique incidunt ex qui sit.', 'https://via.placeholder.com/640x480.png/003344?text=in', 'draft', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(6, 14, 5, 'Iure qui laboriosam dolorem perferendis hic soluta.', 'Temporibus eveniet tenetur cupiditate. Blanditiis commodi voluptates sit tenetur. Facilis necessitatibus sint ipsam blanditiis laborum molestiae iusto.', 'https://via.placeholder.com/640x480.png/002255?text=beatae', 'draft', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(7, 5, 2, 'In quis recusandae magnam laboriosam aut.', 'Quo voluptas nulla occaecati. Fugiat unde dignissimos libero praesentium ratione animi occaecati. Voluptatem nihil fugiat voluptates harum id.', 'https://via.placeholder.com/640x480.png/000055?text=deleniti', 'published', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(8, 1, 5, 'In enim quis porro doloremque tempore.', 'Nisi aperiam iusto eum quia minima accusantium voluptatem modi. Quidem voluptatem suscipit modi aliquid. Recusandae incidunt accusamus distinctio qui itaque eum. Eveniet ducimus quia omnis blanditiis provident qui dolorum.', 'https://via.placeholder.com/640x480.png/00bbee?text=consequatur', 'draft', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(9, 12, 4, 'Est non quo nemo accusantium.', 'Corrupti non modi hic aut quo iste velit et. Perferendis molestias officiis magni beatae eos dignissimos officiis. Nisi doloribus eius sunt voluptatem nihil.', 'https://via.placeholder.com/640x480.png/005555?text=deleniti', 'draft', '2021-12-25 09:58:28', '2021-12-25 09:58:28'),
(10, 8, 4, 'Porro id magnam voluptas.', 'Aut nam unde laborum non saepe ab quas. Dicta beatae delectus sit. Et est enim dolores ab repellendus itaque laboriosam. Numquam ut nobis error odit.', 'https://via.placeholder.com/640x480.png/0088ee?text=placeat', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(11, 16, 1, 'Magni qui non aliquam possimus dolores nulla.', 'Ex nam voluptatibus reiciendis laborum in laudantium quam. Veniam velit quia animi illum. Blanditiis distinctio maiores dolores quia dicta. Explicabo aliquid nostrum et eos.', 'https://via.placeholder.com/640x480.png/00ddee?text=possimus', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(12, 16, 4, 'Quisquam id sed sunt qui ea.', 'Sed enim inventore unde sint maiores dolores. Qui excepturi sit non voluptas. Enim sunt reiciendis eaque nisi.', 'https://via.placeholder.com/640x480.png/00ccff?text=quas', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(13, 6, 5, 'Ea reiciendis temporibus corporis.', 'Vitae dolore harum reiciendis commodi consequatur velit qui nulla. Vel vel consequatur ut provident eos deserunt sint. Et in exercitationem maiores fugiat sunt repudiandae. Itaque qui sit sint quis labore.', 'https://via.placeholder.com/640x480.png/0044dd?text=dolores', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(14, 7, 5, 'Ipsum sit voluptas magnam aut.', 'Eveniet in et sed qui deleniti esse id. Dignissimos unde ratione aspernatur consequatur. Expedita voluptatibus ducimus et quia illo.', 'https://via.placeholder.com/640x480.png/0044ee?text=dolore', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(15, 17, 3, 'Perspiciatis alias quasi vel ab eos voluptatum.', 'Non aut ut voluptates voluptas error voluptatum rem. Aut ad soluta deleniti et suscipit omnis magnam. Consequatur sapiente dolor aut eum. Aut consequuntur impedit voluptatibus deleniti.', 'https://via.placeholder.com/640x480.png/00ee66?text=aliquid', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(16, 17, 5, 'Delectus molestias voluptas et nam autem maxime hic.', 'Est eos et in eos amet. Id repudiandae qui quibusdam ut pariatur quia deserunt. Beatae aut et veniam tempora.', 'https://via.placeholder.com/640x480.png/004422?text=itaque', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(17, 14, 2, 'Dolores sed dolor ut.', 'Et quis impedit eos voluptate sit est voluptatem eveniet. Quidem sint voluptatem repellat facilis tenetur. Consequuntur repellendus aperiam ut occaecati voluptatem culpa. Aperiam impedit molestiae nam natus fugiat. Qui non et nihil molestiae aut natus.', 'https://via.placeholder.com/640x480.png/002277?text=accusantium', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(18, 4, 2, 'Rem aut tempore quo et natus voluptas.', 'Sit voluptas sunt voluptatum non autem aut. Laborum nihil quidem ut ipsum inventore. Doloribus vel vel et quia.', 'https://via.placeholder.com/640x480.png/005544?text=aut', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(19, 4, 1, 'Aut quaerat esse tempora reprehenderit sed.', 'Labore enim dolorum dolores est facilis ullam sapiente. Quis et ut officia modi molestiae. Quia hic et quo facilis qui totam.', 'https://via.placeholder.com/640x480.png/009922?text=omnis', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(20, 20, 5, 'Amet explicabo et et amet minus laboriosam dignissimos.', 'Et ut ut laudantium provident. Possimus autem illo eum praesentium culpa animi quibusdam. Est vel officia occaecati eaque labore autem.', 'https://via.placeholder.com/640x480.png/009944?text=illo', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(21, 13, 2, 'Quo doloribus et pariatur.', 'Voluptates deserunt tempora qui est est ut. Aliquam fugiat quisquam quas qui maiores soluta vel. Ex maxime saepe quia tempora cumque non.', 'https://via.placeholder.com/640x480.png/00ee99?text=numquam', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(22, 13, 5, 'Ut voluptatem ut sunt repellendus.', 'Consequatur eum omnis possimus et fugiat qui. Et error sint qui repellendus pariatur consequatur. Voluptas ea ea ratione voluptas aut. Molestiae rem nam voluptatem vel possimus.', 'https://via.placeholder.com/640x480.png/008866?text=assumenda', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(23, 20, 1, 'Sint quas nam modi reprehenderit.', 'Et vel illo quia dolorum tempora natus. Temporibus est nulla vel placeat et itaque. Et est fugiat aliquid ut exercitationem cupiditate.', 'https://via.placeholder.com/640x480.png/001188?text=nemo', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(24, 11, 4, 'Dolores dolores repudiandae fugiat harum rerum et dolorem.', 'Est quis at soluta quia aut voluptatem. Asperiores quia quibusdam molestiae consequatur placeat ipsum tempore. Ullam labore et accusamus rerum. Doloremque et architecto quaerat numquam quis cum voluptates.', 'https://via.placeholder.com/640x480.png/00ffbb?text=amet', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(25, 19, 3, 'Excepturi deleniti doloremque nostrum alias rem quam et.', 'Enim quisquam qui sit odit aut. Dolor repellendus animi sequi error.', 'https://via.placeholder.com/640x480.png/00ee55?text=molestias', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(26, 19, 2, 'Dolor quia est aliquid dicta hic.', 'Omnis quasi eos officiis quisquam aliquam quo molestias. Voluptate excepturi voluptatem qui provident. Deserunt alias dicta suscipit consequuntur quia omnis totam.', 'https://via.placeholder.com/640x480.png/005544?text=ab', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(27, 14, 1, 'In officia commodi aut omnis voluptatem.', 'Nostrum ad velit et sed quae et ut. Voluptatum ab enim consequatur. Et soluta quasi voluptates aliquam.', 'https://via.placeholder.com/640x480.png/00cc88?text=et', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(28, 1, 2, 'Voluptatem dolorum eligendi voluptate et.', 'Sed est velit nam minima sequi. Error doloremque dignissimos cum.', 'https://via.placeholder.com/640x480.png/0000bb?text=sunt', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(29, 15, 1, 'Quod vel qui eveniet.', 'Vitae harum odio ullam blanditiis laborum doloremque quos ratione. Quis et ea rem id eum culpa. Nobis maiores inventore vero placeat laboriosam qui veritatis. Vitae ut ducimus ex quis. Repellendus dolore est eos a est aliquid aut.', 'https://via.placeholder.com/640x480.png/009922?text=temporibus', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(30, 1, 4, 'Omnis occaecati tempore id quos autem similique aut.', 'Accusantium veniam repudiandae vero ea eos. Nisi saepe aliquam vel ad. At ea sunt expedita et.', 'https://via.placeholder.com/640x480.png/003377?text=nobis', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(31, 9, 5, 'Ut nisi omnis et incidunt quidem est deleniti.', 'Laborum quis quae voluptatem aut odit non. Aut quia et dolorum quidem laboriosam iste. Et blanditiis voluptatibus labore.', 'https://via.placeholder.com/640x480.png/00ffbb?text=eaque', 'draft', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(32, 1, 2, 'Laborum incidunt sunt numquam non qui.', 'Maxime in aperiam recusandae corporis rerum. Explicabo fugiat architecto possimus ut sunt saepe beatae vel. Doloribus et dolorem voluptatem adipisci qui. Animi facere eius quia eos iure eos illum.', 'https://via.placeholder.com/640x480.png/002211?text=non', 'published', '2021-12-25 09:58:29', '2021-12-25 09:58:29'),
(33, 15, 3, 'Aspernatur ducimus doloremque in non quia.', 'Placeat aliquam voluptate ut dicta maxime. Temporibus possimus sint autem ut. Sed sint voluptatem omnis hic voluptate asperiores voluptates.', 'https://via.placeholder.com/640x480.png/006666?text=voluptate', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(34, 6, 1, 'Iste voluptates consequatur aperiam et non.', 'Aliquid vel reprehenderit velit est ipsa et. Provident aut corporis est adipisci maiores tempora nihil reprehenderit.', 'https://via.placeholder.com/640x480.png/004488?text=doloremque', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(35, 4, 2, 'Dolorem ea doloremque qui maiores laborum laudantium ut veniam.', 'Accusantium distinctio laudantium vero aliquam eligendi quia. Eum et aliquid autem non fuga ut. Quia placeat praesentium porro cum veniam.', 'https://via.placeholder.com/640x480.png/001122?text=quod', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(36, 6, 4, 'Voluptates perferendis voluptatibus doloribus et rerum consequatur.', 'Debitis odio quod ut mollitia esse. Numquam sit deserunt autem dolore accusamus illum. Iste quaerat quae ea est voluptate.', 'https://via.placeholder.com/640x480.png/006644?text=animi', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(37, 6, 5, 'Est itaque dignissimos harum corporis.', 'Dolore in qui sed sequi quasi laboriosam. Distinctio perspiciatis non aut. Incidunt amet fugit ut est quod ab voluptas voluptatibus.', 'https://via.placeholder.com/640x480.png/00bb88?text=dolores', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(38, 2, 5, 'Veniam laboriosam et sint doloribus.', 'Reiciendis consequatur est occaecati consectetur qui quod qui. Perspiciatis sed quia occaecati eaque molestiae consequuntur.', 'https://via.placeholder.com/640x480.png/009988?text=est', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(39, 12, 1, 'Quam harum aut quisquam sit hic minus earum et.', 'Odit qui sequi qui aspernatur magnam odio facere dolor. Delectus libero dolores omnis unde eligendi. Eaque illum dolor occaecati eos eum eaque voluptatum.', 'https://via.placeholder.com/640x480.png/003300?text=id', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(40, 15, 3, 'Veritatis tempore ea officia vel.', 'Quia aliquid animi odio sequi. Explicabo rerum voluptas ullam aliquam dolorem et cupiditate dolorum. Fugiat laudantium aut nam quas aut. Iste cumque veniam repudiandae. Dolorem earum omnis odit quis laudantium asperiores.', 'https://via.placeholder.com/640x480.png/003311?text=sit', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(41, 1, 5, 'Rerum dolor ullam dolore est quia incidunt.', 'Aut eligendi similique voluptas ad provident. Impedit odio qui et deserunt. Ratione distinctio similique dolores ut.', 'https://via.placeholder.com/640x480.png/0011dd?text=accusamus', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(42, 11, 5, 'Aut eum facere sint aut natus excepturi.', 'Ea quibusdam alias aut deserunt sapiente quam. Debitis a nostrum cum praesentium. Excepturi rerum qui nemo perspiciatis. Cum recusandae in voluptates tenetur architecto. Incidunt deleniti laudantium velit provident consequatur architecto ut.', 'https://via.placeholder.com/640x480.png/008855?text=porro', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(43, 3, 5, 'Nisi modi minus nostrum illum recusandae.', 'Quis itaque ut ut doloremque. Voluptatem officiis ratione voluptatum occaecati impedit ab. In error pariatur ipsum reprehenderit quae sapiente. Voluptatem omnis autem ea vel tempore voluptatem.', 'https://via.placeholder.com/640x480.png/00cc77?text=quia', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(44, 1, 3, 'In animi quos repellendus eius nulla aut.', 'Recusandae dolorem tempora perspiciatis praesentium quisquam molestiae in. Nesciunt et deleniti recusandae quasi. Delectus ex dolor ullam qui sed eum in. Aliquam qui et voluptatem ut.', 'https://via.placeholder.com/640x480.png/001177?text=omnis', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(45, 6, 3, 'Placeat incidunt facilis magni voluptas.', 'Ut autem ex non recusandae. Minima vero quas aliquam.', 'https://via.placeholder.com/640x480.png/000000?text=at', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(46, 6, 5, 'In sit aut porro eius.', 'Quam exercitationem ratione dolore minima ut alias nihil natus. Id tenetur exercitationem in doloremque sed ut velit. Dolor distinctio voluptates facilis beatae et. Hic ut rerum maxime aut vero.', 'https://via.placeholder.com/640x480.png/00bbdd?text=amet', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(47, 17, 2, 'Quae excepturi quod officia quo tempore aut error.', 'Qui dicta qui perferendis rerum quia blanditiis. Repellendus eaque eum id ipsum. Nisi necessitatibus earum rerum rerum error corrupti exercitationem. Fugit perferendis molestiae quibusdam sed. Qui velit enim magni blanditiis.', 'https://via.placeholder.com/640x480.png/008866?text=ullam', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(48, 5, 2, 'Nihil quibusdam nobis quibusdam incidunt non id.', 'Quia quia quae nihil itaque sed voluptatum. Similique sed porro officiis voluptatem maxime.', 'https://via.placeholder.com/640x480.png/0033aa?text=et', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(49, 14, 1, 'Explicabo ea et consectetur qui et nobis reiciendis.', 'Tempore et sunt quia ut vel animi voluptatibus. Eligendi maiores voluptatem perspiciatis qui dolore dolorum cupiditate. Error dolorem quia excepturi aut consectetur eveniet pariatur.', 'https://via.placeholder.com/640x480.png/00bb66?text=eum', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(50, 9, 1, 'Aperiam non et reprehenderit tempore ut quas.', 'Neque ea deleniti corporis laborum aspernatur expedita. Ut quis reprehenderit suscipit sit nostrum alias. Consequatur quae et laudantium.', 'https://via.placeholder.com/640x480.png/00cc22?text=consequatur', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(51, 2, 3, 'Eaque voluptas provident harum minima vel quos.', 'Voluptas beatae ut rerum consequatur ut numquam consequatur. Qui magni velit minus. Recusandae quaerat aut consequuntur mollitia ut eligendi velit.', 'https://via.placeholder.com/640x480.png/0000aa?text=assumenda', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(52, 6, 3, 'Iure impedit ullam eveniet est.', 'Est consequatur ad distinctio aliquam amet aut ut. Possimus eos in eum ad aperiam. Quasi eligendi est rerum aspernatur aut omnis.', 'https://via.placeholder.com/640x480.png/005588?text=nisi', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(53, 8, 5, 'Qui eum necessitatibus aut veniam.', 'Saepe fuga quaerat deserunt qui. Est ut qui earum commodi voluptatem sapiente architecto.', 'https://via.placeholder.com/640x480.png/006611?text=sit', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(54, 14, 2, 'Recusandae itaque doloremque consequatur non dicta quidem.', 'Consequatur et aut at dolores. Omnis consequatur sit et. Asperiores placeat reiciendis optio inventore vero similique.', 'https://via.placeholder.com/640x480.png/00ff33?text=nobis', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(55, 12, 4, 'Autem fugit esse ut perspiciatis non animi.', 'Nam doloremque atque eum id sint quo. Modi qui nulla et exercitationem ea. Voluptatum minima ut eaque quas autem quia repellat.', 'https://via.placeholder.com/640x480.png/009911?text=molestiae', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(56, 9, 2, 'Molestias quia quo voluptatem in veritatis exercitationem.', 'Enim dignissimos iure quae tempore placeat. Laboriosam ea sunt corporis quae cumque. Asperiores fuga reiciendis dignissimos assumenda eaque nulla. Magni nesciunt et distinctio fugit culpa accusantium. Dolores quasi voluptate aut aut eaque laborum vitae.', 'https://via.placeholder.com/640x480.png/005555?text=quia', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(57, 20, 1, 'Consequuntur aspernatur reprehenderit nihil excepturi.', 'Labore eum tempora veritatis eum voluptatum sed. Quasi ut omnis dolorem necessitatibus consectetur iusto at. Aut voluptatem ducimus assumenda dolorem voluptatem est minima. Et consequatur aut quia dolorem autem.', 'https://via.placeholder.com/640x480.png/002233?text=quasi', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(58, 4, 4, 'Veniam sint dolorem qui est.', 'Ducimus qui ut et sapiente nobis. Repudiandae tenetur commodi velit minima tempore. Hic suscipit quia nemo facere sed accusantium.', 'https://via.placeholder.com/640x480.png/00aa11?text=facere', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(59, 11, 3, 'Qui possimus rerum deserunt non nihil architecto id.', 'Ut rerum voluptas porro. Id sunt neque recusandae delectus dignissimos. Vel assumenda placeat rerum qui suscipit.', 'https://via.placeholder.com/640x480.png/000055?text=odit', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(60, 3, 2, 'Adipisci quas totam neque ut est cumque officia.', 'Omnis distinctio nihil soluta dolor vero dignissimos. Modi rerum aut ad a. Aut ab architecto rerum ut nulla quo reiciendis. Aut atque autem rerum ea commodi omnis fuga.', 'https://via.placeholder.com/640x480.png/004433?text=non', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(61, 8, 3, 'Perspiciatis et dolore quo et illo.', 'Dolores commodi impedit ipsam architecto ut. Voluptas fugiat aperiam dolorum. Ad explicabo dolores maxime maiores aspernatur. Ut voluptatibus optio eius voluptatem nam iusto.', 'https://via.placeholder.com/640x480.png/0000cc?text=recusandae', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(62, 16, 5, 'Excepturi rerum distinctio suscipit fuga illum laudantium in quo.', 'Est aut dolor omnis tempore. Voluptas molestias accusantium quas dolores consequuntur voluptatibus architecto praesentium. Aut voluptatem repellendus eius sequi. Est perferendis illum quia illo recusandae exercitationem quia.', 'https://via.placeholder.com/640x480.png/009955?text=dolore', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(63, 5, 2, 'Possimus autem voluptatem corrupti vel qui.', 'Dolores unde hic aliquid blanditiis non laborum. Quis nostrum molestias itaque nam. Autem ea molestiae non ea sint sunt culpa voluptatem. Earum voluptatem aut illo voluptatem id.', 'https://via.placeholder.com/640x480.png/004466?text=doloribus', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(64, 5, 5, 'Quia nemo vero animi molestias sit earum nostrum.', 'Dolorem sed nobis culpa eligendi aut autem natus. Laboriosam quibusdam saepe voluptatem quis voluptatibus tempore soluta debitis. Vel consequatur vitae eos aut impedit expedita. Numquam rerum praesentium placeat consequatur.', 'https://via.placeholder.com/640x480.png/0044ee?text=ab', 'published', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(65, 19, 3, 'Tempora esse sunt reiciendis.', 'Et rerum enim ex dolor maxime quaerat totam. Est animi qui consequatur quia voluptatum. Esse sapiente eaque quam voluptatem.', 'https://via.placeholder.com/640x480.png/00aa11?text=officia', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(66, 15, 3, 'Exercitationem vel et eligendi earum.', 'Pariatur impedit occaecati quis natus qui fugiat nam a. Commodi exercitationem fuga aliquam omnis. Deleniti sit sed natus velit et voluptatum. Reprehenderit qui et eos inventore est laudantium.', 'https://via.placeholder.com/640x480.png/00eedd?text=magni', 'draft', '2021-12-25 09:58:30', '2021-12-25 09:58:30'),
(67, 10, 1, 'Perspiciatis accusantium repellat sunt unde et ut.', 'Qui facilis fuga eum quo iste voluptates sint voluptate. Est perspiciatis sunt maiores tempore. Consectetur sed vel dolores velit a exercitationem accusantium.', 'https://via.placeholder.com/640x480.png/00ff66?text=est', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(68, 6, 4, 'Est odio et id qui.', 'Animi veniam sint molestiae omnis voluptate sit et. Rerum alias quas et voluptas. Aliquid dolores architecto assumenda magni dolores.', 'https://via.placeholder.com/640x480.png/000099?text=et', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(69, 15, 1, 'Quas a illo tenetur voluptatibus et.', 'Qui dicta repudiandae unde eaque ut eum. Sed impedit aliquam autem repellat. Aliquid possimus facilis rerum reprehenderit dignissimos aut repellendus.', 'https://via.placeholder.com/640x480.png/00ddbb?text=id', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(70, 15, 5, 'Quia temporibus aspernatur rem veritatis corporis.', 'Ipsum nihil deleniti eum dolor et consequatur. Voluptas sit ducimus numquam nostrum. Molestiae id modi distinctio quisquam dolorem et iste.', 'https://via.placeholder.com/640x480.png/00ff77?text=provident', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(71, 17, 2, 'Perspiciatis excepturi sit temporibus inventore.', 'Ut et officia enim dolor sit expedita qui illo. Officiis est animi animi ad et ipsa. Iusto sint et eum mollitia. Aliquam quod assumenda sit cum dolor accusamus rerum.', 'https://via.placeholder.com/640x480.png/00cc11?text=qui', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(72, 10, 2, 'Magni ut ad possimus rerum sint.', 'Nam impedit temporibus et et asperiores reiciendis dolorem. Dicta voluptatem voluptatem sed et in quibusdam. Dolore amet consectetur et dolor qui repellat. Voluptatem porro odio corrupti.', 'https://via.placeholder.com/640x480.png/007777?text=quos', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(73, 15, 2, 'Mollitia sed repudiandae itaque cumque praesentium incidunt dolorem.', 'Quaerat et eius optio possimus molestias. Atque fugit reiciendis iure quasi adipisci. Dolore perferendis ab commodi id dolores ex ab.', 'https://via.placeholder.com/640x480.png/00aa11?text=quia', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(74, 14, 1, 'Corporis dolorem alias illum numquam fuga animi architecto.', 'Repellat esse deserunt veritatis magnam. Et earum nisi voluptatum ipsum earum. Sapiente ut non minima laboriosam aut optio voluptatum.', 'https://via.placeholder.com/640x480.png/005566?text=saepe', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(75, 8, 4, 'Necessitatibus temporibus qui molestias eum modi et modi quibusdam.', 'Inventore impedit dolor eligendi quidem quia. Veritatis molestiae mollitia saepe commodi. Blanditiis consequatur placeat aut enim commodi.', 'https://via.placeholder.com/640x480.png/0088cc?text=natus', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(76, 7, 1, 'Incidunt molestias sequi quos et a officia.', 'Minima et et quae exercitationem similique et aspernatur. Ipsa tempora quam qui ducimus et. Blanditiis nostrum facere veniam impedit tempore tempora provident enim. Quisquam in magnam voluptatem ullam rem.', 'https://via.placeholder.com/640x480.png/0000ee?text=praesentium', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(77, 9, 2, 'Atque fugit placeat quis neque.', 'Quae consequatur rerum consequatur qui eum omnis. Voluptates dolorem sed inventore id sit aut atque. Repellat quo hic aut quod.', 'https://via.placeholder.com/640x480.png/00dd44?text=possimus', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(78, 12, 5, 'Et quam exercitationem voluptatem ut sunt.', 'Qui repellat cumque quo magni. Placeat consequatur est reiciendis quidem rem. Deleniti est provident officia magni.', 'https://via.placeholder.com/640x480.png/000022?text=blanditiis', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(79, 5, 2, 'Ut natus excepturi placeat consequatur nostrum.', 'Quo sit dolores itaque eligendi sint. Recusandae veritatis earum animi aut. Odio incidunt in vitae minima nulla autem. Aut sunt tenetur quis amet.', 'https://via.placeholder.com/640x480.png/00cc00?text=et', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(80, 6, 1, 'Nesciunt maxime nam beatae.', 'Sequi voluptatem hic earum nesciunt. Quia eum voluptates est esse officia. Vero nam quia occaecati delectus dignissimos eum. Cumque voluptates adipisci modi.', 'https://via.placeholder.com/640x480.png/008800?text=asperiores', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(81, 7, 1, 'Et autem nihil ducimus non ullam.', 'Eveniet est eligendi odit consequatur labore eos. Commodi ea rerum nihil sit eligendi aliquam. Dolorum odit perspiciatis aut et animi. Et rem vitae officia est nemo reprehenderit. Optio quidem ab id nemo aut provident.', 'https://via.placeholder.com/640x480.png/0055ee?text=et', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(82, 6, 2, 'Possimus reiciendis et temporibus commodi et.', 'Quis libero repudiandae non voluptas numquam possimus. Nemo et iure enim et aut omnis ad officia. Dolorum occaecati ex inventore iusto consequatur harum. Et ipsam voluptas est ipsa dolor minima.', 'https://via.placeholder.com/640x480.png/0044cc?text=sed', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(83, 12, 1, 'Pariatur maiores omnis distinctio consectetur.', 'Explicabo adipisci officiis doloremque consequatur. Beatae sunt laborum molestiae et. Alias sit labore similique in debitis consequatur fugiat. Quo veritatis ipsum illo recusandae aut aut autem et.', 'https://via.placeholder.com/640x480.png/00ee77?text=omnis', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(84, 7, 1, 'Explicabo deleniti quia dolores illo velit blanditiis.', 'Tempora ullam sapiente est quibusdam velit nulla. Ut atque eum quod autem rerum. Quia fuga et a nesciunt expedita eaque. Aut commodi laborum voluptate animi deleniti.', 'https://via.placeholder.com/640x480.png/0000cc?text=aliquid', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(85, 18, 2, 'Occaecati nostrum fugiat repellat quo molestiae corrupti blanditiis.', 'Consequatur inventore nam eos quis. Debitis dolores fuga aut nihil dolores optio. Quis nemo tempora voluptatem nihil.', 'https://via.placeholder.com/640x480.png/000088?text=est', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(86, 16, 3, 'Sapiente qui odit blanditiis maiores ea adipisci dolorem.', 'Harum ea est et. Suscipit sit magni dignissimos sit quod. Dolores tempora similique doloremque quis odio consectetur.', 'https://via.placeholder.com/640x480.png/00aaaa?text=aut', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(87, 20, 3, 'Adipisci quo dolores consequuntur labore recusandae fuga aspernatur deleniti.', 'Voluptatem id eos deserunt laboriosam et ullam ut. Incidunt a magnam ut est. Temporibus culpa earum reprehenderit nemo aut fuga.', 'https://via.placeholder.com/640x480.png/00aadd?text=sunt', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(88, 18, 3, 'A porro nihil debitis et.', 'Molestiae ipsam voluptatem reiciendis ea. Perspiciatis et maiores qui. Illum dignissimos repudiandae itaque ad velit quos a.', 'https://via.placeholder.com/640x480.png/004466?text=et', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(89, 19, 5, 'Nostrum vel tempore dolores.', 'Expedita eum quia et animi maiores ad. Numquam vero adipisci sit esse iusto nemo hic voluptas. Excepturi exercitationem explicabo consequuntur aut doloremque qui.', 'https://via.placeholder.com/640x480.png/0066cc?text=a', 'published', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(90, 8, 1, 'Maiores dolores ut perferendis quis saepe omnis.', 'Commodi ut error deserunt est vitae rerum nostrum quia. Nulla voluptate voluptas omnis quidem sunt et. Qui voluptatem eius dicta necessitatibus architecto.', 'https://via.placeholder.com/640x480.png/00ff22?text=qui', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(91, 12, 5, 'Et nostrum consequatur neque accusamus officia recusandae.', 'Sequi consequuntur inventore ut aperiam nam voluptas. Quam laboriosam atque et. Eum consequuntur omnis omnis modi minima sint ad. Consequatur ratione qui repudiandae.', 'https://via.placeholder.com/640x480.png/00dd44?text=voluptatibus', 'draft', '2021-12-25 09:58:31', '2021-12-25 09:58:31'),
(92, 10, 4, 'Quas laborum qui velit ratione distinctio molestiae est.', 'Maiores et debitis atque eum laudantium cum. Quis quo id vel facere delectus laborum. Quisquam natus ut ut rerum. Excepturi eum ea quia magnam quos.', 'https://via.placeholder.com/640x480.png/002266?text=labore', 'draft', '2021-12-25 09:58:32', '2021-12-25 09:58:32'),
(93, 19, 3, 'Repudiandae sed unde eum.', 'Perferendis dicta in iste maiores eos. Debitis et aliquid eum eos nam quod. Assumenda nihil eaque in. Doloremque labore nihil hic consequuntur omnis mollitia temporibus.', 'https://via.placeholder.com/640x480.png/00aa00?text=corrupti', 'draft', '2021-12-25 09:58:32', '2021-12-25 09:58:32'),
(94, 19, 2, 'Libero et libero aut ut voluptatum dolorem.', 'Dolor autem possimus dignissimos. Facilis consectetur consequatur debitis qui id eos. Nihil consequatur officiis corrupti. Laborum nemo reiciendis dignissimos non.', 'https://via.placeholder.com/640x480.png/004422?text=laboriosam', 'draft', '2021-12-25 09:58:32', '2021-12-25 09:58:32'),
(95, 8, 1, 'Quo molestiae accusantium ad.', 'Voluptatem sed dolores nostrum ut voluptas quasi. Dolore iure qui modi debitis est perferendis. Ea distinctio quibusdam ex veniam et dicta sunt. Vel eos odit nulla vel eaque.', 'https://via.placeholder.com/640x480.png/00dddd?text=sapiente', 'published', '2021-12-25 09:58:32', '2021-12-25 09:58:32'),
(96, 16, 4, 'Sed architecto consequuntur et non eos aut vel.', 'Quis aliquid velit et nisi quam. Quasi aut culpa dolorem quaerat magnam quam ut. Deserunt odit at adipisci placeat nesciunt. Totam atque voluptatibus quisquam autem dolor aut ut autem.', 'https://via.placeholder.com/640x480.png/0033cc?text=veniam', 'draft', '2021-12-25 09:58:32', '2021-12-25 09:58:32'),
(97, 9, 5, 'Repellat quasi molestiae voluptatem enim.', 'Atque voluptatem ea enim. Dignissimos eius possimus odit dolore dolor impedit dolore. Nemo blanditiis animi aut sint aspernatur dolorum. Eum neque debitis ea quis non.', 'https://via.placeholder.com/640x480.png/004400?text=sit', 'draft', '2021-12-25 09:58:32', '2021-12-25 09:58:32'),
(98, 13, 1, 'Repudiandae est fugit temporibus deserunt iure porro ratione.', 'Voluptas voluptatem et quis cupiditate et quis ea. Velit id quia iste aut tenetur qui nulla fugiat. Voluptatibus corrupti magnam sed et.', 'https://via.placeholder.com/640x480.png/00aa00?text=corporis', 'draft', '2021-12-25 09:58:32', '2021-12-25 09:58:32'),
(99, 16, 5, 'Dolorem facere provident ab iusto.', 'Repellat non et quam necessitatibus fugit. Molestias quia et et tenetur. Et iure officiis ex sunt commodi suscipit recusandae explicabo. Provident aliquid culpa numquam et cum.', 'https://via.placeholder.com/640x480.png/0088ff?text=molestias', 'published', '2021-12-25 09:58:32', '2021-12-25 09:58:32'),
(100, 14, 1, 'Est consequatur est sint eos voluptatem voluptas et animi.', 'Doloribus atque ipsam et commodi id animi consequatur. Aspernatur consequatur ea est quasi fugiat omnis. Et consectetur quia in enim id facere perferendis.', 'https://via.placeholder.com/640x480.png/003322?text=laboriosam', 'draft', '2021-12-25 09:58:32', '2021-12-25 09:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'blog@blog.com', NULL, '$2y$10$WFh8X1oVIzWzTKUkHI7Mye7fvghGXO5PGAR3jLwYT4sjPC.864NJa', NULL, '2021-12-25 09:58:24', '2021-12-25 09:58:24'),
(2, 'Dereck Wisoky', 'ebert.sheridan@corkery.com', NULL, '$2y$10$UGAzz8z7ESx3AudwGuEfQ.cvcFJyJWQuanmBKHAof8sYz8w0gCXUS', NULL, '2021-12-25 09:58:24', '2021-12-25 09:58:24'),
(3, 'Dr. Retha Cremin', 'schiller.gwendolyn@mcclure.com', NULL, '$2y$10$d5fW.yapp9t50456cCOc4e69DGTLXzJpiRVGYPav3pF77mJQ9zWEq', NULL, '2021-12-25 09:58:24', '2021-12-25 09:58:24'),
(4, 'Gunnar Hagenes', 'tristin57@hotmail.com', NULL, '$2y$10$yb5UFs5A4VuJOWDwC4vLnOt3uMdTyMMXj6rr8ebEPXnFz8N8gpVqe', NULL, '2021-12-25 09:58:25', '2021-12-25 09:58:25'),
(5, 'Liam McClure', 'yasmeen92@nader.com', NULL, '$2y$10$dXGIwkMWjb0c4UM3i1zBIetrmtZsFX/x9HSw8hcygB44mgbRc7V4u', NULL, '2021-12-25 09:58:25', '2021-12-25 09:58:25'),
(6, 'Philip Schroeder', 'daugherty.gladys@lebsack.biz', NULL, '$2y$10$eCOGCsWB5FCHpxdUL3kbGucjPUiz.DoQ1OnybyShyOgcMcVVPs1D.', NULL, '2021-12-25 09:58:25', '2021-12-25 09:58:25'),
(7, 'Mr. Kadin Luettgen II', 'iwilderman@yahoo.com', NULL, '$2y$10$bg51rGEwVVFVjpGsWFUrmOa5.YqNwOnSTM.d9vqY2.eezSlkhuIWi', NULL, '2021-12-25 09:58:25', '2021-12-25 09:58:25'),
(8, 'Zola Willms', 'zcronin@yahoo.com', NULL, '$2y$10$YxlTYcx49eTeweKzVexsV.0WzwWsabuxXImSd/uccFkc9WTz.nFJO', NULL, '2021-12-25 09:58:25', '2021-12-25 09:58:25'),
(9, 'Darrion Kling', 'eterry@dietrich.org', NULL, '$2y$10$tp3iMDEYOhgbxlYZUBReduRhgwTzeiX.70wVL5PynIJoplSsxTJlK', NULL, '2021-12-25 09:58:26', '2021-12-25 09:58:26'),
(10, 'Pierre Stoltenberg', 'ugoyette@mayert.com', NULL, '$2y$10$.ASDHUZkdpTtk1EPJ9Z4TOzWnLiyhchonV3Gp.X9JJSarwSIFNmTm', NULL, '2021-12-25 09:58:26', '2021-12-25 09:58:26'),
(11, 'Prof. Deangelo Boyle', 'freida19@yahoo.com', NULL, '$2y$10$sFX/hxpCbvrlmCgt6wS7d.eALppUritKZIAvwJlg.kp9bwlClaR..', NULL, '2021-12-25 09:58:26', '2021-12-25 09:58:26'),
(12, 'Prof. Garland D\'Amore DVM', 'jaylan.lind@gmail.com', NULL, '$2y$10$Kd7zLLBnA1o/V32YmNcKvOOytkH1VEgdOqTCu7.6dYcoxq1KDGW3y', NULL, '2021-12-25 09:58:26', '2021-12-25 09:58:26'),
(13, 'Elmer Homenick', 'thudson@johnson.net', NULL, '$2y$10$sUIsNEEU/L6xV4.cOqWwG.OHEo0maiSaqarTLOJ8J1oQEtUQCyF1y', NULL, '2021-12-25 09:58:26', '2021-12-25 09:58:26'),
(14, 'Mittie Oberbrunner', 'javon.nolan@wintheiser.com', NULL, '$2y$10$u1C0wBJpFVdOHlLZ2FWb7.VnSDD4FhEj1mHk5oLnR728Qt1Me6Pye', NULL, '2021-12-25 09:58:26', '2021-12-25 09:58:26'),
(15, 'Mrs. Katheryn Torphy I', 'baron26@hotmail.com', NULL, '$2y$10$VBQsf0p.N97K3duBeEi/zO861V/hgPCqbkhoDgjRwD8xirWXTuzQm', NULL, '2021-12-25 09:58:27', '2021-12-25 09:58:27'),
(16, 'Cassandre Schaefer', 'fconn@willms.com', NULL, '$2y$10$HUA7jnc0zin3FBcpCW1U7u05lBqCYIGMS2Wtryq8kCks7j.rVNGBi', NULL, '2021-12-25 09:58:27', '2021-12-25 09:58:27'),
(17, 'Granville Upton', 'april.gottlieb@hotmail.com', NULL, '$2y$10$qybixXl59tE.nSDegBEiM.xVn64MFIveLGMSJmkSxlzrud16x8/qu', NULL, '2021-12-25 09:58:27', '2021-12-25 09:58:27'),
(18, 'Amaya Fisher', 'lucio.mcglynn@gmail.com', NULL, '$2y$10$TI8.NxNFMlJu17PxwCxla.O4tyG3WhnmnY9DXUuLrdDI30scxordy', NULL, '2021-12-25 09:58:27', '2021-12-25 09:58:27'),
(19, 'Sim Bins', 'homenick.ernesto@yahoo.com', NULL, '$2y$10$KzhZwwbNthDaTHC16X4ejO0LdNWFFjMPmqTS2a3Ap4csW6bEEXODy', NULL, '2021-12-25 09:58:27', '2021-12-25 09:58:27'),
(20, 'Dallin Beier II', 'marisol.gibson@heidenreich.biz', NULL, '$2y$10$aYLV/gKkvgkuIp4lP58jLeakbm7ZdFdAbEGUEsMbsOz8oFGy/93Nu', NULL, '2021-12-25 09:58:27', '2021-12-25 09:58:27'),
(21, 'Reynold Casper', 'aurore.ledner@larson.info', NULL, '$2y$10$fGdAUZz1XIvBokzJQIVXyeKTGlTCy/YvufEwIoHfgRc5A2u66Nzi.', NULL, '2021-12-25 09:58:28', '2021-12-25 09:58:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
