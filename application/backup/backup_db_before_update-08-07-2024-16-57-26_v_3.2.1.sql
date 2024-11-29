#
# TABLE STRUCTURE FOR: about
#

DROP TABLE IF EXISTS `about`;

CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `nationality` varchar(200) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `about_me` text DEFAULT NULL,
  `video_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: about_content
#

DROP TABLE IF EXISTS `about_content`;

CREATE TABLE `about_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_id` int(11) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: addons_list
#

DROP TABLE IF EXISTS `addons_list`;

CREATE TABLE `addons_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `script_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `script_purchase_code` varchar(255) DEFAULT NULL,
  `license_name` varchar(255) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `active_key` varchar(255) DEFAULT NULL,
  `active_code` varchar(255) DEFAULT NULL,
  `license_code` varchar(255) DEFAULT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `active_date` datetime DEFAULT NULL,
  `activated_date` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_install` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: admin_config
#

DROP TABLE IF EXISTS `admin_config`;

CREATE TABLE `admin_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(200) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: admin_notification
#

DROP TABLE IF EXISTS `admin_notification`;

CREATE TABLE `admin_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `seen_status` int(11) NOT NULL DEFAULT 0,
  `is_admin_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `seen_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: admin_notification_list
#

DROP TABLE IF EXISTS `admin_notification_list`;

CREATE TABLE `admin_notification_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: admin_tutorial_list
#

DROP TABLE IF EXISTS `admin_tutorial_list`;

CREATE TABLE `admin_tutorial_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: affiliate_payout_list
#

DROP TABLE IF EXISTS `affiliate_payout_list`;

CREATE TABLE `affiliate_payout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `total_referel` int(11) DEFAULT NULL,
  `balance` varchar(20) DEFAULT NULL,
  `ids` longtext DEFAULT NULL,
  `referel_type` varchar(50) DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `complete_date` datetime DEFAULT NULL,
  `payout_month` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_payment` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: allergens
#

DROP TABLE IF EXISTS `allergens`;

CREATE TABLE `allergens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `images` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT 'english',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `allergens` (`id`, `user_id`, `name`, `images`, `thumb`, `status`, `created_at`, `language`) VALUES (1, 3, 'Vegan', 'uploads/big/17119a2cbef4a89830e6cfefa3552c04.png', 'uploads/thumb/17119a2cbef4a89830e6cfefa3552c04.png', 1, '2024-06-06 15:46:24', 'de');
INSERT INTO `allergens` (`id`, `user_id`, `name`, `images`, `thumb`, `status`, `created_at`, `language`) VALUES (2, 3, 'Vegetarisch', 'uploads/big/8377de836295714a193812a0731634fb.png', 'uploads/thumb/8377de836295714a193812a0731634fb.png', 1, '2024-06-06 15:47:53', 'de');


#
# TABLE STRUCTURE FOR: call_waiter_list
#

DROP TABLE IF EXISTS `call_waiter_list`;

CREATE TABLE `call_waiter_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `table_no` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_ring` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: chat_list
#

DROP TABLE IF EXISTS `chat_list`;

CREATE TABLE `chat_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL DEFAULT 0,
  `receiver_id` int(11) NOT NULL DEFAULT 0,
  `message` text DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `status` enum('unseen','seen') NOT NULL DEFAULT 'unseen',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: country
#

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `dial_code` varchar(5) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (1, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (2, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (3, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (4, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (5, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (6, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (7, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (8, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (9, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (10, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (11, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (12, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (13, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (14, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (15, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '৳', 'BDT');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (16, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (17, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (18, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (19, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (20, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (21, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (22, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (23, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (24, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (25, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (26, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (27, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (28, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (29, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (30, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (31, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (32, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (33, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (34, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (35, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (36, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (37, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (38, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (39, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (40, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (41, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (42, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (43, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (44, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (45, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (46, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (47, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (48, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (49, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (50, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (51, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (52, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (53, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (54, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (55, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (56, 'France', 'FR', '+33', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (57, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (58, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (59, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (60, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (61, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (62, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (63, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (64, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (66, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (67, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (68, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (69, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (70, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (71, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (72, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (73, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (74, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (75, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (76, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (77, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (78, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (79, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (80, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (81, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (82, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (83, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (84, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (85, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (86, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (87, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (88, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (89, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (90, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (91, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (92, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (93, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (94, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '₸', 'KZT');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (95, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (96, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (97, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (98, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (99, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (100, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (101, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (102, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (103, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (104, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (105, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (106, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (107, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (108, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (109, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (110, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (111, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (112, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (113, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (114, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (115, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (116, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (117, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (118, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (119, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (120, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (121, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (122, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (123, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (124, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (125, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (126, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (127, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (128, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (129, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (130, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (131, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (132, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (133, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (134, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (135, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (136, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (137, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (138, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (139, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (140, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (141, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (142, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (143, 'Palau', 'PW', '+680', 'Palauan dollar', '$', '');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (144, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (145, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (146, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (147, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (148, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (149, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (150, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (151, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (152, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (153, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (154, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (155, 'Singapore', 'SG', '+65', 'Brunei dollar', '$', 'BND');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (156, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (157, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (158, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (159, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (160, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (161, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (162, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (163, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (164, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (165, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (166, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (167, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (168, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', '₸', 'TJS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (169, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (170, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (171, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (172, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (173, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (174, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (175, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (176, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (177, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (178, 'United States', 'US', '+1', 'United States dollar', '$', 'USD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (179, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (180, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (181, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (182, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (183, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (184, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (185, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (186, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (187, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (188, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP');


#
# TABLE STRUCTURE FOR: coupon_list
#

DROP TABLE IF EXISTS `coupon_list`;

CREATE TABLE `coupon_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `total_limit` int(11) NOT NULL,
  `total_used` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_menu` int(2) NOT NULL DEFAULT 1,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: currencies
#

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (1, 'Argentinian Peso', 'ARS', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (2, 'Australian Dollar', 'AUD', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (3, 'Brazilian Real', 'BRL', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (4, 'Canadian Dollar', 'CAD', ' &#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (5, 'Swiss Franc', 'CHF', '&#67', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (6, 'Czech Koruna', 'CZK', '&#75;&#269;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (7, 'Danish Krone', 'DKK', '&#107;&#114;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (8, 'Euro ', 'EUR', '&#8364;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (9, 'British Pound', 'GBP', ' &#163;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (10, 'Hong Kong Dollar', 'HKD', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (11, 'Hungarian Forint', 'HUF', '&#70;&#116;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (12, 'Indian Rupee', 'INR', '&#8377;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (13, 'Israeli New Shekel', 'ILS', ' &#8362;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (14, 'Japanese Yen', 'JPY', ' &#165;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (15, 'Mexican Peso', 'MXN', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (16, 'Malaysian Ringgit ', 'MYR', '&#82;&#77;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (17, 'Norwegian Krone', 'NOK', '  &#107;&#114;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (18, 'New Zealand Dollar', 'NZD', ' &#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (19, 'Philippine Peso', 'PHP', '&#8369;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (20, 'Polish Zloty', 'PLN', '&#122;&#322;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (21, 'Russian Ruble', 'RUB', '&#1088;&#1091;&#1073;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (22, 'Swedish Krona ', 'SEK', ' &#107;&#114;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (23, 'Singapore Dollar', 'SGD', ' &#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (24, 'Thai Baht', 'THB', '&#3647;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (25, 'Taiwan New Dollar', 'TWD', '&#78;&#84;&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (26, 'United States Dollar', 'USD', ' &#36;', '');


#
# TABLE STRUCTURE FOR: custom_domain_list
#

DROP TABLE IF EXISTS `custom_domain_list`;

CREATE TABLE `custom_domain_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` varchar(25) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_subdomain` int(11) NOT NULL DEFAULT 0,
  `is_domain` int(11) NOT NULL DEFAULT 0,
  `approved_date` datetime NOT NULL,
  `request_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_ready` int(11) NOT NULL DEFAULT 0,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `domain_type` varchar(255) NOT NULL,
  `comments` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: customer_list
#

DROP TABLE IF EXISTS `customer_list`;

CREATE TABLE `customer_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `is_membership` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `is_pos` int(11) NOT NULL DEFAULT 0,
  `login_method` varchar(50) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `photoUrl` varchar(200) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `gmap_link` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `question` longtext DEFAULT NULL,
  `old_id` varchar(20) DEFAULT NULL,
  `is_update` int(11) NOT NULL DEFAULT 0,
  `role` varchar(30) NOT NULL DEFAULT 'customer',
  `dial_code` varchar(20) DEFAULT NULL,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: data_queue
#

DROP TABLE IF EXISTS `data_queue`;

CREATE TABLE `data_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_user_id` int(11) NOT NULL DEFAULT 0,
  `new_user_id` int(11) NOT NULL DEFAULT 0,
  `old_shop_id` int(11) NOT NULL DEFAULT 0,
  `new_shop_id` int(11) NOT NULL DEFAULT 0,
  `action_id` int(11) NOT NULL DEFAULT 0,
  `action_role` varchar(255) NOT NULL DEFAULT 'shop',
  `table_name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` enum('pending','completed') DEFAULT 'pending',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: delivery_area_list
#

DROP TABLE IF EXISTS `delivery_area_list`;

CREATE TABLE `delivery_area_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `area` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `delivery_area_list` (`id`, `user_id`, `shop_id`, `area`, `cost`, `created_at`) VALUES (1, 2, 1, 'شيشلي', '75', '0000-00-00 00:00:00');
INSERT INTO `delivery_area_list` (`id`, `user_id`, `shop_id`, `area`, `cost`, `created_at`) VALUES (2, 2, 1, 'عثمان بي', '35', '0000-00-00 00:00:00');
INSERT INTO `delivery_area_list` (`id`, `user_id`, `shop_id`, `area`, `cost`, `created_at`) VALUES (3, 2, 1, 'تقسيم', '0', '0000-00-00 00:00:00');
INSERT INTO `delivery_area_list` (`id`, `user_id`, `shop_id`, `area`, `cost`, `created_at`) VALUES (4, 2, 1, 'قاسم باشا', '40', '0000-00-00 00:00:00');
INSERT INTO `delivery_area_list` (`id`, `user_id`, `shop_id`, `area`, `cost`, `created_at`) VALUES (5, 2, 1, 'اوك ميدان', '75', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: dine_in
#

DROP TABLE IF EXISTS `dine_in`;

CREATE TABLE `dine_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `table_no` int(11) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: email_template
#

DROP TABLE IF EXISTS `email_template`;

CREATE TABLE `email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `msg` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: expense_category_list
#

DROP TABLE IF EXISTS `expense_category_list`;

CREATE TABLE `expense_category_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: expense_list
#

DROP TABLE IF EXISTS `expense_list`;

CREATE TABLE `expense_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: extra_libraries
#

DROP TABLE IF EXISTS `extra_libraries`;

CREATE TABLE `extra_libraries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `extra_libraries` (`id`, `user_id`, `shop_id`, `name`, `price`, `status`, `language`) VALUES (1, 3, 2, 'Dönerfleisch Hähnchen', '2.20', '1', 'de');
INSERT INTO `extra_libraries` (`id`, `user_id`, `shop_id`, `name`, `price`, `status`, `language`) VALUES (2, 2, 1, 'Dönerfleisch Hähnchen', '2.20', '1', 'ar');


#
# TABLE STRUCTURE FOR: extra_title_list
#

DROP TABLE IF EXISTS `extra_title_list`;

CREATE TABLE `extra_title_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL,
  `is_required` int(2) NOT NULL DEFAULT 0,
  `is_single_select` int(2) NOT NULL DEFAULT 1,
  `orders` int(11) DEFAULT 0,
  `is_radio_btn` int(11) DEFAULT 1,
  `select_limit` int(11) NOT NULL DEFAULT 1,
  `select_max_limit` int(11) NOT NULL DEFAULT 1,
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `created_at` datetime DEFAULT NULL,
  `is_default` int(2) NOT NULL DEFAULT 0,
  `max_qty` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `extra_title_list` (`id`, `title`, `shop_id`, `user_id`, `item_id`, `is_required`, `is_single_select`, `orders`, `is_radio_btn`, `select_limit`, `select_max_limit`, `language`, `created_at`, `is_default`, `max_qty`) VALUES (1, 'Addons', 1, 0, 2, 1, 0, 1, 1, 1, 3, 'english', '2024-06-04 05:15:26', 1, 0);
INSERT INTO `extra_title_list` (`id`, `title`, `shop_id`, `user_id`, `item_id`, `is_required`, `is_single_select`, `orders`, `is_radio_btn`, `select_limit`, `select_max_limit`, `language`, `created_at`, `is_default`, `max_qty`) VALUES (2, 'Sizes', 1, 0, 2, 1, 1, 2, 1, 1, 1, 'english', '2024-06-04 05:15:26', 1, 0);
INSERT INTO `extra_title_list` (`id`, `title`, `shop_id`, `user_id`, `item_id`, `is_required`, `is_single_select`, `orders`, `is_radio_btn`, `select_limit`, `select_max_limit`, `language`, `created_at`, `is_default`, `max_qty`) VALUES (3, 'Addons', 2, 0, 266, 1, 0, 1, 1, 1, 3, 'english', '2024-06-06 14:12:14', 1, 0);
INSERT INTO `extra_title_list` (`id`, `title`, `shop_id`, `user_id`, `item_id`, `is_required`, `is_single_select`, `orders`, `is_radio_btn`, `select_limit`, `select_max_limit`, `language`, `created_at`, `is_default`, `max_qty`) VALUES (4, 'Sizes', 2, 0, 266, 1, 1, 2, 1, 1, 1, 'english', '2024-06-06 14:12:14', 1, 0);


#
# TABLE STRUCTURE FOR: faq
#

DROP TABLE IF EXISTS `faq`;

CREATE TABLE `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `faq` (`id`, `heading`, `title`, `details`, `status`, `created_at`) VALUES (1, '', 'How to create  Restaurant', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore repellat dicta officiis voluptates quas et enim facilis voluptatum esse cumque amet beatae assumenda, in, consequatur eos eius, eveniet temporibus asperiores?</p>', 1, '2021-02-25 16:16:51');
INSERT INTO `faq` (`id`, `heading`, `title`, `details`, `status`, `created_at`) VALUES (2, '', 'How to make payments', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore repellat dicta officiis voluptates quas et enim facilis voluptatum esse cumque amet beatae assumenda, in, consequatur eos eius, eveniet temporibus asperiores?</p>', 1, '2021-02-25 16:17:01');
INSERT INTO `faq` (`id`, `heading`, `title`, `details`, `status`, `created_at`) VALUES (3, '', 'How to subscribe', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore repellat dicta officiis voluptates quas et enim facilis voluptatum esse cumque amet beatae assumenda, in, consequatur eos eius, eveniet temporibus asperiores?</p>', 1, '2021-02-25 16:17:21');
INSERT INTO `faq` (`id`, `heading`, `title`, `details`, `status`, `created_at`) VALUES (4, NULL, 'How to create menu', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore repellat dicta<br></p>', 1, '2021-02-25 16:17:36');


#
# TABLE STRUCTURE FOR: features
#

DROP TABLE IF EXISTS `features`;

CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `features` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_features` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `is_header` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (1, 'Welcome Page', 'welcome', 1, 1, '2020-09-27 11:21:49', 1);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (2, 'Menu ', 'menu', 1, 1, '2020-09-27 11:24:28', 1);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (3, 'Packages', 'packages', 1, 1, '2020-09-28 10:51:50', 1);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (4, 'specialities', 'specialities', 1, 1, '2020-09-27 17:17:21', 1);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (5, 'Qr code', 'qr-code', 1, 1, '2020-09-27 11:26:03', 0);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (6, 'Whatsapp Order', 'whatsapp', 1, 1, '2020-09-27 11:26:19', 0);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (7, 'Online Order', 'order', 1, 1, '2020-09-27 13:31:06', 0);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (8, 'Reservation', 'reservation', 1, 1, '2020-09-27 13:31:06', 1);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (9, 'Contacts', 'contacts', 1, 0, '2020-09-27 13:31:06', 1);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (10, 'Digital Payment', 'online-payment', 1, 1, '2021-06-05 12:39:21', 0);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (11, 'OneSignal & PWA', 'pwa-push', 1, 1, '2022-09-08 23:04:31', 0);
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`, `is_header`) VALUES (13, 'Affiliate', 'affiliate', 1, 1, '2024-01-05 23:04:31', 0);


#
# TABLE STRUCTURE FOR: hotel_list
#

DROP TABLE IF EXISTS `hotel_list`;

CREATE TABLE `hotel_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `room_numbers` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: how_it_works
#

DROP TABLE IF EXISTS `how_it_works`;

CREATE TABLE `how_it_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `is_icon` int(11) NOT NULL DEFAULT 1,
  `images` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (1, 'Create Your Restaurant', 'Create a new restaurant with scanning QR code or With a package', '<i class=\"fa fa-bath\" aria-hidden=\"true\"></i>', 0, 'uploads/big/d6a67c8dc3f91184f4c2461ac554d5ef.png', 'uploads/thumb/d6a67c8dc3f91184f4c2461ac554d5ef.png', 1, '2021-02-25 13:41:14');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (2, 'Make Payment', 'After create your restaurant make a payment with PayPal, Stripe, Razorpay or Offline payment method', '<i class=\"fab fa-autoprefixer\"></i>', 1, 'uploads/big/112e1f4de3e7f5a7d39c9682b21b9913.png', 'uploads/thumb/112e1f4de3e7f5a7d39c9682b21b9913.png', 1, '2021-02-25 13:47:14');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (3, 'Create  a menu', 'Select menus from our restaurant and make order easily with booking or home delivery', '', 0, 'uploads/big/359cf0722719344d9721ed0d5f605a82.png', 'uploads/thumb/359cf0722719344d9721ed0d5f605a82.png', 1, '2021-02-25 15:36:48');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (4, 'Ordering via chat', 'After finalize create menu you can order via WhatsApp or can continue chat and confirm order', '<i class=\"fa fa-qrcode\" aria-hidden=\"true\"></i>', 1, 'uploads/big/73b481e4c9ee15d0e392d961600f36bf.png', 'uploads/thumb/73b481e4c9ee15d0e392d961600f36bf.png', 1, '2021-02-25 15:34:53');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (5, 'Track order', 'Track your order by scanning QR code or send order with WhatsApp or quick response', '<i class=\"fa fa-credit-card-alt\" aria-hidden=\"true\"></i>', 1, 'uploads/big/e9a406638047f4c604b613735e05be27.png', 'uploads/thumb/e9a406638047f4c604b613735e05be27.png', 1, '2021-02-25 15:32:38');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (6, 'Orders analytics', 'Get detailed report about your orders and earning with sales graph. Track your business grows', NULL, 1, 'uploads/big/00b9ebef97fe4be5f7a810d7197f01ca.png', 'uploads/thumb/00b9ebef97fe4be5f7a810d7197f01ca.png', 1, '2021-02-25 15:36:11');


#
# TABLE STRUCTURE FOR: item_category_list
#

DROP TABLE IF EXISTS `item_category_list`;

CREATE TABLE `item_category_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (3, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (4, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (5, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (6, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (7, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (8, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (9, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (10, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (11, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (12, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (13, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (14, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (15, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (16, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (17, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (18, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (19, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (20, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (21, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (22, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (23, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (24, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (25, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (26, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (27, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (28, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (29, 2, 1, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (32, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (33, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (34, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (35, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (36, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (37, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (38, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (39, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (40, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (41, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (42, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (43, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (44, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (45, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (46, 3, 2, 1, 0);
INSERT INTO `item_category_list` (`id`, `user_id`, `shop_id`, `status`, `is_default`) VALUES (47, 3, 2, 1, 0);


#
# TABLE STRUCTURE FOR: item_content
#

DROP TABLE IF EXISTS `item_content`;

CREATE TABLE `item_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `label` varchar(250) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: item_extras
#

DROP TABLE IF EXISTS `item_extras`;

CREATE TABLE `item_extras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ex_name` varchar(255) NOT NULL,
  `ex_price` double NOT NULL,
  `ex_id` int(11) NOT NULL DEFAULT 0,
  `extra_title_id` int(2) NOT NULL DEFAULT 0,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: item_list
#

DROP TABLE IF EXISTS `item_list`;

CREATE TABLE `item_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `uid` varchar(50) DEFAULT NULL,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (5, 2, 1, 1, '15273', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (6, 2, 1, 1, '14837', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (7, 2, 1, 1, '13690', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (8, 2, 1, 1, '14326', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (9, 2, 1, 1, '18425', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (10, 2, 1, 1, '15031', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (11, 2, 1, 1, '16291', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (12, 2, 1, 1, '19826', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (13, 2, 1, 1, '18625', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (14, 2, 1, 1, '13821', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (15, 2, 1, 1, '17516', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (16, 2, 1, 1, '17521', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (17, 2, 1, 1, '18239', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (18, 2, 1, 1, '10268', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (19, 2, 1, 1, '13541', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (20, 2, 1, 1, '15032', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (21, 2, 1, 1, '15971', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (22, 2, 1, 1, '11302', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (23, 2, 1, 1, '13562', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (24, 2, 1, 1, '16972', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (25, 2, 1, 1, '17261', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (26, 2, 1, 1, '17890', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (27, 2, 1, 1, '10348', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (28, 2, 1, 1, '14506', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (29, 2, 1, 1, '12451', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (30, 2, 1, 1, '13618', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (31, 2, 1, 1, '17913', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (32, 2, 1, 1, '14360', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (33, 2, 1, 1, '14296', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (34, 2, 1, 1, '13162', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (35, 2, 1, 1, '13192', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (36, 2, 1, 1, '10178', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (37, 2, 1, 1, '18597', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (38, 2, 1, 1, '13210', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (39, 2, 1, 1, '14308', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (40, 2, 1, 1, '19023', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (41, 2, 1, 1, '13908', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (42, 2, 1, 1, '19534', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (43, 2, 1, 1, '15187', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (44, 2, 1, 1, '13786', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (45, 2, 1, 1, '16792', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (46, 2, 1, 1, '19210', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (47, 2, 1, 1, '13089', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (48, 2, 1, 1, '13409', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (49, 2, 1, 1, '16017', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (50, 2, 1, 1, '10541', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (51, 2, 1, 1, '15869', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (52, 2, 1, 1, '13120', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (53, 2, 1, 1, '10581', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (54, 2, 1, 1, '14768', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (55, 2, 1, 1, '17546', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (56, 2, 1, 1, '17245', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (57, 2, 1, 1, '14752', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (58, 2, 1, 1, '16257', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (59, 2, 1, 1, '16830', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (60, 2, 1, 1, '14823', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (61, 2, 1, 1, '15094', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (62, 2, 1, 1, '11248', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (63, 2, 1, 1, '15973', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (64, 2, 1, 1, '15703', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (65, 2, 1, 1, '19682', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (66, 2, 1, 1, '17592', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (67, 2, 1, 1, '19257', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (68, 2, 1, 1, '14361', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (69, 2, 1, 1, '10372', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (70, 2, 1, 1, '13714', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (71, 2, 1, 1, '12615', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (72, 2, 1, 1, '10915', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (73, 2, 1, 1, '15601', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (74, 2, 1, 1, '19856', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (75, 2, 1, 1, '19301', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (76, 2, 1, 1, '15329', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (77, 2, 1, 1, '19078', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (78, 2, 1, 1, '17342', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (79, 2, 1, 1, '14758', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (80, 2, 1, 1, '17830', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (81, 2, 1, 1, '17180', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (82, 2, 1, 1, '11709', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (83, 2, 1, 1, '12437', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (84, 2, 1, 1, '17936', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (85, 2, 1, 1, '15381', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (86, 2, 1, 1, '14608', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (87, 2, 1, 1, '19681', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (88, 2, 1, 1, '15812', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (89, 2, 1, 1, '17814', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (90, 2, 1, 1, '10493', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (91, 2, 1, 1, '13605', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (92, 2, 1, 1, '14569', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (93, 2, 1, 1, '14058', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (94, 2, 1, 1, '16849', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (95, 2, 1, 1, '16534', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (96, 2, 1, 1, '10238', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (97, 2, 1, 1, '14837', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (98, 2, 1, 1, '14902', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (99, 2, 1, 1, '10248', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (100, 2, 1, 1, '17385', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (101, 2, 1, 1, '13917', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (102, 2, 1, 1, '19762', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (103, 2, 1, 1, '19753', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (104, 2, 1, 1, '13617', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (105, 2, 1, 1, '16217', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (106, 2, 1, 1, '17964', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (107, 2, 1, 1, '15602', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (108, 2, 1, 1, '14165', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (109, 2, 1, 1, '12853', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (110, 2, 1, 1, '10346', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (111, 2, 1, 1, '14013', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (112, 2, 1, 1, '10615', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (113, 2, 1, 1, '11465', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (114, 2, 1, 1, '10293', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (115, 2, 1, 1, '16803', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (116, 2, 1, 1, '19318', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (117, 2, 1, 1, '15719', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (118, 2, 1, 1, '17246', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (119, 2, 1, 1, '17261', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (120, 2, 1, 1, '11246', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (121, 2, 1, 1, '19824', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (122, 2, 1, 1, '11762', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (123, 2, 1, 1, '14315', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (124, 2, 1, 1, '19624', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (125, 2, 1, 1, '19684', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (126, 2, 1, 1, '10328', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (127, 2, 1, 1, '17569', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (128, 2, 1, 1, '13917', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (129, 2, 1, 1, '18367', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (130, 2, 1, 1, '11498', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (131, 2, 1, 1, '12109', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (132, 2, 1, 1, '17501', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (133, 2, 1, 1, '12180', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (134, 2, 1, 1, '15982', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (135, 2, 1, 1, '10496', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (136, 2, 1, 1, '17412', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (137, 2, 1, 1, '17081', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (138, 2, 1, 1, '11297', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (139, 2, 1, 1, '15682', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (140, 2, 1, 1, '13294', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (141, 2, 1, 1, '15934', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (142, 2, 1, 1, '13496', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (143, 2, 1, 1, '11546', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (144, 2, 1, 1, '16421', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (145, 2, 1, 1, '11479', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (146, 2, 1, 1, '15761', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (147, 2, 1, 1, '12385', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (148, 2, 1, 1, '15498', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (149, 2, 1, 1, '14197', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (150, 2, 1, 1, '14107', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (151, 2, 1, 1, '10238', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (152, 2, 1, 1, '16175', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (153, 2, 1, 1, '17980', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (154, 2, 1, 1, '18142', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (155, 2, 1, 1, '14089', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (156, 2, 1, 1, '11729', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (157, 2, 1, 1, '14015', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (158, 2, 1, 1, '18216', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (159, 2, 1, 1, '13409', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (160, 2, 1, 1, '10517', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (161, 2, 1, 1, '13678', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (162, 2, 1, 1, '18567', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (163, 2, 1, 1, '10459', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (164, 2, 1, 1, '11905', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (165, 2, 1, 1, '13815', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (166, 2, 1, 1, '17589', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (167, 2, 1, 1, '19503', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (168, 2, 1, 1, '16518', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (169, 2, 1, 1, '11672', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (170, 2, 1, 1, '11576', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (171, 2, 1, 1, '12819', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (172, 2, 1, 1, '17568', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (173, 2, 1, 1, '16718', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (174, 2, 1, 1, '10371', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (175, 2, 1, 1, '15273', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (176, 2, 1, 1, '18591', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (177, 2, 1, 1, '17192', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (178, 2, 1, 1, '15197', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (179, 2, 1, 1, '16938', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (180, 2, 1, 1, '16908', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (181, 2, 1, 1, '11283', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (182, 2, 1, 1, '16453', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (183, 2, 1, 1, '16170', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (184, 2, 1, 1, '12684', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (185, 2, 1, 1, '11258', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (186, 2, 1, 1, '14879', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (187, 2, 1, 1, '19385', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (188, 2, 1, 1, '12317', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (189, 2, 1, 1, '17295', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (190, 2, 1, 1, '19824', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (191, 2, 1, 1, '11027', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (192, 2, 1, 1, '11823', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (193, 2, 1, 1, '10531', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (194, 2, 1, 1, '16842', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (195, 2, 1, 1, '14621', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (196, 2, 1, 1, '12475', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (197, 2, 1, 1, '12804', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (198, 2, 1, 1, '14960', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (199, 2, 1, 1, '11035', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (200, 2, 1, 1, '15309', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (201, 2, 1, 1, '18914', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (202, 2, 1, 1, '14013', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (203, 2, 1, 1, '15834', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (204, 2, 1, 1, '14361', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (205, 2, 1, 1, '17936', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (206, 2, 1, 1, '15682', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (207, 2, 1, 1, '10694', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (208, 2, 1, 1, '10179', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (209, 2, 1, 1, '10915', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (210, 2, 1, 1, '17612', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (211, 2, 1, 1, '13152', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (212, 2, 1, 1, '17946', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (213, 2, 1, 1, '11546', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (214, 2, 1, 1, '15470', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (215, 2, 1, 1, '17842', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (216, 2, 1, 1, '15612', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (217, 2, 1, 1, '16172', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (218, 2, 1, 1, '12915', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (219, 2, 1, 1, '16857', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (220, 2, 1, 1, '12851', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (221, 2, 1, 1, '10398', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (222, 2, 1, 1, '13896', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (223, 2, 1, 1, '14297', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (224, 2, 1, 1, '15743', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (225, 2, 1, 1, '18375', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (226, 2, 1, 1, '15746', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (227, 2, 1, 1, '17034', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (228, 2, 1, 1, '13408', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (229, 2, 1, 1, '13715', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (230, 2, 1, 1, '18194', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (231, 2, 1, 1, '15701', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (232, 2, 1, 1, '12507', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (233, 2, 1, 1, '17094', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (234, 2, 1, 1, '12081', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (235, 2, 1, 1, '10438', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (236, 2, 1, 1, '18095', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (237, 2, 1, 1, '14602', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (238, 2, 1, 1, '11842', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (239, 2, 1, 1, '11650', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (240, 2, 1, 1, '10175', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (241, 2, 1, 1, '19104', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (242, 2, 1, 1, '16258', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (243, 2, 1, 1, '14985', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (244, 2, 1, 1, '14158', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (245, 2, 1, 1, '19405', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (246, 2, 1, 1, '18793', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (247, 2, 1, 1, '10975', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (248, 2, 1, 1, '18529', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (249, 2, 1, 1, '16271', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (250, 2, 1, 1, '16714', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (251, 2, 1, 1, '15236', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (252, 2, 1, 1, '19457', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (253, 2, 1, 1, '18430', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (254, 2, 1, 1, '10493', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (255, 2, 1, 1, '19320', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (256, 2, 1, 1, '15061', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (257, 2, 1, 1, '16529', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (258, 2, 1, 1, '13109', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (259, 2, 1, 1, '16731', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (260, 2, 1, 1, '13720', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (261, 2, 1, 1, '17284', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (262, 2, 1, 1, '17946', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (263, 2, 1, 1, '18946', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (264, 2, 1, 1, '11892', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (269, 3, 2, 1, '24872', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (270, 3, 2, 1, '27316', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (271, 3, 2, 1, '24395', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (272, 3, 2, 1, '25291', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (273, 3, 2, 1, '24750', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (274, 3, 2, 1, '22615', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (275, 3, 2, 1, '28769', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (276, 3, 2, 1, '29386', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (277, 3, 2, 1, '23165', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (278, 3, 2, 1, '28670', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (279, 3, 2, 1, '23562', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (280, 3, 2, 1, '24360', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (281, 3, 2, 1, '27542', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (282, 3, 2, 1, '25063', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (283, 3, 2, 1, '25320', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (284, 3, 2, 1, '25172', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (285, 3, 2, 1, '27890', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (286, 3, 2, 1, '23501', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (287, 3, 2, 1, '28310', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (288, 3, 2, 1, '22083', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (289, 3, 2, 1, '23057', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (290, 3, 2, 1, '27054', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (291, 3, 2, 1, '27941', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (292, 3, 2, 1, '22685', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (293, 3, 2, 1, '22034', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (294, 3, 2, 1, '29058', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (295, 3, 2, 1, '24675', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (296, 3, 2, 1, '24502', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (297, 3, 2, 1, '22459', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (298, 3, 2, 1, '28571', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (299, 3, 2, 1, '25367', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (300, 3, 2, 1, '26780', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (301, 3, 2, 1, '21309', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (302, 3, 2, 1, '28095', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (303, 3, 2, 1, '20123', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (304, 3, 2, 1, '25471', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (305, 3, 2, 1, '25369', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (306, 3, 2, 1, '23862', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (307, 3, 2, 1, '29618', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (308, 3, 2, 1, '26312', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (309, 3, 2, 1, '27418', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (310, 3, 2, 1, '24186', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (311, 3, 2, 1, '23071', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (312, 3, 2, 1, '29630', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (313, 3, 2, 1, '29504', 0);
INSERT INTO `item_list` (`id`, `user_id`, `shop_id`, `status`, `uid`, `is_default`) VALUES (314, 3, 2, 1, '21369', 0);


#
# TABLE STRUCTURE FOR: item_packages
#

DROP TABLE IF EXISTS `item_packages`;

CREATE TABLE `item_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `is_price` int(11) NOT NULL DEFAULT 0,
  `item_id` varchar(255) NOT NULL,
  `is_discount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `price` double NOT NULL,
  `final_price` double NOT NULL,
  `details` text NOT NULL,
  `overview` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `is_upcoming` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `live_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_special` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `is_home` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `table_no` int(11) NOT NULL DEFAULT 0,
  `qr_link` varchar(255) DEFAULT NULL,
  `img_type` int(11) NOT NULL DEFAULT 1,
  `img_url` varchar(255) DEFAULT NULL,
  `orders` int(11) NOT NULL DEFAULT 0,
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `uid` varchar(20) DEFAULT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `tax_fee` varchar(50) DEFAULT '0',
  `tax_status` varchar(2) DEFAULT '+',
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `item_packages` (`id`, `package_name`, `slug`, `user_id`, `shop_id`, `is_price`, `item_id`, `is_discount`, `discount`, `duration`, `price`, `final_price`, `details`, `overview`, `images`, `thumb`, `is_upcoming`, `status`, `live_date`, `end_date`, `is_special`, `created_at`, `is_home`, `in_stock`, `remaining`, `table_no`, `qr_link`, `img_type`, `img_url`, `orders`, `language`, `uid`, `package_id`, `tax_fee`, `tax_status`, `is_default`) VALUES (1, 'Dönertasche Menü', '', 3, 2, 0, '', 0, 0, 0, '11.5', '11.5', '', 'Dönertasche Menü', 'uploads/big/8af4e0e6a763e16274a52cbd4efee7b8.png', 'uploads/thumb/8af4e0e6a763e16274a52cbd4efee7b8.png', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2024-06-06 14:39:36', 0, 0, 0, 0, NULL, 1, NULL, 0, 'de', NULL, 1, '0', '+', 0);


#
# TABLE STRUCTURE FOR: item_packages_list
#

DROP TABLE IF EXISTS `item_packages_list`;

CREATE TABLE `item_packages_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `language` varchar(30) NOT NULL DEFAULT 'english',
  `is_special` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `item_packages_list` (`id`, `user_id`, `shop_id`, `created_at`, `language`, `is_special`) VALUES (1, 3, 2, NULL, 'english', 0);


#
# TABLE STRUCTURE FOR: item_sizes
#

DROP TABLE IF EXISTS `item_sizes`;

CREATE TABLE `item_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: items
#

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `allergen_id` varchar(255) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `images` varchar(200) NOT NULL,
  `thumb` varchar(200) NOT NULL,
  `veg_type` int(11) NOT NULL DEFAULT 0,
  `price` longtext DEFAULT NULL,
  `is_size` int(11) DEFAULT 0,
  `details` text NOT NULL,
  `overview` text NOT NULL,
  `is_features` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `remaining` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `img_type` int(11) NOT NULL DEFAULT 1,
  `img_url` varchar(255) DEFAULT NULL,
  `extra_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `orders` int(11) NOT NULL DEFAULT 0,
  `tax_fee` varchar(10) NOT NULL DEFAULT '0',
  `tax_status` varchar(10) NOT NULL DEFAULT '+',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `item_id` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `is_pos_only` int(11) NOT NULL DEFAULT 0,
  `is_default` int(2) NOT NULL DEFAULT 0,
  `previous_price` varchar(11) NOT NULL DEFAULT '0',
  `sub_category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (5, 2, 1, 3, 'null', 'ساندويش شاورما', 'uploads/big/c19380414453abc71e74f364f3683cc1.png', 'uploads/thumb/c19380414453abc71e74f364f3683cc1.png', 0, '100', 0, '<p><br></p>', '', 0, 1, '2024-06-26 16:35:29', 0, 0, 1, '', NULL, 1, '0', '0', 'ar', 5, '15273', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (6, 2, 1, 11, 'null', 'خبز', 'uploads/big/9df9922d256bbd90d4af32d655b1afca.png', 'uploads/thumb/9df9922d256bbd90d4af32d655b1afca.png', 0, '20', 0, '', 'ربطة خبز', 0, 1, '2024-06-05 15:07:00', 0, 0, 1, '', NULL, 2, '0', '0', 'ar', 6, '14837', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (7, 2, 1, 11, 'null', 'صحن مخلل', 'uploads/big/1cf0e5ffd220af23e54156ebb2df98d2.png', 'uploads/thumb/1cf0e5ffd220af23e54156ebb2df98d2.png', 0, '35', 0, '', '', 0, 1, '2024-06-05 20:16:26', 0, 0, 1, '', NULL, 3, '0', '0', 'ar', 7, '13690', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (8, 2, 1, 11, 'null', 'كريم ثوم', 'uploads/big/a1ff72e9cd633b2cb6f48960bd8b4011.png', 'uploads/thumb/a1ff72e9cd633b2cb6f48960bd8b4011.png', 0, '35', 0, '', '', 0, 1, '2024-06-16 14:01:34', 0, 0, 1, '', NULL, 4, '0', '0', 'ar', 8, '14326', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (9, 2, 1, 11, 'null', 'سلطة روسية', 'uploads/big/d951f47f0575debdae92d7cbed714b0c.png', 'uploads/thumb/d951f47f0575debdae92d7cbed714b0c.png', 0, '50', 0, '', '', 0, 1, '2024-06-05 15:01:22', 0, 0, 1, '', NULL, 5, '0', '0', 'ar', 9, '18425', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (10, 2, 1, 10, 'null', 'ماء', 'uploads/big/6ce786268bbc4181fea2781eb8ea52b3.png', 'uploads/thumb/6ce786268bbc4181fea2781eb8ea52b3.png', 0, '15', 0, '', '', 0, 1, '2024-06-05 15:19:06', 0, 0, 1, '', NULL, 6, '0', '0', 'ar', 10, '15031', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (11, 2, 1, 10, 'null', 'عيران', 'uploads/big/8764a043cb61cf1b3791311bafd223a4.png', 'uploads/thumb/8764a043cb61cf1b3791311bafd223a4.png', 0, '25', 0, '', '', 0, 1, '2024-06-05 15:19:19', 0, 0, 1, '', NULL, 7, '0', '0', 'ar', 11, '16291', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (13, 2, 1, 10, 'null', 'بيبسي', 'uploads/big/4b972ce659dcc9ebd66b01bb0c109f46.png', 'uploads/thumb/4b972ce659dcc9ebd66b01bb0c109f46.png', 0, '45', 0, '', '', 0, 1, '2024-06-24 19:14:15', 0, 0, 1, '', NULL, 9, '0', '0', 'ar', 13, '18625', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (14, 2, 1, 10, 'null', 'فانتا', 'uploads/big/dbb9bf1067298f4e95543c805df190bd.png', 'uploads/thumb/dbb9bf1067298f4e95543c805df190bd.png', 0, '45', 0, '', '', 0, 1, '2024-06-24 19:14:25', 0, 0, 1, '', NULL, 10, '0', '0', 'ar', 14, '13821', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (15, 2, 1, 10, 'null', 'سبرايت', 'uploads/big/f456c9d64cb5bd510672af5637afa150.png', 'uploads/thumb/f456c9d64cb5bd510672af5637afa150.png', 0, '45', 0, '', '', 0, 1, '2024-06-24 19:14:33', 0, 0, 1, '', NULL, 11, '0', '0', 'ar', 15, '17516', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (16, 2, 1, 10, 'null', 'مندرين كولا', 'uploads/big/afd2cab29944a85da24ca5fba3807bee.png', 'uploads/thumb/afd2cab29944a85da24ca5fba3807bee.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 17:51:26', 0, 0, 1, '', NULL, 12, '0', '0', 'ar', 16, '17521', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (17, 2, 1, 10, 'null', 'مندرين دايت', 'uploads/big/e2e3ebe0d3b523c96847a3a4826ed9f6.png', 'uploads/thumb/e2e3ebe0d3b523c96847a3a4826ed9f6.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 17:51:41', 0, 0, 1, '', NULL, 13, '0', '0', 'ar', 17, '18239', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (18, 2, 1, 10, 'null', 'مندرين برتقال', 'uploads/big/58e955ef11df28ecb2986ac4a3907275.png', 'uploads/thumb/58e955ef11df28ecb2986ac4a3907275.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 17:52:00', 0, 0, 1, '', NULL, 14, '0', '0', 'ar', 18, '10268', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (19, 2, 1, 10, 'null', 'مندرين تفاح', 'uploads/big/ac8f6c4ef42537de9bc8be5d3314afd9.png', 'uploads/thumb/ac8f6c4ef42537de9bc8be5d3314afd9.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 17:52:12', 0, 0, 1, '', NULL, 15, '0', '0', 'ar', 19, '13541', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (23, 2, 1, 9, 'null', 'سلطة شرقية', 'uploads/big/d1ffaa1c95dc457888810ef4acdcd0ba.png', 'uploads/thumb/d1ffaa1c95dc457888810ef4acdcd0ba.png', 0, '115', 0, '', '', 0, 1, '2024-06-24 19:13:08', 0, 0, 1, '', NULL, 19, '0', '0', 'ar', 23, '13562', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (24, 2, 1, 9, 'null', 'فتوش', 'uploads/big/59eeacd9e9ea9a3882f32755e71e938b.png', 'uploads/thumb/59eeacd9e9ea9a3882f32755e71e938b.png', 0, '100', 0, '', '', 0, 1, '2024-06-05 14:58:34', 0, 0, 1, '', NULL, 20, '0', '0', 'ar', 24, '16972', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (31, 2, 1, 8, 'null', 'كبة مقلية', 'uploads/big/e5f9efdc2d2c7c99199a30b117ad4ce1.png', 'uploads/thumb/e5f9efdc2d2c7c99199a30b117ad4ce1.png', 0, '75', 0, '', '', 0, 1, '2024-06-05 14:53:30', 0, 0, 1, '', NULL, 27, '0', '0', 'ar', 31, '17913', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (33, 2, 1, 8, 'null', 'صحن بطاطا', 'uploads/big/9f6181d42d8bfba662338bcf98400e24.png', 'uploads/thumb/9f6181d42d8bfba662338bcf98400e24.png', 0, '100', 0, '', '', 0, 1, '2024-06-05 14:50:38', 0, 0, 1, '', NULL, 29, '0', '0', 'ar', 33, '14296', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (34, 2, 1, 8, 'null', 'حمص ناعم', 'uploads/big/72b164d50ad10e96c1e738fa8e901f2f.png', 'uploads/thumb/72b164d50ad10e96c1e738fa8e901f2f.png', 0, '105', 0, '', '', 0, 1, '2024-06-24 19:11:10', 0, 0, 1, '', NULL, 30, '0', '0', 'ar', 34, '13162', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (35, 2, 1, 8, 'null', 'حمص بيروتي', 'uploads/big/9f2a750e0e677fe292978fbece8954c0.png', 'uploads/thumb/9f2a750e0e677fe292978fbece8954c0.png', 0, '105', 0, '', '', 0, 1, '2024-06-05 14:56:00', 0, 0, 1, '', NULL, 31, '0', '0', 'ar', 35, '13192', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (36, 2, 1, 8, 'null', 'حمص مع شاورما', 'uploads/big/e24c17ec0a7b85f0ba956eb946543ca4.png', 'uploads/thumb/e24c17ec0a7b85f0ba956eb946543ca4.png', 0, '170', 0, '', '', 0, 1, '2024-06-24 19:11:21', 0, 0, 1, '', NULL, 32, '0', '0', 'ar', 36, '10178', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (37, 2, 1, 7, 'null', 'كبسة دجاج', 'uploads/big/dc709ac203f6876168c0919070fa6da4.png', 'uploads/thumb/dc709ac203f6876168c0919070fa6da4.png', 0, '290', 0, '', '', 0, 1, '2024-06-24 19:08:35', 0, 0, 1, '', NULL, 33, '0', '0', 'ar', 37, '18597', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (38, 2, 1, 7, 'null', 'مندي دجاج', 'uploads/big/526b02d4b9f3c0b402bf60a5596201c3.png', 'uploads/thumb/526b02d4b9f3c0b402bf60a5596201c3.png', 0, '290', 0, '', '', 0, 1, '2024-06-24 19:08:47', 0, 0, 1, '', NULL, 34, '0', '0', 'ar', 38, '13210', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (41, 2, 1, 7, 'null', 'كبسة لحم', 'uploads/big/a27e925dbf370ac543df583e0221e36a.png', 'uploads/thumb/a27e925dbf370ac543df583e0221e36a.png', 0, '420', 0, '', '', 0, 1, '2024-06-24 19:09:15', 0, 0, 1, '', NULL, 37, '0', '0', 'ar', 41, '13908', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (42, 2, 1, 7, 'null', 'مندي لحم', 'uploads/big/cc846aa822238b4634a2e64793fccd11.png', 'uploads/thumb/cc846aa822238b4634a2e64793fccd11.png', 0, '420', 0, '', '', 0, 1, '2024-06-24 19:09:26', 0, 0, 1, '', NULL, 38, '0', '0', 'ar', 42, '19534', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (43, 2, 1, 6, 'null', 'ساندويش فلافل', 'uploads/big/d043255fb3a6df4b4bfb0e5b83448542.png', 'uploads/thumb/d043255fb3a6df4b4bfb0e5b83448542.png', 0, '80', 0, '', '', 0, 1, '2024-06-24 19:07:36', 0, 0, 1, '', NULL, 39, '0', '0', 'ar', 43, '15187', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (44, 2, 1, 6, 'null', 'ساندويش فلافل  دبل', 'uploads/big/2fc71caa46e2c1ecb35282e40e19c418.png', 'uploads/thumb/2fc71caa46e2c1ecb35282e40e19c418.png', 0, '90', 0, '', '', 0, 1, '2024-06-05 14:47:32', 0, 0, 1, '', NULL, 40, '0', '0', 'ar', 44, '13786', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (45, 2, 1, 6, 'null', 'وجبة فلافل', 'uploads/big/11b1d2ee9f3d9ed0b00fffb4cf1bece4.png', 'uploads/thumb/11b1d2ee9f3d9ed0b00fffb4cf1bece4.png', 0, '115', 0, '', '', 0, 1, '2024-06-24 19:07:47', 0, 0, 1, '', NULL, 41, '0', '0', 'ar', 45, '16792', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (46, 2, 1, 6, 'null', 'فلافل عربي', 'uploads/big/7883878051835e319fed34f6413c7ab1.png', 'uploads/thumb/7883878051835e319fed34f6413c7ab1.png', 0, '115', 0, '', '', 0, 1, '2024-06-24 19:07:59', 0, 0, 1, '', NULL, 42, '0', '0', 'ar', 46, '19210', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (48, 2, 1, 5, 'null', 'بروستد', 'uploads/big/3d4833c71775964e91805bacc56eff79.png', 'uploads/thumb/3d4833c71775964e91805bacc56eff79.png', 0, '250', 0, '', '', 0, 1, '2024-06-16 13:12:06', 0, 0, 1, '', NULL, 44, '0', '0', 'ar', 48, '13409', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (50, 2, 1, 5, 'null', 'وجبة كرسبي', 'uploads/big/592f4c7fce4b7fa99604b214ac41157d.png', 'uploads/thumb/592f4c7fce4b7fa99604b214ac41157d.png', 0, '235', 0, '', '', 0, 1, '2024-06-24 19:03:36', 0, 0, 1, '', NULL, 46, '0', '0', 'ar', 50, '10541', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (53, 2, 1, 5, 'null', 'وجبة اسكالوب', 'uploads/big/0d857ce12f058ef20fecf42a6c552c7d.png', 'uploads/thumb/0d857ce12f058ef20fecf42a6c552c7d.png', 0, '235', 0, '', '', 0, 1, '2024-06-24 19:05:22', 0, 0, 1, '', NULL, 49, '0', '0', 'ar', 53, '10581', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (54, 2, 1, 5, 'null', 'وجبة مكسيكانو', 'uploads/big/3c61008db4f87bb9bb8831b5454edee5.png', 'uploads/thumb/3c61008db4f87bb9bb8831b5454edee5.png', 0, '245', 0, '', '', 0, 1, '2024-06-24 19:05:46', 0, 0, 1, '', NULL, 50, '0', '0', 'ar', 54, '14768', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (55, 2, 1, 5, 'null', 'وجبة سوبريم', 'uploads/big/e65d115b57da2ea1bfb10f68428fae6e.png', 'uploads/thumb/e65d115b57da2ea1bfb10f68428fae6e.png', 0, '250', 0, '', '', 0, 1, '2024-06-05 14:45:10', 0, 0, 1, '', NULL, 51, '0', '0', 'ar', 55, '17546', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (57, 2, 1, 5, 'null', 'وجبة فاهيتا', 'uploads/big/084023d8c5af8efec07b6054460e1f08.png', 'uploads/thumb/084023d8c5af8efec07b6054460e1f08.png', 0, '255', 0, '', '', 0, 1, '2024-06-24 19:06:36', 0, 0, 1, '', NULL, 53, '0', '0', 'ar', 57, '14752', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (59, 2, 1, 5, 'null', 'وجبة شيش طاوق على الغريل', 'uploads/big/53f3ade96fadcb5de23fb211ee7a08a0.png', 'uploads/thumb/53f3ade96fadcb5de23fb211ee7a08a0.png', 0, '235', 0, '', '', 0, 1, '2024-06-24 19:07:07', 0, 0, 1, '', NULL, 54, '0', '0', 'ar', 59, '16830', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (60, 2, 1, 5, 'null', 'وجبة برغر دجاج', 'uploads/big/64397c8aceb5039305d25ed6ce6d2aa4.png', 'uploads/thumb/64397c8aceb5039305d25ed6ce6d2aa4.png', 0, '225', 0, '', '', 0, 1, '2024-06-25 15:52:27', 0, 0, 1, '', NULL, 55, '0', '0', 'ar', 60, '14823', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (61, 2, 1, 5, 'null', 'وجبة برغر زنجر', 'uploads/big/4fb1c9ae6c65fe9a465c859a90d0f1d9.png', 'uploads/thumb/4fb1c9ae6c65fe9a465c859a90d0f1d9.png', 0, '230', 0, '', '', 0, 1, '2024-06-25 15:53:09', 0, 0, 1, '', NULL, 56, '0', '0', 'ar', 61, '15094', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (62, 2, 1, 5, 'null', 'وجبة برغر لحم', 'uploads/big/19f0aa1fd538bac098d1bbe766f06978.png', 'uploads/thumb/19f0aa1fd538bac098d1bbe766f06978.png', 0, '320', 0, '', '', 0, 1, '2024-06-25 15:53:22', 0, 0, 1, '', NULL, 57, '0', '0', 'ar', 62, '11248', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (81, 2, 1, 4, 'null', 'ساندويش بطاطا وقشقوان', 'uploads/big/51bf2657d1557c925507ce971097b3e9.png', 'uploads/thumb/51bf2657d1557c925507ce971097b3e9.png', 0, '110', 0, '', '', 0, 1, '2024-06-05 15:23:45', 0, 0, 1, '', NULL, 60, '0', '0', 'ar', 81, '17180', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (82, 2, 1, 4, 'null', 'ساندويش كرسبي', 'uploads/big/bfdbf46db87e1ba113cee0ab4264ff18.png', 'uploads/thumb/bfdbf46db87e1ba113cee0ab4264ff18.png', 0, '135', 0, '', '', 0, 1, '2024-06-24 18:59:39', 0, 0, 1, '', NULL, 61, '0', '0', 'ar', 82, '11709', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (83, 2, 1, 4, 'null', 'ساندويش زنجر', 'uploads/big/24df7b0700294879088687aac62052a3.png', 'uploads/thumb/24df7b0700294879088687aac62052a3.png', 0, '145', 0, '', '', 0, 1, '2024-06-24 18:59:02', 0, 0, 1, '', NULL, 62, '0', '0', 'ar', 83, '12437', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (84, 2, 1, 4, 'null', 'ساندويش سبايسي', 'uploads/big/69522cc078ef6335ac4af6b8637d8d8d.png', 'uploads/thumb/69522cc078ef6335ac4af6b8637d8d8d.png', 0, '145', 0, '', '', 0, 1, '2024-06-24 18:59:53', 0, 0, 1, '', NULL, 63, '0', '0', 'ar', 84, '17936', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (85, 2, 1, 4, 'null', 'ساندويش اسكالوب', 'uploads/big/daae8e6fc2735132b2fc1e3be74efd80.png', 'uploads/thumb/daae8e6fc2735132b2fc1e3be74efd80.png', 0, '135', 0, '', '', 0, 1, '2024-06-24 19:00:11', 0, 0, 1, '', NULL, 64, '0', '0', 'ar', 85, '15381', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (86, 2, 1, 4, 'null', 'ساندويش شيش طاوق', 'uploads/big/942b05be874a185f7088bb79b900fc42.png', 'uploads/thumb/942b05be874a185f7088bb79b900fc42.png', 0, '140', 0, '', '', 0, 1, '2024-06-24 19:02:58', 0, 0, 1, '', NULL, 65, '0', '0', 'ar', 86, '14608', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (89, 2, 1, 4, 'null', 'ساندويش سوبيريم', 'uploads/big/0daadf71fa404286e23b6ad117801f30.png', 'uploads/thumb/0daadf71fa404286e23b6ad117801f30.png', 0, '145', 0, '', '', 0, 1, '2024-06-16 13:08:13', 0, 0, 1, '', NULL, 68, '0', '0', 'ar', 89, '17814', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (91, 2, 1, 4, 'null', 'برغر دجاج', 'uploads/big/f34bdb7ff975f9feb8670c38e50bdb56.png', 'uploads/thumb/f34bdb7ff975f9feb8670c38e50bdb56.png', 0, '135', 0, '', '', 0, 1, '2024-06-26 16:37:11', 0, 0, 1, '', NULL, 70, '0', '0', 'ar', 91, '13605', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (92, 2, 1, 4, 'null', 'ساندويش برغر زنجر', 'uploads/big/b51fbbf57913f51fc959227203617172.png', 'uploads/thumb/b51fbbf57913f51fc959227203617172.png', 0, '135', 0, '', '', 0, 1, '2024-06-05 18:24:39', 0, 0, 1, '', NULL, 71, '0', '0', 'ar', 92, '14569', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (93, 2, 1, 4, 'null', 'ساندويش برغر لحم', 'uploads/big/432726ee7f38b58b1b449a023bf03c27.png', 'uploads/thumb/432726ee7f38b58b1b449a023bf03c27.png', 0, '185', 0, '', '', 0, 1, '2024-06-05 18:24:53', 0, 0, 1, '', NULL, 72, '0', '0', 'ar', 93, '14058', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (94, 2, 1, 3, 'null', 'ساندويش شاورما دبل', 'uploads/big/553f3c20266d6e67a7f226a3e0bbd79b.png', 'uploads/thumb/553f3c20266d6e67a7f226a3e0bbd79b.png', 0, '115', 0, '', '', 0, 1, '2024-06-24 18:54:11', 0, 0, 1, '', NULL, 73, '0', '0', 'ar', 94, '16849', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (95, 2, 1, 3, 'null', 'سندويش  شاورما مع جبنة', 'uploads/big/18df3dd5fb1587c01879e5882db077aa.png', 'uploads/thumb/18df3dd5fb1587c01879e5882db077aa.png', 0, '120', 0, '', '', 0, 1, '2024-06-16 13:04:25', 0, 0, 1, '', NULL, 74, '0', '0', 'ar', 95, '16534', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (96, 2, 1, 3, 'null', 'شاورما عربي', 'uploads/big/68c321b435a74a83801d826733005c26.png', 'uploads/thumb/68c321b435a74a83801d826733005c26.png', 0, '140', 0, '', '', 0, 1, '2024-06-22 14:39:34', 0, 0, 1, '', NULL, 75, '0', '0', 'ar', 96, '10238', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (97, 2, 1, 3, 'null', 'شاورما عربي دبل', 'uploads/big/a9d1c069968d7d0835735cae959afc8d.png', 'uploads/thumb/a9d1c069968d7d0835735cae959afc8d.png', 0, '250', 0, '', '', 0, 1, '2024-06-05 19:40:52', 0, 0, 1, '', NULL, 76, '0', '0', 'ar', 97, '14837', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (98, 2, 1, 3, 'null', 'صحن حمص مع شاورما', 'uploads/big/d259ecbf36fc5031a4b3cfea2ace55e0.png', 'uploads/thumb/d259ecbf36fc5031a4b3cfea2ace55e0.png', 0, '160', 0, '', '', 0, 1, '2024-06-05 19:41:15', 0, 0, 1, '', NULL, 77, '0', '0', 'ar', 98, '14902', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (99, 2, 1, 3, 'null', 'شاورما عربي اكسترا جبنة وفطر', 'uploads/big/1726edc80531c99a087a6686f842d7bc.png', 'uploads/thumb/1726edc80531c99a087a6686f842d7bc.png', 0, '175', 0, '', '', 0, 1, '2024-06-16 13:05:12', 0, 0, 1, '', NULL, 78, '0', '0', 'ar', 99, '10248', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (100, 2, 1, 3, 'null', 'وجبة شاورما ماريا جبنة وفطر', 'uploads/big/40a6537675615f519c3f2ae1a62e67e0.png', 'uploads/thumb/40a6537675615f519c3f2ae1a62e67e0.png', 0, '190', 0, '', '', 0, 1, '2024-06-05 19:42:04', 0, 0, 1, '', NULL, 79, '0', '0', 'ar', 100, '17385', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (101, 2, 1, 3, 'null', 'وجبة شاورما مع أرز', 'uploads/big/97ab8e5b9c18bc10e75fc8d96fb914fc.png', 'uploads/thumb/97ab8e5b9c18bc10e75fc8d96fb914fc.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 19:42:43', 0, 0, 1, '', NULL, 80, '0', '0', 'ar', 101, '13917', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (102, 2, 1, 3, 'null', 'نصف كيلو شاورما', 'uploads/big/2d59247e5bde7e0e619ff101bc1c680d.png', 'uploads/thumb/2d59247e5bde7e0e619ff101bc1c680d.png', 0, '315', 0, '', '', 0, 1, '2024-06-26 16:36:04', 0, 0, 1, '', NULL, 81, '0', '0', 'ar', 102, '19762', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (103, 2, 1, 3, 'null', 'كيلو شاورما', 'uploads/big/5da29974d44e115e1a1553721d289350.png', 'uploads/thumb/5da29974d44e115e1a1553721d289350.png', 0, '580', 0, '', '', 0, 1, '2024-06-24 18:57:10', 0, 0, 1, '', NULL, 82, '0', '0', 'ar', 103, '19753', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (104, 2, 1, 10, 'null', 'ساريير كولا', 'uploads/big/10beb2ae23987891c5dbd4db417d450d.png', 'uploads/thumb/10beb2ae23987891c5dbd4db417d450d.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 17:54:44', 0, 0, 1, '', NULL, 80, '0', '0', 'ar', 104, '13617', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (105, 2, 1, 10, 'null', 'ساريير برتقال', 'uploads/big/9c64de7b2a5c225360f995746111cf29.png', 'uploads/thumb/9c64de7b2a5c225360f995746111cf29.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 17:55:02', 0, 0, 1, '', NULL, 81, '0', '0', 'ar', 105, '16217', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (106, 2, 1, 10, 'null', 'ساريير صودا', 'uploads/big/415a046a408ea1028d3ac58731ba6dfe.png', 'uploads/thumb/415a046a408ea1028d3ac58731ba6dfe.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 17:55:17', 0, 0, 1, '', NULL, 82, '0', '0', 'ar', 106, '17964', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (107, 2, 1, 10, 'null', 'بيبسي لتر', 'uploads/big/0f05c2560cf83381d37c838c1134fd31.png', 'uploads/thumb/0f05c2560cf83381d37c838c1134fd31.png', 0, '60', 0, '', '', 0, 1, '2024-06-05 17:58:57', 0, 0, 1, '', NULL, 83, '0', '0', 'ar', 107, '15602', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (109, 2, 1, 12, 'null', 'Shawarma Sandwich', 'uploads/big/da24828dbeda1016710cdd6d6d567c51.png', 'uploads/thumb/da24828dbeda1016710cdd6d6d567c51.png', 0, '85', 0, '', '', 0, 1, '2024-06-05 20:36:48', 0, 0, 1, '', NULL, 79, '0', '0', 'english', 109, '12853', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (110, 2, 1, 12, 'null', 'Double Shawarma Sandwich', 'uploads/big/3714b537ef1b3260d29fa2a8b0e14a22.png', 'uploads/thumb/3714b537ef1b3260d29fa2a8b0e14a22.png', 0, '100', 0, '', '', 0, 1, '2024-06-05 20:37:08', 0, 0, 1, '', NULL, 80, '0', '0', 'english', 110, '10346', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (111, 2, 1, 12, 'null', 'Shawarma Sandwich with Cheese', 'uploads/big/8b3d3de76fc8781072ad0fb6897f2ca2.png', 'uploads/thumb/8b3d3de76fc8781072ad0fb6897f2ca2.png', 0, '130', 0, '', '', 0, 1, '2024-06-05 20:37:30', 0, 0, 1, '', NULL, 81, '0', '0', 'english', 111, '14013', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (112, 2, 1, 12, 'null', 'Arabic Shawarma', 'uploads/big/4414b261048780ad20272f548d517b23.png', 'uploads/thumb/4414b261048780ad20272f548d517b23.png', 0, '140', 0, '', '', 0, 1, '2024-06-05 20:37:55', 0, 0, 1, '', NULL, 82, '0', '0', 'english', 112, '10615', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (113, 2, 1, 12, 'null', 'Double Arabic Shawarma', 'uploads/big/49118436a7957063e1ba026c28f05aed.png', 'uploads/thumb/49118436a7957063e1ba026c28f05aed.png', 0, '250', 0, '', '', 0, 1, '2024-06-05 20:38:15', 0, 0, 1, '', NULL, 83, '0', '0', 'english', 113, '11465', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (114, 2, 1, 12, 'null', 'Hummus Plate with Shawarma', 'uploads/big/fbf21668326d17f4ab4e10e8227291d8.png', 'uploads/thumb/fbf21668326d17f4ab4e10e8227291d8.png', 0, '160', 0, '', '', 0, 1, '2024-06-05 20:38:42', 0, 0, 1, '', NULL, 84, '0', '0', 'english', 114, '10293', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (115, 2, 1, 12, 'null', 'Arabic Shawarma with Extra Cheese and Mushrooms', 'uploads/big/944eaaac6746f298a5369fb309f38b23.png', 'uploads/thumb/944eaaac6746f298a5369fb309f38b23.png', 0, '190', 0, '', '', 0, 1, '2024-06-05 20:39:03', 0, 0, 1, '', NULL, 85, '0', '0', 'english', 115, '16803', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (116, 2, 1, 12, 'null', 'Maria Shawarma Meal with Cheese and Mushrooms', 'uploads/big/6130cc125b7b5bb29c3d622b426357a0.png', 'uploads/thumb/6130cc125b7b5bb29c3d622b426357a0.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 20:39:40', 0, 0, 1, '', NULL, 86, '0', '0', 'english', 116, '19318', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (117, 2, 1, 12, 'null', 'Shawarma Meal with Rice', 'uploads/big/171c510157b197bfc884c0ae719ff4e1.png', 'uploads/thumb/171c510157b197bfc884c0ae719ff4e1.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 20:40:58', 0, 0, 1, '', NULL, 87, '0', '0', 'english', 117, '15719', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (118, 2, 1, 12, 'null', 'Half a Kilo of Shawarma', 'uploads/big/2a742ed3eb68916507fa046acf869559.png', 'uploads/thumb/2a742ed3eb68916507fa046acf869559.png', 0, '290', 0, '', '', 0, 1, '2024-06-05 20:41:49', 0, 0, 1, '', NULL, 88, '0', '0', 'english', 118, '17246', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (119, 2, 1, 12, 'null', 'One Kilo of Shawarma', 'uploads/big/17c599cce8e881a29526080776e0cd24.png', 'uploads/thumb/17c599cce8e881a29526080776e0cd24.png', 0, '550', 0, '', '', 0, 1, '2024-06-05 20:42:10', 0, 0, 1, '', NULL, 89, '0', '0', 'english', 119, '17261', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (120, 2, 1, 13, 'null', 'Tourist Potato Sandwich', '', '', 0, '85', 0, '', '', 0, 1, '2024-06-05 20:43:03', 0, 0, 1, '', NULL, 90, '0', '0', 'english', 120, '11246', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (121, 2, 1, 13, 'null', 'Potato Sandwich on Samoon', 'uploads/big/558247ad7bc27e202b51ebba829e3d9c.png', 'uploads/thumb/558247ad7bc27e202b51ebba829e3d9c.png', 0, '90', 0, '', '', 0, 1, '2024-06-05 20:43:45', 0, 0, 1, '', NULL, 91, '0', '0', 'english', 121, '19824', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (122, 2, 1, 13, 'null', 'Potato and Kashkaval Sandwich', 'uploads/big/5c0d8e6e366818b3d5a7ec5eb9e968eb.png', 'uploads/thumb/5c0d8e6e366818b3d5a7ec5eb9e968eb.png', 0, '110', 0, '', '', 0, 1, '2024-06-05 20:45:09', 0, 0, 1, '', NULL, 92, '0', '0', 'english', 122, '11762', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (123, 2, 1, 13, 'null', 'Crispy Sandwich', 'uploads/big/f017ddeb1c1fa25a654f8ea97a50fc63.png', 'uploads/thumb/f017ddeb1c1fa25a654f8ea97a50fc63.png', 0, '130', 0, '', '', 0, 1, '2024-06-05 20:46:23', 0, 0, 1, '', NULL, 93, '0', '0', 'english', 123, '14315', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (124, 2, 1, 13, 'null', 'Zinger Sandwich', 'uploads/big/ff366644e438a1e066f17f34ae81c1b2.png', 'uploads/thumb/ff366644e438a1e066f17f34ae81c1b2.png', 0, '130', 0, '', '', 0, 1, '2024-06-05 20:46:52', 0, 0, 1, '', NULL, 94, '0', '0', 'english', 124, '19624', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (125, 2, 1, 13, 'null', 'Spicy Sandwich', 'uploads/big/2f17819c3e21e512ab1ea2c820a5e49f.png', 'uploads/thumb/2f17819c3e21e512ab1ea2c820a5e49f.png', 0, '130', 0, '', '', 0, 1, '2024-06-05 20:47:18', 0, 0, 1, '', NULL, 95, '0', '0', 'english', 125, '19684', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (126, 2, 1, 13, 'null', 'Escalope Sandwich', 'uploads/big/9d24bc201dd62ca88af94803c4e49527.png', 'uploads/thumb/9d24bc201dd62ca88af94803c4e49527.png', 0, '130', 0, '', '', 0, 1, '2024-06-05 20:47:47', 0, 0, 1, '', NULL, 96, '0', '0', 'english', 126, '10328', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (127, 2, 1, 13, 'null', 'Shish Tawook Sandwich', 'uploads/big/a390254696db25c8c86b24588ca2d041.png', 'uploads/thumb/a390254696db25c8c86b24588ca2d041.png', 0, '130', 0, '', '', 0, 1, '2024-06-05 20:48:14', 0, 0, 1, '', NULL, 97, '0', '0', 'english', 127, '17569', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (128, 2, 1, 13, 'null', 'Mexicano Sandwich', 'uploads/big/27a6d60731108458e6cb42b149ba486a.png', 'uploads/thumb/27a6d60731108458e6cb42b149ba486a.png', 0, '140', 0, '', '', 0, 1, '2024-06-05 20:48:45', 0, 0, 1, '', NULL, 98, '0', '0', 'english', 128, '13917', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (129, 2, 1, 13, 'null', 'Fajita Sandwich', 'uploads/big/f312386b69c54d7217622214e048e0d4.png', 'uploads/thumb/f312386b69c54d7217622214e048e0d4.png', 0, '150', 0, '', '', 0, 1, '2024-06-05 20:49:21', 0, 0, 1, '', NULL, 99, '0', '0', 'english', 129, '18367', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (130, 2, 1, 13, 'null', 'Supreme Sandwich', 'uploads/big/90b628056aceb1e4f28e4c9c07efa644.png', 'uploads/thumb/90b628056aceb1e4f28e4c9c07efa644.png', 0, '150', 0, '', '', 0, 1, '2024-06-05 20:50:37', 0, 0, 1, '', NULL, 100, '0', '0', 'english', 130, '11498', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (131, 2, 1, 13, 'null', 'Francesco Sandwich', 'uploads/big/b8453ea4b0b3ba474135619dcb1edf21.png', 'uploads/thumb/b8453ea4b0b3ba474135619dcb1edf21.png', 0, '150', 0, '', '', 0, 1, '2024-06-05 20:51:01', 0, 0, 1, '', NULL, 101, '0', '0', 'english', 131, '12109', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (132, 2, 1, 13, 'null', 'Chicken Burger Sandwich', 'uploads/big/3a3e4110aa56246b28efe3c68ce16e00.png', 'uploads/thumb/3a3e4110aa56246b28efe3c68ce16e00.png', 0, '130', 0, '', '', 0, 1, '2024-06-05 20:51:40', 0, 0, 1, '', NULL, 102, '0', '0', 'english', 132, '17501', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (133, 2, 1, 13, 'null', 'Zinger Burger Sandwich', 'uploads/big/3aa92a6475cdd1710e71715373aa8f3e.png', 'uploads/thumb/3aa92a6475cdd1710e71715373aa8f3e.png', 0, '135', 0, '', '', 0, 1, '2024-06-05 20:52:04', 0, 0, 1, '', NULL, 103, '0', '0', 'english', 133, '12180', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (134, 2, 1, 13, 'null', 'Beef Burger Sandwich', 'uploads/big/ae6113e1cde156bc5c80dfa640eb4628.png', 'uploads/thumb/ae6113e1cde156bc5c80dfa640eb4628.png', 0, '185', 0, '', '', 0, 1, '2024-06-05 20:52:24', 0, 0, 1, '', NULL, 104, '0', '0', 'english', 134, '15982', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (135, 2, 1, 14, 'null', 'Broasted Chicken', 'uploads/big/a84653672634df333f1cb0d32ebe5638.png', 'uploads/thumb/a84653672634df333f1cb0d32ebe5638.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 20:53:12', 0, 0, 1, '', NULL, 105, '0', '0', 'english', 135, '10496', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (136, 2, 1, 14, 'null', 'Crispy Meal', 'uploads/big/350db27303c25f6a9acea5ce44cb7b36.png', 'uploads/thumb/350db27303c25f6a9acea5ce44cb7b36.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 20:53:34', 0, 0, 1, '', NULL, 106, '0', '0', 'english', 136, '17412', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (137, 2, 1, 14, 'null', 'Escalope Meal', 'uploads/big/0e15f48edb46f9d6eb5153e4eb7f97b4.png', 'uploads/thumb/0e15f48edb46f9d6eb5153e4eb7f97b4.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 20:53:56', 0, 0, 1, '', NULL, 107, '0', '0', 'english', 137, '17081', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (138, 2, 1, 14, 'null', 'Mexicano Meal', 'uploads/big/ae77a685f872674e02b53f7a6decba50.png', 'uploads/thumb/ae77a685f872674e02b53f7a6decba50.png', 0, '240', 0, '', '', 0, 1, '2024-06-05 20:54:18', 0, 0, 1, '', NULL, 108, '0', '0', 'english', 138, '11297', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (139, 2, 1, 14, 'null', 'Supreme Meal', 'uploads/big/0a9e45f6af8c861629abd25cacaa08d9.png', 'uploads/thumb/0a9e45f6af8c861629abd25cacaa08d9.png', 0, '250', 0, '', '', 0, 1, '2024-06-05 20:55:33', 0, 0, 1, '', NULL, 109, '0', '0', 'english', 139, '15682', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (140, 2, 1, 14, 'null', 'Fajita Meal', 'uploads/big/f508106dc2d4df5b7c501034c1eecb66.png', 'uploads/thumb/f508106dc2d4df5b7c501034c1eecb66.png', 0, '250', 0, '', '', 0, 1, '2024-06-05 20:55:53', 0, 0, 1, '', NULL, 110, '0', '0', 'english', 140, '13294', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (141, 2, 1, 14, 'null', 'Francesco Meal', 'uploads/big/5dd8eb4e63d549ce939b0057658cd33b.png', 'uploads/thumb/5dd8eb4e63d549ce939b0057658cd33b.png', 0, '250', 0, '', '', 0, 1, '2024-06-05 20:56:19', 0, 0, 1, '', NULL, 111, '0', '0', 'english', 141, '15934', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (142, 2, 1, 14, 'null', 'Grilled Shish Tawook Meal', 'uploads/big/d108467874c95a256aefa9483a73e5f5.png', 'uploads/thumb/d108467874c95a256aefa9483a73e5f5.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 20:56:58', 0, 0, 1, '', NULL, 112, '0', '0', 'english', 142, '13496', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (143, 2, 1, 14, 'null', 'Chicken Burger Meal', 'uploads/big/8584293444e2dd5c1c1f961eafeef386.png', 'uploads/thumb/8584293444e2dd5c1c1f961eafeef386.png', 0, '225', 0, '', '', 0, 1, '2024-06-25 15:54:51', 0, 0, 1, '', NULL, 113, '0', '0', 'english', 143, '11546', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (144, 2, 1, 14, 'null', 'Zinger Burger Meal', 'uploads/big/2de98df7f9c4d78453e680e88106bdbd.png', 'uploads/thumb/2de98df7f9c4d78453e680e88106bdbd.png', 0, '230', 0, '', '', 0, 1, '2024-06-25 15:55:02', 0, 0, 1, '', NULL, 114, '0', '0', 'english', 144, '16421', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (145, 2, 1, 14, 'null', 'Beef Burger Meal', 'uploads/big/f22f0c8cdc7c7c9142aa9f8156413b3d.png', 'uploads/thumb/f22f0c8cdc7c7c9142aa9f8156413b3d.png', 0, '320', 0, '', '', 0, 1, '2024-06-25 15:55:15', 0, 0, 1, '', NULL, 115, '0', '0', 'english', 145, '11479', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (146, 2, 1, 15, 'null', 'Falafel Sandwich', 'uploads/big/b45f62875dbd8bb7c5b09404c71ce387.png', 'uploads/thumb/b45f62875dbd8bb7c5b09404c71ce387.png', 0, '75', 0, '', '', 0, 1, '2024-06-05 20:59:03', 0, 0, 1, '', NULL, 116, '0', '0', 'english', 146, '15761', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (147, 2, 1, 15, 'null', 'Double Falafel Sandwich', 'uploads/big/103e11ed5d1f00a80ca385ed133864aa.png', 'uploads/thumb/103e11ed5d1f00a80ca385ed133864aa.png', 0, '90', 0, '', '', 0, 1, '2024-06-05 20:59:25', 0, 0, 1, '', NULL, 117, '0', '0', 'english', 147, '12385', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (148, 2, 1, 15, 'null', 'Falafel Plate (7 pieces)', 'uploads/big/9e90c6a2549b59f1635c330f639d3231.png', 'uploads/thumb/9e90c6a2549b59f1635c330f639d3231.png', 0, '100', 0, '', '', 0, 1, '2024-06-05 20:59:47', 0, 0, 1, '', NULL, 118, '0', '0', 'english', 148, '15498', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (149, 2, 1, 15, 'null', 'Arabic Falafel', 'uploads/big/2509566d74205432565a448506e63be6.png', 'uploads/thumb/2509566d74205432565a448506e63be6.png', 0, '110', 0, '', '', 0, 1, '2024-06-05 21:01:01', 0, 0, 1, '', NULL, 119, '0', '0', 'english', 149, '14197', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (150, 2, 1, 15, 'null', 'Double Arabic Falafel', 'uploads/big/c2af29876d681e7896844e1155d0acb0.png', 'uploads/thumb/c2af29876d681e7896844e1155d0acb0.png', 0, '125', 0, '', '', 0, 1, '2024-06-05 21:01:27', 0, 0, 1, '', NULL, 120, '0', '0', 'english', 150, '14107', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (151, 2, 1, 16, 'null', 'Chicken Kabsa', 'uploads/big/7e4f7775fd40358ff715057cd6788fbb.png', 'uploads/thumb/7e4f7775fd40358ff715057cd6788fbb.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 21:02:12', 0, 0, 1, '', NULL, 121, '0', '0', 'english', 151, '10238', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (152, 2, 1, 16, 'null', 'Chicken Mandi', 'uploads/big/551a16e096dcd263b64811fb5afb32df.png', 'uploads/thumb/551a16e096dcd263b64811fb5afb32df.png', 0, '225', 0, '', '', 0, 1, '2024-06-05 21:02:44', 0, 0, 1, '', NULL, 122, '0', '0', 'english', 152, '16175', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (153, 2, 1, 16, 'null', 'Meat Kabsa', 'uploads/big/bfd52c7ad1bb52f21f14ff5a9b9faea1.png', 'uploads/thumb/bfd52c7ad1bb52f21f14ff5a9b9faea1.png', 0, '400', 0, '', '', 0, 1, '2024-06-05 21:04:06', 0, 0, 1, '', NULL, 123, '0', '0', 'english', 153, '17980', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (154, 2, 1, 16, 'null', 'Meat Mandi', 'uploads/big/d47d1a40c62735158a1caca72addd0c3.png', 'uploads/thumb/d47d1a40c62735158a1caca72addd0c3.png', 0, '400', 0, '', '', 0, 1, '2024-06-05 21:04:24', 0, 0, 1, '', NULL, 124, '0', '0', 'english', 154, '18142', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (155, 2, 1, 17, 'null', 'Barak with cheese', 'uploads/big/7cff31bf29771cb449c2c07939b78a63.png', 'uploads/thumb/7cff31bf29771cb449c2c07939b78a63.png', 0, '100', 0, '', '(3 pieces)', 0, 1, '2024-06-05 21:06:33', 0, 0, 1, '', NULL, 125, '0', '0', 'english', 155, '14089', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (156, 2, 1, 17, 'null', 'Lentil Soup', 'uploads/big/4c0fc5eac43a021921df0e82af51d6f6.png', 'uploads/thumb/4c0fc5eac43a021921df0e82af51d6f6.png', 0, '55', 0, '', '', 0, 1, '2024-06-05 21:07:17', 0, 0, 1, '', NULL, 126, '0', '0', 'english', 156, '11729', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (157, 2, 1, 17, 'null', 'Fried Kibbeh', 'uploads/big/6c8c705b4e5a23465e715e2ebcbaed09.png', 'uploads/thumb/6c8c705b4e5a23465e715e2ebcbaed09.png', 0, '75', 0, '', '(1 piece)', 0, 1, '2024-06-05 21:07:48', 0, 0, 1, '', NULL, 127, '0', '0', 'english', 157, '14015', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (158, 2, 1, 17, 'null', 'Grilled Kibbeh', 'uploads/big/96e83bc8f6aef1f9f38db340ec296ae9.png', 'uploads/thumb/96e83bc8f6aef1f9f38db340ec296ae9.png', 0, '100', 0, '', '(1 piece)', 0, 1, '2024-06-05 21:08:08', 0, 0, 1, '', NULL, 128, '0', '0', 'english', 158, '18216', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (159, 2, 1, 17, 'null', 'French Fries Plate', 'uploads/big/4b7d8a07cd953c7992932c5dd55d9d43.png', 'uploads/thumb/4b7d8a07cd953c7992932c5dd55d9d43.png', 0, '100', 0, '', '', 0, 1, '2024-06-05 21:09:21', 0, 0, 1, '', NULL, 129, '0', '0', 'english', 159, '13409', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (160, 2, 1, 17, 'null', 'Smooth Hummus', 'uploads/big/31688cf286ca1992ab40b3c36598223b.png', 'uploads/thumb/31688cf286ca1992ab40b3c36598223b.png', 0, '105', 0, '', '', 0, 1, '2024-06-05 21:09:58', 0, 0, 1, '', NULL, 130, '0', '0', 'english', 160, '10517', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (161, 2, 1, 17, 'null', 'Beiruti Hummus', 'uploads/big/1b4f56105facd716ecf8c08b5ba8baba.png', 'uploads/thumb/1b4f56105facd716ecf8c08b5ba8baba.png', 0, '105', 0, '', '', 0, 1, '2024-06-05 21:10:43', 0, 0, 1, '', NULL, 131, '0', '0', 'english', 161, '13678', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (162, 2, 1, 17, 'null', 'Hummus with Shawarma', 'uploads/big/c70d8c6d32bc73ec3ca47bceb22ec0f7.png', 'uploads/thumb/c70d8c6d32bc73ec3ca47bceb22ec0f7.png', 0, '160', 0, '', '', 0, 1, '2024-06-05 21:19:53', 0, 0, 1, '', NULL, 132, '0', '0', 'english', 162, '18567', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (163, 2, 1, 18, 'null', 'Oriental Salad', 'uploads/big/974ba9c4d306a1704bf389dcd540184d.png', 'uploads/thumb/974ba9c4d306a1704bf389dcd540184d.png', 0, '100', 0, '', '', 0, 1, '2024-06-05 21:21:27', 0, 0, 1, '', NULL, 133, '0', '0', 'english', 163, '10459', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (164, 2, 1, 18, 'null', 'Fattoush', 'uploads/big/6ea738ad614a7eb7710b0ef294a0c259.png', 'uploads/thumb/6ea738ad614a7eb7710b0ef294a0c259.png', 0, '100', 0, '', '', 0, 1, '2024-06-05 21:21:52', 0, 0, 1, '', NULL, 134, '0', '0', 'english', 164, '11905', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (165, 2, 1, 18, 'null', 'Arugula Salad', 'uploads/big/5f17299ff34f061f2673f09ad80a429c.png', 'uploads/thumb/5f17299ff34f061f2673f09ad80a429c.png', 0, '100', 0, '', '', 0, 1, '2024-06-05 21:23:45', 0, 0, 1, '', NULL, 135, '0', '0', 'english', 165, '13815', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (166, 2, 1, 18, 'null', 'Caesar Salad', 'uploads/big/605e197327bc3dec01b6e91356d90519.png', 'uploads/thumb/605e197327bc3dec01b6e91356d90519.png', 0, '125', 0, '', '', 0, 1, '2024-06-05 21:24:03', 0, 0, 1, '', NULL, 136, '0', '0', 'english', 166, '17589', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (167, 2, 1, 18, 'null', 'Tabbouleh', 'uploads/big/92747fe3556f0d890f75fc2c3a202c4b.png', 'uploads/thumb/92747fe3556f0d890f75fc2c3a202c4b.png', 0, '140', 0, '', '', 0, 1, '2024-06-05 21:24:18', 0, 0, 1, '', NULL, 137, '0', '0', 'english', 167, '19503', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (168, 2, 1, 18, 'null', 'Salad with Chicken Breast', 'uploads/big/1859b374eff544d548d7b12f7e65da88.png', 'uploads/thumb/1859b374eff544d548d7b12f7e65da88.png', 0, '150', 0, '', '', 0, 1, '2024-06-05 21:24:32', 0, 0, 1, '', NULL, 138, '0', '0', 'english', 168, '16518', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (169, 2, 1, 20, 'null', 'Arabic Bread', 'uploads/big/746268b63fb87f803ddbee70e700bb2e.png', 'uploads/thumb/746268b63fb87f803ddbee70e700bb2e.png', 0, '20', 0, '', '', 0, 1, '2024-06-05 21:47:24', 0, 0, 1, '', NULL, 139, '0', '0', 'english', 169, '11672', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (170, 2, 1, 20, 'null', 'Pickles Plate', 'uploads/big/51f7d6883f764e91d4088e42ee400787.png', 'uploads/thumb/51f7d6883f764e91d4088e42ee400787.png', 0, '35', 0, '', '', 0, 1, '2024-06-05 21:48:12', 0, 0, 1, '', NULL, 140, '0', '0', 'english', 170, '11576', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (171, 2, 1, 20, 'null', 'Mayonnaise Cream', 'uploads/big/41b530cc1d1f951605651ea4b78b4407.png', 'uploads/thumb/41b530cc1d1f951605651ea4b78b4407.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:49:23', 0, 0, 1, '', NULL, 141, '0', '0', 'english', 171, '12819', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (172, 2, 1, 20, 'null', 'Russian Salad', 'uploads/big/30c760f2cc710cc6f9cf9448bf30a2c3.png', 'uploads/thumb/30c760f2cc710cc6f9cf9448bf30a2c3.png', 0, '50', 0, '', '', 0, 1, '2024-06-05 21:49:45', 0, 0, 1, '', NULL, 142, '0', '0', 'english', 172, '17568', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (173, 2, 1, 19, 'null', 'Water', 'uploads/big/4d9f35e672f7812e4488b283fbba557f.png', 'uploads/thumb/4d9f35e672f7812e4488b283fbba557f.png', 0, '15', 0, '', '', 0, 1, '2024-06-05 21:50:30', 0, 0, 1, '', NULL, 143, '0', '0', 'english', 173, '16718', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (174, 2, 1, 19, 'null', 'Ayran', 'uploads/big/fc12f37d4f42471cf67a19b85322b583.png', 'uploads/thumb/fc12f37d4f42471cf67a19b85322b583.png', 0, '25', 0, '', '', 0, 1, '2024-06-05 21:51:28', 0, 0, 1, '', NULL, 144, '0', '0', 'english', 174, '10371', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (175, 2, 1, 19, 'null', 'Ayran 1 LT', 'uploads/big/6f870421a620dc0f8823896460daee2a.png', 'uploads/thumb/6f870421a620dc0f8823896460daee2a.png', 0, '60', 0, '', '', 0, 1, '2024-06-05 21:51:54', 0, 0, 1, '', NULL, 145, '0', '0', 'english', 175, '15273', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (176, 2, 1, 19, 'null', 'Pepsi', 'uploads/big/8de9233e59b5b8f40139c71ebff676fb.png', 'uploads/thumb/8de9233e59b5b8f40139c71ebff676fb.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:52:25', 0, 0, 1, '', NULL, 146, '0', '0', 'english', 176, '18591', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (177, 2, 1, 19, 'null', 'Fanta', 'uploads/big/81144de747fb00f668c7bee7b9d06197.png', 'uploads/thumb/81144de747fb00f668c7bee7b9d06197.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:53:07', 0, 0, 1, '', NULL, 147, '0', '0', 'english', 177, '17192', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (178, 2, 1, 19, 'null', 'Sprite', 'uploads/big/a2f5a4176c1900f090d6f4cf674166b5.png', 'uploads/thumb/a2f5a4176c1900f090d6f4cf674166b5.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:53:32', 0, 0, 1, '', NULL, 148, '0', '0', 'english', 178, '15197', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (179, 2, 1, 19, 'null', 'Menderin Cola', 'uploads/big/b9d6c63c388f5f5986e88e77c1137611.png', 'uploads/thumb/b9d6c63c388f5f5986e88e77c1137611.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:54:59', 0, 0, 1, '', NULL, 149, '0', '0', 'english', 179, '16938', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (180, 2, 1, 19, 'null', 'Menderin Diet', 'uploads/big/02383e8af67a30022d132f52b3608956.png', 'uploads/thumb/02383e8af67a30022d132f52b3608956.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:55:32', 0, 0, 1, '', NULL, 150, '0', '0', 'english', 180, '16908', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (181, 2, 1, 19, 'null', 'Menderin Orange', 'uploads/big/c6a69ed98071bbb7c2dffe7dcf79bc03.png', 'uploads/thumb/c6a69ed98071bbb7c2dffe7dcf79bc03.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:55:58', 0, 0, 1, '', NULL, 151, '0', '0', 'english', 181, '11283', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (182, 2, 1, 19, 'null', 'Menderin Apple', 'uploads/big/275ad2cc5213938bac47424e156c9be4.png', 'uploads/thumb/275ad2cc5213938bac47424e156c9be4.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:56:22', 0, 0, 1, '', NULL, 152, '0', '0', 'english', 182, '16453', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (183, 2, 1, 19, 'null', 'Sariyer Cola', 'uploads/big/41e3420032adecbac4a8adf6b905f075.png', 'uploads/thumb/41e3420032adecbac4a8adf6b905f075.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:56:56', 0, 0, 1, '', NULL, 153, '0', '0', 'english', 183, '16170', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (184, 2, 1, 19, 'null', 'Sariyer Orange', 'uploads/big/94f37a02652cb34e8f0f586cf0dd81f1.png', 'uploads/thumb/94f37a02652cb34e8f0f586cf0dd81f1.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:57:17', 0, 0, 1, '', NULL, 154, '0', '0', 'english', 184, '12684', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (185, 2, 1, 19, 'null', 'Sariyer Soda', 'uploads/big/86c12d1f51d787ea5f59e11c28d52891.png', 'uploads/thumb/86c12d1f51d787ea5f59e11c28d52891.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 21:57:54', 0, 0, 1, '', NULL, 155, '0', '0', 'english', 185, '11258', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (186, 2, 1, 19, 'null', 'Pepsi 1 LT', 'uploads/big/fafd26217e27a5a14efbb63c3c4b6f37.png', 'uploads/thumb/fafd26217e27a5a14efbb63c3c4b6f37.png', 0, '60', 0, '', '', 0, 1, '2024-06-05 21:58:31', 0, 0, 1, '', NULL, 156, '0', '0', 'english', 186, '14879', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (187, 2, 1, 29, 'null', 'Suriye Lavaşı', 'uploads/big/3d498381c652ccd456d5aa41aefdeb1e.png', 'uploads/thumb/3d498381c652ccd456d5aa41aefdeb1e.png', 0, '20', 0, '', '', 0, 1, '2024-06-05 23:50:40', 0, 0, 1, '', NULL, 157, '0', '0', 'tr', 187, '19385', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (188, 2, 1, 29, 'null', 'Turşu Tabağı', 'uploads/big/b4d936b0a628efb3f687ae8151d46b86.png', 'uploads/thumb/b4d936b0a628efb3f687ae8151d46b86.png', 0, '35', 0, '', '', 0, 1, '2024-06-05 23:50:56', 0, 0, 1, '', NULL, 158, '0', '0', 'tr', 188, '12317', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (189, 2, 1, 29, 'null', 'Sarımsaklı Mayonez', 'uploads/big/904b724956205de6a0f5c4996cd7ee7e.png', 'uploads/thumb/904b724956205de6a0f5c4996cd7ee7e.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 23:51:12', 0, 0, 1, '', NULL, 159, '0', '0', 'tr', 189, '17295', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (190, 2, 1, 29, 'null', 'Rus Salatası', 'uploads/big/d45058af60e8db299760a49bd2382a51.png', 'uploads/thumb/d45058af60e8db299760a49bd2382a51.png', 0, '50', 0, '', '', 0, 1, '2024-06-05 23:51:27', 0, 0, 1, '', NULL, 160, '0', '0', 'tr', 190, '19824', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (191, 2, 1, 28, 'null', 'Su', 'uploads/big/eb28e7a166ae0de744c04c0cd37cadf8.png', 'uploads/thumb/eb28e7a166ae0de744c04c0cd37cadf8.png', 0, '15', 0, '', '', 0, 1, '2024-06-05 23:51:53', 0, 0, 1, '', NULL, 1, '0', '0', 'tr', 191, '11027', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (192, 2, 1, 28, 'null', 'Ayran', 'uploads/big/b0ce9b7538596dd0c7e1b37c6f86eb71.png', 'uploads/thumb/b0ce9b7538596dd0c7e1b37c6f86eb71.png', 0, '25', 0, '', '', 0, 1, '2024-06-05 23:52:13', 0, 0, 1, '', NULL, 2, '0', '0', 'tr', 192, '11823', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (193, 2, 1, 28, 'null', 'Ayran 1L', 'uploads/big/032243dd9947690bcb8ae49fecf498a8.png', 'uploads/thumb/032243dd9947690bcb8ae49fecf498a8.png', 0, '60', 0, '', '', 0, 1, '2024-06-05 23:52:39', 0, 0, 1, '', NULL, 3, '0', '0', 'tr', 193, '10531', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (194, 2, 1, 28, 'null', 'Pepsi', 'uploads/big/59cfa63439cdde9c20738288b065e88c.png', 'uploads/thumb/59cfa63439cdde9c20738288b065e88c.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 23:53:12', 0, 0, 1, '', NULL, 4, '0', '0', 'tr', 194, '16842', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (195, 2, 1, 28, 'null', 'Fanta', 'uploads/big/cb6003c98f13b5353c7e54ab1ddf5aa3.png', 'uploads/thumb/cb6003c98f13b5353c7e54ab1ddf5aa3.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 23:53:29', 0, 0, 1, '', NULL, 5, '0', '0', 'tr', 195, '14621', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (196, 2, 1, 28, 'null', 'Sprite', 'uploads/big/3179fa63f915cd9184826046bcc091ae.png', 'uploads/thumb/3179fa63f915cd9184826046bcc091ae.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 23:53:59', 0, 0, 1, '', NULL, 6, '0', '0', 'tr', 196, '12475', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (197, 2, 1, 28, 'null', 'Menderin Cola', 'uploads/big/90e807485cf1dba06ea7f3d0a5455b4f.png', 'uploads/thumb/90e807485cf1dba06ea7f3d0a5455b4f.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 23:55:42', 0, 0, 1, '', NULL, 7, '0', '0', 'tr', 197, '12804', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (198, 2, 1, 28, 'null', 'Menderin portakal', 'uploads/big/50766e78dd59a02c4b2d04310980fe81.png', 'uploads/thumb/50766e78dd59a02c4b2d04310980fe81.png', 0, '40', 0, '', '', 0, 1, '2024-06-05 23:56:12', 0, 0, 1, '', NULL, 9, '0', '0', 'tr', 198, '14960', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (199, 2, 1, 28, 'null', 'Menderin Elmalar', 'uploads/big/8750b5b6bbad8999d109bc26c126010f.png', 'uploads/thumb/8750b5b6bbad8999d109bc26c126010f.png', 0, '40', 0, '', '', 0, 1, '2024-06-06 12:08:54', 0, 0, 1, '', NULL, 10, '0', '0', 'tr', 199, '11035', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (200, 2, 1, 28, 'null', 'Menderin Diyet', 'uploads/big/38d07dd738f6673d1483b9f0dc97102c.png', 'uploads/thumb/38d07dd738f6673d1483b9f0dc97102c.png', 0, '40', 0, '', '', 0, 1, '2024-06-06 12:09:50', 0, 0, 1, '', NULL, 8, '0', '0', 'tr', 200, '15309', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (201, 2, 1, 28, 'null', 'Sarıyer Kola', 'uploads/big/e884c989ca901fe7deb0c5da5dbc11e0.png', 'uploads/thumb/e884c989ca901fe7deb0c5da5dbc11e0.png', 0, '40', 0, '', '', 0, 1, '2024-06-06 12:11:00', 0, 0, 1, '', NULL, 171, '0', '0', 'tr', 201, '18914', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (202, 2, 1, 28, 'null', 'Sarıyer Portakal', 'uploads/big/2ac7ace451326ed1bddfbce4e33454c5.png', 'uploads/thumb/2ac7ace451326ed1bddfbce4e33454c5.png', 0, '40', 0, '', '', 0, 1, '2024-06-06 12:11:58', 0, 0, 1, '', NULL, 172, '0', '0', 'tr', 202, '14013', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (203, 2, 1, 28, 'null', 'Sarıyer Gazoz', 'uploads/big/c77f51ba2a9176f31e2a01c6ac3f3f31.png', 'uploads/thumb/c77f51ba2a9176f31e2a01c6ac3f3f31.png', 0, '40', 0, '', '', 0, 1, '2024-06-06 12:12:42', 0, 0, 1, '', NULL, 173, '0', '0', 'tr', 203, '15834', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (204, 2, 1, 28, 'null', 'Pepsi 1L', 'uploads/big/51aeb1268fe571c435cf85de5423efbc.png', 'uploads/thumb/51aeb1268fe571c435cf85de5423efbc.png', 0, '60', 0, '', '', 0, 1, '2024-06-06 12:13:53', 0, 0, 1, '', NULL, 174, '0', '0', 'tr', 204, '14361', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (205, 2, 1, 27, 'null', 'Doğu Salatası', 'uploads/big/cb0c9d3fe57b03e2e986e1d723554d76.png', 'uploads/thumb/cb0c9d3fe57b03e2e986e1d723554d76.png', 0, '100', 0, '', '', 0, 1, '2024-06-06 12:40:15', 0, 0, 1, '', NULL, 175, '0', '0', 'tr', 205, '17936', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (206, 2, 1, 27, 'null', 'Fattuş', 'uploads/big/35e13ae1ece48bfc7460f68c271eedab.png', 'uploads/thumb/35e13ae1ece48bfc7460f68c271eedab.png', 0, '100', 0, '', '', 0, 1, '2024-06-06 12:40:36', 0, 0, 1, '', NULL, 176, '0', '0', 'tr', 206, '15682', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (207, 2, 1, 27, 'null', 'Roka', 'uploads/big/e3619a4be9d52219245dd19993e12aca.png', 'uploads/thumb/e3619a4be9d52219245dd19993e12aca.png', 0, '100', 0, '', '', 0, 1, '2024-06-06 12:40:56', 0, 0, 1, '', NULL, 177, '0', '0', 'tr', 207, '10694', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (208, 2, 1, 27, 'null', 'Sezar', 'uploads/big/df1aa34707e8d7fc0a2891d420e64fed.png', 'uploads/thumb/df1aa34707e8d7fc0a2891d420e64fed.png', 0, '125', 0, '', '', 0, 1, '2024-06-06 12:41:22', 0, 0, 1, '', NULL, 178, '0', '0', 'tr', 208, '10179', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (209, 2, 1, 27, 'null', 'Tabbule', 'uploads/big/182a12f6ce150004f862e948cf1d1f9b.png', 'uploads/thumb/182a12f6ce150004f862e948cf1d1f9b.png', 0, '140', 0, '', '', 0, 1, '2024-06-06 12:41:38', 0, 0, 1, '', NULL, 179, '0', '0', 'tr', 209, '10915', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (210, 2, 1, 27, 'null', 'Bonfile Tavuk Salatası', 'uploads/big/ef2d16b87174090d7547febfeb4d30fa.png', 'uploads/thumb/ef2d16b87174090d7547febfeb4d30fa.png', 0, '150', 0, '', '', 0, 1, '2024-06-06 12:41:54', 0, 0, 1, '', NULL, 180, '0', '0', 'tr', 210, '17612', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (211, 2, 1, 26, 'null', 'Peynirli Börek', 'uploads/big/3a2e20a917d92ed8d89defc1871de9a2.png', 'uploads/thumb/3a2e20a917d92ed8d89defc1871de9a2.png', 0, '100', 0, '', '3 Lü', 0, 1, '2024-06-06 12:42:37', 0, 0, 1, '', NULL, 181, '0', '0', 'tr', 211, '13152', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (212, 2, 1, 26, 'null', 'Mercimek Çorbası', 'uploads/big/b8264e5fb9ca3846d52e6b78cdb34aac.png', 'uploads/thumb/b8264e5fb9ca3846d52e6b78cdb34aac.png', 0, '55', 0, '', '', 0, 1, '2024-06-06 12:42:52', 0, 0, 1, '', NULL, 182, '0', '0', 'tr', 212, '17946', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (213, 2, 1, 26, 'null', 'Içli Köfte', 'uploads/big/becec3ecfb0e580df54cde929700a63e.png', 'uploads/thumb/becec3ecfb0e580df54cde929700a63e.png', 0, '75', 0, '', '1 Adet', 0, 1, '2024-06-06 12:43:18', 0, 0, 1, '', NULL, 183, '0', '0', 'tr', 213, '11546', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (214, 2, 1, 26, 'null', 'Izgara Içli Köfte', 'uploads/big/8da8ef53472fdd385e606de46bc11202.png', 'uploads/thumb/8da8ef53472fdd385e606de46bc11202.png', 0, '100', 0, '', '1 Adet', 0, 1, '2024-06-06 12:43:47', 0, 0, 1, '', NULL, 184, '0', '0', 'tr', 214, '15470', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (215, 2, 1, 26, 'null', 'Kızartılmış Patates Tabağı', 'uploads/big/84eef2e95d1e76d6ac31b0cb91c9841b.png', 'uploads/thumb/84eef2e95d1e76d6ac31b0cb91c9841b.png', 0, '100', 0, '', '', 0, 1, '2024-06-06 12:44:04', 0, 0, 1, '', NULL, 185, '0', '0', 'tr', 215, '17842', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (216, 2, 1, 26, 'null', 'Ince Kıyılmış Humus', 'uploads/big/a5e80acdbcbaea1008355250cd8c2105.png', 'uploads/thumb/a5e80acdbcbaea1008355250cd8c2105.png', 0, '105', 0, '', '', 0, 1, '2024-06-06 12:44:29', 0, 0, 1, '', NULL, 186, '0', '0', 'tr', 216, '15612', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (217, 2, 1, 26, 'null', 'Beyruti Humus', 'uploads/big/280e37b92d6f4d73addf94b56fee553c.png', 'uploads/thumb/280e37b92d6f4d73addf94b56fee553c.png', 0, '105', 0, '', '', 0, 1, '2024-06-06 12:44:45', 0, 0, 1, '', NULL, 187, '0', '0', 'tr', 217, '16172', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (218, 2, 1, 26, 'null', 'Dönerle Humus', 'uploads/big/2ac9e8f200ed0de8cef98c91be725e5d.png', 'uploads/thumb/2ac9e8f200ed0de8cef98c91be725e5d.png', 0, '160', 0, '', '', 0, 1, '2024-06-06 12:45:02', 0, 0, 1, '', NULL, 188, '0', '0', 'tr', 218, '12915', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (219, 2, 1, 25, 'null', 'Safranlı Tavuklu Pilav', 'uploads/big/2ae0aa849550f655ef7bf4da1b1cfe8c.png', 'uploads/thumb/2ae0aa849550f655ef7bf4da1b1cfe8c.png', 0, '225', 0, '', '', 0, 1, '2024-06-06 12:45:28', 0, 0, 1, '', NULL, 189, '0', '0', 'tr', 219, '16857', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (220, 2, 1, 25, 'null', 'Tavuklu Mendi', 'uploads/big/54ed60fe534cdf998de6ca99a0ea4224.png', 'uploads/thumb/54ed60fe534cdf998de6ca99a0ea4224.png', 0, '225', 0, '', '', 0, 1, '2024-06-06 12:45:44', 0, 0, 1, '', NULL, 190, '0', '0', 'tr', 220, '12851', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (221, 2, 1, 25, 'null', 'Safranlı Etli Pilav', 'uploads/big/d14c5e9801166def3b5e72da09ddc6e2.png', 'uploads/thumb/d14c5e9801166def3b5e72da09ddc6e2.png', 0, '400', 0, '', '', 0, 1, '2024-06-06 12:45:59', 0, 0, 1, '', NULL, 191, '0', '0', 'tr', 221, '10398', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (222, 2, 1, 25, 'null', 'Etli Mendi', 'uploads/big/f75099d9d220e14a5fd3db9b420e2844.png', 'uploads/thumb/f75099d9d220e14a5fd3db9b420e2844.png', 0, '400', 0, '', '', 0, 1, '2024-06-06 12:46:15', 0, 0, 1, '', NULL, 192, '0', '0', 'tr', 222, '13896', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (223, 2, 1, 24, 'null', 'Falafel Dürüm', 'uploads/big/86fdd51ad99717dfed886aebdbfb3aa6.png', 'uploads/thumb/86fdd51ad99717dfed886aebdbfb3aa6.png', 0, '75', 0, '', '', 0, 1, '2024-06-06 12:47:21', 0, 0, 1, '', NULL, 193, '0', '0', 'tr', 223, '14297', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (224, 2, 1, 24, 'null', 'Duble Falafel Dürüm', 'uploads/big/1f01fa8cbeb034d4b71af5b16b0a37c6.png', 'uploads/thumb/1f01fa8cbeb034d4b71af5b16b0a37c6.png', 0, '90', 0, '', '', 0, 1, '2024-06-06 12:47:36', 0, 0, 1, '', NULL, 194, '0', '0', 'tr', 224, '15743', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (225, 2, 1, 24, 'null', 'Falafel Tabağı', 'uploads/big/805411e460c62b89cef7859702cc0055.png', 'uploads/thumb/805411e460c62b89cef7859702cc0055.png', 0, '100', 0, '', '7 Li', 0, 1, '2024-06-06 12:47:58', 0, 0, 1, '', NULL, 195, '0', '0', 'tr', 225, '18375', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (226, 2, 1, 24, 'null', 'Falafel Menü', 'uploads/big/67eea39d77a493ce7709f806c2aabc85.png', 'uploads/thumb/67eea39d77a493ce7709f806c2aabc85.png', 0, '110', 0, '', '', 0, 1, '2024-06-06 12:49:06', 0, 0, 1, '', NULL, 196, '0', '0', 'tr', 226, '15746', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (227, 2, 1, 24, 'null', 'Duble Falafel Menü', 'uploads/big/1293c719e1d00621c8e1d2da757a9e23.png', 'uploads/thumb/1293c719e1d00621c8e1d2da757a9e23.png', 0, '125', 0, '', '', 0, 1, '2024-06-06 12:49:19', 0, 0, 1, '', NULL, 197, '0', '0', 'tr', 227, '17034', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (228, 2, 1, 23, 'null', 'Çıtır Bütün Tavuk', 'uploads/big/e07d5c0814ca51847a932e1a6dc1112c.png', 'uploads/thumb/e07d5c0814ca51847a932e1a6dc1112c.png', 0, '225', 0, '', '', 0, 1, '2024-06-06 12:50:16', 0, 0, 1, '', NULL, 198, '0', '0', 'tr', 228, '13408', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (229, 2, 1, 23, 'null', 'Çıtır Tavuk', 'uploads/big/5ec8156c38749ba3d6ef633885175123.png', 'uploads/thumb/5ec8156c38749ba3d6ef633885175123.png', 0, '225', 0, '', '', 0, 1, '2024-06-06 12:50:34', 0, 0, 1, '', NULL, 199, '0', '0', 'tr', 229, '13715', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (230, 2, 1, 23, 'null', 'Eskalop Menü', 'uploads/big/2f7a2e2f98b418097ebdcca08fd862f9.png', 'uploads/thumb/2f7a2e2f98b418097ebdcca08fd862f9.png', 0, '225', 0, '', '', 0, 1, '2024-06-06 12:50:54', 0, 0, 1, '', NULL, 200, '0', '0', 'tr', 230, '18194', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (231, 2, 1, 23, 'null', 'Meksika Usulü Tavuk Menü', 'uploads/big/cfdf769bf5ef954099c74edb78005d4e.png', 'uploads/thumb/cfdf769bf5ef954099c74edb78005d4e.png', 0, '240', 0, '', '', 0, 1, '2024-06-06 12:51:14', 0, 0, 1, '', NULL, 201, '0', '0', 'tr', 231, '15701', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (232, 2, 1, 23, 'null', 'Supreme Menü', 'uploads/big/04b57702c7df370ace4886cd4b39707b.png', 'uploads/thumb/04b57702c7df370ace4886cd4b39707b.png', 0, '250', 0, '', '', 0, 1, '2024-06-06 12:51:31', 0, 0, 1, '', NULL, 202, '0', '0', 'tr', 232, '12507', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (233, 2, 1, 23, 'null', 'Fajita Menü', 'uploads/big/7ac4ce453da6bb2a89b8ef7502a27174.png', 'uploads/thumb/7ac4ce453da6bb2a89b8ef7502a27174.png', 0, '250', 0, '', '', 0, 1, '2024-06-06 12:51:45', 0, 0, 1, '', NULL, 203, '0', '0', 'tr', 233, '17094', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (234, 2, 1, 23, 'null', 'Francisco Menü', 'uploads/big/557b644fb6adc8aaf0024e7eb1d60093.png', 'uploads/thumb/557b644fb6adc8aaf0024e7eb1d60093.png', 0, '250', 0, '', '', 0, 1, '2024-06-06 12:52:06', 0, 0, 1, '', NULL, 204, '0', '0', 'tr', 234, '12081', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (235, 2, 1, 23, 'null', 'Grilli Tavuk Menü', 'uploads/big/bc8cdc3d92d8f5c192da5737b4865e55.png', 'uploads/thumb/bc8cdc3d92d8f5c192da5737b4865e55.png', 0, '225', 0, '', '', 0, 1, '2024-06-06 12:52:25', 0, 0, 1, '', NULL, 205, '0', '0', 'tr', 235, '10438', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (236, 2, 1, 23, 'null', 'Tavuk Burger Menü', 'uploads/big/b14ffd9fee0bc922b3b34890e4d3d727.png', 'uploads/thumb/b14ffd9fee0bc922b3b34890e4d3d727.png', 0, '225', 0, '', '', 0, 1, '2024-06-25 15:53:54', 0, 0, 1, '', NULL, 206, '0', '0', 'tr', 236, '18095', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (237, 2, 1, 23, 'null', 'Zinger Burger Menü', 'uploads/big/7e8ecf74715893bed54f17d28fc357ee.png', 'uploads/thumb/7e8ecf74715893bed54f17d28fc357ee.png', 0, '230', 0, '', '', 0, 1, '2024-06-25 15:54:09', 0, 0, 1, '', NULL, 207, '0', '0', 'tr', 237, '14602', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (238, 2, 1, 23, 'null', 'Et Burger Menü', 'uploads/big/af7689882cfcdd1486027684fdd9dbe9.png', 'uploads/thumb/af7689882cfcdd1486027684fdd9dbe9.png', 0, '320', 0, '', '', 0, 1, '2024-06-25 15:54:24', 0, 0, 1, '', NULL, 208, '0', '0', 'tr', 238, '11842', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (239, 2, 1, 22, 'null', 'Suriye Lavaşı Ile Kızartılmış Patates Dürüm', '', '', 0, '85', 0, '', '', 0, 1, '2024-06-06 12:54:49', 0, 0, 1, '', NULL, 209, '0', '0', 'tr', 239, '11650', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (240, 2, 1, 22, 'null', 'Türk Ekmeği Ile Kızartılmış Patates Dürüm', 'uploads/big/4e85de9362f2c81958894e967779474c.png', 'uploads/thumb/4e85de9362f2c81958894e967779474c.png', 0, '90', 0, '', '', 0, 1, '2024-06-06 12:55:03', 0, 0, 1, '', NULL, 210, '0', '0', 'tr', 240, '10175', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (241, 2, 1, 22, 'null', 'Kaşarlı Patates Kızartması Dürüm', 'uploads/big/ef11faa28a04e13c71ad082ecb844165.png', 'uploads/thumb/ef11faa28a04e13c71ad082ecb844165.png', 0, '110', 0, '', '', 0, 1, '2024-06-06 12:55:17', 0, 0, 1, '', NULL, 211, '0', '0', 'tr', 241, '19104', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (242, 2, 1, 22, 'null', 'Çıtır Tavuk Dürüm', 'uploads/big/fc04bc225055d9398fd746e1b05c95db.png', 'uploads/thumb/fc04bc225055d9398fd746e1b05c95db.png', 0, '130', 0, '', '', 0, 1, '2024-06-06 12:55:33', 0, 0, 1, '', NULL, 212, '0', '0', 'tr', 242, '16258', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (243, 2, 1, 22, 'null', 'Zinger Dürüm', 'uploads/big/db429f7a9027c4109dc0aab0768a8273.png', 'uploads/thumb/db429f7a9027c4109dc0aab0768a8273.png', 0, '130', 0, '', '', 0, 1, '2024-06-06 12:55:49', 0, 0, 1, '', NULL, 213, '0', '0', 'tr', 243, '14985', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (244, 2, 1, 22, 'null', 'Acılı Dürüm', 'uploads/big/b19937fe41110605eb6f925a1a38c3c1.png', 'uploads/thumb/b19937fe41110605eb6f925a1a38c3c1.png', 0, '130', 0, '', '', 0, 1, '2024-06-06 12:56:04', 0, 0, 1, '', NULL, 214, '0', '0', 'tr', 244, '14158', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (245, 2, 1, 22, 'null', 'Eskalop Dürüm', 'uploads/big/3846bfb3555474ddfd34491e2904c2b1.png', 'uploads/thumb/3846bfb3555474ddfd34491e2904c2b1.png', 0, '130', 0, '', '', 0, 1, '2024-06-06 12:56:30', 0, 0, 1, '', NULL, 215, '0', '0', 'tr', 245, '19405', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (246, 2, 1, 22, 'null', 'Tavuk Bonfile Dürüm', 'uploads/big/88c4385818800c64810b705576e1bb00.png', 'uploads/thumb/88c4385818800c64810b705576e1bb00.png', 0, '130', 0, '', '', 0, 1, '2024-06-06 12:56:50', 0, 0, 1, '', NULL, 216, '0', '0', 'tr', 246, '18793', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (247, 2, 1, 22, 'null', 'Meksika Usulü Tavuk Dürüm', 'uploads/big/a45ae6a655ebd47f0386b9558c34587b.png', 'uploads/thumb/a45ae6a655ebd47f0386b9558c34587b.png', 0, '140', 0, '', '', 0, 1, '2024-06-06 12:57:07', 0, 0, 1, '', NULL, 217, '0', '0', 'tr', 247, '10975', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (248, 2, 1, 22, 'null', 'Fajita Dürüm', 'uploads/big/681e82a3a690c89ff85cbaf825d03a6f.png', 'uploads/thumb/681e82a3a690c89ff85cbaf825d03a6f.png', 0, '150', 0, '', '', 0, 1, '2024-06-06 12:57:20', 0, 0, 1, '', NULL, 218, '0', '0', 'tr', 248, '18529', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (249, 2, 1, 22, 'null', 'Superme Dürüm', 'uploads/big/3cde493a20a0409c3683961bc3274d08.png', 'uploads/thumb/3cde493a20a0409c3683961bc3274d08.png', 0, '150', 0, '', '', 0, 1, '2024-06-06 12:57:42', 0, 0, 1, '', NULL, 219, '0', '0', 'tr', 249, '16271', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (250, 2, 1, 22, 'null', 'Francisco Dürüm', 'uploads/big/84c69c23a939cc03f1f5ff158e720fe0.png', 'uploads/thumb/84c69c23a939cc03f1f5ff158e720fe0.png', 0, '150', 0, '', '', 0, 1, '2024-06-06 12:57:55', 0, 0, 1, '', NULL, 220, '0', '0', 'tr', 250, '16714', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (251, 2, 1, 22, 'null', 'Tavuk Burger', 'uploads/big/7845e9dd07fdc8954f2fea22af71dabb.png', 'uploads/thumb/7845e9dd07fdc8954f2fea22af71dabb.png', 0, '130', 0, '', '', 0, 1, '2024-06-06 12:58:28', 0, 0, 1, '', NULL, 221, '0', '0', 'tr', 251, '15236', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (252, 2, 1, 22, 'null', 'Zinger Burger', 'uploads/big/e16cd9cc7d05b3a786fa89c085e40321.png', 'uploads/thumb/e16cd9cc7d05b3a786fa89c085e40321.png', 0, '135', 0, '', '', 0, 1, '2024-06-06 12:58:43', 0, 0, 1, '', NULL, 222, '0', '0', 'tr', 252, '19457', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (253, 2, 1, 22, 'null', 'Et Burger', 'uploads/big/6e170824f21cc74a42fa82735d062882.png', 'uploads/thumb/6e170824f21cc74a42fa82735d062882.png', 0, '185', 0, '', '', 0, 1, '2024-06-06 12:59:03', 0, 0, 1, '', NULL, 223, '0', '0', 'tr', 253, '18430', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (254, 2, 1, 21, 'null', 'Tavuk Döner Dürüm', 'uploads/big/bc221721853246a5455a87f96c7ebc1f.png', 'uploads/thumb/bc221721853246a5455a87f96c7ebc1f.png', 0, '85', 0, '', '', 0, 1, '2024-06-06 13:00:01', 0, 0, 1, '', NULL, 224, '0', '0', 'tr', 254, '10493', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (255, 2, 1, 21, 'null', 'Duble Tavuk Döner Dürüm', 'uploads/big/7351775f385f454dd9ff610d9364fcbc.png', 'uploads/thumb/7351775f385f454dd9ff610d9364fcbc.png', 0, '100', 0, '', '', 0, 1, '2024-06-06 13:00:37', 0, 0, 1, '', NULL, 225, '0', '0', 'tr', 255, '19320', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (256, 2, 1, 21, 'null', 'Kaşarlı Tavuk Döner Dürüm', 'uploads/big/c3da874a1349e3808ce5acdb34f223b7.png', 'uploads/thumb/c3da874a1349e3808ce5acdb34f223b7.png', 0, '130', 0, '', '', 0, 1, '2024-06-06 13:00:55', 0, 0, 1, '', NULL, 226, '0', '0', 'tr', 256, '15061', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (257, 2, 1, 21, 'null', 'Tavuk Döner Menü', 'uploads/big/a03cb9c309201d76f518e6d0ac9e0e98.png', 'uploads/thumb/a03cb9c309201d76f518e6d0ac9e0e98.png', 0, '140', 0, '', '', 0, 1, '2024-06-06 13:01:13', 0, 0, 1, '', NULL, 227, '0', '0', 'tr', 257, '16529', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (258, 2, 1, 21, 'null', 'Duble Tavuk Döner Dürüm Menü', 'uploads/big/d687fb10f16f3427fcd89fed876038ab.png', 'uploads/thumb/d687fb10f16f3427fcd89fed876038ab.png', 0, '250', 0, '', '', 0, 1, '2024-06-06 13:01:28', 0, 0, 1, '', NULL, 228, '0', '0', 'tr', 258, '13109', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (259, 2, 1, 21, 'null', 'Tavuk Dönerle Humus Tabağı', 'uploads/big/09c707bc6a795a1269113faba778b559.png', 'uploads/thumb/09c707bc6a795a1269113faba778b559.png', 0, '160', 0, '', '', 0, 1, '2024-06-06 13:01:47', 0, 0, 1, '', NULL, 229, '0', '0', 'tr', 259, '16731', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (260, 2, 1, 21, 'null', 'Ekstra Mantarlı Kaşarlı Tavuk Döner Menü', 'uploads/big/2bae410d28cfa83c64ae96d139192698.png', 'uploads/thumb/2bae410d28cfa83c64ae96d139192698.png', 0, '190', 0, '', '', 0, 1, '2024-06-06 13:02:10', 0, 0, 1, '', NULL, 230, '0', '0', 'tr', 260, '13720', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (261, 2, 1, 21, 'null', 'Mantarlı Kaşarlı Maria Tavuk Döner Menü', 'uploads/big/03743c16ae047ed3de24e9358bdd862f.png', 'uploads/thumb/03743c16ae047ed3de24e9358bdd862f.png', 0, '190', 0, '', '', 0, 1, '2024-06-06 13:03:01', 0, 0, 1, '', NULL, 231, '0', '0', 'tr', 261, '17284', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (262, 2, 1, 21, 'null', 'Pilavlı Tavuk Döner Menü', 'uploads/big/7edd6ba274eb5f842b748c8e500f4e3b.png', 'uploads/thumb/7edd6ba274eb5f842b748c8e500f4e3b.png', 0, '225', 0, '', '', 0, 1, '2024-06-06 13:03:39', 0, 0, 1, '', NULL, 232, '0', '0', 'tr', 262, '17946', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (263, 2, 1, 21, 'null', 'Yarım Kilo Tavuk Döner', 'uploads/big/d0264420d42910de3094e1bd90b44a4a.png', 'uploads/thumb/d0264420d42910de3094e1bd90b44a4a.png', 0, '290', 0, '', '', 0, 1, '2024-06-06 13:04:01', 0, 0, 1, '', NULL, 233, '0', '0', 'tr', 263, '18946', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (264, 2, 1, 21, 'null', 'Bir Kilo Tavuk Döner', 'uploads/big/b4b125f40f5e085ff78279bf55d5d489.png', 'uploads/thumb/b4b125f40f5e085ff78279bf55d5d489.png', 0, '550', 0, '', '', 0, 1, '2024-06-06 13:04:13', 0, 0, 1, '', NULL, 234, '0', '0', 'tr', 264, '11892', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (269, 3, 2, 46, 'null', 'Dönertasche Menü', 'uploads/big/d3f091ff5bd4ca051f9d3b2afc7a09e8.png', 'uploads/thumb/d3f091ff5bd4ca051f9d3b2afc7a09e8.png', 0, '11.50', 0, '', '', 0, 1, '2024-06-06 15:03:18', 0, 0, 1, '', NULL, 1, '0', '0', 'de', 269, '24872', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (270, 3, 2, 46, 'null', 'Wrap Menü', 'uploads/big/93a26c1ad9da7e523f46ebe7aaeff19d.png', 'uploads/thumb/93a26c1ad9da7e523f46ebe7aaeff19d.png', 0, '11.90', 0, '', '', 0, 1, '2024-06-06 15:04:55', 0, 0, 1, '', NULL, 2, '0', '0', 'de', 270, '27316', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (271, 3, 2, 46, 'null', 'Baguette Menü', 'uploads/big/064a74de3bcf3f575b709b7fb1028e48.png', 'uploads/thumb/064a74de3bcf3f575b709b7fb1028e48.png', 0, '12.50', 0, '', '', 0, 1, '2024-06-06 15:04:15', 0, 0, 1, '', NULL, 3, '0', '0', 'de', 271, '24395', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (272, 3, 2, 46, 'null', 'Türkische Pizza', 'uploads/big/cff8894e87dafab4eb3976376eaf14f1.png', 'uploads/thumb/cff8894e87dafab4eb3976376eaf14f1.png', 0, '12.50', 0, '', '', 0, 1, '2024-06-06 15:04:47', 0, 0, 1, '', NULL, 4, '0', '0', 'de', 272, '25291', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (273, 3, 2, 46, 'null', 'Burger Menü', 'uploads/big/bd6bec34b6871ea76247b6bcba3ffc59.png', 'uploads/thumb/bd6bec34b6871ea76247b6bcba3ffc59.png', 0, '11.50', 0, '', '', 0, 1, '2024-06-06 15:05:15', 0, 0, 1, '', NULL, 5, '0', '0', 'de', 273, '24750', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (274, 3, 2, 46, 'null', 'Crispy Chicken Menü  (5 Stk.)', 'uploads/big/a57a56c7f79f809f2de5619bab12fcac.png', 'uploads/thumb/a57a56c7f79f809f2de5619bab12fcac.png', 0, '11.50', 0, '', '', 0, 1, '2024-06-06 15:06:10', 0, 0, 1, '', NULL, 6, '0', '0', 'de', 274, '22615', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (275, 3, 2, 46, 'null', 'Pizza Menü', 'uploads/big/1d4b88a2e0d24c6f291b63acd73b9017.png', 'uploads/thumb/1d4b88a2e0d24c6f291b63acd73b9017.png', 0, '10.50', 0, '', '', 0, 1, '2024-06-06 15:06:58', 0, 0, 1, '', NULL, 7, '0', '0', 'de', 275, '28769', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (276, 3, 2, 46, 'null', 'Kinder Menü  (5 Stk.)', 'uploads/big/aadb80bcb0eae8fe762f8e9d0c1cb147.png', 'uploads/thumb/aadb80bcb0eae8fe762f8e9d0c1cb147.png', 0, '8.50', 0, '', '', 0, 1, '2024-06-06 15:07:17', 0, 0, 1, '', NULL, 8, '0', '0', 'de', 276, '29386', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (277, 3, 2, 32, 'null', 'Döner Tasche', '', '', 0, '6.80', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '2024-06-06 15:37:04', 0, 0, 1, '', NULL, 9, '0', '0', 'de', 277, '23165', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (278, 3, 2, 32, 'null', 'Döner Dürüm', '', '', 0, '7.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '2024-06-06 15:37:34', 0, 0, 1, '', NULL, 10, '0', '0', 'de', 278, '28670', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (279, 3, 2, 32, 'null', 'Döner Box', '', '', 0, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"7.00\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"7.00\",\"slug\":\"slug_1\"}]}', 1, '', '', 0, 1, '2024-06-09 18:14:28', 0, 0, 1, '', NULL, 11, '0', '0', 'de', 279, '23562', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (280, 3, 2, 32, 'null', 'Döner Baguette', '', '', 0, '8.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '2024-06-06 15:38:12', 0, 0, 1, '', NULL, 12, '0', '0', 'de', 280, '24360', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (281, 3, 2, 32, 'null', 'Jumbo Döner', '', '', 0, '8.50', 0, '', '(a,c,f,g,i,j,k1,2,3,4,11,12)', 0, 1, '2024-06-06 15:40:24', 0, 0, 1, '', NULL, 13, '0', '0', 'de', 281, '27542', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (282, 3, 2, 32, 'null', 'Lahmacun Döner', '', '', 0, '8.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '2024-06-06 15:40:44', 0, 0, 1, '', NULL, 14, '0', '0', 'de', 282, '25063', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (283, 3, 2, 32, 'null', 'Döner Salat', '', '', 0, '9.50', 0, '', '(a,c,f,g,i,j,1,2,3,4,12)', 0, 1, '2024-06-06 15:41:06', 0, 0, 1, '', NULL, 15, '0', '0', 'de', 283, '25320', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (284, 3, 2, 32, 'null', 'Döner Portion kl', '', '', 0, '7.00', 0, '', '(a,f,g,i,j,12)', 0, 1, '2024-06-06 15:43:24', 0, 0, 1, '', NULL, 16, '0', '0', 'de', 284, '25172', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (285, 3, 2, 32, 'null', 'Döner Portion gr', '', '', 0, '9.50', 0, '', '(a,f,g,i,j,12)', 0, 1, '2024-06-06 15:43:41', 0, 0, 1, '', NULL, 17, '0', '0', 'de', 285, '27890', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (286, 3, 2, 32, 'null', 'Döner Überbacken kl', '', '', 0, '7.50', 0, '', '(a,f,g,i,j,12)', 0, 1, '2024-06-06 15:44:02', 0, 0, 1, '', NULL, 18, '0', '0', 'de', 286, '23501', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (287, 3, 2, 32, 'null', 'Döner Überbacken gr', '', '', 0, '9.90', 0, '', '(a,f,g,i,j,12)', 0, 1, '2024-06-06 15:44:17', 0, 0, 1, '', NULL, 19, '0', '0', 'de', 287, '28310', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (288, 3, 2, 32, 'null', 'Döner Teller', '', '', 0, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"11.50\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"11.50\",\"slug\":\"slug_1\"}]}', 1, '', '(a,c,f,g,i,j,k,1,2,3,4,11 12)', 0, 1, '2024-06-09 17:57:58', 0, 0, 1, '', NULL, 20, '0', '0', 'de', 288, '22083', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (289, 3, 2, 33, 'null', 'Salat Tasche', '', '', 1, '5.90', 0, '', '(a,c,f,g,j,1,2,3,4,11)', 0, 1, '2024-06-06 15:51:20', 0, 0, 1, '', NULL, 21, '0', '0', 'de', 289, '23057', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (290, 3, 2, 33, 'null', 'Salat Dürüm', '', '', 1, '6.50', 0, '', '(a,c,f,g,j,1,2,3,4,11)', 0, 1, '2024-06-06 15:53:59', 0, 0, 1, '', NULL, 22, '0', '0', 'de', 290, '27054', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (291, 3, 2, 33, 'null', 'Türkische Pizza mit Salat', '', '', 0, '6.90', 0, '', '', 0, 1, '2024-06-06 15:55:06', 0, 0, 1, '', NULL, 23, '0', '0', 'de', 291, '27941', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (292, 3, 2, 33, 'null', 'Gemischter Salat kl', '', '', 1, '6.20', 0, '', '(a,c,f,g,j,1,2,3,4)', 0, 1, '2024-06-06 15:55:26', 0, 0, 1, '', NULL, 24, '0', '0', 'de', 292, '22685', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (293, 3, 2, 33, 'null', 'Gemischter Salat  gr', '', '', 1, '8.20', 0, '', '(a,c,f,g,j,1,2,3,4)', 0, 1, '2024-06-06 15:56:14', 0, 0, 1, '', NULL, 25, '0', '0', 'de', 293, '22034', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (294, 3, 2, 33, 'null', 'Thunfisch Salat', '', '', 0, '9.00', 0, '', '(a,c,f,g,j,1,2,3,4)', 0, 1, '2024-06-06 15:56:36', 0, 0, 1, '', NULL, 26, '0', '0', 'de', 294, '29058', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (295, 3, 2, 33, 'null', 'Bulgur Salat', '', '', 1, '4.90', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '2024-06-06 15:57:16', 0, 0, 1, '', NULL, 27, '0', '0', 'de', 295, '24675', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (308, 3, 2, 34, 'null', 'Gebratenes Gemüse Tasche', '', '', 1, '5.90', 0, '', '', 0, 1, '2024-06-06 18:53:07', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (309, 3, 2, 34, 'null', 'Gebratenes Gemüse Dürüm', '', '', 1, '6.90', 0, '', '', 0, 1, '2024-06-06 18:53:12', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (310, 3, 2, 34, 'null', 'Gebratenes Gemüse Box', '', '', 1, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"6.90\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"6.90\",\"slug\":\"slug_1\"}]}', 1, '', '', 0, 1, '2024-06-09 18:15:55', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (311, 3, 2, 34, 'null', 'Gebratenes Gemüse Teller', '', '', 1, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"11.00\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"11.00\",\"slug\":\"slug_1\"}]}', 1, '', '', 0, 1, '2024-06-09 18:16:10', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (312, 3, 2, 34, 'null', 'Falafel Tasche (3 stk)', '', '', 1, '6.00', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11)', 0, 1, '2024-06-06 18:53:29', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (313, 3, 2, 34, 'null', 'Falafel Dürüm (4 stk)', '', '', 1, '6.90', 0, '', '(a,c,f,g,i,j,1,2,3,4,11)', 0, 1, '2024-06-06 18:53:36', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (314, 3, 2, 34, 'null', 'Falafel Box (4 stk)', '', '', 1, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"6.50\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"6.50\",\"slug\":\"slug_1\"}]}', 1, '', '', 0, 1, '2024-06-09 18:15:19', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (315, 3, 2, 34, 'null', 'Falafel Salat (4 stk)', '', '', 1, '8.50', 0, '', '', 0, 1, '2024-06-06 18:53:47', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (316, 3, 2, 34, 'null', 'Falafel Teller (5 stk)', '', '', 1, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"10.50\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"10.50\",\"slug\":\"slug_1\"}]}', 1, '', '', 0, 1, '2024-06-09 18:00:25', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (317, 3, 2, 34, 'null', 'Linsensuppe (1 stk Brot)', '', '', 1, '4.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '2024-06-06 18:53:58', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (318, 3, 2, 35, NULL, 'Hamburger  ', '', '', 0, '6.20', 0, '', '(a,c,f,g,j,k,1,2,3,4)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (319, 3, 2, 35, NULL, 'Cheeseburger ', '', '', 0, '7.00', 0, '', '(a,c,f,g,j,k,1,2,3,4)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (320, 3, 2, 35, NULL, 'Big Burger ', '', '', 0, '7.50', 0, '', '(a,c,f,g,j,k,1,2,3,4)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (321, 3, 2, 35, NULL, 'Big Cheeseburger ', '', '', 0, '8.50', 0, '', '(a,c,f,g,j,k,1,2,3,4)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (322, 3, 2, 35, NULL, 'Chicken Burger', '', '', 0, '6.50', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (323, 3, 2, 35, NULL, 'Big Chicken Burger', '', '', 0, '7.50', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (324, 3, 2, 36, 'null', 'Bratwurst', '', '', 0, '3.50', 0, '', '(j,12)', 0, 1, '2024-06-09 18:17:59', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (325, 3, 2, 36, 'null', 'Currywurst', '', '', 0, '4.00', 0, '', '(j,4,12)', 0, 1, '2024-06-09 18:18:10', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (326, 3, 2, 36, 'null', 'Currywurst mit Pommes', '', '', 0, '7.00', 0, '', '(j,4,12)', 0, 1, '2024-06-09 18:18:20', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (327, 3, 2, 37, NULL, 'Pizzabrötchen', '', '', 0, '3.00', 0, '', '(a,c,g,1,2)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (328, 3, 2, 37, NULL, 'Gefüllt Mit Käse ', '', '', 0, '5.50', 0, '', '(a,c,g,1,2)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (329, 3, 2, 37, NULL, 'Mit Dönerfleisch ', '', '', 0, '7.50', 0, '', '(a,c,f,g,i,j,1,2,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (330, 3, 2, 37, NULL, 'Mit Sucuk      ', '', '', 0, '7.50', 0, '', '(a,c,g,1,2,3)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (331, 3, 2, 37, NULL, 'Mit Salami', '', '', 0, '6.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (332, 3, 2, 37, NULL, 'Mit Thunfisch Mit Oder Ohne Zwiebeln ', '', '', 0, '6.90', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (333, 3, 2, 37, NULL, 'Mit Spinat Und Feta Käse', '', '', 0, '7.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (334, 3, 2, 37, NULL, 'Mit Schinken Und Ananas', '', '', 0, '7.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (335, 3, 2, 37, NULL, 'Mit 2 Belägen Nach Wahl', '', '', 0, '7.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (336, 3, 2, 37, NULL, 'Kräuterbutter ', '', '', 0, '0.70', 0, '', '(g,1,2)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (344, 3, 2, 39, NULL, 'Pommes Baguette', '', '', 0, '7.00', 0, '', '(a,c,f,g,j,k,1,2,3,4,11)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (345, 3, 2, 39, NULL, 'Schinken Baguette', '', '', 0, '7.00', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (346, 3, 2, 39, NULL, 'Salami Baguette', '', '', 0, '7.00', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (347, 3, 2, 39, NULL, 'Sucuk Baguette ', '', '', 0, '7.50', 0, '', '(a,c,f,g,j,k,1,2,3,4,11)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (348, 3, 2, 39, NULL, 'Thunfisch Baguette', '', '', 0, '7.50', 0, '', '(a,c,f,g,j,k,1,2,3,4,11)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (349, 3, 2, 39, NULL, 'Falafel Baguette (4 stk) ', '', '', 0, '7.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (350, 3, 2, 39, NULL, 'Crispy Chicken Baguette', '', '', 0, '8.00', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (351, 3, 2, 38, 'null', 'Hähnchen Grill-Teller', '', '', 0, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"14.00\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"14.00\",\"slug\":\"slug_1\"}]}', 1, '', '(220g) (a,c,f,g,j,1,2,3,4,11)', 0, 1, '2024-06-09 18:02:33', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (352, 3, 2, 38, 'null', 'Kebap Spieß-Teller Lamm', '', '', 0, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"15.50\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"15.50\",\"slug\":\"slug_1\"}]}', 1, '', '(3 X 80g) (a,c,f,g,j,1,2,3,4,11)', 0, 1, '2024-06-09 18:03:22', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (353, 3, 2, 38, 'null', 'Merguez Grillteller', '', '', 0, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"15.50\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"15.50\",\"slug\":\"slug_1\"}]}', 1, '', '(a,c,f,g,j,1,2,3,4,11)', 0, 1, '2024-06-09 18:04:07', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (354, 3, 2, 38, 'null', 'Kombi Grill-Teller XL', '', '', 0, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"18.50\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"18.50\",\"slug\":\"slug_1\"}]}', 1, '', '(220g Hähnchen 1 Lammspieß 1 Merguez) (a,c,f,g,j,1,2,3,4,11)', 0, 1, '2024-06-09 18:05:06', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (355, 3, 2, 40, NULL, 'Pommes klein ', '', '', 1, '3.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (356, 3, 2, 40, NULL, 'Pommes groß ', '', '', 1, '4.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (357, 3, 2, 40, NULL, 'Pommes Spezial ', '', '', 1, '5.50', 0, '', '(a,c,f,g,j,1,2,3)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (358, 3, 2, 40, 'null', 'Potato Wedges', '', '', 2, '5.00', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '2024-06-06 18:52:13', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (359, 3, 2, 40, NULL, 'Reis Portion ', '', '', 1, '4.00', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (360, 3, 2, 40, NULL, 'Türkische Pizza ohne alles', '', '', 0, '3.50', 0, '', '(a,c,f,g,j,1,2,3,4,11)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (361, 3, 2, 41, 'null', 'Thunfisch', '', '', 0, '9.00', 0, '', '(26 x 15) (a,c,g,1,2)', 0, 1, '2024-06-09 18:19:56', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (362, 3, 2, 41, 'null', 'Schinken mit Salami', '', '', 0, '9.00', 0, '', '(26 x 15)', 0, 1, '2024-06-09 18:20:03', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (363, 3, 2, 41, 'null', 'Dönerfleisch mit Zwiebeln', '', '', 0, '9.00', 0, '', '(26 x 15)', 0, 1, '2024-06-09 18:20:10', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (364, 3, 2, 41, 'null', 'Spinat und Käse', '', '', 0, '9.00', 0, '', '(26 x 15)', 0, 1, '2024-06-09 18:20:22', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (365, 3, 2, 42, NULL, 'Mit Gouda Käse ', '', '', 0, '7.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (366, 3, 2, 42, NULL, 'Mit Gouda Und Feta Käse', '', '', 0, '8.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (367, 3, 2, 42, NULL, 'Mit Spinat ', '', '', 0, '8.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (368, 3, 2, 42, NULL, 'Mit Spinat Und Feta Käse', '', '', 0, '9.00', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (369, 3, 2, 42, NULL, 'Mit Schinken Und Salami', '', '', 0, '9.00', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (370, 3, 2, 42, NULL, 'Thunfisch  ', '', '', 0, '8.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (371, 3, 2, 42, 'null', 'Mit Dönerfleisch', '', '', 0, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Kalb\",\"price\":\"9.50\",\"slug\":\"slug_0\"},{\"name\":\"H\\u00e4hnchen\",\"price\":\"9.50\",\"slug\":\"slug_1\"},{\"name\":\"Gemischt\",\"price\":\"9.50\",\"slug\":\"slug_2\"}]}', 1, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '2024-06-09 18:23:32', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (372, 3, 2, 42, NULL, 'Vegetarisch (2 X Belag)', '', '', 0, '9.00', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (373, 3, 2, 42, NULL, 'Mit Sucuk ', '', '', 0, '9.00', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (374, 3, 2, 42, NULL, 'Mit Sucuk Und Ei ', '', '', 0, '9.50', 0, '', '(a,c,f,g,i,j,k,1,2,3,4,11 12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (375, 3, 2, 43, 'null', 'Margherita', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"6.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"8.00\",\"slug\":\"slug_1\"}]}', 1, '', '(A,C,G,1,2)', 0, 1, '2024-06-06 17:14:04', 0, 0, 1, '', NULL, 88, '0', '0', 'de', 297, '22459', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (376, 3, 2, 43, 'null', 'Salami', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.00\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.00\",\"slug\":\"slug_1\"}]}', 1, '', '(A,C,G,1,2,3)', 0, 1, '2024-06-06 17:16:05', 0, 0, 1, '', NULL, 89, '0', '0', 'de', 298, '28571', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (377, 3, 2, 43, 'null', 'Tonno', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.00\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.00\",\"slug\":\"slug_1\"}]}', 1, '', '(A,C,G,1,2)', 0, 1, '2024-06-06 17:16:52', 0, 0, 1, '', NULL, 90, '0', '0', 'de', 299, '25367', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (378, 3, 2, 43, 'null', 'Funghi', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.00\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.00\",\"slug\":\"slug_1\"}]}', 1, '', '(A,C,G,1,2)', 0, 1, '2024-06-06 17:18:16', 0, 0, 1, '', NULL, 91, '0', '0', 'de', 300, '26780', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (379, 3, 2, 43, 'null', 'Spinat', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.00\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.00\",\"slug\":\"slug_1\"}]}', 1, '', '', 0, 1, '2024-06-06 17:19:33', 0, 0, 1, '', NULL, 92, '0', '0', 'de', 301, '21309', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (380, 3, 2, 43, 'null', 'Prosciutto', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.00\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.00\",\"slug\":\"slug_1\"}]}', 1, '<p><br></p>', 'Mit Putenschinken\r\n(A,C,G,1,2,3)', 0, 1, '2024-06-06 17:26:13', 0, 0, 1, '', NULL, 93, '0', '0', 'de', 302, '28095', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (381, 3, 2, 43, 'null', 'Broccoli', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.00\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.00\",\"slug\":\"slug_1\"}]}', 1, '', '(A,C,G,1,2)', 0, 1, '2024-06-06 17:20:42', 0, 0, 1, '', NULL, 94, '0', '0', 'de', 303, '20123', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (382, 3, 2, 43, 'null', 'Hawai', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', 'Mit Putenschinken Und Ananas (A,C,G,1,2,3)', 0, 1, '2024-06-06 17:29:58', 0, 0, 1, '', NULL, 95, '0', '0', 'de', 304, '25471', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (383, 3, 2, 43, 'null', 'Dönerfleisch', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', '', 0, 1, '2024-06-06 17:22:01', 0, 0, 1, '', NULL, 96, '0', '0', 'de', 305, '25369', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (384, 3, 2, 43, 'null', 'Diavolo', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', 'Mit Rindersalami, Paprika Und Peperoni (A,C,G,1,2,3)', 0, 1, '2024-06-06 17:30:23', 0, 0, 1, '', NULL, 97, '0', '0', 'de', 306, '23862', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (385, 3, 2, 43, 'null', 'Mista', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', 'Mit Rindersalami, Putenschinken, Zwiebeln Und Paprika (A,C,G,1,2,3)', 0, 1, '2024-06-06 17:30:35', 0, 0, 1, '', NULL, 98, '0', '0', 'de', 307, '29618', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (386, 3, 2, 43, 'null', 'Quattro Stagioni', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', 'Mit Putenschinken, Champignons, Spinat Und Paprika (A,C,G,1,2,3)', 0, 1, '2024-06-06 17:30:50', 0, 0, 1, '', NULL, 99, '0', '0', 'de', 308, '26312', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (387, 3, 2, 43, 'null', 'Angora Chilli', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"8.00\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.90\",\"slug\":\"slug_1\"}]}', 1, '', 'Mit  Drehspieß -Dönerfleisch ( Wahlweise Mit Kalb-, Hähnchenfleisch Oder Gemischt) Champignons, Feta Käse Und Spinat (A,C,F,G,I,J,1,2,12)', 0, 1, '2024-06-06 18:59:32', 0, 0, 1, '', NULL, 100, '0', '0', 'de', 309, '27418', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (388, 3, 2, 43, 'null', 'Dolce Acido', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', 'Mit Paprika,Peperoni,Ananas Und Mais (A,C,G,1,2)', 0, 1, '2024-06-06 19:01:01', 0, 0, 1, '', NULL, 101, '0', '0', 'de', 310, '24186', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (389, 3, 2, 43, 'null', 'Supreme', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', 'Mit Spinat, Thunfisch Und Zwiebeln (A,C,F,G,I,1,2)', 0, 1, '2024-06-06 19:02:00', 0, 0, 1, '', NULL, 102, '0', '0', 'de', 311, '23071', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (390, 3, 2, 43, 'null', 'Vegetarisch', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', 'Mit Bis Zu Drei Vegetarischen Zutaten Nach Wahl (A,C,G,I,1,2)', 0, 1, '2024-06-06 19:02:55', 0, 0, 1, '', NULL, 103, '0', '0', 'de', 312, '29630', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (391, 3, 2, 43, 'null', 'Sucuk', '', '', 0, '{\"variant_name\":\"Gr\\u00f6\\u00dfe\",\"variant_options\":[{\"name\":\"Kl\",\"price\":\"7.50\",\"slug\":\"slug_0\"},{\"name\":\"Gr\",\"price\":\"9.50\",\"slug\":\"slug_1\"}]}', 1, '', '', 0, 1, '2024-06-06 19:03:18', 0, 0, 1, '', NULL, 104, '0', '0', 'de', 313, '29504', 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (392, 3, 2, 44, 'null', 'Dönerfleisch', '', '', 0, '2.00', 0, '', '(A,F,G,I,J,12)', 0, 1, '2024-06-09 18:27:27', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (393, 3, 2, 44, NULL, 'Gebratenes Gemüse', '', '', 0, '2.00', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (394, 3, 2, 44, 'null', 'Extra Brot', '', '', 0, '0.80', 0, '', '', 0, 1, '2024-06-09 18:27:40', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (395, 3, 2, 44, 'null', 'Feta Käse', '', '', 0, '0.80', 0, '', '', 0, 1, '2024-06-09 18:27:49', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (396, 3, 2, 44, NULL, 'Extra Soßen ', '', '', 0, '0.80', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (397, 3, 2, 44, NULL, 'Extra Nugget ', '', '', 0, '0.80', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (398, 3, 2, 44, NULL, 'Falafel Bällchen ', '', '', 0, '0.80', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (399, 3, 2, 44, NULL, 'Sigara Börek ', '', '', 0, '1.20', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (400, 3, 2, 47, 'null', 'Baklava', '', '', 0, '1.10', 0, '', '(1 Stk) (a,c,e,f,g,h)', 0, 1, '2024-06-09 18:29:36', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (401, 3, 2, 47, 'null', 'Baklava', '', '', 0, '6.00', 0, '', '(6 stk) (a,c,e,f,g,h)', 0, 1, '2024-06-09 18:29:47', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (402, 3, 2, 47, NULL, 'Oreo Donut', '', '', 0, '2.50', 0, '', '(a,c,e,f,g,12,12)', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (403, 3, 2, 47, NULL, 'Blueberry Muffin ', '', '', 0, '2.50', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (404, 3, 2, 47, NULL, 'Spaghettieis', '', '', 0, '2.50', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (405, 3, 2, 47, 'null', 'Belgische Waffeln mit Puderzucker', '', '', 0, '3.90', 0, '', '(2 stk)', 0, 1, '2024-06-09 18:30:21', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (406, 3, 2, 47, 'null', 'Belgische Waffeln mit Nutella', '', '', 0, '4.90', 0, '', '(2 stk) (a,c,e,f,g,h)', 0, 1, '2024-06-09 18:30:51', 0, 0, 1, '', NULL, 0, '0', '0', 'de', 0, NULL, 0, 0, '', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (407, 3, 2, 45, NULL, 'Coca-Cola 330ml', '', '', 0, '2.20', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (408, 3, 2, 45, NULL, 'Coca-Cola Zero 330ml', '', '', 0, '2.20', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (409, 3, 2, 45, NULL, 'Fanta Orange 330ml', '', '', 0, '2.20', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (410, 3, 2, 45, NULL, 'Fanta Exotic 330ml', '', '', 0, '2.20', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (411, 3, 2, 45, NULL, 'Mezzo Mix 330ml', '', '', 0, '2.20', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (412, 3, 2, 45, NULL, 'Sprite 330ml', '', '', 0, '2.20', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (413, 3, 2, 45, NULL, 'Uludag 330ml', '', '', 0, '2.20', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (414, 3, 2, 45, NULL, 'Stilles Wasser 330ml', '', '', 0, '1.50', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (415, 3, 2, 45, NULL, 'Redbull 330ml', '', '', 0, '2.50', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (416, 3, 2, 45, NULL, 'Ayran (250ml) (g)', '', '', 0, '1.80', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (417, 3, 2, 45, NULL, 'Fuzetea Pfirsich 0.4L', '', '', 0, '2.50', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (418, 3, 2, 45, NULL, 'Fuzetea Lemon 0.4L', '', '', 0, '2.50', 0, '', 'inklusive Pfand 0.25 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (419, 3, 2, 45, NULL, 'Durstlöscher Multivitamin 0.5L', '', '', 0, '1.50', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (420, 3, 2, 45, NULL, 'Durstlöscher Eistee Pfirsich 0.5L', '', '', 0, '1.50', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (421, 3, 2, 45, NULL, 'Durstlöscher Wassermelone 0.5L', '', '', 0, '1.50', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (422, 3, 2, 45, NULL, 'Durstlöscher Orange 0.5L', '', '', 0, '1.50', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (423, 3, 2, 45, NULL, '4 Bro Eistee Bubble Gum 0.5L', '', '', 0, '2.20', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (424, 3, 2, 45, NULL, '4 Bro Eistee Mango Maracuja 0.5L', '', '', 0, '2.20', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (425, 3, 2, 45, NULL, '4 Bro Eistee Lemon  0.5L', '', '', 0, '2.20', 0, '', '', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (426, 3, 2, 45, NULL, 'Coca-Cola 1 L', '', '', 0, '2.90', 0, '', 'inklusive Pfand 0.15 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (427, 3, 2, 45, NULL, 'Coca-Cola Zero 1 L', '', '', 0, '2.90', 0, '', 'inklusive Pfand 0.15 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (428, 3, 2, 45, NULL, 'Mezzo Mix 1 L', '', '', 0, '2.90', 0, '', 'inklusive Pfand 0.15 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (429, 3, 2, 45, NULL, 'Sprite 1 L', '', '', 0, '2.90', 0, '', 'inklusive Pfand 0.15 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (430, 3, 2, 45, NULL, 'Fanta Orange 1 L', '', '', 0, '2.90', 0, '', 'inklusive Pfand 0.15 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (431, 3, 2, 45, NULL, 'Apfelschorle Lift 1 L', '', '', 0, '2.90', 0, '', 'inklusive Pfand 0.15 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (432, 3, 2, 45, NULL, 'Gerolsteiner Wasser 1 L', '', '', 0, '2.90', 0, '', 'inklusive Pfand 0.15 €', 0, 1, '0000-00-00 00:00:00', 0, 0, 1, '', NULL, 0, '0', '+', 'de', 0, NULL, 0, 0, '0', 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`, `tax_fee`, `tax_status`, `language`, `item_id`, `uid`, `is_pos_only`, `is_default`, `previous_price`, `sub_category_id`) VALUES (433, 3, 2, 46, 'null', 'Halbes Hähnchen gegrillt', '', '', 0, '{\"variant_name\":\"W\\u00e4hlen\",\"variant_options\":[{\"name\":\"Pommes\",\"price\":\"11.50\",\"slug\":\"slug_0\"},{\"name\":\"Reis\",\"price\":\"11.50\",\"slug\":\"slug_1\"}]}', 1, '', 'mit Pommes oder Reis und softdrink', 0, 1, '2024-06-09 18:42:02', 0, 0, 1, '', NULL, 146, '0', '0', 'de', 314, '21369', 0, 0, '', 0);


#
# TABLE STRUCTURE FOR: language_data
#

DROP TABLE IF EXISTS `language_data`;

CREATE TABLE `language_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `details` text NOT NULL,
  `english` text NOT NULL,
  `ar` varchar(255) NOT NULL,
  `es` varchar(255) NOT NULL,
  `tr` text DEFAULT NULL,
  `de` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1382 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1, 'alert', 'admin', '', 'Alert!', 'تنبيه!', '¡Alerta!', '', 'Alarm');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (2, 'net_income', 'admin', '', 'Net income', 'صافي الدخل', 'Ingresos netos', '', 'Nettoeinkommen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (3, 'package_by_user', 'admin', '', 'Package by user', 'الحزمة من قبل المستخدم', 'Paquete por usuario', '', 'Paket pro Benutzer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (4, 'total_user', 'admin', '', 'Total Users', 'إجمالي المستخدمين', 'Usuarios totales', '', 'Gesamte Benutzer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (5, 'total_package', 'admin', '', 'Total Packages', 'إجمالي العروض', 'Paquetes totales', '', 'Gesamtes Paket');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (6, 'total_pages', 'admin', '', 'Total Pages', 'إجمالي الصفحات', 'Total de páginas', '', 'Gesamte Seiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (7, 'new_payment_request', 'admin', '', 'New payment request', 'طلب دفع جديد', 'Nueva solicitud de pago', '', 'Neue Zahlungsanfrage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (8, 'not_verified', 'admin', '', 'Not Verified', 'لم يتم التحقق منه', 'No verificado', '', 'Nicht verifiziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (9, 'expired_account', 'admin', '', 'Expired account', 'حساب منتهي الصلاحية', 'Cuenta caducada', '', 'Abgelaufenes Konto');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (10, 'expired_date', 'admin', '', 'Expired Date', 'تاريخ انتهاء الصلاحية', 'Fecha de vencimiento', '', 'Ablaufdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (11, 'toatl_revenue', 'admin', '', 'Total revenue', 'إجمالي الإيرادات', 'Ingresos totales', '', 'Gesamteinnahmen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (12, 'revenue', 'admin', '', 'Revenue', 'الإيرادات', 'Ingresos', '', 'Einnahmen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (13, 'profile', 'admin', '', 'Profile', 'الملف الشخصي', 'Perfil', '', 'Profil');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (14, 'profile_link', 'admin', '', 'Profile link', 'رابط الملف الشخصي', 'Enlace de perfil', '', 'Profil-Link');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (15, 'copy', 'admin', '', 'Copy', 'نسخ', 'Copiar', '', 'Kopie');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (16, 'coppied', 'admin', '', 'Coppied', 'Coppied', 'Coppied', '', 'Kopiert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (17, 'free', 'user', '', 'Free', 'مجاني', 'Gratis', '', 'Kostenlos');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (18, 'trial', 'admin', '', 'Trial', 'تجربة', 'Prueba', '', 'Testversion');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (19, 'package_type', 'user', '', 'Package type', 'نوع العرض', 'Tipo de paquete', '', 'Pakettyp');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (20, 'features', 'admin', '', 'Features', 'الميزات', 'Funciones', '', 'Funktionen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (21, 'duration', 'admin', '', 'Duration', 'المدة', 'Duración', '', 'Dauer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (22, 'package_name', 'admin', '', 'Package name', 'اسم العرض', 'Nombre del paquete', '', 'Paketname');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (23, 'using_trail_package', 'admin', '', 'You are using trail package', 'أنت تستخدم trail packge', 'Estás usando el paquete de ruta', '', 'Aktuell verwendeter Testtarif');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (24, 'trail_package_expired', 'admin', '', 'Your account will expire soon', 'ستنتهي صلاحية حسابك بعد شهر واحد', 'Tu cuenta caducará pronto', '', 'Testpaket abgelaufen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (25, 'change_package', 'admin', '', 'Change Package', 'تعديل العروض', 'Cambiar paquete', '', 'Paket ändern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (26, 'account_not_active', 'admin', '', 'Your Account is not active', 'حسابك غير نشط', 'Su cuenta no está activa', '', 'Konto nicht aktiv');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (27, 'active_now', 'admin', '', 'Active Now', 'نشط الآن', 'Activo ahora', '', 'Jetzt aktiv');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (28, 're_subscription_msg', 'admin', '', 'You have to re-new your subscription to continue', 'يجب إعادة اشتراكك من جديد للمتابعة', 'Tienes que renovar tu suscripción para continuar', '', 'Nachtragliche Abonnementnachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (29, 'active_account', 'admin', '', 'Active Account', 'حساب نشط', 'Cuenta activa', '', 'Aktives Konto');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (30, 'expired_account_msg', 'admin', '', 'Sorry your account is expired', 'معذرةً , انتهت صلاحية حسابك', 'Lo sentimos, su cuenta ha caducado', '', 'Abgelaufenes Kontomeldung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (31, 'payment_pending_msg', 'admin', '', 'Your payment is pending', 'دفعتك معلقة', 'Su pago está pendiente', '', 'Zahlung ausstehend');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (32, 'can_pay_subscription', 'admin', '', 'You can pay from subscription', 'يمكنك الدفع من الاشتراك', 'Puede pagar desde la suscripción', '', 'Kann Abonnement bezahlen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (33, 'pay_now', 'admin', '', 'Pay now', 'ادفع الآن', 'Paga ahora', '', 'Jetzt bezahlen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (34, 'pending_request_msg', 'admin', '', 'Your payment request is pending', 'طلب الدفع معلق', 'Su solicitud de pago está pendiente', '', 'Ausstehende Anfrage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (35, 'wait_for_confirmation', 'admin', '', 'Please Wait for the confirmation', 'انتظر التأكيد', 'Espere la confirmación', '', 'Warten Sie auf Bestätigung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (36, 'try_another_method', 'admin', '', 'Try Another Method', 'جرب طريقة أخرى', 'Prueba con otro método', '', 'Versuchen Sie eine andere Methode');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (37, 'account_not_verified', 'admin', '', 'Your Account is not Verified', 'لم يتم التحقق من حسابك', 'Su cuenta no está verificada', '', 'Konto nicht verifiziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (38, 'resend_send_mail_link', 'admin', '', 'Already send a verification link on your email. if not found', 'أرسل بالفعل رابط التحقق على بريدك الإلكتروني. إذا لم يتم العثور عليه', 'Ya envié un enlace de verificación en su correo electrónico. Si no lo encuentra', '', 'Link erneut senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (39, 'resend', 'admin', '', 'Resend', 'إعادة الإرسال', 'Reenviar', '', 'Erneut senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (40, 'if_mail_not_correct_msg', 'admin', '', 'If your email is not correct then change from profile option', 'إذا كان بريدك الإلكتروني غير صحيح , فغيّر من خيار الملف الشخصي', 'Si su correo electrónico no es correcto, cambie de la opción de perfil', '', 'Wenn E-Mail nicht korrekt ist, melden Sie sich an');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (41, 'email', 'label', '', 'Email', 'بريد إلكتروني', 'Correo electrónico', '', 'E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (42, 'settings', 'label', '', 'Settings', 'إعدادات', 'Configuración', '', 'Einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (43, 'email_sub', 'label', '', 'Email subjects', 'إعدادات', 'Asuntos de correo electrónico', '', 'E-Mail-Betreff');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (44, 'registration', 'label', '', 'Registration', 'تسجيل', 'Registro', '', 'Registrierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (45, 'payment_gateway', 'label', '', 'Payment Gateway', 'بوابة الدفع', 'Pasarela de pago', '', 'Zahlungsgateway');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (46, 'recovery_password', 'label', '', 'Recovery password', 'استعادة كلمة المرور', 'Contraseña de recuperación', '', 'Wiederherstellungspasswort');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (47, 'admin_email', 'label', '', 'Admin email', 'البريد الإلكتروني للمسؤول', 'Correo electrónico del administrador', '', 'Admin-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (48, 'php_mail', 'label', '', 'PHP Mail', 'PHP Mail', 'Correo PHP', '', 'PHP-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (49, 'smtp', 'label', '', 'SMTP', 'SMTP', 'SMTP', '', 'SMTP');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (50, 'smtp_host', 'label', '', 'SMTP HOST', 'SMTP HOST', 'SMTP HOST', '', 'SMTP-Host');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (51, 'smtp_port', 'label', '', 'SMTP PORT', 'منفذ SMTP', 'PUERTO SMTP', '', 'SMTP-Port');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (52, 'smtp_password', 'label', '', 'SMTP PASSWORD', 'كلمة مرور SMTP', 'CONTRASEÑA SMTP', '', 'SMTP-Passwort');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (53, 'save_change', 'label', '', 'Save Change', 'حفظ التعديل ', 'Guardar cambio', '', 'Änderungen speichern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (54, 'paypal', 'label', '', 'Paypal', 'paypal', 'Paypal', '', 'PayPal');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (55, 'new_users', 'label', '', 'New Users', 'المستخدمون الجدد', 'Nuevos usuarios', '', 'Neue Benutzer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (56, 'add_user', 'label', '', 'Add User', 'إضافة مستخدم', 'Agregar usuario', '', 'Benutzer hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (57, 'sl', 'label', '', 'Sl', 'Sl', 'Sl', '', 'Nr.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (58, 'username', 'label', '', 'Username', 'اسم المستخدم', 'Nombre de usuario', '', 'Benutzername');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (59, 'active_date', 'label', '', 'Active Date', 'تاريخ نشط', 'Fecha activa', '', 'Aktivierungsdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (60, 'account_type', 'label', '', 'Account type', 'نوع الحساب', 'Tipo de cuenta', '', 'Kontotyp');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (61, 'action', 'label', '', 'Action', 'إجراء', 'Acción', '', 'Aktion');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (62, 'users', 'label', '', 'Users', 'المستخدمون', 'Usuarios', '', 'Benutzer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (63, 'status', 'label', '', 'Status', 'الحالة', 'Estado', '', 'Status');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (64, 'view_profile', 'label', '', 'View Profile', 'عرض الملف الشخصي', 'Ver perfil', '', 'Profil anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (65, 'start_date', 'label', '', 'Start Date', 'تاريخ البدء', 'Fecha de inicio', '', 'Startdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (66, 'free_account', 'label', '', 'Free account', 'حساب مجاني', 'Cuenta gratuita', '', 'kostenloses Konto');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (67, 'trial_package', 'label', '', 'Trial Package', 'الحزمة التجريبية', 'Paquete de prueba', '', 'Testpaket');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (68, 'not_active', 'admin', '', 'Not active yet', 'غير نشط بعد', 'Aún no activo', '', 'nicht aktiv');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (69, 'expired', 'label', '', 'Expired', 'منتهية الصلاحية', 'Caducado', '', 'abgelaufen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (70, 'active', 'label', '', 'Active', 'نشط', 'Activo', '', 'aktiv');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (71, 'deactive', 'label', '', 'Deactive', 'غير نشط', 'Desactivado', '', 'deaktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (72, 'verified', 'label', '', 'Verified', 'متحقق منه', 'Verificado', '', 'verifiziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (73, 'want_to_verify_this_account', 'admin', '', 'Do you want to verified this account?', 'هل تريد التحقق من هذا الحساب؟', '¿Quieres verificar esta cuenta?', '', 'möchten_sie_dieses_konto_verifizieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (74, 'want_to_active_this_account', 'admin', '', 'Do you want to active this account?', 'هل تريد تنشيط هذا الحساب؟', '¿Quieres activar esta cuenta?', '', 'möchten_sie_dieses_konto_aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (75, 'payment_is_verified', 'admin', '', 'You payment is verified', 'تم التحقق من دفعتك', 'Su pago está verificado', '', 'zahlung_ist_verifiziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (76, 'paid', 'admin', '', 'Paid', 'مدفوع', 'Pagado', '', 'bezahlt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (77, 'verified_offline_payment_msg', 'admin', '', ' Do You want to verify this payment? Payment will count as an offline payment', 'هل تريد التحقق من هذه الدفعة؟ سيتم احتساب الدفع كدفعة غير متصلة بالإنترنت', '¿Desea verificar este pago? El pago contará como un pago fuera de línea', '', 'verifizierte_offline_zahlung_msg');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (78, 'pending', 'admin', '', 'Pending', 'معلق', 'Pendiente', '', 'ausstehend');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (79, 'delete_user_msg', 'admin', '', ' Want to delete this user? Be careful This user will remove permanently.', 'هل تريد حذف هذا المستخدم؟ انتبه , سيقوم هذا المستخدم بالإزالة نهائيًا.', '¿Quiere eliminar este usuario? Tenga cuidado. Este usuario eliminará permanentemente.', '', 'benutzer_löschen_msg');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (80, 'current_package', 'label', '', 'Current package', 'العروض الحالية', 'Paquete actual', '', 'aktuelles_paket');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (81, 'submit', 'label', '', 'Submit', 'إرسال', 'Enviar', '', 'einreichen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (82, 'click_here', 'label', '', 'Click here!', 'انقر هنا!', '¡Haga clic aquí!', '', 'hier_klicken');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (83, 'add_new_user', 'label', '', 'Add New User', 'إضافة مستخدم جديد', 'Agregar nuevo usuario', '', 'neuen_benutzer_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (84, 'restaurant_user_name', 'admin', '', 'Restaurant Username', 'اسم مستخدم المطعم', 'Nombre de usuario del restaurante', '', 'restaurant_benutzername');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (85, 'select_package', 'label', '', 'Select Package', 'حدد العرض', 'Seleccionar paquete', '', 'paket_wählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (86, 'add_password', 'label', '', 'Add password', 'أضف كلمة مرور', 'Agregar contraseña', '', 'passwort_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (87, 'password', 'label', '', 'Password', 'كلمة المرور', 'Contraseña', '', 'passwort');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (88, 'password_msg_add_user', 'label', '', ' If you do not select add password, Password will create randomly and send user by email', 'إذا لم تحدد إضافة كلمة مرور , فسيتم إنشاء كلمة المرور بشكل عشوائي وإرسال المستخدم بالبريد الإلكتروني', 'Si no selecciona agregar contraseña, la contraseña se creará aleatoriamente y enviará al usuario por correo electrónico', '', 'passwort_msg_benutzer_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (89, 'create_page', 'label', '', 'Create Page', 'إنشاء صفحة', 'Crear página', '', 'seite_erstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (90, 'title', 'label', '', 'Title', 'العنوان', 'Título', '', 'titel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (91, 'slug', 'label', '', 'Slug', 'slug', 'Babosa', '', 'slug');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (92, 'details', 'label', '', 'Details', 'تفاصيل', 'Detalles', '', 'details');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (93, 'live', 'label', '', 'Live', 'مباشر', 'En vivo', '', 'live');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (94, 'hide', 'label', '', 'Hide', 'إخفاء', 'Ocultar', '', 'verbergen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (95, 'cancel', 'label', '', 'Cancel', 'إلغاء', 'Cancelar', '', 'abbrechen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (96, 'all_pages', 'admin', '', 'All Pages', 'كل الصفحات', 'Todas las páginas', '', 'alle_seiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (97, 'edit', 'label', '', 'Edit', 'تحرير', 'Editar', '', 'bearbeiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (98, 'delete', 'label', '', 'Delete', 'حذف', 'Eliminar', '', 'löschen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (99, 'faq', 'label', '', 'Faq', 'التعليمات', 'Preguntas frecuentes', '', 'faq');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (100, 'faq_list', 'label', '', 'FAQ List', 'قائمة الأسئلة الشائعة', 'Lista de preguntas frecuentes', '', 'faq_liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (101, 'want_to_delete', 'label', '', 'Want to delete?', 'هل تريد الحذف؟', '¿Quieres eliminar?', '', 'löschen_möchten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (102, 'how_it_works', 'label', '', 'How it works', 'كيف يعمل', 'Cómo funciona', '', 'wie_es_funktioniert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (103, 'upload_image', 'label', '', 'Upload Image', 'تحميل الصورة', 'Subir imagen', '', 'bild_hochladen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (104, 'max', 'label', '', 'Max', 'ماكس', 'Máx', '', 'max');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (105, 'image', 'label', '', 'Image', 'صورة', 'Imagen', '', 'bild');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (106, 'team', 'label', '', 'Team', 'فريق', 'Equipo', '', 'team');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (107, 'designation', 'label', '', 'Designation', 'التعيين', 'Designación', '', 'bezeichnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (108, 'offline_payments', 'admin', '', 'Offline Payment', 'الدفع دون اتصال بالإنترنت', 'Pago sin conexión', '', 'offline_zahlungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (109, 'package', 'admin', '', 'Package', 'حزمة', 'Paquete', '', 'paket');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (110, 'txn_id', 'admin', '', 'Txn id', 'معرف Txn', 'ID de Txn', '', 'txn_id');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (111, 'request_date', 'label', '', 'Request Date', 'تاريخ الطلب', 'Fecha de solicitud', '', 'antragsdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (112, 'approve', 'label', '', 'Approve', 'موافقة', 'Aprobar', '', 'genehmigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (113, 'approved', 'label', '', 'Approved', 'موافق عليه', 'Aprobado', '', 'genehmigt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (114, 'cookie_privacy', 'label', '', 'Cookies & Privacy', 'ملفات تعريف الارتباط والخصوصية', 'Cookies y privacidad', '', 'cookie_datenschutz');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (115, 'services', 'label', '', 'Services', 'خدمات', 'Servicios', '', 'dienstleistungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (116, 'home_features', 'label', '', 'Home Features', 'الميزات الرئيسية', 'Funciones de la casa', '', 'startseite_funktionen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (117, 'add_new', 'label', '', 'Add New', 'إضافة جديد', 'Agregar nuevo', '', 'neue_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (118, 'upload', 'admin', '', 'Upload', 'تحميل', 'Subir', '', 'hochladen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (119, 'select_direction', 'admin', '', 'Select Direction', 'حدد الأوساخ', 'Seleccionar dirección', '', 'richtung_wählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (120, 'left_side', 'label', '', 'Left Side', 'الجانب الأيسر', 'Lado izquierdo', '', 'linke_Seite');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (121, 'right_side', 'label', '', 'Right Side', 'الجانب الأيمن', 'Lado derecho', '', 'rechte_Seite');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (122, 'max_character', 'label', '', 'Max character', 'أقصى حرف', 'Carácter máximo', '', 'max_zeichen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (123, 'icon', 'label', '', 'Icon', 'رمز', 'Icono', '', 'symbol');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (124, 'close', 'label', '', 'Close', 'إغلاق', 'Cerrar', 'kapatmak', 'schließen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (125, 'terms_condition', 'label', '', 'Terms & Conditions', 'الشروط والأحكام', 'Términos y condiciones', '', 'agb');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (126, 'payment_transaction', 'label', '', 'Payment Transaction', 'معاملة الدفع', 'Transacción de pago', '', 'zahlung_transaktion');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (127, 'payment_by', 'label', '', 'Payment by', 'الدفع بواسطة', 'Pago por', '', 'zahlung_durch');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (128, 'restaurant_details', 'home', '', 'Restaurant Details', 'تفاصيل المطعم', 'Detalles del restaurante', '', 'restaurant_details');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (129, 'restaurant_username', 'user', '', 'Restaurant username', 'اسم مستخدم المطعم', 'Nombre de usuario del restaurante', '', 'restaurant_benutzername');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (130, 'must_unique_english', 'user', '', 'Must be in English & Unique', 'يجب أن يكون باللغة الإنجليزية وفريدة من نوعها', 'Debe estar en inglés y ser único', '', 'muss_einzigartig_englisch_sein');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (131, 'county', 'user', '', 'County', 'مقاطعة', 'Condado', '', 'land');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (132, 'currency', 'user', '', 'Currency', 'العملة', 'Moneda', '', 'währung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (133, 'dial_code', 'user', '', 'Dial code', 'رمز الاتصال', 'Marcar código', '', 'vorwahl');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (134, 'phone', 'user', '', 'Phone', 'هاتف', 'Teléfono', '', 'Telefon');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (135, 'restaurant_full_name', 'user', '', 'Restaurant full name', 'اسم المطعم بالكامل', 'Nombre completo del restaurante', '', 'restaurant_vollständiger_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (136, 'short_name', 'user', '', 'Short name', 'اسم قصير', 'Nombre corto', '', 'kurzname');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (137, 'location', 'user', '', 'Location', 'location', 'Ubicación', '', 'standort');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (138, 'gmap_link', 'user', '', 'Google Map link', 'رابط خريطة Google', 'Enlace a Google Map', '', 'gmap_link');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (139, 'address', 'user', '', 'Address', 'العنوان', 'Dirección', '', 'adresse');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (140, 'logo', 'user', '', 'Logo', 'شعار', 'Logotipo', '', 'logo');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (141, 'cover_photo', 'user', '', 'Cover Photo', 'صورة الغلاف', 'Foto de portada', '', 'cover_foto');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (142, 'upload_cover_photo', 'user', '', 'Upload Cover Image', 'تحميل صورة الغلاف', 'Subir imagen de portada', '', 'cover_foto_hochladen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (143, 'change_pass', 'user', '', 'Change password', 'تغيير كلمة المرور', 'Cambiar contraseña', '', 'passwort_ändern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (144, 'owner_name', 'user', '', 'Owner name', 'اسم المالك', 'Nombre del propietario', '', 'besitzer_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (145, 'select_county', 'user', '', 'Select Country', 'حدد الدولة', 'Seleccionar país', '', 'land_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (146, 'gender', 'user', '', 'Gender', 'جنس', 'Sexo', '', 'geschlecht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (147, 'website', 'user', '', 'Website', 'موقع الويب', 'Sitio web', '', 'webseite');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (148, 'old_pass', 'user', '', 'Old Password', 'كلمة المرور القديمة', 'Contraseña anterior', '', 'altes_passwort');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (149, 'new_pass', 'user', '', 'New Password', 'كلمة مرور جديدة', 'Nueva contraseña', '', 'neues_passwort');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (150, 'confirm_password', 'user', '', 'Confirm Password', 'تأكيد كلمة المرور', 'Confirmar contraseña', '', 'passwort_bestätigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (151, 'profile_pic', 'user', '', 'Profile Picture', 'صورة الملف الشخصي', 'Imagen de perfil', '', 'profilbild');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (152, 'add_edit_info', 'label', '', 'Add / Edit Info', 'إضافة / تحرير المعلومات', 'Agregar / Editar información', '', 'info_hinzufügen_bearbeiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (153, 'shop_name', 'user', '', 'Shop Name', 'اسم المتجر', 'Nombre de la tienda', '', 'laden_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (154, 'create_your_restaurant', 'user', '', 'Create Your Restaurant', 'أنشئ مطعمك', 'Crea tu restaurante', '', 'erstellen_sie_ihr_restaurant');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (155, 'warning', 'user', '', 'Warning!', 'تحذير!', '¡Advertencia!', '', 'warnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (156, 'upload_images', 'user', '', 'Upload Images', 'تحميل الصور', 'Subir imágenes', '', 'bilder_hochladen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (157, 'select', 'user', '', 'Select', 'حدد', 'Seleccionar', '', 'auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (158, 'you_have', 'user', '', 'You have', 'لديك', 'Tienes', '', 'sie_haben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (159, 'notifications', 'user', '', 'Notifications', 'إخطارات', 'Notificaciones', '', 'benachrichtigungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (160, 'new_orders_today', 'user', '', 'New Orders today', 'طلبات جديدة اليوم', 'Nuevos pedidos hoy', '', 'neue_bestellungen_heute');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (161, 'reservation_today', 'user', '', 'Reservation Today', 'الحجز اليوم', 'Reserva hoy', '', 'heutige_reservierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (162, 'completed_orders', 'user', '', 'Completed orders', 'الطلبات المكتملة', 'Pedidos completados', '', 'abgeschlossene_bestellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (163, 'error', 'user', '', 'Error', 'خطأ', 'Error', '', 'fehler');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (164, 'copyright', 'admin', '', 'Copyright', 'حقوق النشر', 'Copyright', '', 'urheberrecht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (165, 'version', 'label', '', 'Version', 'الإصدار', 'Versión', '', 'version');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (166, 'member_since', 'user', '', 'Member since', 'عضو منذ', 'Miembro desde', '', 'mitglied_seit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (167, 'last_login', 'admin', '', 'Last Login', 'آخر تسجيل دخول', 'Último inicio de sesión', '', 'letzter_login');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (168, 'logout', 'label', '', 'Logout', 'تسجيل الخروج', 'Cerrar sesión', '', 'abmelden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (169, 'dashboard', 'admin', '', 'Dashboard', 'لوحة القيادة', 'Panel de control', '', 'Dashboard');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (170, 'account_management', 'admin', '', 'Account MANAGEMENT', 'إدارة الحساب', 'ADMINISTRACIÓN DE CUENTAS', '', 'kontoverwaltung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (171, 'packages_management', 'admin', '', 'PACKAGES Management', 'إدارة العروض', 'Gestión de PAQUETES', '', 'pakete_verwalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (172, 'package_list', 'admin', '', 'Package list', 'قائمة العروض', 'Lista de paquetes', '', 'paket_liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (173, 'order_types', 'admin', '', 'Order types', 'أنواع الطلبات', 'Tipos de pedido', '', 'bestelltypen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (174, 'site_management', 'admin', '', 'Site management', 'إدارة الموقع', 'Gestión del sitio', '', 'site_verwaltung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (175, 'home', 'admin', '', 'Home', 'الرئيسية', 'Inicio', 'Ana Sayfa', 'Startseite');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (176, 'site_features', 'user', '', 'Site Features', 'ميزات الموقع', 'Características del sitio', '', 'site_funktionen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (177, 'international', 'admin', '', 'INTERNATIONAL', 'دولي', 'INTERNACIONAL', '', 'international');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (178, 'languages', 'admin', '', 'Languages', 'اللغات', 'Idiomas', '', 'sprachen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (179, 'add_languages', 'admin', '', 'Add Languages', 'إضافة لغات', 'Agregar idiomas', '', 'sprachen_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (180, 'dashboard_language', 'admin', '', 'Dashboard Languages', 'لغات لوحة المعلومات', 'Idiomas del panel de control', '', 'Dashboard Sprache');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (181, 'fontend_language', 'admin', '', 'Frontend Languages', 'لغات Fontend', 'Idiomas Fontend', '', 'frontend sprache');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (182, 'site_setting', 'admin', '', 'Site Settings', 'إعدادات الموقع', 'Configuración del sitio', '', 'site einstellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (183, 'site_settings', 'admin', '', 'Site settings', 'إعدادات الموقع', 'Configuración del sitio', '', 'site einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (184, 'email_settings', 'admin', '', 'Email Settings', 'إعدادات البريد الإلكتروني', 'Configuración de correo electrónico', '', 'email einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (185, 'payment_settings', 'admin', '', 'Payment settings', 'إعدادات الدفع', 'Configuración de pago', '', 'zahlungseinstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (186, 'home_banner_setting', 'admin', '', 'Banner settings', 'إعدادات البانر', 'Configuración de banner', '', 'startseiten_banner_einstellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (187, 'content', 'admin', '', 'Content', 'محتوى', 'Contenido', '', 'inhalt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (188, 'pages', 'admin', '', 'Pages', 'صفحات', 'Páginas', '', 'seiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (189, 'add_page', 'admin', '', 'Add page', 'إضافة صفحة', 'Agregar página', '', 'seite_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (190, 'cookies_privacy', 'admin', '', 'Cookie & Privacy', 'ملفات تعريف الارتباط والخصوصية', 'Cookies y privacidad', '', 'cookies_privatsphäre');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (191, 'user_transaction', 'admin', '', 'User\'s Transactions', 'معاملات المستخدم', 'Transacciones del usuario', '', 'benutzer_transaktion');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (192, 'backup_database', 'admin', '', 'Backup Database', 'قاعدة بيانات النسخ الاحتياطي', 'Copia de seguridad de la base de datos', '', 'datenbank_sicherung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (193, 'subscriptions', 'user', '', 'Subscriptions', 'اشتراكات', 'Suscripciones', '', 'abonnements');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (194, 'menu', 'user', '', 'Menu', 'القائمة', 'Menú', 'Menü', 'Menü');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (195, 'menu_categories', 'user', '', 'Menu Categories', 'فئات القائمة', 'Categorías de menú', '', 'Menü Kategorien');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (196, 'items', 'user', '', 'Items', 'عناصر', 'Elementos', '', 'Artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (197, 'specialties', 'user', '', 'Specialties', 'التخصصات', 'Especialidades', '', 'Spezialitäten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (198, 'allergens', 'user', '', 'Allergens', 'مسببات الحساسية', 'Alergenos', '', 'Allergene');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (199, 'live_order', 'user', '', 'Live order', 'طلب مباشر', 'Orden en vivo', '', 'Live Bestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (200, 'reservation', 'user', '', 'Reservation', 'حجز', 'Reserva', '', 'Reservierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (201, 'available_days', 'user', '', 'Available days', 'أيام العمل', 'Días disponibles', 'müsait günler', 'Verfügbare Tage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (202, 'portfolio', 'user', '', 'Portfolio', 'محفظة', 'Portafolio', '', 'Portfolio');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (203, 'social_sites', 'user', '', 'Social sites', 'مواقع اجتماعية', 'Sitios sociales', '', 'Soziale Seiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (204, 'add_cover_photo', 'user', '', 'Add Cover Photo', 'إضافة صورة الغلاف', 'Agregar foto de portada', '', 'cover_foto_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (205, 'manage_features', 'user', '', 'Manage Features', 'إدارة الميزات', 'Administrar funciones', '', 'funktionen_verwalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (206, 'order_config', 'user', '', 'Order Configuration', 'تكوين الطلب', 'Configuración de pedidos', '', 'bestellkonfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (207, 'layouts', 'user', '', 'Layouts', 'تخطيطات', 'Diseños', '', 'layouts');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (208, 'deactive_account', 'user', '', 'Deactivate account', 'حساب غير نشط', 'Cuenta desactivada', '', 'konto_deaktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (209, 'success', 'label', '', 'Success', 'نجاح', 'Éxito', '', 'erfolg');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (210, 'show_details', 'label', '', 'Show Details', 'إظهار التفاصيل', 'Mostrar detalles', '', 'details_anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (211, 'keyword', 'label', '', 'Keyword', 'Keyword', 'Palabra clave', '', 'schlüsselwort');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (212, 'values', 'label', '', 'Values', 'قيم', 'Valores', '', 'werte');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (213, 'types', 'label', '', 'Types', 'أنواع', 'Tipos', '', 'typen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (214, 'admin_language', 'admin', '', 'Admin language', 'لغة المسؤول', 'Idioma del administrador', '', 'admin_sprache');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (215, 'user_dashboard', 'label', '', 'User dashboard', 'لوحة تحكم المستخدم', 'Panel de usuario', '', 'Benutzer Dashboard');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (216, 'fontend_languages', 'label', '', 'Frontend Language', 'لغة الخط', 'Idioma fuente', '', 'frontend Sprachen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (217, 'others', 'label', '', 'Others', 'آخرون', 'Otros', '', 'andere');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (218, 'lang_name', 'admin', '', 'Language name', 'اسم اللغة', 'Nombre del idioma', '', 'Sprache Name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (219, 'language_slug', 'admin', '', 'Language Slug', 'سبيكة اللغة', 'Lenguaje Slug', '', 'Sprache Slug');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (220, 'left_to_right', 'label', '', 'Left to right', 'من اليسار إلى اليمين', 'De izquierda a derecha', '', 'links_nach_rechts');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (221, 'right_to_left', 'admin', '', 'Right to left', 'من اليمين إلى اليسار', 'De derecha a izquierda', '', 'rechts_nach_links');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (222, 'price', 'admin', '', 'Price', 'السعر', 'Precio', '', 'preis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (223, 'name', 'label', '', 'Name', 'اسم', 'Nombre', '', 'Name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (224, 'create_category', 'user', '', 'Create Category', 'إنشاء فئة', 'Crear categoría', '', 'kategorie_erstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (225, 'category_name', 'user', '', 'Category name', 'اسم الفئة', 'Nombre de categoría', '', 'kategorie_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (226, 'select_type', 'label', '', 'Select Type', 'اختر النوع', 'Seleccionar tipo', '', 'typ_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (227, 'pizza', 'user', '', 'Pizza', 'بيتزا', 'Pizza', '', 'pizza');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (228, 'burger', 'user', '', 'Burger', 'برجر', 'Hamburguesa', '', 'burger');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (229, 'order', 'user', '', 'order', 'طلب', 'pedido', '', 'bestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (230, 'sizes', 'user', '', 'Sizes', 'مقاسات', 'Tamaños', '', 'größen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (231, 'size_name', 'user', '', 'Size Name', 'اسم الحجم', 'Nombre del tamaño', '', 'größen_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (232, 'insert_category', 'user', '', 'Please Insert Category', 'الرجاء إدخال فئة', 'Por favor, inserte una categoría', '', 'kategorie_einfügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (233, 'insert_item_size', 'user', '', 'Please Insert Item Sizes', 'الرجاء إدخال مقاسات العناصر', 'Por favor, inserte los tamaños de los artículos', '', 'artikelgröße_einfügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (234, 'insert_item_size_msg', 'user', '', 'you can set price depends on size (size available for pizza & Burger)', 'يمكنك تعيين السعر بناءً على الحجم (الحجم المتاح للبيتزا والبرغر)', 'puede establecer el precio según el tamaño (el tamaño disponible para pizza y hamburguesa)', '', 'artikelgröße_einfügen_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (235, 'info', 'label', '', 'Info!', 'معلومات!', '¡Información!', '', 'info');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (236, 'you_can_add', 'user', '', 'You can add', 'يمكنك الإضافة', 'Puedes agregar', '', 'du_kannst_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (237, 'unlimited', 'user', '', 'Unlimited', 'غير محدود', 'Ilimitado', '', 'unbegrenzt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (238, 'you_reached_max_limit', 'user', '', 'You reached the maximum limit', 'لقد وصلت إلى الحد الأقصى', 'Has alcanzado el límite máximo', '', 'du_hast_maximale_grenze_erreicht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (239, 'you_have_remaining', 'user', '', 'You have remaining', 'المتبقي لديك', 'Te queda', '', 'du_hast_verbleibend');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (240, 'out_of', 'user', '', 'out of', 'خارج', 'fuera de', '', 'aus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (241, 'add_items', 'user', '', 'add items', 'إضافة عناصر', 'agregar elementos', '', 'artikel_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (242, 'is_size', 'user', '', 'Is Size', 'هو الحجم', 'Es el tamaño', '', 'ist_größe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (243, 'veg_type', 'label', '', 'veg type', 'نوع نباتي', 'tipo vegetal', '', 'vegan_typ');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (244, 'non_veg', 'label', '', 'Non veg', 'غير نباتي', 'No vegetariano', '', 'vegetarisch');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (245, 'veg', 'label', '', 'veg', 'نباتي', 'verduras', '', 'vegan');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (246, 'small_description', 'user', '', 'small description', 'وصف صغير', 'pequeña descripción', '', 'kurze_beschreibung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (247, 'show_in_homepage', 'user', '', 'Show in home page', 'إظهار في الصفحة الرئيسية', 'Mostrar en la página de inicio', '', 'auf_startseite_anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (248, 'add_packages', 'user', '', 'Add Package', 'إضافة حزمة', 'Agregar paquete', '', 'pakete_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (249, 'is_discount', 'user', '', 'Is Discount', 'خصم', 'Es un descuento', '', 'ist_rabatt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (250, 'custom_price', 'user', '', 'Custom Price', 'سعر مخصص', 'Precio personalizado', '', 'benutzerdefinierter_preis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (251, 'discount', 'user', '', 'discount', 'خصم', 'descuento', '', 'rabatt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (252, 'is_upcoming', 'user', '', 'Is Upcoming', 'قادم', 'Próximamente', '', 'ist_kommend');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (253, 'days', 'user', '', 'days', 'أيام', 'días', '', 'tage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (254, 'empty_item_package', 'user', '', 'Empty Item For Packages', 'إفراغ عنصر للحزم', 'Artículo vacío para paquetes', '', 'leeres_artikel_paket');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (255, 'empty_item_package_msg', 'user', '', 'You have to create item without size for package', 'عليك إنشاء عنصر بدون حجم للحزمة', 'Tienes que crear un artículo sin tamaño para el paquete', '', 'leeres_artikel_paket_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (256, 'is_price_msg_1', 'user', 'Is price is for custom price if you want to set custom price for package.', 'Is price is for custom price if you want to set custom price for package.', 'هو السعر لسعر مخصص إذا كنت تريد تعيين سعر مخصص للحزمة.', 'El precio es para el precio personalizado si desea establecer un precio personalizado para el paquete.', '', 'ist_preis_nachricht_1');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (257, 'is_price_msg_2', 'user', 'Otherwise price will set  after calculation all items prices', 'Otherwise price will set after calculation all items prices', 'وإلا فسيتم تعيين السعر بعد حساب أسعار جميع العناصر', 'De lo contrario, el precio se establecerá después del cálculo de los precios de todos los artículos', '', 'ist_preis_nachricht_2');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (258, 'discount_msg', 'user', 'If you want to set discount for this package', 'If you want to set discount for this package', 'إذا كنت تريد تعيين خصم لهذه العروض', 'Si desea establecer un descuento para este paquete', '', 'rabatt_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (259, 'featured', 'user', 'Featured', 'Featured', 'مميزة', 'Destacado', '', 'hervorgehoben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (260, 'overview', 'user', 'Overview', 'overview', 'نظرة عامة', 'descripción general', '', 'überblick');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (261, 'order_id', 'user', 'Order ID', 'Order ID', 'معرف الطلب', 'ID de pedido', '', 'bestell_id');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (262, 'order_details', 'user', 'Order Details', 'Order Details', 'تفاصيل الطلب', 'Detalles del pedido', '', 'bestell_details');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (263, 'delivery_charge', 'user', 'Delivery charge', 'delivery charge', 'رسوم التوصيل', 'gastos de envío', '', 'liefergebühr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (264, 'total_person', 'user', 'Total Person', 'Total Person', 'إجمالي عدد الأشخاص', 'Persona total', '', 'gesamt_personen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (265, 'pickup_time', 'user', 'Pickup time', 'Pickup time', 'وقت الاستلام', 'Hora de recogida', '', 'abholzeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (266, 'accept', 'admin', 'Accept', 'accept', 'قبول', 'aceptar', '', 'akzeptieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (267, 'completed', 'user', 'Completed', 'Completed', 'مكتمل', 'Completado', '', 'abgeschlossen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (268, 'accepted', 'user', 'Accepted', 'accepted', 'مقبول', 'aceptado', '', 'akzeptiert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (269, 'cancled', 'user', 'Cancled', 'Cancled', 'ملغى', 'Cancelado', '', 'storniert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (270, 'order_list', 'user', 'Order list', 'order list', 'قائمة الطلبات', 'lista de pedidos', '', 'bestell_liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (271, 'item_name', 'user', 'Item name', 'item name', 'اسم العنصر', 'nombre del artículo', '', 'artikel_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (272, 'live_orders', 'user', 'Live orders', 'live orders', 'أوامر مباشرة', 'pedidos en vivo', '', 'live_bestellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (273, 'all_orders', 'user', 'All orders', 'all orders', 'كل الطلبات', 'todos los pedidos', '', 'alle_bestellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (274, 'order_number', 'user', 'Order number', 'order number', 'رقم الطلب', 'número de pedido', '', 'bestellnummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (275, 'order_type', 'user', 'Order type', 'order type', 'نوع الطلب', 'tipo de pedido', '', 'bestelltyp');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (276, 'canceled', 'user', 'Canceled', 'canceled', 'ملغاة', 'cancelado', '', 'storniert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (277, 'create_trail_package_msg', 'user', 'Please Create a Trail Package first', 'Please Create a Trail Package first', 'الرجاء إنشاء حزمة التتبع أولاً', 'Por favor, primero cree un paquete de senderos', '', 'erstellen_sie_ein_probe_paket_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (278, 'create_trail_package_msg_1', 'user', 'After create trial package you can able to create free/others packages', 'After creating trial package you can able to create free/others packages', 'بعد إنشاء حزمة تجريبية يمكنك إنشاء حزم مجانية / أخرى', 'Después de crear el paquete de prueba, puede crear paquetes gratuitos / otros', '', 'erstellen_sie_ein_probe_paket_nachricht_1');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (279, 'trial_for_month', 'admin', 'Trial for 1 Month', 'Trial for 1 Month', 'تجربة لمدة شهر واحد', 'Prueba de 1 mes', '', 'probe_für_monat');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (280, 'monthly', 'admin', 'Monthly', 'monthly', 'شهريًا', 'mensual', '', 'monatlich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (281, 'yearly', 'admin', 'Yearly', 'yearly', 'سنوي', 'anual', '', 'jährlich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (282, 'set_free_for_month', 'admin', 'Account will set Free for 1 month', 'Account will set Free for 1 month', 'سيتم تعيين الحساب مجانًا لمدة شهر واحد', 'La cuenta se liberará durante 1 mes', '', 'kostenlos_für_monat_setzen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (283, 'limit_text_msg_1', 'admin', 'Set limit for Order & Items. How many Order & items will available for this package', 'Set limit for Orders. How many Order will available for this package', 'تعيين حد للطلب والعناصر. كم عدد الطلبات والعناصر التي ستتوفر لهذه الحزمة', 'Establecer límite para pedidos y artículos. Cuántos pedidos y artículos estarán disponibles para este paquete', '', 'limit_text_nachricht_1');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (284, 'limit_text_msg_2', 'admin', 'Select limit from drop down. if you not select any limit then it will set by default', 'Select limit from dropdown. if you do not select any limit then it will set by default', 'حدد حدًا من القائمة المنسدلة. إذا لم تحدد أي حد , فسيتم تعيينه افتراضيًا', 'Seleccione el límite del menú desplegable. Si no selecciona ningún límite, se establecerá de forma predeterminada', '', 'limit_text_nachricht_2');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (285, 'add_change_feature', 'admin', 'Change/add Features', 'Change/add Features', 'تغيير / إضافة ميزات', 'Cambiar / agregar funciones', '', 'feature_hinzufügen_ändern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (286, 'stripe', 'admin', 'Stripe', 'stripe', 'شريط', 'raya', '', 'stripe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (287, 'razorpay', 'admin', 'Razorpay', 'razorpay', 'رازورباي', 'razorpay', '', 'razorpay');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (288, 'offline', 'admin', 'Offline', 'offline', 'غير متصل', 'sin conexión', '', 'offline');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (289, 'payment_via', 'admin', 'Payment via', 'payment via', 'الدفع عن طريق', 'pago mediante', '', 'zahlung_durch');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (290, 'send_payment_req', 'admin', 'Send a payment request', 'Send a payment request', 'إرسال طلب دفع', 'Enviar una solicitud de pago', '', 'zahlung_anfrage_senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (291, 'payment_verified_successfully', 'admin', 'Your payment verified successfully', 'Your payment verified successfully', 'تم التحقق من دفعتك بنجاح', 'Su pago verificado correctamente', '', 'zahlung_erfolgreich_bestätigt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (292, 'ok', 'admin', 'Ok', 'ok', 'موافق', 'ok', '', 'ok');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (293, 'stripe_payment_gateway', 'admin', 'Stripe Payment Gateway', 'Stripe Payment Gateway', 'بوابة الدفع الشريطية', 'Pasarela de pago de Stripe', '', 'stripe_zahlungs_gateway');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (294, 'name_on_card', 'label', 'Name on card', 'name on card', 'الاسم على البطاقة', 'nombre en la tarjeta', '', 'name_auf_karte');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (295, 'card_number', 'admin', 'Card number', 'Card number', 'رقم البطاقة', 'Número de tarjeta', '', 'karten_nummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (296, 'month', 'admin', 'Month', 'month', 'شهر', 'mes', '', 'monat');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (297, 'year', 'admin', 'Year', 'year', 'السنة', 'año', '', 'jahr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (298, 'cvc', 'admin', 'Cvc', 'cvc', 'cvc', 'cvc', '', 'cvc');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (299, 'whatsapp_number', 'label', 'Whatsapp Number', 'whatsapp Number', 'رقم whatsapp', 'Número de WhatsApp', '', 'Whatsapp Nummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (300, 'youtube', 'home', 'Youtube', 'youtube', 'youtube', 'youtube', '', 'youtube');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (301, 'facebook', 'home', 'Facebook', 'facebook', 'facebook', 'facebook', '', 'facebook');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (302, 'facebook_link', 'home', 'Facebook link', 'facebook link', 'رابط فيسبوك', 'enlace de Facebook', '', 'facebook_link');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (303, 'twitter', 'home', 'Twitter', 'twitter', 'twitter', 'twitter', '', 'twitter');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (304, 'instagram', 'home', 'Instagram', 'instagram', 'instagram', 'instagram', '', 'instagram');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (305, 'about_short', 'home', 'About Short text', 'about Short text', 'حول نص قصير', 'sobre el texto corto', '', 'über_kurz');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (306, 'profile_qr', 'home', 'Profile QR code', 'Profile QR code', 'رمز الاستجابة السريعة للملف الشخصي', 'Código QR de perfil', '', 'profil_qr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (307, 'download', 'home', 'Download', 'Download', 'تنزيل', 'Descargar', '', 'herunterladen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (308, 'start_time', 'home', 'Start time', 'start time', 'وقت البدء', 'hora de inicio', '', 'startzeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (309, 'end_time', 'home', 'End time', 'end time', 'وقت الانتهاء', 'hora de finalización', '', 'endzeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (310, 'time_picker', 'home', 'Time picker', 'Time picker', 'منتقي الوقت', 'Selector de tiempo', '', 'zeit_picker');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (311, 'reservation_types', 'home', 'Reservation types', 'reservation types', 'أنواع الحجز', 'tipos de reserva', '', 'reservierungstypen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (312, 'type_name', 'home', 'Type name', 'type name', 'اسم النوع', 'nombre de tipo', '', 'typ_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (313, 'reservation_type_list', 'home', 'Reservation type list', 'reservation type list', 'قائمة نوع الحجز', 'lista de tipos de reserva', '', 'reservierungstyp_liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (314, 'all_reservation_list', 'home', 'All Reservation list', 'All Reservation list', 'قائمة كافة الحجوزات', 'Lista de todas las reservas', '', 'alle_reservierungsliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (315, 'todays_reservations', 'home', 'Todays Reservation', 'Todays Reservation', 'حجز اليوم', 'Reserva de hoy', '', 'heutige_reservierungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (316, 'comments', 'home', 'Comments', 'comments', 'تعليقات', 'comentarios', '', 'kommentare');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (317, 'table_reservation', 'home', 'Table Reservation', 'Table Reservation', 'حجز منضدة', 'Reserva de mesa', '', 'tisch_reservierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (318, 'if_use_smtp', 'label', 'If You use SMTP Mail', 'if You use SMTP Mail', 'إذا كنت تستخدم بريد SMTP', 'si usa correo SMTP', '', 'wenn_smtp_verwendet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (319, 'smtp_info_msg', 'label', 'Make sure SMTP MAIL, SMTP HOST, SMTP PORT and SMTP PASSWORD is correct', 'Make sure SMTP MAIL, SMTP HOST, SMTP PORT and SMTP PASSWORD is correct', 'تأكد من صحة بريد SMTP ومضيف SMTP ومنفذ SMTP وكلمة مرور SMTP', 'Asegúrese de que SMTP MAIL, SMTP HOST, SMTP PORT y SMTP PASSWORD sean correctos', '', 'smtp_info_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (320, 'registration_subject', 'admin', 'Registration Email subject', 'Registration Email subject', 'موضوع البريد الإلكتروني للتسجيل', 'Asunto del correo electrónico de registro', '', 'registrierung_betreff');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (321, 'payment_mail_subject', 'label', 'Payment mail subject', 'Payment mail subject', 'موضوع بريد الدفع', 'Asunto del correo de pago', '', 'payment_mail_betreff');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (322, 'recovery_password_heading', 'user', 'Recovery Passowrd', 'Recovery Passowrd', 'كلمة مرور الاسترداد', 'Contraseña de recuperación', '', 'wiederherstellungs_passwort_überschrift');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (323, 'linkedin', 'label', 'Linkedin', 'linkedin', 'ينكدين', 'linkedin', '', 'linkedin');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (324, 'home_banner', 'admin', 'Home Banner', 'Home Banner', 'لافتة الصفحة الرئيسية', 'Banner de inicio', '', 'startseite_banner');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (325, 'home_small_banner', 'admin', 'Home small banner', 'Home small banner', 'بانر صغير للمنزل', 'Banner pequeño de inicio', '', 'startseite_klein_banner');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (326, 'section_banner', 'admin', 'Section banner', 'section banner', 'بانر القسم', 'banner de sección', '', 'abschnitt_banner');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (327, 'add', 'admin', 'Add', 'add', 'إضافة', 'agregar', '', 'hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (328, 'section_name', 'admin', 'Section name', 'section name', 'اسم القسم', 'nombre de la sección', '', 'abschnitts_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (329, 'pricing', 'admin', 'Pricing', 'pricing', 'التسعير', 'precio', '', 'preisgestaltung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (330, 'reviews', 'admin', 'Reviews', 'reviews', 'مراجعات', 'opiniones', '', 'Bewertungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (331, 'contacts', 'admin', 'Contacts', 'contacts', 'جهات اتصال', 'contactos', '', 'Kontakte');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (332, 'section', 'admin', 'Section', 'section', 'قسم', 'sección', '', 'abschnitt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (333, 'heading', 'label', 'Heading', 'heading', 'عنوان', 'título', '', 'überschrift');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (334, 'sub_heading', 'admin', 'Sub heading', 'sub heading', 'عنوان فرعي', 'subtítulo', '', 'unterüberschrift');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (335, 'banner', 'admin', 'Banner', 'banner', 'بانر', 'banner', '', 'banner');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (336, 'paypal_payment', 'admin', 'Paypal_ payment', 'paypal payment', 'دفع paypal', 'pago con paypal', '', 'paypal_zahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (337, 'sandbox', 'admin', 'Sandbox', 'sandbox', 'وضع الحماية', 'caja de arena', '', 'sandbox');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (338, 'paypal_email', 'admin', 'Paypal Email', 'Paypal Email', 'بريد باي بال', 'Correo electrónico de Paypal', '', 'paypal_email');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (339, 'paypal_business_email', 'admin', 'Paypal Business Email', 'Paypal Business Email', 'البريد الإلكتروني للأعمال Paypal', 'Correo electrónico comercial de Paypal', '', 'paypal_geschäfts_email');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (340, 'stripe_payment', 'admin', 'Stripe Payment Gateway', 'stripe Payment Gateway', 'بوابة الدفع الشريطية', 'Pasarela de pago de banda', '', 'stripe_zahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (341, 'stripe_public_key', 'admin', 'Stripe Public key', 'Stripe Public key', 'مفتاح شريطي عام', 'Clave pública de banda', '', 'stripe_öffentlicher_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (342, 'stripe_secret_key', 'admin', 'Stripe Secret key', 'Stripe Secret key', 'مفتاح الشريط السري', 'Clave secreta de banda', '', 'stripe_geheimer_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (343, 'razorpay_payment', 'admin', 'Razorpay payment', 'razorpay payment', 'دفع razorpay', 'pago razorpay', '', 'razorpay_zahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (344, 'razorpay_key', 'admin', 'Razorpay Key', 'Razorpay Key', 'مفتاح Razorpay', 'Clave de Razorpay', '', 'razorpay_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (345, 'favicon', 'admin', 'Favicon', 'favicon', 'الرمز المفضل', 'favicon', '', 'favicon');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (346, 'site_logo', 'admin', 'Site_logo', 'site logo', 'site logo', 'logotipo del sitio', '', 'seiten_logo');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (347, 'time_zone', 'admin', 'Time zone', 'time zone', 'المنطقة الزمنية', 'zona horaria', '', 'zeitzone');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (348, 'site_name', 'label', 'Site name', 'site name', 'اسم الموقع', 'nombre del sitio', '', 'seiten_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (349, 'description', 'admin', 'Description', 'description', 'الوصف', 'descripción', '', 'Beschreibung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (350, 'google_analytics', 'admin', 'Google Analytics', 'Google Analytics', 'تخطيط التسعي', 'Google Analytics', '', 'google_analytics');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (351, 'pricing_layout', 'admin', 'Pricing layout', 'pricing layout', 'تخطيط التسعير', 'diseño de precios', '', 'preisgestaltung_layout');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (352, 'style_1', 'admin', 'Style 1', 'Style 1', 'النمط 1', 'Estilo 1', '', 'stil_1');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (353, 'style_2', 'admin', 'Style 2', 'Style 2', 'النمط 2', 'Estilo 2', '', 'stil_2');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (354, 'reg_system', 'admin', 'Registration System', 'Registration System', 'نظام التسجيل', 'Sistema de registro', '', 'reg_system');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (355, 'auto_approval', 'label', 'Auto approval', 'auto approval', 'موافقة تلقائية', 'aprobación automática', '', 'automatische_genehmigung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (356, 'email_verify', 'label', 'Email Verification', 'Email Verification', 'التحقق من البريد الإلكتروني', 'Verificación de correo electrónico', '', 'email_verifizierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (357, 'free_verify', 'label', 'Free Verify', 'Free Verify', 'تحقق مجاني', 'Verificación gratuita', '', 'kostenlose_verifizierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (358, 'user_invoice', 'label', 'User invoice', 'user invoice', 'فاتورة المستخدم', 'factura de usuario', '', 'benutzerrechnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (359, 'rating', 'label', 'Rating', 'rating', 'تصنيف', 'valoración', '', 'bewertung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (360, 'recaptcha', 'label', 'Recaptcha', 'recaptcha', 'recaptcha', 'recaptcha', '', 'recaptcha');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (361, 'g_site_key', 'label', 'Recaptcha site key', 'recaptcha site key', 'مفتاح موقع recaptcha', 'recaptcha site key', '', 'g_seiten_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (362, 'g_secret_key', 'label', 'Secret Key', 'secret Key', 'مفتاح سري', 'clave secreta', '', 'g_geheim_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (363, 'order_configuration', 'label', 'Order Configuration', 'Order Configuration', 'تكوين الطلب', 'Configuración de pedidos', '', 'bestellkonfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (364, 'configuration', 'label', 'Configuration', 'Configuration', 'التكوين', 'Configuración', '', 'konfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (365, 'whatsapp_order', 'label', 'Whatsapp Order', 'Whatsapp Order', 'ترتيب Whatsapp', 'Pedido de Whatsapp', '', 'Whatsapp Bestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (366, 'runing_package', 'user', 'Runing Package', 'Runing Package', 'حزمة Runing', 'Paquete de ejecución', '', 'laufendes_paket');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (367, 'account_will_expired', 'user', 'Your package will expire after', 'Your package will expire after', 'ستنتهي الحزمة الخاصة بك بعد', 'Su paquete caducará después de', '', 'konto_wird_ablaufen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (368, 'package_expiration', 'user', 'Package expiration', 'Package expiration', 'انتهاء صلاحية العرض', 'Vencimiento del paquete', '', 'paket_ablauf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (369, 'lifetime', 'user', 'Lifetime', 'lifetime', 'مدى الحياة', 'de por vida', '', 'lebensdauer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (370, 'payment_not_active_due_to_payment', 'user', 'Your package is not active due to payment. (Pending..)', 'Your package is not active due to payment. (Pending..)', 'الحزمة الخاصة بك غير نشطة بسبب السداد. (معلق ..)', 'Su paquete no está activo debido al pago. (Pendiente ..)', '', 'zahlung_nicht_aktiv_aufgrund_von_zahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (371, 'package_reactive_msg', 'user', 'Your package is expired. you can re-active it again', 'Your package is expired. you can re-active it again', 'انتهت صلاحية الحزمة الخاصة بك. يمكنك إعادة تنشيطها مرة أخرى', 'Tu paquete ha caducado. Puedes reactivarlo de nuevo', '', 'paket_reaktivierungs_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (372, 'select_this_package', 'user', 'You can also select this package', 'You can also select this package', 'يمكنك أيضًا تحديد هذه العروض', 'También puede seleccionar este paquete', '', 'dieses_paket_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (373, 'contact_email', 'user', 'Contact email', 'contact email', 'البريد الإلكتروني للاتصال', 'correo electrónico de contacto', '', 'kontakt_email');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (374, 'colors', 'user', 'Colors', 'Colors', 'ألوان', 'Colores', '', 'farben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (375, 'color_picker', 'user', 'Color picker', 'Color picker', 'منتقي الألوان', 'Selector de color', '', 'farbenwähler');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (376, 'preloader', 'user', 'Preloader', 'preloader', 'أداة التحميل المسبق', 'precargador', '', 'vorkoader');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (377, 'choose_restaurant_name', 'home', 'Choose your Resaturant Name', 'Choose your Resaturant Name', 'اختر اسمك المقيم', 'Elija su nombre de restaurante', '', 'wähle_restaurant_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (379, 'create', 'home', 'Create', 'Create', 'إنشاء', 'Crear', '', 'erstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (380, 'try_with_qr_code', 'home', 'Try With QR code', 'Try With QR code', 'جرب باستخدام رمز الاستجابة السريعة', 'Probar con código QR', '', 'versuchen_mit_qr_code');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (381, 'quick_links', 'home', 'quick links', 'quick links', 'روابط سريعة', 'enlaces rápidos', 'Hızlı Linkler', 'Schnell Links');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (382, 'cookies_msg_1', 'home', 'We use cookies in this website to give you the best experience on our', 'We use cookies in this website to give you the best experience on our', 'نحن نستخدم ملفات تعريف الارتباط في هذا الموقع لنمنحك أفضل تجربة على موقعنا', 'Usamos cookies en este sitio web para brindarle la mejor experiencia en nuestro', '', 'cookies_nachricht_1');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (383, 'cookies_msg_2', 'home', 'site and show you relevant ads. To find out more, read our', 'site and show you relevant ads. To find out more, read our', 'الموقع وعرض الإعلانات ذات الصلة. لمعرفة المزيد , اقرأ', 'y mostrarle anuncios relevantes. Para obtener más información, lea nuestro', '', 'cookies_nachricht_2');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (384, 'copyright_text', 'home', 'All rights reserved.', 'All rights reserved.', 'جميع الحقوق محفوظة.', 'Todos los derechos reservados.', '', 'urheberrecht_text');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (385, 'sign-up', 'home', 'Signup', 'Signup', 'تسجيل', 'Registrarse', '', 'registrieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (386, 'login', 'home', 'login', 'login', 'تسجيل الدخول', 'iniciar sesión', '', 'Einloggen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (387, 'track_order', 'home', 'track order', 'track order', 'تتبع الطلب', 'orden de seguimiento', '', 'Bestellung Verfolgen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (388, 'lets_work_together', 'home', 'Let\'s work together', 'Let\'s work together', 'لنعمل معًا', 'Trabajemos juntos', '', 'lass_uns_zusammenarbeiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (389, 'join_our_team_text', 'home', 'Join my team so that together we can achieve success', 'Join my team so that together we can achieve success', 'انضم إلى فريقي حتى نتمكن معًا من تحقيق النجاح', 'Únete a mi equipo para que juntos podamos lograr el éxito', '', 'unser_team_beitreten_text');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (390, 'forgot_password', 'home', 'Forgot Password', 'Forgot Password', 'نسيت كلمة المرور', 'Olvidé mi contraseña', '', 'passwort_vergessen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (391, 'forget_pass_alert', 'home', 'Seems like you forgot your password for login? if true set your email to reset password', 'Seems like you forgot your password for login? if true set your email to reset password', 'يبدو أنك نسيت كلمة المرور لتسجيل الدخول؟ إذا كان هذا صحيحًا , فقم بتعيين بريدك الإلكتروني على إعادة تعيين كلمة المرور', '¿Parece que olvidó su contraseña para iniciar sesión? Si es verdadero, configure su correo electrónico para restablecer la contraseña', '', 'passwort_vergessen_warnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (392, 'remember_password', 'home', 'Remember Password?', 'Remember Password?', 'تذكر كلمة المرور؟', '¿Recordar contraseña?', '', 'passwort_merken');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (393, 'sign_in', 'home', 'Sign in', 'Sign in', 'تسجيل الدخول', 'Iniciar sesión', '', 'anmelden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (394, 'sign_in_text', 'home', 'Signup to discover your shop', 'Sign-in to discover your shop', 'اشترك لاكتشاف متجرك', 'Regístrese para descubrir su tienda', '', 'anmelden_text');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (395, 'dont_have_account', 'home', 'Don\'t have account', 'Don\'t have account', 'ليس لديك حساب', 'No tengo cuenta', '', 'kein_konto');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (396, 'read_terms', 'home', 'I have read the', 'I have read the', 'لقد قرأت', 'He leído el', '', 'agb_lesen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (397, 'accept_them', 'home', 'accept them', 'accept them', 'اقبلهم', 'aceptarlos', '', 'akzeptieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (398, 'already_member', 'home', 'Already a Member?', 'Already a Member?', 'هل أنت عضو بالفعل؟', '¿Ya eres miembro?', '', 'bereits_mitglied');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (399, 'message', 'home', 'message', 'message', 'رسالة', 'mensaje', '', 'nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (400, 'send', 'home', 'send', 'send', 'إرسال', 'enviar', '', 'senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (401, 'get_start', 'home', 'Get Started', 'Get Started', 'البدء', 'Comenzar', '', 'loslegen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (402, 'play_video', 'home', 'Play Video', 'Play Video', 'تشغيل الفيديو', 'Reproducir video', '', 'video_abspielen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (403, 'read_more', 'home', 'Read More', 'Read More', 'قراءة المزيد', 'Leer más', '', 'mehr_lesen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (404, 'all', 'home', 'All', 'All', 'الكل', 'Todos', 'Tümü', 'alle');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (405, 'has_been_add_to_cart', 'home', 'Has been added to the cart', 'has been added to the cart', 'تمت إضافته إلى عربة التسوق', 'se ha añadido al carrito', '', 'wurde_in_den_warenkorb_gelegt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (406, 'view_cart', 'home', 'View Cart', 'View Cart', 'عرض عربة التسوق', 'Ver carrito', '', 'warenkorb_ansehen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (407, 'size', 'home', 'size', 'size', 'الحجم', 'tamaño', '', 'Größe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (408, 'add_to_cart', 'home', 'Add cart', 'Add to cart', 'إضافة ', 'agregar carrito', '', 'In Den Warenkorb');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (409, 'order_form', 'home', 'order form', 'order form', 'نموذج الطلب', 'formulario de pedido', '', 'bestellformular');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (410, 'full_name', 'home', 'full name', 'full name', 'الاسم الكامل', 'nombre completo', '', 'vollständiger_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (411, 'person', 'home', 'person', 'person', 'شخص', 'persona', '', 'person');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (412, 'select_person', 'home', 'select person', 'select person', 'حدد الشخص', 'seleccionar persona', '', 'person_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (413, 'confirm_order', 'home', 'confirm order', 'confirm order', 'تأكيد الطلب', 'confirmar pedido', '', 'bestellung_bestätigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (414, 'order_confirmed', 'home', '', 'order confirmed', 'تم تأكيد الطلب', 'pedido confirmado', '', 'Bestellung bestätigt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (415, 'your_order_id', 'home', 'your order id', 'your order id', 'معرف طلبك', 'ID de su pedido', '', 'deine_bestellnummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (416, 'track_your_order_using_phone', 'home', 'You can track you order using your phone number', 'You can track you order using your phone number', 'يمكنك تتبع طلبك باستخدام رقم هاتفك', 'Puede rastrear su pedido usando su número de teléfono', '', 'verfolge_deine_bestellung_mit_telefon');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (417, 'total_qty', 'home', 'Total Qty', 'Total Qty', 'إجمالي الكمية', 'Cantidad total', '', 'gesamtmenge');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (418, 'total_price', 'home', 'Total Price', 'Total Price', 'السعر الإجمالي', 'Precio total', '', 'gesamtpreis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (419, 'order_date', 'home', 'Order Date', 'Order Date', 'تاريخ الطلب', 'Fecha de pedido', '', 'bestelldatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (420, 'rejected', 'home', 'rejected', 'rejected', 'مرفوض', 'rechazado', '', 'abgelehnt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (421, 'you_have_more', 'home', 'You have more', 'You have more', 'لديك المزيد', 'Tienes más', '', 'du_hast_mehr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (422, 'item_name', 'home', 'Item name', 'item name', 'اسم العنصر', 'nombre del elemento', '', 'artikel_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (423, 'delivery_address', 'home', 'Delivery address', 'Delivery address', 'عنوان التسليم', 'Dirección de entrega', '', 'lieferadresse');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (424, 'shop_address', 'home', 'shop address', 'shop address', 'عنوان المحل', 'dirección de la tienda', '', 'shop_adresse');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (425, 'share_your_location', 'home', 'Share your location here', 'Share your location here', 'شارك موقعك هنا', 'Comparte tu ubicación aquí', '', 'standort_teilen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (426, 'order_on_whatsapp', 'home', 'Order On Whatsapp', 'Order On Whatsapp', 'اطلب عبر Whatsapp', 'Pedido por Whatsapp', '', 'Auf Whatsapp Bestellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (427, 'order_now', 'home', 'order now', 'order now', 'اطلب الآن', 'pedir ahora', '', 'jetzt Bestellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (428, 'book_now', 'home', 'Book Now', 'Book Now', 'احجز الآن', 'Reserva ahora', 'Rezervasyon yap', 'jetzt Buchen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (429, 'watch_video', 'home', 'Watch Video', 'Watch Video', 'شاهد الفيديو', 'Ver video', '', 'Video Anschauen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (430, 'fast_service', 'home', 'Fast Service', 'Fast Service', 'خدمة سريعة', 'Servicio rápido', 'Hızlı servis', 'Schneller Service');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (431, 'fresh_food', 'home', 'Fresh Food', 'Fresh Food', 'طعام طازج', 'Alimentos frescos', 'Taze gıda', 'Frisches Essen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (432, '24_support', 'home', '24/7 Support', '24/7 Support', 'دعم على مدار الساعة', 'Soporte 24/7', '7/24 Destek', '24 Stunden Support');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (433, 'about_us', 'home', 'about us', 'about us', 'عنا', 'acerca de nosotros', '', 'Über Uns');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (434, 'maximum_order_alert', 'home', 'Sorry! This Restaurant reached the maximum orders', 'Sorry! This Restaurant reached the maximum orders', 'معذرة! وصل هذا المطعم إلى الحد الأقصى من الطلبات', '¡Lo siento! Este restaurante alcanzó el máximo de pedidos', '', 'maximalbestellwarnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (435, 'contact_us', 'home', 'Contact Us', 'Contact Us', 'اتصل بنا', 'Contáctenos', '', 'kontaktieren_sie_uns');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (436, 'checkout', 'home', 'checkout', 'checkout', 'متابعة الطلب', 'pago', '', 'Zur Kasse');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (437, 'sorry_cant_take_order', 'home', 'Sorry! We can not take any orders', 'Sorry! We can not take any orders', 'عذرًا! لا يمكننا تنفيذ أي طلبات', '¡Lo sentimos! No podemos aceptar ningún pedido', '', 'entschuldigung_kann_nicht_bestellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (438, '404_not', 'home', '404 Not Found', '404 Not Found', '404 غير موجود', '404 no encontrado', '', '404_nicht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (439, 'subject', 'home', 'subject', 'subject', 'موضوع', 'asunto', '', 'betreff');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (440, 'see_more', 'home', 'See More', 'See More', 'مشاهدة المزيد', 'Ver más', '', 'mehr_sehen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (441, 'number_of_guest', 'home', 'number of guest', 'number of guest', 'عدد الضيوف', 'número de invitados', '', 'anzahl_der_gäste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (442, 'reservation_type', 'home', 'reservation type', 'reservation type', 'نوع الحجز', 'tipo de reserva', '', 'reservierungstyp');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (443, 'any_special_request', 'home', 'Any Special Request?', 'Any Special Request?', 'أي طلب خاص؟', '¿Alguna solicitud especial?', '', 'besondere_anfrage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (444, 'booking_availabiti_text', 'home', 'Before booking an reservation please check our availability', 'Before booking an reservation please check our availability', 'قبل الحجز يرجى التحقق من التوافر لدينا', 'Antes de reservar una reserva, compruebe nuestra disponibilidad', '', 'buchungsverfügbarkeit_text');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (445, 'phone_number', 'home', 'Phone Number', 'Phone Number', 'رقم الهاتف', 'Número de teléfono', '', 'telefonnummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (446, 'check', 'home', 'check', 'check', 'تحقق', 'comprobar', '', 'prüfen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (447, 'search_with_username', 'home', 'Search with username', 'Search with username', 'بحث باسم المستخدم', 'Buscar con nombre de usuario', '', 'suche_mit_benutzername');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (448, 'search', 'home', 'search', 'search', 'بحث', 'buscar', '', 'suche');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (449, 'restaurant_name', 'home', 'Restaurant Name', 'Restaurant Name', 'اسم المطعم', 'Nombre del restaurante', '', 'restaurant_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (450, 'forgot', 'home', 'forgot', 'forgot?', 'نسيت؟', '¿Olvidaste?', '', 'vergessen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (451, 'total', 'home', 'total', 'total', 'إجمالي', 'total', '', 'Gesamt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (452, 'select_order_type', 'home', 'select order type', 'select order type', 'حدد نوع الطلب', 'seleccionar tipo de orden', '', 'Bestelltyp Auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (453, 'quick_view', 'home', 'Quick View', 'Quick View', 'نظرة سريعة', 'Vista rápida', '', 'schnellansicht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (454, 'reservation_date', 'home', 'reservation date', 'reservation date', 'تاريخ الحجز', 'fecha de reserva', '', 'reservierungsdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (455, 'restaurant_list', 'admin', 'restaurant list', 'restaurant list', 'قائمة المطاعم', 'lista de restaurantes', '', 'restaurant_liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (456, 'total_restaurant', 'admin', 'total restaurant', 'total restaurant', 'إجمالي المطعم', 'restaurante total', '', 'gesamt_restaurant');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (457, 'add restaurant', 'admin', 'add_restaurant', 'Add Restaurant', 'إضافة مبلغ', 'Agregar restaurante', '', 'restaurant_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (458, 'packages', 'admin', 'packages', 'packages', 'العروض', 'paquetes', 'Paketler', 'Pakete');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (459, 'features_list', 'admin', 'features list', 'features list', 'قائمة الميزات', 'lista de características', '', 'funktionsliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (460, 'type', 'label', 'type', 'type', 'type', 'tipo', '', 'typ');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (461, 'save_change_successfully', 'admin', 'save change successfully', 'save change successfully', 'احفظ التعديل بنجاح', 'guardar el cambio correctamente', '', 'änderungen_erfolgreich_gespeichert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (462, 'success_text', 'admin', 'save change successfully', 'save change successfully', 'احفظ التعديل بنجاح', 'guardar el cambio correctamente', '', 'erfolgs_text');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (463, 'error_text', 'admin', 'Somethings Were Wrong!!', 'Somethings Were Wrong!!', 'أشياء خاطئة !!', '¡¡Algo anda mal !!', '', 'fehler_text');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (464, 'yes', 'label', 'yes', 'yes', 'نعم', 'sí', '', 'ja');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (465, 'no', 'label', 'no', 'no', 'لا', 'no', '', 'nein');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (466, 'are_you_sure', 'label', 'are_you_sure', 'are you sure', 'هل أنت متأكد', 'estás seguro', '', 'bist_du_sicher');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (467, 'item_deactive_now', 'label', 'This item is deactive now', 'This item is deactive now', 'هذا العنصر غير نشط الآن', 'Este elemento está desactivado ahora', '', 'artikel_jetzt_inaktiv');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (468, 'item_active_now', 'label', 'Item is active now', 'Item is active now', 'العنصر نشط الآن', 'El artículo está activo ahora', '', 'artikel_jetzt_aktiv');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (469, 'want_to_reset_password', 'label', 'Want to reset Password?', 'Want to reset Password?', 'هل تريد إعادة تعيين كلمة المرور؟', '¿Desea restablecer la contraseña?', '', 'passwort_zurücksetzen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (470, 'sunday', 'user', 'Sunday', 'Sunday', 'الأحد', 'Domingo', '', 'Sonntag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (471, 'monday', 'user', 'Monday', 'Monday', 'الاثنين', 'Lunes', '', 'Montag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (472, 'tuesday', 'user', 'Tuesday', 'Tuesday', 'الثلاثاء', 'Martes', '', 'Dienstag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (473, 'wednesday', 'user', 'Wednesday', 'Wednesday', 'الأربعاء', 'Miércoles', '', 'Mittwoch');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (474, 'thursday', 'user', 'Thursday', 'Thursday', 'الخميس', 'Jueves', '', 'Donnerstag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (475, 'friday', 'user', 'Friday', 'Friday', 'الجمعة', 'Viernes', '', 'Freitag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (476, 'saturday', 'user', 'Saturday', 'Saturday', 'السبت', 'Sábado', '', 'Samstag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (477, 'booking_date', 'admin', 'Booking Date', 'Booking Date', 'تاريخ الحجز', 'Fecha de reserva', '', 'buchungsdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (478, 'pickup_alert', 'admin', 'Sorry Pickup is not available', 'Sorry Pickup is not available', 'لا يوجد خيار آسف', 'Lo sentimos, la recogida no está disponible', '', 'abholwarnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (479, 'qty', 'user', 'Qty', 'qty', 'الكمية', 'cantidad', '', 'Menge');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (480, 'item', 'user', 'Item', 'item', 'عنصر', 'elemento', '', 'artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (481, 'order_video', 'user', 'Order video link', 'Order video link', 'رابط طلب الفيديو', 'Solicitar enlace de video', '', 'bestellvideo');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (482, 'home_setting', 'user', 'Home Settings', 'Home Settings', 'إعدادات الصفحة الرئيسية', 'Configuración de inicio', '', 'startseite_einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (483, 'total_revenue', 'user', 'Total Revenue', 'Total Revenue', 'إجمالي الإيرادات', 'Ingresos totales', '', 'gesamterlös');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (484, 'categories', 'admin', 'categories', 'categories', 'فئات', 'categorías', '', 'kategorien');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (485, 'images', 'user', 'images', 'images', 'صور', 'imágenes', '', 'bilder');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (486, 'want_to_deactive_account', 'user', 'Want to deactive your account?', 'Want to deactivate your account?', 'هل تريد إلغاء تنشيط حسابك؟', '¿Quieres desactivar tu cuenta?', '', 'konto_deaktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (487, 'want_to_active_account', 'user', 'Want to active your account?', 'Want to activate your account?', 'هل تريد تنشيط حسابك؟', '¿Quiere activar su cuenta?', '', 'konto_aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (488, 'back', 'user', 'Back', 'Back', 'رجوع', 'Atrás', '', 'zurück');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (489, 'sorry_payment_faild', 'user', 'Sorry Payment Failed', 'Sorry Payment Failed', 'فشل الدفع آسفًا', 'Lo sentimos, el pago falló', '', 'zahlung_fehlgeschlagen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (490, 'my_cart', 'user', 'My cart', 'My cart', 'عربة التسوق', 'Mi carrito', '', 'Mein Warenkorb');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (491, 'shipping', 'user', 'shipping', 'shipping', 'توصيل', 'envío', '', 'Versand');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (492, 'sub_total', 'user', 'Sub Total', 'Sub Total', 'المجموع الفرعي', 'Subtotal', '', 'Zwischensumme');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (493, 'payment_not_available', 'user', 'payment not available', 'payment not available', 'الدفع غير متوفر', 'pago no disponible', '', 'Zahlung nicht verfügbar');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (494, 'stock_status', 'label', '', 'Stock Status', 'حالة المخزون', 'Estado de existencias', '', 'Bestandsstatus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (495, 'in_stock', 'label', '', 'In stock', 'متوفر', 'En stock', '', 'Auf Lager');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (496, 'remaining', 'label', '', 'remaining', 'المتبقي', 'restante', '', 'Verbleibend');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (497, 'reset_counter', 'label', '', 'reset counter', 'إعادة تعيين العداد', 'restablecer contador', '', 'Zähler zurücksetzen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (498, 'reset_stock_count', 'label', '', 'Stock Count will reset', 'سيتم إعادة تعيين جرد المخزون', 'El recuento de existencias se reiniciará', '', 'Bestandszähler zurücksetzen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (499, 'delete_success', 'label', '', 'Delete successfull', 'حذف بنجاح', 'Eliminación exitosa', '', 'Löschen erfolgreich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (500, 'availability', 'label', '', 'Availability', 'التوفر', 'Disponibilidad', '', 'Verfügbarkeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (501, 'out_of_stock', 'label', '', 'Out of stock', 'غير متوفر بالمخزون', 'Agotado', '', 'Ausverkauft');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (502, 'set_stock', 'label', '', 'set stock', 'تعيين المخزون', 'establecer stock', '', 'Bestand einstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (503, 'select_pickup_area', 'label', '', 'Select Pickup area', 'حدد منطقة الالتقاء', 'Seleccionar área de recogida', '', 'Abholbereich auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (504, 'show_map', 'label', '', 'show map', 'اعرض الخريطة', 'mostrar mapa', '', 'Karte anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (505, 'google_map_api_key', 'label', '', 'Google map api key', 'مفتاح واجهة برمجة تطبيقات خرائط Google', 'Clave de API del mapa de Google', '', 'Google Maps API-Schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (506, 'pickup_point', 'label', '', 'Pickup Point', 'نقطة الالتقاء', 'Punto de recogida', '', 'Abholpunkt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (507, 'google_map_status', 'label', '', 'google map status', 'حالة خريطة google', 'estado del mapa de Google', '', 'Google Maps Status');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (508, 'pickup_time_alert', 'label', '', 'Pickup time not set yet', 'لم يتم تحديد وقت الاستلام بعد', 'Aún no se ha establecido la hora de recogida', '', 'Abholzeit Warnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (509, 'dine-in', 'label', '', 'Dine in', 'تناول الطعام في المطعم', 'Cenar en', '', 'Vor Ort Verzehr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (510, 'create_table', 'label', '', 'Create table', 'إنشاء جدول', 'Crear tabla', '', 'Tisch erstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (511, 'table', 'label', '', 'Table', 'جدول', 'Tabla', '', 'Tisch');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (512, 'area', 'label', '', 'area', 'منطقة', 'área', '', 'Bereich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (513, 'areas', 'label', '', 'areas', 'مناطق', 'áreas', '', 'Bereiche');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (514, 'size', 'label', '', 'size', 'الحجم', 'tamaño', '', 'Größe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (515, 'add_new_area', 'label', '', 'Add New Area', 'إضافة منطقة جديدة', 'Agregar nueva área', '', 'Neuen Bereich hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (516, 'select_area', 'label', '', 'Select area', 'حدد منطقة', 'Seleccionar área', '', 'Bereich auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (517, 'area_name', 'label', '', 'Area name', 'اسم المنطقة', 'Nombre del área', '', 'Bereichsname');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (518, 'add_new_table', 'label', '', 'Add New Table', 'إضافة جدول جديد', 'Agregar nueva tabla', '', 'Neuen Tisch hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (519, 'table_list', 'label', '', 'Table List', 'قائمة الجدول', 'Lista de tablas', '', 'Tischliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (520, 'set_time', 'label', '', 'Set Time', 'ضبط الوقت', 'Establecer hora', '', 'Zeit einstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (521, 'set_prepared_time', 'label', '', 'Set Prepared Time', 'تعيين وقت التحضير', 'Establecer tiempo de preparación', '', 'Vorbereitungszeit einstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (522, 'prepared_time', 'label', '', 'Prepared Time', 'وقت التحضير', 'Tiempo preparado', '', 'Vorbereitungszeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (523, 'hours', 'label', '', 'hours', 'ساعات', 'horas', '', 'Stunden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (524, 'minutes', 'label', '', 'Minutes', 'دقائق', 'Minutos', '', 'Minuten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (525, 'order_status', 'label', '', 'order status', 'حالة الطلب', 'estado del pedido', '', 'Bestellstatus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (526, 'order_accept_msg', 'label', '', 'Order Accept by shop. order will shift after', 'قبول الطلب حسب المتجر. سيتحول الطلب بعد ذلك', 'Pedido aceptado por tienda. El pedido cambiará después de', '', 'Bestellannahmenachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (527, 'order_delivery_msg', 'label', '', 'Your order will on the way soon', 'طلبك قريبًا', 'Tu pedido estará pronto en camino', '', 'Bestelllieferungsnachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (528, 'select_table', 'label', '', 'Select Table', 'تحديد جدول', 'Seleccionar tabla', '', 'Tisch auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (529, 'seo_settings', 'admin', '', 'Seo Settings', 'إعدادات SEO', 'Configuración de SEO', '', 'SEO Einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (530, 'keyword', 'admin', '', 'Keyword', 'كلمات رئيسية', 'Palabra clave', '', 'schlüsselwort');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (531, 'description', 'admin', 'Description', 'description', 'الوصف', 'descripción', '', 'Beschreibung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (532, 'keywords', 'admin', '', 'keywords', 'كلمات رئيسية', 'palabras clave', '', 'Schlüsselwörter');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (533, 'confirm_oder', 'admin', '', 'confirm oder', 'تأكيد الطلب', 'confirmar orden', '', 'Bestätigen Sie die Bestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (534, 'add_extras', 'admin', '', 'Add Extras', 'إضافة إضافات', 'Agregar extras', '', 'Extras hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (535, 'add_new_extras', 'admin', '', 'Add new extras', 'إضافة إضافات جديدة', 'Agregar nuevos extras', '', 'Neue Extras hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (536, 'save', 'admin', '', 'save', 'حفظ', 'guardar', '', 'Speichern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (537, 'write_you_name_here', 'user', '', 'Write Your Name Here', 'اكتب اسمك هنا', 'Escriba su nombre aquí', '', 'Schreiben Sie hier Ihren Namen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (538, 'order_tracking', 'admin', '', 'Order Tracking', 'تتبع الطلبات', 'Seguimiento de pedidos', '', 'Bestellverfolgung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (539, 'google_map_link', 'user', '', 'Google map link', 'رابط خرائط Google', 'Enlace de mapa de Google', '', 'Google Maps Link');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (540, 'status_history', 'user', '', 'Status History', 'محفوظات الحالة', 'Historial de estado', '', 'Statusverlauf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (541, 'just_created', 'user', '', 'Just created', 'تم إنشاؤه للتو', 'Recién creado', '', 'Gerade erstellt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (542, 'status_from', 'user', '', 'Status from', 'الحالة من', 'Estado de', '', 'Status von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (543, 'by_admin', 'user', '', 'By admin', 'بواسطة المسؤول', 'Por administrador', '', 'Von Administrator');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (544, 'admin', 'user', '', 'Admin', 'المسؤول', 'Administrador', '', 'Administrator');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (545, 'order_is_on_the_way', 'user', '', 'Order is on the way', 'الطلب في الطريق', 'El pedido está en camino', '', 'Bestellung ist unterwegs');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (546, 'complete', 'user', '', 'Complete', 'مكتمل', 'Completo', '', 'Abgeschlossen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (547, 'new_order', 'user', '', 'New Order', 'طلب جديد', 'Nuevo pedido', '', 'Neue Bestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (548, 'served', 'user', '', 'served', 'تقدم', 'servido', '', 'Serviert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (549, 'serve', 'user', '', 'serve', 'تخدم', 'servir', '', 'Servieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (550, 'start_preparing', 'user', '', 'Start Preparing', 'بدء التحضير', 'Empezar a preparar', '', 'Vorbereitung beginnen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (551, 'today_remaining_off', 'user', '', 'Today is our off day', 'اليوم هو يوم إجازتنا', 'Hoy es nuestro día libre', '', 'Heute verbleibender Rabatt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (552, 'prepared_finish', 'user', '', 'Prepared finish', 'إنهاء مُجهز', 'Acabado preparado', '', 'Vorbereitung abgeschlossen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (553, 'create_menu', 'user', '', 'Create Menu', 'إنشاء قائمة', 'Crear menú', '', 'Menü erstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (554, 'generate_qr_code', 'user', '', 'Generate QR code', 'إنشاء رمز الاستجابة السريعة', 'Generar código QR', '', 'QR-Code generieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (555, 'menu_name', 'user', '', 'Menu name', 'اسم القائمة', 'Nombre del menú', '', 'Menü Name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (556, 'download_qr', 'user', '', 'Download QR', 'تنزيل QR', 'Descargar QR', '', 'QR-Code herunterladen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (557, 'congratulations', 'user', '', 'Congratulations', 'تهانينا', 'Felicitaciones', '', 'Herzlichen Glückwunsch');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (558, 'order_place_successfully', 'user', '', 'Order is completed and have been placed successfully', 'اكتمل الطلب وتم وضعه بنجاح', 'El pedido se completó y se realizó correctamente', '', 'Bestellung erfolgreich platziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (559, 'please_wait_msg', 'user', '', 'please wait..', 'من فضلك انتظر ..', 'por favor espere ..', '', 'Bitte warten Sie Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (560, 'token_number', 'user', '', 'token number', 'token number', 'número de token', '', 'Token-Nummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (561, 'create_qr', 'user', '', 'Create QR', 'إنشاء QR', 'Crear QR', '', 'QR-Code erstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (562, 'qr_builder', 'user', '', 'Qr Builder', 'رمز الاستجابة السريعة\n', 'Constructor de Qr', '', 'QR-Builder');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (563, 'new_dine_order', 'user', '', 'new dine order', 'طلب عشاء جديد', 'nueva orden de cena', '', 'Neue Vor-Ort-Bestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (564, 'restaurant_dine_in', 'user', '', 'Restaurant Dine-in', 'تناول الطعام في المطعم', 'Restaurante para cenar', '', 'Restaurant-Vor-Ort-Verzehr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (565, 'kds', 'user', '', 'KDS', 'KDS', 'KDS', '', 'KDS System');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (566, 'qr_code_generate_msg', 'user', '', 'After generating Qr code download the Qr code and add in your custom flyer', 'بعد إنشاء رمز Qr , قم بتنزيل رمز Qr وأضف نشرة إعلانية مخصصة لك', 'Después de generar el código Qr, descargue el código Qr y agregue su folleto personalizado', '', 'QR-Code generieren Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (567, 'extras', 'label', '', 'Extras', 'إضافات', 'Extras', '', 'Extras hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (568, 'order_running_msg', 'admin', '', 'Your order is still running! you cant order the same item until it is completed', 'طلبك لا يزال قيد التشغيل! لا يمكنك الحصول على نفس العنصر حتى يكتمل', '¡Tu pedido aún se está ejecutando! No puedes pedir el mismo artículo hasta que se complete', '', 'Bestellstatus aktualisieren Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (569, 'staff', 'admin', '', 'Staff', 'طاقم العمل', 'Personal', '', 'Mitarbeiter');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (570, 'staff_list', 'admin', '', 'Staff list', 'قائمة الموظفين', 'Lista de personal', '', 'Mitarbeiterliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (571, 'permission_list', 'admin', '', 'permission list', 'إذن_قائمة', 'lista de permisos', '', 'Berechtigungsliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (572, 'add_straff', 'admin', '', 'Add Staff', 'إضافة طاقم عمل', 'Agregar personal', '', 'Mitarbeiter hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (573, 'email_exits_in', 'admin', '', 'Email already exist into user table', 'البريد الإلكتروني موجود بالفعل في جدول المستخدم', 'El correo electrónico ya existe en la tabla de usuarios', '', 'E-Mail existiert in');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (574, 'email_alreay_exits', 'admin', '', 'Email already exits', 'البريد الإلكتروني يخرج بالفعل', 'El correo electrónico ya existe', '', 'E-Mail existiert bereits');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (575, 'available_permossion', 'admin', '', 'Available permission', 'السماح المتاح', 'Permosión disponible', '', 'Verfügbare Berechtigung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (576, 'not_found', 'label', '', 'Not found', 'غير موجود', 'No encontrado', '', 'Nicht gefunden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (577, 'live_order_status', 'label', '', 'Live order status', 'حالة الطلب المباشر', 'Estado del pedido en vivo', '', 'Live-Bestellstatus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (578, 'extras', 'label', '', 'Extras', 'إضافات', 'Extras', '', 'Extras hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (579, 'trial_for_week', 'admin', '', 'Trial for 1 week', 'تجربة لمدة أسبوع واحد', 'Prueba de 1 semana', '', 'Wochenprobephase');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (580, 'trial_for_fifteen', 'admin', '', 'Trial for 15 days', 'نسخة تجريبية لمدة 15 يومًا', 'Prueba de 15 días', '', 'Fünfzehntagestest');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (581, 'weekly', 'admin', '', 'Weekly', 'أسبوعي', 'Semanal', '', 'Wöchentlich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (582, '15_days', 'admin', '', '15 days', '15 يومًا', '15 días', '', '15 Tage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (583, 'is_signup', 'admin', '', 'Show signup button', 'إظهار زر التسجيل', 'Mostrar botón de registro', '', 'Ist angemeldet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (584, 'is_auto_verified', 'admin', '', 'Auto approved Trail user', 'مستخدم ممر معتمد تلقائيًا', 'Usuario de Trail aprobado automáticamente', '', 'Automatisch verifiziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (585, 'twillo_sms_settings', 'admin', '', 'Twilio SMS Settings', 'إعدادات Twillo SMS', 'Configuración de SMS Twillo', '', 'Twilio-SMS-Einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (586, 'account_sid', 'admin', '', 'Account SID', 'معرف الحساب', 'Cuenta SID', '', 'Konto-ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (587, 'auth_token', 'admin', '', 'Auth Token', 'رمز المصادقة', 'Token de autenticación', '', 'Authentifizierungstoken');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (588, 'twillo_virtual_number', 'admin', '', 'Twilio Virtual Number', 'رقم Twilio الظاهري', 'Número virtual Twillo', '', 'Twilio-Virtuelle Nummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (589, 'inactive', 'admin', '', 'Inactive', 'غير نشط', 'Inactivo', '', 'Inaktiv');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (590, 'accept_sms', 'admin', '', 'Accept SMS', 'قبول الرسائل القصيرة', 'Aceptar SMS', '', 'Akzeptieren Sie SMS');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (591, 'complete_sms', 'admin', '', 'Complete SMS', 'SMS كاملة', 'SMS completo', '', 'SMS erfolgreich versendet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (592, 'sms_sent', 'admin', '', 'Message Sent', 'تم إرسال الرسالة', 'Mensaje enviado', '', 'SMS gesendet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (593, 'accept_message', 'admin', '', 'Accept Message', 'قبول الرسالة', 'Aceptar mensaje', '', 'Akzeptieren Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (594, 'completed_message', 'admin', '', 'Completed Message', 'رسالة مكتملة', 'Mensaje completo', '', 'Abgeschlossen Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (595, 'upgrade', 'admin', '', 'Upgrade', 'ترقية', 'Actualizar', '', 'Aktualisierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (596, 'show', 'label', '', 'show', 'عرض', 'mostrar', '', 'Anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (597, 'sorry_we_are_closed', 'label', '', 'Sorry We are closed', 'معذرة لقد أغلقنا', 'Lo sentimos, estamos cerrados', '', 'Entschuldigung, wir haben geschlossen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (598, 'please_check_the_available_list', 'label', '', 'Please check the available list', 'تحقق من القائمة المتاحة', 'Por favor revise la lista disponible', '', 'Bitte überprüfen Sie die verfügbare Liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (599, 'paypal_environment', 'label', '', 'Paypal Environment', 'بيئة Paypal', 'Entorno de Paypal', '', 'PayPal-Umgebung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (600, 'pickup_points', 'label', '', 'Pickup Points', 'نقاط الالتقاء', 'Puntos de recogida', '', 'Abholpunkte');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (601, 'order_is_waiting_for_picked', 'label', '', 'Order is waiting for picked', 'الطلب ينتظر الاختيار', 'El pedido está esperando ser recogido', '', 'Bestellung wartet auf Abholung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (602, 'phone_already_exits', 'label', '', 'Phone already exits', 'الهاتف يخرج بالفعل', 'El teléfono ya sale', '', 'Telefonnummer existiert bereits');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (603, 'customer_login', 'label', '', 'Customer Login', 'تسجيل دخول العميل', 'Inicio de sesión de cliente', '', 'Kundenanmeldung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (604, 'date', 'label', '', 'Date', 'التاريخ', 'Fecha', '', 'Datum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (605, 'order_status', 'label', '', 'Order status', 'حالة الطلب', 'Estado del pedido', '', 'Bestellstatus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (606, 'customer', 'label', '', 'Customer', 'العميل', 'Cliente', '', 'Kunde');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (607, 'unit_price', 'label', '', 'Unit price', 'سعر الوحدة', 'Precio unitario', '', 'Stückpreis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (608, 'amount', 'label', '', 'Amount', 'المبلغ', 'Cantidad', '', 'Betrag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (609, 'export', 'label', '', 'Export', 'تصدير', 'Exportar', '', 'Exportieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (610, 'print', 'label', '', 'Print', 'طباعة', 'Imprimir', '', 'Drucken');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (611, 'customer_name', 'label', '', 'Customer Name', 'اسم العميل', 'Nombre del cliente', '', 'Kundenname');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (612, 'delivery_staff_panel', 'label', '', 'Delivery Staff panel', 'لوحة طاقم التوصيل', 'Panel de personal de entrega', '', 'Lieferpersonal-Panel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (613, 'delivery_staff', 'label', '', 'Delivery Staff', 'طاقم التوصيل', 'Personal de entrega', '', 'Lieferpersonal');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (614, 'default_prepared_time', 'label', '', 'Default Prepared time', 'وقت التحضير الافتراضي', 'Tiempo de preparación predeterminado', '', 'Standard-Vorbereitungszeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (615, 'total_earnings', 'label', '', 'Total Earnings', 'إجمالي الأرباح', 'Ingresos totales', '', 'Gesamteinnahmen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (616, 'picked', 'label', '', 'Picked', 'منتقى', 'Elegido', '', 'Abgeholt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (617, 'mark_as_picked', 'label', '', 'Mark as picked', 'وضع علامة على أنه مختار', 'Marcar como elegido', '', 'Als abgeholt markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (618, 'mark_as_completed', 'label', '', 'Mark as completed', 'وضع علامة كمكتملة', 'Marcar como completado', '', 'Als abgeschlossen markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (619, 'mark_as_accepted', 'label', '', 'Mark as Accepted', 'وضع علامة كمقبول', 'Marcar como aceptado', '', 'Als akzeptiert markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (620, 'account', 'label', '', 'Account', 'الحساب', 'Cuenta', '', 'Konto');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (621, 'ongoing', 'label', '', 'On Going', 'قيد التنفيذ', 'Continuando', '', 'Laufend');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (622, 'earning', 'label', '', 'Earning', 'ربح', 'Ganancia', '', 'Einnahmen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (623, 'cod', 'label', '', 'COD', 'COD', 'COD', '', 'COD');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (624, 'accepted_by_delivery_staff', 'label', '', 'Accepted By Delivery Staff', 'تم قبوله بواسطة طاقم التوصيل', 'Aceptado por el personal de entrega', '', 'Vom Lieferpersonal akzeptiert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (625, 'accepted_by', 'label', '', 'Accepted By', 'مقبول من قبل', 'Aceptado por', '', 'Akzeptiert von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (626, 'delivery_staff', 'label', '', 'Delivery Staff', 'طاقم التوصيل', 'Personal de entrega', '', 'Lieferpersonal');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (627, 'picked_by_delivery_staff', 'label', '', 'Picked By Delivery Staff', 'اختارها طاقم التوصيل', 'Elegido por el personal de entrega', '', 'Vom Lieferpersonal abgeholt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (628, 'picked_by', 'label', '', 'Picked By', 'انتقى بواسطة', 'Seleccionado por', '', 'Abgeholt von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (629, 'delivered_by', 'label', '', 'Delivered By', 'تم التسليم بواسطة', 'Entregado por', '', 'Geliefert von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (630, 'customer_info', 'label', '', 'Customer info', 'معلومات العميل', 'Información del cliente', '', 'Kundeninformationen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (631, 'delivered_by_delivery_staff', 'label', '', 'Delivered By Delivery Staff', 'تم التوصيل بواسطة طاقم التوصيل', 'Entregado por personal de entrega', '', 'Vom Lieferpersonal zugestellt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (632, 'thank_you_purchase_msg', 'label', '', 'Thank you for shopping with us . Please come again', 'شكرًا لك على التسوق معنا. يرجى العودة مرة أخرى', 'Gracias por comprar con nosotros. Vuelva de nuevo', '', 'Vielen Dank für Ihren Kauf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (633, 'ordered_placed', 'label', '', 'Order Placed', 'تم تقديم الطلب', 'Pedido realizado', '', 'Bestellung aufgegeben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (634, 'we_have_received_your_order', 'label', '', 'We have received your order', 'لقد تلقينا طلبك', 'Hemos recibido su pedido', '', 'Wir haben Ihre Bestellung erhalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (635, 'order_confirmed', 'label', '', 'Order confirmed', 'تم تأكيد الطلب', 'Pedido confirmado', '', 'Bestellung bestätigt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (636, 'your_order_has_been_confirmed', 'label', '', 'Your order has beep confirmed', 'تم تأكيد طلب beeb الخاص بك', 'Tu pedido ha sido confirmado', '', 'Ihre Bestellung wurde bestätigt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (637, 'Order Processed', 'label', '', 'Order Processed', 'تمت معالجة الطلب', 'Pedido procesado', '', 'Bestellung bearbeitet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (638, 'date', 'label', '', 'Date', 'التاريخ', 'Fecha', '', 'Datum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (639, 'we_are_preparing_your_order', 'label', 'We are preparing your order', 'We are preparing your order', 'نحن نجهز طلبك', 'Estamos preparando su pedido', '', 'Wir bereiten Ihre Bestellung vor');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (640, 'ready_to_pickup', 'label', 'Ready to pickup', 'Ready to pickup', 'جاهز للاستلام', 'Listo para recoger', '', 'Bereit zur Abholung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (641, 'your_order_is_ready_to_pickup', 'label', 'Your order is ready for pickup', 'Your order is ready for pickup', 'طلبك جاهز للاستلام', 'Su pedido está listo para ser recogido', '', 'Ihre Bestellung ist zur Abholung bereit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (642, 'order_confirmed_by_dboy', 'label', 'Order confirm by delivery staff', 'Order confirm by delivery staff', 'تأكيد الطلب بواسطة طاقم التوصيل', 'Pedido confirmado por el personal de entrega', '', 'Bestellung von DBoy bestätigt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (643, 'order_accept_by_dboy', 'label', 'Order accepted by delivery staff', 'Order accepted by delivery staff', 'تم قبول الطلب من قبل طاقم التوصيل', 'Pedido aceptado por el personal de entrega', '', 'Bestellung von DBoy akzeptiert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (644, 'order_picked', 'label', 'Order Picked', 'Order Picked', 'تم انتقاء الطلب', 'Pedido seleccionado', '', 'Bestellung abgeholt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (645, 'order_picked_by_dboy', 'label', 'Order picked by delivery staff', 'Order picked by delivery staff', 'تم اختيار الطلب بواسطة طاقم التوصيل', 'Pedido recogido por el personal de entrega', '', 'Bestellung von DBoy abgeholt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (646, 'order_delivered', 'label', 'Order Delivered', 'Order Delivered', 'تم تسليم الطلب', 'Pedido entregado', '', 'Bestellung zugestellt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (647, 'order_delivered_successfully', 'label', 'Order delivered successfully', 'Order delivered successfully', 'تم تسليم الطلب بنجاح', 'Pedido entregado correctamente', '', 'Bestellung erfolgreich zugestellt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (648, 'filter', 'admin', 'Filter', 'Filter', 'عامل التصفية', 'Filtro', '', 'Filter');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (649, 'clear', 'admin', 'Clear', 'Clear', 'مسح', 'Borrar', '', 'Löschen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (650, 'shipping_address', 'admin', 'Shipping Address', 'Shipping Address', 'عنوان التوصيل', 'Dirección de envío', '', 'Lieferadresse');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (651, 'get_direction', 'admin', 'Get direction', 'Get direction', 'الحصول على الاتجاه', 'Obtener dirección', '', 'Wegbeschreibung erhalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (652, 'call_now', 'admin', 'Call now', 'Call now', 'اتصل الآن', 'Llamar ahora', '', 'Jetzt anrufen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (653, 'order_items', 'admin', 'OrderItems', 'Order Items', 'عناصر الطلب', 'Artículos de pedido', '', 'Bestellpositionen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (654, 'shop_configuration', 'admin', 'Shop Configuration', 'Shop Configuration', 'تكوين المتجر', 'Configuración de la tienda', '', 'Shop Konfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (655, 'staffs', 'admin', 'Staffs', 'Staffs', 'طاقم العمل', 'Personal', '', 'Mitarbeiter');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (656, 'restaurants', 'admin', 'Restaurants', 'Restaurants', 'مطاعم', 'Restaurantes', '', 'Restaurants');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (657, 'preferences', 'admin', 'Preferences', 'Preferences', 'التفضيلات', 'Preferencias', '', 'Einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (658, 'recaptcha_settings', 'admin', 'Recaptcha Settings', 'ReCaptcha Settings', 'إعدادات Recaptcha', 'Configuración de Recaptcha', '', 'ReCAPTCHA-Einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (659, 'on', 'admin', 'On', 'on', 'تشغيل', 'activado', '', 'An');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (660, 'off', 'admin', 'Off', 'off', 'إيقاف', 'desactivado', '', 'Aus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (661, 'enable_to_allow_signup_system', 'admin', 'Enable to allow sign up users to your system', 'Enable to allow sign up users to your system', 'مكّن للسماح للمستخدمين بتسجيل الدخول إلى نظامك', 'Habilitar para permitir que los usuarios se registren en su sistema', '', 'Aktivieren, um das Anmeldesystem zuzulassen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (662, 'enable_to_allow_auto_approve', 'admin', 'Enable to allow auto-approved when users sign up to your system', 'Enable to allow auto-approved when users sign up to your system', 'مكّن للسماح بالموافقة التلقائية عند تسجيل المستخدمين في نظامك', 'Habilite para permitir la aprobación automática cuando los usuarios se registren en su sistema', '', 'Aktivieren, um automatische Genehmigung zuzulassen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (663, 'enable_to_allow_email_verification', 'admin', 'Enable to allow email verification when users sign up to your system', 'Enable to allow email verification when users sign up to your system', 'مكّن للسماح بالتحقق من البريد الإلكتروني عند قيام المستخدمين بالتسجيل في نظامك', 'Habilite para permitir la verificación de correo electrónico cuando los usuarios se registren en su sistema', '', 'Aktivieren, um die E-Mail-Verifizierung zuzulassen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (664, 'enable_to_allow_free_email_verification', 'admin', 'Enable to allow email verification when users sign up with free package to your system', 'Enable to allow email verification when users sign up with free package to your system', 'مكّن للسماح بالتحقق من البريد الإلكتروني عند قيام المستخدمين بالتسجيل باستخدام حزمة مجانية لنظامك', 'Habilite para permitir la verificación de correo electrónico cuando los usuarios se registren con un paquete gratuito en su sistema', '', 'Aktivieren, um die kostenlose E-Mail-Verifizierung zuzulassen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (665, 'user_get_an_invoice', 'admin', 'Users get an invoice when signing up to your system', 'Users get an invoice when signing up to your system', 'يحصل المستخدمون على فاتورة عند التسجيل في نظامك', 'Los usuarios obtienen una factura al registrarse en su sistema', '', 'Benutzer erhalten eine Rechnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (666, 'rating_in_landing_page', 'admin', 'Show rating in landing page', 'Show rating in landing page', 'عرض التصنيف في الصفحة المقصودة', 'Mostrar calificación en la página de destino', '', 'Bewertung auf der Startseite');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (667, 'show_signup_button', 'admin', 'Enable to Show signup button in menu', 'Enable to Show signup button in menu', 'تمكين لإظهار زر التسجيل في القائمة', 'Habilitar para mostrar el botón de registro en el menú', '', 'Anmeldebutton anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (668, 'auto_approve_trial_user', 'admin', 'Enable to Auto Approved trial users when registration in system', 'Enable to Auto Approved trial users when registration in system', 'قم بتمكين مستخدمي الإصدار التجريبي المعتمد تلقائيًا عند التسجيل في النظام', 'Habilitar a los usuarios de prueba aprobados automáticamente al registrarse en el sistema', '', 'Automatische Genehmigung von Testbenutzern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (669, 'add_restaurant', 'admin', 'Add New Restaurant', 'Add New Restaurant', 'إضافة مطعم جديد', 'Agregar nuevo restaurante', '', 'Restaurant hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (670, 'country', 'admin', 'Country', 'Country', 'دولة', 'País', '', 'Land');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (671, 'fifteen', 'admin', 'Fifteen', 'Fifteen', 'خمسة عشر', 'Quince', '', 'Fünfzehn');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (672, 'language_data', 'admin', 'Language Data', 'Language Data', 'بيانات اللغة', 'Datos de idioma', '', 'Sprachdaten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (673, 'enable_to_allow_in_your_system', 'admin', 'Enable to allow in your system', 'Enable to allow in your system', 'قم بتمكين السماح في نظامك', 'Habilitar para permitir en su sistema', '', 'Aktivieren, um in Ihrem System zuzulassen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (674, 'stock_counter', 'admin', 'Stock counter', 'Stock counter', 'عداد المخزون', 'Contador de existencias', '', 'Bestandszähler');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (675, 'payment_history', 'admin', 'Payment History', 'Payment History', 'تاريخ الدفع', 'Historial de pagos', '', 'Zahlungsverlauf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (676, 'default_email', 'admin', 'Default Email', 'Default Email', 'البريد الإلكتروني الافتراضي', 'Correo electrónico predeterminado', '', 'Standard-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (677, 'invoice', 'admin', 'Invoice', 'Invoice', 'فاتورة', 'Factura', '', 'Rechnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (678, 'table_order', 'admin', 'Table Order', 'Table Order', 'ترتيب الجدول', 'Orden de la tabla', '', 'Tischbestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (679, 'restaurant_configuration', 'admin', 'Restaurant configuration', 'Restaurant configuration', 'تكوين المطعم', 'Configuración del restaurante', '', 'Restaurantkonfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (680, 'tables', 'admin', 'Tables', 'Tables', 'الجداول', 'Tablas', '', 'Tische');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (681, 'img_url', 'admin', 'Image URL', 'Image URL', 'رابط الصورة', 'URL de la imagen', '', 'Bild-URL');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (682, 'dboy_list', 'admin', 'Delivery staff List', 'Delivery staff List', 'قائمة موظفي التوصيل', 'Lista de personal de entrega', '', 'Lieferantenliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (683, 'delivery_guy_login', 'admin', 'Delivery Guy Login', 'Delivery Guy Login', 'رجل التوصيل تسجيل الدخول', 'Inicio de sesión del repartidor', '', 'Lieferant Anmeldung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (684, 'personal_info', 'admin', 'Personal Info', 'Personal Info', 'معلومات شخصية', 'Información personal', '', 'Persönliche Informationen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (685, 'customer_panel', 'admin', 'Customer panel', 'Customer panel', 'لوحة العملاء', 'Panel de clientes', '', 'Kundenbereich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (686, 'orders', 'admin', 'Orders', 'Orders', 'الطلب #٪ s', 'Pedidos', '', 'Bestellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (687, 'pos_print', 'admin', 'POS Print', 'POS Print', 'طباعة POS', 'Impresión POS', '', 'POS-Druck');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (688, 'change_password', 'admin', 'Change Password', 'Change Password', 'تغيير كلمة المرور', 'Cambiar contraseña', '', 'Passwort ändern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (689, 'order_processed', 'admin', 'Order Processed', 'Order Processed', 'تم انهاء الطلب', 'Pedido procesado', '', 'Bestellung bearbeitet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (690, 'new_registration', 'admin', 'New Registration', 'New Registration', 'تسجيل جديد', 'Nuevo registro', '', 'Neue Registrierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (691, 'already_have_account', 'admin', 'Already have account', 'Already have account', 'لديك حساب بالفعل', 'Ya tengo cuenta', '', 'Haben Sie bereits ein Konto?');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (692, 'login_success', 'admin', 'Login successfull', 'Login successful', 'تم تسجيل الدخول بنجاح', 'Inicio de sesión exitoso', '', 'Anmeldung erfolgreich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (693, 'welcome', 'admin', 'Welcome', 'Welcome', 'أهلا بك', 'Bienvenido', '', 'Willkommen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (694, 'invalid_login', 'admin', 'Invalid login', 'Invalid login', 'تسجيل الدخول غير صالح', 'Inicio de sesión no válido', '', 'Ungültige Anmeldung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (695, 'registration_successfull', 'admin', 'Registration successfull', 'Registration successful', 'تم التسجيل بنجاح', 'Registro exitoso', '', 'Registrierung erfolgreich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (696, 'sorry', 'admin', 'Sorry', 'Sorry', 'آسف', 'Lo siento', '', 'Entschuldigung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (697, 'top_10_selling_item', 'admin', 'Top 10 Selling Item', 'Top 10 Selling Item', 'أفضل 10 سلعة مبيعًا', 'Los 10 artículos más vendidos', '', 'Top 10 der meistverkauften Artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (698, 'top_10_most_earning_items', 'admin', 'Top 10 Most Earning Items', 'Top 10 Most Earning Items', 'أعلى 10 عناصر ربحًا', 'Los 10 artículos con más ingresos', '', 'Top 10 der am meisten verdienenden Artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (699, 'total_amount', 'admin', 'Total Amount', 'Total Amount', 'إجمالي المبلغ', 'Importe total', '', 'Gesamtsumme');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (700, 'times', 'admin', 'Times', 'Times', 'تايمز', 'Tiempos', '', 'Mal');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (701, 'tax_fee', 'admin', 'Tax Fee', 'Tax Fee', 'رسوم الضرائب', 'Tasa de impuestos', '', 'Steuergebühr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (702, 'minimum_order', 'admin', 'Minumum Order', 'Minimum Order', 'الحد الأدنى للطلب', 'Pedido mínimo', '', 'Mindestbestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (703, 'tax', 'admin', 'Tax', 'Tax', 'ضريبة', 'Impuesto', '', 'Steuer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (704, 'dine_in', 'admin', 'Dine-In', 'Dine-In', 'تناول الطعام', 'Cenar', '', 'Vor-Ort-Verzehr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (705, 'language_list', 'admin', 'Languages List', 'Languages List', 'قائمة اللغات', 'Lista de idiomas', '', 'Sprachliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (706, 'show_language_dropdown_in_home', 'admin', 'Show Languages Dropdown in landing page', 'Show Languages Dropdown in landing page', 'عرض قائمة اللغات المنسدلة في الصفحة المقصودة', 'Mostrar menú desplegable de idiomas en la página de destino', '', 'Sprachauswahlliste auf der Startseite anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (707, 'cart_is_empty', 'admin', 'Cart is empty', 'Cart is empty', 'عربة التسوق فارغة', 'El carrito está vacío', '', 'Warenkorb ist leer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (708, 'razorpay_key_id', 'admin', 'Razorpay Key Id', 'Razorpay Key Id', 'معرف مفتاح Razorpay', 'ID de clave de Razorpay', '', 'Razorpay-Schlüssel-ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (709, 'secret_key', 'admin', 'Secret Key', 'Secret Key', 'المفتاح السري', 'Clave secreta', '', 'Geheimschlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (710, 'view_shop', 'admin', 'View Shop', 'View Shop', 'عرض المتجر', 'Ver tienda', '', 'Shop anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (711, 'give_your_feedback', 'admin', 'Please give your feedback', 'Please give your feedback', 'الرجاء تقديم ملاحظاتك', 'Por favor, envíenos sus comentarios', '', 'Geben Sie Ihr Feedback ab');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (712, 'sort_by_newest', 'admin', 'Sort By Newest', 'Sort By Newest', 'فرز حسب الأحدث', 'Ordenar por el más nuevo', '', 'Nach neuesten sortieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (713, 'sort_by_highest_rating', 'admin', 'Sort BY Highest Rating', 'Sort BY Highest Rating', 'فرز حسب أعلى تقييم', 'Ordenar por clasificación más alta', '', 'Nach höchster Bewertung sortieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (714, 'sort_by_lowest_rating', 'admin', 'Sort BY Lowest Rating', 'Sort BY Lowest Rating', 'فرز حسب أقل تقييم', 'Ordenar por calificación más baja', '', 'Nach niedrigster Bewertung sortieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (715, 'one_min_ago', 'admin', 'One minute ago', 'One minute ago', 'قبل دقيقة واحدة', 'hace un minuto', '', 'Eine Minute zuvor');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (716, 'minutes_ago', 'admin', 'Minutes ago', 'Minutes ago', 'قبل دقيقة', 'hace minutos', '', 'Minuten zuvor');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (717, 'an_hour_ago', 'admin', 'An hour ago', 'An hour ago', 'قبل ساعة', 'hace una hora', '', 'Eine Stunde zuvor');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (718, 'hrs_ago', 'admin', 'Hrs ago', 'Hrs ago', 'قبل ساعة', 'hace horas', '', 'Std. zuvor');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (719, 'yesterday', 'admin', 'Yesterday', 'Yesterday', 'أمس', 'Ayer', '', 'Gestern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (720, 'days_ago', 'admin', 'Days ago', 'Days ago', 'منذ أيام', 'hace días', '', 'Tage zuvor');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (721, 'a_week_ago', 'admin', 'A week ago', 'A week ago', 'قبل أسبوع', 'hace una semana', '', 'Eine Woche zuvor');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (722, 'weeks_ago', 'admin', 'Weeks ago', 'Weeks ago', 'منذ أسابيع', 'hace semanas', '', 'Wochen zuvor');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (723, 'a_month_ago', 'admin', 'A month ago', 'A month ago', 'قبل شهر', 'hace un mes', '', 'Vor einem Monat');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (724, 'months_ago', 'admin', 'Months ago', 'Months ago', 'منذ شهور', 'hace meses', '', 'Vor Monaten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (725, 'one_year_ago', 'admin', 'One year ago', 'One year ago', 'منذ عام واحد', 'hace un año', '', 'Vor einem Jahr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (726, 'years_ago', 'admin', 'Years ago', 'Years ago', 'منذ سنوات', 'hace años', '', 'Vor Jahren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (727, 'statistics', 'admin', 'Statistics', 'Statistics', 'إحصائيات', 'Estadísticas', '', 'Statistik');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (728, 'total_purchased_item', 'admin', 'Total Purchased Items', 'Total Purchased Items', 'إجمالي العناصر المشتراة', 'Total de artículos comprados', '', 'Gesamt gekaufte Artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (729, 'average_based_on', 'admin', 'Average based on', 'Average based on', 'متوسط على أساس', 'promedio basado en', '', 'Durchschnitt basierend auf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (730, 'test_mail', 'admin', 'Test Mail', 'Test Mail', 'بريد تجريبي', 'Correo de prueba', '', 'Testmail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (731, 'documentation', 'admin', 'Documentation', 'Documentation', 'التوثيق', 'Documentación', '', 'Dokumentation');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (732, 'customer_list', 'admin', 'Customer List', 'Customer List', 'قائمة العملاء', 'Lista de clientes', '', 'Kundenliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (733, 'total_orders', 'admin', 'Total Orders', 'Total Orders', 'إجمالي الطلبات', 'Total de pedidos', '', 'Gesamtbestellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (734, 'add_customer', 'admin', 'Add Customer', 'Add Customer', 'إضافة عميل', 'Agregar cliente', '', 'Kunden hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (735, 'empty-phone', 'admin', 'Your phone is empty, please insert your phone number', 'Your phone is empty, please insert your phone number', 'هاتفك فارغ الرجاء إدخال رقم هاتفك', 'tu teléfono está vacío, ingresa tu número de teléfono', '', 'Leere Telefonnummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (736, 'empty-country-1', 'admin', 'Your country is empty, please Set your country', 'Your country is empty, please Set your country', 'دولتك فارغة , يرجى تحديد بلدك', 'Su país está vacío, por favor configure su país', '', 'Leeres Land-1');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (737, 'empty-country-2', 'admin', 'County will helps you to set your phone code and currency.', 'County will helps you to set your phone code and currency.', 'ستساعدك المقاطعة على تعيين رمز هاتفك وعملتك.', 'El condado le ayudará a configurar su código telefónico y moneda.', '', 'Leeres Land-2');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (738, 'empty-profile', 'admin', 'Your Profile picture is empty, Please Set your Profile picture.', 'Your Profile picture is empty, Please Set your Profile picture.', 'صورة ملفك الشخصي فارغة , يرجى تعيين صورة ملفك الشخصي.', 'Su foto de perfil está vacía, por favor configure su foto de perfil.', '', 'Leeres Profil');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (739, 'restaurant_empty_msg-0', 'admin', 'If You do not find menu and other options', 'If You do not find menu and other options', 'إذا لم تجد القائمة والخيارات الأخرى', 'Si no encuentra el menú y otras opciones', '', 'Restaurant leer Nachricht-0');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (740, 'restaurant_empty_msg-1', 'admin', 'Make sure Restaurant profile is complete', 'Make sure Restaurant profile is complete', 'تأكد من اكتمال ملف تعريف المطعم', 'Asegúrese de que el perfil del restaurante esté completo', '', 'Restaurant leer Nachricht-1');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (741, 'restaurant_empty_msg-2', 'admin', 'You have to add phone, dial code and country', 'You have to add phone, dial code and country', 'يجب عليك إضافة رقم الهاتف ورمز الاتصال والدولة', 'Tienes que agregar teléfono, código de marcación y país', '', 'Restaurant leer Nachricht-2');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (742, 'staff_password_msg', 'admin', 'Staff password will set 1234', 'Staff password will set 1234', 'كلمة مرور الموظفين ستعيّن 1234', 'La contraseña del personal establecerá 1234', '', 'Mitarbeiterpasswort Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (743, 'staff_password_change_msg', 'admin', 'Staff can change their password after login', 'Staff can change their password after login', 'يمكن للموظفين تغيير كلمة المرور الخاصة بهم بعد تسجيل الدخول', 'El personal puede cambiar su contraseña después de iniciar sesión', '', 'Mitarbeiterpasswortänderung Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (744, 'dboy_password_msg', 'admin', 'Delivery guy password will set 1234', 'Delivery guy password will set 1234', 'كلمة مرور مسؤول التوصيل ستعيّن 1234', 'La contraseña del repartidor establecerá 1234', '', 'Kellnerpasswort Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (745, 'dboy_password_change_msg', 'admin', 'Delivery guy can change password after login', 'Delivery guy can change password after login', 'يستطيع عامل التوصيل تغيير كلمة المرور بعد تسجيل الدخول', 'El repartidor puede cambiar la contraseña después de iniciar sesión', '', 'Kellnerpasswortänderung Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (746, 'customer_password_msg', 'admin', 'Customer password will set 1234', 'Customer password will set 1234', 'كلمة مرور العميل ستعيّن 1234', 'La contraseña del cliente establecerá 1234', '', 'Kundenpasswort Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (747, 'customer_password_change_msg', 'admin', 'Customer can change their password after login', 'Customer can change their password after login', 'يمكن للعميل تغيير كلمة المرور الخاصة به بعد تسجيل الدخول', 'El cliente puede cambiar su contraseña después de iniciar sesión', '', 'Kundenpasswortänderung Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (748, 'customer_details', 'admin', 'Customer Details', 'Customer Details', 'تفاصيل العميل', 'Detalles del cliente', '', 'Kundendetails');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (749, 'general', 'admin', 'General', 'General', 'عام', 'General', '', 'Allgemein');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (750, 'update_with_my_old_information', 'admin', 'Update with my old information', 'Update with my old information', 'تحديث بمعلوماتي القديمة', 'Actualizar con mi información anterior', '', 'Mit meinen alten Informationen aktualisieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (751, 'minimum_price_msg_for_cod', 'admin', 'Price not sufficient for COD', 'Price not sufficient for COD', 'السعر غير كافٍ للدفع عند الاستلام', 'Precio no suficiente para COD', '', 'Mindestpreis Nachricht für Barzahlung bei Lieferung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (752, 'minimum_price', 'admin', 'Minimum Price', 'Minimum Price', 'أدنى سعر', 'Precio mínimo', '', 'Mindestpreis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (753, 'add_new_location', 'admin', 'Add New Location', 'Add New Location', 'إضافة موقع جديد', 'Agregar nueva ubicación', '', 'Neuen Standort hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (754, 'click_the_map_to_get_lan_ln', 'admin', 'Click the map to get Lat/Lng!', 'Click the map to get Lat/Lng!', 'انقر على الخريطة للحصول على Lat / Lng!', '¡Haz clic en el mapa para obtener Lat / Lng!', '', 'Klicken Sie auf die Karte, um Längen- und Breitengrad zu erhalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (755, 'customer_will_find_restaurant_with_location', 'admin', 'Customer will find your restaurant using this location', 'Customer will find your restaurant using this location', 'سيجد العميل مطعمك باستخدام هذا الموقع', 'El cliente encontrará su restaurante usando esta ubicación', '', 'Kunde wird das Restaurant mit Standort finden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (756, 'search_for_items', 'admin', 'Search For Items', 'Search For Items', 'بحث عن العناصر', 'Buscar artículos', '', 'Suche nach Artikeln');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (757, 'near_me', 'admin', 'Near Me', 'Near Me', 'بالقرب مني', 'Cerca de mí', '', 'In meiner Nähe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (758, 'shop_rating', 'admin', 'Shop Rating', 'Shop Rating', 'تقييم المتجر', 'Calificación de la tienda', '', 'Geschäftsbewertung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (759, 'available_time', 'admin', 'Available Time', 'Available Time', 'الوقت المتاح', 'Tiempo disponible', '', 'Verfügbare Zeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (760, 'variants', 'admin', 'Variants', 'Variants', 'المتغيرات', 'Variantes', '', 'Varianten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (761, 'total_sell', 'admin', 'Total Sell', 'Total Sell', 'إجمالي البيع', 'Venta total', '', 'Gesamtverkauf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (762, 'popular_store', 'admin', 'Popular Store', 'Popular Store', 'متجر شعبي', 'Tienda popular', '', 'Beliebte Geschäfte');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (763, 'popular_items', 'admin', 'Popular Items', 'Popular Items', 'عناصر مشهورة', 'Elementos populares', '', 'Beliebte Artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (764, 'item_search', 'admin', 'Item Search', 'Item Search', 'بحث عن عنصر', 'Búsqueda de artículos', '', 'Artikelsuche');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (765, 'show_item_search_in_landing_page', 'admin', 'Show Item search  in landing page', 'Show Item search  in landing page', 'إظهار بحث العنصر في الصفحة المقصودة', 'Mostrar búsqueda de artículos en la página de destino', '', 'Artikelsuche in der Startseite anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (766, 'locations', 'admin', 'Locations', 'Locations', 'المواقع', 'Ubicaciones', '', 'Standorte');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (767, 'latitude', 'admin', 'Latitude', 'Latitude', 'Latitude', 'Latitud', '', 'Breitengrad');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (768, 'longitude', 'admin', 'Longitude', 'Longitude', 'خط الطول', 'Longitud', '', 'Längengrad');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (769, 'payment_configuration', 'admin', 'Payment configuration', 'Payment configuration', 'تهيئة الدفع', 'Configuración de pago', '', 'Zahlungskonfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (770, 'virtual_number', 'admin', 'Virtual Number', 'Virtual Number', 'رقم افتراضي', 'Número virtual', '', 'Virtuelle Nummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (771, 'please_select_your_payment_menthod', 'admin', 'Please select your payment method', 'Please select your payment method', 'الرجاء تحديد طريقة الدفع الخاصة بك', 'Seleccione su método de pago', '', 'Bitte wählen Sie Ihre Zahlungsmethode');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (772, 'none', 'admin', 'None', 'None', 'بلا', 'Ninguno', '', 'Keiner');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (773, 'add_image', 'admin', 'Add Image', 'Add Image', 'إضافة صورة', 'Agregar imagen', '', 'Bild hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (774, 'add_new_images', 'admin', 'Add new images', 'Add new images', 'إضافة صور جديدة', 'Agregar nuevas imágenes', '', 'Neue Bilder hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (775, 'customer_login_msg', 'admin', 'Enabled customer login in the checkout page', 'Enabled customer login in the checkout page', 'تمكين تسجيل دخول العميل في صفحة الخروج', 'Acceso de cliente habilitado en la página de pago', '', 'Kunden-Anmeldung Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (776, 'reset', 'admin', 'Reset', 'Reset', 'إعادة تعيين', 'Reiniciar', '', 'Zurücksetzen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (777, 'new', 'admin', 'New', 'New', 'جديد', 'Nuevo', '', 'Neu');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (778, 'delivery_area', 'admin', 'Delivery Area', 'Delivery Area', 'منطقة التسليم', 'Área de entrega', '', 'Lieferbereich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (779, 'add_delivery_area', 'admin', 'Add delivery Area', 'Add delivery Area', 'إضافة منطقة التسليم', 'Agregar área de entrega', '', 'Liefergebiet hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (780, 'call_waiter', 'admin', 'Call Waiter', 'Call Waiter', 'نادل الاتصال', 'Llamar al camarero', 'Garson Çağır', 'Kellner rufen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (781, 'call', 'admin', 'Call', 'Call', 'اتصال', 'Llamar', '', 'Anruf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (782, 'enable_to_allow_call_waiter', 'admin', 'Enable to allow call waiter service', 'Enable to allow call waiter service', 'تمكين للسماح بخدمة النادل', 'Habilitar para permitir el servicio de llamada al camarero', '', 'Aktivieren, um das Rufen des Kellners zu ermöglichen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (783, 'call_waiter_msg', 'admin', 'Waiter will get a notification and will available soon!', 'Waiter will get a notification and will available soon!', 'سيتلقى النادل إشعارًا وسيتوفر قريبًا!', '¡El camarero recibirá una notificación y estará disponible pronto!', '', 'Kellner rufen Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (784, 'waiting_notification_msg', 'admin', 'Please wait waiter will be available soon', 'Please wait, Waiter will be available soon', 'الرجاء الانتظار , سيكون النادل متاحًا قريبًا', 'Espere, el camarero estará disponible pronto', '', 'Warten Benachrichtigung Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (785, 'charge', 'admin', 'Charge', 'Charge', 'المسؤول', 'Cargar', '', 'Gebühr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (786, 'show_image', 'admin', 'Show Image', 'Show Image', 'إظهار الصورة', 'Mostrar imagen', '', 'Bild anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (787, 'active_image', 'admin', 'Active Image', 'Active Image', 'الصورة النشطة', 'Imagen activa', '', 'Aktives Bild');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (788, 'image_url', 'admin', 'Image URL', 'Image URL', 'عنوان URL للصورة', 'URL de la imagen', '', 'Bild-URL');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (789, 'is_svg', 'admin', 'Is SVG', 'Is SVG', 'هل SVG', 'Es SVG', '', 'Ist SVG');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (790, 'icon_settings', 'admin', 'Icon Settings', 'Icon Settings', 'إعدادات الرموز', 'Configuración de iconos', '', 'Symbol-Einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (791, 'qr_generator', 'admin', 'QR Code Generator', 'QR Code Generator', 'مولد رمز الاستجابة السريعة', 'Generador de códigos QR', '', 'QR-Code-Generator');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (792, 'foreground_color', 'admin', 'Foreground Color', 'Foreground Color', 'لون المقدمة', 'Color de primer plano', '', 'Vordergrundfarbe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (793, 'background_color', 'admin', 'Background Color', 'Background Color', 'لون الخلفية', 'Color de fondo', '', 'Hintergrundfarbe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (794, 'mode', 'admin', 'Mode', 'Mode', 'الوضع', 'Modo', '', 'Modus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (795, 'text', 'admin', 'Text', 'Text', 'نص', 'Texto', '', 'Text');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (796, 'normal', 'admin', 'Normal', 'Normal', 'عادي', 'Normal', '', 'Normal');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (797, 'text_color', 'admin', 'Text Color', 'Text Color', 'لون النص', 'Color del texto', '', 'Textfarbe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (798, 'position_x', 'admin', 'Position X', 'Position X', 'المركز X', 'Posición X', '', 'Position X');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (799, 'position_y', 'admin', 'Position Y', 'Position Y', 'الموضع Y', 'Posición Y', '', 'Position Y');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (800, 'qrcode', 'admin', 'Qr Code', 'Qr Code', 'رمز الاستجابة السريعة', 'Código QR', '', 'QR-Code');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (801, 'padding', 'admin', 'Padding', 'Padding', 'حشوة', 'Relleno', '', 'Polsterung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (802, 'custom_landing_page', 'admin', 'Custom Landing Page', 'Custom Landing Page', 'الصفحة المقصودة المخصصة', 'Página de destino personalizada', '', 'Benutzerdefinierte Landingpage aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (803, 'enable_custom_landing_page', 'admin', 'Enable Custom Landing page', 'Enable Custom Landing page', 'تمكين الصفحة المقصودة المخصصة', 'Habilitar página de destino personalizada', '', 'Benutzerdefinierte Landingpage aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (804, 'landing_page_url', 'admin', 'Landing Page URL', 'Landing Page URL', 'عنوان URL للصفحة المقصودة', 'URL de la página de destino', '', 'Landingpage-URL');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (805, 'custom_landing_page_msg', 'admin', 'IF you enable this, the user will redirect in your customer page URL when they enter in systems landing page', 'IF you enable this, the user will redirect in your customer page URL when they enter in systems landing page', 'إذا قمت بتمكين هذا , فسيقوم المستخدم بإعادة التوجيه في عنوان URL لصفحة العميل عند الدخول في الصفحة المقصودة للأنظمة', 'SI habilita esto, el usuario redirigirá a la URL de la página de su cliente cuando ingrese a la página de destino del sistema', '', 'Benutzerdefinierte Landingpage Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (806, 'installed', 'admin', 'Installed', 'Installed', 'مثبت', 'Instalado', '', 'Installiert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (807, 'install', 'admin', 'Install', 'Install', 'تثبيت', 'Instalar', '', 'Installieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (808, 'uninstall', 'admin', 'Uninstall', 'Uninstall', 'إلغاء التثبيت', 'Desinstalar', '', 'Deinstallieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (809, 'not_installed', 'admin', 'Not Installed', 'Not Installed', 'غير مثبت', 'No instalado', '', 'Nicht installiert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (810, 'paytm', 'admin', 'Paytm', 'Paytm', 'باوتم', 'Paytm', '', 'Paytm');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (811, 'stripe_fpx', 'admin', 'Stripe FPX', 'Stripe FPX', 'شريط FPX', 'Stripe FPX', '', 'Stripe FPX');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (812, 'flutterwave', 'admin', 'Flutterwave', 'Flutterwave', 'Flutterwave', 'Flutterwave', '', 'Flutterwave');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (813, 'mercado', 'admin', 'Mercadopago', 'Mercadopago', 'ميركادوباغو', 'Mercadopago', '', 'Markt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (814, 'mercadopago', 'admin', 'Mercadopago', 'Mercadopago', 'ميركادوباغو', 'Mercadopago', '', 'MercadoPago');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (815, 'public_key', 'admin', 'Public key', 'Public key', 'المفتاح العمومي', 'Clave pública', '', 'Öffentlicher Schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (816, 'access_token', 'admin', 'Access Token', 'Access Token', 'رمز وصول', 'Token de acceso', '', 'Zugriffstoken');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (817, 'environment', 'admin', 'Environment', 'Environment', 'بيئة', 'Entorno', '', 'Umwelt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (818, 'area_based_delivery_charge', 'admin', 'Area based delivery charge', 'Area based delivery charge', 'رسوم التسليم على أساس المنطقة', 'Cargo de envío basado en área', '', 'Bereichsbasierte Liefergebühr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (819, 'facebook_pixel', 'admin', 'Facebook Pixel', 'Facebook Pixel', 'فيسبوك بيكسل', 'Pixel de Facebook', '', 'Facebook Pixel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (820, 'facebook_pixel_id', 'admin', 'Facebook Pixel ID', 'Facebook Pixel ID', 'معرف فيسبوك بيكسل', 'ID de píxel de Facebook', '', 'Facebook Pixel ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (821, 'google_analytics_id', 'admin', 'Google Analytics ID', 'Google Analytics ID', 'معرف تحليلات كوكل', 'Identificación de Google Analytics', '', 'Google Analytics ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (822, 'customer_waiting_msg', 'admin', 'Customer is waiting at table number', 'Customer is waiting at table number', 'الزبون ينتظر على رقم الجدول', 'El cliente está esperando en la mesa número', '', 'Kunden warten Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (823, 'weight', 'admin', 'Weight', 'Weight', 'الوزن', 'Peso', '', 'gewicht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (824, 'calories', 'admin', 'Calories', 'Calories', 'السعرات الحرارية', 'Calorías', '', 'kalorien');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (825, 'is_variants', 'admin', 'Is variants', 'Is variants', 'متغيرات Is', 'Son variantes', '', 'ist_varianten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (826, 'allow_access_google_map_key', 'admin', 'Allow to access google map api key', 'Allow to access google map api key', 'السماح بالوصول إلى مفتاح google map api', 'Permitir acceder a la clave de API de Google Map', '', 'google_map_schlüssel_zugang_erlauben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (827, 'allow_gmap_access', 'admin', 'Allow Gmap Access', 'Allow Gmap Access', 'السماح بالوصول إلى Gmap', 'Permitir acceso a Gmap', '', 'gmap_zugang_erlauben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (828, 'enable', 'admin', 'Enable', 'Enable', 'تمكين', 'Activar', '', 'aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (829, 'disable', 'admin', 'Disable', 'Disable', 'تعطيل', 'Desactivar', '', 'deaktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (830, 'add_more_item', 'admin', 'Add More Items', 'Add More Items', 'إضافة المزيد من العناصر', 'Agregar más elementos', '', 'mehr_element_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (831, 'item_added_successfully', 'admin', 'Item Added Successfully', 'Item Added Successfully', 'تمت إضافة العنصر بنجاح', 'Elemento agregado exitosamente', '', 'element_erfolgreich_hinzugefügt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (832, 'edit_order', 'admin', 'Edit Order', 'Edit Order', 'تحرير الأمر', 'Editar pedido', '', 'bestellung_bearbeiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (833, 'duplicate_item', 'admin', 'Duplicate Item', 'Duplicate Item', 'عنصر مكرر', 'Elemento duplicado', '', 'element_duplizieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (834, 'clone_item', 'admin', 'Clone Item', 'Clone Item', 'عنصر مستنسخ', 'Clonar elemento', '', 'element_klonen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (835, 'order_again', 'admin', 'Order again', 'Order again', 'اطلب مرة أخرى', 'Pedir de nuevo', '', 'nochmals_bestellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (836, 'moved_successfull', 'admin', 'Moved successfully', 'Moved successfully', 'انتقلت بنجاح', 'Movido exitosamente', '', 'erfolgreich_verschoben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (837, 'add_new_item', 'admin', 'Add New Item', 'Add New Item', 'إضافة عنصر جديد', 'Agregar nuevo elemento', '', 'neues_element_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (838, 'add_those_extras_also', 'admin', 'Add those Extras also', 'Add those Extras also', 'أضف تلك الإضافات أيضًا', 'Agrega esos Extras también', '', 'füge_diese_extras_auch_hinzu');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (839, 'whatsapp_config', 'admin', 'WhatsApp Config', 'WhatsApp Config', 'تهيئة WhatsApp', 'Configuración de WhatsApp', '', 'Whatsapp Konfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (840, 'currency_position', 'admin', 'Currency Position', 'Currency Position', 'وضع العملة', 'Posición de moneda', '', 'währungs_position');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (841, 'number_format', 'admin', 'Number Format', 'Number Format', 'تنسيق الأرقام', 'Formato de número', '', 'nummer_format');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (842, 'pwa', 'admin', 'PWA', 'PWA', 'PWA', 'PWA', '', 'pwa');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (843, 'pwa_config', 'admin', 'PWA Config', 'PWA Config', 'تكوين PWA', 'Configuración PWA', '', 'pwa_konfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (844, 'enable_to_allow_for_all', 'admin', 'Enable to allow PWA in this system', 'Enable to allow PWA in this system', 'تمكين للسماح لـ PWA في هذا النظام', 'Habilitar para permitir PWA en este sistema', '', 'aktivieren_für_alle_ermöglichen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (845, 'google_font_name', 'admin', 'Google Font name', 'Google Font name', 'اسم خط Google', 'Nombre de fuente de Google', '', 'google_schrift_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (846, 'menu_style', 'admin', 'Menu Style', 'Menu Style', 'نمط القائمة', 'Estilo de menú', '', 'Menü Stil');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (847, 'menu_bottom', 'admin', 'Menu Bottom', 'Menu Bottom', 'القائمة السفلية', 'Menú inferior', '', 'Menü Unten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (848, 'menu_top', 'admin', 'Menu Top', 'Menu Top', 'أعلى القائمة', 'Menú superior', '', 'Menü Oben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (849, 'more', 'admin', 'More', 'More', 'المزيد', 'Más', '', 'Mehr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (850, 'today', 'admin', 'Today', 'Today', 'اليوم', 'Hoy', '', 'Heute');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (851, 'pickup_date', 'admin', 'Pickup Date', 'Pickup Date', 'تاريخ الاستلام', 'Fecha de recogida', '', 'abhol_datum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (852, 'pasta', 'admin', 'Pasta', 'Pasta', 'باستا', 'Pasta', '', 'nudeln');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (853, 'add_to_home_screen', 'admin', 'Add to home screen', 'Add to home screen', 'إضافة إلى الشاشة الرئيسية', 'Añadir a pantalla de inicio', '', 'zur_startseite_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (854, 'coupon_applied_successfully', 'admin', 'Coupon Applied Successfully', 'Coupon Applied Successfully', 'تم تطبيق القسيمة بنجاح', 'Cupón aplicado con éxito', '', 'gutschein_erfolgreich_angewendet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (855, 'add_more_image', 'admin', 'Add More Images', 'Add More Images', 'إضافة المزيد من الصور', 'Agregar más imágenes', '', 'mehr_bild_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (856, 'custom_css', 'admin', 'Custom CSS', 'Custom CSS', 'CSS مخصص', 'CSS personalizado', '', 'benutzerdefiniertes_css');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (857, 'security_pin', 'admin', 'Security Pin', 'Security Pin', 'رقم التعريف الشخصي للأمان', 'Pin de seguridad', '', 'sicherheits_pin');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (858, 'enable_pin_when_customer_track_order', 'admin', 'Enable Pin when customer track their order and when they place call waiter', 'Enable Pin when customer track their order and when they place call waiter', 'تمكين رقم التعريف الشخصي عند تتبع العميل لطلبه وعندما يقوم بإجراء مكالمة النادل', 'Habilitar PIN cuando el cliente rastrea su pedido y cuando llama al camarero', '', 'pin_aktivieren_wenn_kunde_bestellung_verfolgt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (859, 'security_pin_not_match', 'admin', 'Security Pin doesn\'t Match', 'Security Pin doesn\'t Match', 'رقم التعريف الشخصي للأمان غير مطابق', 'El pin de seguridad no coincide', '', 'sicherheits_pin_stimmt_nicht_überein');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (860, 'date_format', 'admin', 'Date Format', 'Date Format', 'تنسيق التاريخ', 'Formato de fecha', '', 'datums_format');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (861, 'time_format', 'admin', 'Time Format', 'Time Format', 'تنسيق الوقت', 'Formato de hora', '', 'zeit_format');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (862, 'upgrade_license', 'admin', 'Upgrade License', 'Upgrade License', 'ترخيص الترقية', 'Licencia de actualización', '', 'lizenz_aktualisieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (863, 'change_domain', 'admin', 'Change Domain', 'Change Domain', 'تغيير المجال', 'Cambiar Dominio', '', 'domain_ändern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (864, 'theme_color', 'admin', 'Theme Color', 'Theme Color', 'لون المظهر', 'Color del tema', '', 'themen_farbe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (865, 'phone_number_is_missing', 'admin', 'Phone Number is missing', 'Phone Number is missing', 'رقم الهاتف مفقود', 'Falta el número de teléfono', '', 'telefonnummer_fehlt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (866, 'Please_add_your_phone_number', 'admin', 'Please add your phone number', 'Please add your phone number', 'الرجاء إضافة رقم هاتفك', 'Por favor agregue su número de teléfono', '', 'bitte_fügen_sie_ihre_telefonnummer_hinzu');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (867, 'site_name_is_missing', 'admin', 'Site Name is missing', 'Site Name is missing', 'اسم الموقع مفقود', 'Falta el nombre del sitio', '', 'seiten_name_fehlt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (868, 'please_config_your_site_settings', 'admin', 'Please configure the site settings', 'Please configure the site settings', 'الرجاء تكوين إعدادات الموقع', 'Configure los ajustes del sitio', '', 'bitte_konfigurieren_sie_ihre_seiten_einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (869, 'email_is_missing', 'admin', 'Email is missing', 'Email is missing', 'البريد الإلكتروني مفقود', 'falta el correo electronico', '', 'email_fehlt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (870, 'please_confing_the_email', 'admin', 'Please configure the Email settings', 'Please configure the Email settings', 'الرجاء تكوين إعدادات البريد الإلكتروني', 'Configure los ajustes de correo electrónico', '', 'bitte_konfigurieren_sie_die_email');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (871, 'those_steps_are_most_important', 'admin', 'Those Steps are most important to configure first', 'Those Steps are most important to configure first', 'هذه الخطوات هي الأكثر أهمية للتهيئة أولاً', 'Esos pasos son los más importantes para configurar primero', '', 'diese_schritte_sind_am_wichtigsten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (872, 'restaurant_name_is_missing', 'admin', 'Restaurant Name is missing', 'Restaurant Name is missing', 'اسم المطعم مفقود', 'Falta el nombre del restaurante', '', 'restaurant_name_fehlt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (873, 'please_config_the_shop_settings_configuration', 'admin', 'Please configure restaurant settings and shop configuration', 'Please configure restaurant settings and shop configuration', 'الرجاء تكوين إعدادات المطعم وتهيئة المتجر', 'Configure los ajustes del restaurante y la configuración de la tienda', '', 'bitte_konfigurieren_sie_die_shop_einstellungen_konfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (874, 'order_types_config', 'admin', 'Order Types Configuration', 'Order Types Configuration', 'تكوين أنواع الطلبات', 'Configuración de tipos de órdenes', '', 'bestelltypen_konfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (875, 'enable_payment', 'admin', 'Enable Payment', 'Enable Payment', 'تمكين الدفع', 'Habilitar pago', '', 'zahlung_aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (876, 'pay_later', 'admin', 'Pay Later', 'Pay Later', 'ادفع لاحقًا', 'Paga después', '', 'später_bezahlen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (877, 'import', 'admin', 'Import', 'Import', 'استيراد', 'Importar', '', 'importieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (878, 'required_alert', 'admin', 'Please fill up the % field', 'Please fill up the %s field', 'الرجاء ملء حقل٪ s', 'Por favor complete el campo %s', '', 'erforderliche_warnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (879, 'pickup_area', 'admin', 'Pickup Area', 'Pickup Area', 'منطقة الالتقاء', 'Área de recogida', '', 'abholbereich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (880, 'restaurant_empty_alert_msg', 'admin', 'If You do not find menu and other options', 'If You do not find menu and other options, ', 'إذا لم تجد القائمة وخيارات أخرى ,', 'Si no encuentra el menú y otras opciones', '', 'restaurant_leer_warnung_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (881, 'restaurant_empty_alert_msg-2', 'admin', 'Make sure Restaurant profile is complete', 'Make sure Restaurant profile is complete', 'تأكد من اكتمال ملف تعريف المطعم', 'Asegúrese de que el perfil del restaurante esté completo', '', 'restaurant_leer_warnung_nachricht-2');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (882, 'restaurant_empty_alert_msg-3', 'admin', 'You have to add phone, dial code and country', 'You have to add phone, dial code and country', 'عليك إضافة رقم الهاتف ورمز الاتصال والدولة', 'Tienes que añadir teléfono, código de marcación y país', '', 'restaurant_leer_warnung_nachricht-3');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (883, 'add_coupon', 'admin', 'Add Coupon', 'Add Coupon', 'إضافة قسيمة', 'Añadir Cupón', '', 'gutschein_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (884, 'used', 'admin', 'Used', 'Used', 'مستعملة', 'Usado', '', 'verwendet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (885, 'use_coupon_code', 'admin', 'Use Coupon Code', 'Use Coupon Code', 'استخدم رمز القسيمة', 'Usar código de cupón', '', 'gutscheincode_verwenden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (886, 'import', 'admin', 'Import', 'Import', 'استيراد', 'Importar', '', 'importieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (887, 'coupon_discount', 'admin', 'Coupon Discount', 'Coupon Discount', 'خصم القسيمة', 'Cupón de descuento', '', 'gutschein_rabatt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (888, 'limit', 'admin', 'Limit', 'Limit', 'حد', 'Límite', '', 'grenze');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (889, 'apply', 'admin', 'Apply', 'Apply', 'تطبيق', 'Aplicar', '', 'anwenden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (890, 'do_you_have_coupon', 'admin', 'Do you have coupon?', 'Do you have coupon?', 'هل لديك قسيمة؟', '¿Tienes cupón?', '', 'haben_sie_einen_gutschein');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (891, 'end_date', 'admin', 'End Date', 'End Date', 'تاريخ الانتهاء', 'Fecha de finalización', '', 'enddatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (892, 'coupon_code', 'admin', 'Coupon Code', 'Coupon Code', 'رمز القسيمة', 'Código de cupón', '', 'gutscheincode');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (893, 'coupon_code_reached_the_max_limit', 'admin', 'Coupon code reached the maximum limit', 'Coupon code reached the maximum limit', 'وصل رمز القسيمة إلى الحد الأقصى', 'El código de cupón alcanzó el límite máximo', '', 'gutscheincode_hat_die_maximale_grenze_erreicht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (894, 'coupon_code_not_exists', 'admin', 'Coupon code not exists', 'Coupon code not exists', 'رمز القسيمة غير موجود', 'El código de cupón no existe', '', 'gutscheincode_existiert_nicht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (895, 'coupon_list', 'admin', 'Coupon List', 'Coupon List', 'قائمة القسيمة', 'Lista de cupones', '', 'gutschein_liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (896, 'paystack', 'admin', 'Paystack', 'Paystack', 'Paystack', 'Pila de pago', '', 'paystack');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (897, 'paystack_publick_key', 'admin', 'Paystack Public Key', 'Paystack Public Key', 'Paystack Public Key', 'Clave pública de la pila de pago', '', 'paystack_öffentlicher_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (898, 'paystack_secret_key', 'admin', 'Paystack Secret Key', 'Paystack Secret Key', 'مفتاح Paystack السري', 'Clave secreta de la pila de pago', '', 'paystack_geheimer_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (899, 'paystack_payment_gateways', 'admin', 'Paystack Payment Gateways', 'Paystack Payment Gateways', 'بوابات دفع Paystack', 'Pasarelas de pago de Paystack', '', 'paystack_zahlungsgateways');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (900, 'nearby_radius', 'admin', 'Nearby Radius', 'Nearby Radius', 'النطاق القريب', 'Radio Cercano', '', 'nahegelegener_radius');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (901, 'all_extras', 'admin', 'All Extras', 'All Extras', 'كافة الإضافات', 'Todos los extras', '', 'alle_extras');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (902, 'add_extra', 'admin', 'Add Extra', 'Add Extra', 'إضافة إضافي', 'Agregar adicional', '', 'extra_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (903, 'onsignal_api', 'admin', 'OnSignal  API', 'OnSignal  API', 'onSignal API', 'API onSignal', '', 'onesignal_api');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (904, 'onsignal_app_id', 'admin', 'Onesignal App ID', 'Onesignal App ID', 'معرف تطبيق Onesignal', 'ID de la aplicación Onesignal', '', 'onesignal_app_id');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (905, 'user_auth_key', 'admin', 'User Auth Key', 'User Auth Key', 'مفتاح مصادقة المستخدم', 'Clave de autenticación de usuario', '', 'benutzer_auth_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (906, 'allow_onsignal_access', 'admin', 'Allow onSignal Notification', 'Allow onSignal Notification', 'السماح بالإعلام عند الإشارة', 'Permitir notificación onSignal', '', 'onesignal_zugriff_erlauben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (907, 'disabled_onsignal_access', 'admin', 'Disabled onSignal Notification', 'Disabled onSignal Notification', 'معطل عند إعلام الإشارة', 'Notificación onSignal deshabilitada', '', 'onesignal_zugriff_deaktiviert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (908, 'custom_link', 'admin', 'Custom Link', 'Custom Link', 'رابط مخصص', 'Enlace personalizado', '', 'benutzerdefinierter_link');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (909, 'send_notifications', 'admin', 'Send Notification', 'Send Notification', 'إرسال إشعار', 'Enviar notificación', '', 'benachrichtigungen_senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (910, 'notifications_send_successfully', 'admin', 'Notifications send successfully', 'Notifications send successfully', 'إرسال الإشعارات بنجاح', 'Notificaciones enviadas con éxito', '', 'benachrichtigungen_erfolgreich_gesendet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (911, 'hide_pay_later', 'admin', 'Hide Pay later', 'Hide Pay later', 'إخفاء الدفع لاحقًا', 'Ocultar Pagar luego', '', 'später_zahlen_ausblenden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (912, 'payment_required', 'admin', 'Payment Required', 'Payment Required', 'الدفع مطلوب', 'Pago requerido', '', 'zahlung_erforderlich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (913, 'table_no', 'admin', 'Table No', 'Table No', 'جدول لا', 'Número de tabla', '', 'tisch_nr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (914, '6_month', 'admin', 'Half Year / 6 month', 'Half Year / 6 month', 'نصف عام / 6 أشهر', 'Medio año / 6 meses', '', '6_monate');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (915, 'half_yearly', 'admin', 'Half Year / 6 month', 'Half Year- 6 month', 'نصف عام- 6 أشهر', 'Medio año- 6 meses', '', 'halbjährlich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (916, 'signup_questions', 'admin', 'Signup Questions', 'Signup Questions', 'أسئلة الاشتراك', 'Preguntas de registro', '', 'anmeldefragen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (917, 'security_question', 'admin', 'Security Question', 'Security Question', 'سؤال الأمان', 'Pregunta de seguridad', '', 'sicherheitsfrage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (918, 'write_your_answer_here', 'admin', 'Write your answer here', 'Write your answer here', 'اكتب إجابتك هنا', 'Escribe aquí tu respuesta', '', 'schreiben_sie_ihre_antwort_hier');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (919, 'enable_security_question', 'admin', 'Enable Security Question', 'Enable Security Question', 'تمكين سؤال الأمان', 'Habilitar pregunta de seguridad', '', 'sicherheitsfrage_aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (920, 'security_question_ans_not_correct', 'admin', 'Security Questions answer is not correct', 'Security Questions answer is not correct', 'إجابة أسئلة الأمان غير صحيحة', 'La respuesta a las preguntas de seguridad no es correcta', '', 'sicherheitsfrage_antwort_nicht_korrekt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (921, 'change', 'admin', 'Change', 'Change', 'التعديل', 'Cambiar', '', 'ändern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (922, 'change_amount', 'admin', 'Change Amount', 'Change Amount', 'تعديل المبلغ', 'Cambiar Importe', '', 'betrag_ändern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (923, 'enable_radius_base_delivery', 'admin', 'Enable Raduis Based Delivery', 'Enable Radius Based Delivery', 'تمكين التسليم المستند إلى نصف القطر', 'Habilitar entrega basada en radio', '', 'radius_basierte_lieferung_aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (924, 'delivery_settings', 'admin', 'Delivery Settings', 'Delivery Settings', 'إعدادات التسليم', 'Configuración de entrega', '', 'liefer_einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (925, 'radius_base_delivery_settings', 'admin', 'Enable Radius Based Delivery Settings', 'Radius Based Delivery Settings', 'إعدادات التسليم على أساس نصف القطر', 'Configuración de entrega basada en el radio', '', 'radius_basierte_liefer_einstellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (926, 'radius', 'admin', 'Radius', 'Radius', 'نصف القطر', 'Radio', '', 'radius');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (927, 'not_found_msg', 'admin', 'Not Found Message', 'Not Found Message', 'لم يتم العثور على الرسالة', 'Mensaje no encontrado', '', 'nicht_gefunden_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (928, 'price_tax_msg', 'admin', 'Tax are only for showing tax status in invoice. Set your price including/excluding tax', 'Tax are only for showing tax status in invoice. Set your price including/excluding tax', 'الضريبة هي فقط لعرض الحالة الضريبية في الفاتورة. حدد السعر بما في ذلك / باستثناء الضرائب', 'El impuesto es solo para mostrar el estado del impuesto en la factura. Establezca su precio con/sin impuestos', '', 'preis_steuer_nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (929, 'item_tax_status', 'admin', 'Item Tax Status', 'Item Tax Status', 'حالة ضريبة العنصر', 'Estado fiscal del artículo', '', 'artikel_steuer_status');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (930, 'tax_included', 'admin', 'Tax Included', 'Tax Included', 'شامل الضريبة', 'Impuestos Incluidos', '', 'steuer_eingeschlossen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (931, 'tax_excluded', 'admin', 'Tax Excluded', 'Tax Excluded', 'معفاة من الضرائب', 'Impuestos Excluidos', '', 'steuer_ausgeschlossen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (932, 'kds_pin', 'admin', 'KDS Pin', 'KDS Pin', 'KDS Pin', 'Pin KDS', '', 'kds_pin');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (933, 'enter_pin', 'admin', 'Enter Pin', 'Enter Pin', 'أدخل رقم التعريف الشخصي', 'Ingresar PIN', '', 'pin_eingeben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (934, 'Qr Code', 'admin', 'Qr code', 'Qr code', 'رمز الاستجابة السريعة', 'Código QR', '', 'qr_code');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (935, 'specialities', 'admin', 'Specialities', 'Specialities', 'التخصصات', 'Especialidades', '', 'Spezialitäten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (936, 'subscriber list', 'admin', 'Subscribers List', 'Subscribers List', 'قائمة المشتركين', 'Lista de suscriptores', '', 'Abonnentenliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (937, 'subscribers', 'admin', 'Subscribers', 'Subscribers', 'المشتركون', 'Suscriptores', '', 'Abonnenten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (938, 'third-party_chatting_app', 'admin', 'Third-party chatting apps', 'Third-party chatting apps', 'تطبيقات الدردشة من جهات خارجية', 'Aplicaciones de chat de terceros', '', 'drittanbieter_chat_app');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (939, 'choose_an_app', 'admin', 'Choose an App', 'Choose an App', 'اختر تطبيقًا', 'Elija una aplicación', '', 'wähle_eine_app');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (940, 'app_id', 'admin', 'App ID', 'App ID', 'معرف التطبيق', 'ID de la aplicación', '', 'app_id');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (941, 'onesignal_configuration', 'admin', 'OneSignal Configuration', 'OneSignal Configuration', 'تكوين OneSignal', 'Configuración OneSignal', '', 'onesignal_konfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (942, 'verify_payment', 'admin', 'Verify Payment', 'Verify Payment', 'التحقق من الدفع', 'Verificar pago', '', 'zahlung_verifizieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (943, 'transaction_id', 'admin', 'Transaction ID', 'Transaction ID', 'معرف المعاملة', 'ID de transacción', '', 'transaktions_id');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (944, 'bank_details', 'admin', 'Bank Details', 'Bank Details', 'تفاصيل البنك', 'Datos bancarios', '', 'bank_details');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (945, 'enable_transaction_id_field', 'admin', 'Enable Transaction ID field', 'Enable Transaction ID field', 'تمكين حقل معرف المعاملة', 'Habilitar campo ID de transacción', '', 'transaktions_id_feld_aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (946, 'sendgrid_api_key', 'admin', 'SendGrid API KEy', 'SendGrid API Key', 'SendGrid API Key', 'Clave API SendGrid', '', 'sendgrid_api_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (947, 'api_key', 'admin', 'API Key', 'API Key', 'مفتاح API', 'Clave API', '', 'api_schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (948, 'sendgrid', 'admin', 'SendGrid', 'SendGrid', 'SendGrid', 'EnviarCuadrícula', '', 'sendgrid');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (949, 'activities', 'admin', 'Activities', 'Activities', 'أنشطة', 'Actividades', '', 'aktivitäten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (950, 'mark_as_unread', 'admin', 'Mark as Unread', 'Mark as Unread', 'وضع علامة كغير مقروءة', 'Marcar como no leído', '', 'als_ungelesen_markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (951, 'mark_as_read', 'admin', 'Mark as read', 'Mark as read', 'وضع علامة كمقروء', 'Marcar como leído', '', 'als_gelesen_markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (952, 'send_payment_mail_to_user', 'admin', 'Send Payment Mail to the user', 'Send Payment Mail to the user', 'إرسال بريد الدفع إلى المستخدم', 'Enviar correo de pago al usuario', '', 'zahlungs_email_an_benutzer_senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (953, 'unseen_notification', 'admin', 'Unseen Notification', 'Unseen Notification', 'إعلام غير مرئي', 'Notificación no vista', '', 'ungesehen_benachrichtigung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (954, 'seen_notification', 'admin', 'Seen Notification', 'Seen Notification', 'إشعار مرئي', 'Notificación vista', '', 'gesehen_benachrichtigung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (955, 'unseen', 'admin', 'Unseen', 'Unseen', 'غير مرئي', 'Invisible', '', 'ungesehen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (956, 'unseen_last_notification', 'admin', 'Unseen Last Notification', 'Unseen Last Notification', 'آخر إشعار غير مرئي', 'Última notificación no vista', '', 'ungesehen_letzte_benachrichtigung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (957, 'send_notification', 'admin', 'Send Notification', 'Send Notification', 'إرسال إشعار', 'Enviar notificación', '', 'benachrichtigung_senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (958, 'seen', 'admin', 'Seen', 'Seen', 'مرئي', 'Visto', '', 'gesehen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (959, 'send_time', 'admin', 'Send Time', 'Send Time', 'وقت الإرسال', 'Hora de envío', '', 'sendezeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (960, 'select_notification', 'admin', 'Select Notification', 'Select Notification', 'تحديد إعلام', 'Seleccionar notificación', '', 'benachrichtigung_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (961, 'notification_list', 'admin', 'Notification List', 'Notification List', 'قائمة التنبيهات', 'Lista de notificaciones', '', 'benachrichtigung_liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (962, 'create_notification', 'admin', 'Create Notification', 'Create Notification', 'إنشاء إعلام', 'Crear notificación', '', 'benachrichtigung_erstellen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (963, 'manage_order_types', 'admin', 'Manage Order Types', 'Manage Order Types', 'إدارة أنواع الأوامر', 'Gestionar tipos de órdenes', '', 'bestelltypen_verwalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (964, 'select_all', 'admin', 'Select All', 'Select All', 'تحديد الكل', 'Seleccionar todo', '', 'alle_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (965, 'checked_all', 'admin', 'Checked All', 'Checked All', 'تم تحديد الكل', 'Marcado todo', '', 'alle_geprüft');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (966, 'custom_fields', 'admin', 'Custom Fields', 'Custom Fields', 'الحقول المخصصة', 'Campos personalizados', '', 'benutzerdefinierte_felder');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (967, 'demo', 'admin', 'Demo', 'Demo', 'عرض توضيحي', 'Demostración', '', 'demo');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (968, 'restaurant_demo', 'admin', 'Restaurant Demo ', 'Demo Restaurant', 'مطعم تجريبي', 'Restaurante de demostración', '', 'restaurant_demo');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (969, 'mark_as_delivered', 'admin', 'Mark as delivered', 'Mark as delivered', 'وضع علامة تم التسليم', 'Marcar como entregado', '', 'als_geliefert_markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (970, 'delivered', 'admin', 'Delivered', 'Delivered', 'تم التسليم', 'Entregado', '', 'geliefert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (971, 'select_delivery_boy', 'admin', 'Select Delivery Boy', 'Select Delivery Boy', 'Select Delivery Boy', 'Seleccionar repartidor', '', 'lieferjunge_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (972, 'mark_as_paid', 'admin', 'Mark as Paid', 'Mark as Paid', 'وضع علامة كمدفوع', 'Marcar como pagado', '', 'als_bezahlt_markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (973, 'unpaid', 'admin', 'Unpaid', 'Unpaid', 'غير مدفوع', 'Sin pagar', '', 'unbezahlt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (974, 'mark_as_completed_paid', 'admin', 'Mark as completed & Paid', 'Mark as completed & Paid', 'وضع علامة مكتمل ومدفوع', 'Marcar como completado y pagado', '', 'als_abgeschlossen_bezahlt_markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (975, 'completed_paid', 'admin', 'Completed & Paid', 'Completed & Paid', 'مكتمل ومدفوع', 'Completado y pagado', '', 'abgeschlossen_bezahlt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (976, 'add_delivery_boy', 'admin', 'Add delivery Boy', 'Add delivery guy', 'إضافة مندوب توصيل', 'Añadir repartidor', '', 'lieferjunge_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (977, 'dboy_name', 'admin', 'Delivery Guy', 'Delivery Guy', 'مندوب التوصيل', 'Repartidor', '', 'dboy_name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (978, 'selectd_by_restaurant', 'admin', 'Selected by Restaurant', 'Selected by Restaurant', 'محدد حسب المطعم', 'Seleccionado por Restaurante', '', 'vom_restaurant_ausgewählt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (979, 'vendor', 'admin', 'Vendor', 'Vendor', 'بائع', 'Vendedor', '', 'anbieter');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (980, 'account_created_successfully', 'admin', 'Account Created Successfully', 'Account Created Successfully', 'تم إنشاء الحساب بنجاح', 'Cuenta creada con éxito', '', 'konto_erfolgreich_erstellt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (981, 'account_confirmation_link_msg', 'admin', 'The account confirmation link has been emailed to you, follow the link in the email to continue.', 'The account confirmation link has been emailed to you, follow the link in the email to continue.', 'تم إرسال رابط تأكيد الحساب إليك عبر البريد الإلكتروني , اتبع الرابط الموجود في البريد الإلكتروني للمتابعة.', 'El enlace de confirmación de la cuenta se le ha enviado por correo electrónico, siga el enlace en el correo electrónico para continuar.', '', 'konto_bestätigungs_link_msg');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (982, 'please_login_to_continue', 'admin', 'Please Login to continue.', 'Please Login to continue.', 'الرجاء تسجيل الدخول للمتابعة.', 'Inicie sesión para continuar.', '', 'bitte_anmelden_um_fortzufahren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (983, 'sorry_today_pickup_time_is_not_available', 'admin', 'Sorry, Pickup Time is not available today', 'Sorry, Pickup Time is not available today', 'عذرًا , وقت الاستلام غير متاح اليوم', 'Lo sentimos, la hora de recogida no está disponible hoy', '', 'entschuldigung_heutige_abholzeit_nicht_verfügbar');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (984, 'table-dine-in', 'admin', 'Table / Dine-in', 'Table / Dine-in', 'طاولة / تناول طعام في', 'Mesa / Comedor', '', 'tisch_gastronomie');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (985, 'enable_whatsapp_for_order', 'admin', 'Enable WhatsApp For order', 'Enable WhatsApp For order', 'تمكين WhatsApp للطلب', 'Habilitar WhatsApp para pedidos', '', 'Whatsapp Für Bestellung Aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (986, 'room_services', 'admin', 'Room services', 'Room services', 'خدمات الغرف', 'Servicio de habitaciones', '', 'Zimmer Services');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (987, 'hotel_name', 'admin', 'Hotel Name', 'Hotel Name', 'اسم الفندق', 'Nombre del hotel', '', 'Hotel Name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (988, 'hotel_list', 'admin', 'Hotel List', 'Hotel List', 'قائمة الفنادق', 'Lista de hoteles', '', 'Hotel Liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (989, 'room_numbers', 'admin', 'Room Numbers', 'Room Numbers', 'أرقام الغرف', 'Números de habitaciones', '', 'zimmernummern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (990, 'sorry_room_numbers_not_available', 'admin', 'Sorry Room Not found', 'Sorry Room Not found', 'لم يتم العثور على غرفة معذرة', 'Lo siento, habitación no encontrada', '', 'sorry_room_numbers_not_available - Entschuldigung, Raumnummern nicht verfügbar');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (991, 'room_number', 'admin', 'Room Number', 'Room Number', 'رقم الغرفة', 'Número de habitación', '', 'room_number - Raumnummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (992, 'package_restaurant_dine_in', 'admin', 'Package / Restaurant Dine-In', 'Package / Restaurant Dine-In', 'حزمة / تناول الطعام في المطعم', 'Paquete / Cena en restaurante', '', 'package_restaurant_dine_in - Paket Restaurant Speisesaal');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (993, 'open_24_hours', 'admin', 'Open 24 Hours', 'Open 24 Hours', 'مفتوح 24 ساعة', 'Abierto 24 Horas', '', 'open_24_hours - 24 Stunden geöffnet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (994, 'enable_24_hours', 'admin', 'Enable 24 Hours', 'Enable 24 Hours', 'تمكين 24 ساعة', 'Habilitar 24 Horas', '', 'enable_24_hours - 24-Stunden-Betrieb aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (995, 'select_room_number', 'admin', 'Select Room Number', 'Select Room Number', 'حدد رقم الغرفة', 'Seleccionar número de habitación', '', 'select_room_number - Raumnummer auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (996, 'coupon', 'admin', 'Coupon', 'Coupon', 'قسيمة', 'Cupón', '', 'coupon - Gutschein');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (997, 'check_coupon_code', 'admin', 'Check Coupon Code', 'Check Coupon Code', 'تحقق من رمز القسيمة', 'Ver código de cupón', '', 'check_coupon_code - Gutscheincode überprüfen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (998, 'shipping_charge', 'admin', 'Shipping Charge', 'Shipping Charge', 'رسوم التوصيل', 'Costo de envío', '', 'shipping_charge - Versandkosten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (999, 'remaining_person', 'admin', 'Remaining Person', 'Remaining Person', 'الشخص المتبقي', 'Persona Restante', '', 'remaining_person - Verbleibende Person');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1000, 'booked', 'admin', 'Booked', 'Booked', 'محجوز', 'Reservado', '', 'booked - Gebucht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1001, 'process_to_complete', 'admin', 'Process to complete', 'Process to complete', 'إكمال العملية', 'Proceso a completar', '', 'process_to_complete - Prozess zum Abschluss');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1002, 'payment_type', 'admin', 'Payment Type', 'Payment Type', 'نوع الدفع', 'Tipo de pago', '', 'payment_type - Zahlungsart');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1003, 'received_amount', 'admin', 'Received Amount', 'Received Amount', 'المبلغ المستلم', 'Cantidad recibida', '', 'received_amount - Erhaltener Betrag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1004, 'paying_amount', 'admin', 'Paying Amount', 'Paying Amount', 'دفع المبلغ', 'Importe a pagar', '', 'paying_amount - Zahlbetrag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1005, 'change_return', 'admin', 'Change Return', 'Change Return', 'تغيير العودة', 'Cambiar devolución', '', 'change_return - Rückgeld');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1006, 'payment_notes', 'admin', 'Payment Notes', 'Payment Notes', 'ملاحظات الدفع', 'Notas de pago', '', 'payment_notes - Zahlungshinweise');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1007, 'sell_notes', 'admin', 'Sell Notes', 'Sell Notes', 'بيع الملاحظات', 'Notas de venta', '', 'sell_notes - Verkaufshinweise');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1008, 'cash', 'admin', 'Cash', 'Cash', 'نقدًا', 'Efectivo', '', 'cash - Bargeld');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1009, 'cheques', 'admin', 'Cheques', 'Cheques', 'الشيكات', 'Cheques', '', 'cheques - Schecks');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1010, 'bank_transfer', 'admin', 'Bank Transfer', 'Bank Transfer', 'التحويل المصرفي', 'Transferencia Bancaria', '', 'bank_transfer - Banküberweisung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1011, 'pos', 'admin', 'POS', 'POS', 'POS', 'POS', '', 'pos - POS (Point of Sale)');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1012, 'total_items', 'admin', 'Total Items', 'Total Items', 'إجمالي العناصر', 'Artículos Totales', '', 'total_items - Gesamtanzahl der Artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1013, 'pagination_limit', 'admin', 'Pagination Limit', 'Pagination Limit', 'حد ترقيم الصفحات', 'Límite de paginación', '', 'pagination_limit - Seitenumbruch-Limit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1014, 'scroll_top_arrow', 'admin', 'Scroll Top Arrow', 'Scroll Top Arrow', 'التمرير للسهم العلوي', 'Flecha superior de desplazamiento', '', 'scroll_top_arrow - Nach oben scrollen-Pfeil');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1015, 'restaurant_email', 'admin', 'Restaurant Email', 'Restaurant Email', 'البريد الإلكتروني للمطعم', 'Correo electrónico del restaurante', '', 'restaurant_email - Restaurant-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1016, 'next', 'admin', 'Next', 'Next', 'التالي', 'Siguiente', '', 'next - Nächste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1017, 'previous', 'admin', 'Previous', 'Previous', 'السابق', 'Anterior', '', 'previous - Vorherige');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1018, 'first', 'admin', 'First', 'First', 'الأول', 'Primero', '', 'first - Erste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1019, 'last', 'admin', 'Last', 'Last', 'الأخير', 'Último', '', 'last - Letzte');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1020, 'entries', 'admin', 'Entries', 'Entries', 'إدخالات', 'Entradas', '', 'entries - Einträge');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1021, 'showing', 'admin', 'Showing', 'Showing', 'إظهار', 'Mostrando', '', 'showing - Anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1022, 'to', 'admin', 'To', 'To', 'إلى', 'A', '', 'to - zu');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1023, 'of', 'admin', 'Of', 'Of', 'من', 'De', '', 'of - von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1024, 'earnings', 'admin', 'Earnings', 'Earnings', 'أرباح', 'Ganancias', '', 'earnings Einnahmen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1025, 'reports', 'admin', 'Reports', 'Reports', 'تقارير', 'Informes', '', 'reports Berichte');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1026, 'item_sales_count', 'admin', 'Item Sales Count', 'Item Sales Count', 'عدد مبيعات الصنف', 'Recuento de ventas de artículos', '', 'item_sales_count - Anzahl der Artikelverkäufe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1027, 'total_order', 'admin', 'Total Order', 'Total Orders', 'إجمالي الطلبات', 'Pedidos Totales', '', 'total_order - Gesamtbestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1028, 'all_time', 'admin', 'All Time', 'All Time', 'كل الأوقات', 'Todo el tiempo', '', 'all_time - Gesamtzeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1029, 'balance', 'admin', 'Balance', 'Balance', 'توازن', 'Saldo', '', 'balance - Kontostand');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1030, 'todays_earning', 'admin', 'Today\'s Earning', 'Today\'s Earning', 'أرباح اليوم', 'Ganancias de hoy', '', 'todays_earning - Tageseinnahmen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1031, 'monthly_earning', 'admin', 'Monthly Earning', 'Monthly Earning', 'الأرباح الشهرية', 'Ganancia mensual', '', 'monthly_earning - Monatliche Einnahmen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1032, 'previous_month_earning', 'admin', 'Previous Month  Earning', 'Previous Month  Earning', 'أرباح الشهر الماضي', 'Ganancias del mes anterior', '', 'previous_month_earning - Einnahmen des letzten Monats');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1033, 'weekly_earning', 'admin', 'Weekly Earning', 'Weekly Earning', 'الأرباح الأسبوعية', 'Ganancia semanal', '', 'weekly_earning - Wöchentliche Einnahmen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1034, 'previous_week_earning', 'admin', 'Previous Week Earning', 'Previous Week Earning', 'أرباح الأسبوع السابق', 'Ganancias de la semana anterior', '', 'previous_week_earning - Einnahmen der letzten Woche');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1035, 'order_mail', 'admin', 'Order Mail', 'Order Mail', 'بريد الطلب', 'Pedir correo', '', 'order_mail - Bestell-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1036, 'restaurant_owner', 'admin', 'Restaurant Owner', 'Restaurant Owner', 'صاحب المطعم', 'Dueño del Restaurante', '', 'restaurant_owner - Restaurantbesitzer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1037, 'enable_mail', 'admin', 'Enable Mail', 'Enable Mail', 'تمكين البريد', 'Habilitar correo', '', 'enable_mail - E-Mail aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1038, 'order_receive_mail', 'admin', 'Order Reveiver Mail', 'Order Receiver Mail', 'بريد استقبال الطلب', 'Correo del destinatario del pedido', '', 'order_receive_mail - Bestellung erhalten E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1039, 'customer_mail', 'admin', 'Customer mail', 'Customer mail', 'بريد العميل', 'Correo del cliente', '', 'customer_mail - Kunden-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1040, 'enable_mail_in_checkout', 'admin', 'Enable Mail in checkout', 'Enable Mail in checkout', 'تمكين البريد في السداد', 'Habilitar correo al finalizar la compra', '', 'enable_mail_in_checkout - E-Mail im Checkout aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1041, 'your_order_is_ready_to_delivery', 'admin', 'Your Order is ready to delivery', 'Your Order is ready to delivery', 'طلبك جاهز للتسليم', 'Su pedido está listo para ser entregado', '', 'your_order_is_ready_to_delivery - Ihre Bestellung ist fertig zur Lieferung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1042, 'waiting_for_picked', 'admin', 'Waiting For Picked', 'Waiting For Picked', 'في انتظار الاختيار', 'Esperando ser elegido', '', 'waiting_for_picked - Warten auf Abholung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1043, 'add_ons', 'admin', 'Add-Ons', 'Add-Ons', 'الوظائف الإضافية', 'Complementos', '', 'add_ons - Zusatzleistungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1044, 'the_table_is_empty', 'admin', 'The Table is empty', 'The Table is empty', 'الجدول فارغ', 'la mesa esta vacia', '', 'the_table_is_empty - Der Tisch ist leer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1045, 'there_are_customers', 'admin', 'There Are Customers', 'There Are Customers', 'هناك عملاء', 'hay clientes', '', 'there_are_customers - Es gibt Kunden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1046, 'have_a_new_order', 'admin', 'Have a new Order', 'Have a new Order', 'لديك طلب جديد', 'Tener un nuevo pedido', '', 'have_a_new_order - Neue Bestellung erhalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1047, 'waiter_calling', 'admin', 'Waiter Calling', 'Waiter Calling', 'النادل يدعو', 'Camarero llamando', '', 'waiter_calling - Kellner rufen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1048, 'tax_number', 'admin', 'Tax Number', 'Tax Number', 'الرقم الضريبي', 'Número fiscal', '', 'tax_number - Steuernummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1049, 'city', 'admin', 'City', 'City', 'مدينة', 'Ciudad', '', 'city - Stadt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1050, 'i_need_change', 'admin', 'I need Change', 'I need Change', 'التعديل على الطلب', 'Necesito Cambio', '', 'Ich Muss Ändern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1051, 'language_switcher', 'admin', 'Language switcher', 'Language switcher', 'محوّل اللغة', 'Cambiador de idioma', '', 'language_switcher - Sprachumschalter');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1052, 'enable_coupon', 'admin', 'Enable Coupon', 'Enable Coupon', 'تمكين القسيمة', 'Habilitar cupón', '', 'enable_coupon - Gutschein aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1053, 'package_qr_builder', 'admin', 'Package Qr Builder', 'Package Qr Builder', 'Package Qr Builder', 'Constructor Qr de paquetes', '', 'Paket-QR-Generator');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1054, 'table_qr_builder', 'admin', 'Table Qr Builder', 'Table Qr Builder', 'Table Qr Builder', 'Creador QR de tablas', '', 'Tisch-QR-Generator');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1055, 'staff_login', 'admin', 'Staff Login', 'Staff Login', 'تسجيل دخول الموظفين', 'Inicio de sesión del personal', '', 'Mitarbeiteranmeldung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1056, 'order_limits', 'admin', 'Order Limit', 'Order Limit', 'حد الطلب', 'Límite de pedido', '', 'Bestellgrenzen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1057, 'item_limit', 'admin', 'Item Limit', 'Item Limit', 'حد العنصر', 'Límite de artículos', '', 'Artikelbegrenzung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1058, 'newly_added', 'admin', 'Newly added', 'Newly added', 'مضاف حديثًا', 'Recién agregado', '', 'Neu hinzugefügt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1059, 'renewal', 'admin', 'Renewal\\', 'Renewal', 'تجديد', 'Renovación', '', 'Erneuerung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1060, 'important_steps_to_fill', 'admin', 'Those Steps are most important to configure first', 'Those Steps are most important to configure first', 'هذه الخطوات هي الأكثر أهمية للتهيئة أولاً', 'Esos pasos son los más importantes para configurar primero', '', 'Wichtige Schritte zum Paket');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1061, 'staff_activities', 'admin', 'Staff Activities', 'Staff Activities', 'أنشطة الموظفين', 'Actividades del personal', '', 'Mitarbeiteraktivitäten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1062, 'staff_name', 'admin', 'Staff Name', 'Staff Name', 'اسم طاقم العمل', 'Nombre del personal', '', 'Mitarbeitername');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1063, 'table_already_booked_try_different_one', 'admin', 'Table already Booked try different one', 'Table already Booked try different one', 'طاولة محجوزة بالفعل جرب واحدة أخرى', 'Mesa ya Reservada probar otra diferente', '', 'Tisch bereits gebucht, bitte einen anderen verwenden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1064, 'supervised_by', 'admin', 'Supervised by', 'supervised by', 'تحت إشراف', 'supervisado por', '', 'beaufsichtigt von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1065, 'permission', 'admin', 'Permission', 'Permission', 'إذن', 'Permiso', '', 'Berechtigung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1066, 'reset_password', 'admin', 'Reset Password', 'Reset Password', 'إعادة تعيين كلمة المرور', 'Restablecer contraseña', '', 'Passwort zurücksetzen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1067, 'robot_verification_failed', 'admin', 'Robot verification Failed', 'Robot verification Failed', 'فشل التحقق من الروبوت', 'Verificación del robot fallida', '', 'Roboterüberprüfung fehlgeschlagen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1068, 'username_already_exists', 'admin', 'Username Already Exists', 'Username Already Exists', 'اسم المستخدم موجود بالفعل', 'El nombre de usuario ya existe', '', 'benutzername_bereits_vorhanden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1069, 'custom_days', 'admin', 'Custom Days', 'Custom Days', 'أيام مخصصة', 'Días personalizados', '', 'Benutzerdefinierte_tage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1070, 'set_duration', 'admin', 'Set Duration', 'Set Duration', 'تعيين المدة', 'Establecer duración', '', 'Dauer festlegen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1071, 'months', 'admin', 'Months', 'Months', 'شهور', 'Meses', '', 'Monate');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1072, 'years', 'admin', 'Years', 'Years', 'سنوات', 'Años', '', 'Jahre');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1073, 'appearance', 'admin', 'Appearance', 'Appearance', 'المظهر', 'Apariencia', '', 'Erscheinung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1074, 'frontend_color', 'admin', 'Frontend Color', 'Frontend Color', 'لون الواجهة الأمامية', 'Color frontal', '', 'Vordergrundfarbe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1075, 'light', 'admin', 'Light', 'Light', 'فاتح', 'Luz', '', 'hell');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1076, 'dark', 'admin', 'Dark', 'Dark', 'مظلم', 'Oscuro', '', 'dunkel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1077, 'add_extras_from_library', 'admin', 'Add Extras from library', 'Add Extras from library', 'إضافة إضافات من المكتبة', 'Agregar extras de la biblioteca', '', 'Extras aus der Bibliothek hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1078, 'merge_with_previous_order', 'admin', 'Merge with previous order', 'Merge with previous order', 'دمج بالترتيب السابق', 'Fusionar con orden anterior', '', 'Mit vorheriger Bestellung zusammenführen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1079, 'grand_total', 'admin', 'Grand Total', 'Grand Total', 'الإجمالي الكلي', 'Total general', '', 'Gesamtsumme');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1080, 'previous_order', 'admin', 'Previous Order', 'Previous Order', 'الطلب السابق', 'Pedido anterior', '', 'Vorherige Bestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1081, 'enable_order_merge', 'admin', 'Enable Order merge', 'Enable Order merge', 'تمكين دمج الطلبات', 'Habilitar combinación de pedidos', '', 'Zusammenführung aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1082, 'merge_automatically', 'admin', 'Merge Automatically', 'Merge Automatically', 'دمج تلقائيًا', 'Combinar automáticamente', '', 'Automatische Zusammenführung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1083, 'allow_customers_to_select', 'admin', 'Allow Customers to select', 'Allow Customers to select', 'السماح للعملاء بالاختيار', 'Permitir que los clientes seleccionen', '', 'Kunden Auswahl ermöglichen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1084, 'order_merge', 'admin', 'Order Merge', 'Order Merge', 'ترتيب الدمج', 'Fusión de pedidos', '', 'Bestellung zusammenführen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1085, 'make_it_as_single_order', 'admin', 'Make it as a single order', 'Make it as a single order', 'اجعله طلبًا واحدًا', 'Hacerlo como un solo pedido', '', 'Als Einzelbestellung kennzeichnen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1086, 'edit_order_details', 'admin', 'Edit order details', 'Edit order details', 'تحرير تفاصيل الطلب', 'Editar detalles del pedido', '', 'Bestelldetails bearbeiten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1087, 'hold', 'admin', 'Hold', 'Hold', 'تعليق', 'Esperar', '', 'halten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1088, 'request_id', 'admin', 'Request ID', 'Request ID', 'معرف الطلب', 'Solicitar ID', '', 'Anforderungs-ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1089, 'request_name', 'admin', 'Request Name', 'Request Name', 'اسم الطلب', 'Solicitar nombre', '', 'Anforderungsname');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1090, 'current_name', 'admin', 'Current Name', 'Current Name', 'الاسم الحالي', 'Nombre actual', '', 'aktueller Name');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1091, 'url', 'admin', 'URL', 'URL', 'URL', 'URL', '', 'URL');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1092, 'running', 'admin', 'Running', 'Running', 'قيد التشغيل', 'Corriendo', '', 'laufend');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1093, 'custom_domain', 'admin', 'Custom Domain', 'Custom Domain', 'مجال مخصص', 'Dominio personalizado', '', 'Benutzerdefinierte Domäne');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1094, 'domain_list', 'admin', 'Domain List', 'Domain List', 'قائمة المجال', 'Lista de dominios', '', 'Domänenliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1095, 'set_comments', 'admin', 'Set Comments', 'Set Comments', 'تعيين التعليقات', 'Establecer comentarios', '', 'Kommentare festlegen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1096, 'approved_date', 'admin', 'Approved Date', 'Approved Date', 'التاريخ المعتمد', 'Fecha de aprobación', '', 'Genehmigungsdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1097, 'approved_message', 'admin', 'Approved message', 'Approved message', 'الرسالة المعتمدة', 'Mensaje aprobado', '', 'Genehmigte Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1098, 'canceled_message', 'admin', 'Canceled Messge', 'Canceled Messge', 'الرسائل الملغاة', 'Mensaje cancelado', '', 'Abgebrochene Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1099, 'send_request', 'admin', 'Send Request', 'Send Request', 'ارسل طلب', 'Enviar petición', '', 'Anfrage senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1100, 'pagadito', 'admin', 'Pagadito', 'Pagadito', 'Pagadito', 'Pagadito', '', 'Pagadito');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1101, 'digital_payment', 'admin', 'Digital Payment', 'Digital Payment', 'الدفع الرقمي', 'Pago Digital', '', 'Digitale Zahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1102, 'get_google_location', 'admin', 'Get Google locaction', 'Get Google location', 'الحصول على موقع Google', 'Obtener ubicación de Google', '', 'Google-Standort abrufen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1103, 'pusher', 'admin', 'Pusher', 'Pusher', 'انتهازي', 'Empujador', '', 'Pusher');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1104, 'key', 'admin', 'Key', 'Key', 'مفتاح', 'Clave', '', 'Schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1105, 'secret', 'admin', 'Secret', 'Secret', 'سر', 'Secreto', '', 'Geheimnis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1106, 'cluster', 'admin', 'Cluster', 'Cluster', 'الكتلة', 'Clúster', '', 'Cluster');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1107, 'auth_key', 'admin', 'Auth Key', 'Auth Key', 'مفتاح المصادقة', 'Clave de autenticación', '', 'Authentifizierungsschlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1108, 'a_new_order_is_merge', 'admin', 'A new order is merged', 'A new order is merged', 'تم دمج طلب جديد', 'Se ha fusionado un nuevo pedido', '', 'Eine neue Bestellung ist zusammengeführt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1109, 'order_id_is_merged', 'admin', 'Order is merged', 'ORDER_ID is merged', 'تم دمج ORDER_ID', 'ORDER_ID se fusionó', '', 'Bestellungs-ID wurde zusammengeführt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1110, 'merge_id', 'admin', 'Merge ID', 'Merge ID', 'معرّف الدمج', 'Combinar ID', '', 'Zusammenführungs-ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1111, 'order_merged', 'admin', 'Order Merged', 'Order Merged', 'تم دمج الطلب', 'Pedido fusionado', '', 'Auftrag zusammengeführt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1112, 'merged_item', 'admin', 'Merged Item', 'Merged Item', 'عنصر مدمج', 'Elemento combinado', '', 'zusammengeführter Artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1113, 'disabled', 'admin', 'Disabled', 'Disabled', 'معطل', 'Deshabilitado', '', 'Deaktiviert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1114, 'enabled', 'admin', 'Enabled', 'Enabled', 'ممكّن', 'Habilitado', '', 'Aktiviert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1115, 'enabled_for_restaurant', 'admin', 'Enable for restauratn', 'Status for restaurants', 'حالة المطاعم', 'Estado de los restaurantes', '', 'Aktiviert für Restaurant');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1116, 'enable_development_mode', 'admin', 'Enable Development Mode', 'Enable Development Mode', 'تمكين وضع التطوير', 'Habilitar modo de desarrollo', '', 'Entwicklungsmodus aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1117, 'expenses', 'admin', 'Expenses', 'Expenses', 'المصاريف', 'Gastos', '', 'Ausgaben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1118, 'notes', 'admin', 'Notes', 'Notes', 'ملاحظات', 'Notas', '', 'Notizen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1119, 'enable_to_allow_guest_login_for_dine_in_pay_cash', 'admin', 'Enable to allow guest login for Dine-in & pay in cash.', 'Enable to allow guest login for <b>Dine-in</b>', 'تمكين للسماح بتسجيل دخول الضيف لتناول الطعام', 'Habilitar para permitir el inicio de sesión de invitados para Dine-in', '', 'Aktivieren, um Gästen die Anmeldung zum Bezahlen in bar im Restaurant zu ermöglichen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1120, 'guest_login', 'admin', 'Guest Login', 'Guest Login', 'تسجيل دخول الضيف', 'Inicio de sesión de invitado', '', 'Gastanmeldung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1121, 'pay_cash', 'admin', 'Pay Cash', 'Pay Cash', 'الدفع نقدًا', 'Pagar en efectivo', '', 'Barzahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1122, 'login_as_guest', 'admin', 'Login as guest', 'Login as a guest', 'تسجيل الدخول كضيف', 'Iniciar sesión como invitado', '', 'Anmelden als Gast');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1123, 'or', 'admin', 'OR', 'OR', 'أو', 'O', '', 'Oder');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1124, 'walk_in_customer', 'admin', 'Walk in customer', 'Walk in customer', 'عميل مباشر', 'Cliente sin cita previa', '', 'Laufkunde');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1125, 'username_is_available', 'admin', 'Congratulations! Username is available.', 'Congratulations! Username is available.', 'تهانينا! اسم المستخدم متاح.', '¡Felicitaciones! El nombre de usuario está disponible.', '', 'Benutzername ist verfügbar');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1126, 'account_verified_successfully', 'admin', 'Your account verified successfully', 'Your account verified successfully', 'تم التحقق من حسابك بنجاح', 'Su cuenta verificada con éxito', '', 'Konto erfolgreich verifiziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1127, 'login_invalid', 'admin', 'Login invalid', 'Login invalid', 'تسجيل الدخول غير صالح', 'Inicio de sesión no válido', '', 'Ungültige Anmeldung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1128, 'tips', 'admin', 'Tip', 'Tip', 'نصيحة', 'Consejo', '', 'Tipps');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1129, 'add_tip', 'admin', 'Add Tip', 'Add Tip', 'إضافة نصيحة', 'Agregar sugerencia', '', 'Trinkgeld hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1130, 'set_tip_percent', 'admin', 'Set tip percent', 'Set tip percent', 'تعيين نسبة الإكرامية', 'Establecer porcentaje de propina', '', 'Trinkgeld-Prozentsatz festlegen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1131, 'thankyou_for_your_payment', 'admin', 'Thanks for your Payment!', 'Thanks for your Payment!', 'شكرًا على دفعتك!', '¡Gracias por su pago!', '', 'Vielen Dank für Ihre Zahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1132, 'the_transaction_was_successfull', 'admin', 'The transaction was successful. Transaction details are given below:', 'The transaction was successful. Transaction details are given below:', 'تمت المعاملة بنجاح. تفاصيل المعاملة موضحة أدناه:', 'La transacción fue exitosa. Los detalles de la transacción se dan a continuación:', '', 'Die Transaktion war erfolgreich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1133, 'order_confirm_msg', 'admin', 'Order Confirm. Track you order using your phone number', 'Order Confirm. Track your order using your phone number', 'تأكيد الطلب. تتبع طلبك باستخدام رقم هاتفك', 'Confirmar pedido. Rastree su pedido usando su número de teléfono', '', 'Bestätigungsnachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1134, 'order_cancel_msg', 'admin', 'Order not confirm please try again!', 'Order not confirmed please try again!', 'الطلب غير مؤكد , يرجى المحاولة مرة أخرى!', '¡Pedido no confirmado, inténtalo de nuevo!', '', 'Bestellabbruchnachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1135, 'payment_success', 'admin', 'Payment Successfull', 'Payment Successful', 'تم الدفع بنجاح', 'Pago Exitoso', '', 'Zahlung erfolgreich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1136, 'payment_failed', 'admin', 'Payment Failed', 'Payment Failed', 'فشل الدفع', 'Pago fallido', '', 'Zahlung fehlgeschlagen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1137, 'hide_banner', 'admin', 'Hide Banner', 'Hide Banner', 'إخفاء البانر', 'Ocultar pancarta', '', 'Banner ausblenden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1138, 'hide_footer', 'admin', 'Hide Footer', 'Hide Footer', 'إخفاء التذييل', 'Ocultar pie de página', '', 'Footer ausblenden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1139, 'onesignal_user_id', 'admin', 'OneSignal User ID', 'OneSignal User ID', 'معرف مستخدم OneSignal', 'ID de usuario de OneSignal', '', 'OneSignal-Benutzer-ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1140, 'a_new_order_placed', 'admin', 'A new order placed', 'A new order placed', 'تم وضع طلب جديد', 'Un nuevo pedido realizado', '', 'Eine neue Bestellung wurde aufgegeben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1141, 'days_left', 'admin', 'Days Left', 'Days Left', 'الأيام المتبقية', 'Días Quedan', '', 'Tage übrig');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1142, 'order_not_confirmed_please_try_again', 'admin', 'Order not confirm please try again!', 'Order not confirm please try again!', 'الطلب غير مؤكد, يرجى المحاولة مرة أخرى!', 'Pedido no confirmado, ¡inténtalo de nuevo!', '', 'Bestellung nicht bestätigt. Bitte versuchen Sie es erneut');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1143, 'payment_request_details', 'admin', 'Payement Request details are given below', 'Payment Request details are given below', 'تفاصيل طلب الدفع أدناه', 'Los detalles de la solicitud de pago se proporcionan a continuación', '', 'Details zur Zahlungsanforderung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1144, 'mail_send_successfully', 'admin', 'Mail send successfully.', 'Mail sent successfully.', 'تم إرسال البريد بنجاح.', 'Correo enviado con éxito.', '', 'E-Mail erfolgreich gesendet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1145, 'thank_you_for_your_payment', 'admin', 'Thank you for your Payment!', 'Thank you for your Payment!', 'شكرًا لك على الدفع!', '¡Gracias por su pago!', '', 'Vielen Dank für Ihre Zahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1146, 'enable_live_order_button', 'admin', 'Enable Live order Button', 'Enable Live order Button', 'تمكين زر الطلب المباشر', 'Habilitar botón de orden en vivo', '', 'Schaltfläche');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1147, 'set_as_default', 'admin', 'Set as Default', 'Set as Default', 'تعيين كافتراضي', 'Establecer como predeterminado', '', 'Als Standard festlegen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1148, 'show_live_order_btn', 'admin', 'Show Live Order Button', 'Show Live Order Button', 'إظهار زر الطلب المباشر', 'Mostrar botón de orden en vivo', '', 'Schaltfläche');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1149, 'pos_print_size', 'admin', 'Pos Print size', 'Pos Print size', 'حجم طباعة نقاط البيع', 'Tamaño de impresión pos', '', 'POS-Druckgröße');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1150, 'font_size', 'admin', 'Font Size', 'Font Size', 'حجم الخط', 'Tamaño de fuente', '', 'Schriftgröße');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1151, 'welcome_message', 'admin', 'Welcome Message', 'Welcome Message', 'رسالة ترحيب', 'Mensaje de Bienvenida', '', 'Willkommensnachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1152, 'rest_api_key', 'admin', 'Rest API key', 'Rest API key', 'Rest API key', 'Clave de API de descanso', '', 'REST-API-Schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1153, 'enable_push_for_new_order', 'admin', 'Enable Push Notification for new order', 'Enable Push Notification for a new order', 'تمكين إعلام الدفع لطلب جديد', 'Habilitar notificación automática para un nuevo pedido', '', 'Push für neue Bestellungen aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1154, 'phone_with_international_format', 'admin', 'Phone with international format e.g. XXXXXXX', 'Phone with international format  XXXXXXX', 'هاتف بتنسيق دولي, مثل XXXXXXX', 'Teléfono con formato internacional, por ejemplo, 1408XXXXXXX', '', 'Telefon im internationalen Format');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1155, 'whatsapp_message', 'admin', 'Whatsapp Message', 'WhatsApp Message', 'رسالة WhatsApp', 'Mensaje de WhatsApp', '', 'WhatsApp Nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1156, 'whatsapp_share', 'admin', 'WhatsApp Share', 'WhatsApp Share', 'مشاركة WhatsApp', 'Compartir WhatsApp', '', 'WhatsApp Teilen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1157, 'whatsapp_message_for_order_status', 'admin', 'WhatsApp Message for order status', 'WhatsApp Message for order status', 'رسالة WhatsApp لحالة الطلب', 'Mensaje de WhatsApp para el estado del pedido', '', 'WhatsApp-Nachricht für Bestellstatus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1158, 'instance_id', 'admin', 'Instance ID', 'Instance ID', 'معرف المثيل', 'ID de instancia', '', 'Instanz-ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1159, 'token', 'admin', 'Token', 'Token', 'رمز', 'Ficha', '', 'Token');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1160, 'just_now', 'admin', 'Just Now', 'Just Now', 'فقط الآن', 'Justo ahora', '', 'Gerade eben');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1161, 'enable_to_allow', 'admin', 'Enable to allow', 'Enable to allow', 'تمكين للسماح', 'Habilitar para permitir', '', 'Aktivieren zulassen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1162, 'is_price', 'admin', 'Is Price', 'Is Price', 'هو السعر', 'Es Precio', '', 'Ist Preis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1163, 'select_items', 'admin', 'Select items', 'Select items', 'تحديد العناصر', 'Seleccionar elementos', '', 'Artikel auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1164, 'email_template', 'admin', 'Email Template', 'Email Template', 'نموذج البريد الإلكتروني', 'Plantilla de correo electrónico', '', 'E-Mail-Vorlage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1165, 'netseasy', 'admin', 'Netseasy', 'Netseasy', 'Netseasy', 'Netseasy', '', 'Netseasy');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1166, 'merchant_id', 'admin', 'Merchant Id', 'Merchant Id', 'معرّف التاجر', 'Identificación del comerciante', '', 'Händler-ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1167, 'checkout_key', 'admin', 'Checkout Key', 'Checkout Key', 'مفتاح الخروج', 'Clave de pago', '', 'Checkout-Schlüssel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1168, 'list_view', 'admin', 'List View', 'List View', 'عرض القائمة', 'Vista de lista', '', 'Listenansicht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1169, 'grid_view', 'admin', 'Grid View', 'Grid View', 'عرض الشبكة', 'Vista de cuadrícula', '', 'Rasteransicht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1170, 'multi_merge', 'admin', 'Multipe Merge', 'Multiple Merge', 'دمج متعدد', 'Fusión múltiple', '', 'Multi-Fusion');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1171, 'order_time', 'admin', 'Order Time', 'Order Time', 'وقت الطلب', 'Tiempo de pedido', '', 'Bestellzeit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1172, 'merge', 'admin', 'Merge', 'Merge', 'دمج', 'Combinar', '', 'zusammenführen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1173, 'show_live_order_button', 'admin', 'Show live order button', 'Show live order button', 'إظهار زر الطلب المباشر', 'Mostrar botón de orden en vivo', '', 'Schaltfläche');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1174, 'recovery_mail', 'admin', 'Password Recovery Mail', 'Password Recovery Mail', 'بريد استعادة كلمة المرور', 'Correo de recuperación de contraseña', '', 'Wiederherstellungs-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1175, 'contact_mail', 'admin', 'Contact Mail', 'Contact Mail', 'بريد الاتصال', 'Correo de contacto', '', 'Kontakt-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1176, 'resend_verify_mail', 'admin', 'Resend account verification mail', 'Resend account verification mail', 'إعادة إرسال بريد التحقق من الحساب', 'Reenviar correo de verificación de cuenta', '', 'Erneut senden E-Mail verifizieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1177, 'email_verification_mail', 'admin', 'Account verification mail', 'Account verification mail', 'بريد التحقق من الحساب', 'Correo de verificación de cuenta', '', 'E-Mail-Verifizierungs-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1178, 'account_create_invoice', 'admin', 'Account create invoice', 'Account create an invoice', 'إنشاء فاتورة الحساب', 'Cuenta crear una factura', '', 'Kontoerstellung Rechnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1179, 'new_user_mail', 'admin', 'New user subscription mail', 'New user subscription mail', 'بريد اشتراك مستخدم جديد', 'Correo de suscripción de nuevo usuario', '', 'Neue Benutzer-E-Mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1180, 'offline_payment_request_mail', 'admin', 'Offline payment request mail', 'Offline payment request mail', 'بريد طلب الدفع دون اتصال', 'Correo de solicitud de pago sin conexión', '', 'E-Mail für Offline-Zahlungsanforderung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1181, 'send_payment_verified_email', 'admin', 'Payment verification mail', 'Payment verification mail', 'بريد التحقق من الدفع', 'Correo de verificación de pago', '', 'Zahlungsbestätigungs-E-Mail senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1182, 'expire_reminder_mail', 'admin', 'Account expire reminder mail', 'Account expires reminder mail', 'رسالة تذكير بانتهاء صلاحية الحساب', 'Correo de recordatorio de vencimiento de la cuenta', '', 'E-Mail-Erinnerung an Ablauf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1183, 'account_expire_mail', 'admin', 'Account expire mail', 'Accounts expire mail', 'بريد تنتهي صلاحيته', 'Cuentas caducan correo', '', 'E-Mail bei Kontoablauf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1184, 'enable_multi_lang_category_items', 'admin', 'Enable Multi-language categories & Items', 'Enable Multi-language categories & Items', 'تمكين الفئات والعناصر متعددة اللغات', 'Habilitar categorías y elementos en varios idiomas', '', 'Mehrsprachige Kategorieobjekte aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1185, 'install_app', 'admin', 'Install App', 'Install App', 'تثبيت التطبيق', 'Instalar aplicación', '', 'App installieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1186, 'billing_cycle', 'admin', 'Billing Cycle', 'Billing Cycle', 'دورة الفوترة', 'Ciclo de facturación', '', 'Abrechnungszyklus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1187, 'last_billing', 'admin', 'Last Billing', 'Last Billing', 'آخر فاتورة', 'Última facturación', '', 'Letzte Abrechnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1188, 'payment_status', 'admin', 'Payment Status', 'Payment Status', 'حالة الدفع', 'Estado del pago', '', 'Zahlungsstatus');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1189, 'expire_date', 'admin', 'Expire_date', 'Expire date', 'تاريخ انتهاء الصلاحية', 'Fecha de caducidad', '', 'Ablaufdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1190, 'order_no', 'admin', 'Order NO', 'Order NO', 'رقم الطلب', 'Nº de pedido', '', 'Bestellnummer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1191, 'tax_percent_for_subscription', 'admin', 'Tax Percent for subscription', 'Tax Percent for subscription', 'نسبة ضريبة الاشتراك', 'Porcentaje de impuestos por suscripción', '', 'Steuersatz für Abonnement');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1192, 'subscription_invoice', 'admin', 'Subscriptions invoice', 'Subscriptions invoice', 'فاتورة الاشتراكات', 'Factura de suscripciones', '', 'Abonnementrechnung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1193, 'billing_address', 'admin', 'Billing Address', 'Billing Address', 'عنوان إرسال الفواتير', 'Dirección de facturación', '', 'Rechnungsadresse');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1194, 'cash-on-delivery', 'admin', 'Delivery / Pay on receipt', 'Delivery / Pay on receipt', 'التسليم / الدفع عند الاستلام', 'Entrega / Pago al recibir', '', 'Barzahlung bei Lieferung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1195, 'booking', 'admin', 'Booking', 'Booking', 'حجز طاولة في المطعم', 'Reserva', '', 'Buchung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1196, 'pickup', 'admin', 'Pickup', 'Pickup', 'الإستلام من المطعم', 'Recogida', '', 'Abholung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1197, 'pay-in-cash', 'admin', 'Delivery / Digital Payment', 'Delivery / Digital Payment', 'التسليم / الدفع الرقمي', 'Entrega / Pago Digital', '', 'Barzahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1198, 'package-dine-in', 'admin', 'Package / Restaurant Dine-in', 'Package / Restaurant Dine-in', 'حزمة / تناول الطعام في المطعم', 'Paquete / Cena en restaurante', '', 'Paket Essen im Restaurant');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1199, 'room-service', 'admin', 'Room Service', 'Room Service', 'خدمة الغرف', 'Servicio de habitaciones', '', 'Zimmerservice');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1200, 'pay-cash', 'admin', 'Pay cash', 'Pay cash', 'الدفع نقدًا', 'Pagar en efectivo', '', 'Geschäftsbewertungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1201, 'shop_reviews', 'admin', 'Shop Reviews', 'Shop Reviews', 'تسوق المراجعات', 'Reseñas de la tienda', '', 'Geschäftsbewertungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1202, 'reject', 'admin', 'Reject', 'Reject', 'رفض', 'Rechazar', '', 'ablehnen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1203, 'by', 'admin', 'By', 'by', 'بواسطة', 'por', '', 'von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1204, 'category_id', 'admin', 'Category ID', 'Category ID', 'معرف الفئة', 'ID de categoría', '', 'Kategorie-ID');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1205, 'company_details', 'admin', 'Company / Organization Details', 'Company / Organization Details', 'تفاصيل الشركة / المنظمة', 'Detalles de la empresa/organización', '', 'Firmendetails');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1206, 'start_new_cart', 'admin', 'Start a new cart?', 'Start a new cart?', 'هل تريد بدء عربة جديدة؟', '¿Iniciar un carrito nuevo?', '', 'Neuen Warenkorb starten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1207, 'your_cart_alreay_contains_items_from', 'admin', 'Your cart already contain items from', 'Your cart already contains items from', 'عربة التسوق الخاصة بك تحتوي بالفعل على عناصر من', 'Su carrito ya contiene artículos de', '', 'Ihr Warenkorb enthält bereits Artikel von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1208, 'would_you_like_to_clear_the_cart', 'admin', 'Would you like to clear the cart?', 'Would you like to clear the cart?', 'هل ترغب في مسح سلة التسوق؟', '¿Le gustaría borrar el carrito?', '', 'Möchten Sie den Warenkorb leeren?');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1210, 'default_language', 'admin', 'Default Language', 'Default Language', 'اللغة الافتراضية', 'Idioma predeterminado', '', 'Standardsprache');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1211, 'site_language', 'admin', 'Site Language', 'Site Language', 'لغة الموقع', 'Idioma del sitio', '', 'Seitensprache');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1212, 'google_translator', 'admin', 'Google translator', 'Google translator', 'مترجم جوجل', 'Traductor de Google', '', 'Google Übersetzer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1213, 'system_language', 'admin', 'System Language', 'System Language', 'لغة النظام', 'Idioma del sistema', '', 'Systemsprache');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1214, 'todays_orders', 'admin', 'Today\'s orders', 'Today\'s orders', 'طلبات اليوم', 'Pedidos de hoy', '', 'Bestellungen von heute');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1215, 'draft', 'admin', 'Draft', 'Draft', 'مسودة', 'Borrador', '', 'Entwurf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1216, 'all_categories', 'admin', 'All Categories', 'All Categories', 'جميع الفئات', 'Todas las categorías', '', 'Alle Kategorien');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1217, 'save_and_new_order', 'admin', 'Save and new order', 'Save and new order', 'حفظ وترتيب جديد', 'Guardar y nuevo pedido', '', 'Speichern und neue Bestellung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1218, 'add_variants', 'admin', 'Add Variants', 'Add Variants', 'إضافة متغيرات', 'Agregar variantes', '', 'Varianten hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1219, 'select_category', 'admin', 'Select Category', 'Select Category', 'اختر فئة', 'Seleccionar categoría', '', 'Kategorie auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1220, 'variant_name', 'admin', 'Variant Name', 'Variant Name', 'اسم البديل', 'Nombre de variante', '', 'Variantenname');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1221, 'login_btn_in_menu', 'admin', 'Login button in menu bar', 'Login button in menu bar', 'زر تسجيل الدخول في شريط القائمة', 'Botón de inicio de sesión en la barra de menú', '', 'Anmeldebutton im Menü');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1222, 'new_cart', 'admin', 'New Cart', 'New Cart', 'عربة التسوق الجديدة', 'Nuevo carrito', '', 'Neuer Warenkorb');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1223, 'show_in_menu_bar', 'admin', 'Show in Menu bar', 'Show in Menu bar', 'عرض في شريط القائمة', 'Mostrar en la barra de menú', '', 'Im Menüleisten anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1224, 'question_list', 'admin', 'Question List', 'Question List', 'قائمة الأسئلة', 'Lista de preguntas', '', 'Fragenliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1225, 'reject_reasons', 'admin', 'Reject Reasons', 'Reject Reasons', 'أسباب الرفض', 'Motivos del rechazo', '', 'Ablehnungsgründe');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1226, 'reason_list', 'admin', 'Reason List', 'Reason List', 'قائمة الأسباب', 'Lista de motivos', '', 'Grundliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1227, 'add_reason', 'admin', 'Add Reason', 'Add Reason', 'إضافة سبب', 'Agregar motivo', '', 'Grund hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1228, 'order_reject', 'admin', 'Order Reject', 'Order Reject', 'رفض الطلب', 'Pedido Rechazado', '', 'Bestellung ablehnen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1229, 'access_for', 'admin', 'Access for', 'Access for', 'الوصول لـ', 'Acceso para', '', 'Zugriff für');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1230, 'delivery_guy', 'admin', 'Delivery Guys', 'Delivery Guys', 'رجال التوصيل', 'Repartidores', '', 'Lieferant');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1231, 'created_by', 'admin', 'Created by', 'Created by', 'تم الإنشاء بواسطة', 'Creado por', '', 'Erstellt Von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1232, 'branding', 'admin', 'Branding', 'Branding', 'العلامة التجارية', 'Marca', '', 'Branding');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1233, 'tutorials', 'admin', 'Tutorials', 'Tutorials', 'البرامج التعليمية', 'Tutoriales', '', 'Tutorials');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1234, 'page_title', 'admin', 'Page Titles', 'Page Titles', 'عناوين الصفحات', 'Títulos de página', '', 'Seitentitel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1235, 'dboy', 'admin', 'Delivery Guys', 'Delivery Guys', 'رجال التوصيل', 'Repartidores', '', 'Lieferant');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1236, 'whatsapp_support', 'admin', 'WhatsApp support', 'WhatsApp support', 'دعم الواتساب', 'Soporte de WhatsApp', '', 'WhatsApp Support');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1237, 'support_until', 'admin', 'Support Until', 'Support Until', 'الدعم حتى', 'Soporte hasta', '', 'Support bis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1238, 'template', 'admin', 'Template', 'Template', 'القالب', 'Plantilla', '', 'Vorlage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1239, 'sign_up_text', 'admin', 'Signup to discover your shop', 'Signup to discover your shop', 'قم بالتسجيل لاكتشاف متجرك', 'Regístrate para descubrir tu tienda', '', 'Anmeldetext');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1240, 'shipping_address_not_found', 'admin', 'Delivery area/shipping address not found', 'Delivery area/shipping address not found', 'لم يتم العثور على منطقة التسليم/عنوان التوصيل', 'Zona de entrega/dirección de envío no encontrada', '', 'Lieferadresse nicht gefunden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1241, 'week', 'admin', 'Week', 'Week', 'أسبوع', 'Semana', '', 'Woche');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1242, 'mark_as_served', 'admin', 'Mark as served', 'Mark as served', 'وضع علامة تم تقديمه', 'Marcar como servido', '', 'Als bedient markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1243, 'add_new_order', 'admin', 'Create New Order', 'Create a new order', 'إنشاء طلب جديد', 'Crear un nuevo pedido', '', 'Neue Bestellung hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1244, 'pos_font_size', 'admin', 'Pos invoice font size', 'pos invoice font size', 'حجم خط فاتورة نقاط البيع', 'tamaño de fuente de la factura pos', '', 'POS-Schriftgröße');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1245, 'order_amount', 'admin', 'Ordered amount', 'Ordered amount', 'الكمية المطلوبة', 'Cantidad pedida', '', 'Bestellbetrag');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1246, 'this_job_already_handle_by_someone', 'admin', 'Sorry this job already handle by someone', 'Sorry, this job is already handled by someone', 'عذرًا, هذه المهمة يتولىها شخص ما بالفعل', 'Lo sentimos, este trabajo ya está a cargo de alguien', '', 'Diese Aufgabe wird bereits von jemandem bearbeitet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1247, 'email_already_exists', 'admin', 'The email is already Exists', 'The email already Exists', 'البريد الإلكتروني موجود بالفعل', 'El correo electrónico ya existe', '', 'E-Mail bereits vorhanden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1248, 'by_staff', 'admin', 'By staff', 'by staff', 'من قبل الموظفين', 'por personal', '', 'Durch das Personal');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1249, 'by_kds', 'admin', 'From KDS', 'From KDS', 'من KDS', 'De KDS', '', 'Durch KDS');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1250, 'a_new_order_is_placed', 'admin', 'A new order is placed', 'A new order is placed', 'تم تقديم طلب جديد', 'Se realiza un nuevo pedido', '', 'Eine neue Bestellung ist platziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1251, 'order_placed_successfully', 'admin', 'Order placed successfully', 'Order placed successfully', 'تم تقديم الطلب بنجاح', 'Pedido realizado correctamente', '', 'Bestellung erfolgreich platziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1252, 'please_wait_its_working', 'admin', 'Please Wait, It\'s working........', 'Please Wait, It\'s working........', 'من فضلك انتظر, إنه يعمل.........', 'Por favor, espera, está funcionando...', '', 'Bitte warten, es wird gearbeitet');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1253, 'orders_email_settings', 'admin', 'Orders email settings', 'Orders email settings', 'إعدادات البريد الإلكتروني للطلبات', 'Configuración de correo electrónico de pedidos', '', 'E-Mail-Einstellungen für Bestellungen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1254, 'orders_mail', 'admin', 'Orders Mail', 'Orders Mail', 'بريد الطلبات', 'Pedidos por correo', '', 'Bestellungs-E-Mails');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1255, 'reservation_mail', 'admin', 'Reservation Mail', 'Reservation Mail', 'بريد الحجز', 'Correo de reserva', '', 'Reservierungsmail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1256, 'enable_reservation_mail', 'admin', 'Enable Reservation Mail', 'Enable Reservation Mail', 'تمكين بريد الحجز', 'Habilitar correo de reserva', '', 'Reservierungsmail aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1257, 'reservation_placed_successfully', 'admin', 'Reservation Placed successfully', 'Reservation Placed successfully', 'تم الحجز بنجاح', 'Reserva realizada correctamente', '', 'Reservierung erfolgreich platziert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1258, 'mail_change_details', 'admin', 'Send mail with changes', 'Send a mail with the changes', 'إرسال بريد بالتعديلات', 'Enviar un correo con los cambios', '', 'E-Mail-Änderungsdetails');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1259, 'walk-in-customer', 'admin', 'Walk in customer', 'Walk-in customer', 'العميل الزائر', 'Cliente sin cita previa', '', 'Zu Fuß Kunde');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1260, 'crop', 'admin', 'Crop', 'Crop', 'اقتصاص', 'Recortar', '', 'Zuschneiden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1261, 'upload_by_cropper', 'admin', 'Upload by cropper', 'Upload by cropper', 'تحميل بواسطة كروبر', 'Subir por recortador', '', 'Hochgeladen von Cropper');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1262, 'deleted_successfully', 'admin', 'Deleted Successfully', 'Deleted Successfully', 'تم الحذف بنجاح', 'Eliminado correctamente', '', 'Erfolgreich gelöscht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1263, 'orientation', 'admin', 'Orientation', 'Orientation', 'الاتجاه', 'Orientación', '', 'Orientierung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1264, 'only_for_pos', 'admin', 'Only for pos', 'Only for pos', 'فقط لنقاط البيع', 'Sólo para pos', '', 'Nur für POS');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1265, 'affiliate', 'admin', 'Affiliate', 'Affiliate', 'شركة تابعة', 'Afiliado', '', 'Affiliate');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1266, 'total_referal', 'admin', 'Total Referal', 'Total Referal', 'إجمالي الإحالة', 'Referencia total', '', 'Gesamtverweis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1267, 'blance', 'admin', 'Balance', 'Balance', 'الرصيد', 'Saldo', '', 'Saldo');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1268, 'total_withdraw', 'admin', 'Total Withdraw', 'Total Withdraw', 'إجمالي السحب', 'Retiro Total', '', 'Gesamtabzug');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1269, 'referal_url', 'admin', 'Referal URL', 'Referal URL', 'عنوان URL للإحالة', 'URL de referencia', '', 'Empfehlungs-URL');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1270, 'send_invitation', 'admin', 'Send Invitation', 'Send Invitation', 'إرسال دعوة', 'Enviar invitación', '', 'Einladung senden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1271, 'invitation_details', 'admin', 'Send your referral link to your friends and tell them how cool is this!', 'Send your referral link to your friends and tell them how cool this is!', 'أرسل رابط الإحالة الخاص بك إلى أصدقائك وأخبرهم كم هو رائع هذا!', '¡Envía tu enlace de referencia a tus amigos y cuéntales lo genial que es esto!', '', 'Einladungsdetails');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1272, 'affiliate_registration_details', 'admin', 'Let them register using your referral link.', 'Let them register using your referral link.', 'اسمح لهم بالتسجيل باستخدام رابط الإحالة الخاص بك.', 'Permítales registrarse usando su enlace de referencia.', '', 'Affiliate-Registrierungsdetails');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1273, 'get_comminsions', 'admin', 'Get Commissions', 'Get Commissions', 'الحصول على العمولات', 'Obtener Comisiones', '', 'Kommissionen erhalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1274, 'get_commision_details', 'admin', 'Earn commission for their first subscription plan payments!', 'Earn commission for their first subscription plan payments!', 'احصل على عمولة مقابل دفعات خطة الاشتراك الأولى!', '¡Gana comisión por los primeros pagos del plan de suscripción!', '', 'Kommissionsdetails erhalten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1275, 'referral_guidelines', 'admin', 'Referral Guidelines', 'Referral Guidelines', 'إرشادات الإحالة', 'Pautas de referencia', '', 'Empfehlungsrichtlinien');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1276, 'payout_request', 'admin', 'Payout Request', 'Payout Request', 'طلب الدفع', 'Solicitud de pago', '', 'Auszahlungsanfrage');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1277, 'affiliate_list', 'admin', 'Affiliate List', 'Affiliate List', 'قائمة الشركات التابعة', 'Lista de afiliados', '', 'Affiliate-Liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1278, 'payout', 'admin', 'Payout', 'Payout', 'الدفع', 'Pago', '', 'Auszahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1279, 'complete_date', 'admin', 'Complete Date', 'Complete Date', 'التاريخ الكامل', 'Fecha completa', '', 'Abschlussdatum');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1280, 'payout_list', 'admin', 'Payout List', 'Payout List', 'قائمة العوائد', 'Lista de pagos', '', 'Auszahlungsliste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1281, 'pending_payment', 'admin', 'Pending Payment', 'Pending Payment', 'في انتظار الدفع', 'Pago Pendiente', '', 'Ausstehende Zahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1282, 'subscriber', 'admin', 'Subscriber', 'Subscriber', 'مشترك', 'Suscriptor', '', 'Abonnent');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1283, 'commision_price', 'admin', 'Commission Price', 'Commission Price', 'سعر العمولة', 'Precio de comisión', '', 'Kommissionspreis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1284, 'created_at', 'admin', 'Created at', 'Created at', 'تم الإنشاء في', 'Creado en', '', 'Erstellt am');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1285, 'total_income', 'admin', 'Total Income', 'Total Income', 'إجمالي الدخل', 'Ingresos Totales', '', 'Gesamteinkommen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1286, 'payment_method', 'admin', 'Payment Method', 'Payment Method', 'طريقة الدفع', 'Método de pago', '', 'Zahlungsmethode');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1287, 'payment_email', 'admin', 'Payment Email', 'Payment Email', 'البريد الإلكتروني للدفع', 'Correo electrónico de pago', '', 'Zahlungsemail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1288, 'payment_details', 'admin', 'Payment Details', 'Payment Details', 'تفاصيل الدفع', 'Detalles de pago', '', 'Zahlungsdetails');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1289, 'login_btn', 'admin', 'Login Button', 'Login Button', 'زر تسجيل الدخول', 'Botón de inicio de sesión', '', 'Anmeldebutton');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1290, 'hide_product_image', 'admin', 'Hide Product Image', 'Hide Product Image', 'إخفاء صورة المنتج', 'Ocultar imagen del producto', '', 'Produktbild ausblenden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1291, 'dropdown', 'admin', 'Dropdown', 'Dropdown', 'قائمة منسدلة', 'Desplegable', '', 'Dropdown');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1292, 'vendor_name', 'admin', 'Vendor Name', 'Vendor Name', 'اسم البائع', 'Nombre del proveedor', '', 'Lieferantenname');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1293, 'in_progress', 'admin', 'In-progress', 'In-progress', 'قيد التقدم', 'En curso', '', 'In Bearbeitung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1294, 'package_price', 'admin', 'Package Price', 'Package Price', 'سعر العبوة', 'Precio del paquete', '', 'Paketpreis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1295, 'affiliate_from', 'admin', 'Affiliate From', 'Affiliate From', 'التابع من', 'Afiliado de', '', 'Affiliate von');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1296, 'enable_affiliate', 'admin', 'Enable Affiliate', 'Enable Affiliate', 'تمكين الشركة التابعة', 'Habilitar afiliado', '', 'Affiliate aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1297, 'commission_rate', 'admin', 'Commission Rate', 'Commission Rate', 'سعر العمولة', 'Tasa de comisión', '', 'Kommissionsrate');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1298, 'subscriber_commission_rate', 'admin', 'Subscriber Commission Rate', 'Subscriber Commission Rate', 'معدل عمولة المشترك', 'Tarifa de comisión del suscriptor', '', 'Abonnentenkommissionsrate');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1299, 'minimum_payout', 'admin', 'Minimum Payout', 'Minimum Payout', 'الحد الأدنى للدفع', 'Pago mínimo', '', 'Mindestauszahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1300, 'flat', 'admin', 'Flat', 'Flat', 'مسطحة', 'Plano', '', 'flach');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1301, 'transactions', 'admin', 'Transactions', 'Transactions', 'المعاملات', 'Transacciones', '', 'Transaktionen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1302, 'referal_code', 'admin', 'Referral Code', 'Referral Code', 'رمز الإحالة', 'Código de referencia', '', 'Empfehlungscode');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1303, 'completed_payout', 'admin', 'Completed Payout', 'Completed Payout', 'اكتمل الدفع', 'Pago completado', '', 'abgeschlossene Auszahlung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1304, 'mark_as_hold', 'admin', 'Mark as hold', 'Mark as hold', 'وضع علامة تعليق', 'Marcar como retenido', '', 'Als Vorbehalt markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1305, 'sales_graph', 'admin', 'Sales Graph', 'Sales Graph', 'الرسم البياني للمبيعات', 'Gráfico de ventas', '', 'Umsatzdiagramm');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1306, 'service_charge', 'admin', 'Service Charge', 'Service Charge', 'تكلفة الخدمة', 'Cargo por servicio', '', 'Servicegebühr');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1307, 'language', 'admin', 'Language', 'Language', 'اللغة', 'Idioma', '', 'Sprache');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1308, 'referal_discount', 'admin', 'Referral Discount', 'Referral Discount', 'خصم الإحالة', 'Descuento por recomendación', '', 'Empfehlungsrabatt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1309, 'new_code', 'admin', 'New Code', 'New Code', 'الرمز الجديد', 'Nuevo Código', '', 'neuer Code');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1310, 'value', 'admin', 'Value', 'Value', 'القيمة', 'Valor', '', 'Wert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1311, 'preparing', 'admin', 'Preparing', 'Preparing', 'التحضير', 'Preparando', '', 'Vorbereitung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1312, 'ready', 'admin', 'Ready', 'Ready', 'جاهز', 'Listo', '', 'bereit');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1313, 'category', 'admin', 'Category', 'Category', 'الفئة', 'Categoría', '', 'Kategorie');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1314, 'expensereport', 'admin', 'Expense Report', 'Expense Report', 'تقرير النفقات', 'Informe de gastos', '', 'Ausgabenbericht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1315, 'summaryreport', 'admin', 'Summary Report', 'Summary Report', 'تقرير ملخص', 'Informe resumido', '', 'Zusammenfassungsbericht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1316, 'xreport', 'admin', 'Xreport', 'Xreport', 'Xreport', 'Informe X', '', 'X-Bericht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1317, 'csv', 'admin', 'CSV', 'CSV', 'CSV', 'CSV', '', 'CSV');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1318, 'pdf', 'admin', 'PDF', 'PDF', 'PDF', 'PDF', '', 'PDF');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1319, 'excel', 'admin', 'EXCEL', 'EXCEL', 'إكسل', 'EXCEL', '', 'Excel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1320, 'add_breaks', 'admin', 'Add Breaks', 'Add Breaks', 'إضافة فواصل', 'Agregar descansos', '', 'inklusive Steuern');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1321, 'create_order', 'admin', 'Order Create', 'Order Create', 'إنشاء الطلب', 'Crear pedido', '', 'Steuerregelung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1322, 'cities', 'admin', 'Cities', 'Cities', 'المدن', 'Ciudades', '', 'Standard');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1323, 'city_name', 'admin', 'City Name', 'City Name', 'اسم المدينة', 'Nombre de la ciudad', '', 'max_qty');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1324, 'zip_code', 'admin', 'Zip code', 'Zipcode', 'الرمز البريدي', 'Código postal', NULL, 'postleitzahl');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1325, 'variant_options', 'admin', 'Variant options', 'Variant options', 'الخيارات المتنوعة', 'Opciones variantes', NULL, 'varianten_optionen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1326, 'enable_push_for_call_waiter', 'admin', 'Enable push for call waiter', 'Enable push for call waiter', 'تمكين الضغط من أجل استدعاء النادل', 'Habilitar push para llamar al camarero', NULL, 'ruf_warten_push_aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1327, 'slogan', 'admin', 'Slogan', 'Slogan', 'الشعار', 'Lema', NULL, 'slogan');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1328, 'payment_link', 'admin', 'Payment Link', 'Payment Link', 'رابط الدفع', 'Enlace de pago', NULL, 'zahlung_link');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1329, 'restaurant', 'admin', 'Restaurant', 'vendor', 'البائع', 'vendedor', NULL, 'restaurant');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1330, 'custom', 'admin', 'Custom', 'Custom', 'مخصص', 'Personalizado', NULL, 'benutzerdefiniert');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1331, 'confirmed', 'admin', 'Confirmed', 'Confirmed', 'تم التأكيد', 'Confirmado', NULL, 'bestätigt');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1332, 'show_in_landing_page', 'admin', 'Show in the landing page', 'Show in the landing page', 'عرض في الصفحة المقصودة', 'Mostrar en la página de inicio', NULL, 'auf_landing_page_anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1333, 'add_new_extra_title', 'admin', 'Add new extra / addons title', 'Add new extra/addons title', 'أضف عنوانًا إضافيًا/إضافات جديدة', 'Agregar nuevo título extra/complementos', NULL, 'neuen_extratitel_hinzufügen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1334, 'single_select', 'admin', 'Single select', 'single select', 'اختيار فردي', 'selección única', NULL, 'einzelauswahl');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1335, 'multiple_select', 'admin', 'Multiple select', 'Multiple select', 'اختيار متعدد', 'Selección múltiple', NULL, 'mehrfachauswahl');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1336, 'is_required', 'admin', 'Is required', 'Is required', 'مطلوب', 'Es necesario', NULL, 'ist_erforderlich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1337, 'required', 'admin', 'Required', 'Required', 'مطلوب', 'Obligatorio', NULL, 'erforderlich');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1338, 'select_limit', 'admin', 'Select Limit', 'Select Limit', 'حدد الحد', 'Seleccionar límite', NULL, 'grenze_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1339, 'please_select_at_least', 'admin', 'Please select at least', 'Please select at least', 'يُرجى التحديد على الأقل', 'Por favor seleccione al menos', NULL, 'bitte_wählen_sie_mindestens');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1340, 'options', 'admin', 'Option(s)', 'option(s)', 'الخيار (الخيارات)', 'opción(es)', NULL, 'optionen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1341, 'at_least', 'admin', 'At least', 'at least', 'على الأقل', 'al menos', NULL, 'mindestens');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1342, 'optional', 'admin', 'Optional', 'Optional', 'اختياري', 'Opcional', NULL, 'optional');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1343, 'select_minimum', 'admin', 'Select minumum', 'select minimum', 'اختر الحد الأدنى', 'seleccionar mínimo', NULL, 'minimum_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1344, 'list', 'admin', 'List', 'List', 'قائمة', 'Lista', NULL, 'liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1345, 'addons', 'admin', 'Addons', 'addons', 'إضافات', 'complementos', NULL, 'zusätze');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1346, 'only_for_package', 'admin', 'Only for package', 'Only for package', 'للحزمة فقط', 'Sólo para paquete', NULL, 'nur_für_paket');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1347, 'required_fields', 'admin', 'Please fill-up the required fields', 'Please fill up the required fields', 'يرجى ملء الحقول المطلوبة', 'Por favor complete los campos requeridos', NULL, 'erforderliche_felder');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1348, 'show_customer_comments_invoice', 'admin', 'Show customer comments invoice', 'Show customer comments invoice', 'إظهار فاتورة تعليقات العملاء', 'Mostrar factura de comentarios del cliente', NULL, 'kundenkommentare_auf_rechnung_anzeigen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1349, 'slider', 'admin', 'Slider', 'Slider', 'شريط التمرير', 'Control deslizante', NULL, 'schieberegler');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1350, 'variant_description', 'admin', 'Variant Options separated by|pipe symbol, i.e Black|Blue|Red', 'Variant Options separated by|pipe symbol, i.e Black|Blue|Red', 'الخيارات المتباينة مفصولة بواسطة|رمز الأنبوب, أي أسود|أزرق|أحمر', 'Opciones variantes separadas por|símbolo de tubería, es decir, Negro|Azul|Rojo', NULL, 'varianten_beschreibung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1351, 'variant_name_details', 'admin', 'Variant Name, i.e size, color etc', 'Variant Name, i.e size, color, etc', 'اسم المتغير, مثل الحجم واللون وما إلى ذلك', 'Nombre de la variante, es decir, tamaño, color, etc', NULL, 'details_zu_varianten_namen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1352, 'select_max_limit', 'admin', 'Maximum choose/select limit', 'Maximum choose/select limit', 'الحد الأقصى للاختيار/التحديد', 'Límite máximo de elección/selección', NULL, 'maximale_grenze_auswählen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1353, 'menu_list', 'admin', 'Menu List', 'Menu List', 'قائمة القائمة', 'Lista de menús', NULL, 'Menü Liste');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1354, 'is_dropdown', 'admin', 'Is Dropdown', 'Is Dropdown', 'قائمة منسدلة', 'Es desplegable', NULL, 'ist_dropdown');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1355, 'total_sales', 'admin', 'Total sales', 'Total sales', 'إجمالي المبيعات', 'Ventas totales', NULL, 'gesamtverkauf');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1356, 'payment_with_cash', 'admin', 'Cash Payment', 'Cash Payment', 'الدفع نقدًا', 'Pago en efectivo', NULL, 'zahlung_mit_bargeld');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1357, 'you_have_some_test_data_like_items', 'admin', 'You have some test/default data like items, categories', 'You have some test/default data like items, categories', 'لديك بعض البيانات الاختبارية/الافتراضية مثل العناصر والفئات', 'Tienes algunos datos de prueba/predeterminados como elementos, categorías', NULL, 'sie_haben_einige_testdaten_wie_artikel');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1358, 'do_you_want_to_remove_them', 'admin', 'Do you want to remove them?\',\'Do you want to remove them?', 'Do you want to remove them?', 'هل تريد إزالتها؟', '¿Quieres eliminarlos?', NULL, 'möchten_sie_sie_entfernen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1359, 'moyasar', 'admin', 'Moyasar', 'Moyasar', 'مُيسر', 'Moyásar', NULL, 'moyasar');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1360, 'max_qty', 'admin', 'Maximum qty select limit', 'Maximum qty select limit', 'الحد الأقصى لتحديد الكمية', 'Límite de selección de cantidad máxima', NULL, 'max_menge');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1361, 'default', 'admin', 'Default', 'default', 'افتراضي', 'predeterminado', NULL, 'standard');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1362, 'tax_system', 'admin', 'Tax system', 'Tax system', 'النظام الضريبي', 'Sistema tributario', NULL, 'steuersystem');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1363, 'including_tax', 'admin', 'Tax including Formula (EU)', 'Tax including Formula (EU)', 'الضريبة شاملة الصيغة (الاتحاد الأوروبي)', 'Impuesto incluido Fórmula (UE)', NULL, 'einschließlich_steuer');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1364, 'please_configure_the_mail_first', 'admin', 'Please configure your email first', 'Please configure your email first', 'يرجى ضبط بريدك الإلكتروني أولاً', 'Primero configure su correo electrónico', NULL, 'bitte_konfigurieren_sie_zuerst_die_mail');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1365, 'if_you_want_to_set_custom_price', 'admin', 'If you want to set custom Price', 'If you want to set a custom Price', 'إذا كنت تريد تحديد سعر مخصص', 'Si desea establecer un precio personalizado', NULL, 'wenn_sie_einen_benutzerdefinierten_preis_festlegen_möchten');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1366, 'current_price', 'admin', 'Current Price', 'Current Price', 'السعر الحالي', 'Precio Actual', NULL, 'aktueller_preis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1367, 'previous_price', 'admin', 'Previous price', 'Previous price', 'السعر السابق', 'Precio anterior', NULL, 'vorheriger_preis');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1368, 'mark_as_default', 'admin', 'Mark as default', 'Mark as default', 'وضع علامة كافتراضي', 'Marcar como predeterminado', NULL, 'als_standard_markieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1369, 'city_based_delivery_boy', 'admin', 'City Based Delivery guys', 'City Based Delivery guys', 'رجال التوصيل في المدينة', 'Repartidores de la ciudad', NULL, 'stadtbasierter_lieferjunge');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1370, 'order_placed_message', 'admin', 'Order place message', 'Order placed/welcome message', 'تم تقديم الطلب/رسالة ترحيب', 'Pedido realizado/mensaje de bienvenida', NULL, 'bestell nachricht');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1371, 'please_select_the_payment_method', 'admin', 'Please select the payment method', 'Please select the payment method', 'يُرجى تحديد طريقة الدفع', 'Por favor seleccione el método de pago', NULL, 'bitte wählen sie die zahlungsmethode');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1372, 'upload_payment_document', 'admin', 'Upload payment document', 'Upload payment document', 'رفع مستند الدفع', 'Subir documento de pago', NULL, 'zahlungsdokument hochladen');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1373, 'enable_payment_documemt_uploader', 'admin', 'Enable payment document uploader', 'Enable payment document uploader', 'تفعيل أداة تحميل مستندات الدفع', 'Habilitar cargador de documentos de pago', NULL, 'zahlung dokument uploader aktivieren');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1374, 'chat', 'admin', 'Chat', 'Chat', 'دردشة', 'Chatear', NULL, 'chat');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1375, 'order_checkout_config', 'admin', 'Checkout / order config', 'Checkout/order config', 'إعدادات الخروج/الطلب', 'Configuración de pago/pedido', NULL, 'bestellabschluss konfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1376, 'shipping_config', 'admin', 'Shipping config', 'Shipping config', 'إعدادات التوصيل', 'Configuración de envío', NULL, 'versandkonfiguration');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1377, 'email_based_customer_login', 'admin', 'Email_based_staff/customer_login', 'Email-based staff/customer login', 'تسجيل دخول الموظفين/العميل عبر البريد الإلكتروني', 'Inicio de sesión de cliente/personal basado en correo electrónico', NULL, 'email basierte kundenanmeldung');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1378, 'login_with_email_or_phone', 'admin', 'Login with email or phone', 'Login with email or phone', 'تسجيل الدخول باستخدام البريد الإلكتروني أو الهاتف', 'Iniciar sesión con correo electrónico o teléfono', NULL, 'anmelden mit email oder telefon');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1379, 'phone_or_email_cannot_be_empty', 'admin', 'Phone or email cannot be empty', 'Phone or email cannot be empty', 'لا يمكن ترك حقل الهاتف أو البريد الإلكتروني فارغًا', 'El teléfono o el correo electrónico no pueden estar vacíos', NULL, 'telefon oder email dürfen nicht leer sein');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1380, 'email_already_exits', 'admin', 'Email already exists', 'Email already exists', 'البريد الإلكتروني موجود بالفعل', 'El correo electrónico ya existe', NULL, 'email bereits vorhanden');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `tr`, `de`) VALUES (1381, 'required_fields_cannot_be_empty', 'admin', 'Required fields cannot be empty', 'Required fields cannot be empty', 'لا يمكن ترك الحقول المطلوبة فارغة', 'Los campos obligatorios no pueden estar vacíos', NULL, 'erforderliche felder dürfen nicht leer sein');


#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `direction` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (3, 'English', 'english', 'ltr', 1, '2020-09-22 16:42:51');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (6, 'Spanish', 'es', 'ltr', 1, '2021-04-14 15:15:20');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (8, 'Arabics', 'ar', 'rtl', 1, '2021-04-15 11:49:35');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (10, 'Turkish', 'tr', 'ltr', 1, '2024-06-04 05:13:20');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (11, 'Germany', 'de', 'ltr', 1, '2024-06-04 05:27:07');


#
# TABLE STRUCTURE FOR: menu_type
#

DROP TABLE IF EXISTS `menu_type`;

CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `orders` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `category_id` int(11) NOT NULL,
  `is_pos_only` int(11) NOT NULL DEFAULT 0,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (3, 2, 1, 'others', 'شاورما', '', 1, 1, '2024-06-05 20:27:09', 'uploads/thumb/4d8f26e9acc0d08c1495f03d6976292e.png', 'uploads/big/4d8f26e9acc0d08c1495f03d6976292e.png', 'ar', 3, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (4, 2, 1, 'others', 'السندويش الغربي', '', 2, 1, '2024-06-05 20:28:27', 'uploads/thumb/18fbb1831869e8c8de66df626e494d4e.png', 'uploads/big/18fbb1831869e8c8de66df626e494d4e.png', 'ar', 4, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (5, 2, 1, 'others', 'الوجبات الغربية', '', 3, 1, '2024-06-05 20:29:56', 'uploads/thumb/f8ce2e96d18d58d8a3e2ab6e5ddc0bb7.png', 'uploads/big/f8ce2e96d18d58d8a3e2ab6e5ddc0bb7.png', 'ar', 5, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (6, 2, 1, 'others', 'الفلافل', '', 4, 1, '2024-06-05 20:32:16', 'uploads/thumb/9c8781df62a724e0b1f74f80ef012afd.png', 'uploads/big/9c8781df62a724e0b1f74f80ef012afd.png', 'ar', 6, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (7, 2, 1, 'others', 'الوجبات الشرقية', '', 5, 1, '2024-06-05 20:25:15', 'uploads/thumb/085af0372f5305b12a87a57b7d50231e.png', 'uploads/big/085af0372f5305b12a87a57b7d50231e.png', 'ar', 7, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (8, 2, 1, 'others', 'المقبلات', '', 6, 1, '2024-06-05 20:24:02', 'uploads/thumb/f0f4f97dfd3d592ec5061af0f96012f5.png', 'uploads/big/f0f4f97dfd3d592ec5061af0f96012f5.png', 'ar', 8, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (9, 2, 1, 'others', 'السلطات', '', 7, 1, '2024-06-05 20:23:08', 'uploads/thumb/f13778d5e5192b095864d13ee104c164.png', 'uploads/big/f13778d5e5192b095864d13ee104c164.png', 'ar', 9, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (10, 2, 1, 'others', 'المشروبات', '', 8, 1, '2024-06-05 20:21:24', 'uploads/thumb/6ebd564c59c9a7e0819d5f1dadd20126.png', 'uploads/big/6ebd564c59c9a7e0819d5f1dadd20126.png', 'ar', 10, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (11, 2, 1, 'others', 'الإضافات', '', 9, 1, '2024-06-05 20:20:09', 'uploads/thumb/aaf3d3517b208a76eebc18de6cf10d7a.png', 'uploads/big/aaf3d3517b208a76eebc18de6cf10d7a.png', 'ar', 11, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (12, 2, 1, 'others', 'Shawarma', '', 1, 1, '2024-06-05 20:30:46', 'uploads/thumb/52955cca33cb9def02e934cf2d26f8d7.png', 'uploads/big/52955cca33cb9def02e934cf2d26f8d7.png', 'english', 12, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (13, 2, 1, 'others', 'Western Sandwich', '', 2, 1, '2024-06-05 20:31:14', 'uploads/thumb/2fd219c734b3c73f21480e041b930cf5.png', 'uploads/big/2fd219c734b3c73f21480e041b930cf5.png', 'english', 13, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (14, 2, 1, 'others', 'Western Meals', '', 3, 1, '2024-06-05 20:31:38', 'uploads/thumb/bd8a2d204d1cbd828954efa96f444cfd.png', 'uploads/big/bd8a2d204d1cbd828954efa96f444cfd.png', 'english', 14, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (15, 2, 1, 'others', 'Falafel', '', 4, 1, '2024-06-05 20:33:29', 'uploads/thumb/f9a75d0350995265f047a6d4862ad7ad.png', 'uploads/big/f9a75d0350995265f047a6d4862ad7ad.png', 'english', 15, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (16, 2, 1, 'others', 'The Eastern Meals', '', 5, 1, '2024-06-05 20:32:13', 'uploads/thumb/27bd0893d763bc5d36a32771ae41d74c.png', 'uploads/big/27bd0893d763bc5d36a32771ae41d74c.png', 'english', 16, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (17, 2, 1, 'others', 'Appetizers', '', 6, 1, '2024-06-05 20:34:54', 'uploads/thumb/d1f77b3f56a64592aeb8eed907ed2651.png', 'uploads/big/d1f77b3f56a64592aeb8eed907ed2651.png', 'english', 17, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (18, 2, 1, 'others', 'Salads', '', 7, 1, '2024-06-05 20:34:05', 'uploads/thumb/64f4a3a04c5ee3fd03be58454012ee35.png', 'uploads/big/64f4a3a04c5ee3fd03be58454012ee35.png', 'english', 18, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (19, 2, 1, 'others', 'Drinks', '', 8, 1, '2024-06-05 20:34:25', 'uploads/thumb/752219e088a31846fa257f3557472a93.png', 'uploads/big/752219e088a31846fa257f3557472a93.png', 'english', 19, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (20, 2, 1, 'others', 'Extras', '', 9, 1, '2024-06-05 20:34:46', 'uploads/thumb/f98c76b9d652e9c3baee542e97d300bf.png', 'uploads/big/f98c76b9d652e9c3baee542e97d300bf.png', 'english', 20, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (21, 2, 1, 'others', 'Döner', '', 1, 1, '2024-06-05 23:44:47', 'uploads/thumb/09ff0341a79b519e3b2c2577d5a2c0d4.png', 'uploads/big/09ff0341a79b519e3b2c2577d5a2c0d4.png', 'tr', 21, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (22, 2, 1, 'others', 'Batı Dürüm', '', 2, 1, '2024-06-05 23:45:05', 'uploads/thumb/2770c1bf533cb910fe96311f7c06a69c.png', 'uploads/big/2770c1bf533cb910fe96311f7c06a69c.png', 'tr', 22, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (23, 2, 1, 'others', 'Batı Yemekleri', '', 3, 1, '2024-06-05 23:45:21', 'uploads/thumb/ab4f4b4181b6ea15c0a155b1abb6e148.png', 'uploads/big/ab4f4b4181b6ea15c0a155b1abb6e148.png', 'tr', 23, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (24, 2, 1, 'others', 'Falafel', '', 4, 1, '2024-06-05 23:45:46', 'uploads/thumb/2c880d221d81c9f56fe7fada52c260b4.png', 'uploads/big/2c880d221d81c9f56fe7fada52c260b4.png', 'tr', 24, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (25, 2, 1, 'others', 'Doğu Yemekleri', '', 5, 1, '2024-06-05 23:46:00', 'uploads/thumb/5bda2fa107ad7e6d024cf913cb686fe8.png', 'uploads/big/5bda2fa107ad7e6d024cf913cb686fe8.png', 'tr', 25, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (26, 2, 1, 'others', 'Meze', '', 6, 1, '2024-06-05 23:46:14', 'uploads/thumb/1749f3e9b60a51f0bb9919b75d10852e.png', 'uploads/big/1749f3e9b60a51f0bb9919b75d10852e.png', 'tr', 26, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (27, 2, 1, 'others', 'Salad', '', 7, 1, '2024-06-05 23:46:33', 'uploads/thumb/82da9856b12f46cd15937cc976d45871.png', 'uploads/big/82da9856b12f46cd15937cc976d45871.png', 'tr', 27, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (28, 2, 1, 'others', 'İçecekler', '', 8, 1, '2024-06-05 23:46:49', 'uploads/thumb/1923e3c5cf597d76693987ce2a587eee.png', 'uploads/big/1923e3c5cf597d76693987ce2a587eee.png', 'tr', 28, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (29, 2, 1, 'others', 'Ekstralar', '', 9, 1, '2024-06-05 23:47:11', 'uploads/thumb/85520e481be8fc1ca98865e86aad252d.png', 'uploads/big/85520e481be8fc1ca98865e86aad252d.png', 'tr', 29, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (32, 3, 2, 'others', 'Döner', '', 1, 1, '2024-06-06 14:16:53', 'uploads/thumb/30644c9f23c707cbf5124a1ce53765e7.png', 'uploads/big/30644c9f23c707cbf5124a1ce53765e7.png', 'de', 32, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (33, 3, 2, 'others', 'Salat Gerichte', '', 2, 1, '2024-06-06 14:17:11', 'uploads/thumb/8b63789ed96ffa0333a064197722b753.png', 'uploads/big/8b63789ed96ffa0333a064197722b753.png', 'de', 33, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (34, 3, 2, 'others', 'Falafel & Suppe', '', 3, 1, '2024-06-09 18:17:29', 'uploads/thumb/c5176fe4ee15210701902a00bdf85c45.png', 'uploads/big/c5176fe4ee15210701902a00bdf85c45.png', 'de', 34, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (35, 3, 2, 'others', 'Burger', '', 4, 1, '2024-06-06 14:22:24', 'uploads/thumb/4f681a372b68c6e56ebd4ef34320a8a7.png', 'uploads/big/4f681a372b68c6e56ebd4ef34320a8a7.png', 'de', 35, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (36, 3, 2, 'others', 'Putenwurst', '', 5, 1, '2024-06-06 14:22:45', 'uploads/thumb/88fa3bf4f154a5a1589adeb6ae2f822e.png', 'uploads/big/88fa3bf4f154a5a1589adeb6ae2f822e.png', 'de', 36, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (37, 3, 2, 'others', 'Pizzabrötchen', '', 6, 1, '2024-06-06 14:24:40', 'uploads/thumb/a41c92dafdd2d010d15aa328195dc98c.png', 'uploads/big/a41c92dafdd2d010d15aa328195dc98c.png', 'de', 37, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (38, 3, 2, 'others', 'Grillspezialitäten', '', 7, 1, '2024-06-06 14:26:26', 'uploads/thumb/a5f2ff21e17580e4011486119d3b64ee.png', 'uploads/big/a5f2ff21e17580e4011486119d3b64ee.png', 'de', 38, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (39, 3, 2, 'others', 'Baguette', '', 8, 1, '2024-06-06 14:27:10', 'uploads/thumb/808c4839ef3fa739fb74de72d8f7d155.png', 'uploads/big/808c4839ef3fa739fb74de72d8f7d155.png', 'de', 39, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (40, 3, 2, 'others', 'Pommes und Beilagen', '', 9, 1, '2024-06-06 14:28:44', 'uploads/thumb/30478391da66d20aacdeb4df7d5c8eea.png', 'uploads/big/30478391da66d20aacdeb4df7d5c8eea.png', 'de', 40, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (41, 3, 2, 'others', 'Calzone', '', 10, 1, '2024-06-09 18:20:35', 'uploads/thumb/466e5a7e09dac7cb0d6430a5e8cb62b6.png', 'uploads/big/466e5a7e09dac7cb0d6430a5e8cb62b6.png', 'de', 41, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (42, 3, 2, 'others', 'Pide', '', 10, 1, '2024-06-06 14:31:14', 'uploads/thumb/c417a4eb1f9279051f83438f865f1be0.png', 'uploads/big/c417a4eb1f9279051f83438f865f1be0.png', 'de', 42, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (43, 3, 2, 'others', 'Pizza', '', 12, 1, '2024-06-06 14:31:59', 'uploads/thumb/2405cf5c28921b302a7cf983df917b75.png', 'uploads/big/2405cf5c28921b302a7cf983df917b75.png', 'de', 43, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (44, 3, 2, 'others', 'Extras', '', 13, 1, '2024-06-06 14:33:12', 'uploads/thumb/e6272be83bd16605b6eda620de5f728a.png', 'uploads/big/e6272be83bd16605b6eda620de5f728a.png', 'de', 44, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (45, 3, 2, 'others', 'Getränke', '', 15, 1, '2024-06-06 14:35:21', 'uploads/thumb/c5073831c4e2139cf9b1ccd387f601c9.png', 'uploads/big/c5073831c4e2139cf9b1ccd387f601c9.png', 'de', 45, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (46, 3, 2, 'others', 'MENÜS', '', 0, 1, '2024-06-06 14:52:49', 'uploads/thumb/560a4a19176feac528d9479f11f654f3.png', 'uploads/big/560a4a19176feac528d9479f11f654f3.png', 'de', 46, 0, 0);
INSERT INTO `menu_type` (`id`, `user_id`, `shop_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`, `language`, `category_id`, `is_pos_only`, `is_default`) VALUES (47, 3, 2, 'others', 'Desserts', '', 16, 1, '2024-06-06 15:10:35', 'uploads/thumb/744a7e36d8c55145fa7c30d9c25c4bda.png', 'uploads/big/744a7e36d8c55145fa7c30d9c25c4bda.png', 'de', 47, 0, 0);


#
# TABLE STRUCTURE FOR: offline_payment
#

DROP TABLE IF EXISTS `offline_payment`;

CREATE TABLE `offline_payment` (
  `txn_id` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `package` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `approve_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: order_item_list
#

DROP TABLE IF EXISTS `order_item_list`;

CREATE TABLE `order_item_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `item_price` double NOT NULL,
  `is_package` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `is_size` int(11) NOT NULL,
  `size_slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `is_extras` int(11) NOT NULL DEFAULT 0,
  `extra_id` varchar(255) DEFAULT NULL,
  `item_comments` text DEFAULT NULL,
  `is_merge` int(11) NOT NULL DEFAULT 0,
  `merge_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `extra_qty` longtext DEFAULT NULL,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `shop_id` (`shop_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: order_payment_info
#

DROP TABLE IF EXISTS `order_payment_info`;

CREATE TABLE `order_payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(200) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `payment_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 0,
  `all_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `offline_payment_info` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: order_types
#

DROP TABLE IF EXISTS `order_types`;

CREATE TABLE `order_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_order_types` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (1, 'Cash on delivery', 'cash-on-delivery', 1, 1, '2021-04-06 16:48:57');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (2, 'Booking', 'booking', 1, 1, '2021-04-06 16:50:12');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (3, 'Reservation', 'reservation', 1, 0, '2021-04-06 16:50:38');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (4, 'Pickup', 'pickup', 1, 1, '2021-04-06 16:50:38');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (5, 'Pay in cash', 'pay-in-cash', 1, 0, '2021-04-06 16:50:38');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (6, 'Dine-in', 'dine-in', 1, 1, '2021-04-06 16:50:38');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (7, 'Package / Restaurant Dine-in', 'package-dine-in', 1, 0, '2022-09-20 23:04:31');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (8, 'Room Service', 'room-service', 1, 1, '2022-09-20 23:04:31');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (9, 'Pay cash', 'pay-cash', 1, 1, '2022-09-20 23:04:31');


#
# TABLE STRUCTURE FOR: order_user_list
#

DROP TABLE IF EXISTS `order_user_list`;

CREATE TABLE `order_user_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0==panding,\r\n1==approve,2==completed,3==reject',
  `created_at` datetime NOT NULL,
  `reservation_date` datetime NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1,
  `table_no` int(11) NOT NULL DEFAULT 0,
  `total_person` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `cancel_time` datetime NOT NULL,
  `accept_time` datetime DEFAULT NULL,
  `completed_time` datetime DEFAULT NULL,
  `g_map` varchar(255) NOT NULL,
  `is_ring` int(11) NOT NULL DEFAULT 0,
  `is_table` int(11) NOT NULL,
  `reservation_type` int(11) NOT NULL,
  `comments` text NOT NULL,
  `qr_link` varchar(255) NOT NULL,
  `delivery_charge` double NOT NULL,
  `is_payment` int(11) NOT NULL,
  `payment_by` varchar(255) NOT NULL,
  `pickup_point` int(11) NOT NULL,
  `es_time` varchar(10) NOT NULL,
  `time_slot` varchar(10) NOT NULL,
  `estimate_time` datetime DEFAULT NULL,
  `is_extras` int(11) NOT NULL DEFAULT 0,
  `delivery_area` varchar(255) DEFAULT NULL,
  `is_preparing` int(11) NOT NULL DEFAULT 0,
  `token_number` varchar(255) DEFAULT NULL,
  `dine_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL,
  `dboy_id` int(11) NOT NULL,
  `dboy_status` int(11) NOT NULL,
  `is_picked` int(11) NOT NULL,
  `discount` double NOT NULL,
  `dboy_accept_time` datetime DEFAULT NULL,
  `dboy_picked_time` datetime DEFAULT NULL,
  `dboy_completed_time` datetime DEFAULT NULL,
  `is_db_accept` int(11) NOT NULL DEFAULT 0,
  `is_db_completed` int(11) NOT NULL DEFAULT 0,
  `tax_fee` double NOT NULL,
  `sub_total` double NOT NULL,
  `pickup_time` varchar(255) DEFAULT NULL,
  `customer_rating` varchar(50) DEFAULT NULL,
  `customer_review` text DEFAULT NULL,
  `rating_time` datetime DEFAULT NULL,
  `shipping_id` int(11) NOT NULL,
  `pickup_date` date DEFAULT NULL,
  `is_coupon` int(11) NOT NULL DEFAULT 0,
  `coupon_percent` varchar(255) DEFAULT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `use_payment` int(11) NOT NULL DEFAULT 0,
  `tips` double DEFAULT NULL,
  `is_change` int(11) NOT NULL DEFAULT 0,
  `change_amount` varchar(50) NOT NULL DEFAULT '0',
  `is_restaurant_payment` int(11) NOT NULL DEFAULT 0,
  `is_db_request` int(11) NOT NULL DEFAULT 0,
  `db_completed_by` varchar(255) NOT NULL DEFAULT 'staff',
  `hotel_id` int(11) NOT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `payment_notes` text DEFAULT NULL,
  `sell_notes` text DEFAULT NULL,
  `received_amount` varchar(255) DEFAULT NULL,
  `is_pos` int(11) NOT NULL DEFAULT 0,
  `is_live_order` int(11) NOT NULL DEFAULT 1,
  `is_draft` int(11) NOT NULL DEFAULT 0,
  `is_order_merge` int(11) NOT NULL DEFAULT 0,
  `merge_status` int(11) NOT NULL DEFAULT 0,
  `is_guest_login` int(11) NOT NULL DEFAULT 0,
  `merge_ids` longtext DEFAULT NULL,
  `is_rating_approved` int(11) NOT NULL DEFAULT 0,
  `staff_id` int(10) DEFAULT NULL,
  `staff_action` varchar(10) DEFAULT NULL,
  `reject_reason` text DEFAULT NULL,
  `action_by` varchar(50) DEFAULT 'vendor',
  `is_item_tax` int(11) NOT NULL DEFAULT 0,
  `is_confirm` int(11) NOT NULL DEFAULT 1,
  `confirm_at` datetime DEFAULT NULL,
  `service_charge` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order_type` (`order_type`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: packages
#

DROP TABLE IF EXISTS `packages`;

CREATE TABLE `packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(250) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `previous_price` double NOT NULL DEFAULT 0,
  `package_type` varchar(255) NOT NULL DEFAULT 'year',
  `order_limit` int(11) NOT NULL DEFAULT 0,
  `item_limit` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `custom_fields_config` longtext DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `is_default` int(2) NOT NULL DEFAULT 0,
  `duration_period` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `packages` (`id`, `package_name`, `slug`, `price`, `previous_price`, `package_type`, `order_limit`, `item_limit`, `status`, `created_at`, `custom_fields_config`, `duration`, `is_default`, `duration_period`) VALUES (1, 'Trial Basic', 'trial-basic', '0', '0', 'fifteen', 3, 4, 1, '2021-09-07 11:27:33', NULL, NULL, 0, NULL);
INSERT INTO `packages` (`id`, `package_name`, `slug`, `price`, `previous_price`, `package_type`, `order_limit`, `item_limit`, `status`, `created_at`, `custom_fields_config`, `duration`, `is_default`, `duration_period`) VALUES (2, 'Unlimited', 'unlimited', '500', '750', 'yearly', 5000, 5000, 1, '2024-06-04 23:16:55', '{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\"}', '1', 0, 'days');


#
# TABLE STRUCTURE FOR: pages
#

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: payment_info
#

DROP TABLE IF EXISTS `payment_info`;

CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `all_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_self` int(11) NOT NULL DEFAULT 0,
  `billing_address` longtext DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `is_running` int(11) NOT NULL DEFAULT 0,
  `package_price` varchar(10) DEFAULT NULL,
  `referal_code` varchar(10) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `is_payment` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `payment_info` (`id`, `user_id`, `account_type`, `price`, `currency_code`, `status`, `txn_id`, `payment_type`, `created_at`, `all_info`, `is_self`, `billing_address`, `expire_date`, `is_running`, `package_price`, `referal_code`, `ref_id`, `is_payment`) VALUES (1, 2, 2, '500', 'BYR', 'Completed', 'OIgKw7TaYimRyv1Q', '0', '2024-06-04 23:17:06', NULL, 0, NULL, '2025-06-04 23:59:59', 1, NULL, NULL, NULL, 1);


#
# TABLE STRUCTURE FOR: payment_method_list
#

DROP TABLE IF EXISTS `payment_method_list`;

CREATE TABLE `payment_method_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `active_slug` varchar(255) DEFAULT NULL,
  `status_slug` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (1, 'Paypal', 'paypal', 'paypal_status', 'is_paypal', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (2, 'Stripe', 'stripe', 'stripe_status', 'is_stripe', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (3, 'Razorpay', 'razorpay', 'razorpay_status', 'is_razorpay', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (4, 'Stripe FPX', 'stripe_fpx', 'stripe_fpx_status', 'is_fpx', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (5, 'Paytm', 'paytm', 'paytm_status', 'is_paytm', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (6, 'Mercadopago', 'mercado', 'mercado_status', 'is_mercado', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (7, 'Flutterwave', 'flutterwave', 'flutterwave_status', 'is_flutterwave', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (8, 'Paystack', 'paystack', 'paystack_status', 'is_paystack', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (9, 'Offline', 'offline', 'offline_status', 'is_offline', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (10, 'Pagadito', 'pagadito', 'pagadito_status', 'is_pagadito', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (11, 'Moyasar', 'moyasar', 'moyasar_status', 'is_moyasar', 1);


#
# TABLE STRUCTURE FOR: permission_list
#

DROP TABLE IF EXISTS `permission_list`;

CREATE TABLE `permission_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `role` varchar(20) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (1, 'Add New Item', 'add', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (2, 'Update', 'update', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (3, 'Delete', 'delete', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (4, 'Settings Control', 'setting-control', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (5, 'Order Control', 'order-control', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (6, 'Profile Control', 'profile-control', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (7, 'Change status', 'change-status', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (8, 'Order cancel', 'order-cancel', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (9, 'POS Order', 'pos-order', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (10, 'POS Settings', 'pos-settings', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (11, 'Add New User', 'add-user', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (12, 'Change Package', 'change-package', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (13, 'Package Control', 'package-control', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (14, 'Language Control', 'language-control', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (15, 'Home Control', 'home-control', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (16, 'Reset Password', 'reset-password', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (17, 'Access User Account', 'access-user-account', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (18, 'Page Control', 'page-control', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (19, 'Settings Control', 'settings-control', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (20, 'Change user operation', 'change-user-operation', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (21, 'Delete', 'admin-delete', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (22, 'Reviews Control', 'review-control', 1, 'admin_staff');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (23, 'KDS', 'kds', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (24, 'Reports', 'reports', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (25, 'Menu', 'menu', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (26, 'Affiliate', 'affiliate', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (27, 'Coupon List', 'coupon', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (28, 'Customer List', 'customer', 1, 'user');
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`, `role`) VALUES (29, 'Page List', 'pages', 1, 'user');


#
# TABLE STRUCTURE FOR: pickup_points_area
#

DROP TABLE IF EXISTS `pickup_points_area`;

CREATE TABLE `pickup_points_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: portfolio
#

DROP TABLE IF EXISTS `portfolio`;

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `images` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `is_video` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: pricing
#

DROP TABLE IF EXISTS `pricing`;

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) DEFAULT NULL,
  `feature_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (1, 1, 1, 1, '2021-09-07 11:27:33');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (2, 1, 2, 1, '2021-09-07 11:27:33');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (3, 1, 3, 1, '2021-09-07 11:27:33');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (4, 1, 4, 1, '2021-09-07 11:27:33');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (5, 1, 5, 1, '2021-09-07 11:27:33');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (6, 1, 6, 1, '2021-09-07 11:27:33');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (7, 1, 7, 1, '2021-09-07 11:27:33');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (8, 1, 8, 1, '2021-09-07 11:27:34');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (9, 1, 9, 1, '2021-09-07 11:27:34');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (10, 2, 1, 1, '2024-06-04 23:16:55');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (11, 2, 2, 1, '2024-06-04 23:16:55');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (12, 2, 3, 1, '2024-06-04 23:16:55');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (13, 2, 4, 1, '2024-06-04 23:16:55');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (14, 2, 5, 1, '2024-06-04 23:16:55');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (15, 2, 6, 1, '2024-06-04 23:16:55');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (16, 2, 7, 1, '2024-06-04 23:16:55');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (17, 2, 8, 1, '2024-06-04 23:16:55');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (18, 2, 9, 1, '2024-06-04 23:16:55');


#
# TABLE STRUCTURE FOR: privacy
#

DROP TABLE IF EXISTS `privacy`;

CREATE TABLE `privacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: profile_home
#

DROP TABLE IF EXISTS `profile_home`;

CREATE TABLE `profile_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `whatsapp_text` text DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: question_list
#

DROP TABLE IF EXISTS `question_list`;

CREATE TABLE `question_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: reservation_date
#

DROP TABLE IF EXISTS `reservation_date`;

CREATE TABLE `reservation_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `is_24` int(11) NOT NULL DEFAULT 0,
  `is_multiple` int(2) NOT NULL DEFAULT 0,
  `time_config` longtext DEFAULT NULL,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (8, 2, 1, 0, '12:00', '1:00', '2024-06-05 19:26:02', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (9, 2, 1, 1, '12:00', '1:00', '2024-06-05 19:26:02', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (10, 2, 1, 2, '12:00', '1:00', '2024-06-05 19:26:02', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (11, 2, 1, 3, '12:00', '1:00', '2024-06-05 19:26:02', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (12, 2, 1, 4, '12:00', '1:00', '2024-06-05 19:26:02', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (13, 2, 1, 5, '12:00', '1:00', '2024-06-05 19:26:02', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (14, 2, 1, 6, '12:00', '1:00', '2024-06-05 19:26:02', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (29, 3, 2, 0, '11:00', '23:00', '2024-06-06 20:13:44', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (30, 3, 2, 1, '11:00', '23:00', '2024-06-06 20:13:44', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (31, 3, 2, 2, '11:00', '23:00', '2024-06-06 20:13:44', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (32, 3, 2, 3, '11:00', '23:00', '2024-06-06 20:13:44', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (33, 3, 2, 4, '11:00', '23:00', '2024-06-06 20:13:44', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (34, 3, 2, 5, '11:00', '0:00', '2024-06-06 20:13:44', 0, 0, '', 0);
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`, `is_24`, `is_multiple`, `time_config`, `is_default`) VALUES (35, 3, 2, 6, '11:00', '0:00', '2024-06-06 20:13:44', 0, 0, '', 0);


#
# TABLE STRUCTURE FOR: reservation_types
#

DROP TABLE IF EXISTS `reservation_types`;

CREATE TABLE `reservation_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: restaurant_city_list
#

DROP TABLE IF EXISTS `restaurant_city_list`;

CREATE TABLE `restaurant_city_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) DEFAULT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `restaurant_city_list` (`id`, `city_name`, `zip_code`, `created_at`) VALUES (1, 'Istanbul', '34000', NULL);
INSERT INTO `restaurant_city_list` (`id`, `city_name`, `zip_code`, `created_at`) VALUES (2, 'Düsseldorf', '40625', NULL);


#
# TABLE STRUCTURE FOR: restaurant_list
#

DROP TABLE IF EXISTS `restaurant_list`;

CREATE TABLE `restaurant_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `address` varchar(266) NOT NULL,
  `email` varchar(255) NOT NULL,
  `about` longtext DEFAULT NULL,
  `about_short` varchar(255) NOT NULL,
  `is_order` int(11) NOT NULL DEFAULT 1,
  `delivery_charge_in` double NOT NULL DEFAULT 0,
  `delivery_charge_out` double NOT NULL DEFAULT 0,
  `timing` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL,
  `cover_photo_thumb` varchar(255) NOT NULL,
  `is_reservation` int(11) NOT NULL DEFAULT 1,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `off_day` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `social_list` text NOT NULL,
  `created_at` datetime NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `icon` varchar(10) NOT NULL,
  `dial_code` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `is_whatsapp` int(11) NOT NULL DEFAULT 1,
  `paypal_config` varchar(255) NOT NULL,
  `stripe_config` varchar(255) NOT NULL,
  `razorpay_config` varchar(255) NOT NULL,
  `stock_status` int(11) NOT NULL,
  `is_stock_count` int(11) NOT NULL,
  `gmap_key` varchar(255) NOT NULL,
  `is_gmap` int(11) NOT NULL,
  `is_kds` int(11) NOT NULL DEFAULT 1,
  `es_time` int(11) NOT NULL,
  `time_slot` varchar(20) DEFAULT NULL,
  `tax_fee` double NOT NULL,
  `min_order` double NOT NULL,
  `discount` double NOT NULL,
  `pickup_time_slots` text DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `is_review` int(11) NOT NULL DEFAULT 1,
  `is_paypal` int(11) NOT NULL DEFAULT 1,
  `is_stripe` int(11) NOT NULL DEFAULT 1,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `paypal_status` int(11) NOT NULL DEFAULT 1,
  `stripe_status` int(11) NOT NULL DEFAULT 1,
  `razorpay_status` int(11) NOT NULL DEFAULT 1,
  `stripe_fpx_status` int(11) NOT NULL DEFAULT 0,
  `mercado_status` int(11) NOT NULL DEFAULT 0,
  `paytm_status` int(11) NOT NULL DEFAULT 0,
  `flutterwave_status` int(11) NOT NULL DEFAULT 0,
  `is_fpx` int(11) NOT NULL DEFAULT 1,
  `fpx_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_mercado` int(11) NOT NULL DEFAULT 0,
  `mercado_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 0,
  `paytm_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_flutterwave` int(11) NOT NULL DEFAULT 0,
  `flutterwave_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_customer_login` int(11) NOT NULL DEFAULT 1,
  `currency_position` int(11) NOT NULL DEFAULT 1,
  `number_formats` int(11) NOT NULL DEFAULT 1,
  `is_area_delivery` int(11) NOT NULL DEFAULT 0,
  `is_call_waiter` int(11) NOT NULL DEFAULT 1,
  `is_admin_gmap` int(11) NOT NULL DEFAULT 0,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `whatsapp_msg` text DEFAULT NULL,
  `is_language` int(11) NOT NULL DEFAULT 0,
  `is_pin` int(11) NOT NULL DEFAULT 0,
  `pin_number` varchar(255) DEFAULT NULL,
  `date_format` int(11) NOT NULL DEFAULT 8,
  `time_format` int(11) NOT NULL DEFAULT 1,
  `is_coupon` int(11) NOT NULL DEFAULT 0,
  `paystack_status` int(11) NOT NULL DEFAULT 1,
  `is_paystack` int(11) NOT NULL DEFAULT 0,
  `paystack_config` longtext DEFAULT NULL,
  `is_admin_onsignal` int(11) NOT NULL DEFAULT 0,
  `is_question` int(11) NOT NULL DEFAULT 0,
  `is_radius` int(11) NOT NULL DEFAULT 0,
  `radius_config` longtext DEFAULT NULL,
  `is_tax` int(11) NOT NULL DEFAULT 0,
  `tax_status` varchar(10) NOT NULL DEFAULT '+',
  `is_kds_pin` int(11) NOT NULL DEFAULT 0,
  `kds_pin` varchar(20) DEFAULT NULL,
  `order_view_style` int(11) NOT NULL DEFAULT 1,
  `room_number` varchar(255) DEFAULT NULL,
  `is_db_request` int(11) NOT NULL DEFAULT 0,
  `db_completed_by` varchar(255) NOT NULL DEFAULT 'staff',
  `hotel_id` int(11) NOT NULL,
  `whatsapp_enable_for` longtext DEFAULT NULL,
  `time_zone` varchar(255) NOT NULL DEFAULT 'Asia/Dhaka',
  `is_checkout_mail` int(11) NOT NULL DEFAULT 0,
  `order_merge_config` longtext DEFAULT NULL,
  `is_cart` int(11) NOT NULL DEFAULT 1,
  `pagadito_config` longtext DEFAULT NULL,
  `is_pagadito` int(11) NOT NULL DEFAULT 0,
  `pagadito_status` int(11) NOT NULL DEFAULT 0,
  `guest_config` longtext DEFAULT NULL,
  `tips_config` longtext DEFAULT NULL,
  `is_multi_lang` int(11) NOT NULL DEFAULT 1,
  `whatsapp_message_config` longtext DEFAULT NULL,
  `netseasy_config` longtext DEFAULT NULL,
  `is_netseasy` int(11) NOT NULL DEFAULT 0,
  `netseasy_status` int(11) NOT NULL DEFAULT 0,
  `is_image` int(2) NOT NULL DEFAULT 0,
  `is_login` int(2) NOT NULL DEFAULT 1,
  `is_branding` int(2) NOT NULL DEFAULT 1,
  `whatsapp_support` longtext DEFAULT NULL,
  `referal_code` varchar(10) DEFAULT NULL,
  `service_charge_config` longtext DEFAULT NULL,
  `tax_number` varchar(50) DEFAULT NULL,
  `delivery_area_style` int(2) NOT NULL DEFAULT 1,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `moyasar_config` longtext DEFAULT NULL,
  `is_moyasar` int(11) NOT NULL DEFAULT 0,
  `moyasar_status` int(11) NOT NULL DEFAULT 0,
  `is_default` int(2) NOT NULL DEFAULT 0,
  `is_offline` int(2) NOT NULL DEFAULT 0,
  `offline_status` int(2) NOT NULL DEFAULT 0,
  `offline_config` longtext DEFAULT NULL,
  `is_email_based` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `restaurant_list` (`id`, `shop_id`, `user_id`, `username`, `phone`, `name`, `short_name`, `location`, `address`, `email`, `about`, `about_short`, `is_order`, `delivery_charge_in`, `delivery_charge_out`, `timing`, `thumb`, `images`, `cover_photo`, `cover_photo_thumb`, `is_reservation`, `start_time`, `end_time`, `off_day`, `status`, `social_list`, `created_at`, `currency_code`, `icon`, `dial_code`, `country_id`, `is_whatsapp`, `paypal_config`, `stripe_config`, `razorpay_config`, `stock_status`, `is_stock_count`, `gmap_key`, `is_gmap`, `is_kds`, `es_time`, `time_slot`, `tax_fee`, `min_order`, `discount`, `pickup_time_slots`, `slogan`, `is_review`, `is_paypal`, `is_stripe`, `is_razorpay`, `paypal_status`, `stripe_status`, `razorpay_status`, `stripe_fpx_status`, `mercado_status`, `paytm_status`, `flutterwave_status`, `is_fpx`, `fpx_config`, `is_mercado`, `mercado_config`, `is_paytm`, `paytm_config`, `is_flutterwave`, `flutterwave_config`, `is_customer_login`, `currency_position`, `number_formats`, `is_area_delivery`, `is_call_waiter`, `is_admin_gmap`, `whatsapp_number`, `whatsapp_msg`, `is_language`, `is_pin`, `pin_number`, `date_format`, `time_format`, `is_coupon`, `paystack_status`, `is_paystack`, `paystack_config`, `is_admin_onsignal`, `is_question`, `is_radius`, `radius_config`, `is_tax`, `tax_status`, `is_kds_pin`, `kds_pin`, `order_view_style`, `room_number`, `is_db_request`, `db_completed_by`, `hotel_id`, `whatsapp_enable_for`, `time_zone`, `is_checkout_mail`, `order_merge_config`, `is_cart`, `pagadito_config`, `is_pagadito`, `pagadito_status`, `guest_config`, `tips_config`, `is_multi_lang`, `whatsapp_message_config`, `netseasy_config`, `is_netseasy`, `netseasy_status`, `is_image`, `is_login`, `is_branding`, `whatsapp_support`, `referal_code`, `service_charge_config`, `tax_number`, `delivery_area_style`, `city_id`, `moyasar_config`, `is_moyasar`, `moyasar_status`, `is_default`, `is_offline`, `offline_status`, `offline_config`, `is_email_based`) VALUES (1, '2FxpqQu', 2, 'chefzyad', '5444401097', 'Chef Zyad', '', 'https://maps.app.goo.gl/oskN2pzcFjfx58SX6', 'Şehit Muhtar, Atif Yilmaz Sok. No:4, 34435 Beyoğlu/İstanbul', 'chefzyad.tr@gmail.com', '', 'مرحباً بكم في مطعم الشيف زياد', 1, '0', '0', '', 'uploads/thumb/f76c3b038bb12f4d101ae7dfed536429.png', '', 'uploads/site_banners/108c7021b17db64a0d5f8773199e3760.png', 'uploads/site_banners/108c7021b17db64a0d5f8773199e3760.png', 1, '00:00:00', '00:00:00', '', 1, '{\"whatsapp\":\"5444401097\",\"facebook\":\"https:\\/\\/www.facebook.com\\/chefzyad.1\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/chefzyad.tr\\/\",\"twitter\":\"\",\"youtube\":\"\",\"website\":\"\"}', '2024-06-05 19:19:32', 'TRY', '', '+90', 172, 1, '', '', '', 0, 0, '', 0, 1, 0, 'minutes', '0', '200', '0', NULL, 'بالنكهة الفريدة والخبرة العريقة', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 1, 0, 1, 1, 0, '5444401097', '\"Order From {CUSTOMER_NAME},\\r\\n\\r\\nOrder ID: {ORDER_ID}\\r\\n\\r\\n{ITEM_LIST}\\r\\n\\r\\n\\r\\n{SHOP_NAME}\\r\\n{SHOP_ADDRESS}\\r\\n---------------\\r\\n{TRACK_URL}\"', 1, 0, '', 8, 1, 0, 1, 0, NULL, 0, 0, 0, NULL, 0, '+', 0, '', 1, NULL, 0, 'staff', 0, '{\"cash-on-delivery\":\"1\",\"booking\":\"1\",\"pay-cash\":\"1\"}', 'Asia/Dhaka', 0, '{\"is_order_merge\":0,\"is_system\":\"1\"}', 1, NULL, 0, 0, '{\"is_guest_login\":1,\"is_dine_in\":1,\"is_pay_cash\":0}', NULL, 1, NULL, NULL, 0, 0, 0, 1, 1, '{\"whatsapp_number\":\"5444401097\",\"dial_code\":\"+90\",\"welcome_message\":\"<p>\\u0645\\u0631\\u062d\\u0628\\u0627 \\u0628\\u0643\\u0645 \\u0641\\u064a \\u0645\\u0637\\u0639\\u0645 \\u0627\\u0644\\u0634\\u064a\\u0641 \\u0632\\u064a\\u0627\\u062f \",\"status\":\"1\"}', NULL, NULL, '', 1, 1, NULL, 0, 0, 0, 0, 0, NULL, 0);
INSERT INTO `restaurant_list` (`id`, `shop_id`, `user_id`, `username`, `phone`, `name`, `short_name`, `location`, `address`, `email`, `about`, `about_short`, `is_order`, `delivery_charge_in`, `delivery_charge_out`, `timing`, `thumb`, `images`, `cover_photo`, `cover_photo_thumb`, `is_reservation`, `start_time`, `end_time`, `off_day`, `status`, `social_list`, `created_at`, `currency_code`, `icon`, `dial_code`, `country_id`, `is_whatsapp`, `paypal_config`, `stripe_config`, `razorpay_config`, `stock_status`, `is_stock_count`, `gmap_key`, `is_gmap`, `is_kds`, `es_time`, `time_slot`, `tax_fee`, `min_order`, `discount`, `pickup_time_slots`, `slogan`, `is_review`, `is_paypal`, `is_stripe`, `is_razorpay`, `paypal_status`, `stripe_status`, `razorpay_status`, `stripe_fpx_status`, `mercado_status`, `paytm_status`, `flutterwave_status`, `is_fpx`, `fpx_config`, `is_mercado`, `mercado_config`, `is_paytm`, `paytm_config`, `is_flutterwave`, `flutterwave_config`, `is_customer_login`, `currency_position`, `number_formats`, `is_area_delivery`, `is_call_waiter`, `is_admin_gmap`, `whatsapp_number`, `whatsapp_msg`, `is_language`, `is_pin`, `pin_number`, `date_format`, `time_format`, `is_coupon`, `paystack_status`, `is_paystack`, `paystack_config`, `is_admin_onsignal`, `is_question`, `is_radius`, `radius_config`, `is_tax`, `tax_status`, `is_kds_pin`, `kds_pin`, `order_view_style`, `room_number`, `is_db_request`, `db_completed_by`, `hotel_id`, `whatsapp_enable_for`, `time_zone`, `is_checkout_mail`, `order_merge_config`, `is_cart`, `pagadito_config`, `is_pagadito`, `pagadito_status`, `guest_config`, `tips_config`, `is_multi_lang`, `whatsapp_message_config`, `netseasy_config`, `is_netseasy`, `netseasy_status`, `is_image`, `is_login`, `is_branding`, `whatsapp_support`, `referal_code`, `service_charge_config`, `tax_number`, `delivery_area_style`, `city_id`, `moyasar_config`, `is_moyasar`, `moyasar_status`, `is_default`, `is_offline`, `offline_status`, `offline_config`, `is_email_based`) VALUES (2, '3GTJspz', 3, 'angora', '17655560957', 'Angora Düsseldorf', '', 'https://maps.app.goo.gl/5k5hq5CZFfxqirFA8', 'Heyestraße 133 -40625 Düsseldorf', 'info@angora.live', '', '.', 1, '0', '0', '', 'uploads/thumb/f63a53c778987d48770d6a26c66859b7.png', '', 'uploads/site_banners/d367c375a66c0250aa2f3522930ecd0c.png', 'uploads/site_banners/d367c375a66c0250aa2f3522930ecd0c.png', 1, '00:00:00', '00:00:00', '', 1, '{\"whatsapp\":\"17655560957\",\"facebook\":\"https:\\/\\/www.facebook.com\\/Angora.Dusseldorf\",\"instagram\":\"https:\\/\\/www.instagram.com\\/angora_duesseldorf\\/\",\"twitter\":\"\",\"youtube\":\"\",\"website\":\"\"}', '2024-06-09 14:11:35', 'EUR', '€', '+49', 41, 1, '', '', '', 0, 0, '', 0, 1, 0, 'minutes', '0', '12.5', '0', NULL, 'JETZT TELEFONISCH BESTELLEN', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 1, 1, 0, 1, 0, '17655560957', '\"Bestellung Von {CUSTOMER_NAME},\\r\\n\\r\\nBestellnummer: {ORDER_ID}\\r\\n\\r\\n{ITEM_LIST}\\r\\n\\r\\n\\r\\n{SHOP_NAME}\\r\\n{SHOP_ADDRESS}\\r\\n---------------\\r\\n{TRACK_URL}\"', 1, 0, '', 8, 1, 0, 1, 0, NULL, 0, 0, 1, '{\"latitude\":\"51.224117\",\"longitude\":\"6.864127\",\"radius\":\"5\",\"msg\":\"hi\"}', 0, '+', 0, '', 1, NULL, 0, 'staff', 0, '{\"cash-on-delivery\":\"1\",\"booking\":\"1\",\"pickup\":\"1\",\"dine-in\":\"1\",\"pay-cash\":\"1\"}', 'Asia/Dhaka', 0, '{\"is_order_merge\":0,\"is_system\":\"1\"}', 1, NULL, 0, 0, '{\"is_guest_login\":1,\"is_dine_in\":1,\"is_pay_cash\":0}', NULL, 1, NULL, NULL, 0, 0, 0, 1, 1, '{\"whatsapp_number\":\"17655560957\",\"dial_code\":\"+49\",\"welcome_message\":\"<p>Willkommen Bei Angora D\\u00fcsseldorf<br>\",\"status\":\"1\"}', NULL, NULL, '', 1, 2, NULL, 0, 0, 0, 0, 0, NULL, 0);


#
# TABLE STRUCTURE FOR: section_banners
#

DROP TABLE IF EXISTS `section_banners`;

CREATE TABLE `section_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` text DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (1, 'home', 'Build Your Brand With', 'We are team of talanted designers making websites with Bootstrap', 'uploads/site_banners/17352a0601cfc7d6903ef8ed691a257c.jpg', 1, '2021-02-20 10:35:54');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (2, 'features', 'AMAZING FEATURES PROJECT', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', 'uploads/big/54140304836f646b3a46f5e0ebc9a900.png', 1, '2020-10-01 15:25:47');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (3, 'faq', 'FAQ', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', 'uploads/site_banners/db6862f2f5907b6d9a5c7b4b0efe3404.png', 1, '2021-02-25 16:21:58');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (4, 'how_it_works', 'HOW IT WORKS', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', NULL, 1, '2020-10-01 15:34:33');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (5, 'teams', 'MEET WITH OUR TEAMS', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', NULL, 1, '2020-10-01 15:35:01');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (6, 'services', 'OUR SERVICES', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', NULL, 1, '2020-10-01 15:40:10');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (7, 'reviews', 'Reviews', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, eum vel recusandae, voluptas dolore dicta! Lorem ipsum dolor sit amet consectetur', NULL, 1, '2020-10-18 10:46:53');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (8, 'pricing', 'Select a package to continue', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', NULL, 0, '2020-10-16 16:29:29');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (9, 'contacts', 'Contacts', 'Need any help. Please contact with us', NULL, 1, '2021-02-20 17:27:59');


#
# TABLE STRUCTURE FOR: services
#

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `details` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (1, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 1, '2020-10-12 11:35:47');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (3, 8, 'Click to Call', '<i class=\"fas fa-home\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 1, '2020-10-13 16:23:00');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (4, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.Your customers will reach you by just tapping on mobile number on vCard. Your customers will reach you by just tapping on mobile number on vCard.', 1, '2020-10-12 11:35:47');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (5, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 1, '2020-10-12 11:35:47');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (6, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 0, '2020-10-12 11:35:47');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (7, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 0, '2020-10-12 11:35:47');


#
# TABLE STRUCTURE FOR: settings
#

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(250) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `analytics` text DEFAULT NULL,
  `smtp_mail` varchar(255) DEFAULT NULL,
  `email_type` int(11) NOT NULL DEFAULT 1,
  `smtp_config` varchar(255) DEFAULT NULL,
  `subjects` varchar(255) DEFAULT NULL,
  `is_paypal` int(11) NOT NULL DEFAULT 0,
  `paypal_config` varchar(255) DEFAULT NULL,
  `is_stripe` int(11) NOT NULL DEFAULT 0,
  `stripe_config` varchar(255) DEFAULT NULL,
  `is_recaptcha` int(11) NOT NULL DEFAULT 0,
  `recaptcha_config` varchar(255) DEFAULT NULL,
  `social_sites` longtext DEFAULT NULL,
  `pricing_layout` int(11) NOT NULL DEFAULT 1,
  `time_zone` varchar(255) NOT NULL DEFAULT 'Asia/Dhaka',
  `is_registration` tinyint(11) NOT NULL DEFAULT 1,
  `auto_approval` int(11) NOT NULL DEFAULT 1,
  `is_email_verification` int(11) NOT NULL DEFAULT 1,
  `new_user_mail` int(11) NOT NULL DEFAULT 1,
  `is_email_verify_free` int(11) NOT NULL DEFAULT 0,
  `user_invoice` int(11) NOT NULL DEFAULT 1,
  `language` varchar(255) NOT NULL DEFAULT 'english',
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `user_count` int(11) NOT NULL DEFAULT 0,
  `home_banner` varchar(255) DEFAULT NULL,
  `home_banner_thumb` varchar(255) DEFAULT NULL,
  `site_qr_link` varchar(255) DEFAULT NULL,
  `site_qr_logo` varchar(255) DEFAULT NULL,
  `active_code` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `razorpay_key` varchar(255) DEFAULT NULL,
  `razorpay_key_id` varchar(255) DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 26,
  `is_ads` int(11) NOT NULL DEFAULT 0,
  `is_rating` int(11) NOT NULL DEFAULT 1,
  `site_info` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `supported_until` datetime DEFAULT NULL,
  `is_user` int(11) NOT NULL DEFAULT 1,
  `is_order_video` int(11) NOT NULL DEFAULT 1,
  `site_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `seo_settings` text DEFAULT NULL,
  `active_key` varchar(155) DEFAULT NULL,
  `is_signup` int(11) NOT NULL DEFAULT 1,
  `is_auto_verified` int(11) NOT NULL DEFAULT 0,
  `twillo_sms_settings` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 15,
  `is_update` int(11) NOT NULL DEFAULT 0,
  `license_name` varchar(255) DEFAULT NULL,
  `is_lang_list` int(11) NOT NULL DEFAULT 1,
  `purchase_date` datetime DEFAULT NULL,
  `license_code` varchar(255) DEFAULT NULL,
  `is_item_search` int(11) NOT NULL DEFAULT 1,
  `environment` varchar(255) NOT NULL DEFAULT 'live',
  `is_landing_page` int(11) NOT NULL DEFAULT 0,
  `landing_page_url` varchar(255) DEFAULT NULL,
  `pixel_id` varchar(255) DEFAULT NULL,
  `paypal_status` int(11) NOT NULL DEFAULT 1,
  `stripe_status` int(11) NOT NULL DEFAULT 1,
  `razorpay_status` int(11) NOT NULL DEFAULT 1,
  `stripe_fpx_status` int(11) NOT NULL DEFAULT 0,
  `mercado_status` int(11) NOT NULL DEFAULT 0,
  `paytm_status` int(11) NOT NULL DEFAULT 0,
  `flutterwave_status` int(11) NOT NULL DEFAULT 0,
  `is_fpx` int(11) NOT NULL DEFAULT 1,
  `fpx_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_mercado` int(11) NOT NULL DEFAULT 0,
  `mercado_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 0,
  `paytm_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_flutterwave` int(11) NOT NULL DEFAULT 0,
  `flutterwave_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `gmap_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_pwa` int(11) NOT NULL DEFAULT 0,
  `pwa_config` text DEFAULT NULL,
  `system_fonts` varchar(255) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `paystack_status` int(11) NOT NULL DEFAULT 1,
  `is_paystack` int(11) NOT NULL DEFAULT 0,
  `paystack_config` longtext DEFAULT NULL,
  `nearby_length` varchar(20) DEFAULT '5',
  `extras` longtext DEFAULT NULL,
  `notifications` longtext DEFAULT NULL,
  `restaurant_demo` varchar(50) DEFAULT NULL,
  `sendgrid_api_key` longtext DEFAULT NULL,
  `currency_position` int(11) NOT NULL DEFAULT 1,
  `number_formats` int(11) NOT NULL DEFAULT 1,
  `offline_status` int(11) NOT NULL DEFAULT 1,
  `is_offline` int(11) NOT NULL DEFAULT 1,
  `offline_config` longtext DEFAULT NULL,
  `site_color` varchar(50) NOT NULL DEFAULT '29c7ac',
  `site_theme` int(11) NOT NULL DEFAULT 1,
  `pagadito_config` longtext DEFAULT NULL,
  `is_pagadito` int(11) NOT NULL DEFAULT 0,
  `pagadito_status` int(11) NOT NULL DEFAULT 0,
  `custom_domain_comments` longtext DEFAULT NULL,
  `is_custom_domain` int(11) NOT NULL DEFAULT 0,
  `pusher_config` longtext DEFAULT NULL,
  `email_template_config` longtext DEFAULT NULL,
  `is_dynamic_mail` int(11) NOT NULL DEFAULT 1,
  `netseasy_config` longtext DEFAULT NULL,
  `is_netseasy` int(11) NOT NULL DEFAULT 0,
  `netseasy_status` int(11) NOT NULL DEFAULT 0,
  `invoice_config` longtext DEFAULT NULL,
  `language_type` varchar(10) NOT NULL DEFAULT 'system',
  `glanguage` text DEFAULT NULL,
  `moyasar_config` longtext DEFAULT NULL,
  `is_moyasar` int(11) NOT NULL DEFAULT 0,
  `moyasar_status` int(11) NOT NULL DEFAULT 0,
  `tax_system` varchar(20) NOT NULL DEFAULT 'percentage',
  `is_default` int(2) NOT NULL DEFAULT 0,
  `is_city_delivery` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `settings` (`id`, `site_name`, `copyright`, `description`, `analytics`, `smtp_mail`, `email_type`, `smtp_config`, `subjects`, `is_paypal`, `paypal_config`, `is_stripe`, `stripe_config`, `is_recaptcha`, `recaptcha_config`, `social_sites`, `pricing_layout`, `time_zone`, `is_registration`, `auto_approval`, `is_email_verification`, `new_user_mail`, `is_email_verify_free`, `user_invoice`, `language`, `logo`, `favicon`, `user_count`, `home_banner`, `home_banner_thumb`, `site_qr_link`, `site_qr_logo`, `active_code`, `site_id`, `version`, `user_id`, `razorpay_key`, `razorpay_key_id`, `is_razorpay`, `currency`, `is_ads`, `is_rating`, `site_info`, `purchase_code`, `supported_until`, `is_user`, `is_order_video`, `site_url`, `created_at`, `updated_at`, `seo_settings`, `active_key`, `is_signup`, `is_auto_verified`, `twillo_sms_settings`, `country_id`, `is_update`, `license_name`, `is_lang_list`, `purchase_date`, `license_code`, `is_item_search`, `environment`, `is_landing_page`, `landing_page_url`, `pixel_id`, `paypal_status`, `stripe_status`, `razorpay_status`, `stripe_fpx_status`, `mercado_status`, `paytm_status`, `flutterwave_status`, `is_fpx`, `fpx_config`, `is_mercado`, `mercado_config`, `is_paytm`, `paytm_config`, `is_flutterwave`, `flutterwave_config`, `gmap_config`, `is_pwa`, `pwa_config`, `system_fonts`, `custom_css`, `long_description`, `paystack_status`, `is_paystack`, `paystack_config`, `nearby_length`, `extras`, `notifications`, `restaurant_demo`, `sendgrid_api_key`, `currency_position`, `number_formats`, `offline_status`, `is_offline`, `offline_config`, `site_color`, `site_theme`, `pagadito_config`, `is_pagadito`, `pagadito_status`, `custom_domain_comments`, `is_custom_domain`, `pusher_config`, `email_template_config`, `is_dynamic_mail`, `netseasy_config`, `is_netseasy`, `netseasy_status`, `invoice_config`, `language_type`, `glanguage`, `moyasar_config`, `is_moyasar`, `moyasar_status`, `tax_system`, `is_default`, `is_city_delivery`) VALUES (1, 'Orient Food', 'Orient Group', '', '', NULL, 1, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 1, 'Europe/Istanbul', 1, 1, 1, 1, 1, 1, 'english', NULL, NULL, 0, NULL, NULL, 'uploads/qr_image/site_qr_2698137045.png', NULL, 'qmenu-lLix-IvRV-uqpB', 3301, '3.2.1', NULL, NULL, NULL, 0, 178, 0, 1, 'ac_qmenu', 'b22d13c1-8359-452d-9c87-360e5bcd854d', '2024-11-27 04:07:10', 1, 1, 'orientfood.menu/', '2024-06-06 17:53:42', NULL, NULL, '70999fc0c182f3f974c0d0818ea2532250384c6c', 1, 1, NULL, 172, 0, 'Regular License', 1, '2024-05-28 13:07:10', '6fa1b959a5580d843a4ea03422873009', 1, 'live', 0, NULL, '', 1, 1, 1, 0, 0, 0, 0, 1, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, '', 1, 0, NULL, '5', NULL, NULL, NULL, NULL, 1, 0, 1, 1, NULL, 'fa6823', 1, NULL, 0, 0, NULL, 0, NULL, '{\n					\"recovery_mail\": {\n						\"subject\": \"Recovery Mail\",\n						\"message\": \"<p>A Recovery mail from {SITE_NAME},<p>Hello {USERNAME}, Use this <b>{PASSWORD} password to login.<p>Please don\'t share this password anyone.<p>Thank you!<p><br><p>\"\n					},\n					\"contact_mail\": {\n						\"subject\": \"Contact Mail\",\n						\"message\": \"<p>Contact Mail form {NAME} on {SITE_NAME},<p>Name: {NAME}<p>Email: {EMAIL}<p>Message: {MESSAGE}\"\n					},\n					\"resend_verify_mail\": {\n						\"subject\": \"Resend Verification Mail\",\n						\"message\": \"<p>Account Verification Mail from {SITE_NAME},<p>Hello {USERNAME}<p>Click\\u00a0 verify link to verify your account {LINK}<p><br>\"\n					},\n					\"email_verification_mail\": {\n						\"subject\": \"Account Verification Mail\",\n						\"message\": \"<p>Account Verification Mail From {SITE_NAME},<p>Congratulations {USERNAME},<p>Name: {USERNAME}<p>Email: {EMAIL}<p>Package: {PACKAGE_NAME}<p>Password: {PASSWORD}<p>Click \\/ Copy the verification link {VERIFY_LINK}<p>Thank you!\"\n					},\n					\"account_create_invoice\": {\n						\"subject\": \"Registration Invoice\",\n						\"message\": \"<p>Subscription Invoice From {SITE_NAME},<p><br><table class=\\\"table table-bordered\\\"><tr><td>#<td>Description<br><td>Package name<br><td>Qty<br><td>Price<br><td>Total<br><tr><td>1<td><p>Thank you {Username}<p>for registration on {SITE_NAME}<p>Please pay to continue your account live<br><td><p>{PACKAGE_NAME}<br><td>1<td>{PRICE}<td>{PRICE} USD<br><tr><td><br><td><br><td><br><td><br><td><br><td>{PRICE} \\/=<p><br>\"\n					},\n					\"new_user_mail\": {\n						\"subject\": \"New subscriber mail\",\n						\"message\": \"<p>New Subscriber on {SITE_NAME}.<br>A New subscriber found\\u00a0<p>Username: {USERNAME},<p>Email: {EMAIL}<p>Package Name: {PACKAGE_NAME}<p><br><p>Thank you!\"\n					},\n					\"offline_payment_request_mail\": {\n						\"subject\": \"Offline Payment Request\",\n						\"message\": \"<p>Payment Request on {SITE_NAME}<p><em><b>An Offline payment request from <b> {USERNAME}<p>Name: {USERNAME}\\u00a0 \\u00a0 \\u00a0 Email:\\u00a0 \\u00a0{EMAIL}\\u00a0 \\u00a0 Package Name: {PACKAGE_NAME}<p>Price {PRICE} USD\\u00a0 \\u00a0Txn ID:\\u00a0 {TXNID}<p><br><p>Thank you!<p><br>\"\n					},\n					\"send_payment_verified_email\": {\n						\"subject\": \"Payment Invoice\",\n						\"message\": \"<p>Payment Invoice {SITE_NAME},<p>Name: {USERNAME}\\u00a0<p>Email: {EMAIL}\\u00a0 <p>Payment method: {PAYMENT_METHOD}<p>Payment Date: {PAYMENT_DATE}\\u00a0 <p>Txn ID: {TXNID}<p><br><table class=\\\"table table-bordered\\\" style=\\\"width: 468.656px;\\\"><tr><td style=\\\"line-height: 1.42857;\\\">#<td style=\\\"line-height: 1.42857;\\\">Description<br><td style=\\\"line-height: 1.42857;\\\">Package name<br><td style=\\\"line-height: 1.42857;\\\">Qty<br><td style=\\\"line-height: 1.42857;\\\">Price<br><td style=\\\"line-height: 1.42857;\\\">Total<br><tr><td style=\\\"line-height: 1.42857;\\\">1<td style=\\\"line-height: 1.42857;\\\"><p>Your payment has been completed successfully.<p>Your account will be expired on {EXPIRE_DATE}<td style=\\\"line-height: 1.42857;\\\"><p>{PACKAGE_NAME}<br><td style=\\\"line-height: 1.42857;\\\">1<td style=\\\"line-height: 1.42857;\\\">{PRICE}<td style=\\\"line-height: 1.42857;\\\">{PRICE} USD<br><tr><td style=\\\"line-height: 1.42857;\\\"><br><td style=\\\"line-height: 1.42857;\\\"><br><td style=\\\"line-height: 1.42857;\\\"><br><td style=\\\"line-height: 1.42857;\\\"><br><td style=\\\"line-height: 1.42857;\\\"><br><td style=\\\"line-height: 1.42857;\\\">{PRICE} \\/=<p><br>\"\n					},\n					\"expire_reminder_mail\": {\n						\"subject\": \"Account Expire reminder mail\",\n						\"message\": \"<p>An\\u00a0Account Expire reminder from\\u00a0 {SITE_NAME},<p>Name: {USERNAME}\\u00a0 \\u00a0 \\u00a0Email: {EMAIL}<p>Expire date: {EXPIRE_DATE}\\u00a0 Day left: {REMAINING_DAYS}\"\n					},\n					\"account_expire_mail\": {\n						\"subject\": \"Account Expired Mail\",\n						\"message\": \"<p>An Account Expire reminder from {SITE_NAME},<p>Hello {USERNAME},<p>Your account already expired on {EXPIRE_DATE}<p>Email: {EMAIL}\"\n					}\n				}', 1, NULL, 0, 0, '{\"tax_percent\":\"0\",\"tax_number\":\"\",\"company_details\":\"\"}', 'system', '{\"glanguage\":\"null\",\"default_language\":\"af\"}', NULL, 0, 0, 'percentage', 0, 0);


#
# TABLE STRUCTURE FOR: shop_location_list
#

DROP TABLE IF EXISTS `shop_location_list`;

CREATE TABLE `shop_location_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: site_features
#

DROP TABLE IF EXISTS `site_features`;

CREATE TABLE `site_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (1, 1, 'Choose a name of your  Restaurant', '', '', '<i class=\"icofont-newspaper\"></i>', 'Choose you name and create your restaurant easily', 'left', 1, '2021-02-25 15:54:09');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (2, 1, 'Create Menu', '', '', '<i class=\"icofont-list\"></i>', 'Add to cart your item and make a menu', 'right', 1, '2021-02-25 16:00:05');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (3, 1, 'Make an order', '', '', '<i class=\"icofont-fast-delivery\"></i>', 'After select all items make an order select order type like  booking or home delivery ', 'right', 1, '2021-02-25 16:03:50');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (4, 1, 'Mail verification', '', '', '<i class=\"icofont-envelope-open\"></i>', 'After create you account , verify you account by mail verification', 'left', 1, '2021-02-25 15:55:40');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (6, 1, 'Make  Payment', NULL, NULL, '<i class=\"icofont-pay\"></i>', 'Make a payment if your not a free user. Make payment using Stripe,Paypal,Razorpay', 'left', 1, '2021-02-25 15:56:58');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (7, 1, 'QR code', NULL, NULL, '<i class=\"icofont-qr-code\"></i>', 'After create account dynamically create your account QR code. Share your account via QR code', 'left', 1, '2021-02-25 15:58:46');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (8, 1, 'Ordering via Whatsapp', NULL, NULL, '<i class=\"icofont-wechat\"></i>', 'After complete order confirm order via WhatsApp,  continue chat & finalize order', 'right', 1, '2021-02-25 16:10:34');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (9, 1, 'Track your order', NULL, NULL, '<i class=\"icofont-search-restaurant\"></i>', 'Track your order using your phone & Order id or QR code', 'right', 1, '2021-02-25 16:12:15');


#
# TABLE STRUCTURE FOR: site_services
#

DROP TABLE IF EXISTS `site_services`;

CREATE TABLE `site_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `site_services` (`id`, `title`, `details`, `images`, `thumb`, `status`, `created_at`) VALUES (1, 'Create Your Restaurant Profile', '<p>Make you restaurant profile with unique design, Dynamic color, Social sites.</p>', 'uploads/big/e003eb0309f4315d253ec4ffb31b2ca1.png', 'uploads/thumb/e003eb0309f4315d253ec4ffb31b2ca1.png', 1, '2021-02-25 16:34:19');
INSERT INTO `site_services` (`id`, `title`, `details`, `images`, `thumb`, `status`, `created_at`) VALUES (2, 'Check Order and orders statistics', '<p>Check your order, reservation , revenue and all statistics with strong dashboard  </p>', 'uploads/big/cb082005e089ae453eae2cc6f41f2acd.png', 'uploads/thumb/cb082005e089ae453eae2cc6f41f2acd.png', 1, '2021-02-25 16:36:28');


#
# TABLE STRUCTURE FOR: site_team
#

DROP TABLE IF EXISTS `site_team`;

CREATE TABLE `site_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `site_team` (`id`, `user_id`, `name`, `designation`, `images`, `thumb`, `status`, `created_at`) VALUES (1, 1, 'Mr. Alex', 'CEO', 'uploads/big/c31f02324e2cc2ded3a1286d48be5030.jpg', 'uploads/thumb/c31f02324e2cc2ded3a1286d48be5030.jpg', 1, '2021-02-25 16:30:25');
INSERT INTO `site_team` (`id`, `user_id`, `name`, `designation`, `images`, `thumb`, `status`, `created_at`) VALUES (2, 1, 'Mr. Smith', 'Client', 'uploads/big/38ceda12ce3cc859232f10e6c563e8fe.jpg', 'uploads/thumb/38ceda12ce3cc859232f10e6c563e8fe.jpg', 1, '2021-02-25 16:29:57');
INSERT INTO `site_team` (`id`, `user_id`, `name`, `designation`, `images`, `thumb`, `status`, `created_at`) VALUES (3, 1, 'Miss Arenda', 'Client', 'uploads/big/aa01e93ee641057da403846721c66d8c.jpg', 'uploads/thumb/aa01e93ee641057da403846721c66d8c.jpg', 1, '2021-02-22 10:43:48');
INSERT INTO `site_team` (`id`, `user_id`, `name`, `designation`, `images`, `thumb`, `status`, `created_at`) VALUES (6, 1, 'Mr. Beak', 'Manager', 'uploads/big/ffa2b9a5422b2f745d0c3febd07027e0.jpg', 'uploads/thumb/ffa2b9a5422b2f745d0c3febd07027e0.jpg', 1, '2021-02-25 16:31:00');


#
# TABLE STRUCTURE FOR: social_sites
#

DROP TABLE IF EXISTS `social_sites`;

CREATE TABLE `social_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `bg_color` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (1, 8, 'facebook', '<i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>', '', 'https://www.facebook.com/nazmul.nm/', NULL, NULL, 1, '2020-10-12 10:59:05');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (2, 8, 'twitter', '<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>', 'others', 'https://www.twitter.com/nazmul.nm/', NULL, NULL, 1, '2020-11-01 17:55:16');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (3, 8, 'instagram', '<i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>', '', 'https://www.twitter.com/nazmul.nm/', NULL, NULL, 1, '2020-11-01 17:55:30');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (4, 8, 'github', '<i class=\"fa fa-github\" aria-hidden=\"true\"></i>', '', 'https://www.github.com/nazmul.nm/', NULL, NULL, 1, '2020-11-01 17:55:40');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (5, 8, 'youtube', '<i class=\"fa fa-youtube\" aria-hidden=\"true\"></i>', '', '', NULL, NULL, 1, '2019-12-03 16:32:02');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (6, 8, 'whatsapp', '<i class=\"fa fa-whatsapp\" aria-hidden=\"true\"></i>', 'whatsapp', '01745419093', NULL, NULL, 1, '2020-11-01 17:55:53');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (7, 8, 'behance', '<i class=\"fa fa-behance\" aria-hidden=\"true\"></i>', '', '', NULL, NULL, 1, '2019-12-03 16:33:19');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (8, 8, 'dribbble', '<i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i>', '', '', NULL, NULL, 1, '2019-12-03 16:34:32');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (10, 8, 'pinterest', '<i class=\"fab fa-pinterest-p\"></i>', 'others', '', NULL, NULL, 1, '2020-10-12 10:55:02');


#
# TABLE STRUCTURE FOR: staff_activities
#

DROP TABLE IF EXISTS `staff_activities`;

CREATE TABLE `staff_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `active_date` datetime NOT NULL,
  `is_renewal` int(11) NOT NULL DEFAULT 0,
  `old_package_id` int(11) NOT NULL DEFAULT 0,
  `renew_date` datetime NOT NULL,
  `is_change_package` int(11) NOT NULL DEFAULT 0,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `price` double DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: staff_list
#

DROP TABLE IF EXISTS `staff_list`;

CREATE TABLE `staff_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'staff',
  `country_id` varchar(5) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `gmap_link` text DEFAULT NULL,
  `question` longtext DEFAULT NULL,
  `city_id` int(5) NOT NULL DEFAULT 0,
  `shop_id` int(5) NOT NULL DEFAULT 0,
  `is_default` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `staff_list` (`id`, `user_id`, `uid`, `name`, `email`, `phone`, `password`, `status`, `last_login`, `created_at`, `permission`, `thumb`, `images`, `role`, `country_id`, `address`, `gmap_link`, `question`, `city_id`, `shop_id`, `is_default`) VALUES (1, 1, '20246534', 'rima', 'rimayaserji7@gmail.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 1, NULL, '2024-06-10 17:38:04', '[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\"]', NULL, NULL, 'admin_staff', NULL, NULL, NULL, NULL, 0, 0, 0);


#
# TABLE STRUCTURE FOR: staff_order_activity_logs
#

DROP TABLE IF EXISTS `staff_order_activity_logs`;

CREATE TABLE `staff_order_activity_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `staff_role` varchar(50) NOT NULL DEFAULT 'staff',
  `action_type` varchar(50) DEFAULT NULL,
  `is_pos` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `staff_order_activity_logs_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_user_list` (`id`),
  CONSTRAINT `staff_order_activity_logs_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: sub_category_list
#

DROP TABLE IF EXISTS `sub_category_list`;

CREATE TABLE `sub_category_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_category_name` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `orders` int(11) NOT NULL,
  `language` varchar(50) NOT NULL DEFAULT 'english',
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_pos_only` int(11) NOT NULL DEFAULT 0,
  `images` varchar(200) DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: subscriber_list
#

DROP TABLE IF EXISTS `subscriber_list`;

CREATE TABLE `subscriber_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: table_areas
#

DROP TABLE IF EXISTS `table_areas`;

CREATE TABLE `table_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: table_list
#

DROP TABLE IF EXISTS `table_list`;

CREATE TABLE `table_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: team
#

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: terms
#

DROP TABLE IF EXISTS `terms`;

CREATE TABLE `terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: user_settings
#

DROP TABLE IF EXISTS `user_settings`;

CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `preloader` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `is_download` int(11) NOT NULL DEFAULT 0,
  `smtp_mail` varchar(255) DEFAULT NULL,
  `smtp_config` text DEFAULT NULL,
  `email_type` int(11) NOT NULL DEFAULT 1,
  `is_facebook` int(11) NOT NULL DEFAULT 1,
  `seo_settings` text DEFAULT NULL,
  `twillo_sms_settings` text DEFAULT NULL,
  `pixel_id` varchar(255) DEFAULT NULL,
  `analytics_id` varchar(255) DEFAULT NULL,
  `icon_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `qr_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `pwa_config` text DEFAULT NULL,
  `table_qr_config` longtext DEFAULT NULL,
  `onesignal_config` longtext DEFAULT NULL,
  `extra_config` longtext DEFAULT NULL,
  `pos_config` longtext DEFAULT NULL,
  `order_mail_config` longtext DEFAULT NULL,
  `sendgrid_api_key` text DEFAULT NULL,
  `site_theme` int(11) NOT NULL DEFAULT 1,
  `pusher_config` longtext DEFAULT NULL,
  `is_banner` int(11) NOT NULL DEFAULT 0,
  `is_footer` int(11) NOT NULL DEFAULT 0,
  `vendor_affiliate_settings` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `user_settings` (`id`, `user_id`, `preloader`, `status`, `created_at`, `is_download`, `smtp_mail`, `smtp_config`, `email_type`, `is_facebook`, `seo_settings`, `twillo_sms_settings`, `pixel_id`, `analytics_id`, `icon_settings`, `qr_config`, `pwa_config`, `table_qr_config`, `onesignal_config`, `extra_config`, `pos_config`, `order_mail_config`, `sendgrid_api_key`, `site_theme`, `pusher_config`, `is_banner`, `is_footer`, `vendor_affiliate_settings`) VALUES (1, 2, 1, 1, NULL, 0, 'chefzyad.tr@gmail.com', '{\"smtp_host\":\"\",\"smtp_port\":\"\",\"smtp_password\":\"QWhtYWQyMzE0NjMyQA==\"}', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"app\":\"1\",\"app_id\":\"\",\"app_id_cookies\":\"\",\"elfsight_status\":\"1\",\"pagination_limit\":\"15\",\"is_scroll_top\":\"1\",\"edit_order_type\":\"0\",\"item_limit\":\"99\",\"terms\":\"\\\"\\\"\",\"languages\":\"[\\\"english\\\",\\\"ar\\\",\\\"tr\\\"]\",\"glanguage\":\"[\\\"tr\\\"]\",\"language_type\":\"system\",\"default_language\":\"ar\",\"system_default_language\":\"ar\"}', NULL, NULL, '', 1, NULL, 0, 0, NULL);
INSERT INTO `user_settings` (`id`, `user_id`, `preloader`, `status`, `created_at`, `is_download`, `smtp_mail`, `smtp_config`, `email_type`, `is_facebook`, `seo_settings`, `twillo_sms_settings`, `pixel_id`, `analytics_id`, `icon_settings`, `qr_config`, `pwa_config`, `table_qr_config`, `onesignal_config`, `extra_config`, `pos_config`, `order_mail_config`, `sendgrid_api_key`, `site_theme`, `pusher_config`, `is_banner`, `is_footer`, `vendor_affiliate_settings`) VALUES (2, 3, 1, 1, NULL, 0, 'info@angora.live', '{\"smtp_host\":\"\",\"smtp_port\":\"\",\"smtp_password\":\"U3MxMTIyMzNA\"}', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"app\":\"1\",\"app_id\":\"\",\"app_id_cookies\":\"\",\"elfsight_status\":\"1\",\"pagination_limit\":\"15\",\"is_scroll_top\":\"1\",\"edit_order_type\":\"0\",\"item_limit\":\"99\",\"terms\":\"\\\"\\\"\",\"languages\":\"[\\\"de\\\"]\",\"glanguage\":\"null\",\"language_type\":\"system\",\"default_language\":\"af\",\"system_default_language\":\"de\"}', NULL, NULL, '', 1, NULL, 0, 0, NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `user_role` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_verify` int(11) NOT NULL DEFAULT 0,
  `is_payment` int(11) NOT NULL DEFAULT 0,
  `is_expired` int(11) NOT NULL DEFAULT 0,
  `is_request` int(11) NOT NULL DEFAULT 0,
  `designation` varchar(250) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `verify_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `theme` int(11) NOT NULL DEFAULT 1,
  `documents` varchar(255) DEFAULT NULL,
  `theme_color` int(11) NOT NULL DEFAULT 0,
  `colors` varchar(255) NOT NULL DEFAULT '29c7ac',
  `cover_photo` varchar(255) DEFAULT NULL,
  `vcf_qr` varchar(255) DEFAULT NULL,
  `qr_link` varchar(255) DEFAULT NULL,
  `share_link` varchar(200) DEFAULT NULL,
  `is_deactived` int(11) NOT NULL DEFAULT 0,
  `site_info` varchar(255) DEFAULT NULL,
  `dial_code` varchar(20) DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `menu_style` int(11) NOT NULL DEFAULT 1,
  `staff_id` int(11) NOT NULL DEFAULT 1,
  `company_name` varchar(50) DEFAULT NULL,
  `referal_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `account_type` (`account_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `users` (`id`, `username`, `name`, `email`, `phone`, `country`, `password`, `gender`, `address`, `account_type`, `user_role`, `is_active`, `is_verify`, `is_payment`, `is_expired`, `is_request`, `designation`, `website`, `thumb`, `start_date`, `end_date`, `last_login`, `verify_time`, `created_at`, `theme`, `documents`, `theme_color`, `colors`, `cover_photo`, `vcf_qr`, `qr_link`, `share_link`, `is_deactived`, `site_info`, `dial_code`, `hit`, `menu_style`, `staff_id`, `company_name`, `referal_code`) VALUES (1, 'admin', 'Samir', 'Samersade@hotmail.com', '5515999555', 172, '72408f6d9652141f38c93c846fc2cca3', 'Male', '', NULL, 1, 1, 0, 0, 0, 0, '', '', NULL, NULL, NULL, '2024-07-08 19:57:06', NULL, '2024-06-04 05:06:57', 1, NULL, 0, '29c7ac', NULL, NULL, NULL, NULL, 0, NULL, '+90', 0, 1, 1, NULL, NULL);
INSERT INTO `users` (`id`, `username`, `name`, `email`, `phone`, `country`, `password`, `gender`, `address`, `account_type`, `user_role`, `is_active`, `is_verify`, `is_payment`, `is_expired`, `is_request`, `designation`, `website`, `thumb`, `start_date`, `end_date`, `last_login`, `verify_time`, `created_at`, `theme`, `documents`, `theme_color`, `colors`, `cover_photo`, `vcf_qr`, `qr_link`, `share_link`, `is_deactived`, `site_info`, `dial_code`, `hit`, `menu_style`, `staff_id`, `company_name`, `referal_code`) VALUES (2, 'chefzyad', 'Chef Zyad', 'chefzyad.tr@gmail.com', '5444401097', 172, '7b1012c2fbb06b435f44a108654bf5fb', 'Male', 'Şehit Muhtar, Atif Yilmaz Sok. No:4, 34435 Beyoğlu/İstanbul', 2, 0, 1, 1, 1, 0, 0, '', '', 'uploads/thumb/3421c3ce9328efbb190821b0b59f8ea9.png', '2024-06-04 23:17:06', '2025-06-04 23:59:59', '2024-06-26 16:34:53', '2024-06-04 05:15:26', '2024-06-04 05:15:26', 1, NULL, 0, 'f16722', NULL, NULL, 'uploads/qr_image/chefzyad_DJye8hAX.png', '1', 0, NULL, '+905444401097', 360, 1, 0, NULL, NULL);
INSERT INTO `users` (`id`, `username`, `name`, `email`, `phone`, `country`, `password`, `gender`, `address`, `account_type`, `user_role`, `is_active`, `is_verify`, `is_payment`, `is_expired`, `is_request`, `designation`, `website`, `thumb`, `start_date`, `end_date`, `last_login`, `verify_time`, `created_at`, `theme`, `documents`, `theme_color`, `colors`, `cover_photo`, `vcf_qr`, `qr_link`, `share_link`, `is_deactived`, `site_info`, `dial_code`, `hit`, `menu_style`, `staff_id`, `company_name`, `referal_code`) VALUES (3, 'angora', 'Angora Düsseldorf', 'info@angora.live', '017655560957', 41, 'ec51893ad707a17c037e2ac0f6aad011', 'Male', 'Heyestraße 133 -40625 Düsseldorf', 2, 0, 1, 1, 1, 0, 0, 'JETZT TELEFONISCH BESTELLEN', '', 'uploads/thumb/3ebef1954262f3ccee87c178e20abb59.png', '2024-06-06 14:12:14', '2025-06-06 23:59:59', '2024-06-09 20:59:55', '2024-06-06 14:12:14', '2024-06-06 14:12:14', 1, NULL, 0, '750c0c', NULL, NULL, 'uploads/qr_image/angora_PiuEeHG4.png', NULL, 0, NULL, '+49', 42, 1, 0, NULL, NULL);


#
# TABLE STRUCTURE FOR: users_active_features
#

DROP TABLE IF EXISTS `users_active_features`;

CREATE TABLE `users_active_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `language` varchar(20) NOT NULL DEFAULT 'english',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (1, 1, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (2, 2, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (3, 3, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (4, 4, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (5, 5, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (6, 6, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (7, 7, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (8, 8, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (9, 9, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (10, 10, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (11, 11, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (12, 13, 2, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (13, 1, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (14, 2, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (15, 3, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (16, 4, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (17, 5, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (18, 6, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (19, 7, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (20, 8, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (21, 9, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (22, 10, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (23, 11, 3, NULL, NULL, 1, 'english');
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`, `language`) VALUES (24, 13, 3, NULL, NULL, 1, 'english');


#
# TABLE STRUCTURE FOR: users_active_order_types
#

DROP TABLE IF EXISTS `users_active_order_types`;

CREATE TABLE `users_active_order_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `is_payment` int(11) NOT NULL DEFAULT 0,
  `is_required` int(11) NOT NULL DEFAULT 0,
  `is_admin_enable` int(11) NOT NULL DEFAULT 1,
  `is_service_charge` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (1, 2, 1, 1, 1, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (2, 2, 1, 2, 1, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (3, 2, 1, 3, 1, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (4, 2, 1, 4, 1, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (5, 2, 1, 5, 1, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (6, 2, 1, 6, 1, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (7, 2, 1, 7, 1, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (8, 2, 1, 8, 0, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (9, 2, 1, 9, 1, '2024-06-04 23:17:19', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (10, 3, 2, 1, 1, '2024-06-06 14:12:21', 0, 0, 1, 0);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (11, 3, 2, 2, 1, '2024-06-06 14:12:21', 0, 0, 1, 0);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (12, 3, 2, 3, 1, '2024-06-06 14:12:21', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (13, 3, 2, 4, 1, '2024-06-06 14:12:21', 0, 0, 1, 0);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (14, 3, 2, 5, 1, '2024-06-06 14:12:21', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (15, 3, 2, 6, 1, '2024-06-06 14:12:21', 0, 0, 1, 0);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (16, 3, 2, 7, 1, '2024-06-06 14:12:21', 0, 0, 1, 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (17, 3, 2, 8, 0, '2024-06-06 14:12:21', 0, 0, 1, 0);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`, `is_required`, `is_admin_enable`, `is_service_charge`) VALUES (18, 3, 2, 9, 1, '2024-06-06 14:12:21', 0, 0, 1, 0);


#
# TABLE STRUCTURE FOR: users_rating
#

DROP TABLE IF EXISTS `users_rating`;

CREATE TABLE `users_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `rating` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `rating_type` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: vendor_affiliate_list
#

DROP TABLE IF EXISTS `vendor_affiliate_list`;

CREATE TABLE `vendor_affiliate_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `refer_from_id` int(11) NOT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `package_price` varchar(20) DEFAULT NULL,
  `commision_amount` varchar(20) DEFAULT NULL,
  `referal_code` varchar(20) DEFAULT NULL,
  `ref_type` varchar(80) DEFAULT NULL,
  `commision_rate` varchar(20) DEFAULT NULL,
  `commision_type` varchar(20) DEFAULT NULL,
  `subscriber_commision_rate` varchar(20) DEFAULT NULL,
  `subscriber_commision_type` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_request` int(11) NOT NULL DEFAULT 0,
  `is_payment` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: vendor_menu_list
#

DROP TABLE IF EXISTS `vendor_menu_list`;

CREATE TABLE `vendor_menu_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `shop_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_dropdown` int(2) NOT NULL DEFAULT 0,
  `dropdown_id` int(11) NOT NULL DEFAULT 0,
  `is_quick_link` int(2) NOT NULL DEFAULT 0,
  `is_extranal_url` int(2) NOT NULL DEFAULT 0,
  `status` int(2) NOT NULL DEFAULT 1,
  `language` varchar(50) NOT NULL DEFAULT 'english',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: vendor_page_list
#

DROP TABLE IF EXISTS `vendor_page_list`;

CREATE TABLE `vendor_page_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `is_menu_bar` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: vendor_question_list
#

DROP TABLE IF EXISTS `vendor_question_list`;

CREATE TABLE `vendor_question_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `language` varchar(80) NOT NULL DEFAULT 'english',
  `title` varchar(200) DEFAULT NULL,
  `access_for` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: vendor_slider_list
#

DROP TABLE IF EXISTS `vendor_slider_list`;

CREATE TABLE `vendor_slider_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `details` longtext NOT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `images` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

