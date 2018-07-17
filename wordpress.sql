/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100133
 Source Host           : localhost:3306
 Source Schema         : wordpress

 Target Server Type    : MySQL
 Target Server Version : 100133
 File Encoding         : 65001

 Date: 17/07/2018 08:28:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wp_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `comment_id`(`comment_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wp_comments
-- ----------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments`  (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime(0) NOT NULL,
  `comment_date_gmt` datetime(0) NOT NULL,
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`) USING BTREE,
  INDEX `comment_post_ID`(`comment_post_ID`) USING BTREE,
  INDEX `comment_approved_date_gmt`(`comment_approved`, `comment_date_gmt`) USING BTREE,
  INDEX `comment_date_gmt`(`comment_date_gmt`) USING BTREE,
  INDEX `comment_parent`(`comment_parent`) USING BTREE,
  INDEX `comment_author_email`(`comment_author_email`(10)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_comments
-- ----------------------------
INSERT INTO `wp_comments` VALUES (1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-07 18:17:55', '2018-07-07 18:17:55', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);
INSERT INTO `wp_comments` VALUES (2, 1, 'fakhrurraziandi', 'fakhrurrazi.andi@gmail.com', '', '::1', '2018-07-12 03:51:42', '2018-07-12 03:51:42', 'aksjalja', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1);
INSERT INTO `wp_comments` VALUES (3, 1, 'fakhrurraziandi', 'fakhrurrazi.andi@gmail.com', '', '::1', '2018-07-12 03:51:47', '2018-07-12 03:51:47', 'asshalkjas', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 2, 1);

-- ----------------------------
-- Table structure for wp_custom_options_plus
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_options_plus`;
CREATE TABLE `wp_custom_options_plus`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_options_plus
-- ----------------------------
INSERT INTO `wp_custom_options_plus` VALUES (1, 'Copyright Text', 'copyright_text', 'Copyright @2018 PT. Teknologi Aplikasi Bangsa');
INSERT INTO `wp_custom_options_plus` VALUES (2, 'Facebook URL', 'facebook_url', 'https://www.facebook.com/');
INSERT INTO `wp_custom_options_plus` VALUES (3, 'Twitter URL', 'twitter_url', 'https://twitter.com/?lang=id');
INSERT INTO `wp_custom_options_plus` VALUES (4, 'google_plus_url', 'google_plus_url', 'https://plus.google.com/people');
INSERT INTO `wp_custom_options_plus` VALUES (5, 'Email Address', 'email_address', 'admin@toppay.com');
INSERT INTO `wp_custom_options_plus` VALUES (6, 'Phone', 'phone', '+68238721368721');
INSERT INTO `wp_custom_options_plus` VALUES (7, 'Alamat', 'alamat', 'Jl. Test No 12, Jakarta');
INSERT INTO `wp_custom_options_plus` VALUES (8, 'URL Play Store', 'url_play_store', 'https://play.google.com/store/apps?hl=in');
INSERT INTO `wp_custom_options_plus` VALUES (9, 'URL App Store', 'url_app_store', 'https://www.apple.com/id/ios/app-store/');

-- ----------------------------
-- Table structure for wp_links
-- ----------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links`  (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime(0) NOT NULL,
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`) USING BTREE,
  INDEX `link_visible`(`link_visible`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wp_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options`  (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 455 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_options
-- ----------------------------
INSERT INTO `wp_options` VALUES (1, 'siteurl', 'http://localhost/wordpress', 'yes');
INSERT INTO `wp_options` VALUES (2, 'home', 'http://localhost/wordpress', 'yes');
INSERT INTO `wp_options` VALUES (3, 'blogname', 'Toppay', 'yes');
INSERT INTO `wp_options` VALUES (4, 'blogdescription', 'Aplikasi toppay merupakan aplikasi untuk pembayaran tagihan secara online', 'yes');
INSERT INTO `wp_options` VALUES (5, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES (6, 'admin_email', 'fakhrurrazi.andi@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES (7, 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES (8, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES (9, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES (10, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES (11, 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES (12, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES (17, 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES (18, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES (19, 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES (20, 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_options` VALUES (22, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES (23, 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options` VALUES (24, 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES (25, 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES (26, 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES (27, 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES (28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `wp_options` VALUES (29, 'rewrite_rules', 'a:175:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"function_content/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"function_content/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"function_content/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"function_content/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"function_content/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"function_content/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"function_content/([^/]+)/embed/?$\";s:49:\"index.php?function_content=$matches[1]&embed=true\";s:37:\"function_content/([^/]+)/trackback/?$\";s:43:\"index.php?function_content=$matches[1]&tb=1\";s:45:\"function_content/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?function_content=$matches[1]&paged=$matches[2]\";s:52:\"function_content/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?function_content=$matches[1]&cpage=$matches[2]\";s:41:\"function_content/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?function_content=$matches[1]&page=$matches[2]\";s:33:\"function_content/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"function_content/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"function_content/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"function_content/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"function_content/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"function_content/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"service_content/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"service_content/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"service_content/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"service_content/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"service_content/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"service_content/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"service_content/([^/]+)/embed/?$\";s:48:\"index.php?service_content=$matches[1]&embed=true\";s:36:\"service_content/([^/]+)/trackback/?$\";s:42:\"index.php?service_content=$matches[1]&tb=1\";s:44:\"service_content/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?service_content=$matches[1]&paged=$matches[2]\";s:51:\"service_content/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?service_content=$matches[1]&cpage=$matches[2]\";s:40:\"service_content/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?service_content=$matches[1]&page=$matches[2]\";s:32:\"service_content/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"service_content/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"service_content/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"service_content/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"service_content/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"service_content/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"advantage_content/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"advantage_content/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"advantage_content/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"advantage_content/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"advantage_content/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"advantage_content/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"advantage_content/([^/]+)/embed/?$\";s:50:\"index.php?advantage_content=$matches[1]&embed=true\";s:38:\"advantage_content/([^/]+)/trackback/?$\";s:44:\"index.php?advantage_content=$matches[1]&tb=1\";s:46:\"advantage_content/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?advantage_content=$matches[1]&paged=$matches[2]\";s:53:\"advantage_content/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?advantage_content=$matches[1]&cpage=$matches[2]\";s:42:\"advantage_content/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?advantage_content=$matches[1]&page=$matches[2]\";s:34:\"advantage_content/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"advantage_content/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"advantage_content/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"advantage_content/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"advantage_content/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"advantage_content/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"about_content/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"about_content/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"about_content/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"about_content/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"about_content/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"about_content/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"about_content/([^/]+)/embed/?$\";s:46:\"index.php?about_content=$matches[1]&embed=true\";s:34:\"about_content/([^/]+)/trackback/?$\";s:40:\"index.php?about_content=$matches[1]&tb=1\";s:42:\"about_content/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?about_content=$matches[1]&paged=$matches[2]\";s:49:\"about_content/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?about_content=$matches[1]&cpage=$matches[2]\";s:38:\"about_content/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?about_content=$matches[1]&page=$matches[2]\";s:30:\"about_content/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"about_content/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"about_content/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"about_content/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"about_content/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"about_content/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"other_content/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"other_content/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"other_content/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"other_content/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"other_content/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"other_content/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"other_content/([^/]+)/embed/?$\";s:46:\"index.php?other_content=$matches[1]&embed=true\";s:34:\"other_content/([^/]+)/trackback/?$\";s:40:\"index.php?other_content=$matches[1]&tb=1\";s:42:\"other_content/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?other_content=$matches[1]&paged=$matches[2]\";s:49:\"other_content/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?other_content=$matches[1]&cpage=$matches[2]\";s:38:\"other_content/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?other_content=$matches[1]&page=$matches[2]\";s:30:\"other_content/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"other_content/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"other_content/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"other_content/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"other_content/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"other_content/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `wp_options` VALUES (30, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES (32, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES (33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";i:2;s:37:\"bs3-grid-builder/bs3-grid-builder.php\";i:3;s:43:\"custom-options-plus/custom-options-plus.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:39:\"mce-table-buttons/mce_table_buttons.php\";}', 'yes');
INSERT INTO `wp_options` VALUES (34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES (36, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES (37, 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES (38, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES (39, 'recently_edited', 'a:2:{i:0;s:60:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/toppay/style.css\";i:2;s:0:\"\";}', 'no');
INSERT INTO `wp_options` VALUES (40, 'template', 'toppay_v2', 'yes');
INSERT INTO `wp_options` VALUES (41, 'stylesheet', 'toppay_v2', 'yes');
INSERT INTO `wp_options` VALUES (42, 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES (43, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES (44, 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES (45, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES (46, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES (47, 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES (48, 'db_version', '38590', 'yes');
INSERT INTO `wp_options` VALUES (49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES (50, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES (51, 'blog_public', '1', 'yes');
INSERT INTO `wp_options` VALUES (52, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES (53, 'show_on_front', 'page', 'yes');
INSERT INTO `wp_options` VALUES (54, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES (55, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES (56, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES (57, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES (58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES (59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES (60, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES (61, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES (62, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES (63, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES (64, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES (65, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES (66, 'image_default_link_type', 'none', 'yes');
INSERT INTO `wp_options` VALUES (67, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES (68, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES (69, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES (70, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES (71, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES (72, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES (73, 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES (74, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES (75, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES (76, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES (77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:41:\"Copyright @2018 PT. Aneka Aplikasi Bangsa\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (82, 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES (83, 'page_for_posts', '71', 'yes');
INSERT INTO `wp_options` VALUES (84, 'page_on_front', '10', 'yes');
INSERT INTO `wp_options` VALUES (85, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES (86, 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES (87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `wp_options` VALUES (88, 'site_icon', '0', 'yes');
INSERT INTO `wp_options` VALUES (89, 'medium_large_size_w', '768', 'yes');
INSERT INTO `wp_options` VALUES (90, 'medium_large_size_h', '0', 'yes');
INSERT INTO `wp_options` VALUES (91, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO `wp_options` VALUES (92, 'initial_db_version', '38590', 'yes');
INSERT INTO `wp_options` VALUES (93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES (94, 'fresh_site', '0', 'yes');
INSERT INTO `wp_options` VALUES (95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:6:\"text-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES (101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (110, 'cron', 'a:5:{i:1531772275;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1531808275;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1531819821;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531851485;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES (111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531039957;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES (115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1531770234;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (123, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES (145, 'current_theme', 'Toppay_v2', 'yes');
INSERT INTO `wp_options` VALUES (146, 'theme_mods_toppay', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531482941;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:6:\"text-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}}}}', 'yes');
INSERT INTO `wp_options` VALUES (147, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES (148, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1531770239;s:7:\"checked\";a:4:{s:9:\"toppay_v2\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (149, 'category_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (158, 'WPLANG', '', 'yes');
INSERT INTO `wp_options` VALUES (159, 'new_admin_email', 'fakhrurrazi.andi@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES (164, 'recently_activated', 'a:2:{s:21:\"gridable/gridable.php\";i:1531128564;s:49:\"galau-ui-visual-editor/galau-ui-visual-editor.php\";i:1531066021;}', 'yes');
INSERT INTO `wp_options` VALUES (170, 'acf_version', '4.4.12', 'yes');
INSERT INTO `wp_options` VALUES (175, 'cptui_new_install', 'false', 'yes');
INSERT INTO `wp_options` VALUES (177, 'cptui_post_types', 'a:5:{s:16:\"function_content\";a:28:{s:4:\"name\";s:16:\"function_content\";s:5:\"label\";s:17:\"Function Contents\";s:14:\"singular_label\";s:16:\"Function Content\";s:11:\"description\";s:72:\"Content that describes us, it will appear in the slider on the home page\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:3:\"102\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:15:\"service_content\";a:28:{s:4:\"name\";s:15:\"service_content\";s:5:\"label\";s:16:\"Service Contents\";s:14:\"singular_label\";s:15:\"Service Content\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:3:\"103\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:17:\"advantage_content\";a:28:{s:4:\"name\";s:17:\"advantage_content\";s:5:\"label\";s:18:\"Advantages Content\";s:14:\"singular_label\";s:17:\"Advantage Content\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:3:\"104\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"about_content\";a:28:{s:4:\"name\";s:13:\"about_content\";s:5:\"label\";s:14:\"About Contents\";s:14:\"singular_label\";s:13:\"About Content\";s:11:\"description\";s:72:\"Content that describes us, it will appear in the slider on the home page\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:3:\"101\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"other_content\";a:28:{s:4:\"name\";s:13:\"other_content\";s:5:\"label\";s:14:\"Other Contents\";s:14:\"singular_label\";s:13:\"Other Content\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:3:\"105\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes');
INSERT INTO `wp_options` VALUES (208, 'gui_css_themes', '[{\"name\":\"e3bf4d7c5090def411fe44089abd8ea0\",\"src\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/themes\\/toppay\\/style.css\"},{\"name\":\"f2435c5577534b345d94dfc563879745\",\"src\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/themes\\/toppay\\/assets\\/dist\\/css\\/toppay.css\"},{\"name\":\"caed7da2b8db2e6f8258f81a643fe6c7\",\"src\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/themes\\/toppay\\/assets\\/node_modules\\/owl.carousel\\/dist\\/assets\\/owl.carousel.min.css\"},{\"name\":\"d41774d8c4408c3d3688f783ca8dd3a4\",\"src\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/themes\\/toppay\\/assets\\/node_modules\\/owl.carousel\\/dist\\/assets\\/owl.theme.default.min.css\"}]', 'yes');
INSERT INTO `wp_options` VALUES (296, 'bs3_grid_builder_display_notice_once', '1', 'yes');
INSERT INTO `wp_options` VALUES (298, 'bs3_grid_builder_post_types_option_name', 'a:5:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:16:\"function_content\";i:3;s:17:\"advantage_content\";i:4;s:13:\"about_content\";}', 'yes');
INSERT INTO `wp_options` VALUES (346, 'cop_version', '1.8.0', 'yes');
INSERT INTO `wp_options` VALUES (385, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES (423, 'theme_mods_toppay_v2', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `wp_options` VALUES (430, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1532324603', 'no');
INSERT INTO `wp_options` VALUES (431, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES (432, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1531796026', 'no');
INSERT INTO `wp_options` VALUES (433, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (452, '_site_transient_timeout_theme_roots', '1531772037', 'no');
INSERT INTO `wp_options` VALUES (453, '_site_transient_theme_roots', 'a:4:{s:9:\"toppay_v2\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` VALUES (454, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1531770240;s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";s:6:\"3.3.12\";s:37:\"bs3-grid-builder/bs3-grid-builder.php\";s:5:\"1.0.5\";s:43:\"custom-options-plus/custom-options-plus.php\";s:5:\"1.8.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:9:\"hello.php\";s:3:\"1.7\";s:39:\"mce-table-buttons/mce_table_buttons.php\";s:3:\"3.3\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/bootstrap-3-shortcodes\";s:4:\"slug\";s:22:\"bootstrap-3-shortcodes\";s:6:\"plugin\";s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";s:11:\"new_version\";s:6:\"3.3.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/bootstrap-3-shortcodes/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/bootstrap-3-shortcodes.3.3.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/bootstrap-3-shortcodes/assets/icon.svg?rev=1010631\";s:3:\"svg\";s:67:\"https://ps.w.org/bootstrap-3-shortcodes/assets/icon.svg?rev=1010631\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/bootstrap-3-shortcodes/assets/banner-1544x500.png?rev=861867\";s:2:\"1x\";s:76:\"https://ps.w.org/bootstrap-3-shortcodes/assets/banner-772x250.png?rev=861867\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"bs3-grid-builder/bs3-grid-builder.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/bs3-grid-builder\";s:4:\"slug\";s:16:\"bs3-grid-builder\";s:6:\"plugin\";s:37:\"bs3-grid-builder/bs3-grid-builder.php\";s:11:\"new_version\";s:5:\"1.0.5\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/bs3-grid-builder/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/bs3-grid-builder.1.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/bs3-grid-builder/assets/icon-256x256.jpg?rev=1559733\";s:2:\"1x\";s:69:\"https://ps.w.org/bs3-grid-builder/assets/icon-128x128.jpg?rev=1559733\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/bs3-grid-builder/assets/banner-1544x500.jpg?rev=1559733\";s:2:\"1x\";s:71:\"https://ps.w.org/bs3-grid-builder/assets/banner-772x250.jpg?rev=1559733\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-options-plus/custom-options-plus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-options-plus\";s:4:\"slug\";s:19:\"custom-options-plus\";s:6:\"plugin\";s:43:\"custom-options-plus/custom-options-plus.php\";s:11:\"new_version\";s:5:\"1.8.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-options-plus/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/custom-options-plus.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/custom-options-plus/assets/icon-256x256.png?rev=983541\";s:2:\"1x\";s:71:\"https://ps.w.org/custom-options-plus/assets/icon-128x128.png?rev=983541\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/custom-options-plus/assets/banner-772x250.png?rev=867617\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"mce-table-buttons/mce_table_buttons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/mce-table-buttons\";s:4:\"slug\";s:17:\"mce-table-buttons\";s:6:\"plugin\";s:39:\"mce-table-buttons/mce_table_buttons.php\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/mce-table-buttons/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/mce-table-buttons.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/mce-table-buttons/assets/icon-256x256.png?rev=971854\";s:2:\"1x\";s:69:\"https://ps.w.org/mce-table-buttons/assets/icon-128x128.png?rev=971854\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/mce-table-buttons/assets/banner-1544x500.png?rev=971854\";s:2:\"1x\";s:71:\"https://ps.w.org/mce-table-buttons/assets/banner-772x250.png?rev=971854\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- ----------------------------
-- Table structure for wp_postmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 420 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_postmeta
-- ----------------------------
INSERT INTO `wp_postmeta` VALUES (1, 2, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES (2, 3, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES (5, 6, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (6, 6, '_edit_lock', '1531042225:1');
INSERT INTO `wp_postmeta` VALUES (7, 7, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (8, 7, '_edit_lock', '1531042198:1');
INSERT INTO `wp_postmeta` VALUES (9, 7, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES (10, 6, '_wp_trash_meta_status', 'draft');
INSERT INTO `wp_postmeta` VALUES (11, 6, '_wp_trash_meta_time', '1531042410');
INSERT INTO `wp_postmeta` VALUES (12, 6, '_wp_desired_post_slug', '');
INSERT INTO `wp_postmeta` VALUES (13, 7, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES (14, 7, '_wp_trash_meta_time', '1531042412');
INSERT INTO `wp_postmeta` VALUES (15, 7, '_wp_desired_post_slug', 'home');
INSERT INTO `wp_postmeta` VALUES (16, 10, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (17, 10, '_edit_lock', '1531064579:1');
INSERT INTO `wp_postmeta` VALUES (18, 10, '_wp_page_template', 'page-home.php');
INSERT INTO `wp_postmeta` VALUES (19, 2, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES (20, 2, '_wp_trash_meta_time', '1531042862');
INSERT INTO `wp_postmeta` VALUES (21, 2, '_wp_desired_post_slug', 'sample-page');
INSERT INTO `wp_postmeta` VALUES (22, 3, '_wp_trash_meta_status', 'draft');
INSERT INTO `wp_postmeta` VALUES (23, 3, '_wp_trash_meta_time', '1531042864');
INSERT INTO `wp_postmeta` VALUES (24, 3, '_wp_desired_post_slug', 'privacy-policy');
INSERT INTO `wp_postmeta` VALUES (29, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (30, 16, '_edit_lock', '1531069140:1');
INSERT INTO `wp_postmeta` VALUES (31, 17, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (32, 17, '_edit_lock', '1531073029:1');
INSERT INTO `wp_postmeta` VALUES (33, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (34, 19, '_edit_lock', '1531126905:1');
INSERT INTO `wp_postmeta` VALUES (37, 1, '_edit_lock', '1531064617:1');
INSERT INTO `wp_postmeta` VALUES (38, 21, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (39, 21, 'field_5b423382363ea', 'a:11:{s:3:\"key\";s:19:\"field_5b423382363ea\";s:5:\"label\";s:14:\"Function Image\";s:4:\"name\";s:14:\"function_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (41, 21, 'position', 'normal');
INSERT INTO `wp_postmeta` VALUES (42, 21, 'layout', 'default');
INSERT INTO `wp_postmeta` VALUES (43, 21, 'hide_on_screen', '');
INSERT INTO `wp_postmeta` VALUES (44, 21, '_edit_lock', '1531065237:1');
INSERT INTO `wp_postmeta` VALUES (45, 21, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"function_content\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (46, 21, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES (47, 21, '_wp_trash_meta_time', '1531065384');
INSERT INTO `wp_postmeta` VALUES (48, 21, '_wp_desired_post_slug', 'acf_function-image');
INSERT INTO `wp_postmeta` VALUES (49, 27, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (50, 27, '_edit_lock', '1531068933:1');
INSERT INTO `wp_postmeta` VALUES (51, 28, '_wp_attached_file', '2018/07/DISTRIBUSI-PEMBAYARAN.png');
INSERT INTO `wp_postmeta` VALUES (52, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4380;s:6:\"height\";i:3470;s:4:\"file\";s:33:\"2018/07/DISTRIBUSI-PEMBAYARAN.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"DISTRIBUSI-PEMBAYARAN-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"DISTRIBUSI-PEMBAYARAN-300x238.png\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"DISTRIBUSI-PEMBAYARAN-768x608.png\";s:5:\"width\";i:768;s:6:\"height\";i:608;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"DISTRIBUSI-PEMBAYARAN-1024x811.png\";s:5:\"width\";i:1024;s:6:\"height\";i:811;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (54, 30, '_wp_attached_file', '2018/07/PEMBAYARAN-ONLINE.png');
INSERT INTO `wp_postmeta` VALUES (55, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4084;s:6:\"height\";i:2109;s:4:\"file\";s:29:\"2018/07/PEMBAYARAN-ONLINE.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"PEMBAYARAN-ONLINE-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"PEMBAYARAN-ONLINE-300x155.png\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"PEMBAYARAN-ONLINE-768x397.png\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"PEMBAYARAN-ONLINE-1024x529.png\";s:5:\"width\";i:1024;s:6:\"height\";i:529;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (56, 31, '_wp_attached_file', '2018/07/MANAGEMEN-PEMBAYARAN1.png');
INSERT INTO `wp_postmeta` VALUES (57, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3943;s:6:\"height\";i:4053;s:4:\"file\";s:33:\"2018/07/MANAGEMEN-PEMBAYARAN1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"MANAGEMEN-PEMBAYARAN1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"MANAGEMEN-PEMBAYARAN1-292x300.png\";s:5:\"width\";i:292;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"MANAGEMEN-PEMBAYARAN1-768x789.png\";s:5:\"width\";i:768;s:6:\"height\";i:789;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"MANAGEMEN-PEMBAYARAN1-996x1024.png\";s:5:\"width\";i:996;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (58, 32, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (59, 32, '_edit_lock', '1531068922:1');
INSERT INTO `wp_postmeta` VALUES (61, 33, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (62, 33, '_edit_lock', '1531129807:1');
INSERT INTO `wp_postmeta` VALUES (66, 38, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (67, 38, '_edit_lock', '1531083510:1');
INSERT INTO `wp_postmeta` VALUES (68, 39, '_wp_attached_file', '2018/07/Capture.png');
INSERT INTO `wp_postmeta` VALUES (69, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1373;s:6:\"height\";i:651;s:4:\"file\";s:19:\"2018/07/Capture.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Capture-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Capture-300x142.png\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Capture-768x364.png\";s:5:\"width\";i:768;s:6:\"height\";i:364;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Capture-1024x486.png\";s:5:\"width\";i:1024;s:6:\"height\";i:486;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (70, 40, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (71, 40, '_edit_lock', '1531096768:1');
INSERT INTO `wp_postmeta` VALUES (72, 41, '_wp_attached_file', '2018/07/Capture2.png');
INSERT INTO `wp_postmeta` VALUES (73, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1361;s:6:\"height\";i:651;s:4:\"file\";s:20:\"2018/07/Capture2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Capture2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Capture2-300x143.png\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Capture2-768x367.png\";s:5:\"width\";i:768;s:6:\"height\";i:367;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Capture2-1024x490.png\";s:5:\"width\";i:1024;s:6:\"height\";i:490;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (74, 42, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (75, 42, '_edit_lock', '1531125578:1');
INSERT INTO `wp_postmeta` VALUES (76, 44, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (77, 44, '_edit_lock', '1531073641:1');
INSERT INTO `wp_postmeta` VALUES (78, 45, '_wp_attached_file', '2018/07/kelebihan1.png');
INSERT INTO `wp_postmeta` VALUES (79, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1370;s:6:\"height\";i:661;s:4:\"file\";s:22:\"2018/07/kelebihan1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kelebihan1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kelebihan1-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kelebihan1-768x371.png\";s:5:\"width\";i:768;s:6:\"height\";i:371;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"kelebihan1-1024x494.png\";s:5:\"width\";i:1024;s:6:\"height\";i:494;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (80, 46, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (81, 46, '_edit_lock', '1531079635:1');
INSERT INTO `wp_postmeta` VALUES (82, 47, '_wp_attached_file', '2018/07/kelebihan2.png');
INSERT INTO `wp_postmeta` VALUES (83, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1351;s:6:\"height\";i:625;s:4:\"file\";s:22:\"2018/07/kelebihan2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kelebihan2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kelebihan2-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kelebihan2-768x355.png\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"kelebihan2-1024x474.png\";s:5:\"width\";i:1024;s:6:\"height\";i:474;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (84, 48, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (85, 48, '_edit_lock', '1531080514:1');
INSERT INTO `wp_postmeta` VALUES (86, 49, '_wp_attached_file', '2018/07/Kelebihan3.png');
INSERT INTO `wp_postmeta` VALUES (87, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1347;s:6:\"height\";i:626;s:4:\"file\";s:22:\"2018/07/Kelebihan3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Kelebihan3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Kelebihan3-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Kelebihan3-768x357.png\";s:5:\"width\";i:768;s:6:\"height\";i:357;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Kelebihan3-1024x476.png\";s:5:\"width\";i:1024;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (88, 50, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (89, 50, 'field_5b427014cc9ba', 'a:13:{s:3:\"key\";s:19:\"field_5b427014cc9ba\";s:5:\"label\";s:4:\"Type\";s:4:\"name\";s:4:\"type\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:7:\"choices\";a:2:{s:7:\"content\";s:7:\"Content\";s:6:\"slider\";s:6:\"Slider\";}s:12:\"other_choice\";s:1:\"0\";s:17:\"save_other_choice\";s:1:\"0\";s:13:\"default_value\";s:7:\"content\";s:6:\"layout\";s:10:\"horizontal\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (91, 50, 'position', 'normal');
INSERT INTO `wp_postmeta` VALUES (92, 50, 'layout', 'default');
INSERT INTO `wp_postmeta` VALUES (93, 50, 'hide_on_screen', '');
INSERT INTO `wp_postmeta` VALUES (94, 50, '_edit_lock', '1531122808:1');
INSERT INTO `wp_postmeta` VALUES (97, 50, 'field_5b42718e263c0', 'a:11:{s:3:\"key\";s:19:\"field_5b42718e263c0\";s:5:\"label\";s:7:\"Content\";s:4:\"name\";s:7:\"content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"content\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}');
INSERT INTO `wp_postmeta` VALUES (108, 53, '_wp_attached_file', '2018/07/layanan1.png');
INSERT INTO `wp_postmeta` VALUES (109, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1359;s:6:\"height\";i:560;s:4:\"file\";s:20:\"2018/07/layanan1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"layanan1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"layanan1-300x124.png\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"layanan1-768x316.png\";s:5:\"width\";i:768;s:6:\"height\";i:316;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"layanan1-1024x422.png\";s:5:\"width\";i:1024;s:6:\"height\";i:422;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (110, 54, '_wp_attached_file', '2018/07/layanan2.png');
INSERT INTO `wp_postmeta` VALUES (111, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1341;s:6:\"height\";i:566;s:4:\"file\";s:20:\"2018/07/layanan2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"layanan2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"layanan2-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"layanan2-768x324.png\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"layanan2-1024x432.png\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (112, 55, '_wp_attached_file', '2018/07/layanan3.png');
INSERT INTO `wp_postmeta` VALUES (113, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1359;s:6:\"height\";i:553;s:4:\"file\";s:20:\"2018/07/layanan3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"layanan3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"layanan3-300x122.png\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"layanan3-768x313.png\";s:5:\"width\";i:768;s:6:\"height\";i:313;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"layanan3-1024x417.png\";s:5:\"width\";i:1024;s:6:\"height\";i:417;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (114, 42, 'type', 'slider');
INSERT INTO `wp_postmeta` VALUES (115, 42, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (116, 42, 'slide_1', '53');
INSERT INTO `wp_postmeta` VALUES (117, 42, '_slide_1', 'field_5b42755610bd3');
INSERT INTO `wp_postmeta` VALUES (118, 42, 'slide_2', '54');
INSERT INTO `wp_postmeta` VALUES (119, 42, '_slide_2', 'field_5b4276ac10bd4');
INSERT INTO `wp_postmeta` VALUES (120, 42, 'slide_3', '55');
INSERT INTO `wp_postmeta` VALUES (121, 42, '_slide_3', 'field_5b4276be10bd5');
INSERT INTO `wp_postmeta` VALUES (122, 42, 'slide_4', '');
INSERT INTO `wp_postmeta` VALUES (123, 42, '_slide_4', 'field_5b4276d010bd6');
INSERT INTO `wp_postmeta` VALUES (124, 42, 'slide_5', '');
INSERT INTO `wp_postmeta` VALUES (125, 42, '_slide_5', 'field_5b42770810bd7');
INSERT INTO `wp_postmeta` VALUES (126, 38, 'type', 'content');
INSERT INTO `wp_postmeta` VALUES (127, 38, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (128, 38, 'content', '<img class=\"alignnone size-full wp-image-39\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Capture.png\" alt=\"\" width=\"1373\" height=\"651\" />');
INSERT INTO `wp_postmeta` VALUES (129, 38, '_content', 'field_5b42718e263c0');
INSERT INTO `wp_postmeta` VALUES (130, 40, 'type', 'content');
INSERT INTO `wp_postmeta` VALUES (131, 40, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (132, 40, 'content', '<img class=\"alignnone size-full wp-image-41\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Capture2.png\" alt=\"\" width=\"1361\" height=\"651\" />');
INSERT INTO `wp_postmeta` VALUES (133, 40, '_content', 'field_5b42718e263c0');
INSERT INTO `wp_postmeta` VALUES (143, 50, 'field_5b427f5beb832', 'a:11:{s:3:\"key\";s:19:\"field_5b427f5beb832\";s:5:\"label\";s:7:\"Content\";s:4:\"name\";s:15:\"slide_1_content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}');
INSERT INTO `wp_postmeta` VALUES (147, 50, 'field_5b42801e595fc', 'a:11:{s:3:\"key\";s:19:\"field_5b42801e595fc\";s:5:\"label\";s:7:\"Content\";s:4:\"name\";s:15:\"slide_2_content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}');
INSERT INTO `wp_postmeta` VALUES (149, 50, 'field_5b428041595fe', 'a:11:{s:3:\"key\";s:19:\"field_5b428041595fe\";s:5:\"label\";s:7:\"Content\";s:4:\"name\";s:15:\"slide_3_content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}');
INSERT INTO `wp_postmeta` VALUES (151, 50, 'field_5b42806659600', 'a:11:{s:3:\"key\";s:19:\"field_5b42806659600\";s:5:\"label\";s:7:\"Content\";s:4:\"name\";s:15:\"slide_4_content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}');
INSERT INTO `wp_postmeta` VALUES (153, 50, 'field_5b42808959602', 'a:11:{s:3:\"key\";s:19:\"field_5b42808959602\";s:5:\"label\";s:7:\"Content\";s:4:\"name\";s:15:\"slide_5_content\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}');
INSERT INTO `wp_postmeta` VALUES (159, 50, 'field_5b4281b4654b2', 'a:8:{s:3:\"key\";s:19:\"field_5b4281b4654b2\";s:5:\"label\";s:7:\"Slide 1\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}');
INSERT INTO `wp_postmeta` VALUES (162, 50, 'field_5b428222a24b6', 'a:8:{s:3:\"key\";s:19:\"field_5b428222a24b6\";s:5:\"label\";s:7:\"Slide 2\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}');
INSERT INTO `wp_postmeta` VALUES (164, 50, 'field_5b4282a734c71', 'a:8:{s:3:\"key\";s:19:\"field_5b4282a734c71\";s:5:\"label\";s:7:\"Slide 3\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}');
INSERT INTO `wp_postmeta` VALUES (165, 50, 'field_5b4282cf34c72', 'a:8:{s:3:\"key\";s:19:\"field_5b4282cf34c72\";s:5:\"label\";s:7:\"Slide 4\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}');
INSERT INTO `wp_postmeta` VALUES (166, 50, 'field_5b4282f734c73', 'a:8:{s:3:\"key\";s:19:\"field_5b4282f734c73\";s:5:\"label\";s:7:\"Slide 5\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b427014cc9ba\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}');
INSERT INTO `wp_postmeta` VALUES (169, 40, 'slide_1_title', '');
INSERT INTO `wp_postmeta` VALUES (170, 40, '_slide_1_title', 'field_5b427f3deb831');
INSERT INTO `wp_postmeta` VALUES (171, 40, 'slide_1_content', '');
INSERT INTO `wp_postmeta` VALUES (172, 40, '_slide_1_content', 'field_5b427f5beb832');
INSERT INTO `wp_postmeta` VALUES (173, 40, 'slide_2_title', '');
INSERT INTO `wp_postmeta` VALUES (174, 40, '_slide_2_title', 'field_5b42800a595fb');
INSERT INTO `wp_postmeta` VALUES (175, 40, 'slide_2_content', '');
INSERT INTO `wp_postmeta` VALUES (176, 40, '_slide_2_content', 'field_5b42801e595fc');
INSERT INTO `wp_postmeta` VALUES (177, 40, 'slide_3_title', '');
INSERT INTO `wp_postmeta` VALUES (178, 40, '_slide_3_title', 'field_5b428031595fd');
INSERT INTO `wp_postmeta` VALUES (179, 40, 'slide_3_content', '');
INSERT INTO `wp_postmeta` VALUES (180, 40, '_slide_3_content', 'field_5b428041595fe');
INSERT INTO `wp_postmeta` VALUES (181, 40, 'slide_4_title', '');
INSERT INTO `wp_postmeta` VALUES (182, 40, '_slide_4_title', 'field_5b428059595ff');
INSERT INTO `wp_postmeta` VALUES (183, 40, 'slide_4_content', '');
INSERT INTO `wp_postmeta` VALUES (184, 40, '_slide_4_content', 'field_5b42806659600');
INSERT INTO `wp_postmeta` VALUES (185, 40, 'slide_5_title', '');
INSERT INTO `wp_postmeta` VALUES (186, 40, '_slide_5_title', 'field_5b42807659601');
INSERT INTO `wp_postmeta` VALUES (187, 40, 'slide_5_content', '');
INSERT INTO `wp_postmeta` VALUES (188, 40, '_slide_5_content', 'field_5b42808959602');
INSERT INTO `wp_postmeta` VALUES (189, 42, 'slide_1_title', 'Pembayaran Online');
INSERT INTO `wp_postmeta` VALUES (190, 42, '_slide_1_title', 'field_5b427f3deb831');
INSERT INTO `wp_postmeta` VALUES (191, 42, 'slide_1_content', '<img class=\"alignnone size-full wp-image-53\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/layanan1.png\" alt=\"\" width=\"1359\" height=\"560\" />');
INSERT INTO `wp_postmeta` VALUES (192, 42, '_slide_1_content', 'field_5b427f5beb832');
INSERT INTO `wp_postmeta` VALUES (193, 42, 'slide_2_title', 'Managemen Pembayaran');
INSERT INTO `wp_postmeta` VALUES (194, 42, '_slide_2_title', 'field_5b42800a595fb');
INSERT INTO `wp_postmeta` VALUES (195, 42, 'slide_2_content', '<img class=\"alignnone size-full wp-image-54\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/layanan2.png\" alt=\"\" width=\"1341\" height=\"566\" />');
INSERT INTO `wp_postmeta` VALUES (196, 42, '_slide_2_content', 'field_5b42801e595fc');
INSERT INTO `wp_postmeta` VALUES (197, 42, 'slide_3_title', 'Laporan Keuangan Transaparan');
INSERT INTO `wp_postmeta` VALUES (198, 42, '_slide_3_title', 'field_5b428031595fd');
INSERT INTO `wp_postmeta` VALUES (199, 42, 'slide_3_content', '<img class=\"alignnone size-full wp-image-55\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/layanan3.png\" alt=\"\" width=\"1359\" height=\"553\" />');
INSERT INTO `wp_postmeta` VALUES (200, 42, '_slide_3_content', 'field_5b428041595fe');
INSERT INTO `wp_postmeta` VALUES (201, 42, 'slide_4_title', '');
INSERT INTO `wp_postmeta` VALUES (202, 42, '_slide_4_title', 'field_5b428059595ff');
INSERT INTO `wp_postmeta` VALUES (203, 42, 'slide_4_content', '');
INSERT INTO `wp_postmeta` VALUES (204, 42, '_slide_4_content', 'field_5b42806659600');
INSERT INTO `wp_postmeta` VALUES (205, 42, 'slide_5_title', '');
INSERT INTO `wp_postmeta` VALUES (206, 42, '_slide_5_title', 'field_5b42807659601');
INSERT INTO `wp_postmeta` VALUES (207, 42, 'slide_5_content', '');
INSERT INTO `wp_postmeta` VALUES (208, 42, '_slide_5_content', 'field_5b42808959602');
INSERT INTO `wp_postmeta` VALUES (213, 58, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (214, 58, '_edit_lock', '1531122835:1');
INSERT INTO `wp_postmeta` VALUES (215, 59, '_wp_attached_file', '2018/07/gender-male-3-512.png');
INSERT INTO `wp_postmeta` VALUES (216, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2018/07/gender-male-3-512.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"gender-male-3-512-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"gender-male-3-512-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (217, 58, 'type', 'slider');
INSERT INTO `wp_postmeta` VALUES (218, 58, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (219, 58, 'slide_1_title', 'Testimoni');
INSERT INTO `wp_postmeta` VALUES (220, 58, '_slide_1_title', 'field_5b427f3deb831');
INSERT INTO `wp_postmeta` VALUES (221, 58, 'slide_1_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (222, 58, '_slide_1_content', 'field_5b427f5beb832');
INSERT INTO `wp_postmeta` VALUES (223, 58, 'slide_2_title', '');
INSERT INTO `wp_postmeta` VALUES (224, 58, '_slide_2_title', 'field_5b42800a595fb');
INSERT INTO `wp_postmeta` VALUES (225, 58, 'slide_2_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (226, 58, '_slide_2_content', 'field_5b42801e595fc');
INSERT INTO `wp_postmeta` VALUES (227, 58, 'slide_3_title', '');
INSERT INTO `wp_postmeta` VALUES (228, 58, '_slide_3_title', 'field_5b428031595fd');
INSERT INTO `wp_postmeta` VALUES (229, 58, 'slide_3_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (230, 58, '_slide_3_content', 'field_5b428041595fe');
INSERT INTO `wp_postmeta` VALUES (231, 58, 'slide_4_title', '');
INSERT INTO `wp_postmeta` VALUES (232, 58, '_slide_4_title', 'field_5b428059595ff');
INSERT INTO `wp_postmeta` VALUES (233, 58, 'slide_4_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (234, 58, '_slide_4_content', 'field_5b42806659600');
INSERT INTO `wp_postmeta` VALUES (235, 58, 'slide_5_title', '');
INSERT INTO `wp_postmeta` VALUES (236, 58, '_slide_5_title', 'field_5b42807659601');
INSERT INTO `wp_postmeta` VALUES (237, 58, 'slide_5_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (238, 58, '_slide_5_content', 'field_5b42808959602');
INSERT INTO `wp_postmeta` VALUES (239, 60, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (240, 60, '_edit_lock', '1531121835:1');
INSERT INTO `wp_postmeta` VALUES (241, 50, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"service_content\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (242, 50, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"other_content\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}');
INSERT INTO `wp_postmeta` VALUES (243, 61, '_wp_attached_file', '2018/07/Logo-Bank-Indonesia.png');
INSERT INTO `wp_postmeta` VALUES (244, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1380;s:6:\"height\";i:1380;s:4:\"file\";s:31:\"2018/07/Logo-Bank-Indonesia.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Logo-Bank-Indonesia-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Logo-Bank-Indonesia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Logo-Bank-Indonesia-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Logo-Bank-Indonesia-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (245, 60, 'type', 'slider');
INSERT INTO `wp_postmeta` VALUES (246, 60, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (247, 60, 'slide_1_content', 'Business Partner Slide 1');
INSERT INTO `wp_postmeta` VALUES (248, 60, '_slide_1_content', 'field_5b427f5beb832');
INSERT INTO `wp_postmeta` VALUES (249, 60, 'slide_2_content', 'Business Partner Slide 2');
INSERT INTO `wp_postmeta` VALUES (250, 60, '_slide_2_content', 'field_5b42801e595fc');
INSERT INTO `wp_postmeta` VALUES (251, 60, 'slide_3_content', 'Business Partner Slide 3');
INSERT INTO `wp_postmeta` VALUES (252, 60, '_slide_3_content', 'field_5b428041595fe');
INSERT INTO `wp_postmeta` VALUES (253, 60, 'slide_4_content', '');
INSERT INTO `wp_postmeta` VALUES (254, 60, '_slide_4_content', 'field_5b42806659600');
INSERT INTO `wp_postmeta` VALUES (255, 60, 'slide_5_content', '');
INSERT INTO `wp_postmeta` VALUES (256, 60, '_slide_5_content', 'field_5b42808959602');
INSERT INTO `wp_postmeta` VALUES (259, 58, '_wp_trash_meta_status', 'future');
INSERT INTO `wp_postmeta` VALUES (260, 58, '_wp_trash_meta_time', '1531122984');
INSERT INTO `wp_postmeta` VALUES (261, 58, '_wp_desired_post_slug', 'testimoni');
INSERT INTO `wp_postmeta` VALUES (262, 60, '_wp_trash_meta_status', 'future');
INSERT INTO `wp_postmeta` VALUES (263, 60, '_wp_trash_meta_time', '1531122986');
INSERT INTO `wp_postmeta` VALUES (264, 60, '_wp_desired_post_slug', 'business-partner');
INSERT INTO `wp_postmeta` VALUES (265, 63, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (266, 63, 'type', 'slider');
INSERT INTO `wp_postmeta` VALUES (267, 63, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (268, 63, 'slide_1_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, doloribus natus ratione nostrum veniam, nemo quaerat minima magnam nobis totam tempora quas culpa ab libero! Facere quo facilis error enim.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (269, 63, '_slide_1_content', 'field_5b427f5beb832');
INSERT INTO `wp_postmeta` VALUES (270, 63, 'slide_2_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, doloribus natus ratione nostrum veniam, nemo quaerat minima magnam nobis totam tempora quas culpa ab libero! Facere quo facilis error enim.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (271, 63, '_slide_2_content', 'field_5b42801e595fc');
INSERT INTO `wp_postmeta` VALUES (272, 63, 'slide_3_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, doloribus natus ratione nostrum veniam, nemo quaerat minima magnam nobis totam tempora quas culpa ab libero! Facere quo facilis error enim.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (273, 63, '_slide_3_content', 'field_5b428041595fe');
INSERT INTO `wp_postmeta` VALUES (274, 63, 'slide_4_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, doloribus natus ratione nostrum veniam, nemo quaerat minima magnam nobis totam tempora quas culpa ab libero! Facere quo facilis error enim.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (275, 63, '_slide_4_content', 'field_5b42806659600');
INSERT INTO `wp_postmeta` VALUES (276, 63, 'slide_5_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png\" alt=\"\" width=\"512\" height=\"512\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Nama</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, doloribus natus ratione nostrum veniam, nemo quaerat minima magnam nobis totam tempora quas culpa ab libero! Facere quo facilis error enim.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (277, 63, '_slide_5_content', 'field_5b42808959602');
INSERT INTO `wp_postmeta` VALUES (278, 63, '_edit_lock', '1531122995:1');
INSERT INTO `wp_postmeta` VALUES (279, 64, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (280, 64, '_edit_lock', '1531123280:1');
INSERT INTO `wp_postmeta` VALUES (281, 64, 'type', 'slider');
INSERT INTO `wp_postmeta` VALUES (282, 64, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (283, 64, 'slide_1_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Logo-Bank-Indonesia.png\" alt=\"\" width=\"1380\" height=\"1380\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Berizin Bank Indonesia</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, doloribus obcaecati. Atque libero, laboriosam odio labore minima ipsa, soluta corrupti perferendis enim tenetur omnis. Voluptates veniam fuga esse quidem ad.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (284, 64, '_slide_1_content', 'field_5b427f5beb832');
INSERT INTO `wp_postmeta` VALUES (285, 64, 'slide_2_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Logo-Bank-Indonesia.png\" alt=\"\" width=\"1380\" height=\"1380\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Berizin Bank Indonesia</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, doloribus obcaecati. Atque libero, laboriosam odio labore minima ipsa, soluta corrupti perferendis enim tenetur omnis. Voluptates veniam fuga esse quidem ad.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (286, 64, '_slide_2_content', 'field_5b42801e595fc');
INSERT INTO `wp_postmeta` VALUES (287, 64, 'slide_3_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Logo-Bank-Indonesia.png\" alt=\"\" width=\"1380\" height=\"1380\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Berizin Bank Indonesia</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, doloribus obcaecati. Atque libero, laboriosam odio labore minima ipsa, soluta corrupti perferendis enim tenetur omnis. Voluptates veniam fuga esse quidem ad.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (288, 64, '_slide_3_content', 'field_5b428041595fe');
INSERT INTO `wp_postmeta` VALUES (289, 64, 'slide_4_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Logo-Bank-Indonesia.png\" alt=\"\" width=\"1380\" height=\"1380\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Berizin Bank Indonesia</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, doloribus obcaecati. Atque libero, laboriosam odio labore minima ipsa, soluta corrupti perferendis enim tenetur omnis. Voluptates veniam fuga esse quidem ad.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (290, 64, '_slide_4_content', 'field_5b42806659600');
INSERT INTO `wp_postmeta` VALUES (291, 64, 'slide_5_content', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-full wp-image-61\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Logo-Bank-Indonesia.png\" alt=\"\" width=\"1380\" height=\"1380\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Berizin Bank Indonesia</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, doloribus obcaecati. Atque libero, laboriosam odio labore minima ipsa, soluta corrupti perferendis enim tenetur omnis. Voluptates veniam fuga esse quidem ad.\r\n\r\n[/column]\r\n[/row]');
INSERT INTO `wp_postmeta` VALUES (292, 64, '_slide_5_content', 'field_5b42808959602');
INSERT INTO `wp_postmeta` VALUES (293, 65, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (294, 65, '_edit_lock', '1531123332:1');
INSERT INTO `wp_postmeta` VALUES (295, 66, '_wp_attached_file', '2018/07/metode1.png');
INSERT INTO `wp_postmeta` VALUES (296, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1370;s:6:\"height\";i:653;s:4:\"file\";s:19:\"2018/07/metode1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"metode1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"metode1-300x143.png\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"metode1-768x366.png\";s:5:\"width\";i:768;s:6:\"height\";i:366;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"metode1-1024x488.png\";s:5:\"width\";i:1024;s:6:\"height\";i:488;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (297, 67, '_wp_attached_file', '2018/07/metode2.png');
INSERT INTO `wp_postmeta` VALUES (298, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1368;s:6:\"height\";i:640;s:4:\"file\";s:19:\"2018/07/metode2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"metode2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"metode2-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"metode2-768x359.png\";s:5:\"width\";i:768;s:6:\"height\";i:359;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"metode2-1024x479.png\";s:5:\"width\";i:1024;s:6:\"height\";i:479;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (299, 68, '_wp_attached_file', '2018/07/metode3.png');
INSERT INTO `wp_postmeta` VALUES (300, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1377;s:6:\"height\";i:628;s:4:\"file\";s:19:\"2018/07/metode3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"metode3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"metode3-300x137.png\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"metode3-768x350.png\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"metode3-1024x467.png\";s:5:\"width\";i:1024;s:6:\"height\";i:467;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (301, 65, 'type', 'slider');
INSERT INTO `wp_postmeta` VALUES (302, 65, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (303, 65, 'slide_1_content', '<img class=\"alignnone size-full wp-image-66\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/metode1.png\" alt=\"\" width=\"1370\" height=\"653\" />');
INSERT INTO `wp_postmeta` VALUES (304, 65, '_slide_1_content', 'field_5b427f5beb832');
INSERT INTO `wp_postmeta` VALUES (305, 65, 'slide_2_content', '<img class=\"alignnone size-full wp-image-67\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/metode2.png\" alt=\"\" width=\"1368\" height=\"640\" />');
INSERT INTO `wp_postmeta` VALUES (306, 65, '_slide_2_content', 'field_5b42801e595fc');
INSERT INTO `wp_postmeta` VALUES (307, 65, 'slide_3_content', '<img class=\"alignnone size-full wp-image-68\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/metode3.png\" alt=\"\" width=\"1377\" height=\"628\" />');
INSERT INTO `wp_postmeta` VALUES (308, 65, '_slide_3_content', 'field_5b428041595fe');
INSERT INTO `wp_postmeta` VALUES (309, 65, 'slide_4_content', '');
INSERT INTO `wp_postmeta` VALUES (310, 65, '_slide_4_content', 'field_5b42806659600');
INSERT INTO `wp_postmeta` VALUES (311, 65, 'slide_5_content', '');
INSERT INTO `wp_postmeta` VALUES (312, 65, '_slide_5_content', 'field_5b42808959602');
INSERT INTO `wp_postmeta` VALUES (313, 69, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (314, 69, '_edit_lock', '1531123490:1');
INSERT INTO `wp_postmeta` VALUES (315, 70, '_wp_attached_file', '2018/07/tracking.png');
INSERT INTO `wp_postmeta` VALUES (316, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1363;s:6:\"height\";i:643;s:4:\"file\";s:20:\"2018/07/tracking.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tracking-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tracking-300x142.png\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tracking-768x362.png\";s:5:\"width\";i:768;s:6:\"height\";i:362;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"tracking-1024x483.png\";s:5:\"width\";i:1024;s:6:\"height\";i:483;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (317, 69, 'type', 'content');
INSERT INTO `wp_postmeta` VALUES (318, 69, '_type', 'field_5b427014cc9ba');
INSERT INTO `wp_postmeta` VALUES (319, 69, 'content', '<img class=\"alignnone size-full wp-image-70\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/tracking.png\" alt=\"\" width=\"1363\" height=\"643\" />');
INSERT INTO `wp_postmeta` VALUES (320, 69, '_content', 'field_5b42718e263c0');
INSERT INTO `wp_postmeta` VALUES (321, 71, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (322, 71, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES (323, 72, '_bs3_grid_builder_active', '');
INSERT INTO `wp_postmeta` VALUES (324, 72, '_bs3_grid_builder_db_version', '');
INSERT INTO `wp_postmeta` VALUES (325, 72, '_bs3_grid_builder_row_ids', '');
INSERT INTO `wp_postmeta` VALUES (326, 72, '_bs3_grid_builder_rows', '');
INSERT INTO `wp_postmeta` VALUES (327, 72, '_bs3_grid_builder_items', '');
INSERT INTO `wp_postmeta` VALUES (328, 72, '_bs3_grid_builder_custom_js', '');
INSERT INTO `wp_postmeta` VALUES (329, 72, '_bs3_grid_builder_custom_css', '');
INSERT INTO `wp_postmeta` VALUES (330, 71, '_edit_lock', '1531364959:1');
INSERT INTO `wp_postmeta` VALUES (331, 73, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES (332, 73, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (333, 73, '_menu_item_object_id', '10');
INSERT INTO `wp_postmeta` VALUES (334, 73, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES (335, 73, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (336, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (337, 73, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (338, 73, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES (339, 73, '_menu_item_orphaned', '1531380545');
INSERT INTO `wp_postmeta` VALUES (340, 74, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES (341, 74, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (342, 74, '_menu_item_object_id', '71');
INSERT INTO `wp_postmeta` VALUES (343, 74, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES (344, 74, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (345, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (346, 74, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (347, 74, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES (348, 74, '_menu_item_orphaned', '1531380545');
INSERT INTO `wp_postmeta` VALUES (349, 75, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES (350, 75, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (351, 75, '_menu_item_object_id', '10');
INSERT INTO `wp_postmeta` VALUES (352, 75, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES (353, 75, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (354, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (355, 75, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (356, 75, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES (357, 75, '_menu_item_orphaned', '1531380545');
INSERT INTO `wp_postmeta` VALUES (358, 76, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES (359, 76, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (360, 76, '_menu_item_object_id', '71');
INSERT INTO `wp_postmeta` VALUES (361, 76, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES (362, 76, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (363, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (364, 76, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (365, 76, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES (376, 78, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES (377, 78, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (378, 78, '_menu_item_object_id', '78');
INSERT INTO `wp_postmeta` VALUES (379, 78, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES (380, 78, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (381, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (382, 78, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (383, 78, '_menu_item_url', '#about-section');
INSERT INTO `wp_postmeta` VALUES (385, 79, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES (386, 79, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (387, 79, '_menu_item_object_id', '79');
INSERT INTO `wp_postmeta` VALUES (388, 79, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES (389, 79, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (390, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (391, 79, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (392, 79, '_menu_item_url', '#function-section');
INSERT INTO `wp_postmeta` VALUES (394, 80, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES (395, 80, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (396, 80, '_menu_item_object_id', '80');
INSERT INTO `wp_postmeta` VALUES (397, 80, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES (398, 80, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (399, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (400, 80, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (401, 80, '_menu_item_url', '#service-section');
INSERT INTO `wp_postmeta` VALUES (403, 81, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES (404, 81, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (405, 81, '_menu_item_object_id', '81');
INSERT INTO `wp_postmeta` VALUES (406, 81, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES (407, 81, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (408, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (409, 81, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (410, 81, '_menu_item_url', '#advantages-section');
INSERT INTO `wp_postmeta` VALUES (412, 82, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES (413, 82, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES (414, 82, '_menu_item_object_id', '82');
INSERT INTO `wp_postmeta` VALUES (415, 82, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES (416, 82, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES (417, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (418, 82, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES (419, 82, '_menu_item_url', '#testimonial-section');

-- ----------------------------
-- Table structure for wp_posts
-- ----------------------------
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime(0) NOT NULL,
  `post_date_gmt` datetime(0) NOT NULL,
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime(0) NOT NULL,
  `post_modified_gmt` datetime(0) NOT NULL,
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `post_name`(`post_name`(191)) USING BTREE,
  INDEX `type_status_date`(`post_type`, `post_status`, `post_date`, `ID`) USING BTREE,
  INDEX `post_parent`(`post_parent`) USING BTREE,
  INDEX `post_author`(`post_author`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_posts
-- ----------------------------
INSERT INTO `wp_posts` VALUES (1, 1, '2018-07-07 18:17:55', '2018-07-07 18:17:55', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-07 18:17:55', '2018-07-07 18:17:55', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 3);
INSERT INTO `wp_posts` VALUES (2, 1, '2018-07-07 18:17:55', '2018-07-07 18:17:55', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-07-08 09:41:02', '2018-07-08 09:41:02', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (3, 1, '2018-07-07 18:17:55', '2018-07-07 18:17:55', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-07-08 09:41:04', '2018-07-08 09:41:04', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (6, 1, '2018-07-08 09:33:30', '2018-07-08 09:33:30', '', 'Home', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-07-08 09:33:30', '2018-07-08 09:33:30', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (7, 1, '2018-07-08 09:31:51', '2018-07-08 09:31:51', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2018-07-08 09:33:32', '2018-07-08 09:33:32', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (8, 1, '2018-07-08 09:31:51', '2018-07-08 09:31:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-08 09:31:51', '2018-07-08 09:31:51', '', 7, 'http://localhost/wordpress/2018/07/08/7-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (9, 1, '2018-07-08 09:33:30', '2018-07-08 09:33:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-07-08 09:33:30', '2018-07-08 09:33:30', '', 6, 'http://localhost/wordpress/2018/07/08/6-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (10, 1, '2018-07-08 09:33:42', '2018-07-08 09:33:42', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-08 09:33:42', '2018-07-08 09:33:42', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (11, 1, '2018-07-08 09:33:42', '2018-07-08 09:33:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-07-08 09:33:42', '2018-07-08 09:33:42', '', 10, 'http://localhost/wordpress/2018/07/08/10-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (12, 1, '2018-07-08 09:41:02', '2018-07-08 09:41:02', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-08 09:41:02', '2018-07-08 09:41:02', '', 2, 'http://localhost/wordpress/2018/07/08/2-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (13, 1, '2018-07-08 09:41:04', '2018-07-08 09:41:04', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-08 09:41:04', '2018-07-08 09:41:04', '', 3, 'http://localhost/wordpress/2018/07/08/3-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (16, 1, '2018-07-08 10:03:24', '2018-07-08 10:03:24', '<h1 style=\"text-align: center;\">About Toppay</h1>\r\n<p style=\"text-align: center;\">Sebuah jasa manajemen pembayaran berbasis aplikasi yang bisa digunakan sehari - hari pada smartphone dengan tujuan memudahkan penggunaannya dalam merekapitulasi serta melakukan transaksi-transaksi yang selama ini dilakukan secara manual / buku</p>\r\n\r\n<h2 style=\"text-align: center;\">Visi Toppay</h2>\r\n<p style=\"text-align: center;\">Visi toppay adalah mitra utama nan terpercaya bagi masyarakat, sehingga berperan penting dalam memakmurkan para mitranya</p>', 'What', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-07-08 10:03:47', '2018-07-08 10:03:47', '', 0, 'http://localhost/wordpress/?post_type=about_content&#038;p=16', 0, 'about_content', '', 0);
INSERT INTO `wp_posts` VALUES (17, 1, '2018-07-08 10:05:25', '2018-07-08 10:05:25', '<h1 style=\"text-align: center;\">Untuk Siapa Toppay</h1>\r\n<p style=\"text-align: center;\">Toppay merupakan aplikasi yangf lahir dari kebutuhan masyarakat yang acap kali mengalami kesulitan dalam melakukan pencatatan keuangan dalam kegiatan sehari-hari. Aplikasi ini diperuntukan bagi siapa saja yang ingin memiliki pencatatan pengeluaran dan pemasukan.</p>\r\n<p style=\"text-align: center;\">Sebagai contoh, seorang tukang kredit keliling senantiasa membawa buku kecil kemanapun ia pergi. Buku tersebut merupakan alat utama dari tukang kredit tersebut, karena buku itu adalah catatan lengkap mengenai utang piutang serta periode pembayaran dari debiturnya.</p>', 'Who', '', 'publish', 'closed', 'closed', '', 'who', '', '', '2018-07-08 18:03:53', '2018-07-08 18:03:53', '', 0, 'http://localhost/wordpress/?post_type=about_content&#038;p=17', 0, 'about_content', '', 0);
INSERT INTO `wp_posts` VALUES (19, 1, '2018-07-08 10:06:44', '2018-07-08 10:06:44', '<h1 style=\"text-align: center;\">Mengapa Toppay?</h1>\r\n<p style=\"text-align: center;\">Toppay didirikan oleh orang-orang yang berpengalaman dalam melakukan pekerjaan lapangan serta pencatatan yang kompleks. Data-data yang kompleks tersebut digunakan dalam menganalisa hasil pasar dan diolah menjadi sebuah informasi yang solid sebagai dasar dalam pengambilan keputusan. Pengalaman demi pengalaman diperoleh akhirnya membuat kami yakin bahwa toppay akan menjadi jawaban atas kendala yang ada dan dirasakan masyarakat saat ini dalam pencatatan transaksi yang kompleks.</p>', 'Why', '', 'publish', 'closed', 'closed', '', 'why', '', '', '2018-07-09 09:03:33', '2018-07-09 09:03:33', '', 0, 'http://localhost/wordpress/?post_type=about_content&#038;p=19', 0, 'about_content', '', 0);
INSERT INTO `wp_posts` VALUES (21, 1, '2018-07-08 15:55:02', '2018-07-08 15:55:02', '', 'Function Image', '', 'trash', 'closed', 'closed', '', 'acf_function-image__trashed', '', '', '2018-07-08 15:56:24', '2018-07-08 15:56:24', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=21', 0, 'acf', '', 0);
INSERT INTO `wp_posts` VALUES (27, 1, '2018-07-08 15:58:14', '2018-07-08 15:58:14', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-medium wp-image-30\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/PEMBAYARAN-ONLINE-300x155.png\" alt=\"\" width=\"300\" height=\"155\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Fungsi pembayaran online.</h1>\r\nToppay merupakan aplikasi yang diperuntukkan sebagai aplikasi yang dapat membantu kalian dalam membayar secara online, sehingga memiliki fungsi pembayaran online. Tidak hanya pencatatan pemasukan dan pengeluaran, toppay juga didukung dengan fungsi pembayaran online yang memudahkan para pengguna yang dalam hal ini disebut “tertagih/ member\" dan “kolektor/admin”.\r\n\r\n“tertagih/member” akan mendapatkan notifikasi tagihan dari “kolektor/admin” yang diikuti dengan berbagai macam pilihan pembayaran melalui beberapa saluran seperti direct transfer, virtual account transfer, credit card &amp; retail payment.\r\n\r\n[/column]\r\n[/row]\r\n\r\n&nbsp;', 'Pembayaran Online', '', 'publish', 'closed', 'closed', '', 'pembayaran-online', '', '', '2018-07-08 16:57:52', '2018-07-08 16:57:52', '', 0, 'http://localhost/wordpress/?post_type=function_content&#038;p=27', 0, 'function_content', '', 0);
INSERT INTO `wp_posts` VALUES (28, 1, '2018-07-08 16:00:05', '2018-07-08 16:00:05', '', 'DISTRIBUSI PEMBAYARAN', '', 'inherit', 'open', 'closed', '', 'distribusi-pembayaran', '', '', '2018-07-08 16:00:05', '2018-07-08 16:00:05', '', 27, 'http://localhost/wordpress/wp-content/uploads/2018/07/DISTRIBUSI-PEMBAYARAN.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (30, 1, '2018-07-08 16:01:19', '2018-07-08 16:01:19', '', 'PEMBAYARAN ONLINE', '', 'inherit', 'open', 'closed', '', 'pembayaran-online-2', '', '', '2018-07-08 16:01:19', '2018-07-08 16:01:19', '', 27, 'http://localhost/wordpress/wp-content/uploads/2018/07/PEMBAYARAN-ONLINE.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (31, 1, '2018-07-08 16:02:13', '2018-07-08 16:02:13', '', 'MANAGEMEN PEMBAYARAN1', '', 'inherit', 'open', 'closed', '', 'managemen-pembayaran1', '', '', '2018-07-08 16:02:13', '2018-07-08 16:02:13', '', 27, 'http://localhost/wordpress/wp-content/uploads/2018/07/MANAGEMEN-PEMBAYARAN1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (32, 1, '2018-07-08 16:03:40', '2018-07-08 16:03:40', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-medium wp-image-28\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/DISTRIBUSI-PEMBAYARAN-300x238.png\" alt=\"\" width=\"300\" height=\"238\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Distribusi pembayaran online</h1>\r\nFungsi distribusi pembayaran adalah salah satu fungsi yang membedakan toppay dengan aplikasi lainnya, toppay menghadirkan kemudahan distribusi transaksi pembayaran bagi para “kolektor/admin” yang memiliki tagihan kepada anggotanya.\r\n\r\nContoh : tukang kredit keliling, mempunyai karyawan yang bertanggungjawab dalam urusan Gudang, tukang kredit sebagai “kolektor/admin” bagi para pelanggan kreditnya “tertagih/member” akan berposisi menjadi “tertagih” bagi karyawannya saat jatuh tempo (tanggal terima gaji) karena karyawannya telah selesai melakukan kewajibannya.\r\n\r\n[/column]\r\n[/row]\r\n\r\n&nbsp;', 'Distribusi Pembayaran', '', 'publish', 'closed', 'closed', '', 'distribusi-pembayaran', '', '', '2018-07-08 16:57:45', '2018-07-08 16:57:45', '', 0, 'http://localhost/wordpress/?post_type=function_content&#038;p=32', 0, 'function_content', '', 0);
INSERT INTO `wp_posts` VALUES (33, 1, '2018-07-08 16:04:39', '2018-07-08 16:04:39', '[row]\r\n[column md=\"4\"]\r\n<img class=\"alignnone size-medium wp-image-31\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/MANAGEMEN-PEMBAYARAN1-292x300.png\" alt=\"\" width=\"292\" height=\"300\" />\r\n[/column]\r\n[column md=\"8\"]\r\n<h1>Managemen Pembayaran Online</h1>\r\nToppay melakukan pencatatan pemasukkan dan pengeluaran yang dilakukan oleh sebuah komunitas dan kemudian diolah dan disusun dalam bentuk laporan sehingga dapat membantu “kolektor/admin” dalam melakukan pengecekan pembayaran tiap tagihannya maupun “tertagih/member” yang ingin mendapatkan laporan penggunaan keuangan tersebut.\r\n\r\n[/column]\r\n[/row]\r\n\r\n&nbsp;', 'Managemen Pembayaran', '', 'publish', 'closed', 'closed', '', 'managemen-pembayaran', '', '', '2018-07-08 16:58:09', '2018-07-08 16:58:09', '', 0, 'http://localhost/wordpress/?post_type=function_content&#038;p=33', 0, 'function_content', '', 0);
INSERT INTO `wp_posts` VALUES (36, 1, '2018-07-08 16:49:31', '2018-07-08 16:49:31', '[row]\n[column md=\"4\"]\n\n[/column]\n[column md=\"8\"]\n<h1>Fungsi pembayaran online.</h1>\nToppay merupakan aplikasi yang diperuntukkan sebagai aplikasi yang dapat membantu kalian dalam membayar secara online, sehingga memiliki fungsi pembayaran online. Tidak hanya pencatatan pemasukan dan pengeluaran, toppay juga didukung dengan fungsi pembayaran online yang memudahkan para pengguna yang dalam hal ini disebut “tertagih/ member\" dan “kolektor/admin”.\n\n“tertagih/member” akan mendapatkan notifikasi tagihan dari “kolektor/admin” yang diikuti dengan berbagai macam pilihan pembayaran melalui beberapa saluran seperti direct transfer, virtual account transfer, credit card &amp; retail payment.\n\n[/column]\n[/row]\n\n&nbsp;', 'Pembayaran Online', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2018-07-08 16:49:31', '2018-07-08 16:49:31', '', 27, 'http://localhost/wordpress/2018/07/08/27-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (38, 1, '2018-07-08 17:50:42', '2018-07-08 17:50:42', '<img class=\"alignnone size-full wp-image-39\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Capture.png\" alt=\"\" width=\"1373\" height=\"651\" />', 'Kendala', '', 'publish', 'closed', 'closed', '', 'kendala', '', '', '2018-07-08 21:00:51', '2018-07-08 21:00:51', '', 0, 'http://localhost/wordpress/?post_type=service_content&#038;p=38', 0, 'service_content', '', 0);
INSERT INTO `wp_posts` VALUES (39, 1, '2018-07-08 17:50:31', '2018-07-08 17:50:31', '', 'Capture', '', 'inherit', 'open', 'closed', '', 'capture', '', '', '2018-07-08 17:50:31', '2018-07-08 17:50:31', '', 38, 'http://localhost/wordpress/wp-content/uploads/2018/07/Capture.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (40, 1, '2018-07-08 17:59:32', '2018-07-08 17:59:32', '<img class=\"alignnone size-full wp-image-41\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Capture2.png\" alt=\"\" width=\"1361\" height=\"651\" />', 'Solusi', '', 'publish', 'closed', 'closed', '', 'solusi', '', '', '2018-07-09 00:41:27', '2018-07-09 00:41:27', '', 0, 'http://localhost/wordpress/?post_type=service_content&#038;p=40', 0, 'service_content', '', 0);
INSERT INTO `wp_posts` VALUES (41, 1, '2018-07-08 17:59:28', '2018-07-08 17:59:28', '', 'Capture2', '', 'inherit', 'open', 'closed', '', 'capture2', '', '', '2018-07-08 17:59:28', '2018-07-08 17:59:28', '', 40, 'http://localhost/wordpress/wp-content/uploads/2018/07/Capture2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (42, 1, '2018-07-08 18:02:35', '2018-07-08 18:02:35', '<p style=\"text-align: center;\">Inner Slider (On Progress)</p>', 'Layanan Toppay', '', 'publish', 'closed', 'closed', '', 'layanan-toppay', '', '', '2018-07-09 00:43:07', '2018-07-09 00:43:07', '', 0, 'http://localhost/wordpress/?post_type=service_content&#038;p=42', 0, 'service_content', '', 0);
INSERT INTO `wp_posts` VALUES (44, 1, '2018-07-08 18:10:55', '2018-07-08 18:10:55', '<img class=\"alignnone size-full wp-image-45\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/kelebihan1.png\" alt=\"\" width=\"1370\" height=\"661\" />', 'Laporan Keuangan', '', 'publish', 'closed', 'closed', '', 'laporan-keuangan', '', '', '2018-07-08 18:10:55', '2018-07-08 18:10:55', '', 0, 'http://localhost/wordpress/?post_type=advantage_content&#038;p=44', 0, 'advantage_content', '', 0);
INSERT INTO `wp_posts` VALUES (45, 1, '2018-07-08 18:10:46', '2018-07-08 18:10:46', '', 'kelebihan1', '', 'inherit', 'open', 'closed', '', 'kelebihan1', '', '', '2018-07-08 18:10:46', '2018-07-08 18:10:46', '', 44, 'http://localhost/wordpress/wp-content/uploads/2018/07/kelebihan1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (46, 1, '2018-07-08 19:56:14', '2018-07-08 19:56:14', '<img class=\"alignnone size-full wp-image-47\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/kelebihan2.png\" alt=\"\" width=\"1351\" height=\"625\" />', 'Verifikasi Pembayaran', '', 'publish', 'closed', 'closed', '', 'verifikasi-pembayaran', '', '', '2018-07-08 19:56:14', '2018-07-08 19:56:14', '', 0, 'http://localhost/wordpress/?post_type=advantage_content&#038;p=46', 0, 'advantage_content', '', 0);
INSERT INTO `wp_posts` VALUES (47, 1, '2018-07-08 19:56:06', '2018-07-08 19:56:06', '', 'kelebihan2', '', 'inherit', 'open', 'closed', '', 'kelebihan2', '', '', '2018-07-08 19:56:06', '2018-07-08 19:56:06', '', 46, 'http://localhost/wordpress/wp-content/uploads/2018/07/kelebihan2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (48, 1, '2018-07-08 19:56:43', '2018-07-08 19:56:43', '<img class=\"alignnone size-full wp-image-49\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/Kelebihan3.png\" alt=\"\" width=\"1347\" height=\"626\" />', 'Penggunaan Komperhensif', '', 'publish', 'closed', 'closed', '', 'penggunaan-komperhensif', '', '', '2018-07-08 19:56:43', '2018-07-08 19:56:43', '', 0, 'http://localhost/wordpress/?post_type=advantage_content&#038;p=48', 0, 'advantage_content', '', 0);
INSERT INTO `wp_posts` VALUES (49, 1, '2018-07-08 19:56:38', '2018-07-08 19:56:38', '', 'Kelebihan3', '', 'inherit', 'open', 'closed', '', 'kelebihan3', '', '', '2018-07-08 19:56:38', '2018-07-08 19:56:38', '', 48, 'http://localhost/wordpress/wp-content/uploads/2018/07/Kelebihan3.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (50, 1, '2018-07-08 20:14:53', '2018-07-08 20:14:53', '', 'Content', '', 'publish', 'closed', 'closed', '', 'acf_content', '', '', '2018-07-09 09:07:27', '2018-07-09 09:07:27', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=50', 0, 'acf', '', 0);
INSERT INTO `wp_posts` VALUES (53, 1, '2018-07-08 20:45:16', '2018-07-08 20:45:16', '', 'layanan1', '', 'inherit', 'open', 'closed', '', 'layanan1', '', '', '2018-07-08 20:45:16', '2018-07-08 20:45:16', '', 42, 'http://localhost/wordpress/wp-content/uploads/2018/07/layanan1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (54, 1, '2018-07-08 20:45:17', '2018-07-08 20:45:17', '', 'layanan2', '', 'inherit', 'open', 'closed', '', 'layanan2', '', '', '2018-07-08 20:45:17', '2018-07-08 20:45:17', '', 42, 'http://localhost/wordpress/wp-content/uploads/2018/07/layanan2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (55, 1, '2018-07-08 20:45:18', '2018-07-08 20:45:18', '', 'layanan3', '', 'inherit', 'open', 'closed', '', 'layanan3', '', '', '2018-07-08 20:45:18', '2018-07-08 20:45:18', '', 42, 'http://localhost/wordpress/wp-content/uploads/2018/07/layanan3.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (58, 1, '2018-07-09 09:01:53', '2018-07-09 09:01:53', '', 'Testimoni', '', 'trash', 'closed', 'closed', '', 'testimoni__trashed', '', '', '2018-07-09 07:56:24', '2018-07-09 07:56:24', '', 0, 'http://localhost/wordpress/?post_type=other_content&#038;p=58', 0, 'other_content', '', 0);
INSERT INTO `wp_posts` VALUES (59, 1, '2018-07-09 09:00:43', '2018-07-09 09:00:43', '', 'gender-male-3-512', '', 'inherit', 'open', 'closed', '', 'gender-male-3-512', '', '', '2018-07-09 09:00:43', '2018-07-09 09:00:43', '', 58, 'http://localhost/wordpress/wp-content/uploads/2018/07/gender-male-3-512.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (60, 1, '2018-07-09 09:13:22', '2018-07-09 09:13:22', '', 'Business Partner', '', 'trash', 'closed', 'closed', '', 'business-partner__trashed', '', '', '2018-07-09 07:56:26', '2018-07-09 07:56:26', '', 0, 'http://localhost/wordpress/?post_type=other_content&#038;p=60', 0, 'other_content', '', 0);
INSERT INTO `wp_posts` VALUES (61, 1, '2018-07-09 09:10:55', '2018-07-09 09:10:55', '', 'Logo-Bank-Indonesia', '', 'inherit', 'open', 'closed', '', 'logo-bank-indonesia', '', '', '2018-07-09 09:10:55', '2018-07-09 09:10:55', '', 60, 'http://localhost/wordpress/wp-content/uploads/2018/07/Logo-Bank-Indonesia.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (63, 1, '2018-07-09 07:57:53', '2018-07-09 07:57:53', '', 'Testimoni', '', 'publish', 'closed', 'closed', '', '63', '', '', '2018-07-09 07:58:57', '2018-07-09 07:58:57', '', 0, 'http://localhost/wordpress/?post_type=other_content&#038;p=63', 0, 'other_content', '', 0);
INSERT INTO `wp_posts` VALUES (64, 1, '2018-07-09 08:00:06', '2018-07-09 08:00:06', '', 'Business Partner', '', 'publish', 'closed', 'closed', '', 'business-partner', '', '', '2018-07-09 08:01:49', '2018-07-09 08:01:49', '', 0, 'http://localhost/wordpress/?post_type=other_content&#038;p=64', 0, 'other_content', '', 0);
INSERT INTO `wp_posts` VALUES (65, 1, '2018-07-09 08:04:34', '2018-07-09 08:04:34', '', 'Metode Pengaplikasian', '', 'publish', 'closed', 'closed', '', 'metode-pengaplikasian', '', '', '2018-07-09 08:04:34', '2018-07-09 08:04:34', '', 0, 'http://localhost/wordpress/?post_type=other_content&#038;p=65', 0, 'other_content', '', 0);
INSERT INTO `wp_posts` VALUES (66, 1, '2018-07-09 08:04:11', '2018-07-09 08:04:11', '', 'metode1', '', 'inherit', 'open', 'closed', '', 'metode1', '', '', '2018-07-09 08:04:11', '2018-07-09 08:04:11', '', 65, 'http://localhost/wordpress/wp-content/uploads/2018/07/metode1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (67, 1, '2018-07-09 08:04:20', '2018-07-09 08:04:20', '', 'metode2', '', 'inherit', 'open', 'closed', '', 'metode2', '', '', '2018-07-09 08:04:20', '2018-07-09 08:04:20', '', 65, 'http://localhost/wordpress/wp-content/uploads/2018/07/metode2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (68, 1, '2018-07-09 08:04:30', '2018-07-09 08:04:30', '', 'metode3', '', 'inherit', 'open', 'closed', '', 'metode3', '', '', '2018-07-09 08:04:30', '2018-07-09 08:04:30', '', 65, 'http://localhost/wordpress/wp-content/uploads/2018/07/metode3.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (69, 1, '2018-07-09 08:04:50', '2018-07-09 08:04:50', '', 'Tracking', '', 'publish', 'closed', 'closed', '', 'tracking', '', '', '2018-07-09 08:04:50', '2018-07-09 08:04:50', '', 0, 'http://localhost/wordpress/?post_type=other_content&#038;p=69', 0, 'other_content', '', 0);
INSERT INTO `wp_posts` VALUES (70, 1, '2018-07-09 08:04:46', '2018-07-09 08:04:46', '', 'tracking', '', 'inherit', 'open', 'closed', '', 'tracking', '', '', '2018-07-09 08:04:46', '2018-07-09 08:04:46', '', 69, 'http://localhost/wordpress/wp-content/uploads/2018/07/tracking.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES (71, 1, '2018-07-12 03:11:37', '2018-07-12 03:11:37', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-12 03:11:37', '2018-07-12 03:11:37', '', 0, 'http://localhost/wordpress/?page_id=71', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (72, 1, '2018-07-12 03:11:37', '2018-07-12 03:11:37', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-07-12 03:11:37', '2018-07-12 03:11:37', '', 71, 'http://localhost/wordpress/2018/07/12/71-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (73, 1, '2018-07-12 07:29:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-12 07:29:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=73', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (74, 1, '2018-07-12 07:29:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-12 07:29:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=74', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (75, 1, '2018-07-12 07:29:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-12 07:29:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=75', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (76, 1, '2018-07-12 07:48:42', '2018-07-12 07:48:42', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2018-07-16 05:44:31', '2018-07-16 05:44:31', '', 0, 'http://localhost/wordpress/?p=76', 6, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (78, 1, '2018-07-12 08:12:55', '2018-07-12 08:12:55', '', 'Tentang Kami', '', 'publish', 'closed', 'closed', '', 'tentang-kami', '', '', '2018-07-16 05:44:31', '2018-07-16 05:44:31', '', 0, 'http://localhost/wordpress/?p=78', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (79, 1, '2018-07-12 08:12:55', '2018-07-12 08:12:55', '', 'Fungsi', '', 'publish', 'closed', 'closed', '', 'fungsi', '', '', '2018-07-16 05:44:31', '2018-07-16 05:44:31', '', 0, 'http://localhost/wordpress/?p=79', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (80, 1, '2018-07-12 08:12:55', '2018-07-12 08:12:55', '', 'Layanan', '', 'publish', 'closed', 'closed', '', 'layanan', '', '', '2018-07-16 05:44:31', '2018-07-16 05:44:31', '', 0, 'http://localhost/wordpress/?p=80', 3, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (81, 1, '2018-07-12 08:12:55', '2018-07-12 08:12:55', '', 'Kelebihan', '', 'publish', 'closed', 'closed', '', 'kelebihan', '', '', '2018-07-16 05:44:31', '2018-07-16 05:44:31', '', 0, 'http://localhost/wordpress/?p=81', 4, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (82, 1, '2018-07-12 08:12:55', '2018-07-12 08:12:55', '', 'Testimoni dan lain-lain', '', 'publish', 'closed', 'closed', '', 'testimoni-dan-lain-lain', '', '', '2018-07-16 05:44:31', '2018-07-16 05:44:31', '', 0, 'http://localhost/wordpress/?p=82', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES (83, 1, '2018-07-16 05:43:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-16 05:43:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=83', 0, 'post', '', 0);

-- ----------------------------
-- Table structure for wp_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships`  (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`, `term_taxonomy_id`) USING BTREE,
  INDEX `term_taxonomy_id`(`term_taxonomy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_term_relationships
-- ----------------------------
INSERT INTO `wp_term_relationships` VALUES (1, 1, 0);
INSERT INTO `wp_term_relationships` VALUES (76, 2, 0);
INSERT INTO `wp_term_relationships` VALUES (78, 2, 0);
INSERT INTO `wp_term_relationships` VALUES (79, 2, 0);
INSERT INTO `wp_term_relationships` VALUES (80, 2, 0);
INSERT INTO `wp_term_relationships` VALUES (81, 2, 0);
INSERT INTO `wp_term_relationships` VALUES (82, 2, 0);

-- ----------------------------
-- Table structure for wp_term_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy`  (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`) USING BTREE,
  UNIQUE INDEX `term_id_taxonomy`(`term_id`, `taxonomy`) USING BTREE,
  INDEX `taxonomy`(`taxonomy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_term_taxonomy
-- ----------------------------
INSERT INTO `wp_term_taxonomy` VALUES (1, 1, 'category', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (2, 2, 'nav_menu', '', 0, 6);

-- ----------------------------
-- Table structure for wp_termmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `term_id`(`term_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wp_terms
-- ----------------------------
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms`  (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`) USING BTREE,
  INDEX `slug`(`slug`(191)) USING BTREE,
  INDEX `name`(`name`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_terms
-- ----------------------------
INSERT INTO `wp_terms` VALUES (1, 'Uncategorized', 'uncategorized', 0);
INSERT INTO `wp_terms` VALUES (2, 'Primary Menu', 'primary-menu', 0);

-- ----------------------------
-- Table structure for wp_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta`  (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`umeta_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_usermeta
-- ----------------------------
INSERT INTO `wp_usermeta` VALUES (1, 1, 'nickname', 'fakhrurraziandi');
INSERT INTO `wp_usermeta` VALUES (2, 1, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES (3, 1, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES (4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES (5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES (6, 1, 'syntax_highlighting', 'true');
INSERT INTO `wp_usermeta` VALUES (7, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES (8, 1, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES (9, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES (10, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES (11, 1, 'locale', '');
INSERT INTO `wp_usermeta` VALUES (12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES (14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15, 1, 'show_welcome_panel', '0');
INSERT INTO `wp_usermeta` VALUES (17, 1, 'wp_dashboard_quick_press_last_post_id', '83');
INSERT INTO `wp_usermeta` VALUES (18, 1, 'closedpostboxes_page', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES (19, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (20, 1, 'wp_user-settings', 'post_dfw=off&hidetb=1&libraryContent=browse&editor=tinymce&advImgDetails=show&imgsize=full&mfold=o');
INSERT INTO `wp_usermeta` VALUES (21, 1, 'wp_user-settings-time', '1531128501');
INSERT INTO `wp_usermeta` VALUES (23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (24, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:30:\"add-post-type-function_content\";i:1;s:29:\"add-post-type-service_content\";i:2;s:31:\"add-post-type-advantage_content\";i:3;s:27:\"add-post-type-about_content\";i:4;s:27:\"add-post-type-other_content\";i:5;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (25, 1, 'nav_menu_recently_edited', '2');
INSERT INTO `wp_usermeta` VALUES (26, 1, 'session_tokens', 'a:1:{s:64:\"2ffff10ec2c8011c601e93fcb302481329b3b19601db2ffe657c3c4575ba3a10\";a:4:{s:10:\"expiration\";i:1531925620;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531752820;}}');

-- ----------------------------
-- Table structure for wp_users
-- ----------------------------
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime(0) NOT NULL,
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `user_login_key`(`user_login`) USING BTREE,
  INDEX `user_nicename`(`user_nicename`) USING BTREE,
  INDEX `user_email`(`user_email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wp_users
-- ----------------------------
INSERT INTO `wp_users` VALUES (1, 'fakhrurraziandi', '$P$BRPa7I3Mg687r7bYWqvR2R7rSqI5r8/', 'fakhrurraziandi', 'fakhrurrazi.andi@gmail.com', '', '2018-07-07 18:17:54', '', 0, 'fakhrurraziandi');

SET FOREIGN_KEY_CHECKS = 1;
