SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for userRefreshTokenExt
-- ----------------------------
DROP TABLE IF EXISTS `userRefreshTokenExt`;
CREATE TABLE `userRefreshTokenExt` (
  `ID` int(11) NOT NULL,
  `refreshToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rdt` datetime(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `f_ID` int(11) NOT NULL AUTO_INCREMENT,
  `f_Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `f_Fullname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `f_Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_Type` int NOT NULL,
  `f_Permission` int(11) NOT NULL,
  PRIMARY KEY (`f_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'sdsdfszdfa','Thomas Watson','nghasd@gmail.com',2,0);

COMMIT;
-- ----------------------------
-- Table structure for infor_teacher
-- ----------------------------
DROP TABLE IF EXISTS `infor_teacher`;
CREATE TABLE `infor_teacher` (
  `f_infor` int(11) NOT NULL AUTO_INCREMENT,
  `f_ID` int(11) NOT NULL,
  `job` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`f_infor`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of infor_teacher
-- ----------------------------
BEGIN;
INSERT INTO `infor_teacher` VALUES (1, 1,'Giảng viên','t-1.jpg','Chuyên ngành ...');
COMMIT;
-- ----------------------------
-- Table structure for aspects_level1
-- ----------------------------
DROP TABLE IF EXISTS `aspects_level1`;
CREATE TABLE `aspects_level1` (
  `ID_aspect1` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_level1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_aspect1`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aspects_level1
-- ----------------------------
BEGIN;
INSERT INTO `aspects_level1` VALUES (1, 'Công nghệ thông tin');
INSERT INTO `aspects_level1` VALUES (2, 'Ngôn ngữ');
INSERT INTO `aspects_level1` VALUES (3, 'Kinh tế');
INSERT INTO `aspects_level1` VALUES (4, 'Thiết kế');
INSERT INTO `aspects_level1` VALUES (5, 'Sức khỏe');
COMMIT;
-- ----------------------------
-- Table structure for aspects_level2
-- ----------------------------
DROP TABLE IF EXISTS `aspects_level2`;
CREATE TABLE `aspects_level2` (
  `ID_aspect` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_aspect1` int(11) unsigned NOT NULL,
  `name_level2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_aspect`),
  FOREIGN KEY (`ID_aspect1`) REFERENCES `aspects_level1`(`ID_aspect1`) ON DELETE CASCADE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aspects_level2
-- ----------------------------

BEGIN;
INSERT INTO `aspects_level2` VALUES (1,1, 'Phần mềm');
INSERT INTO `aspects_level2` VALUES (2, 1,'Hệ thống thông tin');
INSERT INTO `aspects_level2` VALUES (3, 1,'AI và Machine Learning');
INSERT INTO `aspects_level2` VALUES (4,1, 'Mạng máy tính');
INSERT INTO `aspects_level2` VALUES (5, 1,'Khoa học máy tính');
INSERT INTO `aspects_level2` VALUES (6,1, 'An toàn thông tin');
INSERT INTO `aspects_level2` VALUES (7, 2,'Tiếng Anh');
INSERT INTO `aspects_level2` VALUES (8, 2,'Tiếng Trung');
INSERT INTO `aspects_level2` VALUES (9,2, 'Tiếng Nhật');
INSERT INTO `aspects_level2` VALUES (10,2, 'Tiếng Hàn');
INSERT INTO `aspects_level2` VALUES (11,2, 'Tiếng Pháp');
INSERT INTO `aspects_level2` VALUES (12, 3,'Quản trị kinh doanh');
INSERT INTO `aspects_level2` VALUES (13, 3,'Kế toán');
INSERT INTO `aspects_level2` VALUES (14, 3,'Tài chính và ngân hàng');
INSERT INTO `aspects_level2` VALUES (15, 3,'Marketing');
INSERT INTO `aspects_level2` VALUES (16,3, 'Thương mại điện tử');
INSERT INTO `aspects_level2` VALUES (17,3, 'Kinh doanh quốc tế');
INSERT INTO `aspects_level2` VALUES (18, 4,'Thiết kế đồ họa');
INSERT INTO `aspects_level2` VALUES (19, 4,'Thiết kế web');
INSERT INTO `aspects_level2` VALUES (20, 4,'Thiết kế ứng dụng di động');
INSERT INTO `aspects_level2` VALUES (21,4, 'Tư duy thiết kế');
INSERT INTO `aspects_level2` VALUES (22, 5,'Sức khỏe chung');
INSERT INTO `aspects_level2` VALUES (23, 5,'Dinh dưỡng');
INSERT INTO `aspects_level2` VALUES (24, 5,'Yoga');
INSERT INTO `aspects_level2` VALUES (25, 5,'Sơ cứu và an toàn');
COMMIT;
-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `CourseID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_aspect` int(11) unsigned NOT NULL,
  `TeacherID` int(11) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `small_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `brief` varchar(5000) COLLATE utf8_unicode_ci ,
  `fee` decimal(15,2) NOT NULL,
  `discount` decimal(15,2),
  `evalue` decimal(15,1),
  `num_evalue` int(11) NOT NULL,
  `num_join` int (11) NOT NULL,
  `date` date,
  `num_lecture` int(11),
  `status` int ,
  PRIMARY KEY (`CourseID`),
  FOREIGN KEY (`TeacherID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `courses`
ADD FOREIGN KEY (`ID_aspect`) REFERENCES `aspects_level2`(`ID_aspect`);
-- ----------------------------
-- Records of courses
-- ----------------------------

BEGIN;
INSERT INTO `courses` VALUES (1, 1,1,'Học lập trình C','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',5.7,3.7,4.7,32,53,'2020/12/12',11,1);
INSERT INTO `courses` VALUES (2, 1,1,'Học lập trình C','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',5.9,0,4.7,52,53,'2020/12/12',11,1);
INSERT INTO `courses` VALUES (3, 1,1,'Học lập trình C','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',6,3.7,4.7,43,12,'2020/12/12',11,1);
INSERT INTO `courses` VALUES (4, 1,1,'Học lập trình C','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',5.,3.7,4.7,39,31,'2020/12/12',11,1);
INSERT INTO `courses` VALUES (5, 1,1,'Học lập trình C','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',5.8,0.7,4.7,21,13,'2020/12/12',11,1);
INSERT INTO `courses` VALUES (6, 1,1,'Học lập trình C','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',9,7.7,4.7,69,83,'2020/12/12',11,1);
COMMIT;



-- ----------------------------
-- Table structure for watchlists
-- ----------------------------
DROP TABLE IF EXISTS `watchlists`;
CREATE TABLE `watchlists` (
  `ID_list` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `f_ID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  PRIMARY KEY (`ID_list`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `watchlists`
ADD FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`);

-- ----------------------------
-- Table structure for course_join
-- ----------------------------
DROP TABLE IF EXISTS `course_join`;
CREATE TABLE `course_join` (
  `ID_join` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `f_ID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `status` int NOT NULL,
  `lecture` varchar(200),
  PRIMARY KEY (`ID_join`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `course_join`
ADD FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`) ON DELETE CASCADE;

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `ID_eva` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `f_ID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `rate` int NOT NULL,
  PRIMARY KEY (`ID_eva`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `evaluate`
ADD FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`);
-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `ID_comment` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `f_ID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_comment`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `comments`
ADD FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`) ON DELETE CASCADE;

-- ----------------------------
-- Table structure for lectures
-- ----------------------------
DROP TABLE IF EXISTS `lectures`;
CREATE TABLE `lectures` (
  `ID_lect` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CourseID` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_lect`),
  FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;