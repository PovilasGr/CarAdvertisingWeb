-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 11:48 AM
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
-- Database: `caradvertisingweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_ads`
--

CREATE TABLE `car_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `car_brand_id` bigint(20) UNSIGNED NOT NULL,
  `car_type_id` bigint(20) UNSIGNED NOT NULL,
  `fuel_type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL,
  `mileage` int(11) NOT NULL,
  `car_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_ads`
--

INSERT INTO `car_ads` (`id`, `user_id`, `car_brand_id`, `car_type_id`, `fuel_type_id`, `title`, `price`, `year`, `mileage`, `car_condition`, `description`, `contacts`, `created_at`, `updated_at`, `images`) VALUES
(2, 1, 5, 5, 4, 'test', '43214234.00', 2022, 4320, 'new', 'test', 'test', '2023-03-26 09:18:52', '2023-03-26 10:01:01', NULL),
(4, 1, 2, 3, 2, 'MyLIST', '23421.00', 2013, 5123445, 'used', 'MYLISTINGS', '+37067998713', '2023-03-27 08:36:01', '2023-03-27 08:36:01', NULL),
(10, 4, 4, 2, 2, 'Title', '12121.00', 2021, 120, 'used', 'aprasymas', 'contact', '2023-03-28 08:28:32', '2023-03-28 08:28:32', NULL),
(11, 6, 19, 3, 2, 'Hyundai Automobilis', '12000.00', 2017, 134888, 'used', 'Automobilio aprasymas', 'vartotojas@gmail.com', '2023-03-28 08:31:11', '2023-03-28 08:31:44', NULL),
(12, 6, 6, 1, 2, 'TITLE', '3999.00', 2019, 23940, 'used', 'DESCRIPTION', '8623914023', '2023-03-28 08:42:43', '2023-03-28 08:42:43', NULL),
(14, 4, 14, 6, 1, 'Car Ad 1', '21583.00', 2007, 209084, 'New', 'Illo nesciunt molestiae veniam neque velit dolorem perferendis. Adipisci minima ab corrupti maiores qui et ducimus. Dolorem quae voluptas at. Totam odit magnam ducimus repellat delectus.', '(205) 696-8485', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(15, 4, 12, 6, 1, 'Car Ad 2', '32226.00', 1999, 172733, 'Used', 'Quod natus autem deleniti nisi facere unde. Accusantium dicta consequatur aspernatur maiores. Quia vel laborum omnis enim et illum asperiores officiis.', '785.333.7473', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(16, 4, 16, 3, 3, 'Car Ad 3', '8106.00', 2022, 206652, 'New', 'Consequatur eius cupiditate explicabo. Delectus sint recusandae minima enim. Illo accusantium qui possimus blanditiis consequatur velit. Quia aut corrupti quibusdam et rerum a cupiditate.', '425-273-2076', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(17, 4, 6, 6, 2, 'Car Ad 4', '3774.00', 2000, 45655, 'New', 'Officiis quam fuga ipsa eos rerum vero. Aliquam molestiae mollitia aliquid provident. In culpa molestiae reiciendis dolores aspernatur.', '678-801-6888', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(18, 4, 47, 9, 1, 'Car Ad 5', '34260.00', 1990, 58635, 'New', 'Suscipit qui quia fuga dolorem ut non et. Minus placeat nam iste doloremque. Veritatis placeat quo corporis incidunt omnis inventore quibusdam. Sit at culpa voluptatem dolores possimus perferendis fuga.', '731-784-6079', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(19, 4, 6, 4, 3, 'Car Ad 6', '12597.00', 2005, 163397, 'New', 'A consequatur qui perferendis deleniti quaerat. Quae qui provident hic libero. Ab expedita dicta ex totam tenetur. Sint cum voluptatem iure minima voluptas ea.', '623-297-8048', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(20, 4, 46, 3, 3, 'Car Ad 7', '45587.00', 1993, 244109, 'Used', 'Ut nesciunt temporibus occaecati. Ducimus est autem enim. Et provident sunt aperiam occaecati maxime.', '754.753.5513', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(21, 4, 44, 2, 3, 'Car Ad 8', '47030.00', 1997, 204709, 'Used', 'Est eum consequatur qui. Aut dolores est ea et culpa quibusdam. Ullam maxime minus in voluptas qui velit.', '+1-402-596-3173', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(22, 4, 29, 6, 1, 'Car Ad 9', '22447.00', 2014, 19563, 'New', 'Veniam assumenda nobis nam. Dolores fuga eligendi nulla voluptatem aut aliquam possimus. Repellat dignissimos unde provident aspernatur error.', '351.738.1979', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(23, 4, 26, 4, 1, 'Car Ad 10', '994.00', 2018, 48934, 'Used', 'Recusandae nisi repellat consequatur voluptatem et. Et vitae blanditiis distinctio voluptatem nesciunt impedit ea. Accusantium molestiae explicabo et aut.', '+1-575-225-3829', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(24, 4, 8, 6, 4, 'Car Ad 11', '35603.00', 1990, 22243, 'Used', 'Quis voluptatem doloribus doloremque quis eos molestias. Et omnis est quia corrupti ut quo sit consequatur. Est aspernatur soluta et libero magni voluptates ad. Explicabo quibusdam vel tempore saepe dolore qui.', '681.729.0608', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(25, 4, 6, 2, 3, 'Car Ad 12', '19453.00', 2003, 128919, 'New', 'Cum rerum inventore necessitatibus. Velit libero eligendi possimus laboriosam.', '+1-208-506-5475', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(26, 4, 27, 5, 2, 'Car Ad 13', '21922.00', 2015, 240445, 'Used', 'Eum et cupiditate voluptatem alias labore eius iusto. Dolor asperiores ratione beatae illum. Alias aut nemo atque et qui deleniti sit.', '814-981-8466', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(27, 4, 13, 2, 4, 'Car Ad 14', '29912.00', 1994, 110147, 'New', 'Est dignissimos dolor vitae doloribus. Vitae quod ducimus numquam voluptas dolor. Impedit tempora numquam veritatis aliquam accusamus ratione ipsam.', '520-504-5648', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(28, 4, 8, 3, 4, 'Car Ad 15', '22092.00', 2016, 47920, 'Used', 'Similique voluptate maxime quae reiciendis. Quaerat provident quidem nisi labore laboriosam sunt. Accusantium est et explicabo facilis porro.', '814.569.4671', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(29, 4, 15, 1, 3, 'Car Ad 16', '38927.00', 2012, 62655, 'New', 'Odit sit at voluptate rerum soluta nulla quas qui. Ut aut modi consequuntur voluptas id consequatur. Voluptatem quibusdam doloremque laudantium nisi. Consequatur dolor consequatur fugit eum vitae dolor itaque.', '828.854.2642', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(30, 4, 40, 9, 2, 'Car Ad 17', '40715.00', 1999, 91508, 'Used', 'Culpa quo quos reprehenderit voluptas amet esse omnis voluptates. Aliquam corrupti consequatur labore aut nisi. Eos non voluptatem non qui dignissimos quia quia quia. Sunt omnis omnis modi sed quos accusantium.', '1-267-417-8528', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(31, 4, 4, 7, 3, 'Car Ad 18', '37646.00', 2016, 174969, 'New', 'Vel labore accusantium veniam voluptas voluptatem. Et voluptatum rerum dolore ut debitis sit illum. Earum ab perspiciatis voluptate saepe cupiditate est.', '1-716-781-0758', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(32, 4, 12, 4, 4, 'Car Ad 19', '18573.00', 1994, 75563, 'New', 'Ut numquam ut a ratione voluptas in quo. In quo maxime et est nemo repellendus adipisci quisquam. Et deleniti laborum perferendis quo minus beatae sed.', '+1-551-683-8795', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(33, 4, 38, 5, 3, 'Car Ad 20', '725.00', 2009, 23191, 'New', 'Ullam incidunt earum voluptas voluptatem perspiciatis dolorum eos. Cumque aut aperiam aut. Numquam fugiat eum autem velit.', '1-347-962-1184', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(34, 4, 17, 7, 1, 'Car Ad 21', '2824.00', 1992, 106886, 'Used', 'Saepe ut qui eum sint est distinctio et sint. Perspiciatis deleniti voluptate rerum quasi qui placeat.', '669-481-1119', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(35, 4, 16, 9, 3, 'Car Ad 22', '4310.00', 2012, 163184, 'New', 'Quia suscipit dolor et ut voluptates eligendi minus. Quia placeat maxime doloribus iste. Est amet odit rerum est omnis eveniet.', '954.815.5235', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(36, 4, 5, 8, 4, 'Car Ad 23', '22837.00', 2000, 173852, 'New', 'Doloremque est sunt et et corrupti et. Optio vitae reprehenderit quam officiis et modi. Sit aliquid assumenda est ipsa. Veritatis velit quia ut magnam rem eius voluptas. Sed dolorem et nam.', '+1.559.528.0307', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(37, 4, 11, 4, 1, 'Car Ad 24', '34041.00', 2007, 146594, 'Used', 'Modi quis unde deserunt minus praesentium. Quis eius rerum maxime illo. Occaecati aut voluptas doloremque ut quos autem sed. Rerum eligendi esse est illum quis aperiam explicabo vitae.', '+1-870-810-5794', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(38, 4, 37, 8, 1, 'Car Ad 25', '37515.00', 1996, 27131, 'Used', 'Culpa ut maiores suscipit consequuntur mollitia qui. Et voluptatibus omnis corrupti. Voluptas illum qui aperiam commodi laborum fugit.', '+1-541-323-2069', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(39, 4, 3, 9, 2, 'Car Ad 26', '36113.00', 1994, 224170, 'New', 'Quia tenetur debitis et omnis. Harum explicabo quas praesentium officia est magni. Incidunt dignissimos vero minima est est deleniti cupiditate. Et et nesciunt ab alias.', '+1.612.880.4188', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(40, 4, 35, 9, 1, 'Car Ad 27', '28565.00', 1994, 135154, 'Used', 'Architecto deleniti qui velit consequatur eos voluptatibus accusantium. Explicabo nisi labore labore fugit vel eius magnam qui. Et non et et nobis.', '580.807.6477', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(41, 4, 45, 2, 2, 'Car Ad 28', '16281.00', 2021, 90393, 'Used', 'Dolorem quia voluptates tempora asperiores soluta. Nemo maiores sint id sint nostrum provident. Ad ducimus nesciunt sit qui harum est doloribus.', '(458) 863-9246', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(42, 4, 12, 9, 3, 'Car Ad 29', '39311.00', 2006, 211477, 'Used', 'Earum id odio praesentium nam commodi quia voluptatem consectetur. Sequi sint vitae velit culpa quos optio soluta. Enim autem porro error id laudantium sed. Quam et laudantium voluptatibus libero quia et.', '(475) 645-4113', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(43, 4, 36, 5, 4, 'Car Ad 30', '25645.00', 1998, 143133, 'New', 'Fugit consequuntur iste saepe et consequatur voluptas aut. Quibusdam incidunt qui qui eaque sunt necessitatibus eveniet. Qui et commodi et odio qui ut totam. Esse atque eius ut quaerat quaerat totam laborum aut.', '+19799153838', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(44, 4, 28, 6, 1, 'Car Ad 31', '17185.00', 2016, 25427, 'Used', 'Quia eveniet recusandae vel corrupti voluptatem asperiores laboriosam id. Reiciendis quasi et necessitatibus tenetur optio. Quia soluta in hic enim. Explicabo consequatur exercitationem omnis nobis.', '+1 (479) 438-0174', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(45, 4, 26, 6, 4, 'Car Ad 32', '26256.00', 2021, 61670, 'New', 'Molestiae praesentium praesentium neque assumenda dolorem molestiae fugiat. Sed non dolor quis quia dicta illo saepe veniam. Deleniti est assumenda iste sequi.', '+1-541-405-8427', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(46, 4, 33, 9, 2, 'Car Ad 33', '47184.00', 2012, 102682, 'Used', 'Quo ut nulla sequi vero voluptatibus sit et. Tempora ipsam ea eum et similique.', '303-927-6856', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(47, 4, 37, 3, 2, 'Car Ad 34', '37754.00', 2008, 87586, 'Used', 'Voluptas error et ut. Modi aliquam exercitationem autem ipsum ipsam sit architecto.', '+1-630-430-3669', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(48, 4, 4, 7, 2, 'Car Ad 35', '39608.00', 1990, 163837, 'Used', 'Esse dolores odit incidunt non ducimus adipisci exercitationem. Laboriosam ad architecto facere. Id repellat recusandae ad. Qui aut sit autem quaerat quo.', '+1.618.705.2628', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(49, 4, 42, 4, 4, 'Car Ad 36', '8011.00', 2023, 141887, 'New', 'Soluta nam quia eaque adipisci. Laborum odio nemo voluptas. Dignissimos aut occaecati perspiciatis fuga rem dolores sapiente.', '406.384.2687', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(50, 4, 41, 1, 3, 'Car Ad 37', '15766.00', 2002, 78025, 'New', 'Odio corrupti aut quis accusamus rerum autem. Quia illum qui assumenda et est et. Error ut aut ducimus quidem nostrum.', '1-339-639-6485', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(51, 4, 21, 1, 3, 'Car Ad 38', '15546.00', 2007, 70933, 'New', 'Distinctio aut pariatur sint dolores ea asperiores velit. Ut sit a quia ipsa praesentium debitis. Sit nam ut alias et minima.', '(402) 882-5372', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(52, 4, 40, 3, 2, 'Car Ad 39', '43119.00', 1992, 201398, 'Used', 'Voluptatem rerum doloribus voluptatibus aut. Repellendus vel provident beatae omnis aliquam eum. Necessitatibus iure eligendi vel.', '601-648-6937', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(53, 4, 13, 6, 4, 'Car Ad 40', '27953.00', 2004, 240424, 'New', 'Aperiam facilis quibusdam numquam. Velit accusamus nihil qui assumenda soluta voluptatibus dolorem. Voluptas enim et sed qui laudantium ipsum.', '580-694-5368', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(54, 4, 43, 6, 1, 'Car Ad 41', '34768.00', 2012, 103256, 'New', 'Placeat ut eveniet et temporibus qui necessitatibus sunt. Qui ipsa quia perferendis ut quaerat exercitationem. Officia perferendis accusamus iusto doloremque accusantium quia numquam asperiores. Corporis dolor qui quo deleniti eaque.', '386-843-1759', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(55, 4, 38, 4, 2, 'Car Ad 42', '36193.00', 2001, 45033, 'Used', 'Non quia non nisi laboriosam ut corrupti officiis. Doloremque qui repellendus dolores quas ex velit officiis. Error inventore aspernatur quasi excepturi hic ad corporis.', '+1-786-980-6243', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(56, 4, 34, 6, 2, 'Car Ad 43', '7801.00', 2009, 42670, 'Used', 'Beatae et blanditiis repellendus qui. Accusantium sed et est.', '630.295.3212', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(57, 4, 8, 2, 2, 'Car Ad 44', '1939.00', 2018, 38690, 'New', 'Sed excepturi consequatur deserunt quas blanditiis aut et. Voluptates rem assumenda aspernatur rerum odio aliquid. Accusantium dolore mollitia perspiciatis pariatur qui. Aut atque omnis est soluta minus hic.', '+1.813.758.6737', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(58, 4, 4, 5, 2, 'Car Ad 45', '19786.00', 2019, 244554, 'New', 'Similique nisi architecto doloribus deserunt dolorum. Dolorem mollitia expedita distinctio officia animi tenetur.', '650.380.1814', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(59, 4, 26, 8, 3, 'Car Ad 46', '28416.00', 2020, 134874, 'Used', 'Enim repudiandae beatae magni ducimus voluptate eligendi dignissimos. Est reprehenderit repellat vero optio adipisci corrupti. Laudantium temporibus non et occaecati atque incidunt repudiandae eos. Sequi ullam hic quasi dolores distinctio.', '1-504-524-7128', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(60, 4, 9, 2, 3, 'Car Ad 47', '20473.00', 2004, 44297, 'Used', 'Repellendus ut nihil quasi voluptatibus unde cupiditate recusandae qui. Voluptas est maxime beatae eveniet eos eum nisi. Repudiandae cumque enim ut impedit et dolorem autem ea.', '1-680-630-1115', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(61, 4, 31, 9, 1, 'Car Ad 48', '42753.00', 2002, 217976, 'Used', 'Magnam at id nemo praesentium expedita voluptates eaque. Dolorem iure et quia deserunt dolorum aut tenetur velit. Beatae id quasi recusandae laborum molestiae nostrum. Soluta voluptates in enim fugit rerum.', '1-785-542-7062', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(62, 4, 40, 4, 2, 'Car Ad 49', '25900.00', 2017, 51075, 'Used', 'Pariatur rerum impedit enim voluptatem et rerum doloribus nulla. Consequatur natus nobis consequatur. Voluptate accusamus repudiandae enim minus excepturi quos et. Dolor pariatur nam reiciendis esse quo. Voluptatem et nihil soluta.', '+1-952-771-4992', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(63, 4, 8, 9, 3, 'Car Ad 50', '13262.00', 2012, 176564, 'Used', 'Fuga unde nobis sunt sed quaerat et. Excepturi qui molestiae illum est corrupti at consequatur. Laborum molestiae magnam sed. Quibusdam saepe alias repellat et dolor et.', '+1.781.566.1960', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(64, 4, 22, 3, 2, 'Car Ad 51', '33881.00', 1997, 25240, 'New', 'Rerum dolorum mollitia earum autem non a. Reprehenderit voluptate dignissimos fugit voluptates. Necessitatibus et qui deleniti commodi optio. Accusantium delectus eum voluptas veritatis.', '+1-754-288-7387', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(65, 4, 46, 3, 4, 'Car Ad 52', '23327.00', 1994, 231025, 'Used', 'Id corrupti cumque adipisci ratione omnis quam. Ea qui quaerat omnis a nihil.', '251.479.8746', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(66, 4, 10, 5, 3, 'Car Ad 53', '32810.00', 2004, 15550, 'New', 'Explicabo harum eos accusamus laborum inventore. Et quibusdam velit tempora ducimus necessitatibus nihil et. Asperiores et dolore et quis occaecati corporis.', '804-300-1390', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(67, 4, 31, 1, 3, 'Car Ad 54', '33962.00', 2004, 117056, 'New', 'Corrupti ut ut aut nemo suscipit dolore esse. Molestiae cum rem adipisci dolores voluptas autem quo et. Aut cum occaecati ullam dolorum magni.', '+1-470-210-6954', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(68, 4, 22, 3, 1, 'Car Ad 55', '46014.00', 2021, 59193, 'New', 'Iste facilis consequatur dolor alias minus et voluptate. Mollitia sint minus quis delectus est ad. Minus consequatur dicta dolorem. Accusantium consequatur ipsam ex accusamus. Qui quidem id omnis officiis.', '+13614509812', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(69, 4, 19, 5, 3, 'Car Ad 56', '42739.00', 2022, 23937, 'New', 'Et possimus iure voluptatem a nam alias hic. Itaque rerum et iure sed asperiores nihil est. Eum rem recusandae sit et accusamus voluptate quis. Magnam dolores voluptatibus voluptate dolorem.', '419-562-6404', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(70, 4, 48, 4, 4, 'Car Ad 57', '34934.00', 1997, 14884, 'Used', 'Eos nisi placeat et vel minus. Quia nisi rem sed optio voluptatem error. A et ipsum inventore consectetur provident. Quis quas hic consequatur aut eos.', '(769) 980-9689', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(71, 4, 11, 4, 4, 'Car Ad 58', '39807.00', 1998, 98923, 'Used', 'Ut ad cum sunt corporis est. Velit velit velit quasi nulla aliquam cupiditate consequatur veniam.', '+1-281-802-5286', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(72, 4, 1, 1, 4, 'Car Ad 59', '33571.00', 2003, 64199, 'New', 'Itaque ducimus tenetur praesentium doloribus. Voluptas autem vel vero reiciendis magni animi vel. Voluptate inventore qui eum fugiat et et officia.', '(678) 784-1011', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(73, 4, 23, 4, 2, 'Car Ad 60', '5253.00', 2001, 148511, 'Used', 'Qui unde voluptatem debitis tenetur ipsam harum. Quisquam cumque laudantium voluptatem. Blanditiis omnis laborum officia culpa incidunt odio.', '479.438.7380', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(74, 4, 22, 9, 3, 'Car Ad 61', '30233.00', 2005, 130177, 'New', 'Enim suscipit repellat dicta fugit et saepe. Ullam est sed et incidunt sint. Ut optio quis dignissimos aliquam vero fuga et et. Quasi facere libero in amet cupiditate.', '405.258.8522', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(75, 4, 32, 5, 2, 'Car Ad 62', '2732.00', 1999, 143480, 'Used', 'Quia accusamus debitis similique incidunt ullam nihil debitis. Iure veritatis voluptatum tempora omnis omnis placeat dolor. Voluptates voluptatem ea consequuntur velit facilis expedita qui. Aut odio est sunt ut.', '+18484636353', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(76, 4, 10, 2, 3, 'Car Ad 63', '4667.00', 2003, 32236, 'Used', 'Iste et qui velit esse. Voluptatum dolorum eligendi deleniti in magni et officia a. Possimus et dolor provident qui et voluptatibus voluptas. Vitae praesentium quia et et excepturi.', '(816) 545-8826', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(77, 4, 11, 3, 1, 'Car Ad 64', '29135.00', 2004, 19439, 'New', 'Id unde minima facere eligendi et amet. Aliquam sint ex soluta quaerat ipsa in et.', '(984) 553-8891', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(78, 4, 13, 4, 3, 'Car Ad 65', '882.00', 1995, 235204, 'New', 'Quod ut optio aut aut dicta officiis enim qui. Eum et id distinctio accusantium accusamus consequatur commodi. Natus fugit eum sed facilis omnis. Et aut libero consequatur facilis excepturi fuga suscipit.', '(928) 799-9625', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(79, 4, 25, 3, 1, 'Car Ad 66', '49966.00', 2002, 158112, 'Used', 'Quis quod deleniti aut. Nostrum provident et beatae voluptate aliquam natus libero. Alias officiis commodi eum.', '978.862.7149', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(80, 4, 31, 9, 4, 'Car Ad 67', '15978.00', 2017, 122537, 'New', 'Aut aspernatur praesentium et qui iste similique repellat. Odio inventore necessitatibus ut est libero molestias quidem. Adipisci laudantium est nam veritatis aut ipsam laboriosam omnis. Officiis et et saepe.', '(501) 386-4552', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(81, 4, 21, 1, 2, 'Car Ad 68', '47911.00', 1993, 117653, 'Used', 'Voluptatibus et possimus consectetur sunt neque quo. Magni consequatur velit odit doloribus tenetur. Et enim in aut. Atque eligendi corrupti a consectetur minus. Ex aut nobis aut beatae assumenda quia.', '(479) 622-4682', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(82, 4, 18, 3, 2, 'Car Ad 69', '4175.00', 2018, 57399, 'Used', 'Praesentium consequatur voluptatibus explicabo est soluta eos nihil. Ullam doloremque enim nesciunt aperiam. Ipsum praesentium eaque nulla sed voluptas ex.', '862.614.9057', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(83, 4, 25, 1, 4, 'Car Ad 70', '23983.00', 1996, 234024, 'New', 'In non enim culpa quae qui iure aut. Sit sed qui facere atque illum sit quae eos. Sed natus odio voluptates eum est nobis totam.', '(929) 961-9197', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(84, 4, 33, 7, 1, 'Car Ad 71', '5265.00', 1999, 178772, 'New', 'Corporis ipsa dolore ea porro neque. Maxime sapiente officiis dolorem cumque sit qui quo. Harum assumenda et aspernatur sed culpa.', '360.481.0545', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(85, 4, 48, 4, 3, 'Car Ad 72', '49102.00', 1998, 49745, 'Used', 'In et quas facilis nihil. Iste in impedit incidunt. Deleniti qui et sunt optio. Tenetur nulla est sed nam eligendi ipsum.', '352.630.3684', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(86, 4, 9, 3, 3, 'Car Ad 73', '46137.00', 2019, 42152, 'Used', 'Libero ut id recusandae fuga culpa. Molestiae nesciunt atque mollitia aliquid asperiores. Qui ea quo libero eligendi. Nihil rerum ut fugiat.', '856.602.4516', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(87, 4, 33, 4, 3, 'Car Ad 74', '36232.00', 2022, 19352, 'Used', 'Tempore fugit nisi minus fugit ut porro qui. Ut sit inventore consequatur ut repellat eligendi. Nihil ut autem vel sed eaque. Quibusdam numquam omnis repellat enim non dolorum.', '(726) 990-6561', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(88, 4, 39, 6, 4, 'Car Ad 75', '17508.00', 2013, 179107, 'New', 'Modi aut mollitia maiores sunt quo voluptas sed tenetur. Perferendis nihil est sint animi fuga. Ut excepturi nam distinctio eos voluptatem nemo quis.', '+1-743-879-6367', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(89, 4, 11, 9, 4, 'Car Ad 76', '32258.00', 1992, 109431, 'New', 'Et itaque dignissimos quaerat impedit. Aut omnis voluptatibus nesciunt et. Dolores tempore perspiciatis qui quia non quia. Et qui nam rerum earum et vel.', '479-777-3028', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(90, 4, 15, 4, 1, 'Car Ad 77', '48380.00', 2009, 26639, 'Used', 'Fugit cupiditate ex cumque perspiciatis voluptatem non ut. Quia iure sed non temporibus nostrum laborum distinctio vitae. Repellendus veniam voluptas officia. Qui dolorem assumenda necessitatibus cum voluptates voluptatem accusantium quas.', '+1-248-893-5560', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(91, 4, 21, 5, 4, 'Car Ad 78', '37532.00', 1993, 215598, 'Used', 'Non perspiciatis praesentium quos ipsam illum aut. Aut ipsum rerum quaerat nihil. Dignissimos illo officiis exercitationem sit. Rerum consequatur voluptatem distinctio dignissimos unde aut. Delectus architecto et corporis voluptatem.', '1-854-784-8748', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(92, 4, 1, 1, 3, 'Car Ad 79', '41433.00', 2013, 119493, 'Used', 'Dolor rerum sit similique vero provident aut aut. Temporibus occaecati ut ut dolor rem vel. Vel nulla facilis labore aut quod cum ab facilis. Aut repellat itaque nesciunt nulla ducimus.', '559.759.8206', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(93, 4, 1, 9, 4, 'Car Ad 80', '8499.00', 2011, 234954, 'Used', 'Commodi aut itaque deleniti enim. Consequatur explicabo non et aperiam modi quis. Et deserunt exercitationem dolor enim at possimus. Nulla dolorem soluta veniam ut ipsum nam.', '281-279-3890', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(94, 4, 19, 3, 3, 'Car Ad 81', '39094.00', 1990, 128184, 'Used', 'Tempore et autem tempore non. Commodi ea nesciunt reiciendis ut. Illo excepturi et necessitatibus et et quos. Quis atque aut voluptas quos fuga itaque voluptas dolor.', '(680) 637-9930', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(95, 4, 13, 8, 2, 'Car Ad 82', '2046.00', 2021, 183960, 'New', 'Eum occaecati alias et rerum. Ipsam voluptate natus qui pariatur delectus. Autem impedit recusandae consequuntur eveniet. Voluptatem est omnis quaerat aut.', '+1-804-362-9097', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(96, 4, 35, 5, 1, 'Car Ad 83', '14080.00', 2013, 248261, 'Used', 'Dolore nemo et error suscipit tempore animi aliquid. Voluptates sunt molestiae fugit quia minus dolor. Ut aut est libero dolores. Officia alias facilis a perferendis dignissimos.', '619.805.8008', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(97, 4, 5, 7, 2, 'Car Ad 84', '31590.00', 1995, 49104, 'New', 'Saepe occaecati id ipsa est et. Ut sit placeat fugit enim. Atque dolores sequi quod neque quam. Laborum aut perspiciatis molestias autem omnis aut alias autem.', '1-505-941-0600', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(98, 4, 41, 8, 4, 'Car Ad 85', '36701.00', 1990, 197495, 'New', 'Quis animi esse consequatur tempore qui. Est consequatur ipsum et. Inventore autem aut voluptates saepe aliquam. Voluptatem vero deserunt qui soluta et non.', '312-755-4575', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(99, 4, 13, 5, 2, 'Car Ad 86', '38829.00', 2023, 197468, 'Used', 'Accusamus deleniti perspiciatis consequatur ratione pariatur velit fugiat fugiat. Tempore tenetur necessitatibus maiores minus ut. Dolor et ratione perferendis vero. Molestiae animi aut omnis est est.', '1-386-757-6583', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(100, 4, 23, 1, 1, 'Car Ad 87', '19262.00', 2005, 45036, 'Used', 'Asperiores voluptatibus nemo quasi nulla quia tenetur quis. Qui eos accusamus et perferendis aspernatur. Aut ex vero harum velit aperiam.', '+1.689.538.7708', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(101, 4, 47, 1, 3, 'Car Ad 88', '46142.00', 2009, 110491, 'New', 'Tempora quis aperiam temporibus et. Eum et quis occaecati sit quia. Repudiandae et dicta sed eum sint explicabo.', '+1-330-996-1702', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(102, 4, 3, 1, 4, 'Car Ad 89', '43975.00', 2007, 87638, 'Used', 'Tenetur ea sapiente debitis explicabo eos reiciendis. Magnam iste eaque quisquam fuga qui incidunt aut. Excepturi ipsa incidunt similique quaerat aut aut. Sed aspernatur et accusamus.', '(562) 832-8095', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(103, 4, 30, 7, 1, 'Car Ad 90', '13122.00', 2014, 122387, 'New', 'Quasi qui quas esse perferendis at. Ratione ut veniam vel sit nulla sint. Atque quam voluptas rerum fuga quas tenetur commodi. Architecto harum quod et sint quas quod ex.', '213-939-8246', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(104, 4, 43, 9, 4, 'Car Ad 91', '39832.00', 2006, 36373, 'Used', 'Corporis totam voluptas architecto. Aut architecto sint et eveniet. Nostrum totam cum atque recusandae. Eligendi nostrum perspiciatis maxime et earum explicabo.', '+1-562-595-2592', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(105, 4, 20, 7, 1, 'Car Ad 92', '42217.00', 2006, 174666, 'Used', 'Suscipit vero rerum voluptas dolores qui ut eaque. Qui rerum corporis sunt. Dignissimos fuga animi cupiditate non reprehenderit autem optio voluptas.', '1-458-614-8995', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(106, 4, 13, 6, 2, 'Car Ad 93', '46141.00', 1998, 95034, 'Used', 'Qui expedita eaque commodi sed expedita sint aut. Quisquam neque officiis et amet. Voluptatem animi vero quisquam sint iusto enim a.', '+1.313.814.5387', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(107, 4, 43, 4, 1, 'Car Ad 94', '49077.00', 1996, 103859, 'Used', 'Consequuntur rerum consequatur ut quas placeat deleniti. Et iusto provident qui vitae temporibus voluptatem expedita. Consequatur ipsa voluptas officiis eum.', '+17572645123', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(108, 4, 4, 3, 4, 'Car Ad 95', '11700.00', 2003, 238504, 'New', 'Dolorem et rem quia temporibus laudantium. Qui ex velit veritatis. Quis eos molestiae ut.', '+1 (445) 391-4986', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(109, 4, 30, 2, 1, 'Car Ad 96', '7617.00', 2019, 216895, 'Used', 'Et at deserunt quo architecto voluptatibus praesentium sint sapiente. Repellat molestias eaque et recusandae nulla. Et pariatur corporis ut impedit.', '303.520.1741', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(110, 4, 28, 8, 3, 'Car Ad 97', '26386.00', 2009, 23942, 'Used', 'Magni qui cumque animi ipsam. Repellat dicta ab et et nobis quia. Minima aperiam excepturi ullam omnis fuga nobis nesciunt magni. Qui voluptatum mollitia qui est et ratione itaque.', '+1 (786) 831-1954', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(111, 4, 25, 9, 4, 'Car Ad 98', '24309.00', 1995, 160901, 'New', 'Quas quaerat omnis et doloribus dolores possimus atque. Quis qui dicta voluptatibus asperiores nihil. Et tenetur omnis adipisci voluptatem adipisci asperiores. Magnam quia ut ea nihil corporis at eius voluptates.', '1-480-699-7781', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(112, 4, 17, 5, 3, 'Car Ad 99', '39522.00', 2021, 40478, 'Used', 'Et et repudiandae hic iste voluptatem rerum. Dolor optio earum et. Unde quam voluptatem ut libero velit aut. Et recusandae debitis voluptates esse deleniti et facere.', '+1 (571) 656-9032', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(113, 4, 45, 3, 4, 'Car Ad 100', '48651.00', 1991, 111097, 'Used', 'Voluptas voluptate id nostrum ut quis amet quo. Id libero accusamus dolores nesciunt modi consequatur. Qui dolores velit dignissimos corrupti doloribus quia. Labore consectetur sunt repellendus aut dolorem ut unde.', '+15596522631', '2023-05-02 08:36:17', '2023-05-02 08:36:17', NULL),
(115, 4, 7, 8, 1, 'TITLE', '123123.00', 2018, 3123, 'used', 'DESCR', 'CONTACT', '2023-05-09 08:36:41', '2023-05-09 08:41:13', '[]'),
(117, 4, 6, 5, 2, 'title', '123123.00', 2009, 230, 'damaged', 'description', 'vartotojas@gmail.com', '2023-05-09 08:45:26', '2023-05-09 08:45:52', '[]'),
(118, 8, 2, 3, 2, 'Title', '12341234.00', 2016, 1234, 'used', 'DEsc', 'naudotojas@gmail.com', '2023-05-09 08:52:17', '2023-05-09 08:52:29', '[\"car_ads\\/rSmATbdpNnKXwzv45GAhj2DQKRTY9UcPJCknkIlS.jpg\"]'),
(120, 4, 4, 3, 2, 'title', '123.00', 2010, 23452345, 'used', 'desc', 'contact', '2023-05-09 09:04:19', '2023-05-23 06:44:21', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `car_brands`
--

CREATE TABLE `car_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_brands`
--

INSERT INTO `car_brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Acura', NULL, NULL),
(2, 'Alfa Romeo', NULL, NULL),
(3, 'Aston Martin', NULL, NULL),
(4, 'Audi', NULL, NULL),
(5, 'Bentley', NULL, NULL),
(6, 'BMW', NULL, NULL),
(7, 'Bugatti', NULL, NULL),
(8, 'Buick', NULL, NULL),
(9, 'Cadillac', NULL, NULL),
(10, 'Chevrolet', NULL, NULL),
(11, 'Chrysler', NULL, NULL),
(12, 'Citroen', NULL, NULL),
(13, 'Dodge', NULL, NULL),
(14, 'Ferrari', NULL, NULL),
(15, 'Fiat', NULL, NULL),
(16, 'Ford', NULL, NULL),
(17, 'GMC', NULL, NULL),
(18, 'Honda', NULL, NULL),
(19, 'Hyundai', NULL, NULL),
(20, 'Infiniti', NULL, NULL),
(21, 'Jaguar', NULL, NULL),
(22, 'Jeep', NULL, NULL),
(23, 'Kia', NULL, NULL),
(24, 'Lamborghini', NULL, NULL),
(25, 'Land Rover', NULL, NULL),
(26, 'Lexus', NULL, NULL),
(27, 'Lincoln', NULL, NULL),
(28, 'Lotus', NULL, NULL),
(29, 'Maserati', NULL, NULL),
(30, 'Mazda', NULL, NULL),
(31, 'McLaren', NULL, NULL),
(32, 'Mercedes-Benz', NULL, NULL),
(33, 'Mini', NULL, NULL),
(34, 'Mitsubishi', NULL, NULL),
(35, 'Nissan', NULL, NULL),
(36, 'Pagani', NULL, NULL),
(37, 'Peugeot', NULL, NULL),
(38, 'Porsche', NULL, NULL),
(39, 'Ram', NULL, NULL),
(40, 'Renault', NULL, NULL),
(41, 'Rolls-Royce', NULL, NULL),
(42, 'Saab', NULL, NULL),
(43, 'Subaru', NULL, NULL),
(44, 'Suzuki', NULL, NULL),
(45, 'Tesla', NULL, NULL),
(46, 'Toyota', NULL, NULL),
(47, 'Volkswagen', NULL, NULL),
(48, 'Volvo', NULL, NULL),
(50, 'XXXXX', '2023-05-09 09:05:23', '2023-05-09 09:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `car_types`
--

CREATE TABLE `car_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_types`
--

INSERT INTO `car_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sedan', NULL, NULL),
(2, 'SUV', NULL, NULL),
(3, 'Crossover', NULL, NULL),
(4, 'Coupe', NULL, NULL),
(5, 'Hatchback', NULL, NULL),
(6, 'Convertible', NULL, NULL),
(7, 'Pickup Truck', NULL, NULL),
(8, 'Van', NULL, NULL),
(9, 'Wagon', NULL, NULL);

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
-- Table structure for table `fuel_types`
--

CREATE TABLE `fuel_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fuel_types`
--

INSERT INTO `fuel_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gasoline', NULL, NULL),
(2, 'Diesel', NULL, NULL),
(3, 'Electric', NULL, NULL),
(4, 'Hybrid', NULL, NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_11_185746_create_sessions_table', 1),
(7, '2023_03_11_192454_create_car_brands_table', 2),
(8, '2023_03_11_192502_create_car_types_table', 2),
(9, '2023_03_11_192524_create_fuel_types_table', 2),
(10, '2023_03_11_192739_create_car_ads_table', 2),
(11, '2023_03_19_193428_create_permission_tables', 3),
(12, '2023_03_19_193714_set_permission_foreign', 4),
(13, '2023_03_25_171338_add_contacts_to_users_table', 5),
(14, '2023_05_07_152030_add_image_field_carads', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-03-19 17:49:03', '2023-03-19 17:49:03'),
(2, 'user', 'web', '2023-03-19 17:49:10', '2023-03-19 17:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('35Q7kdVVnhoDsa7YdHb987WrfqXRI4rXMw7l3wue', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY3hKQ3d6dUxGQzhKSktFVm1Xb0lmYXNBSWtNZU5yUkEwaTVVQmpEaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9mdWVsdHlwZXMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O3M6MTI6InNob3dfZmlsdGVycyI7YjoxO30=', 1683634000),
('LwYABeaPIWTOOYVUmHebrc1JFyqsFBScvA9gTIRp', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDlFWG5FV09pVzZ0dlNFa3d0cDVCSkJ3Q0xia3NxZXNNbVJHZ2E3MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jYXJhZHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1684835073);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contacts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `contacts`) VALUES
(1, 'Povilas', 'povilas.gri@gmail.com', NULL, '$2y$10$PNg4BRrEfkmof7VpcvOcSuQeBD8tAtlP7vJ8XvSO9GgvIRSlSCgnC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 17:02:54', '2023-03-26 18:53:08', '+37067998713'),
(2, 'Test', 'Test@gmail.com', NULL, '$2y$10$ViDUeDW2N9bBn7XiJnDhculTtG2XoLRdtYUHTWbwuwe4vFivNn6re', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:09:33', '2023-03-19 18:09:33', NULL),
(3, 'Test1', 'Test1@gmail.com', NULL, '$2y$10$vdZ.vRKVmCzjEEnD78zvnelRN140SYjqphPJOIxWaOhEHQkFIJu..', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:10:35', '2023-03-19 18:10:35', NULL),
(4, 'admin', 'admin@admin.com', NULL, '$2y$10$r.JB4.qs0mMRrJd2bblJVO.Y5B0/0RuQqLTGmYRt3g9fbVBPx8C8K', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 11:45:17', '2023-03-24 11:45:17', NULL),
(5, 'Arnas', 'arnas@arnas.com', NULL, '$2y$10$1Qvqj8F1.ZJheElGndZguO2N0f8NTmOMuBrhZ1i/3E2DDxCRnhnO6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 10:32:20', '2023-03-26 10:32:20', NULL),
(6, 'vartotojas', 'vartotojas@gmail.com', NULL, '$2y$10$daHN0l29og0ntoBXznFlcOR97xEsxNDZaUziG8DXDvhMbbQ4JGmYm', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-28 08:29:50', '2023-03-28 08:29:50', NULL),
(7, 'user', 'user@user.com', NULL, '$2y$10$JES9quPv9H5Q2FIcbzYzyOroNveyNmIrzbQ7POZ9arD/wM.fzNRCW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-28 09:21:44', '2023-03-28 09:24:23', '8623914023'),
(8, 'naudotojas', 'naudotojas@gmail.com', NULL, '$2y$10$IaZytVwMDVHmIM8Apjych.lwxcbVfSfpjoxAmnxjiztc.zmuOG46m', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-09 08:51:42', '2023-05-09 08:51:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `model_type`, `user_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_ads`
--
ALTER TABLE `car_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_ads_user_id_foreign` (`user_id`),
  ADD KEY `car_ads_car_brand_id_foreign` (`car_brand_id`),
  ADD KEY `car_ads_car_type_id_foreign` (`car_type_id`),
  ADD KEY `car_ads_fuel_type_id_foreign` (`fuel_type_id`);

--
-- Indexes for table `car_brands`
--
ALTER TABLE `car_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_types`
--
ALTER TABLE `car_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fuel_types`
--
ALTER TABLE `fuel_types`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`user_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`user_id`,`model_type`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`user_id`,`model_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_ads`
--
ALTER TABLE `car_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `car_brands`
--
ALTER TABLE `car_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `car_types`
--
ALTER TABLE `car_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuel_types`
--
ALTER TABLE `fuel_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_ads`
--
ALTER TABLE `car_ads`
  ADD CONSTRAINT `car_ads_car_brand_id_foreign` FOREIGN KEY (`car_brand_id`) REFERENCES `car_brands` (`id`),
  ADD CONSTRAINT `car_ads_car_type_id_foreign` FOREIGN KEY (`car_type_id`) REFERENCES `car_types` (`id`),
  ADD CONSTRAINT `car_ads_fuel_type_id_foreign` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`),
  ADD CONSTRAINT `car_ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
