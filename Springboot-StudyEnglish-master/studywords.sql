/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : studywords

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 29/06/2021 12:05:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `gradeId` int(4) NOT NULL,
  `gradeName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`gradeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, '基础');
INSERT INTO `grade` VALUES (2, '进阶');

-- ----------------------------
-- Table structure for listen
-- ----------------------------
DROP TABLE IF EXISTS `listen`;
CREATE TABLE `listen`  (
  `listenId` int(11) NOT NULL,
  `listenName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `grade` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`listenId`) USING BTREE,
  INDEX `listen_grade_fk`(`grade`) USING BTREE,
  CONSTRAINT `listen_grade_gradeId_fk` FOREIGN KEY (`grade`) REFERENCES `grade` (`gradeid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of listen
-- ----------------------------
INSERT INTO `listen` VALUES (1, '小学生英语练习题', '', '练习内容：\r\n一、语音：挑出含有题前划线部分发音的单词：\r\n(       )1.thank     A. friend     B. fine       C. English     D. nice (       )2. his      A. desk      B. boys      C. books      D. sorry  (       )3. of A. family B. wife C. seven D. four\r\n(       )4. think     A. these      B. their       C. thank      D. brother (       )5. where A. we B. who C. whose D. over\r\n二、用冠词 a, an, the 填空，不需要处划	：\r\n1. 	old man in 	car is 	old teacher.\r\n2.Can you see 	dog over there? It	’ s my dog.\r\n3.I can see 	boy and 	woman in 	picture. 	boy is Jim and 	woman is Miss Gao.\r\n4.There	’ s  	 “ x” and   in the w“orud”	“ excuse  ”.\r\n5.Lucy can play 	piano, but she can	’ t play 	football.\r\n三、用括号内所给词的适当形式填空：\r\n1. Mr King is 	(Lucy and Lily) father.	2. Today is 	(children) Day.\r\n3. Miss Li is those 	(girl)Chinese teacher.	4. Which of the two coats 	(be) yours?\r\n5.How much money 	(be) there in your purse? There 	(be) twenty yuan.\r\n四、选择填空，将正确答案的序号填入题前括号内：\r\n(	)1. Look at your new clothes. Please 	.\r\nA. put it on	B.put on it	C. put them on	D. put on them\r\n(	)2.	—“ Aren ’ t you American?” —“ 	. I	’ m English.	”\r\nA. No, I am.	B. Yes, I	’ m not.C. No, I	’ m not.	D. Yes, I am. (	)3.Tom looks 		Jack. They	’ re twins.\r\nA. at	B. after	C. up	D. like\r\n(	)4.	“ 	that at the school gate?	” “ I think 	Mr Wang.	”\r\nA. Where  ’ s, she		’Bs. What  ’ s, I	’ Cm. Who ’ s, it	’ sD. How ’ s, you	’ re (	)5. The sweater 	our Chinese teacher is old.\r\nA. with	B. on	C. in	D. under (	)6.I have a 		.\r\nA. twin sister	B. twin’ s sister	C. twin sisters	D. twins sisters\r\n(	)7. They’ re 	. They aren’ t 	.\r\nA.	Americans,	Englishes	B.American,	Englishes	C.  Americans,	Englishen	D.\r\nAmericans, Englishs\r\n(	)8. The boys 	a football. It’ s new.\r\nA.there are	B. there is	C. there have	D. there has\r\n(               )9. “Can\' t you help me now?”“  	, I can\'t now.\"\r\nA. Yes	B. No	C. Ok	D. Sorry	\r\n(	)10. Which is your pen? 	?\r\nA. A red one and a blue one	B. A red one or a blue one\r\nC. The red one and the blue one	D. The red one or the blue one', 1);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creatTime` date NOT NULL,
  PRIMARY KEY (`noticeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '欢迎', '', '2020-04-14');
INSERT INTO `notice` VALUES (2, '欢迎您的到来，请您仔细阅读以下公告！', '', '2020-04-16');

