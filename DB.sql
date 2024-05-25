/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - block
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`block` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `block`;

/*Table structure for table `blockchain` */

DROP TABLE IF EXISTS `blockchain`;

CREATE TABLE `blockchain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `digsignature` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

/*Data for the table `blockchain` */

insert  into `blockchain`(`id`,`digsignature`) values (1,'ABCDEFGHIJKLMNOP'),(2,'9cf5c7faff5d74e23100c75c6d690c66'),(3,'81d2dbba2870a489aa03cb3fd08bc75d'),(4,'1f0b8525d8b722589591dfd00727bf70'),(5,'196f6ae9cffbfd13b00eff4b256fe47b'),(6,'902aa73f06f7336d1ffd62b5ffaba2b5'),(7,'bc880ba6a18aaaac129e47dbb3e63935'),(8,'bf3c2d37500ae33173d46c7d7dacd983'),(9,'b7b6ed0cb9dcb53e2e47c2e1753d0e1f'),(10,'adae4d80145c2506b52590d065c6b023'),(11,'75e3588801897c94f30fa974915db81a'),(12,'a10fe2646b87921f8394d7ac9a41e785'),(13,'e3ff43b6cebe3eb55d3312c0ea60084e'),(14,'dc75d199783092d4f917b17c8c34203f'),(15,'96b5e6de55119ee37bc04d7219271e70'),(16,'9840d61a602ff7ccaa015413174c0d0c'),(17,'27eaaa486164b56eaad0b0d9afa42f46'),(18,'a90d3ff7f05d8c1c26a063103989eb82'),(19,'1412ca1b888102c93afbda611b7a97bf'),(20,'21534b26211f1a879c96c69e4c8cabc8'),(21,'2b14ea41f80d2a86d2be77adf2fa2454'),(22,'56fa8f5ab010817fbd27c35c931d9fc1'),(23,'abf8554984657446f0326a3c316075ec'),(24,'da63381fcdce60795b77f21592adb1a6'),(25,'a4cc525dfd412f40dc036545feac8aec'),(26,'d9c83be5954364efefeb01a354c04369'),(27,'a30d9f036370c8af69a26a97eb77e339'),(28,'24a101a608feed76503b083f0c1330ef'),(29,'efe2c49b96e53fa1e530d3498b3f6ae4'),(30,'2313513b40f4726896362c0fbc2a8cf7'),(31,'d73967ab8b18e3c3912ae8aa8f496eec'),(32,'879c0e696ad0a35bfee70b62ffe72124'),(33,'a5dbfdeab7a3b6bf33434583c723b228'),(34,'1285b828791717e043528e1ca9cad3fa'),(35,'9a1f9d257bd535ad2d1c4d3f0433f05e'),(36,'ec11f10634c950084eaee5a2230cd234'),(37,'d07980f3c8c00dafd55d2bf1506bfd7c'),(38,'9b2244a39b12a4f004666983322c9a27'),(39,'03ccb416d7a347ef9491b6737faa21ba'),(40,'c24bdf696149a9dcd1eba05eb9403a69'),(41,'42263d894124d57dafa1d51b881e86f6'),(42,'148f83f07dc59210b075534218f27613'),(43,'8ce241958ed63ab2a060ae13bb8d831a'),(44,'49e5d9a08cc9bfc3b1b4422ca12d2050'),(45,'4ad30c039353de3a58ce731e079e5d80'),(46,'c9bbf7a720a2791f67c39c52067cd49c'),(47,'e78221bb53fe8be77181c9eec92b08bd'),(48,'946c1b820656b51929dc122f8e1c3861'),(49,'9ed3b133652b5771878a8804be1389d1'),(50,'85a19cc5d0b8c4d67d63a04cab19d4ce'),(51,'93a2d3957cd0b4ac099a2586aa6f6fbe'),(52,'8b17cd6a6ef3e6bb2814b4e7b97f006b'),(53,'637ac3361095bd6b018bdcd02f5461f4'),(54,'ffae7b409856da801f604b4fe16c036b'),(55,'55643691241ed95f0e419223d69f495e'),(56,'624a8cf8f334c28f2766f14aad656946'),(57,'42cc81d805cf9905d0505f8fdcc1144b'),(58,'0c7cf2f9cde523aa25759484a431e812'),(59,'a7e249efbac945f1cf9dfd9767d86976'),(60,'bac7898a6ebe3af18bf8b8f2a075679d'),(61,'27412391c0e412ca3dcc7b85ab66000e'),(62,'0e701e340fc2aa3a983c4edb255afeb4'),(63,'5877583ad37036020bf92602c48517de'),(64,'cf21c824575eb8a0749c1ef43d3de619'),(65,'5d6886f86e37444511bd47e4404de803'),(66,'7680006abd3545d0f98c61859a4e31cf'),(67,'010ce03b9eac8b29f3a78877bf3844b1'),(68,'b5aa16fb011a938164d823ee63b0cc96'),(69,'732d4b1633ce1a511039e591009f1644'),(70,'e0128e203828a6b6e436b4a43382b1c3'),(71,'1677873ab8a76ad81230772415d2e53f'),(72,'73697b15ab9c3cbee2dbc326978cfad8'),(73,'09c13900bf6f9de9d166681beff9e9ad'),(74,'0f64111db76ab54500c00d6f2c10eb21'),(75,'783b0101ad037a6b13bcc663d8991a28'),(76,'a50a811ec710fcf0fc79ad88fa86086f'),(77,'06c63edd51f2abf94cd76b89e3ca1a5b'),(78,'518d2a5e3e34e668c1b77c09523287d2'),(79,'ebd6a71f2f5571ce2a92364cdd617a1e'),(80,'a7479dc20995966692f2d0f8e71bcdc4'),(81,'172998d0eac1c834757c31b3cd302d79'),(82,'5db8a4aec5f378c0143725f29907a6c8'),(83,'07d1ee305361e6093fdf26583e055e5b'),(84,'6836feac78013d961d3c542f113c671c'),(85,'ff99a93d7e21d0b1e9d0b2ee91c31dd8'),(86,'823bbba3953d5b333c3b1ee7535be0ca'),(87,'8927dac55089a230768692270428b6fc'),(88,'fdbdea58bad8a8c9c36a99f0942c893e'),(89,'cd4a1aba8b42e57fbaa0490f2df7cd95'),(90,'d9ed1070ee3fc2314796ed3c35ec96c5'),(91,'a894e384db80a388c2b4c099467c27df'),(92,'02dc93279f75c1361a516b053567eb04'),(93,'5c0ea61733785548353f839d43d71d55'),(94,'500995ba441286b6e348c6f8ff23e7d3'),(95,'8569a6e8aaecd117b2f075804e700342'),(96,'e4670c1fd3f477dbaa9b3c2073211f69'),(97,'f951da899f68356a5b2b578be820a675'),(98,'4f58223e629bab42e577b822b84d664b'),(99,'f61d4062025998204d501f7fde8afb7d'),(100,'739a2cbf49650b639542a72c1036e062'),(101,'d0334cc2858a7e7c83cd7f5a754b2955'),(102,'fade45f7daa36a3e68619e5cd6542f5d'),(103,'eaacc75b8034fe42fc3ca8c44fed4465'),(104,'93c7c6a8ad93b8e9b1b0b57055f74ea9'),(105,'79f69180e188d6f76bf98fbb8b82ed66'),(106,'5080d4a15dc2da9190d4d173b34b2522'),(107,'fb85e38f007304a3addc42c07e799b79'),(108,'4ee0f9f52e183e85240153939ada894c'),(109,'7f9bf83c27b3b722b6ae32da166cdabd');

/*Table structure for table `card` */

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `sno` int(209) NOT NULL AUTO_INCREMENT,
  `user` varchar(230) DEFAULT NULL,
  `ctype` varchar(200) DEFAULT NULL,
  `ahname` varchar(200) DEFAULT NULL,
  `acno` varchar(200) DEFAULT NULL,
  `cno` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  `expiry` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `ques` varchar(200) DEFAULT NULL,
  `ans` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `timee` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `card` */

insert  into `card`(`sno`,`user`,`ctype`,`ahname`,`acno`,`cno`,`ifsc`,`branch`,`cvv`,`expiry`,`mobile`,`email`,`ques`,`ans`,`amount`,`timee`) values (1,'Gokul','Debit Card','ABI','7867564554','767','U7877888888','SBI','888','12/2025','9778882998','abi12@gmail.com','What is your Best friend name?','Gokul','4444','2023-12-03 13:56:43'),(15,'Maran','Credit card','Maran','7865645434322','564536464732','SBI000001','SBI','433','23/2028','9811115555','techpowerotp@gmail.com','What is your Best friend name?','Gokul','7000','2023-12-06 14:32:58'),(16,'Varun','Debit Card','VARUN','768655645654','575756865856','555675655756','CHENNAI ','465','12/2025','08675644545','varun12@gmail.com','What is your Best friend name?','Gokul','6888888','2023-12-20 16:47:42');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(222) DEFAULT NULL,
  `did` varchar(222) DEFAULT NULL,
  `dname` varchar(222) DEFAULT NULL,
  `cate` varchar(222) DEFAULT NULL,
  `sub` varchar(222) DEFAULT NULL,
  `dprice` varchar(222) DEFAULT NULL,
  `bank` varchar(222) DEFAULT NULL,
  `cno` varchar(222) DEFAULT NULL,
  `cvv` varchar(222) DEFAULT NULL,
  `ifsc` varchar(222) DEFAULT NULL,
  `qua` varchar(222) DEFAULT NULL,
  `cost` varchar(222) DEFAULT NULL,
  `image` varchar(222) DEFAULT NULL,
  `hashkey` varchar(222) DEFAULT NULL,
  `review` varchar(222) DEFAULT NULL,
  `rating` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Waiting',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert  into `cart`(`sno`,`user`,`did`,`dname`,`cate`,`sub`,`dprice`,`bank`,`cno`,`cvv`,`ifsc`,`qua`,`cost`,`image`,`hashkey`,`review`,`rating`,`status`) values (8,'Maran','DID1793','Assistance Progam','Bike Loan',' Social Assistance','750000','Blockchain-Development.jpg',' Social Assistance','Assistance Progam','750000','null','null','Blockchain-Development.jpg','4ee0f9f52e183e85240153939ada894c',NULL,NULL,'Approved'),(9,'Varun','DID2612','aaa','Home Loan','aaa','850000','bg.gif','aaa','aaa','850000','null','null','bg.gif','7f9bf83c27b3b722b6ae32da166cdabd','GOOD','5','Approved');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `cate` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`sno`,`cate`) values (15,'Home Loan '),(16,'Bike Loan'),(17,'Home Loan ');

/*Table structure for table `contract` */

DROP TABLE IF EXISTS `contract`;

CREATE TABLE `contract` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(300) DEFAULT NULL,
  `did` varchar(300) DEFAULT NULL,
  `dname` varchar(300) DEFAULT NULL,
  `cate` varchar(300) DEFAULT NULL,
  `sub` varchar(300) DEFAULT NULL,
  `dprice` varchar(300) DEFAULT NULL,
  `bank` varchar(300) DEFAULT NULL,
  `cno` varchar(300) DEFAULT NULL,
  `cvv` varchar(300) DEFAULT NULL,
  `ifsc` varchar(300) DEFAULT NULL,
  `qua` varchar(300) DEFAULT NULL,
  `cost` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `hashkey` varchar(300) DEFAULT NULL,
  `review` varchar(300) DEFAULT NULL,
  `rating` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contract` */

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `did` varchar(222) DEFAULT NULL,
  `cate` varchar(222) DEFAULT NULL,
  `sub` varchar(222) DEFAULT NULL,
  `dname` varchar(222) DEFAULT NULL,
  `dprice` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Waiting',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

