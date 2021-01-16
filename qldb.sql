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
  `isDisabled` int,
  PRIMARY KEY (`f_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'sdsdfszdfa','Thomas Watson','nghasd@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (2, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Admin','ad@gmail.com',0,1,0,0);
INSERT INTO `users` VALUES (3, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Abigail','teacher@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (4, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','xuyen','dangxxhongxuyen@gmail.com',1,0,0,0);
INSERT INTO `users` VALUES (5, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Bùi Đức Tiến','1@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (6, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Sơn Đặng','2@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (7, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Muskaan','3@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (8, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Yashashree','4@gmail.com',2,0,0,0);

INSERT INTO `users` VALUES (50, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Teacher','teacher50@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (51, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Teacher','teacher51@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (52, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Teacher','teacher52@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (53, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Teacher','teacher53@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (54, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Teacher','teacher54@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (55, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Teacher','teacher55@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (56, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Teacher','teacher56@gmail.com',2,0,0,0);

INSERT INTO `users` VALUES (57, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Student 1','student50@gmail.com',1,0,0,0);
INSERT INTO `users` VALUES (58, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Student 2','student51@gmail.com',1,0,0,0);
INSERT INTO `users` VALUES (59, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Student 3','student52@gmail.com',1,0,0,0);
INSERT INTO `users` VALUES (60, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Student 4','student53@gmail.com',1,0,0,0);
INSERT INTO `users` VALUES (61, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Student 5','student54@gmail.com',1,0,0,0);
INSERT INTO `users` VALUES (62, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Student 6','student55@gmail.com',1,0,0,0);
INSERT INTO `users` VALUES (63, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Student 7','student56@gmail.com',1,0,0,0);

INSERT INTO `users` VALUES (70, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','An','dgxuyen@gmail.com',1,0,0,0);
INSERT INTO `users` VALUES (71, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Charles Train-hard','hongxuyen@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (72, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Charles','d@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (73, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Train-hard','a@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (74, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Peter','dangxuyen@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (75, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','Davik Justin','den@gmail.com',2,0,0,0);
INSERT INTO `users` VALUES (76, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','John Anhn','danyen@gmail.com',2,0,0,0);

INSERT INTO `users` VALUES (77, '$2a$10$VM.dmFPuDX2x4pFpB8oRBe6g73t/Mg7nJ962VLSAe2NYYmSv9.Iyi','xuyen','danghongxuyen@gmail.com',1,0,0,0);
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

INSERT INTO `infor_teacher` VALUES (NULL, 50,'Giảng viên','t-50.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (NULL, 51,'Giảng viên','t-51.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (NULL, 52,'Giảng viên','t-52.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (NULL, 53,'Giảng viên','t-53.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (NULL, 54,'Giảng viên','t-54.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (NULL, 55,'Giảng viên','t-55.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');
INSERT INTO `infor_teacher` VALUES (NULL, 56,'Giảng viên','t-56.jpg','<div class="TeacherCourses_heading__3S7ol"><h1>Giới thiệu</h1></div><div class="TeacherCourses_description__1WgNG"><div><p> hiện tại anh đang l&agrave;m việc tại F8 với vai tr&ograve; sản xuất nội dung c&aacute;c kh&oacute;a học.</p><p>Anh xuất th&acirc;n l&agrave; lập tr&igrave;nh vi&ecirc;n đ&atilde; c&oacute; tr&ecirc;n 7 năm kinh nghiệm l&agrave;m việc tại c&aacute;c vị tr&iacute; Front-end, Back-end developer, DevOps Engineer, Team lead, BA v&agrave; chuy&ecirc;n vi&ecirc;n đ&agrave;o tạo nh&acirc;n sự, cung cấp đầu ra l&agrave; nh&acirc;n sự c&oacute; kỹ năng l&agrave;m việc thực tế tại c&aacute;c doanh nghiệp IT phần mềm.</p><h3>Sản phẩm:</h3><p>Ri&ecirc;ng trong năm 2019 ADD đ&atilde; cho ra mắt 2 sản phẩm l&agrave; MyCV.vn v&agrave; Fullstack.edu.vn</p><h3>Giải thưởng:</h3><p>Năm 2016 được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh v&ocirc; c&ugrave;ng tiềm năng khi xuất sắc vượt qua gần 50 th&iacute; sinh trong 2 cuộc thi thường kỳ của FPT l&agrave; Poly s&aacute;ng tạo v&agrave; FE s&aacute;ng tạo. Anh đ&atilde; rất xuất sắc khi d&agrave;nh chọn cả 2 giải qu&aacute;n qu&acirc;n tại 2 cuộc thi tr&ecirc;n.</p></div></div>');

INSERT INTO `infor_teacher` VALUES (NULL, 71,'Giảng viên','t-21.jpeg','<b>Tôi tiếp xúc với yoga và thiền lần đầu tiên cách đây 20 năm và tiếp tục phát triển trên con đường này. Trong hơn 10 năm, tôi đã thường xuyên giảng dạy các lớp yoga ở Đức và Pháp và tôi điều trị cho bệnh nhân của mình bằng phương pháp chăm sóc sức khỏe tự nhiên, trong số những thứ khác theo các nguyên tắc của yoga trị liệu.</b>');
INSERT INTO `infor_teacher` VALUES (NULL, 72,'Chuyên gia dinh dưỡng','t-22.jpg','<p>Tôi đam mê ukulele và harmonium và thường xuyên dạy kirtans. Trong nhiều năm, tôi đã thực hành liệu pháp thần chú và các hiệu ứng thể chất và tinh thần của chúng. Tiếp xúc với thiên nhiên là rất quan trọng đối với tôi, nó cho phép tôi giữ năng lượng của mình, với các hoạt động như: lướt sóng, đi bộ đường dài, leo núi, v.v.</p>');
INSERT INTO `infor_teacher` VALUES (NULL, 73,'Chuyên gia ','t-23.jpg','<p>Tôi đam mê ukulele và harmonium và thường xuyên dạy kirtans. Trong nhiều năm, tôi đã thực hành liệu pháp thần chú và các hiệu ứng thể chất và tinh thần của chúng. Tiếp xúc với thiên nhiên là rất quan trọng đối với tôi, nó cho phép tôi giữ năng lượng của mình, với các hoạt động như: lướt sóng, đi bộ đường dài, leo núi, v.v.</p>');
INSERT INTO `infor_teacher` VALUES (NULL, 74,'Giảng viên','t-24.jpg','<p>Các khóa học trực tuyến của tôi dựa trên nhiều năm kinh nghiệm về bệnh lý tự nhiên, liệu pháp yoga và liệu pháp âm thanh. Tôi rất vui khi có thể chia sẻ kiến ​​thức của mình với bạn và tôi sẽ cho bạn nhiều lời khuyên hữu ích để có một cuộc sống lành mạnh và hài hòa.</p>');
INSERT INTO `infor_teacher` VALUES (NULL, 75,'Giảng viên','t-25.jpg','<p>Các khóa học trực tuyến của tôi dựa trên nhiều năm kinh nghiệm cá nhân về Bệnh thần kinh, Liệu pháp Yoga và Chữa bệnh bằng Âm thanh. Tôi mong muốn được chia sẻ kiến ​​thức của tôi với bạn. Trong các khóa học này, bạn sẽ nhận được nhiều lời khuyên hữu ích để giúp bạn có một cuộc sống cân bằng, lành mạnh và được trao quyền.</p>');
INSERT INTO `infor_teacher` VALUES (NULL, 76,'Giảng viên','t-26.jpg','<p>Tôi đam mê ukulele và harmonium và thường xuyên dạy kirtans. Trong nhiều năm, tôi đã thực hành liệu pháp thần chú và các hiệu ứng thể chất và tinh thần của chúng. Tiếp xúc với thiên nhiên là rất quan trọng đối với tôi, nó cho phép tôi giữ năng lượng của mình, với các hoạt động như: lướt sóng, đi bộ đường dài, leo núi, v.v.</p>');
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

ALTER TABLE `aspects_level1` 
ADD FULLTEXT(`name_level1`);
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
   `Disabled`int,
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
INSERT INTO `courses` VALUES (1, 1,1,'HTML, CSS ','c1.jpg','<b>Khóa học đề cao việc thực hành qua những ví dụ trong thực tế giúp học viên nhanh chóng xây dựng được giao diện website</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Biết cách xây dựng giao diện web với HTML, CSS</div><div>&nbsp;&nbsp;-&nbsp;Biết cách phân tích giao diện website</div><div>&nbsp;&nbsp;-&nbsp;Biết cách đặt tên class CSS theo chuẩn BEM</div><div>&nbsp;&nbsp;-&nbsp;Biết cách làm giao diện web responsive</div><div>&nbsp;&nbsp;-&nbsp;Làm chủ Flexbox khi dựng bố cục website</div><div>&nbsp;&nbsp;-&nbsp;Sở hữu 2 giao diện web khi học xong khóa học</div><div>&nbsp;&nbsp;-&nbsp;Biết cách tự học những kiến thức mới</div><div>&nbsp;&nbsp;-&nbsp;Biết cách tự tạo động lực cho bản thân</div>',5.9,0,4.9,52,531,'2021/1/19',8,1,5.9,0);
INSERT INTO `courses` VALUES (2, 1,3,'Phát triển ứng dụng website','c2.jpg','<b>Phát triển web là kiểu lập trình phổ biến và quan trọng nhất trong các hoạt động phát triển cơ bản hàng ngày. Có thể được sử dụng cho tất cả các loại ứng dụng web: từ một trang web tĩnh và đơn giản cho đến một trang web động với một ứng dụng được trang bị đầy đủ chức năng.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; +40,000 sinh viên, khóa học phổ biến nhất trên thị trường nói tiếng Pháp</div><div>&nbsp;&nbsp;-&nbsp; Trang web cá nhân của bạn với Portfolio</div><div>&nbsp;&nbsp;-&nbsp; Kiếm tiền bằng kỹ năng của bạn với tư cách là Nhà phát triển web.</div><div>&nbsp;&nbsp;-&nbsp;11 Câu đố để kiểm tra kiến ​​thức của bạn.</div><div>&nbsp;&nbsp;-&nbsp; Tạo trang web và ứng dụng web</div><div>&nbsp;&nbsp;-&nbsp; 7 dự án cụ thể từ A đến Z</div>',5.9,0,4.9,52,530,'2021/1/19',8,1,5.9,0);
INSERT INTO `courses` VALUES (3, 2,5,'Lập trình Javascript','c3.jpg','<b>Khóa học Javascript cơ bản dành cho mọi đối tượng bắt đầu học lập trình với nội dung ngắn gọn, dễ hiểu và hệ thống làm bài tập phong phú</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Hiểu chi tiết về các khái niệm cơ bản trong JS</div><div>&nbsp;&nbsp;-&nbsp;Xây dựng được website đầu tiên kết hợp với JS</div><div>&nbsp;&nbsp;-&nbsp;Tự tin khi phỏng vấn với kiến thức vững chắc</div><div>&nbsp;&nbsp;-&nbsp;Có nền tảng để học các thư viện và framework JS</div><div>&nbsp;&nbsp;-&nbsp;Nắm chắc các tính năng trong phiên bản ES6</div><div>&nbsp;&nbsp;-&nbsp;Thành thạo DOM APIs để tương tác với trang web</div><div>&nbsp;&nbsp;-&nbsp;Ghi nhớ các khái niệm nhờ bài tập trắc nghiệm</div><div>&nbsp;&nbsp;-&nbsp;Nâng cao tư duy với các bài kiểm tra với testcases</div>',6,3.7,4.7,43,12,'2021/1/19',11,1,3.7,0);
INSERT INTO `courses` VALUES (4, 2,6,'Xây dựng web responsive','c4.jpg','<b>Khóa học này sẽ giúp bạn nắm chắc tư tưởng cốt lõi của việc xây dựng giao diện website responsive và áp dụng trong thực tế</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Biết cách xây dựng website Responsive</div><div>&nbsp;&nbsp;-&nbsp;Hiểu được tư tưởng thiết kế với Grid system</div><div>&nbsp;&nbsp;-&nbsp;Tự tay xây dựng được thư viện CSS Grid</div><div>&nbsp;&nbsp;-&nbsp;Tự hiểu được Grid layout trong bootstrap</div>',5.2,0,4.7,39,31,'2021/1/20',11,1,5.2,0);
INSERT INTO `courses` VALUES (5, 3,8,'Kiểm thử phần mềm ','c5.jpg','<b>Tìm hiểu cách kiểm tra phần mềm (Kế hoạch kiểm tra, Chiến dịch và Chiến lược, Quản lý Bất thường, Kiểm tra không hồi quy, ...)</b>','<ul class="unstyled-list udlite-block-list what-you-will-learn--objectives-list--2cWZN"><li><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><div class="udlite-block-list-item-content"><span class="what-you-will-learn--objective-item--ECarc"><span>Thực hiện c&ocirc;ng thức hoặc c&aacute;c thử nghiệm của một phần mềm hoặc một ứng dụng di động</span></span></div></div></li><li><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><div class="udlite-block-list-item-content"><span class="what-you-will-learn--objective-item--ECarc"><span>Thiết lập chiến lược thử nghiệm</span></span></div></div></li><li><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><div class="udlite-block-list-item-content"><span class="what-you-will-learn--objective-item--ECarc"><span>Học từ vựng li&ecirc;n quan đến thế giới phần mềm hoặc kiểm thử ứng dụng</span></span></div></div></li><li><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><div class="udlite-block-list-item-content"><span class="what-you-will-learn--objective-item--ECarc"><span>V&iacute; dụ: Lập c&ocirc;ng thức cho một ứng dụng di động</span></span></div></div></li></ul>',5.8,2.7,4.5,21,13,'2020/12/25',11,1,2.7,0);
INSERT INTO `courses` VALUES (6, 3,7,'Trí tuệ nhân tạo ','c6.jpg','<b>Kết hợp sức mạnh của Khoa học dữ liệu, Máy học và Học sâu để tạo ra AI đáng gờm!</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><ul><li><span class="what-you-will-learn--objective-item--ECarc"><span>Tạo AI</span></span></li><li>Hiểu l&yacute; thuyết đằng sau Tr&iacute; tuệ nh&acirc;n tạo</li><li>Tạo một chiếc &ocirc; t&ocirc; tự động ảo</li><li>Tạo ra những AI đ&aacute;nh bại con người trong một số tr&ograve; chơi nhất định</li><li>Giải quyết c&aacute;c vấn đề trong thế giới thực bằng AI</li><li>Nắm vững nghệ thuật thiết kế m&ocirc; h&igrave;nh AI</li><li>Q-Learning</li><li>Học hỏi s&acirc;u</li><li>Convolution Deep Q-Learning</li><li>A3C</li></ul></div></div>',9,7.0,4.7,69,83,'2021/1/18',11,1,7.0,0);
INSERT INTO `courses` VALUES (7, 4,6,'Selenium Webdriver ','c7.jpg','<b>KHÓA HỌC MỚI THƯƠNG HIỆU- Học Lập trình Python & Tự động hóa Python bằng Selenium từ cấp độ Cơ bản đến Nâng cao + 5 LIVE Project</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><ul><li><span class="what-you-will-learn--objective-item--ECarc"><span>V&agrave;o cuối kh&oacute;a học n&agrave;y, bạn sẽ c&oacute; được kiến ​​thức đầy đủ về Tự động h&oacute;a Python bằng c&aacute;ch sử dụng Selenium WebDriver</span></span></li><li>Bạn sẽ c&oacute; thể triển khai c&aacute;c Khung tự động h&oacute;a kiểm tra Python từ Scratch với tất cả c&aacute;c C&ocirc;ng nghệ mới nhất</li><li>Hiểu biết đầy đủ về Kiến thức cơ bản về Python với nhiều v&iacute; dụ thực h&agrave;nh để c&oacute; được kiến ​​thức vững chắc</li><li>Bạn sẽ học c&aacute;c Khung kiểm tra đơn vị Python như PyTest, điều n&agrave;y sẽ hữu &iacute;ch cho Kiểm tra đơn vị v&agrave; t&iacute;ch hợp</li><li>To&agrave;n bộ hiểu biết về c&aacute;c phương ph&aacute;p API Selenium Python với c&aacute;c t&igrave;nh huống thời gian thực tr&ecirc;n c&aacute;c trang web TRỰC TIẾP</li><li>"Cuối c&ugrave;ng nhưng kh&ocirc;ng k&eacute;m phần quan trọng" bạn c&oacute; thể ho&agrave;n th&agrave;nh bất kỳ Phỏng vấn n&agrave;o v&agrave; c&oacute; thể dẫn dắt To&agrave;n bộ Dự &aacute;n Python Selenium từ Giai đoạn Thiết kế</li></ul></div></div>',9.9,5.7,4.7,59,483,'2021/1/17',11,1,5.7,0);
INSERT INTO `courses` VALUES (13, 7,5,'Luyện thi IELTS 7.0','c1.jpg','<b>Khóa học cung cấp những bí quyết để đạt điểm cao trong bài thi IELTS về từ vựng, ngữ pháp, phát âm và 4 kỹ năng nghe, nói, đọc viết. Sau khi học xong khóa học kết hợp với việc tự luyện thêm người học có thể tự tin để thi IELTS với kết quả từ 6 đến 7.</b>','<div class="singel-description pt-40"><h6>Lợi ích từ khoá học</h6></div><div>&nbsp;&nbsp;-&nbsp;Hoàn thiện các kỹ năng nghe nói đọc viết để đạt điểm như ý muốn trong kỳ thi IELTS</div><div>&nbsp;&nbsp;-&nbsp;Nâng cao khả năng nhận diện từ vựng trong các cuộc hội thoại và trong các văn bản</div><div class="singel-description pt-40"><h6>Phù hợp với</h6></div><div>&nbsp;&nbsp;-&nbsp;Sinh viên, học sinh, người đi làm</div><div>&nbsp;&nbsp;-&nbsp; Học sinh có nhu cầu lấy điểm IELTS để đi du học, kiếm học bổng</div><div>&nbsp;&nbsp;-&nbsp; Người đi làm có nhu cầu lấy bằng ỈELTS theo yêu cầu của công ty</div>',19,0.0,5,1,21,'2021/1/18',1,1,19,0);
INSERT INTO `courses` VALUES (14, 7,6,'Tiếng Anh giao tiếp','c2.jpg','<b>Rất nhiều bạn học tiếng Anh và đang gặp phải các vấn đề như: - Không biết nên học tiếng Anh như thế nào cho hiệu quả - Học tiếng Anh đã lâu rồi nhưng chưa thể nói ra thành phản xạ các chủ đề thông dụng trong giao tiếp hàng ngày - Bối rối và không biết nói gì khi giao tiếp với người nước ngoài - Mất tự tin khi sử dụng tiếng Anh trong học tập cũng như công việc hàng ngày Khóa học này giúp bạn giải quyết các vấn đề trên bằng việc phát triển vốn từ vựng và ngữ pháp trong các chủ điểm tiếng Anh giao tiếp hàng ngày. </b>','<div class="singel-description pt-40"><h6>Những gì bạn cần biểt?</h6></div><div>&nbsp;&nbsp;-&nbsp;Khối lượng lớn các từ vựng trong các chủ điểm giao tiếp thường ngày</div><div>&nbsp;&nbsp;-&nbsp;Khối lượng lớn các cấu trúc ngữ pháp giúp diễn tả ý dễ dàng, mạch lạc hơn</div><div>&nbsp;&nbsp;-&nbsp;Học phát triển câu thông qua các cấu trúc</div><div>&nbsp;&nbsp;-&nbsp;Các bài tập thực hành luyện nghe và nói</div><div>&nbsp;&nbsp;-&nbsp;Luyện giao tiếp tiếng Anh và phản xạ nhanh thông qua các bài học hỏi và đáp cùng giảng viên</div>',21,0.0,5,2,51,'2021/1/17',5,1,21,0);
INSERT INTO `courses` VALUES (15, 8,7,'Tiếng Trung Cấp Tốc','c3.jpg','<b>Khóa học tiếng Trung giao tiếp cấp tốc giúp học viên rèn luyện kỹ năng nghe, nói, một cách nhanh nhất. Chương trình này gồm 5 khóa, sau khi tham gia các khóa học tiếng Trung giao tiếp cấp tốc thì bạn có thể tự tin trong giao tiếp hằng ngày.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; 100% nghe - nói, học dựa trên phiên âm, không học viết chữ Hán tuy nhiên vẫn có thể nhắn tin, đánh máy.</div><div>&nbsp;&nbsp;-&nbsp;Thời gian học là 3 tháng, trong đó mỗi tuần học 2 buổi nhằm giúp học viên dễ tiếp thu, nhớ lâu mà không quá nhồi nhét kiến thức.</div><div>&nbsp;&nbsp;-&nbsp;Nội dung xoay quanh giao tiếp sinh hoạt hàng ngày như: chào hỏi, giới thiệu bản thân, địa chỉ, thời gian, miêu tả vị trí, du lịch, khám bệnh, đổi tiền, đặt phòng v.v.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học cơ bản (khoá 1 - khoá 3): Dành cho học viên chưa từng học tiếng Trung.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học trung cấp và cao cấp (khoá 4 - khoá 5): Dành cho học viên đã từng học tiếng Trung và có nhu cầu nâng cao khả năng nghe nói. 100% các buổi học trực tiếp với giáo viên bản xứ.</div>',20,1,5,1,72,'2020/12/6',1,1,19,0);
INSERT INTO `courses` VALUES (16, 8,8,'Tiếng Trung giao tiếp','c4.jpg','<b>Bạn cần học tiếng Trung cấp tốc để phục vụ công việc, giao tiếp hàng ngày hay buôn bán, du học</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Học và ứng dụng giao tiếp những chủ đề thông dụng với người Trung Quốc</div><div>&nbsp;&nbsp;-&nbsp;Hiểu được cấu trúc ngữ pháp câu và cách sử dụng ngữ pháp để hành văn</div><div>&nbsp;&nbsp;-&nbsp;Tự tin giao tiếp tiếng Trung như người bản xứ qua 72 bài học</div><div>&nbsp;&nbsp;-&nbsp;Học ONLINE 24/7 ngay tại nhà tiết kiệm thời gian và chi phí</div>',23,7.1,5,2,14,'2020/12/11',1,1,7.1,0);
INSERT INTO `courses` VALUES (17, 9,5,'Khóa học tiếng Nhật N5','c5.jpg','<b>Nắm vững các cấu trúc ngữ pháp JLPT N5 khác nhau, áp dụng được vào nhiều tình huống trong thực tế.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Nghe, hiểu và có thể giao tiếp được tiếng Nhật trong các tình huống thường gặp trong cuộc sống, …</div><div>&nbsp;&nbsp;-&nbsp;Biết cách đọc, cách viết hai bảng chữ cái Hiragana, Katakana, gần 1000 từ vựng và 150 chữ Kanji sơ cấp. </div><div>&nbsp;&nbsp;-&nbsp;Mỗi bài học ngữ pháp trình độ N5 sẽ bao gồm video do giáo viên giảng dạy, phần tóm tắt lại kiến thức trong bài và rất nhiều bài tập bổ trợ, củng cố những kiến thức đã được học.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học JLPT N5 của Dekiru bao gồm rất nhiều bài tập nghe hiểu với hệ thống dạng học đa dạng, trực quan và sinh động.</div>',10,6,5,1,54,'2021/1/17',1,1,6,0);
INSERT INTO `courses` VALUES (18, 9,6,'Khoá học Luyện thi JLPT','c6.jpg','<b>Hiểu được thực lực của bản thân qua các đề thi thử theo đúng cấu trúc và thời gian làm bài như đề thi thật.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Hơn 100 khoá học!</div><div>&nbsp;&nbsp;-&nbsp;Học nhanh, nhớ nhanh vào thời gian rảnh</div><div>&nbsp;&nbsp;-&nbsp; Hơn 1.000 từ vựng theo từng chuyên ngành</div><div>&nbsp;&nbsp;-&nbsp;Nâng cao khả năng từ vựng cùng với chữ và âm thanh</div>',12,7,5,1,76,'2020/12/6',1,1,7,0);

INSERT INTO `courses` VALUES (8, 4,6,'Selenium Webdriver','c7.jpg','<b>KHÓA HỌC MỚI THƯƠNG HIỆU- Học Lập trình Python & Tự động hóa Python bằng Selenium từ cấp độ Cơ bản đến Nâng cao + 5 LIVE Project</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6><div class="udlite-block-list-item udlite-block-list-item-small udlite-block-list-item-tight udlite-block-list-item-neutral udlite-text-sm" data-purpose="objective"><ul><li><span class="what-you-will-learn--objective-item--ECarc"><span>V&agrave;o cuối kh&oacute;a học n&agrave;y, bạn sẽ c&oacute; được kiến ​​thức đầy đủ về Tự động h&oacute;a Python bằng c&aacute;ch sử dụng Selenium WebDriver</span></span></li><li>Bạn sẽ c&oacute; thể triển khai c&aacute;c Khung tự động h&oacute;a kiểm tra Python từ Scratch với tất cả c&aacute;c C&ocirc;ng nghệ mới nhất</li><li>Hiểu biết đầy đủ về Kiến thức cơ bản về Python với nhiều v&iacute; dụ thực h&agrave;nh để c&oacute; được kiến ​​thức vững chắc</li><li>Bạn sẽ học c&aacute;c Khung kiểm tra đơn vị Python như PyTest, điều n&agrave;y sẽ hữu &iacute;ch cho Kiểm tra đơn vị v&agrave; t&iacute;ch hợp</li><li>To&agrave;n bộ hiểu biết về c&aacute;c phương ph&aacute;p API Selenium Python với c&aacute;c t&igrave;nh huống thời gian thực tr&ecirc;n c&aacute;c trang web TRỰC TIẾP</li><li>"Cuối c&ugrave;ng nhưng kh&ocirc;ng k&eacute;m phần quan trọng" bạn c&oacute; thể ho&agrave;n th&agrave;nh bất kỳ Phỏng vấn n&agrave;o v&agrave; c&oacute; thể dẫn dắt To&agrave;n bộ Dự &aacute;n Python Selenium từ Giai đoạn Thiết kế</li></ul></div></div>',9.9,5.7,4.7,59,483,'2021/1/17',11,1,5.7,0);
INSERT INTO `courses` VALUES (9, 7,11,'Luyện Pháp','c1.jpg','<b>Khóa học cung cấp những bí quyết để đạt điểm cao trong bài thi IELTS về từ vựng, ngữ pháp, phát âm và 4 kỹ năng nghe, nói, đọc viết. Sau khi học xong khóa học kết hợp với việc tự luyện thêm người học có thể tự tin để thi IELTS với kết quả từ 6 đến 7.</b>','<div class="singel-description pt-40"><h6>Lợi ích từ khoá học</h6></div><div>&nbsp;&nbsp;-&nbsp;Hoàn thiện các kỹ năng nghe nói đọc viết để đạt điểm như ý muốn trong kỳ thi IELTS</div><div>&nbsp;&nbsp;-&nbsp;Nâng cao khả năng nhận diện từ vựng trong các cuộc hội thoại và trong các văn bản</div><div class="singel-description pt-40"><h6>Phù hợp với</h6></div><div>&nbsp;&nbsp;-&nbsp;Sinh viên, học sinh, người đi làm</div><div>&nbsp;&nbsp;-&nbsp; Học sinh có nhu cầu lấy điểm IELTS để đi du học, kiếm học bổng</div><div>&nbsp;&nbsp;-&nbsp; Người đi làm có nhu cầu lấy bằng ỈELTS theo yêu cầu của công ty</div>',19,0.0,5,1,21,'2021/1/18',1,1,19,0);
INSERT INTO `courses` VALUES (10, 7,11,'Tiếng Pháp','c2.jpg','<b>Rất nhiều bạn học tiếng Anh và đang gặp phải các vấn đề như: - Không biết nên học tiếng Anh như thế nào cho hiệu quả - Học tiếng Anh đã lâu rồi nhưng chưa thể nói ra thành phản xạ các chủ đề thông dụng trong giao tiếp hàng ngày - Bối rối và không biết nói gì khi giao tiếp với người nước ngoài - Mất tự tin khi sử dụng tiếng Anh trong học tập cũng như công việc hàng ngày Khóa học này giúp bạn giải quyết các vấn đề trên bằng việc phát triển vốn từ vựng và ngữ pháp trong các chủ điểm tiếng Anh giao tiếp hàng ngày. </b>','<div class="singel-description pt-40"><h6>Những gì bạn cần biểt?</h6></div><div>&nbsp;&nbsp;-&nbsp;Khối lượng lớn các từ vựng trong các chủ điểm giao tiếp thường ngày</div><div>&nbsp;&nbsp;-&nbsp;Khối lượng lớn các cấu trúc ngữ pháp giúp diễn tả ý dễ dàng, mạch lạc hơn</div><div>&nbsp;&nbsp;-&nbsp;Học phát triển câu thông qua các cấu trúc</div><div>&nbsp;&nbsp;-&nbsp;Các bài tập thực hành luyện nghe và nói</div><div>&nbsp;&nbsp;-&nbsp;Luyện giao tiếp tiếng Anh và phản xạ nhanh thông qua các bài học hỏi và đáp cùng giảng viên</div>',21,0.0,5,2,51,'2021/1/17',5,1,21,0);
INSERT INTO `courses` VALUES (11, 8,10,'Khoá Học Tiếng Hàn Quốc','c3.jpg','<b>Khóa học tiếng Trung giao tiếp cấp tốc giúp học viên rèn luyện kỹ năng nghe, nói, một cách nhanh nhất. Chương trình này gồm 5 khóa, sau khi tham gia các khóa học tiếng Trung giao tiếp cấp tốc thì bạn có thể tự tin trong giao tiếp hằng ngày.</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; 100% nghe - nói, học dựa trên phiên âm, không học viết chữ Hán tuy nhiên vẫn có thể nhắn tin, đánh máy.</div><div>&nbsp;&nbsp;-&nbsp;Thời gian học là 3 tháng, trong đó mỗi tuần học 2 buổi nhằm giúp học viên dễ tiếp thu, nhớ lâu mà không quá nhồi nhét kiến thức.</div><div>&nbsp;&nbsp;-&nbsp;Nội dung xoay quanh giao tiếp sinh hoạt hàng ngày như: chào hỏi, giới thiệu bản thân, địa chỉ, thời gian, miêu tả vị trí, du lịch, khám bệnh, đổi tiền, đặt phòng v.v.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học cơ bản (khoá 1 - khoá 3): Dành cho học viên chưa từng học tiếng Trung.</div><div>&nbsp;&nbsp;-&nbsp;Khóa học trung cấp và cao cấp (khoá 4 - khoá 5): Dành cho học viên đã từng học tiếng Trung và có nhu cầu nâng cao khả năng nghe nói. 100% các buổi học trực tiếp với giáo viên bản xứ.</div>',20,1,5,1,72,'2020/12/6',1,1,19,0);
INSERT INTO `courses` VALUES (12, 8,9,'Tiếng Nhật','c4.jpg','<b>Bạn cần học tiếng Trung cấp tốc để phục vụ công việc, giao tiếp hàng ngày hay buôn bán, du học</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp;Học và ứng dụng giao tiếp những chủ đề thông dụng với người Trung Quốc</div><div>&nbsp;&nbsp;-&nbsp;Hiểu được cấu trúc ngữ pháp câu và cách sử dụng ngữ pháp để hành văn</div><div>&nbsp;&nbsp;-&nbsp;Tự tin giao tiếp tiếng Trung như người bản xứ qua 72 bài học</div><div>&nbsp;&nbsp;-&nbsp;Học ONLINE 24/7 ngay tại nhà tiết kiệm thời gian và chi phí</div>',23,7.1,5,2,14,'2020/12/11',1,1,7.1,0);

INSERT INTO `courses` VALUES (24, '12', '50', 'Quản trị học cơ bản', 'c30.jpg', '<b>Quản trị Kinh doanh là ngành học đào tạo các kiến thức và kỹ năng cần thiết liên quan đến việc thành lập và điều hành một doanh nghiệp bất kể đó là công ty tư nhân, trực thuộc nhà nước hay phi chính phủ. Bạn sẽ được học về mọi bộ phận trong một công ty như kế toán, marketing, tài chính, nhân sự,… cùng nhiều kỹ năng mềm liên quan đến công việc như lãnh đạo, phân tích và cả đạo đức kinh doanh.</b>', '<div class=\"singel-description pt-40\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Chức năng, vai trò và đặc điểm của Quản Trị. </div><div>&nbsp;&nbsp;-&nbsp; Khái niệm tổ chức và các hoạt động cơ bản của tổ chức. </div><div>&nbsp;&nbsp;-&nbsp; Trình bày khái niệm và chức năng của quyết định trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phân loại và yêu cầu đối với quyết định quản trị.</div><div>&nbsp;&nbsp;-&nbsp;Khái niệm thông tin, vai trò và phân loại thông tin.</div><div>&nbsp;&nbsp;-&nbsp; Các phương pháp lập kế hoạch chiến lược.</div><div>&nbsp;&nbsp;-&nbsp; Phân tích ma trận BCG của nhóm Boston và đưa ra các biện pháp chiến lược cho doanh nghiệp.</div><div>&nbsp;&nbsp;-&nbsp; Các thuộc tính của cơ cấu tổ chức.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, ý nghĩa của lập kế hoạch chiến lược trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phong cách làm việc của cán bộ quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, nguyên tắc tạo lập uy tín và phân tích một số quy luật tâm lý xấu dẫn đến sự hư hỏng, đổ vỡ của cán bộ quản trị.</div>', '10.00', '9.00', '3.5', '49', '123', '2021-1-06', '11', '1', '9.00',0);
INSERT INTO `courses` VALUES (25, '13', '51', 'Đạo đức kinh doanh 1', 'c31.jpg', '<b>Trang bị cho sinh viên kiến thức về hệ thống thông tin và quản trị hệ thống thông tin kế\r\ntoán, nhằm kiểm soát tài sản và cung cấp thông tin hữu ích kịp thời cho nhà quản trị trong\r\nvà ngoài doanh nghiệp khi ra quyết định kinh doanh. Giới thiệu hệ thống thông tin kế toán\r\ntrong doanh nghiệp; mô tả quy trình kinh doanh chính và mục tiêu kiểm soát trong từng\r\nquy trình; các tiêu chí để lựa chọn vận hành hệ thống thông tin kế toán trong doanh nghiệp.\r\n</b>', '<div class=\"singel-description pt-40\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; TỔNG QUAN VỀ HỆ THỐNG THÔNG TIN KẾ TOÁN.</div><div>&nbsp;&nbsp;-&nbsp;HỆ THỐNG QUẢN LÝ CƠ SỞ DỮ LIỆU. </div><div>&nbsp;&nbsp;-&nbsp; HỆ THỐNG KIỂM SOÁT NỘI BỘ.</div><div>&nbsp;&nbsp;-&nbsp; TỔ CHỨC HỆ THỐNG THÔNG TIN KẾ TOÁN.</div><div>&nbsp;&nbsp;-&nbsp;CHU TRÌNH CHI PHÍ\r\n.</div><div>&nbsp;&nbsp;-&nbsp; CHU TRÌNH DOANH THU.</div>', '12.00', '9.00', '3.4', '76', '99', '2021-01-07', '11', '1', '9.00',0);
INSERT INTO `courses` VALUES (26, '14', '52', 'Kinh tế vi mô 1', 'c32.jpg', '<b>Ngành Tài chính ngân hàng học những gì? chính là chủ đề được quan tâm khá nhiều khi các bạn học sinh tìm hiểu về ngành này. Sinh viên ngành Tài chính ngân hàng được cung cấp kiến thức về lĩnh vực phân tích tài chính và đầu tư trên thị trường vốn, thị trường tiền tệ trong quá trình toàn cầu hóa;  Nắm bắt kiến thức vững chắc về thực hành các nghiệp vụ trong ngân hàng thương mại hiện đại; có chuyên môn sâu về phân tích, dự báo liên quan đến tài chính, tiền tệ nhằm đưa ra quyết định trong quản trị tài chính.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Chức năng, vai trò và đặc điểm của Quản Trị. </div><div>&nbsp;&nbsp;-&nbsp; Khái niệm tổ chức và các hoạt động cơ bản của tổ chức. </div><div>&nbsp;&nbsp;-&nbsp; Trình bày khái niệm và chức năng của quyết định trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phân loại và yêu cầu đối với quyết định quản trị.</div><div>&nbsp;&nbsp;-&nbsp;Khái niệm thông tin, vai trò và phân loại thông tin.</div><div>&nbsp;&nbsp;-&nbsp; Các phương pháp lập kế hoạch chiến lược.</div><div>&nbsp;&nbsp;-&nbsp; Phân tích ma trận BCG của nhóm Boston và đưa ra các biện pháp chiến lược cho doanh nghiệp.</div><div>&nbsp;&nbsp;-&nbsp; Các thuộc tính của cơ cấu tổ chức.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, ý nghĩa của lập kế hoạch chiến lược trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phong cách làm việc của cán bộ quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, nguyên tắc tạo lập uy tín và phân tích một số quy luật tâm lý xấu dẫn đến sự hư hỏng, đổ vỡ của cán bộ quản trị.</div>', '13.00', '6.00', '2.5', '90', '645', '2021-01-13', '132', '1', '6.00',0);
INSERT INTO `courses` VALUES (27, '15', '53', 'Chuyên viên digital marketing 1', 'c33.jpg', '<b>Hiểu và triển khai hiệu quả Digital Marketing vào kinh doanh sau 29 buổi. Chương trình được phát triển với nội dung từ căn bản đến nâng cao và lấy thực hành làm trọng tâm với các khóa học Digital Marketing tại đây.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Giáo trình tiêu chuẩn cùng kiến thức cập nhật thường xuyên giúp học viên tiếp cận Internet Marketing trong thời gian ngắn nhất. </div><div>&nbsp;&nbsp;-&nbsp; Giảng viên giàu kinh nghiệm sẵn giải đáp thắc mắc xuyên suốt khóa học Digital Marketing về việc triển khai trên chính dự án marketing online của học viên. </div><div>&nbsp;&nbsp;-&nbsp; Hỗ trợ giải đáp trong khóa học về các khó khăn gặp phải của học viên khi thực thi các dự án Marketing online.</div>', '10.00', '9.00', '4.5', '20', '244', '2021-01-13', '134', '1', '9.00',0);
INSERT INTO `courses` VALUES (28, '16', '54', 'Khóa học kinh doanh online Thương mại điện tử 1', 'c34.jpg', '<b>Khóa học này khá thích hợp cho người mới, chưa biết bắt đầu kinh doanh trên các sàn từ đâu. Đặc biệt là khi bạn muốn bắt đầu với sàn Sendo, một mảnh đất ít cạnh tranh hơn so với các sàn hiện tại. Khóa học này có 5 module chính, mỗi chương tác giả lại chia ra nhiều nội dung nhỏ để người đọc dễ dàng theo dõi.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '15.00', '14.00', '5', '40', '134', '2021-01-14', '134', '1', '14.00',0);
INSERT INTO `courses` VALUES (29, '17', '55', 'khóa học kinh doanh online Thương mại điện tử 2', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (30, '18', '56', 'Lịch sử mỹ thuật thế giới 1', 'c36.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (31, '19', '50', 'Thiết kế đồ họa 1', 'c37.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (32, '20', '51', 'Quy trình cung ứng thiết kế 1', 'c38.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (33, '21', '52', 'Thiết kế nội thất 1', 'c39.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (34, '21', '53', 'Thiết kế thời trang 1', 'c40.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);

INSERT INTO `courses` VALUES (35, '12', '50', 'Quản trị học nâng cao', 'c30.jpg', '<b>Quản trị Kinh doanh là ngành học đào tạo các kiến thức và kỹ năng cần thiết liên quan đến việc thành lập và điều hành một doanh nghiệp bất kể đó là công ty tư nhân, trực thuộc nhà nước hay phi chính phủ. Bạn sẽ được học về mọi bộ phận trong một công ty như kế toán, marketing, tài chính, nhân sự,… cùng nhiều kỹ năng mềm liên quan đến công việc như lãnh đạo, phân tích và cả đạo đức kinh doanh.</b>', '<div class=\"singel-description pt-40\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Chức năng, vai trò và đặc điểm của Quản Trị. </div><div>&nbsp;&nbsp;-&nbsp; Khái niệm tổ chức và các hoạt động cơ bản của tổ chức. </div><div>&nbsp;&nbsp;-&nbsp; Trình bày khái niệm và chức năng của quyết định trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phân loại và yêu cầu đối với quyết định quản trị.</div><div>&nbsp;&nbsp;-&nbsp;Khái niệm thông tin, vai trò và phân loại thông tin.</div><div>&nbsp;&nbsp;-&nbsp; Các phương pháp lập kế hoạch chiến lược.</div><div>&nbsp;&nbsp;-&nbsp; Phân tích ma trận BCG của nhóm Boston và đưa ra các biện pháp chiến lược cho doanh nghiệp.</div><div>&nbsp;&nbsp;-&nbsp; Các thuộc tính của cơ cấu tổ chức.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, ý nghĩa của lập kế hoạch chiến lược trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phong cách làm việc của cán bộ quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, nguyên tắc tạo lập uy tín và phân tích một số quy luật tâm lý xấu dẫn đến sự hư hỏng, đổ vỡ của cán bộ quản trị.</div>', '10.00', '9.00', '3.5', '49', '123', '2021-1-06', '11', '1', '9.00',0);
INSERT INTO `courses` VALUES (36, '13', '51', 'Đạo đức kinh doanh nâng cao', 'c31.jpg', '<b>Trang bị cho sinh viên kiến thức về hệ thống thông tin và quản trị hệ thống thông tin kế\r\ntoán, nhằm kiểm soát tài sản và cung cấp thông tin hữu ích kịp thời cho nhà quản trị trong\r\nvà ngoài doanh nghiệp khi ra quyết định kinh doanh. Giới thiệu hệ thống thông tin kế toán\r\ntrong doanh nghiệp; mô tả quy trình kinh doanh chính và mục tiêu kiểm soát trong từng\r\nquy trình; các tiêu chí để lựa chọn vận hành hệ thống thông tin kế toán trong doanh nghiệp.\r\n</b>', '<div class=\"singel-description pt-40\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; TỔNG QUAN VỀ HỆ THỐNG THÔNG TIN KẾ TOÁN.</div><div>&nbsp;&nbsp;-&nbsp;HỆ THỐNG QUẢN LÝ CƠ SỞ DỮ LIỆU. </div><div>&nbsp;&nbsp;-&nbsp; HỆ THỐNG KIỂM SOÁT NỘI BỘ.</div><div>&nbsp;&nbsp;-&nbsp; TỔ CHỨC HỆ THỐNG THÔNG TIN KẾ TOÁN.</div><div>&nbsp;&nbsp;-&nbsp;CHU TRÌNH CHI PHÍ\r\n.</div><div>&nbsp;&nbsp;-&nbsp; CHU TRÌNH DOANH THU.</div>', '12.00', '9.00', '3.4', '76', '99', '2021-01-07', '11', '1', '9.00',0);
INSERT INTO `courses` VALUES (37, '14', '52', 'Kinh tế vi mô nâng cao', 'c32.jpg', '<b>Ngành Tài chính ngân hàng học những gì? chính là chủ đề được quan tâm khá nhiều khi các bạn học sinh tìm hiểu về ngành này. Sinh viên ngành Tài chính ngân hàng được cung cấp kiến thức về lĩnh vực phân tích tài chính và đầu tư trên thị trường vốn, thị trường tiền tệ trong quá trình toàn cầu hóa;  Nắm bắt kiến thức vững chắc về thực hành các nghiệp vụ trong ngân hàng thương mại hiện đại; có chuyên môn sâu về phân tích, dự báo liên quan đến tài chính, tiền tệ nhằm đưa ra quyết định trong quản trị tài chính.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Chức năng, vai trò và đặc điểm của Quản Trị. </div><div>&nbsp;&nbsp;-&nbsp; Khái niệm tổ chức và các hoạt động cơ bản của tổ chức. </div><div>&nbsp;&nbsp;-&nbsp; Trình bày khái niệm và chức năng của quyết định trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phân loại và yêu cầu đối với quyết định quản trị.</div><div>&nbsp;&nbsp;-&nbsp;Khái niệm thông tin, vai trò và phân loại thông tin.</div><div>&nbsp;&nbsp;-&nbsp; Các phương pháp lập kế hoạch chiến lược.</div><div>&nbsp;&nbsp;-&nbsp; Phân tích ma trận BCG của nhóm Boston và đưa ra các biện pháp chiến lược cho doanh nghiệp.</div><div>&nbsp;&nbsp;-&nbsp; Các thuộc tính của cơ cấu tổ chức.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, ý nghĩa của lập kế hoạch chiến lược trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phong cách làm việc của cán bộ quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, nguyên tắc tạo lập uy tín và phân tích một số quy luật tâm lý xấu dẫn đến sự hư hỏng, đổ vỡ của cán bộ quản trị.</div>', '13.00', '6.00', '2.5', '90', '645', '2021-01-13', '132', '1', '6.00',0);
INSERT INTO `courses` VALUES (38, '15', '53', 'Chuyên viên digital marketing nâng cao', 'c33.jpg', '<b>Hiểu và triển khai hiệu quả Digital Marketing vào kinh doanh sau 29 buổi. Chương trình được phát triển với nội dung từ căn bản đến nâng cao và lấy thực hành làm trọng tâm với các khóa học Digital Marketing tại đây.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Giáo trình tiêu chuẩn cùng kiến thức cập nhật thường xuyên giúp học viên tiếp cận Internet Marketing trong thời gian ngắn nhất. </div><div>&nbsp;&nbsp;-&nbsp; Giảng viên giàu kinh nghiệm sẵn giải đáp thắc mắc xuyên suốt khóa học Digital Marketing về việc triển khai trên chính dự án marketing online của học viên. </div><div>&nbsp;&nbsp;-&nbsp; Hỗ trợ giải đáp trong khóa học về các khó khăn gặp phải của học viên khi thực thi các dự án Marketing online.</div>', '10.00', '9.00', '4.5', '20', '244', '2021-01-13', '134', '1', '9.00',0);
INSERT INTO `courses` VALUES (39, '16', '54', 'Khóa học kinh doanh online Thương mại điện tử 3', 'c34.jpg', '<b>Khóa học này khá thích hợp cho người mới, chưa biết bắt đầu kinh doanh trên các sàn từ đâu. Đặc biệt là khi bạn muốn bắt đầu với sàn Sendo, một mảnh đất ít cạnh tranh hơn so với các sàn hiện tại. Khóa học này có 5 module chính, mỗi chương tác giả lại chia ra nhiều nội dung nhỏ để người đọc dễ dàng theo dõi.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '15.00', '14.00', '5', '40', '134', '2021-01-14', '134', '1', '14.00',0);
INSERT INTO `courses` VALUES (40, '17', '55', 'khóa học kinh doanh online Thương mại điện tử 4', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (41, '18', '56', 'Lịch sử mỹ thuật thế giới 2', 'c36.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (42, '19', '50', 'Thiết kế đồ họa 2', 'c37.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (43, '20', '51', 'Quy trình cung ứng thiết kế 2', 'c38.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (44, '21', '52', 'Thiết kế nội thất 2', 'c39.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (45, '21', '53', 'Thiết kế thời trang 2', 'c40.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);

INSERT INTO `courses` VALUES (46, '12', '50', 'Quản trị học 3', 'c30.jpg', '<b>Quản trị Kinh doanh là ngành học đào tạo các kiến thức và kỹ năng cần thiết liên quan đến việc thành lập và điều hành một doanh nghiệp bất kể đó là công ty tư nhân, trực thuộc nhà nước hay phi chính phủ. Bạn sẽ được học về mọi bộ phận trong một công ty như kế toán, marketing, tài chính, nhân sự,… cùng nhiều kỹ năng mềm liên quan đến công việc như lãnh đạo, phân tích và cả đạo đức kinh doanh.</b>', '<div class=\"singel-description pt-40\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Chức năng, vai trò và đặc điểm của Quản Trị. </div><div>&nbsp;&nbsp;-&nbsp; Khái niệm tổ chức và các hoạt động cơ bản của tổ chức. </div><div>&nbsp;&nbsp;-&nbsp; Trình bày khái niệm và chức năng của quyết định trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phân loại và yêu cầu đối với quyết định quản trị.</div><div>&nbsp;&nbsp;-&nbsp;Khái niệm thông tin, vai trò và phân loại thông tin.</div><div>&nbsp;&nbsp;-&nbsp; Các phương pháp lập kế hoạch chiến lược.</div><div>&nbsp;&nbsp;-&nbsp; Phân tích ma trận BCG của nhóm Boston và đưa ra các biện pháp chiến lược cho doanh nghiệp.</div><div>&nbsp;&nbsp;-&nbsp; Các thuộc tính của cơ cấu tổ chức.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, ý nghĩa của lập kế hoạch chiến lược trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phong cách làm việc của cán bộ quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, nguyên tắc tạo lập uy tín và phân tích một số quy luật tâm lý xấu dẫn đến sự hư hỏng, đổ vỡ của cán bộ quản trị.</div>', '10.00', '9.00', '3.5', '49', '123', '2021-1-06', '11', '1', '9.00',0);
INSERT INTO `courses` VALUES (47, '13', '51', 'Đạo đức kinh doanh 3', 'c31.jpg', '<b>Trang bị cho sinh viên kiến thức về hệ thống thông tin và quản trị hệ thống thông tin kế\r\ntoán, nhằm kiểm soát tài sản và cung cấp thông tin hữu ích kịp thời cho nhà quản trị trong\r\nvà ngoài doanh nghiệp khi ra quyết định kinh doanh. Giới thiệu hệ thống thông tin kế toán\r\ntrong doanh nghiệp; mô tả quy trình kinh doanh chính và mục tiêu kiểm soát trong từng\r\nquy trình; các tiêu chí để lựa chọn vận hành hệ thống thông tin kế toán trong doanh nghiệp.\r\n</b>', '<div class=\"singel-description pt-40\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; TỔNG QUAN VỀ HỆ THỐNG THÔNG TIN KẾ TOÁN.</div><div>&nbsp;&nbsp;-&nbsp;HỆ THỐNG QUẢN LÝ CƠ SỞ DỮ LIỆU. </div><div>&nbsp;&nbsp;-&nbsp; HỆ THỐNG KIỂM SOÁT NỘI BỘ.</div><div>&nbsp;&nbsp;-&nbsp; TỔ CHỨC HỆ THỐNG THÔNG TIN KẾ TOÁN.</div><div>&nbsp;&nbsp;-&nbsp;CHU TRÌNH CHI PHÍ\r\n.</div><div>&nbsp;&nbsp;-&nbsp; CHU TRÌNH DOANH THU.</div>', '12.00', '9.00', '3.4', '76', '99', '2021-01-07', '11', '1', '9.00',0);
INSERT INTO `courses` VALUES (48, '14', '52', 'Kinh tế vi mô 3', 'c32.jpg', '<b>Ngành Tài chính ngân hàng học những gì? chính là chủ đề được quan tâm khá nhiều khi các bạn học sinh tìm hiểu về ngành này. Sinh viên ngành Tài chính ngân hàng được cung cấp kiến thức về lĩnh vực phân tích tài chính và đầu tư trên thị trường vốn, thị trường tiền tệ trong quá trình toàn cầu hóa;  Nắm bắt kiến thức vững chắc về thực hành các nghiệp vụ trong ngân hàng thương mại hiện đại; có chuyên môn sâu về phân tích, dự báo liên quan đến tài chính, tiền tệ nhằm đưa ra quyết định trong quản trị tài chính.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Chức năng, vai trò và đặc điểm của Quản Trị. </div><div>&nbsp;&nbsp;-&nbsp; Khái niệm tổ chức và các hoạt động cơ bản của tổ chức. </div><div>&nbsp;&nbsp;-&nbsp; Trình bày khái niệm và chức năng của quyết định trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phân loại và yêu cầu đối với quyết định quản trị.</div><div>&nbsp;&nbsp;-&nbsp;Khái niệm thông tin, vai trò và phân loại thông tin.</div><div>&nbsp;&nbsp;-&nbsp; Các phương pháp lập kế hoạch chiến lược.</div><div>&nbsp;&nbsp;-&nbsp; Phân tích ma trận BCG của nhóm Boston và đưa ra các biện pháp chiến lược cho doanh nghiệp.</div><div>&nbsp;&nbsp;-&nbsp; Các thuộc tính của cơ cấu tổ chức.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, ý nghĩa của lập kế hoạch chiến lược trong quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Phong cách làm việc của cán bộ quản trị.</div><div>&nbsp;&nbsp;-&nbsp; Khái niệm, nguyên tắc tạo lập uy tín và phân tích một số quy luật tâm lý xấu dẫn đến sự hư hỏng, đổ vỡ của cán bộ quản trị.</div>', '13.00', '6.00', '2.5', '90', '645', '2021-01-13', '132', '1', '6.00',0);
INSERT INTO `courses` VALUES (49, '15', '53', 'Chuyên viên digital marketing 3', 'c33.jpg', '<b>Hiểu và triển khai hiệu quả Digital Marketing vào kinh doanh sau 29 buổi. Chương trình được phát triển với nội dung từ căn bản đến nâng cao và lấy thực hành làm trọng tâm với các khóa học Digital Marketing tại đây.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Giáo trình tiêu chuẩn cùng kiến thức cập nhật thường xuyên giúp học viên tiếp cận Internet Marketing trong thời gian ngắn nhất. </div><div>&nbsp;&nbsp;-&nbsp; Giảng viên giàu kinh nghiệm sẵn giải đáp thắc mắc xuyên suốt khóa học Digital Marketing về việc triển khai trên chính dự án marketing online của học viên. </div><div>&nbsp;&nbsp;-&nbsp; Hỗ trợ giải đáp trong khóa học về các khó khăn gặp phải của học viên khi thực thi các dự án Marketing online.</div>', '10.00', '9.00', '4.5', '20', '244', '2021-01-13', '134', '1', '9.00',0);
INSERT INTO `courses` VALUES (50, '16', '54', 'Khóa học kinh doanh online Thương mại điện tử 5', 'c34.jpg', '<b>Khóa học này khá thích hợp cho người mới, chưa biết bắt đầu kinh doanh trên các sàn từ đâu. Đặc biệt là khi bạn muốn bắt đầu với sàn Sendo, một mảnh đất ít cạnh tranh hơn so với các sàn hiện tại. Khóa học này có 5 module chính, mỗi chương tác giả lại chia ra nhiều nội dung nhỏ để người đọc dễ dàng theo dõi.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '15.00', '14.00', '5', '40', '134', '2021-01-14', '134', '1', '14.00',0);
INSERT INTO `courses` VALUES (51, '17', '55', 'khóa học kinh doanh online Thương mại điện tử 6', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (52, '18', '56', 'Lịch sử mỹ thuật thế giới 3', 'c36.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (53, '19', '50', 'Thiết kế đồ họa 3', 'c37.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (54, '20', '51', 'Quy trình cung ứng thiết kế 3', 'c38.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (55, '21', '52', 'Thiết kế nội thất 3', 'c39.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);
INSERT INTO `courses` VALUES (56, '21', '53', 'Thiết kế thời trang 3', 'c40.jpg', '<b>Môn học lịch sử mỹ thuật là môn học nghiên cứu về lịch sử hình thành và phát triển của các loại hình nghệ thuật tạo hình theo tiến trình thời gian lịch s ử. Sau khi nghiên cứu và học lịch sử mỹ thuật sẽ giúp chúng ta biết được các giai đoạn phát tri ển của mỹ thuật. Nhờ thành tựu của nhiều ngành khoa học tự nhiên cũng như xã hội, chúng ta có thể dựng lại bức tranh về cuộc sống con người từ thời nguyên thuỷ. Trên cơ sở đó giúp con người ngày nay hiểu về đời sống sinh hoạt cũng như thẩm mỹ của con người. Mỹ thuật, hay nói đúng hơn là nghệ thuật tạo hình, đã ra đời hàng nghìn năm trước đây. Do xuất hiện trong quá trình lao động nên nó đã trở thành hình thức thể hiện ý nghĩa, tình cảm của con người, trở thành một phương tiện đắc lực của sự nhận thức hiện thực.\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT NGUYÊN THỦY VÀ CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT PHƯƠNG ĐÔNG CỔ ĐẠI. </div><div>&nbsp;&nbsp;-&nbsp; MỸ THUẬT TRUNG QUỐC CỔ.</div>', '10.00', '8.00', '4.0', '42', '120', '2021-01-14', '133', '1', '8.00',0);


INSERT INTO `courses` VALUES (100, 22,71,'Yoga trị liệu cho bàn chân','c-22.jpg','<b> Kích hoạt, tăng cường, thư giãn và ngăn chặn ...</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Chúng ta có thể phòng ngừa những vấn đề gì?</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập giãn cơ và căng cơ để kích hoạt toàn bộ cơ thể</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.3,0,4.3,52,58,'2021/1/10',87,1,5.3,0);
INSERT INTO `courses` VALUES (101,23 ,72,'Chánh niệm: Thiền chánh niệm','c-21.jpg','<b> Học cách thiền mỗi ngày</b>','<div class="singel-description pt-40"><h6>“Thiền chánh niệm là cố ý tập trung vào trải nghiệm của giây phút hiện tại, không mục đích, không phán xét và với lòng nhân từ. »  Jon Kabat-Zin</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Sau nhiều thế kỷ lịch sử, Thiền Chánh niệm đã trở thành một phương pháp thực hành đương đại, hiệu quả và dễ học.</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.6,5.3,4.7,522,71,'2021/1/11',794,1,5.3,0);
INSERT INTO `courses` VALUES (102, 24,73,'Khóa học bệnh lý thần kinh n ° 1 - Thực phẩm và sức khỏe','c-23.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo này được thiết kế để học một lối sống lành mạnh cho bản thân và để hỗ trợ những người xung quanh, khách hàng hoặc bệnh nhân của họ.</div><div>&nbsp;&nbsp;-&nbsp;Một phần đào tạo EquilibreSante® của khóa học trị liệu tự nhiên hoàn chỉnh do Patrick Lelu giảng dạy.</div><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo "Thực phẩm và Sức khỏe" này , mang lại kiến ​​thức thực tế cho bản thân và tiếp cận sự đồng hành của khách hàng, bệnh nhân, bằng cách tích hợp thực phẩm vào vị trí trung tâm trong các rối loạn hữu cơ nhưng cũng để cân bằng lại những rối loạn tương tự này </div>',7.3,6.6,4.1,13,16,'2021/1/9',17,1,6.6,0);
INSERT INTO `courses` VALUES (103, 25,74,'Bấm huyệt Diện Chẩn, Xoa bóp Điểm Đau','c-21.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Diện Chẩn là một phương pháp trị liệu ban đầu được công nhận trên toàn thế giới, để kiểm soát cơn đau và điều trị hầu hết các rối loạn chức năng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div>',3.3,0,4.4,12,51,'2021/1/8',117,1,3.3,0);
INSERT INTO `courses` VALUES (104, 22,75,'Hiểu ADHD','c-22.jpg','<b> Kích hoạt, tăng cường, thư giãn và ngăn chặn ...</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Chúng ta có thể phòng ngừa những vấn đề gì?</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập giãn cơ và căng cơ để kích hoạt toàn bộ cơ thể</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.3,0,4.3,52,58,'2021/1/10',87,1,5.3,0);
INSERT INTO `courses` VALUES (105,23 ,71,'Massage Thư giãn Thư giãn tại Isla Verde Spa','c-21.jpg','<b> Học cách thiền mỗi ngày</b>','<div class="singel-description pt-40"><h6>“Thiền chánh niệm là cố ý tập trung vào trải nghiệm của giây phút hiện tại, không mục đích, không phán xét và với lòng nhân từ. »  Jon Kabat-Zin</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Sau nhiều thế kỷ lịch sử, Thiền Chánh niệm đã trở thành một phương pháp thực hành đương đại, hiệu quả và dễ học.</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.6,5.3,4.7,522,71,'2021/1/11',794,1,5.3,0);
INSERT INTO `courses` VALUES (106, 24,72,'PALEO: tiêu thụ tốt hơn, giảm cân lành mạnh.','c-23.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo này được thiết kế để học một lối sống lành mạnh cho bản thân và để hỗ trợ những người xung quanh, khách hàng hoặc bệnh nhân của họ.</div><div>&nbsp;&nbsp;-&nbsp;Một phần đào tạo EquilibreSante® của khóa học trị liệu tự nhiên hoàn chỉnh do Patrick Lelu giảng dạy.</div><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo "Thực phẩm và Sức khỏe" này , mang lại kiến ​​thức thực tế cho bản thân và tiếp cận sự đồng hành của khách hàng, bệnh nhân, bằng cách tích hợp thực phẩm vào vị trí trung tâm trong các rối loạn hữu cơ nhưng cũng để cân bằng lại những rối loạn tương tự này </div>',7.3,6.6,4.1,13,16,'2021/1/9',17,1,6.6,0);
INSERT INTO `courses` VALUES (107, 25,73,'Hoàn thành chương trình thể hình','c-21.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Diện Chẩn là một phương pháp trị liệu ban đầu được công nhận trên toàn thế giới, để kiểm soát cơn đau và điều trị hầu hết các rối loạn chức năng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div>',3.3,0,4.7,14,56,'2021/1/8',117,1,3.3,0);
INSERT INTO `courses` VALUES (108, 22,74,'Xây dựng kế hoạch ăn uống hoàn hảo','c-22.jpg','<b> Kích hoạt, tăng cường, thư giãn và ngăn chặn ...</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Chúng ta có thể phòng ngừa những vấn đề gì?</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập giãn cơ và căng cơ để kích hoạt toàn bộ cơ thể</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.3,0,4.6,52,58,'2021/1/10',87,1,5.3,0);
INSERT INTO `courses` VALUES (109,23 ,74,'Massage Thư giãn Thư giãn tại Isla Verde Spa','c-21.jpg','<b> Học cách thiền mỗi ngày</b>','<div class="singel-description pt-40"><h6>“Thiền chánh niệm là cố ý tập trung vào trải nghiệm của giây phút hiện tại, không mục đích, không phán xét và với lòng nhân từ. »  Jon Kabat-Zin</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Sau nhiều thế kỷ lịch sử, Thiền Chánh niệm đã trở thành một phương pháp thực hành đương đại, hiệu quả và dễ học.</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.6,5.3,4.7,522,71,'2021/1/11',794,1,5.3,0);
INSERT INTO `courses` VALUES (110, 24,71,'Yin Yoga: từ cứng đến mềm dẻo','c-23.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo này được thiết kế để học một lối sống lành mạnh cho bản thân và để hỗ trợ những người xung quanh, khách hàng hoặc bệnh nhân của họ.</div><div>&nbsp;&nbsp;-&nbsp;Một phần đào tạo EquilibreSante® của khóa học trị liệu tự nhiên hoàn chỉnh do Patrick Lelu giảng dạy.</div><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo "Thực phẩm và Sức khỏe" này , mang lại kiến ​​thức thực tế cho bản thân và tiếp cận sự đồng hành của khách hàng, bệnh nhân, bằng cách tích hợp thực phẩm vào vị trí trung tâm trong các rối loạn hữu cơ nhưng cũng để cân bằng lại những rối loạn tương tự này </div>',7.3,6.6,4.1,13,16,'2021/1/9',17,1,6.6,0);
INSERT INTO `courses` VALUES (111, 25,72,'Giải phóng cảm xúc','c-21.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Diện Chẩn là một phương pháp trị liệu ban đầu được công nhận trên toàn thế giới, để kiểm soát cơn đau và điều trị hầu hết các rối loạn chức năng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div>',5.3,0,3,14,55,'2021/1/8',119,1,5.8,0);

INSERT INTO `courses` VALUES (112, 22,73,'Trở thành cố vấn cây thuốc','c-22.jpg','<b> Kích hoạt, tăng cường, thư giãn và ngăn chặn ...</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Chúng ta có thể phòng ngừa những vấn đề gì?</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập giãn cơ và căng cơ để kích hoạt toàn bộ cơ thể</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.3,0,4.3,52,58,'2021/1/10',89,1,5.8,0);
INSERT INTO `courses` VALUES (113,23 ,74,'Trở thành cố vấn hương liệu','c-21.jpg','<b> Học cách thiền mỗi ngày</b>','<div class="singel-description pt-40"><h6>“Thiền chánh niệm là cố ý tập trung vào trải nghiệm của giây phút hiện tại, không mục đích, không phán xét và với lòng nhân từ. »  Jon Kabat-Zin</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Sau nhiều thế kỷ lịch sử, Thiền Chánh niệm đã trở thành một phương pháp thực hành đương đại, hiệu quả và dễ học.</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.6,5.3,4.7,522,71,'2021/1/11',794,1,5.9,0);
INSERT INTO `courses` VALUES (114, 24,75,'Dinh dưỡng và năng lượng.','c-23.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo này được thiết kế để học một lối sống lành mạnh cho bản thân và để hỗ trợ những người xung quanh, khách hàng hoặc bệnh nhân của họ.</div><div>&nbsp;&nbsp;-&nbsp;Một phần đào tạo EquilibreSante® của khóa học trị liệu tự nhiên hoàn chỉnh do Patrick Lelu giảng dạy.</div><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo "Thực phẩm và Sức khỏe" này , mang lại kiến ​​thức thực tế cho bản thân và tiếp cận sự đồng hành của khách hàng, bệnh nhân, bằng cách tích hợp thực phẩm vào vị trí trung tâm trong các rối loạn hữu cơ nhưng cũng để cân bằng lại những rối loạn tương tự này </div>',7.3,6.6,4.1,13,16,'2021/1/9',17,1,6.9,0);
INSERT INTO `courses` VALUES (115, 25,71,'Dinh dưỡng mọi ngày','c-21.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Diện Chẩn là một phương pháp trị liệu ban đầu được công nhận trên toàn thế giới, để kiểm soát cơn đau và điều trị hầu hết các rối loạn chức năng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div>',3.3,0,4.7,14,56,'2021/1/8',127,1,3.3,0);
INSERT INTO `courses` VALUES (116, 22,72,'Kỹ năng sơ cứu','c-22.jpg','<b> Kích hoạt, tăng cường, thư giãn và ngăn chặn ...</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Chúng ta có thể phòng ngừa những vấn đề gì?</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập giãn cơ và căng cơ để kích hoạt toàn bộ cơ thể</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.3,0,4.6,52,58,'2021/1/10',97,1,5.3,0);
INSERT INTO `courses` VALUES (117,23 ,72,'Kiến thức sơ cứu','c-21.jpg','<b> Học cách thiền mỗi ngày</b>','<div class="singel-description pt-40"><h6>“Thiền chánh niệm là cố ý tập trung vào trải nghiệm của giây phút hiện tại, không mục đích, không phán xét và với lòng nhân từ. »  Jon Kabat-Zin</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Sau nhiều thế kỷ lịch sử, Thiền Chánh niệm đã trở thành một phương pháp thực hành đương đại, hiệu quả và dễ học.</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.6,5.3,4.7,522,71,'2021/1/11',794,1,5.9,0);
INSERT INTO `courses` VALUES (118, 24,74,'Giải toả và cảm xúc','c-23.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo này được thiết kế để học một lối sống lành mạnh cho bản thân và để hỗ trợ những người xung quanh, khách hàng hoặc bệnh nhân của họ.</div><div>&nbsp;&nbsp;-&nbsp;Một phần đào tạo EquilibreSante® của khóa học trị liệu tự nhiên hoàn chỉnh do Patrick Lelu giảng dạy.</div><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo "Thực phẩm và Sức khỏe" này , mang lại kiến ​​thức thực tế cho bản thân và tiếp cận sự đồng hành của khách hàng, bệnh nhân, bằng cách tích hợp thực phẩm vào vị trí trung tâm trong các rối loạn hữu cơ nhưng cũng để cân bằng lại những rối loạn tương tự này </div>',7.3,6.6,4.1,13,16,'2021/1/9',17,1,6.9,0);
INSERT INTO `courses` VALUES (119, 25,71,'Trị liệu tâm lý','c-21.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Diện Chẩn là một phương pháp trị liệu ban đầu được công nhận trên toàn thế giới, để kiểm soát cơn đau và điều trị hầu hết các rối loạn chức năng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div>',5.3,0,3,14,55,'2021/1/8',11,1,5.3,0);

INSERT INTO `courses` VALUES (120, 22,72,'Bí quyết giảm cân','c-22.jpg','<b> Kích hoạt, tăng cường, thư giãn và ngăn chặn ...</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Chúng ta có thể phòng ngừa những vấn đề gì?</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập giãn cơ và căng cơ để kích hoạt toàn bộ cơ thể</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.3,0,4.3,52,58,'2021/1/10',87,1,5.3,0);
INSERT INTO `courses` VALUES (121,23 ,73,'Giảm căng thẳng lo lắng','c-21.jpg','<b> Học cách thiền mỗi ngày</b>','<div class="singel-description pt-40"><h6>“Thiền chánh niệm là cố ý tập trung vào trải nghiệm của giây phút hiện tại, không mục đích, không phán xét và với lòng nhân từ. »  Jon Kabat-Zin</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Sau nhiều thế kỷ lịch sử, Thiền Chánh niệm đã trở thành một phương pháp thực hành đương đại, hiệu quả và dễ học.</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.6,5.3,4.7,522,71,'2021/1/11',794,1,5.9,0);
INSERT INTO `courses` VALUES (122, 24,74,'Giảm mệt mỗi và stress','c-23.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo này được thiết kế để học một lối sống lành mạnh cho bản thân và để hỗ trợ những người xung quanh, khách hàng hoặc bệnh nhân của họ.</div><div>&nbsp;&nbsp;-&nbsp;Một phần đào tạo EquilibreSante® của khóa học trị liệu tự nhiên hoàn chỉnh do Patrick Lelu giảng dạy.</div><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo "Thực phẩm và Sức khỏe" này , mang lại kiến ​​thức thực tế cho bản thân và tiếp cận sự đồng hành của khách hàng, bệnh nhân, bằng cách tích hợp thực phẩm vào vị trí trung tâm trong các rối loạn hữu cơ nhưng cũng để cân bằng lại những rối loạn tương tự này </div>',7.3,6.6,4.1,13,16,'2021/1/9',17,1,6.9,0);
INSERT INTO `courses` VALUES (123, 25,75,'Kiến thức về bệnh thường gặp','c-21.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Diện Chẩn là một phương pháp trị liệu ban đầu được công nhận trên toàn thế giới, để kiểm soát cơn đau và điều trị hầu hết các rối loạn chức năng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div>',3.3,0,4.7,14,56,'2021/1/8',117,1,3.3,0);
INSERT INTO `courses` VALUES (124, 22,74,'Nghệ thuật thiền','c-22.jpg','<b> Kích hoạt, tăng cường, thư giãn và ngăn chặn ...</b>','<div class="singel-description pt-40"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Chúng ta có thể phòng ngừa những vấn đề gì?</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập giãn cơ và căng cơ để kích hoạt toàn bộ cơ thể</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.3,0,4.6,52,58,'2021/1/10',87,1,5.3,0);
INSERT INTO `courses` VALUES (125,23 ,71,'Thiền và cuộc sống','c-21.jpg','<b> Học cách thiền mỗi ngày</b>','<div class="singel-description pt-40"><h6>“Thiền chánh niệm là cố ý tập trung vào trải nghiệm của giây phút hiện tại, không mục đích, không phán xét và với lòng nhân từ. »  Jon Kabat-Zin</h6></div><div>&nbsp;&nbsp;-&nbsp; &nbsp;&nbsp;-&nbsp;Sau nhiều thế kỷ lịch sử, Thiền Chánh niệm đã trở thành một phương pháp thực hành đương đại, hiệu quả và dễ học.</div><div>&nbsp;&nbsp;-&nbsp;Bài tập thăng bằng cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Tư thế đứng đúng là gì?</div><div>&nbsp;&nbsp;-&nbsp;Chuỗi bài tập: kích hoạt bàn chân vào buổi sáng</div><div>&nbsp;&nbsp;-&nbsp; Mẹo tự massage cho bàn chân</div><div>&nbsp;&nbsp;-&nbsp; Các bài tập kích hoạt cho mắt cá chân.</div>',5.6,5.3,4.7,522,71,'2021/1/11',794,1,5.9,0);
INSERT INTO `courses` VALUES (126, 24,72,'Tâm tịnh khí hòa','c-23.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo này được thiết kế để học một lối sống lành mạnh cho bản thân và để hỗ trợ những người xung quanh, khách hàng hoặc bệnh nhân của họ.</div><div>&nbsp;&nbsp;-&nbsp;Một phần đào tạo EquilibreSante® của khóa học trị liệu tự nhiên hoàn chỉnh do Patrick Lelu giảng dạy.</div><div>&nbsp;&nbsp;-&nbsp;Khóa đào tạo "Thực phẩm và Sức khỏe" này , mang lại kiến ​​thức thực tế cho bản thân và tiếp cận sự đồng hành của khách hàng, bệnh nhân, bằng cách tích hợp thực phẩm vào vị trí trung tâm trong các rối loạn hữu cơ nhưng cũng để cân bằng lại những rối loạn tương tự này </div>',7.3,6.6,4.1,13,16,'2021/1/9',17,1,6.9,0);
INSERT INTO `courses` VALUES (127, 25,72,'Cân bằng Axit - Bazo','c-21.jpg','<b>Bấm huyệt Diện Chẩn, Massage Mặt Xóa Bỏ Mọi Cơn Đau. Phương pháp hiện đại, dễ dàng mang lại kết quả!</b>','<div class="singel-description pt-40"><div>&nbsp;&nbsp;-&nbsp;Diện Chẩn là một phương pháp trị liệu ban đầu được công nhận trên toàn thế giới, để kiểm soát cơn đau và điều trị hầu hết các rối loạn chức năng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div><div>&nbsp;&nbsp;-&nbsp;Bạn sẽ tìm hiểu các điểm chính, vị trí và vùng phản xạ của chúng cũng như các mô hình phản xạ và sự giống nhau của các hình dạng.</div>',5.3,0,3,14,55,'2021/1/8',117,1,5.3,0);
INSERT INTO `courses` VALUES (null, '1', '55', 'JAVASCRIPT', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '2', '55', 'Cơ sở dữ liệu nâng cao', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '3', '55', 'Máy học nâng cao', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '4', '55', 'Lập trình di động', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '5', '55', 'Thiết kế đồ họa', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '6', '55', 'Trí tuệ nhân tạo', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '5', '55', 'Trí tuệ nhân tạo nâng cao', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '6', '55', 'Khoa học dữ liệu', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '4', '55', 'Website', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '6', '55', 'Bảo mật thông tin', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '4', '55', 'Cơ sở mạng máy tính', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
INSERT INTO `courses` VALUES (null, '2', '55', 'Quản lý dữ liệu', 'c35.jpg', '<b>Học ngành Kinh doanh quốc tế, sinh viên sẽ được trang bị kiến thức nền tảng về kinh doanh, luật quốc tế và môi trường kinh doanh quốc tế, quản trị nguồn nhân lực quốc tế, hoạt động hậu cần kinh doanh quốc tế và xuất- nhập khẩu, nghiên cứu thị trường, xây dựng chương trình truyền thông và hệ thống phân phối quốc tế, kỹ năng giao tiếp và đàm phán quốc tế, cùng nghiệp vụ về thanh toán quốc tế, bảo hiểm ngoại thương, cách thức xâm nhập thị trường nước ngoài…\r\n</b>', '<div class=\\\"singel-description pt-40\\\"><h6>Những gì bạn sẽ học?</h6></div><div>&nbsp;&nbsp;-&nbsp; Tổng quan về TMĐT tại Việt Nam. </div><div>&nbsp;&nbsp;-&nbsp; Sự khác nhau giữa các sàn TMĐT. </div><div>&nbsp;&nbsp;-&nbsp; Hướng dẫn chi tiết cách bán hàng với Sendo.</div>', '9.00', '8.00', '2.0', '41', '136', '2021-01-14', '134', '1', '8.00',0);
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

INSERT INTO `course_join` (`ID_join`, `f_ID`, `orderDate`, `price`, `CourseID`, `status`) VALUES
(NULL, 57, '2021-01-14', '9.00', 24, 0),
(NULL, 57, '2021-01-14', '9.00', 25, 0),
(NULL, 57, '2021-01-14', '6.00', 26, 0),
(NULL, 57, '2021-01-14', '9.00', 27, 0),
(NULL, 57, '2021-01-14', '14.00', 28, 0),
(NULL, 57, '2021-01-14', '8.00', 29, 0),
(NULL, 57, '2021-01-14', '8.00', 31, 0),
(NULL, 57, '2021-01-14', '8.00', 32, 0),
(NULL, 57, '2021-01-14', '8.00', 33, 0),
(NULL, 57, '2021-01-14', '8.00', 34, 0),
(NULL, 57, '2021-01-14', '8.00', 30, 0),

(NULL, 58, '2021-01-14', '9.00', 24, 0),
(NULL, 58, '2021-01-14', '9.00', 25, 0),
(NULL, 58, '2021-01-14', '6.00', 26, 0),
(NULL, 58, '2021-01-14', '9.00', 27, 0),
(NULL, 58, '2021-01-14', '14.00', 28, 0),
(NULL, 58, '2021-01-14', '8.00', 29, 0),
(NULL, 58, '2021-01-14', '8.00', 31, 0),
(NULL, 58, '2021-01-14', '8.00', 32, 0),
(NULL, 58, '2021-01-14', '8.00', 33, 0),
(NULL, 58, '2021-01-14', '8.00', 34, 0),
(NULL, 58, '2021-01-14', '8.00', 30, 0),

(NULL, 59, '2021-01-14', '9.00', 24, 0),
(NULL, 59, '2021-01-14', '9.00', 25, 0),
(NULL, 59, '2021-01-14', '6.00', 26, 0),
(NULL, 59, '2021-01-14', '9.00', 27, 0),
(NULL, 59, '2021-01-14', '14.00', 28, 0),
(NULL, 59, '2021-01-14', '8.00', 29, 0),
(NULL, 59, '2021-01-14', '8.00', 31, 0),
(NULL, 59, '2021-01-14', '8.00', 32, 0),
(NULL, 59, '2021-01-14', '8.00', 33, 0),
(NULL, 59, '2021-01-14', '8.00', 34, 0),
(NULL, 59, '2021-01-14', '8.00', 30, 0),

(NULL, 60, '2021-01-14', '9.00', 24, 0),
(NULL, 60, '2021-01-14', '9.00', 25, 0),
(NULL, 60, '2021-01-14', '6.00', 26, 0),
(NULL, 60, '2021-01-14', '9.00', 27, 0),
(NULL, 60, '2021-01-14', '14.00', 28, 0),
(NULL, 60, '2021-01-14', '8.00', 29, 0),
(NULL, 60, '2021-01-14', '8.00', 31, 0),
(NULL, 60, '2021-01-14', '8.00', 32, 0),
(NULL, 60, '2021-01-14', '8.00', 33, 0),
(NULL, 60, '2021-01-14', '8.00', 34, 0),
(NULL, 60, '2021-01-14', '8.00', 30, 0),

(NULL, 61, '2021-01-14', '9.00', 24, 0),
(NULL, 61, '2021-01-14', '9.00', 25, 0),
(NULL, 61, '2021-01-14', '6.00', 26, 0),
(NULL, 61, '2021-01-14', '9.00', 27, 0),
(NULL, 61, '2021-01-14', '14.00', 28, 0),
(NULL, 61, '2021-01-14', '8.00', 29, 0),
(NULL, 61, '2021-01-14', '8.00', 31, 0),
(NULL, 61, '2021-01-14', '8.00', 32, 0),
(NULL, 61, '2021-01-14', '8.00', 33, 0),
(NULL, 61, '2021-01-14', '8.00', 34, 0),
(NULL, 61, '2021-01-14', '8.00', 30, 0),

(NULL, 62, '2021-01-14', '9.00', 24, 0),
(NULL, 62, '2021-01-14', '9.00', 25, 0),
(NULL, 62, '2021-01-14', '6.00', 26, 0),
(NULL, 62, '2021-01-14', '9.00', 27, 0),
(NULL, 62, '2021-01-14', '14.00', 28, 0),
(NULL, 62, '2021-01-14', '8.00', 29, 0),
(NULL, 62, '2021-01-14', '8.00', 31, 0),
(NULL, 62, '2021-01-14', '8.00', 32, 0),
(NULL, 62, '2021-01-14', '8.00', 33, 0),
(NULL, 62, '2021-01-14', '8.00', 34, 0),
(NULL, 62, '2021-01-14', '8.00', 30, 0),

(NULL, 63, '2021-01-14', '9.00', 24, 0),
(NULL, 63, '2021-01-14', '9.00', 25, 0),
(NULL, 63, '2021-01-14', '6.00', 26, 0),
(NULL, 63, '2021-01-14', '9.00', 27, 0),
(NULL, 63, '2021-01-14', '14.00', 28, 0),
(NULL, 63, '2021-01-14', '8.00', 29, 0),
(NULL, 63, '2021-01-14', '8.00', 31, 0),
(NULL, 63, '2021-01-14', '8.00', 32, 0),
(NULL, 63, '2021-01-14', '8.00', 33, 0),
(NULL, 63, '2021-01-14', '8.00', 34, 0),
(NULL, 63, '2021-01-14', '8.00', 30, 0);
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

INSERT INTO `comments`VALUES (NULL, 57, 24, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 25, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 26, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 27, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 28, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 29, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 30, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 31, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 32, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 33, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 57, 34, 'Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');

INSERT INTO `comments`VALUES (NULL, 58, 24, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 25, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 26, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 27, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 28, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 29, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 30, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 31, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 32, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 33, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 58, 34, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');

INSERT INTO `comments`VALUES (NULL, 59, 24, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 25, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 26, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 27, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 28, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 29, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 30, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 31, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 32, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 33, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 59, 34, 'Rất xứng đáng! Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');

INSERT INTO `comments`VALUES (NULL, 60, 24, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 25, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 26, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 27, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 28, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 29, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 30, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 31, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 32, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 33, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 60, 34, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');

INSERT INTO `comments`VALUES (NULL, 61, 24, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 25, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 26, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 27, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 28, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 29, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 30, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 31, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 32, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 33, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 61, 34, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');

INSERT INTO `comments`VALUES (NULL, 62, 24, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 25, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 26, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 27, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 28, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 29, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 30, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 31, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 32, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 33, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 62, 34, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');

INSERT INTO `comments`VALUES (NULL, 63, 24, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 25, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 26, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 27, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 28, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 29, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 30, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 31, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 32, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 33, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');
INSERT INTO `comments`VALUES (NULL, 63, 34, 'Quá tuyệt vời! Thầy rất thân thiện, nhiệt tình đẹp trai, khóa học đơn giản dễ tiếp thu');

INSERT INTO `comments` VALUES (NULL, 4,100,'Hay');
INSERT INTO `comments` VALUES (NULL, 670,100,'Tốt');

INSERT INTO `comments` VALUES (NULL, 4,101,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,101,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,102,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,102,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,103,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,103,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,104,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,104,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,105,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,105,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,106,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,106,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,107,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,107,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,108,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,108,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,109,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,109,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,110,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,110,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,111,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,111,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,113,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,113,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,112,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,112,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,114,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,114,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,115,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,115,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,116,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,116,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,116,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,116,'Tốt');
INSERT INTO `comments` VALUES (NULL, 4,117,'Hay');
INSERT INTO `comments` VALUES (NULL, 70,117,'Tốt');

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


INSERT INTO `lectures` VALUES (NULL, 24,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 24,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 24,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 24,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 24,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 24,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 24,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 24,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 25,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 25,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 25,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 25,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 25,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 25,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 25,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 25,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 26,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 26,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 26,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 26,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 26,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 26,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 26,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 26,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 27,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 27,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 27,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 27,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 27,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 27,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 27,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 27,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 28,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 28,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 28,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 28,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 28,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 28,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 28,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 28,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 29,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 29,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 29,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 29,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 29,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 29,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 29,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 29,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 30,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 30,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 30,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 30,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 30,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 30,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 30,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 30,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 31,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 31,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 31,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 31,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 31,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 31,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 31,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 31,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 32,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 32,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 32,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 32,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 32,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 32,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 32,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 32,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 33,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 33,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 33,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 33,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 33,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 33,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 33,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 33,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 34,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 34,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 34,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 34,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 34,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 34,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 34,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 34,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 35,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 35,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 35,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 35,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 35,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 35,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 35,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 35,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 36,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 36,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 36,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 36,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 36,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 36,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 36,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 36,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 37,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 37,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 37,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 37,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 37,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 37,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 37,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 37,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 39,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 39,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 39,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 39,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 39,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 40,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 40,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 40,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 40,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 40,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 40,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 40,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 40,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 41,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 41,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 41,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 41,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 41,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 41,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 41,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 41,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 42,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 42,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 42,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 42,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 42,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 42,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 42,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 42,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 43,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 43,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 43,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 43,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 43,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 43,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 43,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 43,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 44,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 44,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 44,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 44,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 44,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 44,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 44,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 44,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 45,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 45,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 45,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 45,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 45,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 45,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 45,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 45,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 46,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 46,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 46,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 46,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 46,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 46,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 46,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 46,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 47,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 47,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 47,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 47,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 47,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 47,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 47,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 47,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 48,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 48,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 48,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 48,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 48,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 48,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 48,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 48,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 49,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 49,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 49,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 49,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 49,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 49,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 49,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 49,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 50,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 50,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 50,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 50,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 50,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 50,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 50,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 50,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 51,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 51,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 51,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 51,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 51,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 51,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 51,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 51,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 52,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 52,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 52,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 52,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 52,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 52,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 52,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 52,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 53,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 53,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 53,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 53,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 53,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 53,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 53,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 53,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 54,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 54,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 54,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 54,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 54,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 54,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 54,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 54,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 55,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 55,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 55,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 55,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 55,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 55,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 55,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 55,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 56,'Giới thiệu về Thiết lập và Phát triển web','Video giới thiệu','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 56,'Tìm hiểu HTML và CSS','Html','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 56,'Học Javascript và tạo trò chơi trực tuyến','Video giới thiệu','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 56,'Học jQuery và tạo trang web tương tác','Video giới thiệu','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 56,'Tìm hiểu Bootstrap và tạo CV trực tuyến','Video giới thiệu','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 56,'Lưu trữ tên miền và đưa trang web lên mạng','Video giới thiệu','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 56,'Học NodeJS tạo một web server','Video giới thiệu','zoom_6.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 56,'Học MySQL và xây dựng trang web động','Video giới thiệu','zoom_3.mp1',0);

INSERT INTO `lectures` VALUES (NULL, 100,'Chào mừng','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 100,'Kích hoạt tăng trưởng phát triển bàn chân','Tự xoa bóp bàn chân','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 100,'Trình tự cho buổi sáng','Trình tự cho buổi sáng','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 100,'Trình tự cho buổi tối','Trình tự cho buổi tối','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 100,'Thư giản bàn chân','Các kỹ thuật','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 100,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 101,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 101,'Chương 1','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 101,'Chương 2','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 101,'Chương 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 101,'Chương 2','Bài tập nắm chặt tay','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 101,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 102,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 102,'Sức khỏe','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 102,'Tiêu hóa','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 102,'Loại bỏ','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 102,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 102,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 103,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 103,'Diên chấn là gì','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 103,'Khám phá chi tiết','Khám phá','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 103,'Phần thưởng 1 và 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 103,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 103,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 104,'Chào mừng','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 104,'Kích hoạt tăng trưởng phát triển bàn chân','Tự xoa bóp bàn chân','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 104,'Trình tự cho buổi sáng','Trình tự cho buổi sáng','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 104,'Trình tự cho buổi tối','Trình tự cho buổi tối','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 104,'Thư giản bàn chân','Các kỹ thuật','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 104,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 105,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 105,'Chương 1','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 105,'Chương 2','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 105,'Chương 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 105,'Chương 2','Bài tập nắm chặt tay','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 105,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 106,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 106,'Sức khỏe','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 106,'Tiêu hóa','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 106,'Loại bỏ','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 106,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 106,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 107,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 107,'Diên chấn là gì','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 107,'Khám phá chi tiết','Khám phá','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 107,'Phần thưởng 1 và 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 107,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 107,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 108,'Chào mừng','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 108,'Kích hoạt tăng trưởng phát triển bàn chân','Tự xoa bóp bàn chân','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 108,'Trình tự cho buổi sáng','Trình tự cho buổi sáng','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 108,'Trình tự cho buổi tối','Trình tự cho buổi tối','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 108,'Thư giản bàn chân','Các kỹ thuật','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 108,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 109,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 109,'Chương 1','Bài tập nắm chặt tay','zoom_2.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 109,'Chương 2','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 109,'Chương 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 109,'Chương 2','Bài tập nắm chặt tay','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 109,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 110,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 110,'Sức khỏe','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 110,'Tiêu hóa','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 110,'Loại bỏ','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 110,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 110,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 111,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 111,'Diên chấn là gì','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 111,'Khám phá chi tiết','Khám phá','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 111,'Phần thưởng 1 và 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 111,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 111,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);


INSERT INTO `lectures` VALUES (NULL, 112,'Chào mừng','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 112,'Kích hoạt tăng trưởng phát triển bàn chân','Tự xoa bóp bàn chân','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 112,'Trình tự cho buổi sáng','Trình tự cho buổi sáng','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 112,'Trình tự cho buổi tối','Trình tự cho buổi tối','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 112,'Thư giản bàn chân','Các kỹ thuật','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 112,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 113,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 113,'Chương 1','Bài tập nắm chặt tay','zoom_2.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 113,'Chương 2','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 113,'Chương 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 113,'Chương 2','Bài tập nắm chặt tay','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 113,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 114,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 114,'Sức khỏe','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 114,'Tiêu hóa','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 114,'Loại bỏ','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 114,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 114,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 115,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 115,'Diên chấn là gì','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 115,'Khám phá chi tiết','Khám phá','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 115,'Phần thưởng 1 và 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 115,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 115,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 116,'Chào mừng','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 116,'Kích hoạt tăng trưởng phát triển bàn chân','Tự xoa bóp bàn chân','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 116,'Trình tự cho buổi sáng','Trình tự cho buổi sáng','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 116,'Trình tự cho buổi tối','Trình tự cho buổi tối','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 116,'Thư giản bàn chân','Các kỹ thuật','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 116,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 117,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 117,'Chương 1','Bài tập nắm chặt tay','zoom_2.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 117,'Chương 2','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 117,'Chương 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 117,'Chương 2','Bài tập nắm chặt tay','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 117,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 118,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 118,'Sức khỏe','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 118,'Tiêu hóa','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 118,'Loại bỏ','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 118,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 118,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 119,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 119,'Diên chấn là gì','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 119,'Khám phá chi tiết','Khám phá','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 119,'Phần thưởng 1 và 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 119,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 119,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 120,'Chào mừng','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 120,'Kích hoạt tăng trưởng phát triển bàn chân','Tự xoa bóp bàn chân','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 120,'Trình tự cho buổi sáng','Trình tự cho buổi sáng','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 120,'Trình tự cho buổi tối','Trình tự cho buổi tối','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 120,'Thư giản bàn chân','Các kỹ thuật','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 120,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 121,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 121,'Chương 1','Bài tập nắm chặt tay','zoom_2.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 121,'Chương 2','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 121,'Chương 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 121,'Chương 2','Bài tập nắm chặt tay','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 121,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 122,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 122,'Sức khỏe','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 122,'Tiêu hóa','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 122,'Loại bỏ','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 122,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 122,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 123,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 123,'Diên chấn là gì','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 123,'Khám phá chi tiết','Khám phá','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 123,'Phần thưởng 1 và 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 123,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 123,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 124,'Chào mừng','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 124,'Kích hoạt tăng trưởng phát triển bàn chân','Tự xoa bóp bàn chân','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 124,'Trình tự cho buổi sáng','Trình tự cho buổi sáng','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 124,'Trình tự cho buổi tối','Trình tự cho buổi tối','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 124,'Thư giản bàn chân','Các kỹ thuật','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 124,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 125,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 125,'Chương 1','Bài tập nắm chặt tay','zoom_2.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 125,'Chương 2','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 125,'Chương 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 125,'Chương 2','Bài tập nắm chặt tay','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 125,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 126,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 126,'Sức khỏe','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 126,'Tiêu hóa','Bài tập 2','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 126,'Loại bỏ','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 126,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 126,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

INSERT INTO `lectures` VALUES (NULL, 127,'Giới thiệu','Chào mừng','zoom_1.mp4',1);
INSERT INTO `lectures` VALUES (NULL, 127,'Diên chấn là gì','Bài tập nắm chặt tay','zoom_2.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 127,'Khám phá chi tiết','Khám phá','zoom_3.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 127,'Phần thưởng 1 và 2','Bài tập 3','zoom_4.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 127,'Cân bằng','Cân bằng','zoom_5.mp4',0);
INSERT INTO `lectures` VALUES (NULL, 127,'Kết thúc khóa học','Kết thúc khóa học','zoom_6.mp4',0);

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
