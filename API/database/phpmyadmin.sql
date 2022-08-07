-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2022 at 05:11 PM
-- Server version: 8.0.28
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int NOT NULL,
  `street` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `zipCode` varchar(55) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `id` bigint NOT NULL,
  `cuisine_name` varchar(411) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`id`, `cuisine_name`) VALUES
(1, 'South Indian'),
(2, 'Junk Food'),
(3, 'Punjabi'),
(4, 'North Indian'),
(5, 'Italian');

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"phpmyadmin\",\"table\":\"product\"},{\"db\":\"foodbox_richa\",\"table\":\"address\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'foodbox_richa', 'product', '{\"sorted_col\":\"`product`.`date_created`  ASC\"}', '2021-09-17 09:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-07 17:01:10', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `name` varchar(111) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` decimal(55,0) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `cuisine_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image_url`, `date_created`, `last_updated`, `cuisine_id`) VALUES
(1, 'Dosa', 'Dosa is the ever-popular South Indian breakfast of crispy crepes made with fermented rice and lentil batter', '60', 'https://www.chefspencil.com/wp-content/uploads/Dosa-1.jpg.webp', '2022-08-07 00:00:00.000000', '2022-08-07 22:32:08.000000', 1),
(2, 'Idli', 'Idli or idly is a type of savory rice cake, originating from the Indian subcontinent, popular as a breakfast food in Southern India and in Sri Lanka. The cakes are made by steaming a batter consisting of fermented black lentils and rice.', '45', 'https://www.chefspencil.com/wp-content/uploads/Idli.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 1),
(4, 'Vada', 'Vada is a category of savory fried snacks from India. Different types of vadas can be described as fritters, cutlets, donuts, or dumplings. Alternative names for this food include wada, vade, vadai, wadeh, and bara.', '50', 'https://www.chefspencil.com/wp-content/uploads/Vada.jpg.webp', '2022-08-07 00:00:00.000000', '2022-08-07 22:32:08.000000', 1),
(5, 'Appam', 'Appam is a type of pancake, originating from South India, made with fermented rice batter and coconut milk, common in Kerala, Sri Lanka, and Tamil Nadu. It is most frequently eaten for breakfast or dinner. Plain appam or vella appam are bowl-shaped thin pancakes made from fermented rice flour.', '50', 'https://www.chefspencil.com/wp-content/uploads/Appam.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 1),
(6, 'Puttu', 'Puttu is a breakfast dish eaten in the South Indian states of Kerala, Tamil Nadu, and parts of Karnataka, as well as in Sri Lanka. Puttu means “portioned” in Tamil and Malayalam. It is a dish made of steamed cylinders of ground rice layered with coconut shavings, sometimes with a sweet or savory filling.', '65', 'https://www.chefspencil.com/wp-content/uploads/Puttu.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 1),
(7, 'Pongal', 'Pongal, or huggi, is a popular South Indian rice dish. In Tamil “pongal” means “to boil” or “bubbling up”. In Telugu and Kannada, pongali is a dish of rice mixed with boiled milk and sugar. Huggi is derived from the Old Kannada word Puggi meaning “bubbled up or ballooned”.', '90', 'https://www.chefspencil.com/wp-content/uploads/Pongal.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 1),
(8, 'Malabar Parota', 'Parotta or Porotta (Parathas) is a subcontinental layered flatbread made from maida or atta, alternatively known as a flaky ribbon pancake. It is very common in Kerala and Tamil Nadu and is widely available in other states like Karnataka, Maharashtra, and countries like Malaysia, the United Arab Emirates, and Sri Lanka.', '55', 'https://www.chefspencil.com/wp-content/uploads/Parotta.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 1),
(9, 'Coconut Rice', 'In India, coconut rice is famous in the southern regions. Coconut rice is usually made from short-grain rice with mild coconut flavors acquired from coconut milk and is commonly served with curries. It can also be made with coconut flakes (or grated or desiccated/dry coconut).', '120', 'https://www.chefspencil.com/wp-content/uploads/Coconut-Rice.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 1),
(10, 'Sambar', 'Each south Indian state has its own sambar and takes pride in the diverse variety available in the country. It can be consumed as an accompaniment for all three meals of the day, making it one of the most versatile curries out there.', '70', 'https://www.chefspencil.com/wp-content/uploads/Sambar.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 1),
(11, 'Palkatti Chettinadu', 'The paal-katti chettinad curry recipe is a paneer gravy recipe made in a Tamil Nadu-Chettinad style. It is a recipe that originated from the traditional chettinad-style curry. Bursting with flavor, this dish is a must-try. Serve along with chapathis for your next meal.', '80', 'https://www.chefspencil.com/wp-content/uploads/Palkatti-Chettinadu.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 1),
(12, 'Poha', 'Poha, also known as pauwa, chira, or aval, among many other names, is flattened rice originating from the Indian subcontinent. Rice is parboiled before flattening so that it can be consumed with very little to no cooking.', '54', 'https://www.chefspencil.com/wp-content/uploads/Poha.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 4),
(13, 'Chole Bhature', 'This dish is best enjoyed on an empty stomach. Rich, spicy and heavy, this is one of the most popular Punjabi dishes and is a must-try dish in Delhi. Don’t be surprised if you find it on the breakfast menu of restaurants across the capital.', '150', 'https://www.chefspencil.com/wp-content/uploads/Chole-Bhature.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 4),
(14, 'Dal Makhani', 'One of the most popular and famous lentil-based curries from the Indian subcontinent hails from the north and is famous in the capital city of Delhi. It is made using a combination of black lentils (urad dal) and red kidney beans (rajma). The lentils are soaked over night and then cooked in a rich tomato-based sauce or gravy spiced with garam masala, coriander seeds, turmeric, and chili powder.', '200', 'https://www.chefspencil.com/wp-content/uploads/Dal-Makhani.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 4),
(15, 'Chicken Vindaloo Curry', 'This is a mild and sweetly-spiced recipe for chicken vindaloo curry. Contrary to current belief, curries do not have to be hot and fiery. In fact, they never started out that way in India. Creating the curry paste is the most important part of this dish, so don\'t skimp on the ingredients.', '250', 'https://www.thespruceeats.com/thmb/F8XL5PEpY4vE38-MEe8LDuclmtw=/900x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/authentic-chicken-vindaloo-recipe-468712017-step-hero_1-57c6cc32841d4726b5f2eedd298b206d.jpg', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 5),
(16, 'Paneer Butter Masala', 'Paneer Butter Masala is one of India’s most popular paneer gravy recipe.', '240', 'https://www.vegrecipesofindia.com/wp-content/uploads/2020/01/paneer-butter-masala-1.jpg', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 4),
(17, 'Naan', 'Naan, a puffy flatbread, goes with just about everything, including many popular dishes like tandoori chicken and all kinds of kebabs. While naan traditionally bakes in a tandoor or earthen oven, they work just as well in your own oven. The ingredient list includes yeast, flour, sugar, and water, as well as yogurt and ghee.', '80', 'https://www.thespruceeats.com/thmb/6P7g2QY-3QHWs6a58LrJ2tbbw2w=/1391x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/naan-leavened-indian-flatbread-1957348-final-08-116a2e523f6e4ee693b1a9655784d9b9.jpg', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 4),
(18, 'Paneer Lababdar', 'Lababdar means a strong desire for something and complete surrender to it. It is a term attached to this dish to signify complete surrender of one’s taste buds to it.', '290', 'https://www.chefspencil.com/wp-content/uploads/Paneer-Lababdar.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 4),
(19, 'Vegan Basmati Rice', 'Fragrant, tender, and the perfect accompaniment to just about every main, all Indian feasts need basmati rice. Try this restaurant-style vegan recipe that results in a wonderfully spiced grain.', '150', 'https://www.thespruceeats.com/thmb/RLpF45cRVBDZAUzr83bTUg6L914=/1633x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/easy-vegan-indian-basmati-rice-recipe-3378479-hero-01-35f4f27d496c41fea81589a7dce17eb1.jpg', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 4),
(20, 'Amritsari Kulcha (Leavened Flatbread)', 'Warm, crispy, and flaky on the outside and delicate on the inside, this is the perfect way to start the day. they are best hot out of the tandoor and served with mildly spiced white chickpeas cooked in a savory onion-based curry, mint, and coriander chutney and butter.', '150', 'https://www.chefspencil.com/wp-content/uploads/Amritsari-Kulcha.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 3),
(21, 'Chole Batura – Poori Halwa (Deep Fried Flatbread)', 'This is a common breakfast recipe available around the country but is a specialty in Punjab and is served with a variety of condiments and accompaniments. Sometimes it is served with a semolina halwa or sweet pudding, or accompanied with white chickpea curry or spiced mashed potato.', '110', 'https://www.chefspencil.com/wp-content/uploads/Poori-Halwa.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 3),
(22, 'Kesar Lassi', 'Lassi is a popular beverage famous around Punjab. It is a yogurt-based milkshake, seasoned with sweet spices such as cardamom, nuts, dry fruit, and even fruit pulp. The yogurt is first drained of whey and then churned till it’s smooth and light in consistency and has thickened naturally.', '60', 'https://www.chefspencil.com/wp-content/uploads/Kesar-Lassi.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 3),
(23, 'Punjabi Chole Masala', 'This is also known as pindi chole, due to its significance in the Rawalpindi region of Pakistan. It is a staple of Punjabi cuisine and is consumed throughout the year, sometimes for all three meals of the day.', '170', 'https://www.chefspencil.com/wp-content/uploads/Punjabi-Chole-Masala.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 3),
(24, 'Aam Papad', 'Aam refers to mango, papad refers to wafer or bar. In this case, aam papad is a traditional snack or sweet condiment made in the northern Indian regions using mango pulp, which is blended with sugar, salt, spices and then sun-dried, giving it an almost elastic and chewy texture.', '100', 'https://www.chefspencil.com/wp-content/uploads/Aam-Papad-1.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 3),
(25, 'Bhel Puri', 'One of the most famous chaats or roadside snacks, most Indians will have childhood memories of munching on this savory puffed rice salad of grated carrot, cucumber, sweet corn, and bujiya sev (deep-fried gram flour vermicelli). It is seasoned with a generous helping of lime juice, black salt, chat masala, dry mango powder, and chili powder.', '60', 'https://www.chefspencil.com/wp-content/uploads/BhelPuri-1.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 2),
(26, 'Aloo Tikki', 'A crispy outer layer shallow fried to perfection, a moist soft and savory inner filling with hints of sourness from lime and dry mango, heat from green chilis, and the perfect amount of acidity from red onions.', '50', 'https://www.chefspencil.com/wp-content/uploads/Aloo-Tikki.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 2),
(27, 'Vada Pav (Mumbai Burger)', 'No Mumbaiker’s day is complete without sinking their tastebuds into one of the many famous vada pavs across the city; a quintessential monsoon snack, it is also called the Mumbai burger.', '60', 'https://www.chefspencil.com/wp-content/uploads/Vada-Pav.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 2),
(29, 'Bombay Sandwich', 'This humble vegetarian sandwich has made inroads into various cities across the country owing to the simple recipe which has a wide appeal across all audiences in the nation.', '50', 'https://www.chefspencil.com/wp-content/uploads/Bombay-Sandwich-1.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 2),
(31, 'Pizza', 'Though a slab of flat bread served with oil and spices was around long before the unification Italy, thereâ€™s perhaps no dish that is as common or as representative of the country as the humble pizza. Easy, cheap, and filling, pizza has long been a common snack or meal, especially in Naples where tomato sauce was first added. When the Italian Queen Margherita came through the bustling city on a tour of her kingdom in 1889 she asked to try this dish that she saw so many of her subjects eating. A local entrepreneur served her the now legendary combination of tomato sauce, mozzarella, and basil, creating (or more likely, branding) the Margherita pizza. Whether by coincidence or design, the Margherita also displays the colors of the Italian flag.', '400', 'https://www.walksofitaly.com/blog/wp-content/uploads/2011/05/DSC_0195-768x510.jpg', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 5),
(32, 'Lasagna', 'Lasagna is a wide, flat pasta noodle, usually baked in layers in the oven. Like most Italian dishes, its origins are hotly contested, but we can at least say thatâ€™s its stronghold is in the region of Emilia-Romagna, where it transformed from a poor manâ€™s food to a rich meal filled with the ragÃ¹, or meat sauce.', '300', 'https://www.walksofitaly.com/blog/wp-content/uploads/2016/07/11735294004_b68f0ab3ef_k-768x512.jpg', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 5),
(33, 'Ossobuco', 'The world-famous ossobuco alla milanese is a bone-in veal shank, cooked low and slow until meltingly tender in a broth of meat stock, white wine, and veggies. Traditionally, itâ€™s accompanied by a gremolata (lemon zest, garlic, and parsley) but thatâ€™s optional. Although the Milanese like to claim this meaty masterpiece there are as many versions of it as there are nonnas in Lombardy, which is known for hearty, often rustic dishes that are good at coating the ribs and staving off the winter chill. Despite the popularity of ossobuco (which literally means â€˜hollow boneâ€™), itâ€™s not always common to see it on restaurant menus because it needs about three hours of cooking time. If you do get a chance to eat it in a restaurant or home, or even to cook it yourself, you should jump at the opportunity. Itâ€™s usually accompanied by polenta or the next item on our list.', '240', 'https://www.walksofitaly.com/blog/wp-content/uploads/2014/05/Osso-Buco-768x515.jpg', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 5),
(34, 'Polpette', 'Polpette can be made of meat, fish, potatoes, rice or vegetables and can be prepared stewed, baked or fried.', '300', 'http://yourguidetoitaly.com/slowitaly/wp-content/uploads/2018/03/polpette-c.jpg', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 5),
(35, 'Palak Paneer', 'Palak paneer is a vegetarian dish, consisting of paneer (a type of cottage cheese) in a thick paste made from puréed spinach, called palak in Hindi, Marathi, Gujarati, and other Indian languages.', '100', 'https://www.chefspencil.com/wp-content/uploads/Palak-Paneer.jpg.webp', '2022-08-07 22:32:08.000000', '2022-08-07 22:32:08.000000', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  `username` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `phone` int DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `email`, `password`, `phone`, `street`, `city`, `zipcode`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'admin', 123, 'Pilani', 'jhunjhunu', '333023'),
(2, 0, 'admin2', 'admin2@admin.com', 'admin2', 123, 'Pilani', 'Jhunjhunu', '333023'),
(4, 0, 'richa', 'richa@gmail.com', '1234', 123, 'Udaipur Palace', 'Udaipur', '568956'),
(6, 0, 'tarun', 'tarun@gmail.com', '1234', 123, 'Marathahalli Road', 'Bangalore', '560037');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_id` (`cuisine_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
