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
INSERT INTO `users` VALUES (3, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Abigail','teacher@gmail.com',2,0,0);
INSERT INTO `users` VALUES (4, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','xuyen','danghongxuyen@gmail.com',1,0,0);
INSERT INTO `users` VALUES (5, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Bùi Đức Tiến','1@gmail.com',2,0,0);
INSERT INTO `users` VALUES (6, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Sơn Đặng','2@gmail.com',2,0,0);
INSERT INTO `users` VALUES (7, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Muskaan','3@gmail.com',2,0,0);
INSERT INTO `users` VALUES (8, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Yashashree','4@gmail.com',2,0,0);


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
  `intro` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`f_infor`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of infor_teacher
-- ----------------------------
BEGIN;
INSERT INTO `infor_teacher` VALUES (1, 1,'Giảng viên','1.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (2, 3,'kỹ sư','3.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (3, 5,'Giáo viên','5.jpg','<p>Thạc sĩ&nbsp;<strong>B&ugrave;i Đức Tiến</strong>&nbsp;tốt nghiệp thạc sĩ Linguistics, Đại học Curtin. &Ocirc;ng hiện l&agrave; giảng vi&ecirc;n khoa tiếng Anh tại Đại học Sư phạm TP. HCM v&agrave; l&agrave; ủy vi&ecirc;n Ban Chấp H&agrave;nh Hội Nghi&ecirc;n cứu v&agrave; Giảng dạy tiếng Anh TP. HCM.&nbsp;Ngo&agrave;i ra, thầy c&ograve;n l&agrave; &nbsp;người s&aacute;ng lập Anh Ngữ English Master Center</p><p>KINH NGHIỆM GIẢNG DẠY:</p><ul><li>C&aacute;c m&ocirc;n tham gia giảng dạy ở khoa tiếng Anh ĐHSP TP. HCM: &nbsp;</li><li>Nghe, N&oacute;i, Đọc v&agrave; Viết Tiếng Anh</li><li>Ng&ocirc;n ngữ học ứng dụng.</li></ul>');
INSERT INTO `infor_teacher` VALUES (4, 6,'Giáo viên','6.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p>Sơn Đặng, sinh năm 1993, hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019, Sơn Đặng đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016, Sơn Đặng được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (5, 7,'Giáo viên','7.jpg','<p>Tốt nghiệp thạc sĩ Linguistics, Đại học Curtin. &Ocirc;ng hiện l&agrave; giảng vi&ecirc;n khoa tiếng Anh tại Đại học Sư phạm TP. HCM v&agrave; l&agrave; ủy vi&ecirc;n Ban Chấp H&agrave;nh Hội Nghi&ecirc;n cứu v&agrave; Giảng dạy tiếng Anh TP. HCM.&nbsp;Ngo&agrave;i ra, thầy c&ograve;n l&agrave; &nbsp;người s&aacute;ng lập Anh Ngữ English Master Center</p><p>KINH NGHIỆM GIẢNG DẠY:</p><ul><li>C&aacute;c m&ocirc;n tham gia giảng dạy ở khoa tiếng Anh ĐHSP TP. HCM: &nbsp;</li><li>Nghe, N&oacute;i, Đọc v&agrave; Viết Tiếng Anh</li><li>Ng&ocirc;n ngữ học ứng dụng.</li></ul>');
INSERT INTO `infor_teacher` VALUES (6, 8,'Giáo viên','8.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
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

ALTER TABLE `aspects_level2` 
ADD FULLTEXT(`name_level2`);
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
-- INSERT I,'<b> </b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;  </div><div>&nbsp;&nbsp;-&nbsp; </div><div>&nbsp;&nbsp;-&nbsp;  </div><div>&nbsp;&nbsp;-&nbsp; </div><div>&nbsp;&nbsp;-&nbsp;  </div><div>&nbsp;&nbsp;-&nbsp;  </div><div>&nbsp;&nbsp;-&nbsp; </div><div>&nbsp;&nbsp;-&NTO `courses` VALUES (1, 1,1,'Tìm hiểu ngôn ngữ C','course1.jpg'nbsp; </div>',5.7,3.7,4.7,32,53,'2020/12/12',11,1,3.7);
INSERT INTO `courses` VALUES (1, 1,1,'HTML, CSS ','c1.jpg','<b>Khóa học đề cao việc thực hành qua những ví dụ trong thực tế giúp học viên nhanh chóng xây dựng được giao diện website</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Biết cách xây dựng giao diện web với HTML, CSS</div><div>&nbsp;&nbsp;-&nbsp;Biết cách phân tích giao diện website</div><div>&nbsp;&nbsp;-&nbsp;Biết cách đặt tên class CSS theo chuẩn BEM</div><div>&nbsp;&nbsp;-&nbsp;Biết cách làm giao diện web responsive</div><div>&nbsp;&nbsp;-&nbsp;Làm chủ Flexbox khi dựng bố cục website</div><div>&nbsp;&nbsp;-&nbsp;Sở hữu 2 giao diện web khi học xong khóa học</div><div>&nbsp;&nbsp;-&nbsp;Biết cách tự học những kiến thức mới</div><div>&nbsp;&nbsp;-&nbsp;Biết cách tự tạo động lực cho bản thân</div>',5.9,0,4.9,52,531,'2021/1/19',8,1,5.9);
INSERT INTO `courses` VALUES (2, 1,3,'Phát triển ứng dụng website','c2.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; +40,000 sinh viên, khóa học phổ biến nhất trên thị trường nói tiếng Pháp</div><div>&nbsp;&nbsp;-&nbsp; Trang web cá nhân của bạn với Portfolio</div><div>&nbsp;&nbsp;-&nbsp; Kiếm tiền bằng kỹ năng của bạn với tư cách là Nhà phát triển web.</div><div>&nbsp;&nbsp;-&nbsp;11 Câu đố để kiểm tra kiến ​​thức của bạn.</div><div>&nbsp;&nbsp;-&nbsp; Tạo trang web và ứng dụng web</div><div>&nbsp;&nbsp;-&nbsp; 7 dự án cụ thể từ A đến Z</div>',5.9,0,4.9,52,530,'2021/1/19',8,1,5.9);
INSERT INTO `courses` VALUES (3, 2,5,'Lập trình Javascript','c3.jpg','<b>Khóa học Javascript cơ bản dành cho mọi đối tượng bắt đầu học lập trình với nội dung ngắn gọn, dễ hiểu và hệ thống làm bài tập phong phú</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Hiểu chi tiết về các khái niệm cơ bản trong JS</div><div>&nbsp;&nbsp;-&nbsp;Xây dựng được website đầu tiên kết hợp với JS</div><div>&nbsp;&nbsp;-&nbsp;Tự tin khi phỏng vấn với kiến thức vững chắc</div><div>&nbsp;&nbsp;-&nbsp;Có nền tảng để học các thư viện và framework JS</div><div>&nbsp;&nbsp;-&nbsp;Nắm chắc các tính năng trong phiên bản ES6</div><div>&nbsp;&nbsp;-&nbsp;Thành thạo DOM APIs để tương tác với trang web</div><div>&nbsp;&nbsp;-&nbsp;Ghi nhớ các khái niệm nhờ bài tập trắc nghiệm</div><div>&nbsp;&nbsp;-&nbsp;Nâng cao tư duy với các bài kiểm tra với testcases</div>',6,3.7,4.7,43,12,'2021/1/19',11,1,3.7);
INSERT INTO `courses` VALUES (4, 2,6,'Xây dựng web responsive','c4.jpg','<b>Khóa học này sẽ giúp bạn nắm chắc tư tưởng cốt lõi của việc xây dựng giao diện website responsive và áp dụng trong thực tế</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Biết cách xây dựng website Responsive</div><div>&nbsp;&nbsp;-&nbsp;Hiểu được tư tưởng thiết kế với Grid system</div><div>&nbsp;&nbsp;-&nbsp;Tự tay xây dựng được thư viện CSS Grid</div><div>&nbsp;&nbsp;-&nbsp;Tự hiểu được Grid layout trong bootstrap</div>',5.2,0,4.7,39,31,'2021/1/20',11,1,5.2);
INSERT INTO `courses` VALUES (5, 3,8,'Kiểm thử phần mềm ','c5.jpg','<b>Tìm hiểu cách kiểm tra phần mềm (Kế hoạch kiểm tra, Chiến dịch và Chiến lược, Quản lý Bất thường, Kiểm tra không hồi quy, ...)</b>','<ul class="unstyled-list udlite-block-list what-you-will-learn--objectives-list--2cWZN"><li><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><div class="udlite-block-list-item-content"><span class="what-you-will-learn--objective-item--ECarc"><span>Thực hiện c&ocirc;ng thức hoặc c&aacute;c thử nghiệm của một phần mềm hoặc một ứng dụng di động</span></span></div></div></li><li><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><div class="udlite-block-list-item-content"><span class="what-you-will-learn--objective-item--ECarc"><span>Thiết lập chiến lược thử nghiệm</span></span></div></div></li><li><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><div class="udlite-block-list-item-content"><span class="what-you-will-learn--objective-item--ECarc"><span>Học từ vựng li&ecirc;n quan đến thế giới phần mềm hoặc kiểm thử ứng dụng</span></span></div></div></li><li><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><div class="udlite-block-list-item-content"><span class="what-you-will-learn--objective-item--ECarc"><span>V&iacute; dụ: Lập c&ocirc;ng thức cho một ứng dụng di động</span></span></div></div></li></ul>',5.8,2.7,4.5,21,13,'2020/12/25',11,1,2.7);
INSERT INTO `courses` VALUES (6, 3,7,'Trí tuệ nhân tạo ','c6.jpg','<b>Kết hợp sức mạnh của Khoa học dữ liệu, Máy học và Học sâu để tạo ra AI đáng gờm!</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><ul><li><span class="what-you-will-learn--objective-item--ECarc"><span>Tạo AI</span></span></li><li>Hiểu l&yacute; thuyết đằng sau Tr&iacute; tuệ nh&acirc;n tạo</li><li>Tạo một chiếc &ocirc; t&ocirc; tự động ảo</li><li>Tạo ra những AI đ&aacute;nh bại con người trong một số tr&ograve; chơi nhất định</li><li>Giải quyết c&aacute;c vấn đề trong thế giới thực bằng AI</li><li>Nắm vững nghệ thuật thiết kế m&ocirc; h&igrave;nh AI</li><li>Q-Learning</li><li>Học hỏi s&acirc;u</li><li>Convolution Deep Q-Learning</li><li>A3C</li></ul></div></div>',9,7.0,4.7,69,83,'2021/1/18',11,1,7.0);
INSERT INTO `courses` VALUES (7, 4,6,'Selenium Webdriver ','c7.jpg','<b>KHÓA HỌC MỚI THƯƠNG HIỆU- Học Lập trình Python & Tự động hóa Python bằng Selenium từ cấp độ Cơ bản đến Nâng cao + 5 LIVE Project</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><ul><li><span class="what-you-will-learn--objective-item--ECarc"><span>V&agrave;o cuối kh&oacute;a học n&agrave;y, bạn sẽ c&oacute; được kiến ​​thức đầy đủ về Tự động h&oacute;a Python bằng c&aacute;ch sử dụng Selenium WebDriver</span></span></li><li>Bạn sẽ c&oacute; thể triển khai c&aacute;c Khung tự động h&oacute;a kiểm tra Python từ Scratch với tất cả c&aacute;c C&ocirc;ng nghệ mới nhất</li><li>Hiểu biết đầy đủ về Kiến thức cơ bản về Python với nhiều v&iacute; dụ thực h&agrave;nh để c&oacute; được kiến ​​thức vững chắc</li><li>Bạn sẽ học c&aacute;c Khung kiểm tra đơn vị Python như PyTest, điều n&agrave;y sẽ hữu &iacute;ch cho Kiểm tra đơn vị v&agrave; t&iacute;ch hợp</li><li>To&agrave;n bộ hiểu biết về c&aacute;c phương ph&aacute;p API Selenium Python với c&aacute;c t&igrave;nh huống thời gian thực tr&ecirc;n c&aacute;c trang web TRỰC TIẾP</li><li>"Cuối c&ugrave;ng nhưng kh&ocirc;ng k&eacute;m phần quan trọng" bạn c&oacute; thể ho&agrave;n th&agrave;nh bất kỳ Phỏng vấn n&agrave;o v&agrave; c&oacute; thể dẫn dắt To&agrave;n bộ Dự &aacute;n Python Selenium từ Giai đoạn Thiết kế</li></ul></div></div>',9.9,5.7,4.7,59,483,'2021/1/17',11,1,5.7);
INSERT INTO `courses` VALUES (13, 7,5,'Luyện thi IELTS 7.0','c1.jpg','<b>Khóa học cung cấp những bí quyết để đạt điểm cao trong bài thi IELTS về từ vựng, ngữ pháp, phát âm và 4 kỹ năng nghe, nói, đọc viết. Sau khi học xong khóa học kết hợp với việc tự luyện thêm người học có thể tự tin để thi IELTS với kết quả từ 6 đến 7.</b>','<div class="singel-description pt-40"><h6>Lợi ích từ khoá học</h6></div><div>&nbsp;&nbsp;-&nbsp;Hoàn thiện các kỹ năng nghe nói đọc viết để đạt điểm như ý muốn trong kỳ thi IELTS</div><div>&nbsp;&nbsp;-&nbsp;Nâng cao khả năng nhận diện từ vựng trong các cuộc hội thoại và trong các văn bản</div><div class="singel-description pt-40"><h6>Phù hợp với</h6></div><div>&nbsp;&nbsp;-&nbsp;Sinh viên, học sinh, người đi làm</div><div>&nbsp;&nbsp;-&nbsp; Học sinh có nhu cầu lấy điểm IELTS để đi du học, kiếm học bổng</div><div>&nbsp;&nbsp;-&nbsp; Người đi làm có nhu cầu lấy bằng ỈELTS theo yêu cầu của công ty</div>',19,0.0,5,1,21,'2021/1/18',1,1,19);
INSERT INTO `courses` VALUES (14, 7,6,'Tiếng Anh giao tiếp','c2.jpg','<b>Rất nhiều bạn học tiếng Anh và đang gặp phải các vấn đề như: - Không biết nên học tiếng Anh như thế nào cho hiệu quả - Học tiếng Anh đã lâu rồi nhưng chưa thể nói ra thành phản xạ các chủ đề thông dụng trong giao tiếp hàng ngày - Bối rối và không biết nói gì khi giao tiếp với người nước ngoài - Mất tự tin khi sử dụng tiếng Anh trong học tập cũng như công việc hàng ngày Khóa học này giúp bạn giải quyết các vấn đề trên bằng việc phát triển vốn từ vựng và ngữ pháp trong các chủ điểm tiếng Anh giao tiếp hàng ngày. </b>','<div class="singel-description pt-40"><h6>Những gì bạn cần biểt?</h6></div><div>&nbsp;&nbsp;-&nbsp;Khối lượng lớn các từ vựng trong các chủ điểm giao tiếp thường ngày</div><div>&nbsp;&nbsp;-&nbsp;Khối lượng lớn các cấu trúc ngữ pháp giúp diễn tả ý dễ dàng, mạch lạc hơn</div><div>&nbsp;&nbsp;-&nbsp;Học phát triển câu thông qua các cấu trúc</div><div>&nbsp;&nbsp;-&nbsp;Các bài tập thực hành luyện nghe và nói</div><div>&nbsp;&nbsp;-&nbsp;Luyện giao tiếp tiếng Anh và phản xạ nhanh thông qua các bài học hỏi và đáp cùng giảng viên</div>',21,0.0,5,2,51,'2021/1/17',5,1,21);
INSERT INTO `courses` VALUES (15, 8,7,'Tiếng Trung Cấp Tốc','c3.jpg','<b>Khóa học tiếng Trung giao tiếp cấp tốc giúp học viên rèn luyện kỹ năng nghe, nói, một cách nhanh nhất. Chương trình này gồm 5 khóa, sau khi tham gia các khóa học tiếng Trung giao tiếp cấp tốc thì bạn có thể tự tin trong giao tiếp hằng ngày.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; 100% nghe - nói, học dựa trên phiên âm, không học viết chữ Hán tuy nhiên vẫn có thể nhắn tin, đánh máy.</div><div>&nbsp;&nbsp;-&nbsp;Thời gian học là 3 tháng, trong đó mỗi tuần học 2 buổi nhằm giúp học viên dễ tiếp thu, nhớ lâu mà không quá nhồi nhét kiến thức.</div><div>&nbsp;&nbsp;-&nbsp;Nội dung xoay quanh giao tiếp sinh hoạt hàng ngày như: chào hỏi, giới thiệu bản thân, địa chỉ, thời gian, miêu tả vị trí, du lịch, khám bệnh, đổi tiền, đặt phòng v.v.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học cơ bản (khoá 1 - khoá 3): Dành cho học viên chưa từng học tiếng Trung.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học trung cấp và cao cấp (khoá 4 - khoá 5): Dành cho học viên đã từng học tiếng Trung và có nhu cầu nâng cao khả năng nghe nói. 100% các buổi học trực tiếp với giáo viên bản xứ.</div>',20,1,5,1,72,'2020/12/6',1,1,19);
INSERT INTO `courses` VALUES (16, 8,8,'Tiếng Trung giao tiếp','c4.jpg','<b>Bạn cần học tiếng Trung cấp tốc để phục vụ công việc, giao tiếp hàng ngày hay buôn bán, du học</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Học và ứng dụng giao tiếp những chủ đề thông dụng với người Trung Quốc</div><div>&nbsp;&nbsp;-&nbsp;Hiểu được cấu trúc ngữ pháp câu và cách sử dụng ngữ pháp để hành văn</div><div>&nbsp;&nbsp;-&nbsp;Tự tin giao tiếp tiếng Trung như người bản xứ qua 72 bài học</div><div>&nbsp;&nbsp;-&nbsp;Học ONLINE 24/7 ngay tại nhà tiết kiệm thời gian và chi phí</div>',23,7.1,5,2,14,'2020/12/11',1,1,7.1);
INSERT INTO `courses` VALUES (17, 9,5,'Khóa học tiếng Nhật N5','c5.jpg','<b>Nắm vững các cấu trúc ngữ pháp JLPT N5 khác nhau, áp dụng được vào nhiều tình huống trong thực tế.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Nghe, hiểu và có thể giao tiếp được tiếng Nhật trong các tình huống thường gặp trong cuộc sống, …</div><div>&nbsp;&nbsp;-&nbsp;Biết cách đọc, cách viết hai bảng chữ cái Hiragana, Katakana, gần 1000 từ vựng và 150 chữ Kanji sơ cấp. </div><div>&nbsp;&nbsp;-&nbsp;Mỗi bài học ngữ pháp trình độ N5 sẽ bao gồm video do giáo viên giảng dạy, phần tóm tắt lại kiến thức trong bài và rất nhiều bài tập bổ trợ, củng cố những kiến thức đã được học.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học JLPT N5 của Dekiru bao gồm rất nhiều bài tập nghe hiểu với hệ thống dạng học đa dạng, trực quan và sinh động.</div>',10,6,5,1,54,'2021/1/17',1,1,6);
INSERT INTO `courses` VALUES (18, 9,6,'Khoá học Luyện thi JLPT','c6.jpg','<b>Hiểu được thực lực của bản thân qua các đề thi thử theo đúng cấu trúc và thời gian làm bài như đề thi thật.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Hơn 100 khoá học!</div><div>&nbsp;&nbsp;-&nbsp;Học nhanh, nhớ nhanh vào thời gian rảnh</div><div>&nbsp;&nbsp;-&nbsp; Hơn 1.000 từ vựng theo từng chuyên ngành</div><div>&nbsp;&nbsp;-&nbsp;Nâng cao khả năng từ vựng cùng với chữ và âm thanh</div>',12,7,5,1,76,'2020/12/6',1,1,7);

INSERT INTO `courses` VALUES (8, 4,6,'Selenium Webdriver','c7.jpg','<b>KHÓA HỌC MỚI THƯƠNG HIỆU- Học Lập trình Python & Tự động hóa Python bằng Selenium từ cấp độ Cơ bản đến Nâng cao + 5 LIVE Project</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><ul><li><span class="what-you-will-learn--objective-item--ECarc"><span>V&agrave;o cuối kh&oacute;a học n&agrave;y, bạn sẽ c&oacute; được kiến ​​thức đầy đủ về Tự động h&oacute;a Python bằng c&aacute;ch sử dụng Selenium WebDriver</span></span></li><li>Bạn sẽ c&oacute; thể triển khai c&aacute;c Khung tự động h&oacute;a kiểm tra Python từ Scratch với tất cả c&aacute;c C&ocirc;ng nghệ mới nhất</li><li>Hiểu biết đầy đủ về Kiến thức cơ bản về Python với nhiều v&iacute; dụ thực h&agrave;nh để c&oacute; được kiến ​​thức vững chắc</li><li>Bạn sẽ học c&aacute;c Khung kiểm tra đơn vị Python như PyTest, điều n&agrave;y sẽ hữu &iacute;ch cho Kiểm tra đơn vị v&agrave; t&iacute;ch hợp</li><li>To&agrave;n bộ hiểu biết về c&aacute;c phương ph&aacute;p API Selenium Python với c&aacute;c t&igrave;nh huống thời gian thực tr&ecirc;n c&aacute;c trang web TRỰC TIẾP</li><li>"Cuối c&ugrave;ng nhưng kh&ocirc;ng k&eacute;m phần quan trọng" bạn c&oacute; thể ho&agrave;n th&agrave;nh bất kỳ Phỏng vấn n&agrave;o v&agrave; c&oacute; thể dẫn dắt To&agrave;n bộ Dự &aacute;n Python Selenium từ Giai đoạn Thiết kế</li></ul></div></div>',9.9,5.7,4.7,59,483,'2021/1/17',11,1,5.7);
INSERT INTO `courses` VALUES (9, 7,11,'Luyện Pháp','c1.jpg','<b>Khóa học cung cấp những bí quyết để đạt điểm cao trong bài thi IELTS về từ vựng, ngữ pháp, phát âm và 4 kỹ năng nghe, nói, đọc viết. Sau khi học xong khóa học kết hợp với việc tự luyện thêm người học có thể tự tin để thi IELTS với kết quả từ 6 đến 7.</b>','<div class="singel-description pt-40"><h6>Lợi ích từ khoá học</h6></div><div>&nbsp;&nbsp;-&nbsp;Hoàn thiện các kỹ năng nghe nói đọc viết để đạt điểm như ý muốn trong kỳ thi IELTS</div><div>&nbsp;&nbsp;-&nbsp;Nâng cao khả năng nhận diện từ vựng trong các cuộc hội thoại và trong các văn bản</div><div class="singel-description pt-40"><h6>Phù hợp với</h6></div><div>&nbsp;&nbsp;-&nbsp;Sinh viên, học sinh, người đi làm</div><div>&nbsp;&nbsp;-&nbsp; Học sinh có nhu cầu lấy điểm IELTS để đi du học, kiếm học bổng</div><div>&nbsp;&nbsp;-&nbsp; Người đi làm có nhu cầu lấy bằng ỈELTS theo yêu cầu của công ty</div>',19,0.0,5,1,21,'2021/1/18',1,1,19);
INSERT INTO `courses` VALUES (10, 7,11,'Tiếng Pháp','c2.jpg','<b>Rất nhiều bạn học tiếng Anh và đang gặp phải các vấn đề như: - Không biết nên học tiếng Anh như thế nào cho hiệu quả - Học tiếng Anh đã lâu rồi nhưng chưa thể nói ra thành phản xạ các chủ đề thông dụng trong giao tiếp hàng ngày - Bối rối và không biết nói gì khi giao tiếp với người nước ngoài - Mất tự tin khi sử dụng tiếng Anh trong học tập cũng như công việc hàng ngày Khóa học này giúp bạn giải quyết các vấn đề trên bằng việc phát triển vốn từ vựng và ngữ pháp trong các chủ điểm tiếng Anh giao tiếp hàng ngày. </b>','<div class="singel-description pt-40"><h6>Những gì bạn cần biểt?</h6></div><div>&nbsp;&nbsp;-&nbsp;Khối lượng lớn các từ vựng trong các chủ điểm giao tiếp thường ngày</div><div>&nbsp;&nbsp;-&nbsp;Khối lượng lớn các cấu trúc ngữ pháp giúp diễn tả ý dễ dàng, mạch lạc hơn</div><div>&nbsp;&nbsp;-&nbsp;Học phát triển câu thông qua các cấu trúc</div><div>&nbsp;&nbsp;-&nbsp;Các bài tập thực hành luyện nghe và nói</div><div>&nbsp;&nbsp;-&nbsp;Luyện giao tiếp tiếng Anh và phản xạ nhanh thông qua các bài học hỏi và đáp cùng giảng viên</div>',21,0.0,5,2,51,'2021/1/17',5,1,21);
INSERT INTO `courses` VALUES (11, 8,10,'Khoá Học Tiếng Hàn Quốc','c3.jpg','<b>Khóa học tiếng Trung giao tiếp cấp tốc giúp học viên rèn luyện kỹ năng nghe, nói, một cách nhanh nhất. Chương trình này gồm 5 khóa, sau khi tham gia các khóa học tiếng Trung giao tiếp cấp tốc thì bạn có thể tự tin trong giao tiếp hằng ngày.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; 100% nghe - nói, học dựa trên phiên âm, không học viết chữ Hán tuy nhiên vẫn có thể nhắn tin, đánh máy.</div><div>&nbsp;&nbsp;-&nbsp;Thời gian học là 3 tháng, trong đó mỗi tuần học 2 buổi nhằm giúp học viên dễ tiếp thu, nhớ lâu mà không quá nhồi nhét kiến thức.</div><div>&nbsp;&nbsp;-&nbsp;Nội dung xoay quanh giao tiếp sinh hoạt hàng ngày như: chào hỏi, giới thiệu bản thân, địa chỉ, thời gian, miêu tả vị trí, du lịch, khám bệnh, đổi tiền, đặt phòng v.v.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học cơ bản (khoá 1 - khoá 3): Dành cho học viên chưa từng học tiếng Trung.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học trung cấp và cao cấp (khoá 4 - khoá 5): Dành cho học viên đã từng học tiếng Trung và có nhu cầu nâng cao khả năng nghe nói. 100% các buổi học trực tiếp với giáo viên bản xứ.</div>',20,1,5,1,72,'2020/12/6',1,1,19);
INSERT INTO `courses` VALUES (12, 8,9,'Tiếng Nhật','c4.jpg','<b>Bạn cần học tiếng Trung cấp tốc để phục vụ công việc, giao tiếp hàng ngày hay buôn bán, du học</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Học và ứng dụng giao tiếp những chủ đề thông dụng với người Trung Quốc</div><div>&nbsp;&nbsp;-&nbsp;Hiểu được cấu trúc ngữ pháp câu và cách sử dụng ngữ pháp để hành văn</div><div>&nbsp;&nbsp;-&nbsp;Tự tin giao tiếp tiếng Trung như người bản xứ qua 72 bài học</div><div>&nbsp;&nbsp;-&nbsp;Học ONLINE 24/7 ngay tại nhà tiết kiệm thời gian và chi phí</div>',23,7.1,5,2,14,'2020/12/11',1,1,7.1);

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
  PRIMARY KEY (`ID_join`),
  FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `course_join`
ADD FOREIGN KEY (`CourseID`) REFERENCES `courses`(`CourseID`) ON DELETE CASCADE;

BEGIN;
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,1,1);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,1,1);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,1,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,2,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,2,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,3,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,3,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,3,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,3,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,4,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,5,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,5,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,6,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,7,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,5,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,4,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,3,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,6,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,7,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,7,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,6,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,7,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,1,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,2,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,3,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,4,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,5,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,6,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,13,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,13,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,13,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,13,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,14,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,14,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,14,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,14,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,15,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,15,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,15,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,16,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,17,0);
INSERT INTO `course_join` VALUES (null, 4,'2021/1/13',1,18,0);
COMMIT;
-- ----------------------------3-- Table structure for cart
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

BEGIN;


INSERT INTO `evaluate` VALUES (null, 4,1,5);
INSERT INTO `evaluate` VALUES (null, 4,2,5);
INSERT INTO `evaluate` VALUES (null, 4,3,5);
INSERT INTO `evaluate` VALUES (null, 4,4,5);
INSERT INTO `evaluate` VALUES (null, 4,5,5);
INSERT INTO `evaluate` VALUES (null, 4,6,5);
INSERT INTO `evaluate` VALUES (null, 4,7,5);
INSERT INTO `evaluate` VALUES (null, 4,13,5);
INSERT INTO `evaluate` VALUES (null, 4,14,5);
INSERT INTO `evaluate` VALUES (null, 4,15,5);
INSERT INTO `evaluate` VALUES (null, 4,16,5);
INSERT INTO `evaluate` VALUES (null, 4,17,5);
INSERT INTO `evaluate` VALUES (null, 4,18,5);
COMMIT;
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

BEGIN;
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,2,'GOOD');
INSERT INTO `comments` VALUES (null, 4,3,'GOOD');
INSERT INTO `comments` VALUES (null, 4,4,'GOOD');
INSERT INTO `comments` VALUES (null, 4,5,'GOOD');
INSERT INTO `comments` VALUES (null, 4,6,'GOOD');
INSERT INTO `comments` VALUES (null, 4,7,'GOOD');
INSERT INTO `comments` VALUES (null, 4,13,'GOOD');
INSERT INTO `comments` VALUES (null, 4,14,'GOOD');
INSERT INTO `comments` VALUES (null, 4,15,'GOOD');
INSERT INTO `comments` VALUES (null, 4,16,'GOOD');
INSERT INTO `comments` VALUES (null, 4,17,'GOOD');
INSERT INTO `comments` VALUES (null, 4,18,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');
INSERT INTO `comments` VALUES (null, 4,1,'GOOD');

COMMIT;
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
INSERT INTO `lectures` VALUES (null ,2,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null ,2,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 2,'Học Javascript và tạo trò chơi trực tuyến','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 2,'Học jQuery và tạo trang web tương tác','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 2,'Tìm hiểu Bootstrap và tạo CV trực tuyến','video 4','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (null, 2,'Lưu trữ tên miền và đưa trang web lên mạng','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 2,'Học NodeJS tạo một web server','video 6','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 2,'Học MySQL và xây dựng trang web động','video 7','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 1,'Giới thiệu về Thiết lập','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 1,'Phát triển web','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 1,'Tìm hiểu HTML và CSS','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 1,'Học Javascript và tạo trò chơi trực tuyến','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 1,'Học jQuety và tạo trang web tương tác','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 1,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 3,'Học jQuety và tạo trang web tương tác','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 3,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 3,'Lưu trữ tên miền và đưa trang web lên mạng','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 3,'Học NodeJS tạo một web server','video 3','zoom_4.mp4',1);
INSERT INTO `lectures` VALUES (null, 3,'Học MySQL và xây dựng trang web động','video 4','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (null, 3,'Tìm hiểu HTML và CSS','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 4,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 4,'Tìm hiểu HTML và CSS','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 4,'Học Javascript và tạo trò chơi trực tuyến','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 4,'Học jQuety và tạo trang web tương tác','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 4,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 4,'Lưu trữ tên miền và đưa trang web lên mạng','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 5,'Học NodeJS tạo một web server','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 5,'Học MySQL và xây dựng trang web động','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 5,'Học MySQL và xây dựng trang web động','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 5,'Giới thiệu về Thiết lập và Phát triển web','video 3','zoom_4.mp4',1);
INSERT INTO `lectures` VALUES (null, 5,'Học MySQL và xây dựng trang web động','video 4','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (null, 5,'Học MySQL và xây dựng trang web động','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 6,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 6,'Tìm hiểu HTML và CSS','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 6,'Học Javascript và tạo trò chơi trực tuyến','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 6,'Học jQuety và tạo trang web tương tác','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 6,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 6,'Lưu trữ tên miền và đưa trang web lên mạng','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 7,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 7,'Tìm hiểu HTML và CSS','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 7,'Học Javascript và tạo trò chơi trực tuyến','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 7,'Học jQuety và tạo trang web tương tác','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 7,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 7,'Lưu trữ tên miền và đưa trang web lên mạng','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 13,'Tìm hiểu HTML và CSS','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 13,'Học Javascript và tạo trò chơi trực tuyến','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 13,'Học jQuety và tạo trang web tương tác','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 13,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 13,'Kiến thức chủ đạo','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 13,'Kiến thức bổ trợ','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 14,'Kiến thức chủ đạo','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 14,'Kiến thức bổ trợ','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 14,'Các bài kiểm tra','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 14,'Các dự án','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 14,'NGỮ PHÁP','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 14,'ĐỌC HIỂU','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 17,'KANJI','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 17,'TỪ VỰNG','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 17,'NGỮ PHÁP','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 17,'ĐỌC HIỂU','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 17,'Các bài kiểm tra','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 17,'Các dự án','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 18,'KANJI','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 18,'TỪ VỰNG','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 18,'Các bài kiểm tra','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 18,'Các dự án','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 18,'NGỮ PHÁP','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 18,'ĐỌC HIỂU','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 15,'Phát âm tiếng Trung','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 15,'Học quy tắc viết chữ Hán cơ bản','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 15,'Bắt đầu học các kỹ năng nghe, nói, đọc, viết','video 2','zoom_3.mp4',1);
INSERT INTO `lectures` VALUES (null, 15,'Rèn luyện các kỹ năng tiếng Trung','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 15,'Học quy tắc viết chữ Hán cơ bản','video 4','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (null, 15,'Bắt đầu học các kỹ năng nghe, nói, đọc, viết','video 5','zoom_6.mp4',1);
INSERT INTO `lectures` VALUES (null, 16,'Rèn luyện các kỹ năng tiếng Trung','Video giới thiệu','zoom_1.mp4',0);
INSERT INTO `lectures` VALUES (null, 16,'Phát âm tiếng Trung','video 1','zoom_2.mp4',1);
INSERT INTO `lectures` VALUES (null, 16,'Học quy tắc viết chữ Hán cơ bản','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 16,'Bắt đầu học các kỹ năng nghe, nói, đọc, viết','video 3','zoom_4.mp4',1);
INSERT INTO `lectures` VALUES (null, 16,'Rèn luyện các kỹ năng tiếng Trung','video 4','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (null, 16,'Các dự án','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 8,'Giới thiệu về Thiết lập','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 8,'Phát triển web','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 8,'Tìm hiểu HTML và CSS','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 8,'Học Javascript và tạo trò chơi trực tuyến','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 8,'Học jQuety và tạo trang web tương tác','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 8,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 9,'Giới thiệu về Thiết lập','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 9,'Phát triển web','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 9,'Tìm hiểu HTML và CSS','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 9,'Học Javascript và tạo trò chơi trực tuyến','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 9,'Học jQuety và tạo trang web tương tác','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 9,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 10,'Giới thiệu về Thiết lập','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 10,'Phát triển web','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 10,'Tìm hiểu HTML và CSS','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 10,'Học Javascript và tạo trò chơi trực tuyến','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 10,'Học jQuety và tạo trang web tương tác','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 10,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 11,'Giới thiệu về Thiết lập','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 11,'Phát triển web','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 11,'Tìm hiểu HTML và CSS','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 11,'Học Javascript và tạo trò chơi trực tuyến','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 11,'Học jQuety và tạo trang web tương tác','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 11,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 5','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (null, 12,'Giới thiệu về Thiết lập','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (null, 12,'Phát triển web','video 1','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (null, 12,'Tìm hiểu HTML và CSS','video 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (null, 12,'Học Javascript và tạo trò chơi trực tuyến','video 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (null, 12,'Học jQuety và tạo trang web tương tác','video 4','zoom_5.mp4',1);
INSERT INTO `lectures` VALUES (null, 12,'Tìm hiểu Bottstrap và tạo CV trực tuyến','video 5','zoom_6.mp4',0);


COMMIT;
-- ----------------------------
-- Table structure for Status_lecture
-- ----------------------------
DROP TABLE IF EXISTS `Status_lecture`;
CREATE TABLE `Status_lecture` (
  `ID_s` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_lect` int(11) NOT NULL,
  `f_ID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID_s`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `Status_lecture`
ADD FOREIGN KEY (`f_ID`) REFERENCES `users`(`f_ID`) ON DELETE CASCADE;

ALTER TABLE `Status_lecture`
ADD FOREIGN KEY (`ID_lect`) REFERENCES `lectures`(`ID_lect`) ON DELETE CASCADE;


SET FOREIGN_KEY_CHECKS = 1;