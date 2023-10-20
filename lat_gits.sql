-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 07:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lat_gits`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(2, 'Programming', 'programming', '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(3, 'Personal', 'personal', '2023-10-19 22:17:04', '2023-10-19 22:17:04');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_25_073218_create_posts_table', 1),
(6, '2023_09_25_141258_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Id ipsum omnis velit aspernatur.', 'dolorem-amet-sint-quo-eum-sit', NULL, 'Et reprehenderit deleniti ex. Possimus consequatur reprehenderit voluptatibus blanditiis incidunt enim. Sunt magni neque excepturi quia.', 'Culpa repellat ut velit autem. Expedita aperiam quia aspernatur quae. Quasi quas alias eaque. Labore deserunt et reiciendis velit. Quia amet sunt quia minus sed sunt id. Itaque possimus doloribus labore numquam. Eos illum excepturi modi accusantium labore atque aut. Quasi distinctio et aspernatur quod. Dolorem amet eligendi unde voluptatum. Blanditiis sit laboriosam eaque commodi. Maiores ullam dolore quaerat. Quas saepe odio rerum ex sequi sed.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(2, 1, 1, 'Sed exercitationem sunt a molestiae ex animi laudantium.', 'sed-optio-debitis-rem', NULL, 'Est velit inventore dolorum. Animi aut necessitatibus est voluptatibus maxime. Architecto quidem rerum nihil nulla sapiente dolores. Est non incidunt quas repellat iste.', 'Quidem dicta dolores necessitatibus consequatur asperiores nam. Quo ullam qui ab a eaque exercitationem. Iure consequuntur voluptas id quo. Beatae doloribus sunt accusantium ipsa quibusdam qui. Debitis laboriosam in quo ipsa. Rerum quisquam ratione minima est. Officiis eos quo consectetur sequi. Debitis nobis magnam sit est et dolor. Enim possimus neque et. Similique culpa non sequi occaecati sit maxime id. Debitis delectus asperiores ut id.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(3, 1, 2, 'Sed natus amet aliquid sit quia nobis perspiciatis.', 'ullam-sunt-officia-et-natus-ut-repudiandae-quis', NULL, 'Et necessitatibus reiciendis veritatis. Molestiae molestias natus expedita similique enim. Cumque officiis quia et quo unde odio odit.', 'Quasi magnam qui voluptas delectus recusandae. Nulla a voluptatem eligendi dolores consequatur inventore. Dolorem sit quos quia fugiat labore repellat temporibus. Quibusdam dolorem incidunt vitae vitae animi. Accusantium quam iure tenetur et corrupti sed voluptatem. Ducimus sequi enim ut et consequatur laboriosam eum. Omnis et porro modi mollitia ipsam nostrum cumque.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(4, 2, 2, 'Fugit doloremque hic rerum quis voluptatem et eos.', 'quod-fuga-autem-qui-consequatur-sunt-fugiat', NULL, 'Corrupti quidem exercitationem ipsam in quae optio. Dignissimos cupiditate ratione unde et consequatur sequi. Doloribus asperiores aut modi soluta voluptas consequatur nemo. In impedit facere autem enim.', 'Repudiandae voluptas dolorem molestiae ut vel. Fugit doloribus tempora asperiores nihil. Est est et excepturi sit porro. Ducimus iusto odio laboriosam est sed et molestias. Autem accusantium officiis aut dolores eos rerum voluptatem. Nisi est laudantium et molestiae. Eum dolores porro nobis quos atque. Eos consequuntur fugit nihil. Iste omnis culpa sit voluptatem.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(5, 1, 1, 'Eligendi placeat excepturi vero et iusto qui.', 'animi-qui-ipsa-harum-doloremque-voluptatem-et-dignissimos-consequatur', NULL, 'Eligendi dolorum nulla voluptas occaecati aut enim. Consequatur dolorem aspernatur blanditiis veritatis. Eum tempora natus ducimus et quo nostrum mollitia.', 'Sit itaque sit non quasi provident numquam. Omnis nulla velit sit aut quam laudantium magni. Autem rerum sed quae optio id dolores. Quae sunt quis eligendi laborum et incidunt aliquid. Sunt vitae possimus et et et adipisci voluptatem. Error magni ea qui dolorem. Totam iste ut ipsam ut id qui et. Blanditiis iste non eum quibusdam.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(6, 2, 1, 'Nemo ipsum distinctio quis nobis et.', 'aperiam-quia-qui-cum-provident-quis-aut-libero', NULL, 'Consequatur earum sequi atque enim ipsam ut. Animi et maiores amet blanditiis animi.', 'Dolorem et voluptate vero quis aut. Officiis veritatis repudiandae culpa cupiditate sed animi. Id sapiente possimus fuga iure incidunt incidunt. Perferendis dolor velit consequatur fugit eum velit. Possimus nemo sint ut. Consectetur dolorem et neque aliquid debitis. Voluptates debitis fugiat voluptatem blanditiis nihil consequatur temporibus.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(7, 1, 2, 'Id enim nesciunt ratione officia mollitia aperiam.', 'voluptatem-delectus-veritatis-voluptatem', NULL, 'Minima cumque numquam nobis nihil doloribus impedit qui. Facilis cupiditate perspiciatis sed exercitationem mollitia praesentium ab quis. Numquam aut necessitatibus rerum voluptatum sit quam.', 'Ea vel beatae sapiente voluptates molestiae voluptatem nesciunt. Sit impedit animi ut nemo corrupti cupiditate aut. Impedit ex eaque autem quia corporis corporis non. Recusandae alias aut commodi ipsa ut rerum harum. Consequatur aspernatur soluta sit accusantium nostrum blanditiis expedita. Aspernatur aliquam minima esse qui amet reiciendis. Itaque qui sit ea a autem odit assumenda quo. Veniam qui qui voluptas officia. Pariatur reprehenderit quis et beatae voluptatem quae. Eum id et dicta quidem omnis. Repudiandae aliquid quidem voluptatem deserunt voluptatem perspiciatis. Non eaque et nam qui soluta. Animi ullam architecto dolorem. Est dolore odit quia.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(8, 3, 1, 'Dolores assumenda error modi provident corporis eligendi.', 'aut-nisi-et-tempora-minus-cum-voluptas-in', NULL, 'Fugit repellat quaerat ut molestias at error corrupti repudiandae. Accusamus voluptates repellendus velit ea atque eos.', 'Sit odio numquam quia iure dignissimos minima suscipit. Quasi quod voluptas odit suscipit. Vel et officia ducimus consequuntur. Natus cupiditate perspiciatis excepturi omnis eos ratione. Quia ipsa pariatur totam debitis at nemo. Optio et impedit minus rerum.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(9, 3, 2, 'Eum soluta distinctio iste qui asperiores.', 'dicta-sit-enim-earum-aut-quos', NULL, 'Est saepe illum itaque libero consequatur aut nisi. Omnis architecto facere rerum quis aspernatur non. Tempore tenetur fugit delectus accusantium.', 'Eum assumenda quasi id aut omnis eos ea in. Quis minima est ipsam. Modi aut labore aliquam ratione libero. Corrupti voluptas doloremque et dicta. Ut quod facere nulla ullam amet. Omnis fugit cupiditate nulla fugit at ipsum explicabo est. Tenetur alias iusto quos odit corrupti voluptatibus et. Dolore perspiciatis expedita tempore amet pariatur et ratione voluptatem. Nisi sunt nulla exercitationem qui nihil libero officiis. Impedit asperiores quis iste rem est fugiat facere. Perferendis voluptatum at laborum commodi aut. Earum dicta debitis aut exercitationem. Hic exercitationem voluptates dicta.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(10, 1, 1, 'Dolorem et alias reprehenderit deserunt quos.', 'officia-architecto-ut-cumque', NULL, 'Quidem quisquam voluptates non sunt. Ut dicta odio voluptatem. Provident quae quos et dignissimos eius. Facere et repellat deserunt dolore aperiam aut.', 'Ex sint quae nulla quasi. Enim autem dignissimos tempora aut minus libero. Quia in ad voluptatum enim. Quis expedita temporibus quia quibusdam architecto. Libero sed fuga aspernatur non. Odit id qui distinctio occaecati eum molestiae. Quis sequi exercitationem optio cupiditate enim dolore. Quo asperiores repudiandae quo non. In quos reprehenderit asperiores.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(11, 1, 1, 'Iure dolores suscipit id quae architecto.', 'explicabo-et-ullam-consequatur-unde', NULL, 'Quia deserunt consequatur qui reprehenderit sunt omnis velit beatae. Est distinctio natus sit voluptatem nam voluptates voluptatibus a. Tempora sint aut eos rerum minima ullam. Nisi et ea aut quia.', 'Architecto ducimus vero delectus ut vel at. Cumque est corrupti qui. Praesentium reiciendis consequatur reprehenderit quae. Consectetur beatae ratione saepe et voluptate debitis. Reprehenderit ut quaerat modi non asperiores vitae fugiat. Et illum optio iusto blanditiis et. Aut adipisci soluta non omnis eos. Qui id minima ad ab enim eum. In quae recusandae quisquam enim assumenda. Aliquam quis ut aspernatur aspernatur.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(12, 3, 1, 'Explicabo omnis.', 'voluptates-aut-voluptates-sed-molestiae-atque-et', NULL, 'Qui cumque quasi voluptas dolor sint quos dolore voluptate. Et odit et nobis accusantium aspernatur est ut. Maxime dolorem nesciunt sunt odit voluptatem qui repellat. Sint nemo nihil eveniet libero veritatis ut qui.', 'Non ipsa fugiat dolores dolor. Enim ea fugit quia ipsa molestiae natus sapiente et. Quia sit distinctio doloremque vel. Eos vel tempore quas fugit amet dolores. Aperiam ullam maiores dolore ut maiores sit. Sint culpa veritatis et hic ratione cupiditate autem. Sunt nobis sequi itaque id. Consequatur nesciunt quasi velit odio quia. Non reiciendis iste et ipsum deserunt. Voluptatem quos dolorem officiis nobis repudiandae earum iure.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(13, 3, 2, 'Qui at tempora ab architecto nisi.', 'autem-voluptatem-et-facilis-ut-consequuntur', NULL, 'Similique aut non et quo velit. Cum quo aut veritatis numquam quia corporis. Perspiciatis culpa corporis harum explicabo non. Fuga asperiores consequatur cupiditate voluptatem asperiores voluptatibus eius cumque.', 'Nam officia molestias ut ut repellendus et totam rerum. Qui qui hic quisquam quo et aperiam. Error ut incidunt assumenda et. Minus atque quaerat nostrum qui suscipit ipsa. Soluta ut omnis vel modi. Eos a distinctio velit.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(14, 1, 1, 'Eaque est ipsa vero harum voluptatem sed.', 'et-temporibus-aut-laborum-expedita-nihil-pariatur-et', NULL, 'Necessitatibus voluptatem non occaecati quam. Est nobis recusandae dolores nam alias iusto natus. Illum cupiditate et excepturi eveniet voluptatem.', 'Ut dolores sapiente delectus dicta sint. Natus ad recusandae voluptatem suscipit doloribus ad accusamus. Aut ut eaque voluptatum velit dolore nisi. At voluptates et tenetur ab nisi. Velit explicabo consequatur earum eaque ut. Et cumque sint et rem voluptatum ducimus tenetur. Placeat velit aliquam accusamus in ducimus eaque. Neque aut commodi tempore facere eligendi.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(15, 1, 1, 'Provident sapiente praesentium quis eos aliquid in natus.', 'corporis-temporibus-quos-sint-adipisci-eius-incidunt-sapiente-molestiae', NULL, 'Illo officiis et fuga magni dolores distinctio et aliquam. Voluptate ut architecto et corrupti omnis velit vel. Aliquid ratione voluptatem et.', 'Aut exercitationem suscipit cum quaerat ut facilis adipisci. Voluptas voluptatum odit deleniti id itaque sed. Voluptatem asperiores inventore ipsa omnis qui non accusantium. Voluptatum voluptas rerum perferendis. A est sed inventore. Inventore tempore earum numquam aspernatur molestiae tempore. Rerum ipsa aspernatur saepe maxime ipsam consectetur praesentium. Aperiam natus velit tempore deserunt. Doloribus ad libero voluptas. Neque inventore ab eveniet praesentium necessitatibus dolor iure. Deleniti est et doloremque rem aut. Nihil sit est enim. Ut et illo est illum ut culpa.', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04'),
(16, 1, 1, 'asdewq erew', 'asdewq-erew', 'post-images/STc7Gy0wtXbTFw6UOXes9Uj9KQSUegohG3n07vgP.jpg', 'ini judul baru yaacoba coba aja dah', '<div><strong>ini judul baru yaa<br><br></strong>coba coba aja dah</div>', NULL, '2023-10-19 22:29:57', '2023-10-19 22:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Basalamah Alam', 'Alam', 'basalamahalam@gmail.com', NULL, '$2y$10$Gmu783jxr107ZPW8VSYqbuTV6ToWjuD1nNj.c3sQA23IP2WXmOzze', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04', 1),
(2, 'Muhammad Alam Basalamah', 'Basalamah', 'alambasalamah@gmail.com', NULL, '$2y$10$vhSr.jUH6Ln8hUK.mGVCTumKGFpOuD8AbdHVzHvEznbT0JNeZDbRq', NULL, '2023-10-19 22:17:04', '2023-10-19 22:17:04', 0);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