/*Table structure for table `search1` */

DROP TABLE IF EXISTS `search1`;

CREATE TABLE `search1` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(222) DEFAULT NULL,
  `cate` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

/*Data for the table `search1` */

insert  into `search1`(`sno`,`user`,`cate`) values (91,'Abi','Bike Loan'),(100,'Maran','bike '),(101,'Varun','Home Loan');

/*Table structure for table `trans` */

DROP TABLE IF EXISTS `trans`;

CREATE TABLE `trans` (
  `sno` int(200) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `fname` varchar(300) DEFAULT NULL,
  `money` varchar(300) DEFAULT NULL,
  `timee` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `trans` */

insert  into `trans`(`sno`,`user`,`fname`,`money`,`timee`) values (1,'Gokul','Abi','6000','2023-12-03 15:46:39'),(3,'Maran','Gokul','2000','2023-12-13 16:54:42'),(4,'Varun','Abi','8000','2023-12-20 16:48:27');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `did` varchar(222) DEFAULT NULL,
  `cate` varchar(222) DEFAULT NULL,
  `sub` varchar(222) DEFAULT NULL,
  `dname` varchar(222) DEFAULT NULL,
  `bname` varchar(222) DEFAULT NULL,
  `dprice` varchar(222) DEFAULT NULL,
  `rate` varchar(222) DEFAULT NULL,
  `des` varchar(222) DEFAULT NULL,
  `image` varchar(222) DEFAULT NULL,
  `hashkey` varchar(222) DEFAULT NULL,
  `datee` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`sno`,`did`,`cate`,`sub`,`dname`,`bname`,`dprice`,`rate`,`des`,`image`,`hashkey`,`datee`) values (13,'DID1793','Bike Loan',' Social Assistance','Assistance Progam','SBI','750000','10','Social ','Blockchain-Development.jpg','7f9bf83c27b3b722b6ae32da166cdabd','2023-12-20 16:46:24'),(14,'DID2612','Home Loan ','aaa','aaa','SBI','850000','10','Social ','bg.gif','7f9bf83c27b3b722b6ae32da166cdabd','2023-12-20 16:46:24');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`sno`,`user`,`pass`,`email`,`contact`,`location`,`status`) values (15,'Abi','1234','abi12@gmail.com','9877666654','Chennai','Activated'),(16,'Maran','1234','techpowerotp@gmail.com','75645343434','Chennai','Activated'),(17,'Varun','1234','varun12@gmail.com','8675644545','Chennai ','Activated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
