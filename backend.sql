-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 01:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps-backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` enum('Horror','Comedy','Animation','Thriller','Action','Adventure','Romance','Drama') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` enum('Serie','Movie') COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` int(11) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `description`, `genre`, `content`, `length`, `episodes`, `created_at`, `updated_at`) VALUES
(1, 'Iusto consequatur eius voluptas ducimus sed rem molestias.', 'Veritatis omnis facere voluptas est sit quos. Amet tempore maxime quae sed eaque perspiciatis rerum sunt. At ratione provident dolores qui itaque quia asperiores neque.', 'Thriller', 'Movie', 150, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(2, 'Veniam molestiae at ipsum corporis ipsa debitis aut.', 'Labore totam consequatur optio qui voluptatem aut. Rerum sit ad molestias.', 'Thriller', 'Movie', 156, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(3, 'Dolore sequi ipsum corporis est.', 'Est voluptate culpa deleniti quis in et. Qui repellat quidem fugit quibusdam ab. Tenetur voluptatum placeat excepturi. Non quo ratione at ut nesciunt.', 'Action', 'Movie', 102, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(4, 'In et numquam sapiente vero sit nulla impedit ut.', 'Id explicabo repudiandae commodi. Quis dolorum quia repellendus et deserunt. Voluptates qui hic corporis autem nam voluptatem et expedita.', 'Horror', 'Serie', NULL, 17, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(5, 'Occaecati non sed non praesentium et qui error saepe.', 'Unde aut ut sapiente et cum. Quas quia sit ab et. Explicabo dolore omnis quas est rem cupiditate sint. Laudantium cupiditate commodi error accusantium exercitationem officia repellat.', 'Adventure', 'Movie', 173, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(6, 'Odit temporibus nisi dolores ducimus enim.', 'Ea quia veritatis error et. Occaecati laborum eveniet fuga aut. Cumque accusamus qui blanditiis placeat molestiae et. Explicabo quis quis doloribus mollitia.', 'Adventure', 'Movie', 180, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(7, 'Ullam dolore optio iusto rerum autem.', 'Pariatur necessitatibus et repudiandae ratione sequi consequatur. Voluptas incidunt soluta aut ipsum. Eum voluptates voluptatibus nobis quia hic ut. Dolore architecto recusandae consequatur consectetur et ut. Doloribus occaecati explicabo perspiciatis voluptatem aspernatur sit illo.', 'Drama', 'Serie', NULL, 12, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(8, 'Vitae a quod voluptas quaerat voluptatem.', 'Architecto libero ut esse minus impedit quidem possimus. Sunt repudiandae officia facilis saepe. Sed ea eveniet similique veritatis quo.', 'Thriller', 'Serie', NULL, 6, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(9, 'Illo mollitia asperiores odio numquam deserunt blanditiis voluptatem.', 'Amet pariatur voluptas omnis et beatae sit neque totam. Nulla quis repudiandae aperiam. Necessitatibus possimus consequatur et ipsam iure tempora dignissimos.', 'Animation', 'Serie', NULL, 12, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(10, 'Error quasi itaque nisi aliquid.', 'Eos voluptatem et mollitia sapiente sed. Tenetur tenetur atque aliquid quis officia labore maiores. Ut omnis eveniet quo. In reprehenderit voluptas numquam consectetur ea necessitatibus. Necessitatibus natus accusamus aut dolore autem.', 'Drama', 'Movie', 122, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(11, 'Et rerum deleniti omnis eum.', 'Nemo quia eos eligendi temporibus. Quidem consequatur quia dolorem. Aut numquam quas mollitia harum aut deserunt. Voluptatem facilis sequi deleniti exercitationem.', 'Horror', 'Movie', 70, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(12, 'Nisi quae iure sint maiores.', 'Necessitatibus ut ea eum ea. Non aperiam ut quis ipsam non est molestiae. Et ut reprehenderit perferendis omnis.', 'Adventure', 'Serie', NULL, 3, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(13, 'Ea alias iure sequi tenetur.', 'Vel nihil fuga quia. Aspernatur quo voluptatem labore temporibus at. Tempora suscipit illo reiciendis nisi aperiam omnis. Voluptatem assumenda aut quod nihil ipsam facere placeat.', 'Drama', 'Movie', 142, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(14, 'Voluptatem vero maiores id debitis dolorum vitae alias.', 'Est aut explicabo repudiandae sunt adipisci et id nemo. Sed vitae et rerum pariatur. Veritatis nulla fugit temporibus doloribus deserunt id. Minus unde consequatur voluptatem necessitatibus ratione animi distinctio optio.', 'Drama', 'Movie', 156, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(15, 'Labore non neque exercitationem aut autem maiores id.', 'Tenetur repudiandae dolore laudantium veniam et quo. Incidunt qui sed quia vel inventore magnam et. Inventore qui id quia fugit. Corporis quaerat qui hic quae sed.', 'Horror', 'Serie', NULL, 9, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(16, 'Odio quis error eveniet occaecati.', 'Nisi excepturi voluptas dolorem qui distinctio id voluptas officia. Reprehenderit dolore necessitatibus dicta repudiandae. Reprehenderit excepturi qui quo et tempora quaerat error aut.', 'Romance', 'Serie', NULL, 20, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(17, 'Est est veritatis voluptas esse recusandae eveniet.', 'Non ipsam amet sed explicabo voluptas quidem. Alias qui voluptatem esse odio. Labore voluptatem fugiat dolorem accusamus ipsam. Corporis ex aperiam tenetur vel.', 'Drama', 'Serie', NULL, 2, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(18, 'Similique rerum illum aut recusandae aut quis.', 'Optio quis iste non illum. Fugit reprehenderit voluptate debitis labore animi quaerat.', 'Drama', 'Movie', 172, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(19, 'Quia doloribus vel aut exercitationem qui nobis.', 'Eveniet itaque ut magnam culpa. Culpa expedita vel at vel sunt. Incidunt iste illo excepturi qui at ipsum quia perferendis.', 'Adventure', 'Serie', NULL, 19, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(20, 'Ex dolores illum est voluptatem excepturi dolorem qui.', 'Esse animi libero ut et voluptas voluptas. Odio nisi quam distinctio quas. Molestiae qui quasi ullam quia molestiae. Eligendi et ad et explicabo eum velit. Quisquam sint inventore nihil harum consectetur.', 'Romance', 'Movie', 127, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(21, 'Aut animi qui libero consequatur in possimus et magni.', 'Rerum eligendi distinctio perspiciatis consequuntur ducimus aut earum. Nemo aut voluptatibus incidunt impedit quae et debitis. Quia omnis quam repudiandae deserunt at autem velit ut.', 'Action', 'Movie', 172, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(22, 'Et sunt sequi molestiae voluptas harum sunt aliquam.', 'Atque odio voluptates suscipit qui nisi aut. Eaque et rerum eos ipsa vero. Aut itaque commodi debitis cum vel molestiae. Sapiente doloremque distinctio sequi corporis. Architecto et aut aut fugiat quibusdam voluptate sed.', 'Adventure', 'Serie', NULL, 1, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(23, 'Quod ullam facere omnis.', 'Eos repudiandae non id perferendis omnis. Error at dolorem unde iusto adipisci vel qui. Est nisi molestiae praesentium qui porro fuga aut.', 'Adventure', 'Serie', NULL, 5, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(24, 'Ad incidunt dolore magni quos corrupti non vel.', 'Voluptatum in aliquam eum modi. Consequatur est aperiam quas aut. In aut nesciunt eum nihil.', 'Horror', 'Movie', 169, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(25, 'Dolorum distinctio dolores aut culpa optio non veniam.', 'Magnam et voluptas cum atque eligendi magni. Necessitatibus consectetur necessitatibus odio iusto rerum et repellat. Ipsum alias ut eos recusandae similique adipisci.', 'Action', 'Serie', NULL, 2, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(26, 'Rem fuga in sed quo voluptas deleniti.', 'Culpa temporibus fugiat in ut optio consequuntur. Accusantium id quia corporis molestias. Cupiditate eaque deserunt numquam iusto velit repellat.', 'Romance', 'Serie', NULL, 6, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(27, 'Soluta esse impedit laborum illo.', 'Ut repudiandae earum voluptatem facilis id sed. Exercitationem officiis est quasi. Eum facere saepe consequuntur quaerat est.', 'Horror', 'Serie', NULL, 5, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(28, 'Aut qui itaque consequuntur at sint alias repellendus.', 'Ratione nemo vero at distinctio consequuntur quia voluptatem aut. Asperiores commodi consequatur consequatur rerum. A ut sed earum quis dignissimos et.', 'Adventure', 'Serie', NULL, 8, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(29, 'Ipsum dolorem rem aut voluptatum id ut.', 'Voluptatem sit qui velit accusantium. Qui corporis iure ea distinctio officiis. Odio totam eligendi qui nesciunt officia.', 'Thriller', 'Serie', NULL, 11, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(30, 'Reprehenderit labore accusamus dolore dolorem corporis ut delectus.', 'Magni porro neque laboriosam autem et aut fugit. Aut eius at quisquam non explicabo.', 'Action', 'Serie', NULL, 20, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(31, 'Sint ipsam repudiandae nihil et.', 'Ad commodi et hic rerum. Repellat ut odio nihil explicabo. Pariatur repellat quisquam cupiditate officia ipsam.', 'Adventure', 'Movie', 152, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(32, 'Non nulla laborum error iste.', 'Alias inventore quo esse quibusdam repellendus rerum architecto. Non provident laboriosam necessitatibus iure. Et laborum quo necessitatibus quod porro dolorem.', 'Drama', 'Movie', 74, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(33, 'Est reiciendis animi quo neque voluptatibus eum.', 'Eos dolor quia eum quia rem nulla nulla. Consequatur rerum a sint velit nam quia ut omnis. Commodi expedita ullam ipsum et maiores voluptas sed id. Beatae at non quaerat sunt.', 'Action', 'Movie', 73, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(34, 'Perspiciatis occaecati architecto voluptatum assumenda minus.', 'Debitis et molestiae voluptatem numquam fugiat. Accusamus vel ea sit vitae inventore in exercitationem. Ea sit porro reprehenderit dolore debitis.', 'Romance', 'Serie', NULL, 2, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(35, 'Consectetur at iusto non.', 'Vel ea sint nobis aperiam voluptate necessitatibus consequatur quod. Reprehenderit et iure aspernatur dolorem. Quidem cumque temporibus dicta natus neque itaque.', 'Action', 'Serie', NULL, 14, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(36, 'Voluptas quibusdam quis aperiam totam.', 'Fugiat deserunt dolore non. Nam voluptas fuga voluptas quibusdam qui animi itaque. Fugit pariatur porro dignissimos. Corrupti sint molestiae et hic.', 'Romance', 'Movie', 71, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(37, 'Dolorem quidem dolores nulla omnis minus quia debitis impedit.', 'Facere commodi ut quae mollitia eum commodi dolor. Vel magnam quam in perspiciatis voluptas est dolor. Eius reiciendis facilis quia tempore dolor in.', 'Adventure', 'Movie', 169, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(38, 'Earum dolor aliquid voluptas.', 'Officia veniam qui quia est. Iure expedita corrupti aut beatae sunt molestiae corporis. Et iste consequatur at provident laboriosam.', 'Adventure', 'Serie', NULL, 20, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(39, 'Eos quia consectetur eligendi deserunt modi numquam.', 'Veritatis illum soluta totam non pariatur vero. Quia et dolor rerum voluptatem odit doloremque. Reiciendis ab veritatis unde nam. Minima cumque ut ab tempora omnis voluptatem rerum nobis.', 'Thriller', 'Movie', 179, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(40, 'Dicta eos aliquid voluptates quas aut sed voluptates.', 'Quidem corrupti omnis eligendi dignissimos assumenda maxime ut. Est magnam saepe officia enim dignissimos. Sequi aperiam quas ratione doloribus perferendis. Perspiciatis perferendis excepturi aut.', 'Drama', 'Movie', 128, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(41, 'Quo perferendis quia velit qui porro et quasi.', 'Occaecati pariatur reprehenderit corrupti. Non repellendus repellat ad exercitationem rem. A enim rerum id asperiores omnis. Facilis non velit sapiente.', 'Action', 'Serie', NULL, 7, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(42, 'Atque vero enim voluptatem accusantium.', 'Quo est nulla ipsa ut. Odio minima in nisi non blanditiis adipisci et eveniet. Voluptates soluta optio cumque optio fugiat. Optio quo culpa nemo.', 'Comedy', 'Serie', NULL, 1, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(43, 'Et beatae sit optio explicabo animi mollitia maxime.', 'Alias omnis molestiae molestias dolores omnis. Est aut rerum optio. Animi expedita est vel laborum eveniet labore dolores.', 'Romance', 'Movie', 76, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(44, 'Eos accusamus blanditiis qui illum.', 'Praesentium nesciunt quia rem quia ipsam. Voluptates similique aut quidem. Quo consequatur omnis alias. Quasi delectus est fuga accusamus blanditiis id.', 'Drama', 'Serie', NULL, 13, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(45, 'Non autem voluptatem eveniet eum sit est.', 'Quia excepturi ea eligendi eligendi repellendus. Veniam non quasi est in deleniti totam. Necessitatibus ducimus officiis vel quibusdam sunt fugit sit.', 'Thriller', 'Serie', NULL, 16, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(46, 'Quibusdam dicta delectus fugiat velit.', 'Consequatur architecto non neque voluptate necessitatibus officiis. Corporis consequatur et enim asperiores nulla. Quo aperiam aut sint ut. Iure quo eligendi sapiente reiciendis.', 'Comedy', 'Movie', 108, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(47, 'Sapiente doloribus dolorem dolor unde.', 'Non tenetur distinctio eius porro est. Atque est tempore assumenda consequuntur libero fugiat quo. Architecto quisquam est totam.', 'Romance', 'Serie', NULL, 2, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(48, 'Qui officiis at reprehenderit quos odit et.', 'Vel aut sed nihil aliquid et. Non quas ipsam alias exercitationem facere culpa. At molestiae nisi earum quibusdam placeat nemo pariatur.', 'Animation', 'Serie', NULL, 14, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(49, 'Minus minus rerum et nihil.', 'Recusandae quibusdam aut inventore voluptatibus incidunt inventore. Repellendus nesciunt voluptas ullam nesciunt saepe. Qui aut provident culpa voluptas voluptatem dolorum exercitationem. Eveniet reiciendis earum voluptate quia perspiciatis quo sequi.', 'Animation', 'Serie', NULL, 1, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(50, 'Qui eos ut in veritatis in maxime voluptatem.', 'Aliquam maiores dolor ea voluptatem dolore quasi eum. Et neque minus delectus. Aut vel minus eum temporibus.', 'Adventure', 'Movie', 63, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(51, 'In expedita quam ipsum eos voluptates facere quis.', 'Facere id omnis a sit architecto id. Commodi dolorum eum eos. Minima labore blanditiis nobis iure. Quaerat ad culpa id quibusdam non sunt. Optio non illum rerum eligendi ipsa nam numquam.', 'Thriller', 'Movie', 126, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(52, 'Quam et quaerat est perspiciatis.', 'Et ut tempora dignissimos et beatae. Possimus enim quidem quod labore rerum ea. Eum sit quas qui est.', 'Adventure', 'Serie', NULL, 19, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(53, 'Consequatur dolorum ea id nobis.', 'Dignissimos sit aut nihil reprehenderit exercitationem non culpa. Nobis est adipisci molestiae. Officia enim accusamus et unde.', 'Comedy', 'Serie', NULL, 4, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(54, 'Vero inventore molestias inventore.', 'Qui expedita deserunt sed est. Beatae est enim deleniti et eius impedit. Voluptatem dolores repudiandae pariatur cum dignissimos excepturi et.', 'Horror', 'Serie', NULL, 11, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(55, 'Ratione assumenda libero unde porro odit numquam.', 'Enim voluptatem animi a voluptatum quas. Molestias similique natus fugit beatae eos soluta.', 'Comedy', 'Movie', 169, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(56, 'Pariatur voluptatum est iusto similique eius alias exercitationem.', 'Totam et molestias id numquam aliquid nam. Sequi temporibus temporibus modi earum aut. Aut quas qui sapiente et.', 'Drama', 'Serie', NULL, 8, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(57, 'Iusto deleniti fugiat facere assumenda.', 'Nemo modi repudiandae nihil autem. Explicabo iusto eveniet neque aspernatur impedit quis aut in. Dolorem unde quam et sit dignissimos. Aliquam facilis voluptatum consequuntur voluptatem et qui.', 'Thriller', 'Movie', 158, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(58, 'Et ut tempore ea assumenda neque expedita deserunt.', 'Tempora possimus eum quasi atque. Pariatur rerum quasi nam sint. Accusantium aut architecto nesciunt ut est sit. Adipisci nulla omnis occaecati et dolores non.', 'Adventure', 'Serie', NULL, 14, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(59, 'Sed sed quidem deserunt fugiat voluptas adipisci.', 'Similique eum ea delectus sit at velit. Repellat alias mollitia amet illum voluptatem odit doloribus. Labore facilis deserunt id consequatur est aut.', 'Animation', 'Serie', NULL, 8, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(60, 'Deserunt aliquam perferendis numquam odit inventore.', 'Quam non non quis molestias. In dicta minus aut labore in commodi. Aut et iste sint et blanditiis voluptatem eius. Officiis recusandae beatae earum sint perferendis error.', 'Romance', 'Movie', 82, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(61, 'Totam fuga corporis cum et non molestiae praesentium.', 'Occaecati maxime et sit nulla veniam dolore exercitationem. Consequatur sit est alias. Impedit at libero perspiciatis aspernatur nemo dolorum. Sapiente enim molestias quod dolorem. Numquam dolor est delectus aut voluptatem ut ut.', 'Action', 'Movie', 93, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(62, 'Voluptates incidunt temporibus quidem rerum.', 'Saepe labore mollitia quia et voluptas. Beatae pariatur autem porro et voluptas. Repellat beatae illum ut ducimus.', 'Animation', 'Serie', NULL, 12, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(63, 'A laboriosam ea sit tenetur cumque.', 'Non excepturi autem maxime sit aliquam. Est enim itaque sed nam vero. Maxime et est debitis ut numquam. Ratione repellat delectus nihil vel quis.', 'Adventure', 'Movie', 63, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(64, 'Perferendis reiciendis nostrum nihil.', 'Officia natus tempora et itaque reprehenderit autem non quo. Eum voluptatum sunt facere non harum. Optio sunt laborum harum repudiandae autem fugiat repellendus suscipit. Vel quam harum ut.', 'Animation', 'Movie', 135, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(65, 'Totam voluptate ut eveniet cupiditate sed.', 'Tenetur nostrum qui minima adipisci et ut odio. Et ducimus eius optio aut architecto. Placeat voluptatem aperiam blanditiis veritatis doloribus alias minus. Neque asperiores iste esse rerum consectetur. Et laudantium facilis id ad esse numquam molestiae et.', 'Action', 'Serie', NULL, 6, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(66, 'Nemo alias recusandae ut ab nostrum et.', 'Et eius sed quidem. Et nisi in pariatur non veritatis. Quidem eius corrupti deserunt totam modi aspernatur nam. Facilis magnam dolore non et.', 'Comedy', 'Movie', 89, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(67, 'Tenetur et dolores delectus ipsa dolorum.', 'Sint in soluta aut iure voluptatem vel. Autem ullam adipisci quia. Porro totam odit aliquid a amet inventore ut.', 'Drama', 'Movie', 136, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(68, 'Dolore ipsum labore qui atque enim.', 'Tempora nulla iure eveniet aut voluptas velit. Natus laborum eos est quibusdam est. Adipisci in minus alias quam tempora.', 'Action', 'Serie', NULL, 11, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(69, 'Minima animi voluptas optio magni rem eveniet.', 'Earum repudiandae soluta quia inventore ducimus quam unde in. Vel maxime cum ducimus laborum ad excepturi ipsam. Voluptatibus dolore quis voluptates. Libero iste praesentium nihil voluptatem quidem quo.', 'Romance', 'Serie', NULL, 8, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(70, 'Ex culpa eveniet ut ad et ut delectus.', 'Perferendis ducimus nihil dignissimos quis labore adipisci reiciendis. Eos occaecati minima possimus perspiciatis.', 'Action', 'Movie', 175, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(71, 'Quidem ut ex aut consequatur.', 'Nulla quae omnis ipsum quas. Asperiores beatae sed rerum officiis veniam. Et aut labore aut magni voluptas. Qui quaerat est odit sed laborum excepturi ut quod.', 'Action', 'Movie', 115, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(72, 'Omnis quis accusamus corrupti ex esse maxime.', 'Ad excepturi exercitationem animi qui. Libero aspernatur non consequatur accusamus architecto quis. Esse rerum odit aut voluptatum. Non non ut aut ab rerum.', 'Thriller', 'Movie', 116, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(73, 'Vitae ut eligendi aperiam autem voluptatem tenetur non.', 'Ducimus architecto aut autem qui optio neque. Dolorum reiciendis libero minima quisquam. Consequuntur molestiae qui praesentium et.', 'Action', 'Movie', 144, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(74, 'Blanditiis dolore fuga corrupti alias.', 'Quas quo dicta eum ea dolor eaque. Rem blanditiis adipisci culpa officiis. Sed corporis rem adipisci at alias temporibus. At aut sequi sunt veritatis.', 'Romance', 'Movie', 92, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(75, 'Et a in cum ducimus vitae iste magni.', 'Fuga et sunt sunt sit ut ipsam. Voluptate quia reprehenderit maiores fuga nihil dolorem molestias. Labore sed nesciunt ipsum aspernatur rem est id. Est corrupti reprehenderit officia sequi error.', 'Action', 'Serie', NULL, 10, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(76, 'Et autem tempora est esse in repudiandae.', 'Omnis quas illum laudantium corrupti non quidem. Earum ad inventore fuga velit. Aperiam laborum ea id at quia. Quis dolor sint aut et inventore aliquam.', 'Adventure', 'Serie', NULL, 10, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(77, 'Cum in animi illo deserunt illum vitae ipsum.', 'Fugiat et et ut iure. Architecto alias ea earum corrupti quaerat modi deleniti. Sapiente magnam est aut odio reprehenderit explicabo beatae. Sapiente incidunt aut eveniet.', 'Comedy', 'Serie', NULL, 5, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(78, 'Et id sed illum aperiam sint libero suscipit.', 'Sapiente iste et voluptatem dolorem voluptatibus rerum. A voluptatem aut velit consequatur. Incidunt quod excepturi expedita iste omnis.', 'Action', 'Movie', 162, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(79, 'Et quod dolorem dolor fugiat odit quaerat voluptate.', 'Fugiat culpa beatae eius non eaque qui. Soluta ea nihil impedit blanditiis. Mollitia et dicta temporibus eligendi non.', 'Thriller', 'Movie', 81, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(80, 'Et esse sed doloremque ad aut voluptas tenetur ut.', 'Velit pariatur doloribus enim et quisquam ratione iure. Repudiandae quo quia molestiae vel dolor. Eveniet cupiditate animi voluptatibus reprehenderit aut pariatur.', 'Drama', 'Serie', NULL, 4, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(81, 'Cum autem voluptates corrupti neque nisi.', 'Eos adipisci amet assumenda porro nesciunt ut possimus. Alias impedit ut in error alias quod vero. Delectus ea sit eligendi laboriosam unde.', 'Action', 'Serie', NULL, 7, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(82, 'Consequuntur ea et non eveniet quia maiores asperiores.', 'Recusandae consequatur modi vel fugiat deserunt. Facere ea repellat sed tempore fugiat molestias. Consequatur sunt explicabo vero est nihil aliquam. Necessitatibus quas vel et odio.', 'Action', 'Serie', NULL, 6, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(83, 'Autem vero odio sit sed.', 'Sit dolorem harum esse quibusdam labore eius officia. Soluta dolores explicabo voluptas et molestias qui. Ea fugit recusandae architecto in molestiae ipsum veniam.', 'Thriller', 'Serie', NULL, 12, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(84, 'Ea et quidem alias dolor aut.', 'Rerum explicabo iure at pariatur debitis soluta iste. Vero in quis atque non ut quas perspiciatis. Eveniet tenetur doloribus nihil ea qui perspiciatis corrupti.', 'Action', 'Serie', NULL, 20, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(85, 'Aut dolorum consequatur soluta sapiente.', 'Numquam distinctio minima atque corporis. Distinctio ut cumque aliquid cum delectus et. Odit nam iure id voluptates.', 'Animation', 'Serie', NULL, 13, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(86, 'Et excepturi minima sed nemo pariatur.', 'Eos quis repellendus ipsam earum. Atque aliquam iste et aperiam soluta. Esse repudiandae et vel quos debitis aut reprehenderit molestiae.', 'Horror', 'Movie', 75, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(87, 'Sequi eaque nihil et consectetur.', 'Delectus nam maxime et consequatur laudantium omnis laborum. Id qui temporibus blanditiis ex rem cupiditate. Assumenda neque aut et aliquid minima voluptatum.', 'Thriller', 'Serie', NULL, 3, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(88, 'Aperiam officia velit enim in est asperiores occaecati.', 'Ab recusandae accusantium provident consequatur explicabo. Eius facere est quam est est error tempora. Et repellat aliquid quo ut. Expedita molestias tempora nam qui omnis.', 'Romance', 'Serie', NULL, 13, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(89, 'Earum modi nostrum ut sed ipsam doloremque.', 'Vel quo maiores amet ipsa. Maxime modi blanditiis dignissimos cum.', 'Thriller', 'Serie', NULL, 20, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(90, 'Dolorem omnis deleniti qui dolores qui quia iusto.', 'Voluptatem enim molestias saepe ad. Similique numquam qui non iure. Ad veritatis dicta consequatur expedita architecto velit iste. Autem rem sint quo sed doloremque rerum officia harum.', 'Thriller', 'Movie', 125, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(91, 'Itaque corporis similique nihil sed.', 'Voluptatum non qui accusamus est. Voluptatem perspiciatis amet dignissimos. In modi ut consequuntur maxime vel corrupti.', 'Drama', 'Movie', 166, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(92, 'Aut dolor aliquid natus nihil qui consequatur.', 'At facere error expedita fugiat consequatur perferendis. Ratione et sit numquam totam aspernatur.', 'Adventure', 'Serie', NULL, 15, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(93, 'Tenetur aut vel vitae qui vel.', 'Maxime voluptatem dolore aut non facere qui. Earum sunt ut ut ea et nisi dicta. Quas qui reiciendis maxime voluptatibus quidem. Iusto inventore deserunt suscipit error provident suscipit.', 'Drama', 'Serie', NULL, 11, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(94, 'Magnam sed doloremque et nihil laboriosam.', 'Velit quia et perferendis labore non. Eligendi enim libero assumenda sit sunt. Harum aut quod non et. Maiores vel modi consequatur et.', 'Comedy', 'Movie', 116, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(95, 'Vitae ullam ab provident.', 'Delectus et natus quis dolorum veritatis saepe. Tempore doloribus laboriosam non id optio. Sit expedita eveniet ab aut alias minima omnis.', 'Adventure', 'Serie', NULL, 14, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(96, 'Nihil libero delectus rerum commodi repellat.', 'Inventore aut architecto consectetur corporis aspernatur perferendis quibusdam illo. Occaecati cupiditate sint est autem dolor. Similique repellat quae nobis dolores. Beatae ullam quod molestiae officia.', 'Horror', 'Movie', 71, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(97, 'Fugiat cumque minus exercitationem provident.', 'Qui et itaque autem ipsum. Ut non deserunt tempora id unde dolor non. Ut minima aut aliquam.', 'Thriller', 'Movie', 110, NULL, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(98, 'Suscipit et tenetur nihil nam esse sapiente.', 'At numquam velit est quod. Perferendis rem repellat odio provident rem. Dolorem consectetur rerum vel voluptas qui nam ea illo.', 'Thriller', 'Serie', NULL, 7, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(99, 'Eum distinctio ad dolore dicta.', 'Dolore non odio rerum voluptate id sunt quam. Occaecati enim quaerat iusto labore. Voluptate iusto nulla odit aut. Ab et quidem iste suscipit.', 'Animation', 'Serie', NULL, 10, '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(100, 'Vero et dolorem quisquam reprehenderit ut.', 'Quibusdam vitae quaerat facere aut suscipit. Architecto exercitationem blanditiis et incidunt quia voluptate libero. Nemo soluta quia optio sint minima. Vel vero enim repellat numquam facere quia.', 'Horror', 'Serie', NULL, 3, '2024-06-21 09:13:57', '2024-06-21 09:13:57');

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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2024_06_20_182146_create_contents_table', 1),
(6, '2024_06_20_182203_create_favorites_table', 1);

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
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Elenor Pagac', 'beverly.barrows@example.net', '2024-06-21 09:13:56', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'sAkbbtwBzB', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(2, 'Wanda Johnson', 'josiah.nitzsche@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'idXt7uXfF8', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(3, 'Josefina Eichmann Jr.', 'jermaine.pollich@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'jGfXhTbw0G', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(4, 'Prof. Felton Mraz PhD', 'tobin.dubuque@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'eRoHOMkAmy', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(5, 'Prof. Alana Miller', 'rosamond.gerhold@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '6HYzWEQOEd', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(6, 'Rudy Schulist', 'rossie03@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'xLugr54Vpm', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(7, 'Prof. Edward Howe Jr.', 'xhoppe@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'LIQZ9Spr0T', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(8, 'Iliana Lakin', 'tina52@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'SiJN8Ab90B', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(9, 'Emmanuel Schimmel', 'hermiston.melvina@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'Y9fueNMYbL', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(10, 'Dr. Ryley Watsica III', 'emacejkovic@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'WEGDGeeuP2', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(11, 'Dr. Roxane Gorczany MD', 'rullrich@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'FnmZrYQWD5', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(12, 'Urban Langosh', 'elinor.thiel@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'Pr6DBd0GpE', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(13, 'Ms. Kailyn Gutkowski II', 'jerrold.smitham@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'ZT9n1zCcMI', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(14, 'Micheal Nienow', 'cristopher.shanahan@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '4GjslyP6vm', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(15, 'Jany Hilpert', 'carmella58@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'NiQb55S54V', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(16, 'Dr. Arlie Spinka II', 'augusta.hermiston@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'WisQBdzpVw', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(17, 'Toby Bogisich', 'ospinka@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'HfCS2FHLrE', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(18, 'Cielo Harber', 'kacey21@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'apexyNaRtt', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(19, 'Hortense Gusikowski Sr.', 'bwuckert@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'DSkx6bIgrF', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(20, 'Stella Mosciski', 'vheathcote@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'UxeA7pg7VD', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(21, 'Dr. Abagail Windler', 'boehm.gino@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'BgN8CUdbj7', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(22, 'Dedrick Fisher', 'reinger.althea@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'kJKe1umvNO', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(23, 'Hubert Kassulke', 'keeling.greg@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '0K0CwnMqWd', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(24, 'Sim Schmidt', 'zdoyle@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '3leJObVjwR', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(25, 'Murray Sipes', 'pete.schumm@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '2qXkzVhnzb', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(26, 'Christine Ernser', 'emily.schimmel@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'Sn5LcCP2WA', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(27, 'Mose Rempel', 'brooke.wolff@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'wPzYfXM3hq', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(28, 'Sadye Schuster', 'annamae.breitenberg@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'gvW8TZkwvF', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(29, 'Valentine Frami', 'virginie55@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '4o9Hi9dGBp', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(30, 'Onie Koelpin DDS', 'adella.king@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '08rtsk0k2K', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(31, 'Mrs. Viviane Cartwright', 'rkling@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'JDwlvfhLAX', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(32, 'Daisha Lockman III', 'denis.lynch@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '0d6SacFuif', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(33, 'Peter Wiegand', 'uhodkiewicz@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'fcOgv9lJBW', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(34, 'Prof. Mariane Waelchi V', 'lacey87@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'S372nej357', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(35, 'Marie Jast', 'macie.shanahan@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'ycSHCp7hG0', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(36, 'Mrs. Norene Schuster', 'iking@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'A2RNYXlFgx', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(37, 'Arlene Crooks', 'heichmann@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'q69i4VjLeD', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(38, 'Vaughn Rowe PhD', 'labadie.jonatan@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '7vZJRua4T1', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(39, 'Theresa Rogahn Sr.', 'lind.buck@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'hbe1JNnWi0', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(40, 'Lue Medhurst', 'lind.kelly@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'mj5qVr8czh', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(41, 'Fausto Jast', 'altenwerth.amira@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'AtkDmomx7q', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(42, 'Khalid Mueller', 'walker.kenya@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'Vufm61mWEv', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(43, 'Danyka Pagac', 'caterina13@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'LJPpV7DKQ1', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(44, 'Roman Gottlieb', 'dustin00@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'MfFpMYCqsc', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(45, 'Faye Thiel', 'curt.feil@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 't83zqzfzNZ', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(46, 'Terrill Schaefer', 'mario69@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'kqeM61z8eL', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(47, 'Ms. Marta Mayer Sr.', 'aroob@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '5u08H7cHSa', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(48, 'Albin Effertz', 'drew.volkman@example.com', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'AUspg2rFdS', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(49, 'Ms. Ashlee Fadel II', 'mparisian@example.org', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', 'mFefbMN7dn', '2024-06-21 09:13:57', '2024-06-21 09:13:57'),
(50, 'Russel Sawayn', 'lloyd.oreilly@example.net', '2024-06-21 09:13:57', '$2y$12$IK7.0i3gvugNjK9zFWZleO0qB5moxbdRM2ClKF/Qr1t7edy/ap5tK', '8JV0pd05yw', '2024-06-21 09:13:57', '2024-06-21 09:13:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_content_id_foreign` (`content_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
