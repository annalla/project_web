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
  `f_OTP` varchar(6) COLLATE utf8_unicode_ci,
  PRIMARY KEY (`f_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'sdsdfszdfa','Thomas Watson','nghasd@gmail.com',2,0,0);
INSERT INTO `users` VALUES (2, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Admin','ad@gmail.com',0,1,0);
INSERT INTO `users` VALUES (3, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Teacher','teacher@gmail.com',2,0,0);
INSERT INTO `users` VALUES (4, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','xuyen','danghongxuyen@gmail.com',1,0,0);

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
INSERT INTO `infor_teacher` VALUES (2, 3,'kỹ sư','t-1.jpg','...');
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
  `title` varchar(100) COLLATE utf8_general_ci NOT NULL,
  `small_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `small_brief` varchar(2000) COLLATE utf8_unicode_ci ,
  `brief` varchar(5000) COLLATE utf8_unicode_ci ,
  `fee` decimal(15,2) NOT NULL,
  `discount` decimal(15,2),
  `evalue` decimal(15,1),
  `num_evalue` int(11) NOT NULL,
  `num_join` int (11) NOT NULL,
  `date` date,
  `num_count` int(11),
  `status` int ,
   `total` decimal(15,2),
  PRIMARY KEY (`CourseID`),
  FOREIGN KEY (`TeacherID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `courses`
ADD FOREIGN KEY (`ID_aspect`) REFERENCES `aspects_level2`(`ID_aspect`);

ALTER TABLE `courses` 
ADD FULLTEXT(`title`);
-- ----------------------------
-- Records of courses
-- ----------------------------

BEGIN;
-- INSERT I,'<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&NTO `courses` VALUES (1, 1,1,'Tìm hiểu ngôn ngữ C','course1.jpg'nbsp; Tạo mô-đun để chia sẻ chúng.</div>',5.7,3.7,4.7,32,53,'2020/12/12',11,1,3.7);
INSERT INTO `courses` VALUES (2, 2,1,'Phát triển ứng dụng website căn bản','cu-2.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; +40,000 sinh viên, khóa học phổ biến nhất trên thị trường nói tiếng Pháp</div><div>&nbsp;&nbsp;-&nbsp; Trang web cá nhân của bạn với Portfolio</div><div>&nbsp;&nbsp;-&nbsp; Kiếm tiền bằng kỹ năng của bạn với tư cách là Nhà phát triển web.</div><div>&nbsp;&nbsp;-&nbsp;11 Câu đố để kiểm tra kiến ​​thức của bạn.</div><div>&nbsp;&nbsp;-&nbsp; Tạo trang web và ứng dụng web</div><div>&nbsp;&nbsp;-&nbsp; 7 dự án cụ thể từ A đến Z</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',5.9,0,4.9,52,531,'2020/12/2',8,1,5.9);
INSERT INTO `courses` VALUES (3, 3,1,'Học lập trình C#','course1.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',6,3.7,4.7,43,12,'2020/12/1',11,1,3.7);
INSERT INTO `courses` VALUES (4, 4,1,'Học lập trình D','course1.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',5.2,0,4.7,39,31,'2020/12/22',11,1,5.2);
INSERT INTO `courses` VALUES (5, 5,1,'Học lập trình E','course1.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',5.8,2.7,4.5,21,13,'2020/12/25',11,1,2.7);
INSERT INTO `courses` VALUES (6, 6,1,'Học lập trình F','course1.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',9,7.0,4.7,69,83,'2020/12/4',11,1,7.0);
INSERT INTO `courses` VALUES (7, 6,1,'Học lập trình G','course1.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',9.9,5.7,4.7,59,483,'2020/12/9',11,1,5.7);
INSERT INTO `courses` VALUES (8, 6,1,'Học lập trình H','course1.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',12,7,4.7,49,131,'2020/12/6',11,1,7);
-- INSERT INTO `courses` VALUES (9, 6,1,'Học lập trình I','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',23,7.1,4.7,99,38,'2020/12/11',11,1,7);
-- INSERT INTO `courses` VALUES (10, 6,1,'Học lập trình L','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',9.9,5.7,4.7,59,83,'2020/12/9',11,1,5.7);
-- INSERT INTO `courses` VALUES (11, 6,1,'Học lập trình K','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',12,7,4.7,79,13,'2020/12/6',11,1,7);
-- INSERT INTO `courses` VALUES (12, 6,1,'Học lập trình M','course1.jpg','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tạo chương trình trong C</div><div>&nbsp;&nbsp;-&nbsp; Hiểu kiến ​​thức cơ bản về lập trình (cách tạo phần mềm từ mã nguồn).</div><div>&nbsp;&nbsp;-&nbsp; Sử dụng thư viện C tiêu chuẩn (STL).</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc quản lý các biến và bộ nhớ.</div><div>&nbsp;&nbsp;-&nbsp; Nắm vững việc sử dụng các vòng lặp và điều kiện.</div><div>&nbsp;&nbsp;-&nbsp; Mảng chính và con trỏ.</div><div>&nbsp;&nbsp;-&nbsp; Tạo và sử dụng các chức năng.</div><div>&nbsp;&nbsp;-&nbsp; Tạo mô-đun để chia sẻ chúng.</div>',23,7.1,4.7,99,30,'2020/12/11',11,1,7.1);
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
  `orderDate` date,
  `price` decimal(15,2),
  `CourseID` int(11) NOT NULL,
  `status` int NOT NULL,
  `lecture` varchar(200),
  PRIMARY KEY (`ID_join`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `course_join`
ADD FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`) ON DELETE CASCADE;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `ID_cart` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `f_ID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  PRIMARY KEY (`ID_cart`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `cart`
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
  `title_name` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `name_video` varchar(200) COLLATE utf8_general_ci,
  `file_vd` varchar(200) COLLATE utf8_general_ci,
  `isIntro` int ,
  PRIMARY KEY (`ID_lect`),
  FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of lectures
-- ----------------------------
BEGIN;
INSERT INTO `lectures` VALUES (1, 2,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (2, 2,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (3, 2,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (4, 2,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (5, 2,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (6, 2,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (7, 2,'Học NodeJS tạo một web server','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (8, 2,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (9, 1,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (33, 1,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (10, 1,'Tìm hiểu HTML và CSS','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (11, 1,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (12, 3,'Học jQuety và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (13, 3,'Tìm hiểu Bottstrap và tạo CV trực tuyến','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (14, 3,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (15, 4,'Học NodeJS tạo một web server','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (16, 4,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (17, 5,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (18, 5,'Tìm hiểu HTML và CSS','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (19, 6,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (20, 6,'Học jQuety và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (21, 7,'Tìm hiểu Bottstrap và tạo CV trực tuyến','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (22, 7,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (23, 8,'Học NodeJS tạo một web server','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (24, 8,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (25, 9,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (26, 9,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (31, 10,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (32, 10,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (27, 12,'Tìm hiểu HTML và CSS','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (28, 12,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_3.mp4',0);

INSERT INTO `lectures` VALUES (29, 11,'Học jQuety và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (30, 11,'Tìm hiểu Bottstrap và tạo CV trực tuyến','Video giới thiệu','zoom_3.mp4',0);
COMMIT;
-- ----------------------------
-- Table structure for Status_lecture
-- ----------------------------
DROP TABLE IF EXISTS `Status_lecture`;
CREATE TABLE `Status_lecture` (
  `ID_s` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CourseID` int(11) NOT NULL,
  `ID_lect` int(11) NOT NULL,
  `f_ID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID_s`),
  FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `Status_lecture`
ADD FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE;

ALTER TABLE `Status_lecture`
ADD FOREIGN KEY (`ID_lect`) REFERENCES `lectures`(`ID_lect`) ON DELETE CASCADE;


SET FOREIGN_KEY_CHECKS = 1;