-- ----------------------------
-- Table structure for sentence
-- ----------------------------
DROP TABLE IF EXISTS `sentence`;
CREATE TABLE `sentence`  (
  `sentenceId` int(11) NOT NULL AUTO_INCREMENT,
  `sentenceName` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `explain` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sentenceId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sentence
-- ----------------------------
INSERT INTO `sentence` VALUES (1, 'Never put off what you can do today until tomorrow.', '今日事今日毕');
INSERT INTO `sentence` VALUES (2, 'Action speak louder than words!', '行动胜于言语');
INSERT INTO `sentence` VALUES (3, 'The man who has made up his mind to win will never say impossible.', '下决心取得胜利的人绝不会说“不可能”。');
INSERT INTO `sentence` VALUES (4, 'Confidence is contagious. So is a lack of confidence. ', '自信是会传染的，缺乏自信也是。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(8) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (9, 'hu', '123456', '1182528504@qq.com');
INSERT INTO `user` VALUES (10, 'chun', '111111', '18645230407@163.com');

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word`  (
  `wordId` int(11) NOT NULL AUTO_INCREMENT,
  `wordName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `audio` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `explanation` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `example` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` int(11) NOT NULL,
  `study` int(11) NOT NULL DEFAULT 0,
  `remember` int(11) NOT NULL DEFAULT 0,
  `collection` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`wordId`) USING BTREE,
  INDEX `word_grade_gradeId_fk`(`grade`) USING BTREE,
  CONSTRAINT `word_grade_gradeId_fk` FOREIGN KEY (`grade`) REFERENCES `grade` (`gradeid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES (1, 'spit', '[spit]', 'n. 唾液，口水，小雨 v. 唾吐，吐出，降小雨', 'The boys were spitting out of the train window ', 1, 1, 1, 0);
INSERT INTO `word` VALUES (2, 'spit', '[spit]', 'n. 唾液，口水，小雨 v. 唾吐，吐出，降小雨', 'The boys were spitting out of the train window ', 1, 1, 1, 0);
INSERT INTO `word` VALUES (3, 'blast', ' [blɑ:st]', 'n. 一阵(强风)，爆炸声，爆破  v. 爆破，摧毁', 'The bomb blast killed several harmless passers-by', 1, 1, 1, 0);
INSERT INTO `word` VALUES (4, 'spill', ' [spil]', 'v. 溢出，洒，使...流出，泄漏 n. 溢出，流', 'Don`studywords`’t jog me, or you’ll make me spill something!', 1, 1, 1, 0);
INSERT INTO `word` VALUES (5, 'candidate', '[’kændidit]', 'n. 候选人，求职者', '  In my estimation, he is a more suitable candidate.', 1, 1, 1, 0);
INSERT INTO `word` VALUES (6, 'slip ', ' [slip]', 'v.滑倒；滑脱；疏忽；溜走 adj. 滑动的；有活结的；活络的', ' The ship slipped into the harbour at night', 1, 1, 1, 0);
INSERT INTO `word` VALUES (7, 'consume', '  [kən’sju:m]', 'v. 消耗，花费，挥霍', '  Consuming or eager to consume great amounts of food; ravenous', 1, 1, 1, 0);
INSERT INTO `word` VALUES (8, 'breed ', ' [bri:d]', 'v. 繁殖，养育 n. 品种，血统', '  I breed some chicks for pets.', 1, 1, 1, 0);
INSERT INTO `word` VALUES (9, 'slide', '  [slaid]', 'vi. 滑，滑动，滑入，悄悄地溜走', ' House values may begin to slide', 1, 1, 1, 0);
INSERT INTO `word` VALUES (10, 'dispose', ' [di’spəuz]', 'vt. 倾向于，处置', '  I must dispose of the trouble', 1, 1, 1, 0);
INSERT INTO `word` VALUES (11, 'transmit', ' [trænz’mit]', 'vt. 传输，传送，代代相传，传达 ', ' This infection is transmitted by mosquitoes', 1, 1, 1, 0);
INSERT INTO `word` VALUES (12, 'transport', ' [træns’pɔ:t]', 'n.运输；输送；运送；运输机 v.运输，流放，为强烈的情绪所激动', ' The goods have been cased up for transport. ', 2, 1, 1, 0);
INSERT INTO `word` VALUES (13, 'acute ', '[ə’kju:t]', 'adj. 敏锐的，剧烈的', 'The patient is complaining of acute earache.', 2, 1, 1, 0);
INSERT INTO `word` VALUES (14, 'acknowledge', '[ək’nɔlidʒ]', 'vt. 承认，公认，告知收到，表示感谢，注意到', 'He is unwilling to acknowledge defeat.', 2, 1, 0, 0);
INSERT INTO `word` VALUES (15, 'absurd', ' [əb’sə:d]', 'adj. 荒唐的', ' He looked absurd in that get-up', 2, 1, 1, 0);
INSERT INTO `word` VALUES (16, 'acquaint', '[ə’kweint]', 'vt. 使...熟知', 'You must acquaint yourself with your new duties.', 2, 1, 1, 0);
INSERT INTO `word` VALUES (17, 'abrupt', '[ə’brʌpt]', 'adj. 突然的，意外的，唐突的，陡峭的', 'It’s very unlike him to be so abrupt.', 2, 1, 1, 0);
INSERT INTO `word` VALUES (18, 'activate', '[’æktiveit]', 'v. 激活，使活动，起动', ' A similar device used to release or activate a mechanism', 2, 1, 1, 0);
INSERT INTO `word` VALUES (19, 'abolish', '[ə’bɔliʃ]', 'vt. 废止，革除', 'There are many bad customs and laws that ought to be abolished', 2, 1, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
