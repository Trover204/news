-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2024 at 07:57 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'Thời sự', 'thoi-su', 0),
(2, 'Giải trí ', 'giai-tri', 1),
(3, 'Thể thao', 'the-thao', 1),
(4, 'Pháp luật', 'phap-luat', 1),
(5, 'Giáo dục', 'giao-duc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int NOT NULL,
  `featured` int NOT NULL,
  `views` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `author` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Bão Trà Mi có thể tăng lên cấp 11', 'Sáng nay, bão Trà Mi hoành hành ở đảo Luzon của Philippines, dự kiến chiều tối nay vào Biển Đông, mạnh cấp 9 và tăng lên cấp 11 khi tiến dần về bờ biển Việt Nam.', 'Sáng nay, bão Trà Mi hoành hành ở đảo Luzon của Philippines, dự kiến chiều tối nay vào Biển Đông, mạnh cấp 9 và tăng lên cấp 11 khi tiến dần về bờ biển Việt Nam.\r\n\r\nTrung tâm Dự báo Khí tượng Thủy văn quốc gia cho biết lúc 7h bão ở trên đất liền phía bắc đảo Luzon, sức gió mạnh nhất 88 km/h, cấp 9, giật tăng hai cấp. Với tốc độ 15-20 km/h, theo hướng tây tây bắc, dự kiến chiều tối nay bão vào Biển Đông, trở thành cơn bão thứ sáu ở vùng biển này trong năm nay.\r\n\r\nĐêm nay bão duy trì cấp 9, theo hướng tây và mạnh lên cấp 10 khi ở vùng biển phía đông khu vực Bắc Biển Đông vào sáng mai. Từ ngày 27/10, chịu ảnh hưởng của không khí lạnh từ phương bắc tràn xuống, bão trúc xuống phía nam, mạnh cấp 11.\r\n\r\n<img src = \"https://i1-vnexpress.vnecdn.net/2024/10/24/dbqg-xtnd-20241024-0800-7409-1729734043.gif?w=680&h=0&q=100&dpr=1&fit=crop&s=QyqQDxLLUHgFL2JMv8gIGg&t=video\">\r\n\r\nHiện Đài Việt Nam chưa đánh giá về khả năng bão vào miền Trung. Đài khí tượng Nhật Bản thì nhận định sau khi vào Biển Đông gió bão sẽ tăng lên 108 km/h và duy trì đến khi vào vùng biển Trung Trung Bộ. Đài Hong Kong dự báo bão đạt cực đại 120 km/h, không vào miền Trung mà trở ngược ra biển.\r\n\r\nDo ảnh hưởng của bão, vùng biển phía đông khu vực Bắc Biển Đông gió mạnh cấp 6-7, sau tăng lên cấp 9-10 (89-102 km/h), giật cấp 12, sóng biển cao 3-5 m, vùng gần tâm bão 5-7 m. Tàu thuyền hoạt động trong vùng nguy hiểm nói trên có khả năng chịu tác động của giông, lốc, gió mạnh, sóng lớn.\r\n\r\nBộ Nông nghiệp và Phát triển nông thôn ngày 22/10 đã phát công điện yêu cầu các tỉnh ven biển từ Quảng Ninh đến Bình Thuận theo dõi chặt chẽ bão gần Biển Đông, tổ chức kiểm đếm, thông báo cho tàu chuyền vùng nguy hiểm và sẵn sàng phương án cứu hộ khi có yêu cầu.\r\n\r\nTừ đầu năm, Biển Đông xuất hiện 5 cơn bão, trong đó Yagi với sức mạnh siêu bão trên biển và cấp 14, giật 17 khi vào đất liền Quảng Ninh ngày 7/9 gây gió to, mưa lớn toàn miền Bắc. Bão đã làm 344 người chết và mất tích, thiệt hại kinh tế hơn 81.000 tỷ đồng.', 'dbqg-xtnd-20241024-0800-7409-1729734043', 1, 1, 265400, '2024-10-24 03:05:26', '2024-10-24 03:05:26', '1'),
(2, 'Quốc hội thảo luận phân phối kinh phí công đoàn', 'Ngày 24/10, Quốc hội thảo luận hội trường về dự án Luật Công đoàn sửa đổi, trong đó có chính sách về tài chính công đoàn, phân phối kinh phí công đoàn.', 'Ngày 24/10, Quốc hội thảo luận hội trường về dự án Luật Công đoàn sửa đổi, trong đó có chính sách về tài chính công đoàn, phân phối kinh phí công đoàn.\r\n\r\nTại kỳ họp trước, một số đại biểu chưa đồng tình với mức kinh phí công đoàn 2% và đề nghị kinh phí công đoàn do tổ chức, doanh nghiệp ngoài nhà nước đóng theo mức tự nguyện. Có đại biểu cho rằng nên xem xét giảm hoặc bỏ thu kinh phí công đoàn 2% đối với đơn vị đã có tổ chức đại diện của người lao động khác.\r\n\r\nBáo cáo giải trình, Thường vụ Quốc hội cho rằng việc tiếp tục thu 2% kinh phí công đoàn nhằm duy trì nguồn lực hiện có, giữ vai trò quan trọng, có ý nghĩa quyết định trong việc bảo đảm nguồn tài chính để Công đoàn Việt Nam, nhất là công đoàn cơ sở thực hiện nhiệm vụ. Đó là nguồn lực chăm lo phúc lợi xã hội, bảo vệ quyền, lợi ích hợp pháp, chính đáng của đoàn viên, người lao động; động viên, khích lệ người lao động gắn bó với đơn vị và cũng thúc đẩy doanh nghiệp có trách nhiệm hơn với người lao động của mình.\r\n\r\nTiếp thu ý kiến đại biểu, dự thảo Luật đã bổ sung một số nhiệm vụ chi mới để phù hợp với thực tiễn như, chi cho công đoàn cơ sở khó khăn được miễn, giảm đóng kinh phí công đoàn; chi cho việc xây dựng nhà ở xã hội cho công nhân thuê; xây dựng công trình công cộng cho đoàn viên, người lao động.\r\n\r\nBên cạnh đó, kinh phí công đoàn chiếm tỷ trọng nhỏ trong chi phí của doanh nghiệp (khoảng 0,38%). \"Do đó, vấn đề 2% kinh phí công đoàn không phải là gánh nặng cho doanh nghiệp và đề nghị giữ quy định về mức kinh phí công đoàn 2%\", báo cáo nêu.\r\n\r\nCông nhân làm việc tại Công ty cổ phần Dệt may 29/3, Đà Năng, tháng 6/2024. Ảnh: Nguyễn Đông\r\n<img src =\"https://i1-vnexpress.vnecdn.net/2024/10/24/VNE3799-7588-1729726105.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=DBO9UXfqwjATPDHAZJR93g\">\r\n\r\nMột số đại biểu đề nghị cân nhắc không quy định cứng tỷ lệ phân phối kinh phí công đoàn trong dự thảo Luật mà theo hướng quy định tỷ lệ tối đa và tối thiểu nhằm bảo đảm linh hoạt trong việc điều tiết kinh phí công đoàn.\r\n\r\nCó ý kiến đề nghị nghiên cứu bổ sung quy định mang tính nguyên tắc trong quản lý, sử dụng tài chính công đoàn bảo đảm công khai, minh bạch; quy định rõ nội dung phân bổ nguồn kinh phí công đoàn cho những mục tiêu, hoạt động của công đoàn để làm cơ sở cho việc công khai tài chính.\r\n\r\nTiếp thu ý kiến đại biểu, Thường vụ Quốc hội chỉnh lý, bổ sung quy định về nguyên tắc quản lý, sử dụng tài chính công đoàn, rà soát nhiệm vụ chi kinh phí công đoàn đầy đủ hơn. Dự thảo cũng không quy định việc phân phối kinh phí công đoàn khi có nhiều tổ chức đại diện của người lao động để bảo đảm linh hoạt, hài hòa.\r\n\r\nSau khi thống nhất với Chính phủ, Tổng Liên đoàn Lao động Việt Nam quy định tiêu chuẩn, định mức, chế độ chi tiêu, phân cấp thu, phân phối và quản lý, sử dụng tài chính công đoàn phù hợp với yêu cầu nhiệm vụ của công đoàn. Dự luật cũng giao Chính phủ quy định chi tiết việc quản lý, sử dụng kinh phí công đoàn của tổ chức của người lao động tại doanh nghiệp.\r\n\r\nSáng nay, Bộ trưởng Y tế trình Quốc hội dự án Luật sửa đổi, bổ sung một số điều của Luật Bảo hiểm y tế. Sau đó, các đại biểu thảo luận nội dung còn ý kiến khác nhau của dự thảo Luật Công đoàn (sửa đổi). Buổi chiều, Quốc hội chia tổ thảo luận về Dự án Luật sửa đổi, bổ sung một số điều của Luật Bảo hiểm y tế và Dự án Luật Dữ liệu.', 'VNE3799-7588-1729726105', 1, 0, 789523, '2024-10-24 03:09:45', '2024-10-24 03:09:45', '1'),
(3, 'Nuôi hải sâm cát giá 10 triệu đồng một kg', 'Bình Định Nuôi thử nghiệm 3.000 hải sâm cát ở TP Quy Nhơn, với giá xuất khẩu 200-400 USD/kg, tiềm năng nhân rộng để xuất khẩu và làm dược phẩm.', 'Bình ĐịnhNuôi thử nghiệm 3.000 hải sâm cát ở TP Quy Nhơn, với giá xuất khẩu 200-400 USD/kg, tiềm năng nhân rộng để xuất khẩu và làm dược phẩm.\r\n\r\nDự án thử nghiệm nuôi thương phẩm hải sâm cát tại xã Nhơn Hải do Phòng Kinh tế TP Quy Nhơn và Hợp tác xã dịch vụ du lịch thủy sản Nhơn Hải thực hiện. Hơn 3.000 con giống mua từ Trung tâm Quốc gia giống hải sản miền Trung được thả xuống mặt nước biển 1.000 m2, xung quanh khoanh lưới để bảo vệ hải sâm lúc còn nhỏ trước các loài thiên địch.\r\n\r\nSau 3 tháng nuôi, hải sâm cát đã tăng trưởng từ 4-6 cm lên 9-11 cm, và nặng từ 6-7 gam lên 81-107 gam. Ông Nguyễn Văn Sáng, người trực tiếp nuôi hải sâm, nói quá trình chăm sóc tương đối đơn giản và ít rủi ro dịch bệnh. Dự kiến đến tháng 12 người nuôi có thể thu hoạch bán thương phẩm. Với giá xuất khẩu dao động từ 200-400 USD (5-10 triệu đồng) một kg hải sâm khô, nghề nuôi hải sâm hứa hẹn mang lại lợi nhuận cao cho người nuôi và thúc đẩy phát triển kinh tế địa phương.\r\n\r\n<img src =\"https://i1-vnexpress.vnecdn.net/2024/10/23/bdf84bb2e8d5508b09c4-5024-1729700652.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=Z2xMI1F4pFx-SOMUtThvng\">\r\n\r\nTrung tâm Quốc gia giống hải sản miền Trung thuộc Viện Nghiên cứu Nuôi trồng thủy sản III (Bộ Nông nghiệp và Phát triển nông thôn) hiện là đơn vị duy nhất sản xuất giống hải sâm cát. TS Nguyễn Đình Quang Duy, Phó giám đốc Trung tâm Quốc gia giống hải sản miền Trung, cho biết bản thân đã kết nối và hình thành chuỗi liên kết từ sản xuất con giống đến thu mua, chế biến và xuất khẩu.\r\n\r\nTrong chuỗi liên kết nói trên, Công ty Hải Sâm Việt Nam - đơn vị sở hữu nhà máy chế biến hải sâm lớn nhất Đông Nam Á, đã cam kết thu mua toàn bộ sản phẩm của người dân địa phương với giá cố định, đảm bảo đầu ra ổn định và lợi nhuận bền vững cho người nuôi.\r\n\r\nTS Duy đánh giá vùng biển Nhơn Hải với điều kiện lý tưởng như sóng yên và nguồn thức ăn tự nhiên phong phú, tạo môi trường tuyệt vời cho sự phát triển của hải sâm cát. Kết quả nuôi thử nghiệm ban đầu cho thấy hải sâm cát phát triển rất tốt. So với nuôi trong ao hồ, nuôi trên biển có chi phí thấp hơn nhờ tận dụng môi trường tự nhiên, chi phí chăm sóc và quản lý được giảm thiểu, cho dù tỷ lệ sống thấp vẫn mang lại lợi nhuận.\r\n\r\n\"Nuôi trên biển chỉ cần 20% tỷ lệ sống là đã có lời\", TS Duy nói, cho biết mô hình tương tự đã thành công ở Khánh Hòa và Phú Yên nên có thể áp dụng tại Bình Định nhờ sự tương đồng về biển ở khu vực Nam Trung Bộ. Lợi thế lớn nhất để phát triển nghề nuôi hải sâm cát tại Bình Định là Việt Nam đã làm chủ công nghệ sản xuất giống và hoàn thiện quy trình nuôi thương phẩm hải sâm cát.\r\n\r\nHải sâm được nuôi trong lồng dưới biển lúc nhỏ để tránh bị các loại thiên địch ăn. Ảnh: Thảo Chi\r\nHải sâm được nuôi trong lồng dưới biển lúc nhỏ để tránh bị các loại thiên địch ăn. Ảnh: Thảo Chi\r\n\r\nLãnh đạo Phòng Kinh tế TP Quy Nhơn cũng đánh giá mô hình này có thể nhân rộng trong tương lai. Ngoài mục tiêu lợi nhuận, Hợp tác xã dịch vụ du lịch thủy sản Nhơn Hải đang kết hợp nuôi hải sâm với du lịch sinh thái biển, tạo mô hình kinh tế mới. Cách làm này phù hợp với chủ trương của ngành thủy sản, với định hướng thu hẹp việc đánh bắt xa bờ để chuyển đổi nghề.\r\n\r\nHơn nữa, hải sâm cát còn mở ra tiềm năng lớn cho ngành dược phẩm tại Bình Định. Dược sĩ Nguyễn Thị Hải Lý, Giám đốc Trung tâm Nghiên cứu và Phát triển (Công ty cổ phần dược - trang thiết bị y tế Bình Định), cho biết sẽ xem xét đưa hải sâm vào kế hoạch nghiên cứu và phát triển trong thời gian tới. Trước đó công ty đã gặt hái được những thành công đáng kể với việc sản xuất thực phẩm chức năng từ hàu và sụn cá mập.\r\n\r\nHải sâm cát (Holothuria scabra) là loài thân mềm, sống ở vùng nước nông ven biển, có giá trị dinh dưỡng cao. Từ xa xưa hải sâm được coi là một trong \"tứ đại danh thái\" của ẩm thực cổ truyền phương Đông. Ngày nay loài này được dùng trong y học. Do thức ăn chủ yếu là mùn bã hữu cơ, hải sâm được nuôi ghép với các loài tôm, cá khác.', 'bdf84bb2e8d5508b09c4-5024-1729700652', 1, 0, 45621, '2024-10-24 03:37:36', '2024-10-24 03:37:36', '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Thái Tú\r\n'),
(2, 'Hoàng Phúc'),
(3, 'Thanh Phi'),
(4, 'Gia Quý'),
(5, 'Văn Duy');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
