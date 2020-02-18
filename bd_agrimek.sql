/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : bd_agrimek

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-08-27 11:09:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_project_id_foreign` (`project_id`),
  CONSTRAINT `events_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('1', 'perferendis', 'Porro at ratione exercitationem non. Culpa quod est perspiciatis quaerat modi soluta debitis.', '2007-12-08 19:38:53', '2.jpg', '5', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('2', 'quis', 'Iure aperiam aut magni maxime sit quia quia.', '1978-04-04 12:44:36', '4.jpg', '6', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('3', 'quia', 'Quas sit aut sit dolor. Accusamus cupiditate sapiente inventore et quia nisi.', '1991-03-18 13:57:09', '2.jpg', '2', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('4', 'animi', 'Culpa dolorum tempore sit neque recusandae assumenda veniam. Molestias possimus quis quidem ducimus.', '2003-09-29 07:44:41', '3.jpg', '3', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('5', 'magnam', 'Adipisci tenetur necessitatibus autem ut consequatur. Dolorum debitis cum repellat fugit commodi.', '2009-11-19 16:11:25', '3.jpg', '1', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('6', 'hic', 'Autem dolores officia voluptatibus.', '1999-08-08 06:35:55', '2.jpg', '7', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('7', 'rerum', 'Beatae quam suscipit accusamus ratione. Enim ut saepe eveniet explicabo distinctio nam.', '2009-07-08 18:49:53', '5.jpg', '10', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('8', 'aliquam', 'Nesciunt consequatur rerum illo dolores alias molestias eum et. Animi pariatur officiis deserunt in.', '2014-12-24 00:49:41', '1.jpg', '5', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('9', 'sunt', 'Similique error ex possimus est unde dicta.', '1978-12-12 05:37:30', '1.jpg', '4', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('10', 'autem', 'Iusto eius atque vel.', '1975-03-15 06:17:47', '5.jpg', '4', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('11', 'neque', 'Repudiandae dolorem illum non sit dolorem dolore.', '1981-01-09 22:24:11', '3.jpg', '3', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('12', 'aliquam', 'Error tempora voluptatem excepturi dolores similique mollitia. Eius ea suscipit amet magnam.', '1995-10-10 06:00:00', '3.jpg', '10', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('13', 'nesciunt', 'Sunt architecto aperiam culpa in.', '2013-05-12 01:25:44', '5.jpg', '2', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('14', 'quibusdam', 'Id vitae consequatur repudiandae perspiciatis voluptate vero.', '1986-03-13 12:49:33', '4.jpg', '1', '2019-08-27 10:02:27', '2019-08-27 10:02:27', null);
INSERT INTO `events` VALUES ('15', 'ab', 'Debitis in est laudantium aut animi at reiciendis.', '2010-06-28 08:07:15', '1.jpg', '9', '2019-08-27 10:02:27', '2019-08-27 10:59:38', '2019-08-27 10:59:38');
INSERT INTO `events` VALUES ('16', 'eaque', 'Qui voluptas adipisci doloremque officia qui quis magnam.', '1995-06-20 21:07:55', '4.jpg', '4', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('17', 'eos', 'Aspernatur quo eos accusantium autem iure unde dignissimos. Praesentium saepe sequi et sit officiis.', '2006-05-24 21:14:25', '2.jpg', '6', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('18', 'rerum', 'Quasi perspiciatis est asperiores.', '2001-09-16 03:55:32', '4.jpg', '4', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('19', 'molestiae', 'Aut fugiat aut est assumenda voluptatem non assumenda. Error quam deleniti tempore et quia quis rerum.', '1979-08-15 10:20:31', '2.jpg', '4', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('20', 'nobis', 'Reiciendis placeat possimus quaerat aut itaque voluptates quo.', '2013-12-07 01:41:28', '1.jpg', '4', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('21', 'aut', 'Quo quia modi soluta sit quam sint modi sit. Expedita eum possimus aliquam molestiae.', '2013-09-23 05:06:38', '3.jpg', '2', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('22', 'repellat', 'Nobis debitis eos hic. Quaerat velit fugit ut distinctio et incidunt modi.', '1973-11-05 02:14:19', '1.jpg', '9', '2019-08-27 10:02:28', '2019-08-27 10:59:43', '2019-08-27 10:59:43');
INSERT INTO `events` VALUES ('23', 'voluptas', 'Tenetur aliquam iste id voluptas in maiores. Dolorem in eum at nam facilis eligendi est.', '1983-01-31 19:50:59', '3.jpg', '9', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('24', 'occaecati', 'Est veniam distinctio ut nihil velit autem ut. Et ab repellendus at placeat voluptatem et.', '2013-10-14 05:22:38', '3.jpg', '3', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('25', 'exercitationem', 'Enim perferendis placeat nihil quibusdam quidem sint sunt rerum.', '1984-10-22 20:27:49', '1.jpg', '7', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('26', 'ut', 'Illo ut est dicta aut eligendi.', '2008-10-08 09:29:42', '5.jpg', '6', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('27', 'perspiciatis', 'Molestiae aut accusantium earum sit.', '1996-10-25 17:53:03', '5.jpg', '5', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('28', 'nobis', 'Quis debitis facere quis doloribus natus perferendis praesentium ut.', '1973-09-20 02:59:59', '5.jpg', '2', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('29', 'et', 'Mollitia voluptatibus aliquam ipsum molestiae. Voluptatem reiciendis porro autem delectus voluptatem harum excepturi.', '1998-07-30 11:57:03', '5.jpg', '8', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('30', 'exercitationem', 'Consequatur aliquid architecto totam laboriosam doloremque.', '1982-07-04 19:40:33', '1.jpg', '7', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('31', 'quasi', 'Quibusdam sit hic et labore dolore ut sint laudantium. Autem ut asperiores ut inventore rerum totam sed.', '1980-11-21 12:30:10', '1.jpg', '4', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('32', 'suscipit', 'Quas a vero corporis eos maxime magni voluptatem nostrum. Est debitis ut adipisci sint.', '2009-06-22 09:29:24', '2.jpg', '2', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('33', 'sunt', 'Et autem incidunt voluptatem nam dolorum temporibus ratione. Aut nihil quos voluptatum expedita laboriosam.', '1999-04-14 01:38:28', '1.jpg', '1', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('34', 'ut', 'Aut maiores id eaque repudiandae reiciendis. Voluptatum cupiditate inventore rerum totam expedita est fugiat.', '1976-09-10 18:58:59', '1.jpg', '1', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('35', 'quia', 'Nesciunt est fuga sed a et. Enim dolor dolores rerum suscipit natus quia reiciendis.', '2013-08-27 06:34:55', '3.jpg', '6', '2019-08-27 10:02:28', '2019-08-27 10:02:28', null);
INSERT INTO `events` VALUES ('36', 'dolorem', 'Provident enim aut libero quis est veritatis asperiores magni.', '1985-10-30 14:51:23', '2.jpg', '9', '2019-08-27 10:02:29', '2019-08-27 10:59:48', '2019-08-27 10:59:48');
INSERT INTO `events` VALUES ('37', 'veniam', 'Incidunt est aut quis quam.', '1975-08-14 20:42:46', '4.jpg', '3', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('38', 'qui', 'Quo et officiis aperiam quasi nesciunt quo.', '1994-10-14 05:02:10', '3.jpg', '7', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('39', 'occaecati', 'Dignissimos velit deleniti velit fugit.', '1975-02-19 00:44:07', '4.jpg', '5', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('40', 'accusamus', 'Est laboriosam et commodi explicabo sit ut. Est aut dolor tempora repudiandae.', '2004-03-09 05:49:43', '4.jpg', '6', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('41', 'optio', 'Qui ab eveniet et.', '1977-03-04 06:50:06', '4.jpg', '10', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('42', 'ea', 'Est possimus qui consequuntur voluptas.', '2014-01-11 06:00:45', '3.jpg', '3', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('43', 'numquam', 'Eligendi eius est corporis occaecati repudiandae.', '2000-12-08 02:09:27', '3.jpg', '10', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('44', 'quos', 'Vero nemo odit perferendis est ab. Sunt ut quibusdam beatae expedita ea eos molestias.', '1988-12-18 21:55:44', '2.jpg', '8', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('45', 'eveniet', 'In consequatur delectus tempore sunt. Aut saepe aliquid perferendis doloribus deleniti id.', '1982-11-10 08:50:24', '3.jpg', '1', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('46', 'deleniti', 'Non vero hic quis cumque eos ullam quae porro. Repudiandae laboriosam labore ab et debitis non.', '2003-09-02 21:52:15', '1.jpg', '10', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('47', 'rerum', 'Odio ut minus aliquam ut.', '2000-03-19 03:21:02', '3.jpg', '7', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('48', 'esse', 'Eum quae quisquam assumenda sapiente et. Dolores quia iure ut odio error consequatur.', '1990-10-30 05:12:31', '4.jpg', '9', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('49', 'eius', 'Iure unde dolor et cumque libero vero non magni. Quibusdam officia sed aliquid et est alias qui.', '1973-11-13 18:23:37', '2.jpg', '1', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('50', 'aut', 'Sit sequi et doloribus illo fugit et. Est nemo nam dolorem necessitatibus.', '1986-05-06 10:39:43', '1.jpg', '10', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('51', 'dicta', 'Aliquam quis quia ut quae est.', '1991-05-19 14:55:18', '1.jpg', '9', '2019-08-27 10:02:29', '2019-08-27 10:59:56', '2019-08-27 10:59:56');
INSERT INTO `events` VALUES ('52', 'at', 'Velit aliquid commodi aut.', '1998-03-21 12:22:29', '2.jpg', '6', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('53', 'autem', 'Vero consequuntur distinctio sunt architecto corporis molestiae quod.', '2007-01-22 18:15:15', '3.jpg', '10', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('54', 'incidunt', 'Enim architecto non ut cupiditate labore fugiat animi. Neque exercitationem id expedita aspernatur repudiandae odit cumque.', '2001-05-30 19:36:32', '2.jpg', '3', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('55', 'aut', 'In qui praesentium eligendi dignissimos.', '1977-12-09 10:04:02', '3.jpg', '3', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('56', 'blanditiis', 'Est voluptatem vitae delectus totam. Dolores dolores voluptatem placeat.', '2013-03-13 09:11:44', '1.jpg', '7', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('57', 'rem', 'Itaque quisquam aut autem harum numquam pariatur veniam. Alias et repellat unde sint.', '2004-01-19 14:04:42', '1.jpg', '9', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('58', 'minima', 'Error esse qui vero qui voluptas. Laudantium repudiandae aut non incidunt quis rem molestiae.', '2011-08-04 13:55:56', '2.jpg', '4', '2019-08-27 10:02:29', '2019-08-27 10:02:29', null);
INSERT INTO `events` VALUES ('59', 'eos', 'Cupiditate minima soluta animi autem.', '1995-04-06 06:26:11', '1.jpg', '2', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('60', 'sed', 'Qui aut voluptatem fuga aut tempora neque repudiandae amet. Sint ut velit in voluptas ducimus qui suscipit et.', '2015-12-18 19:29:29', '5.jpg', '7', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('61', 'doloribus', 'In facere ducimus eligendi sit doloremque et.', '2001-03-03 01:36:12', '4.jpg', '2', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('62', 'non', 'Qui eum hic est qui qui.', '1980-02-09 01:33:28', '5.jpg', '1', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('63', 'minus', 'Voluptatum incidunt hic dolores iste ratione vero. Architecto temporibus optio vel vitae quisquam dolores.', '1985-08-07 13:53:47', '3.jpg', '3', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('64', 'iste', 'Quisquam quisquam quae et culpa.', '1998-12-01 20:17:43', '5.jpg', '8', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('65', 'assumenda', 'Dolor similique nihil quaerat sint modi quo perspiciatis. Et in tenetur corrupti autem dolorem.', '1991-06-21 21:31:43', '3.jpg', '9', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('66', 'recusandae', 'Nemo debitis non enim fuga qui non libero.', '2004-12-07 11:51:47', '3.jpg', '10', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('67', 'nulla', 'Qui ipsa quos qui error officia quo. Velit occaecati inventore aut iusto qui.', '2016-09-30 21:22:13', '1.jpg', '3', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('68', 'reiciendis', 'Eaque qui quasi qui libero odio voluptatum. Eaque voluptas laudantium blanditiis eius accusantium doloremque ipsa.', '2012-10-02 01:56:45', '1.jpg', '4', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('69', 'et', 'Ad molestias fuga expedita ex voluptatem.', '1975-05-18 20:45:02', '4.jpg', '4', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('70', 'expedita', 'Non soluta qui exercitationem quis repudiandae.', '1986-11-19 05:05:36', '5.jpg', '6', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('71', 'ratione', 'Autem molestias inventore ut officiis quis dolor at. Dolor dolor mollitia culpa aliquam sit vel molestiae.', '1985-03-23 14:40:21', '4.jpg', '10', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('72', 'recusandae', 'Excepturi inventore praesentium beatae cum qui. Fugit consequatur quam minus esse minus quasi.', '1976-03-22 00:59:49', '1.jpg', '10', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('73', 'minima', 'Blanditiis et dolor illum eum enim quo.', '1985-12-11 17:50:41', '1.jpg', '4', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('74', 'harum', 'Voluptatum fugiat sit distinctio recusandae consequatur qui aspernatur in.', '2005-06-27 18:48:46', '4.jpg', '6', '2019-08-27 10:02:30', '2019-08-27 10:02:30', null);
INSERT INTO `events` VALUES ('75', 'consequatur', 'Vero perspiciatis molestias rerum placeat illum. Excepturi est quae velit error non corporis.', '1981-03-16 07:12:16', '1.jpg', '1', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('76', 'officiis', 'Tempore accusantium est aspernatur repellendus beatae nobis at.', '1976-10-19 04:45:17', '5.jpg', '10', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('77', 'suscipit', 'Cum architecto tempora voluptate. Id asperiores ea nesciunt culpa nam quis delectus.', '1994-10-14 03:58:53', '2.jpg', '9', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('78', 'nesciunt', 'Delectus voluptatibus fugit ad iure earum accusantium. Quod eum eius est ut.', '2017-10-24 11:26:34', '5.jpg', '1', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('79', 'ea', 'Eveniet sunt consequatur nesciunt magnam aut voluptas tenetur.', '2009-05-19 10:24:49', '2.jpg', '6', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('80', 'qui', 'Cupiditate vel debitis non ad. Maxime suscipit autem et vero et.', '1991-10-06 00:14:21', '1.jpg', '6', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('81', 'qui', 'Soluta vitae recusandae qui laudantium dolorem culpa atque reiciendis.', '2008-11-28 01:04:30', '5.jpg', '8', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('82', 'excepturi', 'Iste aliquam odio quam sed nobis quia quae.', '2005-08-15 12:54:11', '3.jpg', '3', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('83', 'quisquam', 'Eos voluptates sed hic qui. Consequatur et eius nihil est error libero molestias.', '1984-02-05 16:48:20', '3.jpg', '10', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('84', 'libero', 'Molestiae aut velit consequatur et ut. Esse temporibus et quia quisquam.', '1994-06-28 18:13:02', '1.jpg', '9', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('85', 'quo', 'Autem quibusdam et culpa qui rem. Nihil voluptas ipsum id harum ut fugiat.', '1994-02-02 17:42:23', '4.jpg', '4', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('86', 'possimus', 'Quia expedita quidem ut vitae natus quibusdam sed.', '1995-01-28 01:36:07', '1.jpg', '9', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('87', 'sit', 'Et molestiae praesentium consequuntur libero quas. Molestias dignissimos sint enim quam repellat est.', '2003-02-10 03:34:11', '1.jpg', '7', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('88', 'natus', 'Architecto soluta voluptatum eveniet quasi officiis aut quia. Laudantium nobis et perspiciatis hic similique inventore nihil.', '1978-10-06 05:31:50', '4.jpg', '2', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('89', 'culpa', 'In cum consequatur similique qui eos ipsum hic aut. Debitis qui et aut non animi est exercitationem.', '1978-08-14 12:51:42', '1.jpg', '4', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('90', 'eos', 'Sint nemo ab adipisci quis quo cupiditate.', '1982-11-10 22:17:36', '5.jpg', '4', '2019-08-27 10:02:31', '2019-08-27 10:02:31', null);
INSERT INTO `events` VALUES ('91', 'temporibus', 'Omnis laudantium doloremque optio expedita voluptatem et mollitia. Eum voluptas amet laborum dignissimos.', '1982-01-19 22:01:19', '1.jpg', '2', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('92', 'ratione', 'Rerum modi dolorum veniam ullam rem.', '1988-07-29 12:35:06', '4.jpg', '2', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('93', 'saepe', 'Nesciunt dolorum magni architecto id molestias ut ratione. Dolor rerum aperiam aut ad voluptates.', '1974-03-19 21:13:50', '3.jpg', '8', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('94', 'quam', 'Exercitationem accusantium cupiditate laudantium excepturi debitis a. Optio enim nihil repellat.', '2010-12-20 22:32:24', '5.jpg', '4', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('95', 'et', 'Necessitatibus maxime ut enim repellendus quo. Iure aut quia voluptatum facere.', '1978-02-21 10:36:52', '5.jpg', '7', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('96', 'expedita', 'Omnis laboriosam rerum saepe voluptatem voluptatem.', '1988-05-20 21:18:26', '5.jpg', '4', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('97', 'omnis', 'Accusantium id commodi culpa eveniet odit harum amet reprehenderit. Iste pariatur voluptatem aut itaque est.', '2001-10-21 12:35:58', '5.jpg', '1', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('98', 'reprehenderit', 'Quia est facere rerum facere asperiores qui voluptates. Non occaecati laboriosam debitis ratione.', '1977-12-09 03:05:01', '3.jpg', '6', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('99', 'cum', 'Qui architecto qui perspiciatis corrupti nesciunt laudantium rem nihil. Fuga iure dolorum ut delectus dolore.', '2004-09-14 10:53:34', '2.jpg', '7', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('100', 'rerum', 'Eos est quia quis quidem atque tempora qui.', '1977-05-09 06:33:03', '4.jpg', '8', '2019-08-27 10:02:32', '2019-08-27 10:02:32', null);
INSERT INTO `events` VALUES ('101', 'Evento nuevo', 'dfsdfsf', '2019-08-27 06:58:54', 'YqGMVJIevOaTUTakRxHnbHVisiW5TsQJ3oDn0g4h.jpeg', '9', '2019-08-27 11:00:17', '2019-08-27 11:00:17', null);
INSERT INTO `events` VALUES ('102', 'Evento nuevo', 'hgjghjghj', '2019-08-27 07:03:03', 'LvYjs93t6D4vm4neH7pZ4HMSOW9MTZ5XotqEusiV.jpeg', '11', '2019-08-27 11:04:00', '2019-08-27 11:04:00', null);
INSERT INTO `events` VALUES ('103', 'Evento nuevo', 'dsadasdasd', '2019-08-27 07:22:18', 'THcwLYqQN5pRh0DFrw4tsmJn341NKdp5rYWyuE6I.jpeg', '12', '2019-08-27 11:22:36', '2019-08-27 11:22:36', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('18', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('19', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('20', '2016_06_01_000001_create_oauth_auth_codes_table', '1');
INSERT INTO `migrations` VALUES ('21', '2016_06_01_000002_create_oauth_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('22', '2016_06_01_000003_create_oauth_refresh_tokens_table', '1');
INSERT INTO `migrations` VALUES ('23', '2016_06_01_000004_create_oauth_clients_table', '1');
INSERT INTO `migrations` VALUES ('24', '2016_06_01_000005_create_oauth_personal_access_clients_table', '1');
INSERT INTO `migrations` VALUES ('25', '2019_08_11_115313_create_projects_table', '1');
INSERT INTO `migrations` VALUES ('26', '2019_08_11_115340_create_events_table', '1');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('012d812e9c596b104b64d2e35941c86416fd5bbcf501edcae96944d2d01fb4567953b90d46dc4930', null, '1', null, '[]', '0', '2019-08-27 14:26:43', '2019-08-27 14:26:43', '2019-08-27 15:26:43');
INSERT INTO `oauth_access_tokens` VALUES ('03ed3fe6b69a644ac6f75baf841d45ac3f32ac1503cfbc3c5fde4c94265a0907ce22dde8ecd6da85', null, '1', null, '[]', '0', '2019-08-27 13:06:48', '2019-08-27 13:06:48', '2019-08-27 14:06:47');
INSERT INTO `oauth_access_tokens` VALUES ('042e95d56a077a4509357a9a2f8fd6f5655abd70703cdb4fa926a18f2ca4a7372a326ab5c6cc7d7d', null, '1', null, '[]', '0', '2019-08-27 14:28:39', '2019-08-27 14:28:39', '2019-08-27 15:28:39');
INSERT INTO `oauth_access_tokens` VALUES ('0449d45db31e987dfc365de5943e685669a104a748b528db2926bf532706360b5eb3fc1bca8fbbcb', null, '1', null, '[]', '0', '2019-08-27 11:47:43', '2019-08-27 11:47:43', '2019-08-27 12:47:43');
INSERT INTO `oauth_access_tokens` VALUES ('055501d56a7da6713f018561da7ff51e2d3aa06eb7cac0257c6831adef9d5c3e44aa247dab58b1cf', null, '1', null, '[]', '0', '2019-08-27 14:30:09', '2019-08-27 14:30:09', '2019-08-27 15:30:09');
INSERT INTO `oauth_access_tokens` VALUES ('055adb1ddb3f454fb3e906a06d5ec8d3947c9200495a109796eea07b4acbfae3f96701fbc70a1006', null, '1', null, '[]', '0', '2019-08-27 12:40:22', '2019-08-27 12:40:22', '2019-08-27 13:40:22');
INSERT INTO `oauth_access_tokens` VALUES ('064a15dc0160bb24439abe8dc6e06b885a9b6e96ba0283e8a7e1a264e28d4627876a92789f02537b', null, '1', null, '[]', '0', '2019-08-27 12:44:24', '2019-08-27 12:44:24', '2019-08-27 13:44:24');
INSERT INTO `oauth_access_tokens` VALUES ('067066fffbd1b66fe500ea1d37c0157f4a6fea12ea1f0413cd30a4ba0ab0f8281424b36221e10c39', null, '1', null, '[]', '0', '2019-08-27 11:50:55', '2019-08-27 11:50:55', '2019-08-27 12:50:55');
INSERT INTO `oauth_access_tokens` VALUES ('0731c30f00a7e0cca3c6d144e6628f3993a3f8ec9cf77be48706a7d147e54962ffeb30ea2e95983d', null, '1', null, '[]', '0', '2019-08-27 10:26:28', '2019-08-27 10:26:28', '2019-08-27 11:26:28');
INSERT INTO `oauth_access_tokens` VALUES ('08b456ebd1515ec3e789ff0990a656f0c1f09ea2afb5c64086d8e44d808c9af18b3eda4e92d7c8e0', null, '1', null, '[]', '0', '2019-08-27 14:34:10', '2019-08-27 14:34:10', '2019-08-27 15:34:10');
INSERT INTO `oauth_access_tokens` VALUES ('0ac7f3e3d9d8657ce3ace55bf14062e6255617694e2ac8b55b3be5dd99133a050fb03c999ade2f7c', null, '1', null, '[]', '0', '2019-08-27 14:59:44', '2019-08-27 14:59:44', '2019-08-27 15:59:44');
INSERT INTO `oauth_access_tokens` VALUES ('0d0e2922f5f2fbd870e3975f754be7e3857e98a9c076a60f51799f7664230e417262748a28d46b68', '1', '2', null, '[]', '0', '2019-08-27 10:31:08', '2019-08-27 10:31:08', '2019-08-27 11:31:08');
INSERT INTO `oauth_access_tokens` VALUES ('0dbc54bc820f9cf580858c4540243a8eaad2cc24c07a07b9a8f2c1eb2f4ef2e2433385a9c6a786ef', null, '1', null, '[]', '0', '2019-08-27 14:34:30', '2019-08-27 14:34:30', '2019-08-27 15:34:30');
INSERT INTO `oauth_access_tokens` VALUES ('0de0baab44c78964c9489cf4dda9154e27c2aceb08e829c21eff3318926ced39827a8dac3b27abbd', null, '1', null, '[]', '0', '2019-08-27 12:58:36', '2019-08-27 12:58:36', '2019-08-27 13:58:36');
INSERT INTO `oauth_access_tokens` VALUES ('0f11ca95f5d4b3b7c9d34a227a84a6fb7fcdf9e58e4d15fc339060ca424e2fd710a7e0972e234e88', null, '1', null, '[]', '0', '2019-08-27 12:31:14', '2019-08-27 12:31:14', '2019-08-27 13:31:14');
INSERT INTO `oauth_access_tokens` VALUES ('110d404317b294c61e00eb22cb8fd1205a5d98a8169fcfb95806e2d50bd92e43678214e323976895', null, '1', null, '[]', '0', '2019-08-27 12:50:08', '2019-08-27 12:50:08', '2019-08-27 13:50:08');
INSERT INTO `oauth_access_tokens` VALUES ('111a232cb851b67aa3ccb39d6acf64e7fa4f00ac5b293e02f70772c5a945bd4af4b68c2caf351443', null, '1', null, '[]', '0', '2019-08-27 12:44:38', '2019-08-27 12:44:38', '2019-08-27 13:44:38');
INSERT INTO `oauth_access_tokens` VALUES ('11d7aa5302226def8d253ba0b0783b944973efc9f0d6a3f277ebc02f84751eb9370337c5645a23d9', null, '1', null, '[]', '0', '2019-08-27 14:21:03', '2019-08-27 14:21:03', '2019-08-27 15:21:03');
INSERT INTO `oauth_access_tokens` VALUES ('14bd5adeec24ce0362ff2ce2ae7b2a907c264c8a05f6877da85b714b160b513a0a7a7399d7e038cc', null, '1', null, '[]', '0', '2019-08-27 12:36:06', '2019-08-27 12:36:06', '2019-08-27 13:36:06');
INSERT INTO `oauth_access_tokens` VALUES ('1a0530e1adb522d4b8148afee6d0584975adc9d2ac2436353dc488920da28c49632ef2174097b164', '1', '2', null, '[]', '0', '2019-08-27 11:27:45', '2019-08-27 11:27:45', '2019-08-27 12:27:45');
INSERT INTO `oauth_access_tokens` VALUES ('1c18f97fdde42bd4b08bab39834e33d75524fc16d1917c14d2902976dfeb58bbece163bde8e3353d', null, '1', null, '[]', '0', '2019-08-27 13:10:25', '2019-08-27 13:10:25', '2019-08-27 14:10:25');
INSERT INTO `oauth_access_tokens` VALUES ('1f14cba60c2a69fbf939c985969f5fa402c54aacc45c46881e7dfa4117ee920ad3712ff2f9005390', null, '1', null, '[]', '0', '2019-08-27 15:00:24', '2019-08-27 15:00:24', '2019-08-27 16:00:24');
INSERT INTO `oauth_access_tokens` VALUES ('200174b10b75b75bbd7a501de274a2dfd9d05af0c3ef65079592a38235deb9a114c6ac7d90f3261d', null, '1', null, '[]', '0', '2019-08-27 12:54:16', '2019-08-27 12:54:16', '2019-08-27 13:54:16');
INSERT INTO `oauth_access_tokens` VALUES ('255a052e8a42644bc3b05d74ce01e1d9fa66404673139820af30197d1d1e344cb3c4533b39a24789', null, '1', null, '[]', '0', '2019-08-27 13:05:30', '2019-08-27 13:05:30', '2019-08-27 14:05:30');
INSERT INTO `oauth_access_tokens` VALUES ('26dd3bce59822392d406de49011178db604b4b74c3c6d227fcdd3c393685133dad31463e98234ab7', null, '1', null, '[]', '0', '2019-08-27 12:35:48', '2019-08-27 12:35:48', '2019-08-27 13:35:48');
INSERT INTO `oauth_access_tokens` VALUES ('2d01f3cad4b636f74514b0c67b99f1c28ad4bd9d273a4c3f11b91da4cb660e69fd81aff8daa4e168', null, '1', null, '[]', '0', '2019-08-27 13:11:20', '2019-08-27 13:11:20', '2019-08-27 14:11:20');
INSERT INTO `oauth_access_tokens` VALUES ('2d0f82cbcaa4c15a8494ccdb81e64b880463dfd5afef648dacbd062c2cd9a47678fd3f6ffed31dc2', null, '1', null, '[]', '0', '2019-08-27 12:33:25', '2019-08-27 12:33:25', '2019-08-27 13:33:25');
INSERT INTO `oauth_access_tokens` VALUES ('2d83649ac41b87367249e8ca047fc86f07ecacee9fad07530b80127e14c3baa4b230c01549a54124', null, '1', null, '[]', '0', '2019-08-27 12:55:24', '2019-08-27 12:55:24', '2019-08-27 13:55:24');
INSERT INTO `oauth_access_tokens` VALUES ('2f46737a7f2a4f94034b64165b60cdf94bdff0d013dca84b5df64240f5e61d9962e9bfaf801ccea8', null, '1', null, '[]', '0', '2019-08-27 13:06:34', '2019-08-27 13:06:34', '2019-08-27 14:06:34');
INSERT INTO `oauth_access_tokens` VALUES ('3110d6e911ac1773ee5e41c7f61820427c1db22a293cfee1357ffb31338b9b77547297aa3f36b48e', null, '1', null, '[]', '0', '2019-08-27 13:00:46', '2019-08-27 13:00:46', '2019-08-27 14:00:46');
INSERT INTO `oauth_access_tokens` VALUES ('33ee13965ccce817380d13a682f5891d5c8ba4e65f35ab29e8da7900ca4711f0f2a3210beba8f94f', null, '1', null, '[]', '0', '2019-08-27 14:25:37', '2019-08-27 14:25:37', '2019-08-27 15:25:37');
INSERT INTO `oauth_access_tokens` VALUES ('356e4dd4e9ac432e3be194d4b3ac2e9b3b719846b2c767493e0fb39c500ceaa1e580aa4e1b4a4b2c', null, '1', null, '[]', '0', '2019-08-27 14:20:11', '2019-08-27 14:20:11', '2019-08-27 15:20:11');
INSERT INTO `oauth_access_tokens` VALUES ('395293924cc5f5c12ded971fc702cce7571350ffcd8ae86be85843a1fcb19f17cada3b5837cec14c', null, '1', null, '[]', '0', '2019-08-27 14:28:00', '2019-08-27 14:28:00', '2019-08-27 15:28:00');
INSERT INTO `oauth_access_tokens` VALUES ('3b9e715f4f540127100fdd309d003d83d54246723007310028f3fd068ec22e8a505030dd2483fac3', null, '1', null, '[]', '0', '2019-08-27 12:58:46', '2019-08-27 12:58:46', '2019-08-27 13:58:46');
INSERT INTO `oauth_access_tokens` VALUES ('465b56f57e8bf45037414165c9fff64ea593b2792bd9ba7520318db4826c3fca0cd7a7963a49c43d', null, '1', null, '[]', '0', '2019-08-27 12:29:07', '2019-08-27 12:29:07', '2019-08-27 13:29:06');
INSERT INTO `oauth_access_tokens` VALUES ('4eb14d451626814b76d4553af5afe17f1eeb21843c0b062b11f9a97a0ffc59bf959589fc44703987', null, '1', null, '[]', '0', '2019-08-27 11:46:35', '2019-08-27 11:46:35', '2019-08-27 12:46:35');
INSERT INTO `oauth_access_tokens` VALUES ('51840517ae12b6ddca7d5a871e93c112fc170cef41a6858b94bab8aa3901a847462cd33a16896ad1', null, '1', null, '[]', '0', '2019-08-27 13:02:40', '2019-08-27 13:02:40', '2019-08-27 14:02:39');
INSERT INTO `oauth_access_tokens` VALUES ('5266605dfd5b5638e03d651a09da13c26499a91dbda2312ade948165cb09db0f03b4d12f80c5977b', null, '1', null, '[]', '0', '2019-08-27 12:59:01', '2019-08-27 12:59:01', '2019-08-27 13:59:01');
INSERT INTO `oauth_access_tokens` VALUES ('55522dd52d4cc6d40c44ea0094fbb38b80edfd6cf719f2998b06cf83338d290156c473b726921c7c', null, '1', null, '[]', '0', '2019-08-27 12:35:15', '2019-08-27 12:35:15', '2019-08-27 13:35:15');
INSERT INTO `oauth_access_tokens` VALUES ('56144ecc895d106fb9715588cbf2addffe455fe2bc4fefbd212ffb97eb6587202d841a498ec6f107', null, '1', null, '[]', '0', '2019-08-27 13:05:24', '2019-08-27 13:05:24', '2019-08-27 14:05:24');
INSERT INTO `oauth_access_tokens` VALUES ('57364cf664a67bd1405ee68dcb5924383768224325e44ab38333128cdca73941e0f3eafbe6564531', null, '1', null, '[]', '0', '2019-08-27 15:05:47', '2019-08-27 15:05:47', '2019-08-27 16:05:47');
INSERT INTO `oauth_access_tokens` VALUES ('58f5abded081dbad76941e031bb7d293a5b58dc1585b95d972b8940929182c4bac44e7a14fee6761', null, '1', null, '[]', '0', '2019-08-27 14:29:43', '2019-08-27 14:29:43', '2019-08-27 15:29:43');
INSERT INTO `oauth_access_tokens` VALUES ('59d7a6f30b23c9dbb1a130e1f950f1607e63b494aaba68d2afc3cf905e795e810fededab45a9fbb6', null, '1', null, '[]', '0', '2019-08-27 11:44:50', '2019-08-27 11:44:50', '2019-08-27 12:44:50');
INSERT INTO `oauth_access_tokens` VALUES ('59ddf627e5c0dd009be299f35b6a7a5a47fda3e8a4563a9395a2dd67cb9290e54e2064606b47fba2', null, '1', null, '[]', '0', '2019-08-27 12:53:06', '2019-08-27 12:53:06', '2019-08-27 13:53:06');
INSERT INTO `oauth_access_tokens` VALUES ('6121e5f6d8c40d155a2293076d222faab82fe6112a1339a56aca32e9931443edd16b494680ee3b63', '1', '2', null, '[]', '0', '2019-08-27 11:26:40', '2019-08-27 11:26:40', '2019-08-27 12:26:40');
INSERT INTO `oauth_access_tokens` VALUES ('632e48861c692c5bb0d500afd9e384d398428d21a10eafdac85e6bae025c8929e2a1887303662dab', null, '1', null, '[]', '0', '2019-08-27 11:53:49', '2019-08-27 11:53:49', '2019-08-27 12:53:49');
INSERT INTO `oauth_access_tokens` VALUES ('667c58ff86f18528963828651023f47a26b1dc21263de82f28d66477b5acfaa79751b45abd0aeb67', '1', '2', null, '[]', '0', '2019-08-27 10:50:51', '2019-08-27 10:50:51', '2019-08-27 11:50:51');
INSERT INTO `oauth_access_tokens` VALUES ('68ba19e8b0160c2a9ff19dbefc6c81549a7e64dc608907eb5a8bf511dc76216b78b2ebea6dd7ae39', null, '1', null, '[]', '0', '2019-08-27 15:04:38', '2019-08-27 15:04:38', '2019-08-27 16:04:38');
INSERT INTO `oauth_access_tokens` VALUES ('6931463731379cd9545b4c7a932950038b806a9062d464d403e087981cabbd7aa8737b9d1d79cfc4', null, '1', null, '[]', '0', '2019-08-27 13:03:02', '2019-08-27 13:03:02', '2019-08-27 14:03:01');
INSERT INTO `oauth_access_tokens` VALUES ('6a57722089487a2af139eb3efdb934633867a38aec5ed0817cfdda036edf97b2c463ea8d82747e95', null, '1', null, '[]', '0', '2019-08-27 12:30:02', '2019-08-27 12:30:02', '2019-08-27 13:30:02');
INSERT INTO `oauth_access_tokens` VALUES ('6c3f513b6c48276066bda3a9b1474370a7a4996892050472b0e0656cf08a11b4cbf606549bea3306', null, '1', null, '[]', '0', '2019-08-27 15:01:29', '2019-08-27 15:01:29', '2019-08-27 16:01:29');
INSERT INTO `oauth_access_tokens` VALUES ('6f46ad9fa0b307bfc7d423affe668dd166e974b6d68dfa1b68ec97b502d347107726fa53d3effabe', null, '1', null, '[]', '0', '2019-08-27 12:34:12', '2019-08-27 12:34:12', '2019-08-27 13:34:12');
INSERT INTO `oauth_access_tokens` VALUES ('6f5a11a762dba4251f4570f297695db346ede9c3c49b2c056a86c9c0c8e9b986228cb79f4a3dd65e', null, '1', null, '[]', '0', '2019-08-27 12:44:29', '2019-08-27 12:44:29', '2019-08-27 13:44:29');
INSERT INTO `oauth_access_tokens` VALUES ('71773093beed602a5711037ef0b313e051b7b013706e9356d4194572259d0f90a458f4c6d8f5c285', null, '1', null, '[]', '0', '2019-08-27 12:58:38', '2019-08-27 12:58:38', '2019-08-27 13:58:38');
INSERT INTO `oauth_access_tokens` VALUES ('71e1e56d45faf03fbd2b71586314fdae81e15aea823afce40c1909134d43468e423547fef081d578', null, '1', null, '[]', '0', '2019-08-27 12:35:02', '2019-08-27 12:35:02', '2019-08-27 13:35:02');
INSERT INTO `oauth_access_tokens` VALUES ('7255756f30ed3005ca256670380d44e8cedc144458269353a1d493cb4608408e7648c5b6a13da17a', null, '1', null, '[]', '0', '2019-08-27 12:49:31', '2019-08-27 12:49:31', '2019-08-27 13:49:31');
INSERT INTO `oauth_access_tokens` VALUES ('735777fa016aa0de4808c29cc7c572f849d2133eecf8fd100b26b9611f3a982ec2c2b0aa012f0930', null, '1', null, '[]', '0', '2019-08-27 13:00:44', '2019-08-27 13:00:44', '2019-08-27 14:00:44');
INSERT INTO `oauth_access_tokens` VALUES ('75882944c37d2cd9ff67e8b685f98734960c6116c71c9be22a9b532cf6e02fc57cfb31f97b25b1ba', null, '1', null, '[]', '0', '2019-08-27 12:34:24', '2019-08-27 12:34:24', '2019-08-27 13:34:24');
INSERT INTO `oauth_access_tokens` VALUES ('77a8c836a6e1359bdfb17a5f4a6b556c1996ab8158fe614f85fb93b3b8a56e7ae61333201b8ff48f', null, '1', null, '[]', '0', '2019-08-27 13:09:32', '2019-08-27 13:09:32', '2019-08-27 14:09:32');
INSERT INTO `oauth_access_tokens` VALUES ('78eb550c83ee016d148de38fc88da9e957059bc8a2d988529a14da1f62de8f21f029ba8ee7339535', null, '1', null, '[]', '0', '2019-08-27 12:03:28', '2019-08-27 12:03:28', '2019-08-27 13:03:28');
INSERT INTO `oauth_access_tokens` VALUES ('791f4a4abf0385055c39e6b950cef78d246dbb104645e17aa2ce05a838c699e43683d6faec87f1e7', null, '1', null, '[]', '0', '2019-08-27 13:00:42', '2019-08-27 13:00:42', '2019-08-27 14:00:42');
INSERT INTO `oauth_access_tokens` VALUES ('793638630c6aba4efa01e2c6e4a7c2cd3c07ae3dcf9c9f0b0d1f95ec157cf72a364af13b28a0d0d6', null, '1', null, '[]', '0', '2019-08-27 13:04:04', '2019-08-27 13:04:04', '2019-08-27 14:04:04');
INSERT INTO `oauth_access_tokens` VALUES ('7a20730634cfcb7df1f955c2e7c0d66fc801ffbcf0f2e8b437e7030728b944ed5598621eeb5d0253', null, '1', null, '[]', '0', '2019-08-27 12:20:40', '2019-08-27 12:20:40', '2019-08-27 13:20:40');
INSERT INTO `oauth_access_tokens` VALUES ('7b8be37bd79da7e384e59ef3ca5a5b90ef05fa312c6502001171190c18dc26eedd368ebcb4536f42', null, '1', null, '[]', '0', '2019-08-27 13:03:48', '2019-08-27 13:03:48', '2019-08-27 14:03:47');
INSERT INTO `oauth_access_tokens` VALUES ('7bd7a5b038d4fe745f528dd7152ddc2a4928942eef336893aab595fa9cec3ef336fafc4871b8d951', null, '1', null, '[]', '0', '2019-08-27 14:23:42', '2019-08-27 14:23:42', '2019-08-27 15:23:42');
INSERT INTO `oauth_access_tokens` VALUES ('7fba68e9cf042b55599b3df0f302759526fc1139dc16f25efa33357bf650c28cb86b30ec20355f7a', '1', '2', null, '[]', '0', '2019-08-27 11:33:52', '2019-08-27 11:33:52', '2019-08-27 12:33:52');
INSERT INTO `oauth_access_tokens` VALUES ('83ca1622d3a6b7d09e73a5a5575e0dfa49e1a5908b75026cc8b5db9966ffc42403e2cc947a7b928e', null, '1', null, '[]', '0', '2019-08-27 12:40:25', '2019-08-27 12:40:25', '2019-08-27 13:40:25');
INSERT INTO `oauth_access_tokens` VALUES ('873171ba5d0b5c3a5df737c7244a9a75003a3e1ab9b134584bf1801860a695a6581c6e92b4d29726', null, '1', null, '[]', '0', '2019-08-27 12:58:42', '2019-08-27 12:58:42', '2019-08-27 13:58:42');
INSERT INTO `oauth_access_tokens` VALUES ('88a419131d037d41cc699e51c9e776c921cd128dbe39498873808c18c2d80bc6fb2f6b205cbcb8ac', null, '1', null, '[]', '0', '2019-08-27 11:48:10', '2019-08-27 11:48:10', '2019-08-27 12:48:10');
INSERT INTO `oauth_access_tokens` VALUES ('88c6619efa72c65efc65f7753ae554ced0d2358178a6f890a60e6f28d1b01afb3d88dcd608b69608', null, '1', null, '[]', '0', '2019-08-27 12:31:05', '2019-08-27 12:31:05', '2019-08-27 13:31:05');
INSERT INTO `oauth_access_tokens` VALUES ('89e42d47ad432681ebd3c83f40300bc994520f0e96e6888f93828b401867596c0d5678cf720fc9d2', null, '1', null, '[]', '0', '2019-08-27 12:30:46', '2019-08-27 12:30:46', '2019-08-27 13:30:46');
INSERT INTO `oauth_access_tokens` VALUES ('8e5d6fe6a48c95cb64ce84f42ca957e801bad51784bdea100956f62fb1013e476a7f585e47f5e99f', '1', '2', null, '[]', '0', '2019-08-27 10:25:49', '2019-08-27 10:25:49', '2019-08-27 11:25:49');
INSERT INTO `oauth_access_tokens` VALUES ('92b830da603fa3ad1c659cb1b19c769433b089f8894d638b2a32fe7cfe318ca14e9fead0b679c1a4', null, '1', null, '[]', '0', '2019-08-27 14:23:19', '2019-08-27 14:23:19', '2019-08-27 15:23:19');
INSERT INTO `oauth_access_tokens` VALUES ('93b4a084e08797107958cede1e1bbcdda65964ecc15d593b67b8a901a4366caacbe6768f31d82ac8', null, '1', null, '[]', '0', '2019-08-27 15:05:43', '2019-08-27 15:05:43', '2019-08-27 16:05:43');
INSERT INTO `oauth_access_tokens` VALUES ('93f1a416cd21c1b3d9ea6c5e2e70aa62604005e76618310507ad19c57c02ff9b2dbf5477c1de5cc3', null, '1', null, '[]', '0', '2019-08-27 15:00:47', '2019-08-27 15:00:47', '2019-08-27 16:00:47');
INSERT INTO `oauth_access_tokens` VALUES ('94f9508efcdefe7aa42cecd890b9dc11ebdf9e12e4decd710a1c3643b73d76b453fed2be7be45d33', null, '1', null, '[]', '0', '2019-08-27 13:03:37', '2019-08-27 13:03:37', '2019-08-27 14:03:37');
INSERT INTO `oauth_access_tokens` VALUES ('95b609be649938cf231888200354d9af3f76a89270ba6eb21ad84b607d5ad2d265d92094da62826b', null, '1', null, '[]', '0', '2019-08-27 11:40:39', '2019-08-27 11:40:39', '2019-08-27 12:40:39');
INSERT INTO `oauth_access_tokens` VALUES ('95bf666adf219def2de315e292947e328ce132dad3f450d69809e9d99929bca52eb2464cffef81b4', null, '1', null, '[]', '0', '2019-08-27 12:27:48', '2019-08-27 12:27:48', '2019-08-27 13:27:48');
INSERT INTO `oauth_access_tokens` VALUES ('966c9ec54e4e8c6cb9219612e951f313f35a5204351acb2a32e9be22f9b84e22566a39249cf7ef01', null, '1', null, '[]', '0', '2019-08-27 14:44:16', '2019-08-27 14:44:16', '2019-08-27 15:44:16');
INSERT INTO `oauth_access_tokens` VALUES ('9808ff300b763f64171de8066afb5c940931a98a964f27282a5490d669c9aa7fb4fd49ee222099c0', null, '1', null, '[]', '0', '2019-08-27 10:27:11', '2019-08-27 10:27:11', '2019-08-27 11:27:11');
INSERT INTO `oauth_access_tokens` VALUES ('9914251e1a8688e2f88485b14f2610a9b10741745f0017d98460e548836314db6ba78e90baa140e8', '1', '2', null, '[]', '0', '2019-08-27 10:54:12', '2019-08-27 10:54:12', '2019-08-27 11:54:12');
INSERT INTO `oauth_access_tokens` VALUES ('99250ffae10a70f16e6a1f0a4daf09dc5c49f14c889a6005dfd31d17af16e74e37aa842cb70f3ea2', null, '1', null, '[]', '0', '2019-08-27 13:10:34', '2019-08-27 13:10:34', '2019-08-27 14:10:34');
INSERT INTO `oauth_access_tokens` VALUES ('9d47c06c8f0417c1a6eb4ce344aee6ca2824415a00f2f5ff0a15a4562adffe5c48791516cf1bd5f5', null, '1', null, '[]', '0', '2019-08-27 13:07:48', '2019-08-27 13:07:48', '2019-08-27 14:07:48');
INSERT INTO `oauth_access_tokens` VALUES ('9fa8d16a214b7f63fb2c602801990f2548218c2dcc01b1362aed2175f167654e5b255286ff9785a8', null, '1', null, '[]', '0', '2019-08-27 12:32:58', '2019-08-27 12:32:58', '2019-08-27 13:32:58');
INSERT INTO `oauth_access_tokens` VALUES ('a1996266e23e4d8cbec2ed85e3ebe30c55e46dc19381734326704951bbe6d44dbea11b2f7f637d4a', null, '1', null, '[]', '0', '2019-08-27 12:25:52', '2019-08-27 12:25:52', '2019-08-27 13:25:52');
INSERT INTO `oauth_access_tokens` VALUES ('aad86321f9e4fa501195bd45f198a4956b488d4d69d57e1aef412e49bec2c08fa29323578fc5d072', null, '1', null, '[]', '0', '2019-08-27 14:53:37', '2019-08-27 14:53:37', '2019-08-27 15:53:37');
INSERT INTO `oauth_access_tokens` VALUES ('ab28c3047ae57938067e5b58ffa3e2d9b59f6c85baa4f1515ab7f7c2257aa6edc06035ac7c0269b1', null, '1', null, '[]', '0', '2019-08-27 12:31:54', '2019-08-27 12:31:54', '2019-08-27 13:31:54');
INSERT INTO `oauth_access_tokens` VALUES ('aeb75fa6af1d1b30790fb99aa7207f2f602a1385f2e4b34c8b99c10347fb5a7be21b0e635265ab72', null, '1', null, '[]', '0', '2019-08-27 14:29:22', '2019-08-27 14:29:22', '2019-08-27 15:29:22');
INSERT INTO `oauth_access_tokens` VALUES ('b1e2b47268ac2ae0ae94ca74b58ec5de42eeaf09a5c84a29f2e3bf126e73603a9aac662d626d4cad', null, '1', null, '[]', '0', '2019-08-27 13:11:14', '2019-08-27 13:11:14', '2019-08-27 14:11:14');
INSERT INTO `oauth_access_tokens` VALUES ('b2d84736a4a3d11ef66da9f49fed4e8aad40d06ab97a4d35393031de3f457d415a59620ab7694a50', null, '1', null, '[]', '0', '2019-08-27 13:02:51', '2019-08-27 13:02:51', '2019-08-27 14:02:51');
INSERT INTO `oauth_access_tokens` VALUES ('b50b323a41a0fb9f69e55eadb92296bc15a77db8c7914745e428e37afd04c2c27da7d142795f26c7', null, '1', null, '[]', '0', '2019-08-27 14:59:38', '2019-08-27 14:59:38', '2019-08-27 15:59:38');
INSERT INTO `oauth_access_tokens` VALUES ('b6027d6ba1feaceac666c0de8f0f9d71d9db9fc90eb8a137c1aa8e31d94c1a3d820df40d1e039a0b', null, '1', null, '[]', '0', '2019-08-27 10:24:46', '2019-08-27 10:24:46', '2019-08-27 11:24:46');
INSERT INTO `oauth_access_tokens` VALUES ('b63c4c5d79a4c275203476c4e6fd9a9ed92ea915e99254b5ac27ee45ca08fa68781772e295ae03e7', null, '1', null, '[]', '0', '2019-08-27 11:44:31', '2019-08-27 11:44:31', '2019-08-27 12:44:31');
INSERT INTO `oauth_access_tokens` VALUES ('b71bd247331905ce29af76b2a9fdd48177f2a0582b70a57f58780bead70e98ac2aeffe8218df6985', null, '1', null, '[]', '0', '2019-08-27 12:58:40', '2019-08-27 12:58:40', '2019-08-27 13:58:40');
INSERT INTO `oauth_access_tokens` VALUES ('bfe525a9e19099513bf1ff7fd58b5bbc7a9c721c251fbbcac17f6b5997dedc7a8863b16589bd7046', '1', '2', null, '[]', '0', '2019-08-27 11:36:10', '2019-08-27 11:36:10', '2019-08-27 12:36:10');
INSERT INTO `oauth_access_tokens` VALUES ('c141a5141597b42adcb8464116102971c611b88a114ecbb0bdccf241b1f94fb226151a5841cde5f6', '1', '2', null, '[]', '0', '2019-08-27 11:20:56', '2019-08-27 11:20:56', '2019-08-27 12:20:56');
INSERT INTO `oauth_access_tokens` VALUES ('c568dc94fec0a434a17b00d1cca8cf6da0defe1785f40b41b9ee59a3afe2b342e1fca155d872b5cc', null, '1', null, '[]', '0', '2019-08-27 11:54:08', '2019-08-27 11:54:08', '2019-08-27 12:54:08');
INSERT INTO `oauth_access_tokens` VALUES ('c6355011a77a49291fc7b8d9b247bfbc8ee3af6ce80029353d55772557826283f95b19ea63894a93', null, '1', null, '[]', '0', '2019-08-27 13:03:58', '2019-08-27 13:03:58', '2019-08-27 14:03:58');
INSERT INTO `oauth_access_tokens` VALUES ('c8c96bc129de4e250ccf8415042b4e2f7f87acd2e181e11c9e70e268616809d61e4638c239fe45e2', null, '1', null, '[]', '0', '2019-08-27 14:19:59', '2019-08-27 14:19:59', '2019-08-27 15:19:56');
INSERT INTO `oauth_access_tokens` VALUES ('c90deb80fce9c711c30ab977ea2951c6a4d26caa7799e8549411144f1e281bb971a46dac549808f2', '1', '2', null, '[]', '0', '2019-08-27 10:49:46', '2019-08-27 10:49:46', '2019-08-27 11:49:46');
INSERT INTO `oauth_access_tokens` VALUES ('ca87867eab2a3ce41e5c776e1a1a0834bb5c69bcc20d6bc2835de75a1c16c51433a094e357a2af35', null, '1', null, '[]', '0', '2019-08-27 14:44:03', '2019-08-27 14:44:03', '2019-08-27 15:44:03');
INSERT INTO `oauth_access_tokens` VALUES ('cc1c96c2cb14d50b508d0116ba136be957b3abb47c72a1567c64e837468805665e548fd98424031c', null, '1', null, '[]', '0', '2019-08-27 10:28:06', '2019-08-27 10:28:06', '2019-08-27 11:28:06');
INSERT INTO `oauth_access_tokens` VALUES ('cd1d8b656cda533e8d6f5f509d93a29511d042f60404de1d39cb990013774a92d684578f2f6487a1', null, '1', null, '[]', '0', '2019-08-27 14:25:01', '2019-08-27 14:25:01', '2019-08-27 15:25:01');
INSERT INTO `oauth_access_tokens` VALUES ('cd388dc5fd64650fb6ef552f435d01d724114dd0cfc794c4edec8c33e53d86e577e9697834664284', null, '1', null, '[]', '0', '2019-08-27 11:54:22', '2019-08-27 11:54:22', '2019-08-27 12:54:22');
INSERT INTO `oauth_access_tokens` VALUES ('d418cd0056b5aa79bc7920952850654d5ee1354cf6b16835af657befeffb4883c07349528d00ef7a', null, '1', null, '[]', '0', '2019-08-27 14:20:23', '2019-08-27 14:20:23', '2019-08-27 15:20:23');
INSERT INTO `oauth_access_tokens` VALUES ('d42d7d9e0a40ec171c1eeedc0fafa018a98745fe2d144a2c4c750c578461877e5f79ff53584c349b', null, '1', null, '[]', '0', '2019-08-27 12:47:36', '2019-08-27 12:47:36', '2019-08-27 13:47:36');
INSERT INTO `oauth_access_tokens` VALUES ('d53f76e071579fb1d315f379274ecc3a5524ee233b3cb1621743b6c04837b499c244656a17c7dd0d', null, '1', null, '[]', '0', '2019-08-27 13:02:46', '2019-08-27 13:02:46', '2019-08-27 14:02:46');
INSERT INTO `oauth_access_tokens` VALUES ('d604098eb860e387ba79436b6370c090cb4ef4c067174b67b4a8bc3c0d9fdb84c4cbfdb6c74e7545', null, '1', null, '[]', '0', '2019-08-27 12:24:19', '2019-08-27 12:24:19', '2019-08-27 13:24:19');
INSERT INTO `oauth_access_tokens` VALUES ('db017841f70d70d0c58ee1948ba196920fee3a7900a6d615eabee6482a8dd170e2011a2a8ff2de51', null, '1', null, '[]', '0', '2019-08-27 13:07:21', '2019-08-27 13:07:21', '2019-08-27 14:07:20');
INSERT INTO `oauth_access_tokens` VALUES ('df46c8cd09837005a61418f6f609cc0a8b4bd8b9dc531c24cec485c0a154a17fbaf77632a1accc1f', null, '1', null, '[]', '0', '2019-08-27 12:29:41', '2019-08-27 12:29:41', '2019-08-27 13:29:41');
INSERT INTO `oauth_access_tokens` VALUES ('e03b0d3307acb5e48a0654cb496acbe58854496c59c9cc8597f03486553842043dd9c526a56a6855', null, '1', null, '[]', '0', '2019-08-27 12:24:56', '2019-08-27 12:24:56', '2019-08-27 13:24:56');
INSERT INTO `oauth_access_tokens` VALUES ('e1fdf8806ecdb0e0c2c585d4a6cbaada0af53a5aec231f9832b63815c1070706ae7cb16af6363e7d', null, '1', null, '[]', '0', '2019-08-27 12:57:41', '2019-08-27 12:57:41', '2019-08-27 13:57:41');
INSERT INTO `oauth_access_tokens` VALUES ('e5e3426d1a3fed7ed242312cd309f0a6f9a21242065a88d217768f8c8d4440cd1bc3c329741b11d5', null, '1', null, '[]', '0', '2019-08-27 12:54:01', '2019-08-27 12:54:01', '2019-08-27 13:54:01');
INSERT INTO `oauth_access_tokens` VALUES ('e5feb71dac10575e689ec9de65af25f4516428dd379bd75d196331c6ec8908a60f20383641028f53', null, '1', null, '[]', '0', '2019-08-27 10:27:47', '2019-08-27 10:27:47', '2019-08-27 11:27:47');
INSERT INTO `oauth_access_tokens` VALUES ('e809697d4f68aa8b4ef478fdacd248195b598c3cc1ff145beadbd515a9b7facadcd8943a82403b67', null, '1', null, '[]', '0', '2019-08-27 14:53:52', '2019-08-27 14:53:52', '2019-08-27 15:53:52');
INSERT INTO `oauth_access_tokens` VALUES ('e8478311f8d49bb5f2d16bb7dc5a913c7fb91603e200903094252aca9118465d4843e474ea5ea5e7', null, '1', null, '[]', '0', '2019-08-27 13:05:18', '2019-08-27 13:05:18', '2019-08-27 14:05:18');
INSERT INTO `oauth_access_tokens` VALUES ('eba1b2c41f7c610a567caeec7a85bf6590c9e7da183a68cbbb8bf51a38677dc2f938dd15e6b5ecd7', null, '1', null, '[]', '0', '2019-08-27 12:58:44', '2019-08-27 12:58:44', '2019-08-27 13:58:44');
INSERT INTO `oauth_access_tokens` VALUES ('efd0e5df5d4d87b22b247aca60283408d0a2b4b1f5e837c248673a42d8049ad6c6a9dc52a6e3bdf6', null, '1', null, '[]', '0', '2019-08-27 15:00:45', '2019-08-27 15:00:45', '2019-08-27 16:00:45');
INSERT INTO `oauth_access_tokens` VALUES ('f8f1c11d8a5b99599f7f28a3ec3a4d38d07fc8edc964099d3d1d96b98f58aeec77695247fc1b6881', '1', '2', null, '[]', '0', '2019-08-27 10:57:34', '2019-08-27 10:57:34', '2019-08-27 11:57:34');
INSERT INTO `oauth_access_tokens` VALUES ('fcea2a9c559d4633016e94d9fe2505ebd808bda338d3e3c059c1de8e442131ded9a49271a09382b4', null, '1', null, '[]', '0', '2019-08-27 12:54:21', '2019-08-27 12:54:21', '2019-08-27 13:54:21');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', '0', 'public', 'C7P9g3tJDvzFyuA62a4XN9EdrQUxCPiueBu0G1ie', 'http://agrimek.local/auth/callback', '0', '0', '0', '2019-08-27 10:10:34', '2019-08-27 10:10:34');
INSERT INTO `oauth_clients` VALUES ('2', null, 'password', '05GamdhO1PAjm99qxrNWA724NlAIRXVlxQcsIHOr', 'http://localhost', '0', '1', '0', '2019-08-27 10:11:37', '2019-08-27 10:11:37');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('1670b4f04fc82cb66b2ad7884561ad96ba2811aa77cac117d6e92e84265e87d30fc3eb74cec338bf', '7fba68e9cf042b55599b3df0f302759526fc1139dc16f25efa33357bf650c28cb86b30ec20355f7a', '0', '2019-09-26 11:33:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('23845c947fc1e9d0a511e84dbec5dbef537049edebf9e51040492e9dcf5d1986b4bf041580cb195f', '6121e5f6d8c40d155a2293076d222faab82fe6112a1339a56aca32e9931443edd16b494680ee3b63', '0', '2019-09-26 11:26:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('3503285bfea94c1a408996f574dd9ae23284c63ca94f3a58f037c57043e4fd440da0fd9a6f7f5fca', 'c90deb80fce9c711c30ab977ea2951c6a4d26caa7799e8549411144f1e281bb971a46dac549808f2', '0', '2019-09-26 10:49:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('3d2f6230392364fe40b5108567e62e2297de7be280d702ff86e6e618976f153725575b023a660b04', '1a0530e1adb522d4b8148afee6d0584975adc9d2ac2436353dc488920da28c49632ef2174097b164', '0', '2019-09-26 11:27:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('4860a0c7e1422a61c402e60b62fcf915b6cd1e98ad927f0dfe10544c61a291289dff19a2c3ddc323', 'bfe525a9e19099513bf1ff7fd58b5bbc7a9c721c251fbbcac17f6b5997dedc7a8863b16589bd7046', '0', '2019-09-26 11:36:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('8ddc2239909493c2239e6fb32e7cf02ecaec74b5264d1ae01be8d41664bdad6853067f93fe3eb73e', 'c141a5141597b42adcb8464116102971c611b88a114ecbb0bdccf241b1f94fb226151a5841cde5f6', '0', '2019-09-26 11:20:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('a3b3a92b67c0f1f1781d2ae3bcd2430d1b0f08f5cf2d4e3742ea538fb39d1b2a09f3bf5f717a1005', 'f8f1c11d8a5b99599f7f28a3ec3a4d38d07fc8edc964099d3d1d96b98f58aeec77695247fc1b6881', '0', '2019-09-26 10:57:34');
INSERT INTO `oauth_refresh_tokens` VALUES ('c3702ad516a2641d29dc69326ada78d674af9d39b7b47e660fd9bcabdcdba5a0222a02928b160b3f', '0d0e2922f5f2fbd870e3975f754be7e3857e98a9c076a60f51799f7664230e417262748a28d46b68', '0', '2019-09-26 10:31:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('ce9b9f8f59a5557295cdec25b3f4f0df92e5d89510fa49fee136ead45e234631738ead3ef7c75598', '8e5d6fe6a48c95cb64ce84f42ca957e801bad51784bdea100956f62fb1013e476a7f585e47f5e99f', '0', '2019-09-26 10:25:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('dca4469706ba15d809a267c82ca0ccd07ca9a6ab6ff2a32bb5258c0bfaf81d450db7c90cd6b9b5fc', '667c58ff86f18528963828651023f47a26b1dc21263de82f28d66477b5acfaa79751b45abd0aeb67', '0', '2019-09-26 10:50:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('ec7c50765a462eb7307c475a36fc1d82efd2000e1ca57e283bd5a2f34e5ea5382113813830c3ccaf', '9914251e1a8688e2f88485b14f2610a9b10741745f0017d98460e548836314db6ba78e90baa140e8', '0', '2019-09-26 10:54:12');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', 'non', 'Delectus temporibus iste sapiente qui. Et et repudiandae ut expedita tempora repudiandae.', '1979-01-01 14:58:18', '3.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('2', 'esse', 'Natus ut laudantium velit culpa. Ipsum est voluptatem excepturi hic pariatur.', '2011-08-30 13:49:17', '5.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('3', 'eos', 'Explicabo omnis et cupiditate placeat nobis illo. Quas eius odit qui quia.', '1984-11-12 20:51:33', '4.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('4', 'sunt', 'Ut expedita at quaerat explicabo accusantium facilis ut aut.', '1995-02-12 14:25:25', '5.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('5', 'omnis', 'Aut vel dolor totam inventore esse ut.', '1984-07-02 11:08:12', '5.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('6', 'facilis', 'Possimus accusamus hic nostrum et nisi sit.', '1976-06-15 12:28:49', '3.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('7', 'consequatur', 'Odit voluptas aliquid quidem magni. Libero voluptate repellendus fugiat provident consectetur soluta et.', '1989-04-05 21:55:03', '5.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('8', 'et', 'Quia voluptatem dolorem ut ipsum assumenda. Delectus laudantium et ut consequatur autem vero impedit qui.', '1982-03-07 19:25:28', '3.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('9', 'et2332', 'Eveniet nam laudantium quibusdam et consectetur ad explicabo.', '2016-12-20 08:01:09', '1.jpg', '2019-08-27 10:02:26', '2019-08-27 11:21:14', null);
INSERT INTO `projects` VALUES ('10', 'rerum', 'Quo et et nemo vero facere. Enim ut repudiandae aut sit blanditiis in.', '1997-10-25 15:25:07', '5.jpg', '2019-08-27 10:02:26', '2019-08-27 10:02:26', null);
INSERT INTO `projects` VALUES ('11', 'Proyecto nuevo', 'fgdfgdgfdgdgf', '2019-08-27 07:03:03', '0RunqzXj0enVptnuItXuAUepYHJ5F8UBTkgOXAEV.jpeg', '2019-08-27 11:03:34', '2019-08-27 11:03:34', null);
INSERT INTO `projects` VALUES ('12', 'Segundo Proyecto', 'qweqeqwe', '2019-08-27 07:21:44', 'gA9g1YsND32ZJigv9nT5edHMD34HQ5tFvZH4HAUK.jpeg', '2019-08-27 11:22:08', '2019-08-27 11:22:08', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'damian watsica', 'kenyon46@example.org', '$2y$10$VANv6G8uLQv2gpe6/4j7xujsNUm87.zFijk8MLjrZaMNgKbQ0eyMi', 'pxsbXAZYjG', '2019-08-27 10:02:24', '2019-08-27 10:02:24', null);
INSERT INTO `users` VALUES ('2', 'ronaldo keebler', 'vmueller@example.net', '$2y$10$VANv6G8uLQv2gpe6/4j7xujsNUm87.zFijk8MLjrZaMNgKbQ0eyMi', 'e4RaQ8t5AE', '2019-08-27 10:02:25', '2019-08-27 10:02:25', null);
INSERT INTO `users` VALUES ('3', 'janiya mccullough i', 'ardella.auer@example.net', '$2y$10$VANv6G8uLQv2gpe6/4j7xujsNUm87.zFijk8MLjrZaMNgKbQ0eyMi', 'bCmRGQPu6L', '2019-08-27 10:02:25', '2019-08-27 10:02:25', null);
INSERT INTO `users` VALUES ('4', 'vern purdy', 'raynor.maynard@example.org', '$2y$10$VANv6G8uLQv2gpe6/4j7xujsNUm87.zFijk8MLjrZaMNgKbQ0eyMi', '1afHCfpPV3', '2019-08-27 10:02:25', '2019-08-27 10:02:25', null);
INSERT INTO `users` VALUES ('5', 'd\'angelo moen', 'kirlin.aletha@example.org', '$2y$10$VANv6G8uLQv2gpe6/4j7xujsNUm87.zFijk8MLjrZaMNgKbQ0eyMi', 'C4ErxvlOu1', '2019-08-27 10:02:25', '2019-08-27 10:02:25', null);
