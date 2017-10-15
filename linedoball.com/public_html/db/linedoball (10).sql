-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2017 at 06:53 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linedoball`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch`
--

CREATE TABLE `ch` (
  `t_chanel` int(11) NOT NULL,
  `t_chname` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `t_pix` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch`
--

INSERT INTO `ch` (`t_chanel`, `t_chname`, `t_pix`) VALUES
(1, 'ch1', '20170809547412299.png'),
(2, 'ch2', '201708081703269602.png'),
(12, 'ch3', '201708081139473139.png'),
(13, 'ch4', '201708082113996199.png'),
(14, 'ch5', '201708082064311927.png'),
(15, 'ch6', '20170808184538671.png'),
(16, 'ch7', '20170815984767799.png'),
(17, 'ch8', '20170815526465678.png'),
(18, 'ch9', '201708151347735476.png'),
(19, 'ch10', '20170815665450947.png'),
(20, 'ch11', '20170815773659086.png'),
(21, 'ch12', '20170815729211593.png');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `m_id` int(11) NOT NULL,
  `m_user` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_pass` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `m_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`m_id`, `m_user`, `m_pass`, `m_status`) VALUES
(1, 'admin', 'admin@#', 1),
(2, 'admincat', 'admincat', 1),
(3, '363', '353', 1),
(4, 'Pilin', 'Pilin', 1),
(5, 'one', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `press`
--

CREATE TABLE `press` (
  `p_id` int(11) NOT NULL,
  `p_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `p_icon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `press`
--

INSERT INTO `press` (`p_id`, `p_name`, `p_icon`) VALUES
(50, 'ไทยลีก 1', '201708071994865313.jpg'),
(57, 'พลีเมี่ยลีก อังกฤษ', '20170719600638070.jpg'),
(58, 'เจลีก ญี่ปุ่น', '20170807595180689.png'),
(61, 'กระชับมิตร', '201708021064425729.jpg'),
(67, 'ไทยลีก2', '201708071857777514.jpg'),
(68, 'ลาลีก้า สเปน', '2017080937704015.jpg'),
(69, 'ลีกเอิง ฝรั่งเศษ', '201708091100565402.jpg'),
(70, 'บุนเดสลีกา เยอรมัน', '201708092089826559.jpg'),
(71, 'เซเรียอา อิตรี่', '20170809461594477.jpg'),
(72, 'แชมเปี้ยนชิพ อังกฤษ', '201708091148473598.jpg'),
(73, 'ไอร์แลนด์ พรีเมียร์ลีก', '20170814569893319.png'),
(74, 'ไอซ์แลนด์ ดิวิชั่น 1', '201708141540472234.png'),
(75, 'โรมาเนีย ดิวิชั่น1', '201708142081295701.jpg'),
(76, 'โปแลนด์ ดิวิชั่น 1', '20170814609011690.jpg'),
(77, 'โครเอเชีย ดิวิชั่น 1', '20170814985202247.jpg'),
(80, 'เวียกคุสลีก้า ฟินแลนด์', '201708141140506059.png'),
(82, 'เดนมาร์ค แซซ ลิกาเอน', '201708141222803119.jpg'),
(83, 'เดนมาร์ก ดิวิชั่น 1', '20170814316242966.jpg'),
(84, 'เช็ก ดิวิชั่น1', '201708141642883823.jpg'),
(85, 'เจ-ลีก ดิวิชั่น2', '2017081423996344.jpg'),
(86, 'เค-ลีก เกาหลี', '201708141380517915.png'),
(87, 'เคลีก เกาหลี ดิวิชั่น1', '201708141111922366.png'),
(88, 'ฮอลแลนด์ พรีเมียร์ดัตช์', '201708141637184956.jpg'),
(89, 'ฮอลแลนด์ จูปิแลร์ลีก', '201708141917065544.jpg'),
(90, 'อเมริกา เมเจอร์ลีก', '201708141269962958.jpg'),
(91, 'อิตาลี เซเรีย บี', '201708141952534497.png'),
(92, 'ออสเตรีย บุนเดสลีก้า', '201708141785145103.jpg'),
(93, 'สวีเดน ออลสเวนส์คาน', '201708141227694075.jpg'),
(94, 'สวีเดน ซูเปอร์เร็ตเท่น', '201708141094888280.png'),
(95, 'ฮังการี พรีเมี่ยลีก', '201708142067183443.jpg'),
(96, 'ฮังการี่ ดิวิชั่น 2', '20170814290060088.jpg'),
(97, 'ลีกา 1 สาธารัฐเช็ก', '20170814142812393.png'),
(98, 'ลีกวัน อังกฤษ', '20170814911870093.jpg'),
(99, 'ลิทัวเนียพรีเมี่ยลีก', '20170814717605306.png'),
(100, 'ลัตเวีย ดิวิชั่น 1', '20170814995517969.png'),
(101, 'รัสเซีย พรีเมียร์ลีก', '201708141444913028.png'),
(102, 'รัสเซีย ดิวิชั่น 1', '20170814190955415.jpg'),
(103, 'ยูเครน พรีเมียร์ลีก', '201708141264245550.jpg'),
(104, 'มาเลเซีย พรีเมียร์ลีก', '201708141685567811.jpg'),
(105, 'วอลเลย์บอลหญิงชิงแชมป์เอเชีย ครั้งที่ 19', '201708152076445296.jpg'),
(107, 'กระชับมิตรสโมสร', '201708151458614154.jpg'),
(108, 'บราซิล ดิวิชั่น1', '201708151442354668.png'),
(109, 'โปแลน เอ็คสตรัคลาซ่า ลีก', '20170815412984559.png'),
(110, 'อาเซอร์ไบจัน  พรีเมียร์ลีก ', '201708151831515703.png'),
(111, 'ยูฟ่า', '201708151981508532.jpg'),
(112, 'ไซปรัสดิวิชั่น 1', '201708152112815028.png'),
(113, 'โปรตุเกสลีกา เดอ ฮอนร่า', '201708151103863480.png'),
(114, 'ซูเปอร์ลีกา โปรตุเกส  ', '201708152064504549.png'),
(115, 'สวิตเซอร์แลนด์ซูเปอร์ลีก', '201708151048948810.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tded_program`
--

CREATE TABLE `tbl_tded_program` (
  `id` int(11) NOT NULL,
  `tded_program` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tded_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tded_program`
--

INSERT INTO `tbl_tded_program` (`id`, `tded_program`, `tded_date`) VALUES
(1, '<div align=\"center\" class=\"program__subhead program__subhead--table1\"><h4>บอลวันนี้ โปรแกรมบอล ราคาบอล โปรแกรมฟุตบอล วันจันทร์ที่ 7 สิงหาคม พ.ศ.2560</h4></div><div class=\"table-responsive limit_detail\"><table class=\" table table--table1\"><tbody><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/6rvFdMiIPL2.gif\" width=\"25\" align=\"absmiddle\"/>  ไอร์แลนด์ ลีก คัพ (League of Ireland Cup)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1435344\" data-live-id=\"1435344\" data-smm=\"0\"><td class=\"utable_f1 f\">22:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/6rvFdMpBQcs.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"uwin\">[10]กัลเวย์ ยูไนเต็ด</span></td><td class=\"utable_f3 f classodds\">0.5/1 +5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">ดันดาล์ค[2]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงรองกัลเวย์ เฮในบ้าน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435345\" data-live-id=\"1435345\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/6rvFdMpBQcs.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"\">[4]แชมร็อค โรเวอร์ </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">คอร์ก ซิตี้[1]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อคอร์ก ซิตี้ ดีจริง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEaCDwp6v.jpg\" width=\"25\" align=\"absmiddle\"/>  โปรตุเกส ลีกา ซาเกรส (Portugal Liga Sagres)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1415017\" data-live-id=\"1415017\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaCJwLt4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[D2-1]ปอร์ติโมเนนเซ่ </span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"\">เบาวิสต้า[9]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงวางปอร์ติโมเนนเซ่ เฮเต็ม </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1415020\" data-live-id=\"1415020\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaCJwLt4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[8]เฟยเรนเซ่ </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ทอนเดล่า[16]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อเฟยเรนเซ่ น่าเฮหืด </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1415018\" data-live-id=\"1415018\" data-smm=\"0\"><td class=\"utable_f1 f\">03:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaCJwLt4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[7]ริโอ อาฟ </span></td><td class=\"utable_f3 f classodds\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">เบเลเนนส์[14]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อริโอ อาฟ งาบชัย </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/3qmCa5XFC8I.png\" width=\"25\" align=\"absmiddle\"/>  นอร์เวย์ ดิวิชั่น 1 (Norway - Tippeligaen)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1337205\" data-live-id=\"1337205\" data-smm=\"0\"><td class=\"utable_f1 f\">00:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3qmCa65uJFH.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[13]สตรอมก็อดเซ็ท </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"\">วาเลเรนก้า[9]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อสตรอมก็อดเซ็ท เด็ดชัย </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/8MG7ekuhT8.gif\" width=\"25\" align=\"absmiddle\"/>  สวีเดน ออลสเวนส์คาน (Sweden Allsvenskan)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1336729\" data-live-id=\"1336729\" data-smm=\"0\"><td class=\"utable_f1 f\">00:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3bSJU9iTZRA.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[7]นอร์โคปิ้ง</span></td><td class=\"utable_f3 f classodds\">1/1.5 +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">AFC ยูไนเต็ด[16]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงรองเอเอฟซี ยูไนเต็ด เผด็จศึก </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1336731\" data-live-id=\"1336731\" data-smm=\"0\"><td class=\"utable_f1 f\">00:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3bSJU9iTZRA.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"uwin\">[3]เยอร์การ์เด้น </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">มัลโม่[1]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงรองเยอร์การ์เด้น เล่นดีแน่ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEaDZhRFx.jpg\" width=\"25\" align=\"absmiddle\"/>  เดนมาร์ก ซุปเปอร์ลีก (Danish SAS Ligaen)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1396302\" data-live-id=\"1396302\" data-smm=\"0\"><td class=\"utable_f1 f\">00:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaEcs23f.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[9]ซอนเดอร์ไจสกี </span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"\">อาร์ฮุส[10]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงวางซอนเดอร์ไจสกี มีชัย </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEayeEZto.jpg\" width=\"25\" align=\"absmiddle\"/>  เช็ค ดิวิชั่น1 (Gambrinus Liga)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1402915\" data-live-id=\"1402915\" data-smm=\"0\"><td class=\"utable_f1 f\">22:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaykIf7G.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"uwin\">[14]มลาด้า โบเลสลาฟ </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">สปาร์ต้า ปราก[11]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงวางมลาด้า กาได้ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEaA4pbqS.png\" width=\"25\" align=\"absmiddle\"/>  โปแลนด์ ดิวิชั่น1 (Poland Ekstraklasa)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1396066\" data-live-id=\"1396066\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaAbFh6G.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[6]อาร์ก้า กดิเนีย </span></td><td class=\"utable_f3 f classodds\">0.5 -10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">โคโรน่า[8]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่ออาร์ก้า ซ่าโคตร </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/3qmCahgq8Zq.jpg\" width=\"25\" align=\"absmiddle\"/>  โรมาเนีย ดิวิชั่น1 (Romania Division1)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1413243\" data-live-id=\"1413243\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/a9L8DmkmIV.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[5]ดินาโม บูคาเรสต์ </span></td><td class=\"utable_f3 f classodds\">1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1/1.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">มีแตน มีดิแอช[14]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงรองมีแตน แสนสุขใจ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/ccd50cd9b33875caf708ea3084587170.jpg\" width=\"25\" align=\"absmiddle\"/>  โครเอเชีย ดิวิชั่น1 (Croatia Division1)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1413063\" data-live-id=\"1413063\" data-smm=\"0\"><td class=\"utable_f1 f\">02:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/73bf1e88c43c5e657464ead7cc2aa8d9.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"\">[7]โอซีเยค</span></td><td class=\"utable_f3 f classodds\">0.5 +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">ริเยก้า[2]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อริเยก้า มาวิน </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEbgwrVgr.jpg\" width=\"25\" align=\"absmiddle\"/>  กระชับมิตรสโมสร (Club Friendly)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1437836\" data-live-id=\"1437836\" data-smm=\"0\"><td class=\"utable_f1 f\">00:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[D1-3]เฟเนร์บาห์เช่</span></td><td class=\"utable_f3 f classodds\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">กาญารี่[D1-11]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงรองกาญารี่ มีดี </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1437828\" data-live-id=\"1437828\" data-smm=\"0\"><td class=\"utable_f1 f\">01:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[D1-2]บาร์เซโลน่า </span></td><td class=\"utable_f3 f classodds\">2/2.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ชาเปโคเอนเซ่[D1-14]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟัันธงรองชาเปโคเอนเซ่ เฮแน่ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/8wpQEC6e7aV.jpg\" width=\"25\" align=\"absmiddle\"/>  อังกฤษ คอนเฟอเรนช์ ลีกเหนือ (England Conference North Division)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1426668\" data-live-id=\"1426668\" data-smm=\"0\"><td class=\"utable_f1 f\">01:45</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8PSZnu2.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"uwin\">[16]แบรดฟอร์ด ปาร์ค</span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 +5<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">เซาธ์ปอร์ท[7]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงรองแบรดฟอร์ด กอดแต้ม </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/8wpQEC6e7aV.jpg\" width=\"25\" align=\"absmiddle\"/>  อังกฤษ คอนเฟอเรนช์ ลีกใต้ (England Conference South Division)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1413496\" data-live-id=\"1413496\" data-smm=\"0\"><td class=\"utable_f1 f\">01:45</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8PSZnu2.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[CN-10]กลูเซสเตอร์ ซิตี้</span></td><td class=\"utable_f3 f classodds\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ทรูโร ซิตี้[19]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อกลูเซสเตอร์ ยิงเว่อร์ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1413497\" data-live-id=\"1413497\" data-smm=\"0\"><td class=\"utable_f1 f\">01:45</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8PSZnu2.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[6]ฮังเกอร์ฟอร์ด</span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"\">เวสตัน ซูปเปอร์ มารี[15]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อฮังเกอร์ฟอร์ด ยอดเยี่ยม </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CE8QkrPrz.gif\" width=\"25\" align=\"absmiddle\"/>  บุนเดสลีกา 2 เยอรมัน (German Bundesliga 2)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1406926\" data-live-id=\"1406926\" data-smm=\"0\"><td class=\"utable_f1 f\">01:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8Qs2AF4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[9]ซังค์ เพาลี </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"\">ดินาโม เดรสเดน[8]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อซังค์ เพาลี ดีจริง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEaFDE968.jpg\" width=\"25\" align=\"absmiddle\"/>  สวิตเซอร์แลนด์ ดิวิชั่น2 (Swiss Challenge League)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1405969\" data-live-id=\"1405969\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaFKf75A.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[10]วินเตอร์ทูร์ </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"\">อารัว[8]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อวินเตอร์ทูร์ บู้มันส์ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEawR4JwF.jpg\" width=\"25\" align=\"absmiddle\"/>  ออสเตรีย ดิวิชั่น2 (Austrian Division2)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1404417\" data-live-id=\"1404417\" data-smm=\"0\"><td class=\"utable_f1 f\">23:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEawWUEjQ.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"\">[5]ไลเฟริ่ง </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">SV รีด[3]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงวางเอสวี รีด ไม่คิดมาก </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/3EmIuoo2PdY.gif\" width=\"25\" align=\"absmiddle\"/>  เยอรมันรีเจนนอลลีก ตะวันตกเฉียงใต้ (GER RegS)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1412218\" data-live-id=\"1412218\" data-smm=\"0\"><td class=\"utable_f1 f\">01:15</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3EmIuozwBUV.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[15]วอลฮอฟ แมนเฮล์ม</span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"\">เอลเวอร์เบริ์ก[12]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อวอลฮอฟ แมนเฮล์ม เต็มถัง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEbgwrVgr.jpg\" width=\"25\" align=\"absmiddle\"/>  กระชับมิตร ยู19 (INTERNATIONAL FRIENDLY U-19)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1437829\" data-live-id=\"1437829\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">อาร์เมเนีย(U19)</span></td><td class=\"utable_f3 f classodds\">เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">อุสเบกิสทาน(U19)</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงวางอุสเบ เฮนอกบ้าน </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/8YJ5hIcNMdY.jpg\" width=\"25\" align=\"absmiddle\"/>  บราซิล ซีรี่บี (Brazil Serie B)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1374241\" data-live-id=\"1374241\" data-smm=\"0\"><td class=\"utable_f1 f\">06:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[10]ลอนดริน่า</span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 +10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">วิลา โนว่า[5]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงรองวิลา โนว่า บอกว่าเอาอยู่ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/ee3c25606ca43fd30d25019c1784895f.jpg\" width=\"25\" align=\"absmiddle\"/>  โคลัมเบีย ดิวิชั่น1 (Colombia Primera Division) </td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1409498\" data-live-id=\"1409498\" data-smm=\"0\"><td class=\"utable_f1 f\">07:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/1df7bb17c7293ade3197f2067014eba6.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"uwin\">[15]คอร์ทูลัว </span></td><td class=\"utable_f3 f classodds\">0/0.5 +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">อินดิเพนเดียนเต้ ซานตาเฟ่[3]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงรองคอร์ทูลัว ไม่กลัว </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/4zpuHqI3eAs.png\" width=\"25\" align=\"absmiddle\"/>  ไทยลีก 4 (T4) (ดิวิชั่น2 เดิม + ทีมน้องใหม่)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[B1]ศรีสะเกษ ยูไนเต็ด </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ห้วยแถลง ยูไนเต็ด[B11]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">?</span> - <span class=\"score2\">?</span></div></td><td class=\"utable_f6 f\"><span>ฟันธงต่อศรีสะเกษ เด็ดชัวร์ </span></td></tr></tbody></table></div>', '2017-08-07 17:24:28');
INSERT INTO `tbl_tded_program` (`id`, `tded_program`, `tded_date`) VALUES
(2, '<div align=\"center\" class=\"program__subhead program__subhead--table1\"><h4>บอลวันนี้ โปรแกรมบอล ราคาบอล โปรแกรมฟุตบอล วันอาทิตย์ที่ 6 สิงหาคม พ.ศ.2560</h4></div><div class=\"table-responsive limit_detail\"><table class=\" table table--table1\"><tbody><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/v3oXVrL4Lx.jpg\" width=\"25\" align=\"absmiddle\"/> อังกฤษ คอมมิวนิตี้ ชิลด์ (England FA Community Shield)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1395078\" data-live-id=\"1395078\" data-smm=\"0\"><td class=\"utable_f1 f\">20:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8PSZnu2.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"ured uwin\">[1]เชลซี(N) </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">อาร์เซน่อล[5]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#a1a5f8;\">ฟันธงต่อเชลซี เปรมปรีย์อุรา </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEagS5BkV.gif\" width=\"25\" align=\"absmiddle\"/> ลีกเอิง ฝรั่งเศส (France League1)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1396462\" data-live-id=\"1396462\" data-smm=\"0\"><td class=\"utable_f1 f\">20:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEahMg4Pq.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[11]ลีลล์ </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">น็องต์[7]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองน็องต์ มาส่องเสมอ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1396460\" data-live-id=\"1396460\" data-smm=\"0\"><td class=\"utable_f1 f\">22:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEahMg4Pq.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[12]อองเช่ร์ </span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;เสมอ +5<br/></td><td class=\"utable_f4 f\"><span class=\"\">บอร์กโดซ์[6]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#33CC00;\">ฟันธงวางอองเช่ร์ เฮในบ้าน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1396463\" data-live-id=\"1396463\" data-smm=\"0\"><td class=\"utable_f1 f\">02:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEahMg4Pq.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[5]โอลิมปิก มาร์กเซย </span></td><td class=\"utable_f3 f classodds\">1/1.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ดิฌง[16]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองดิฌง บรรจงยิง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/3DNu4FVe8qK.jpg\" width=\"25\" align=\"absmiddle\"/> โคปา อิตาเลีย คัพ (Coppa Italia Cup)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1435267\" data-live-id=\"1435267\" data-smm=\"0\"><td class=\"utable_f1 f\">01:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3DNu4GD3BjA.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[D1-20]เปสคาร่า </span></td><td class=\"utable_f3 f classodds\">2<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;1.5/2<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ตริเอสติน่า[S4-6]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 2</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">3</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองตริเอสติน่า น่ารอง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CE8NXPsIn.jpg\" width=\"25\" align=\"absmiddle\"/> แชมป์เปี้ยนชิพ อังกฤษ (League Championship)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1399667\" data-live-id=\"1399667\" data-smm=\"0\"><td class=\"utable_f1 f\">22:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8PSZnu2.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"uwin\">[L1-2]โบลตัน</span></td><td class=\"utable_f3 f classodds\">0/0.5 -10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;เสมอ +10<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">ลีดส์ ยูไนเต็ด[7]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 3</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">3</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงวางโบลตัน ขยันยิง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEaCDwp6v.jpg\" width=\"25\" align=\"absmiddle\"/> โปรตุเกส ลีกา ซาเกรส (Portugal Liga Sagres)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1415016\" data-live-id=\"1415016\" data-smm=\"0\"><td class=\"utable_f1 f\">00:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaCJwLt4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"uwin\">[D2-2]อาเวส </span></td><td class=\"utable_f3 f classodds\">1 +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1/1.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">สปอร์ติ้ง ลิสบอน[3]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองอาเวส มีทีเด็ดในบ้าน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1415021\" data-live-id=\"1415021\" data-smm=\"0\"><td class=\"utable_f1 f\">02:15</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaCJwLt4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"ured uwin\">[12]วิตอเรีย เซตูบัล </span></td><td class=\"utable_f3 f classodds\">0/0.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">โมไรเรนเซ่[15]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#a1a5f8;\">ฟันธงต่อวิตอเรีย เชียร์สบาย </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/3qmCa5XFC8I.png\" width=\"25\" align=\"absmiddle\"/> นอร์เวย์ ดิวิชั่น 1 (Norway - Tippeligaen)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1337204\" data-live-id=\"1337204\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3qmCa65uJFH.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[16]ไวกิ้ง เอฟเค </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;เสมอ +10<br/></td><td class=\"utable_f4 f\"><span class=\"\">ลีลล์สตรอม[9]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 2</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#33CC00;\">ฟันธงวางไวกิ้ง ยิงในบ้าน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1337206\" data-live-id=\"1337206\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3qmCa65uJFH.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[10]ออด เกรนแลนด์ </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1 +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"\">ซองน์ดาล[12]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงต่อออด เกรนแลนด์ แสนสุขใจ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1337209\" data-live-id=\"1337209\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3qmCa65uJFH.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[6]สตาเบ็ค </span></td><td class=\"utable_f3 f classodds\">0.5 +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"\">ซานเดฟยอร์ด[11]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">3</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงเจอกันเมื่อไหร่ ขอใส่สตาเบ็ค </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1337210\" data-live-id=\"1337210\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3qmCa65uJFH.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[2]ชาร์ปบอร์ก 08 </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">เฮาเกซุนด์[5]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#a1a5f8;\">ฟันธงรองเฮาเกซุนด์ ลุ้นแต้ม </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1337211\" data-live-id=\"1337211\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3qmCa65uJFH.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"\">[15]ทรอมโซ่ </span></td><td class=\"utable_f3 f classodds\">0/0.5 +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">โมลด์[3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อโมลด์ โกล์ โกล์ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1337208\" data-live-id=\"1337208\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3qmCa65uJFH.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[8]อาเลซุนด์ </span></td><td class=\"utable_f3 f classodds\">เสมอ -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"\">เอสเค บรานน์[4]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 2</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">3</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#33CC00;\">ฟันธงวางอาเลซุนด์ ลุ้นมันส์ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/8MG7ekuhT8.gif\" width=\"25\" align=\"absmiddle\"/> สวีเดน ออลสเวนส์คาน (Sweden Allsvenskan)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1336724\" data-live-id=\"1336724\" data-smm=\"0\"><td class=\"utable_f1 f\">20:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3bSJU9iTZRA.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"uwin\">[14]คัลมาร์</span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;เสมอ +10<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">โกเตนเบิร์ก[11]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงวางคัลมาร์ บอกว่าเอาอยู่ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1336727\" data-live-id=\"1336727\" data-smm=\"0\"><td class=\"utable_f1 f\">20:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3bSJU9iTZRA.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"uwin\">[13]ซันด์สวาลล์ </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0.5 -10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">ออสเตอร์ซุนด์[5]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงรองซันด์สวาลล์ น่าผ่านได้ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1336728\" data-live-id=\"1336728\" data-smm=\"0\"><td class=\"utable_f1 f\">20:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3bSJU9iTZRA.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[9]ฮัมมาร์บี้ </span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ฮัคเค่น[8]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองฮัคเค่น เล่นดีแน่ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1336725\" data-live-id=\"1336725\" data-smm=\"0\"><td class=\"utable_f1 f\">22:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/3bSJU9iTZRA.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"uwin\">[3]ซิริอุส</span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">AIK โซลน่า[4]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 3</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">4</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองซิริอุส ฉุดชัย </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEaDZhRFx.jpg\" width=\"25\" align=\"absmiddle\"/> เดนมาร์ก ซุปเปอร์ลีก (Danish SAS Ligaen)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1396300\" data-live-id=\"1396300\" data-smm=\"0\"><td class=\"utable_f1 f\">17:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaEcs23f.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/5X3MjNJ9JEP.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"uwin\">[12]ลิงบี้ </span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">นอร์ดเจลแลนด์[2]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">4</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงวางลิงบี้ ดูดีในบ้าน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1396299\" data-live-id=\"1396299\" data-smm=\"0\"><td class=\"utable_f1 f\">19:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaEcs23f.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"\">[10]เฮลซิงกอร์ </span></td><td class=\"utable_f3 f classodds\">0.5/1 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1 +10<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">มิดทิลแลนด์[6]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อมิดทิลแลนด์ ดินแดนศิวิไล </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1396304\" data-live-id=\"1396304\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaEcs23f.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[5]โอเดนเซ่ </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">อัลบอร์ก[13]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#a1a5f8;\">ฟันธงต่อโอเดนเซ่ เท่ห์ไปเลย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1396298\" data-live-id=\"1396298\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaEcs23f.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[4]บรอนด์บี้ </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">เอฟซี โคเปนเฮเก้น[7]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองโคเปนเฮเก้น เน้นแน่นัดนี้ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEaFDE968.jpg\" width=\"25\" align=\"absmiddle\"/> สวิต ซูเปอร์ ลีก (Switzerland Super League)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1399479\" data-live-id=\"1399479\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaFKf75A.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"ured\">[5]ลูเซิร์น </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">กราสฮ็อปเปอร์[10]</span>&nbsp;<div class=\"red2\"><img src=\"/img/source/5X3MjNJ9JEP.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUF2rJX.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองกราสฮ็อปเปอร์ เผลอเป็นยิง </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1399480\" data-live-id=\"1399480\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaFKf75A.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[1]ยัง บอยส์ </span></td><td class=\"utable_f3 f classodds\">1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1/1.5 +10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ลัวซานนี สปอร์ท[7]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงวัดใจกันไป ขอใส่ลัวซานนี </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1399481\" data-live-id=\"1399481\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaFKf75A.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"\">[6]เซนต์ กัลเลน </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">เอฟซี ซิยง[3]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองเอฟซี ซิยง บรรจงยิง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEdhHmfcd.jpg\" width=\"25\" align=\"absmiddle\"/> สก็อตแลนด์ พรีเมียร์ลีก (Scottish Premier League)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1402222\" data-live-id=\"1402222\" data-smm=\"0\"><td class=\"utable_f1 f\">19:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/wFo8VKIYpe.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"\">[9]มาเธอร์เวลล์ </span></td><td class=\"utable_f3 f classodds\">1 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">กลาสโกว์ เรนเจอร์ส[3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#33CC00;\">ฟันธงต่อกลาสโกว์ เรนเจอร์ส เจอชัย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1402219\" data-live-id=\"1402219\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/wFo8VKIYpe.jpg\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[2]อเบอร์ดีน </span></td><td class=\"utable_f3 f classodds\">1.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;1.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">แฮมิลตัน[11]</span>&nbsp;<div class=\"red2\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUsczrv.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองแฮมิลตัน ยันไหว </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/6EPIUKXPJyF.gif\" width=\"25\" align=\"absmiddle\"/> ฟินแลนด์ พรีเมียร์ (Finnish Premier : Veikkausliiga)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1357127\" data-live-id=\"1357127\" data-smm=\"0\"><td class=\"utable_f1 f\">19:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/6EPIULHQ7jm.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[1]เอชเจเค เฮลซิงกิ</span></td><td class=\"utable_f3 f classodds\">1 +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1/1.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ลาห์ติ[3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองลาห์ติ นี่สิใช่เลย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1357128\" data-live-id=\"1357128\" data-smm=\"0\"><td class=\"utable_f1 f\">19:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/6EPIULHQ7jm.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[8]มาเรียฮามน์</span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ไซนาโจเอน[6]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#33CC00;\">ฟันธงวางไซนาโจเอน เด่นจริง </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1357129\" data-live-id=\"1357129\" data-smm=\"0\"><td class=\"utable_f1 f\">19:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/6EPIULHQ7jm.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[2]VPS วาซ่า</span></td><td class=\"utable_f3 f classodds\">1 +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;1<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">พีเอส เคมี่[9]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 2</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">3</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองพีเอสเคมี่ มามีแต้ม </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/WqSQ5mBD8P.jpg\" width=\"25\" align=\"absmiddle\"/> เบลเยี่ยมโปรลีก (Belgium Pro League)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1395810\" data-live-id=\"1395810\" data-smm=\"0\"><td class=\"utable_f1 f\">19:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/WqSQ5rpR3K.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[13]KAA เก้นท์</span></td><td class=\"utable_f3 f classodds\">1/1.5 -10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;1<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">รอแยล อันท์เวิร์พ[10]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUsczrv.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองรอแยล อันท์เวิร์พ แจ้งเกิด </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1395811\" data-live-id=\"1395811\" data-smm=\"0\"><td class=\"utable_f1 f\">22:59</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/WqSQ5rpR3K.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[11]อันเดอร์เลชท์ </span></td><td class=\"utable_f3 f classodds\">1/1.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ออสเทนเด้[14]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองออสเทนเด้ เท่ห์ไปเลย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1395812\" data-live-id=\"1395812\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/WqSQ5rpR3K.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[4]คลับบรูซ </span></td><td class=\"utable_f3 f classodds\">1.5/2 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1.5/2<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;1.5 +10<br/></td><td class=\"utable_f4 f\"><span class=\"\">AS ยูเปน[15]</span>&nbsp;<div class=\"red2\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อคลับบรูซ สุดเก่ง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEawR4JwF.jpg\" width=\"25\" align=\"absmiddle\"/> ออสเตรีย บุนเดสลีก้า (Austrian Bundesliga)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1402371\" data-live-id=\"1402371\" data-smm=\"0\"><td class=\"utable_f1 f\">21:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEawWUEjQ.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"ured\">[2]ราปิด เวียนนา </span></td><td class=\"utable_f3 f classodds\">0.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ออสเตรียเวียนนา[10]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองออสเตรียเวียนนา กาได้ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1402373\" data-live-id=\"1402373\" data-smm=\"0\"><td class=\"utable_f1 f\">21:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEawWUEjQ.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"ured\">[8]โวล์ฟสเบอร์เกอร์</span></td><td class=\"utable_f3 f classodds\">เสมอ +5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">เรนดอร์ฟ อัลทัช[7]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองเรนดอร์ฟ ชอบเสมอ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1402372\" data-live-id=\"1402372\" data-smm=\"0\"><td class=\"utable_f1 f\">00:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEawWUEjQ.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[5]แมตเตอร์สเบิร์ก </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"\">สตวร์มกราซ[1]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">3</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงวางแมตเตอร์สเบิร์ก แจ้งเกิด </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/3qmCahgq8Zq.jpg\" width=\"25\" align=\"absmiddle\"/> โรมาเนีย ดิวิชั่น1 (Romania Division1)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1413242\" data-live-id=\"1413242\" data-smm=\"0\"><td class=\"utable_f1 f\">22:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/a9L8DmkmIV.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUsczrv.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[8]ซีเอส คราอิโอว่า </span></td><td class=\"utable_f3 f classodds\">0.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">เอฟซี แอสตร้า[5]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองแอสตร้า บอกว่าเอาอยู่ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1413241\" data-live-id=\"1413241\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/a9L8DmkmIV.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"\">[12]คอนคอร์เดีย เชียจน่า </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1 +5<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">สเตอัว บูคาเรสต์[3]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงต่อสเตอัว ชัวร์กว่า </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/ccd50cd9b33875caf708ea3084587170.jpg\" width=\"25\" align=\"absmiddle\"/> โครเอเชีย ดิวิชั่น1 (Croatia Division1)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1413061\" data-live-id=\"1413061\" data-smm=\"0\"><td class=\"utable_f1 f\">00:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/73bf1e88c43c5e657464ead7cc2aa8d9.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[3]ดินาโม ซาเกร็บ </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ไฮจ์ดุ๊ก สปลิต[4]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองไฮจ์ดุ๊ก สปลิต ไม่คิดมาก </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEbgwrVgr.jpg\" width=\"25\" align=\"absmiddle\"/> กระชับมิตรสโมสร (Club Friendly)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1435854\" data-live-id=\"1435854\" data-smm=\"0\"><td class=\"utable_f1 f\">19:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[D2-1]สตุ๊ตการ์ต </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">เรอัล เบติส[D1-15]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองเรอัล เบติส ไม่คิดมาก </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435855\" data-live-id=\"1435855\" data-smm=\"0\"><td class=\"utable_f1 f\">20:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[D1-13]เอาก์สบวร์ก </span></td><td class=\"utable_f3 f classodds\">0.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">พีเอสวี ไอนด์โฮเฟ่น[D1-3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองพีเอสวี มีดี </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435856\" data-live-id=\"1435856\" data-smm=\"0\"><td class=\"utable_f1 f\">20:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[D1-14]ฮัมบูร์ก</span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">เอสปันญ่อล[D1-8]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงรองเอสปันญ่อล น่าต้อนหืด </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435858\" data-live-id=\"1435858\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[PR-7]เอฟเวอร์ตัน </span></td><td class=\"utable_f3 f classodds\">0/0.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">เซบีย่า[D1-4]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงรองเซบีย่า มาซ่านอกบ้าน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435859\" data-live-id=\"1435859\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[D1-16]โวล์ฟสบวร์ก </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ฟิออเรนติน่า[D1-8]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อโวล์ฟบวร์ก ลุ้นบวก </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1436355\" data-live-id=\"1436355\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[LCH-1]นิวคาสเซิ่ล</span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5 +5<br/></td><td class=\"utable_f4 f\"><span class=\"\">เวโรน่า[D2-2]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อนิวคาสเซิ่ล ยิงเบิ้ล </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435860\" data-live-id=\"1435860\" data-smm=\"0\"><td class=\"utable_f1 f\">22:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"\">[LCH-2]ไบรท์ตัน</span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">แอตฯ มาดริด[D1-3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">3</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงต่อแอตฯ มาดริด พิชิตชัย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435861\" data-live-id=\"1435861\" data-smm=\"0\"><td class=\"utable_f1 f\">22:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"\">[D1-7]ไฟร์บวร์ก </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;เสมอ +5<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">โตริโน่[D1-9]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองโตริโน่ ยิงโชว์ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435862\" data-live-id=\"1435862\" data-smm=\"0\"><td class=\"utable_f1 f\">22:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"\">[D3-15]เออร์เฟือร์ธ</span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1 +5<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">ดอร์ทมุนด์[D1-3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 2</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">5</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อดอร์ทมุนด์ ลุ้นกระจาย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435863\" data-live-id=\"1435863\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"uwin\">[D2-1]เลบานเต้(N) </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5 -5<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">อลาเบส[D1-9]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงรองเลบานเต้ เฮในบ้าน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435865\" data-live-id=\"1435865\" data-smm=\"0\"><td class=\"utable_f1 f\">01:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"uwin\">[PR-9]บอร์นมัธ</span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5 +10<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">นาโปลี[D1-3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองบอร์นมัธ ฟัดไหว </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435866\" data-live-id=\"1435866\" data-smm=\"0\"><td class=\"utable_f1 f\">01:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[D1-7]อินเตอร์ มิลาน(N) </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 +10<br/></td><td class=\"utable_f4 f\"><span class=\"\">บียาร์เรอัล[D1-5]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่ออินเตอร์ เจอชัย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1435867\" data-live-id=\"1435867\" data-smm=\"0\"><td class=\"utable_f1 f\">01:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"uwin\">[D2-1]สปอล </span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">คิเอโว่[D1-14]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงรองสปอล น่าต้อนได้ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/5h4xmuLueWw.jpg\" width=\"25\" align=\"absmiddle\"/> ตุรกี ซุปเปอร์คัพ (Turkey Super Cup)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1427989\" data-live-id=\"1427989\" data-smm=\"0\"><td class=\"utable_f1 f\">00:45</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/5h4xmuSviYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[1]เบซิคตัส(N) </span></td><td class=\"utable_f3 f classodds\">1/1.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;1<br/></td><td class=\"utable_f4 f\"><span class=\"\">คอนยาสปอร์[10]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อเบซิคตัส ชัดเจน </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CE8QkrPrz.gif\" width=\"25\" align=\"absmiddle\"/> บุนเดสลีกา 2 เยอรมัน (German Bundesliga 2)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1406932\" data-live-id=\"1406932\" data-smm=\"0\"><td class=\"utable_f1 f\">18:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8Qs2AF4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"\">[14]จอห์น เรเกนเบิร์ก</span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5 -10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;เสมอ +10<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">เนิร์นแบร์ก[4]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงวางเนิร์นแบร์ก ยิงแสกหน้า </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1406927\" data-live-id=\"1406927\" data-smm=\"0\"><td class=\"utable_f1 f\">20:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8Qs2AF4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[16]กรอยเธอร์ เฟือร์ธ </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">อาร์มีเนีย บีเลเฟลด์5]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 2</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองอาร์มีเนีย เชียร์สบาย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1406930\" data-live-id=\"1406930\" data-smm=\"0\"><td class=\"utable_f1 f\">20:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CE8Qs2AF4.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUsczrv.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[12]เอา </span></td><td class=\"utable_f3 f classodds\">เสมอ<br/></td><td class=\"utable_f4 f\"><span class=\"\">ฟอร์ทูน่า ดุสเซลดอร์ฟ[9]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงวางเอา เก๋าในบ้าน </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/3EmItyodba7.jpg\" width=\"25\" align=\"absmiddle\"/> ฟุตบอลหญิง ชิงแชมป์แห่งชาติยุโรป (UEFA European Woman)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1435395\" data-live-id=\"1435395\" data-smm=\"0\"><td class=\"utable_f1 f\">22:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbgCLQXW.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[A1][12]เนเธอร์แลนด์(W) </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5 +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">เดนมาร์ก(W)[15][A2]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 2</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">4</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อเนเธอร์แลนด์ แสนสุขใจ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEaYUPv6q.jpg\" width=\"25\" align=\"absmiddle\"/> เกาหลี ดิวิชั่น1 (Korea Division1)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1346374\" data-live-id=\"1346374\" data-smm=\"0\"><td class=\"utable_f1 f\">17:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaZ3MsAm.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[1]ชอนบุกฮุนไดมอเตอร์ </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1 +10<br/></td><td class=\"utable_f4 f\"><span class=\"\">วุลซาน ฮุนได โฮรางอี[3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อชอนบุกฮุนไดมอเตอร์ ยิงเว่อร์ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1346375\" data-live-id=\"1346375\" data-smm=\"0\"><td class=\"utable_f1 f\">17:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaZ3MsAm.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"ured\">[7]โปฮัง สตีลเลอร์ </span></td><td class=\"utable_f3 f classodds\">0.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ชุนนัมดรากอนส์[8]</span>&nbsp;<div class=\"red2\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองชุนนัม ทำกำไร </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1346376\" data-live-id=\"1346376\" data-smm=\"0\"><td class=\"utable_f1 f\">17:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEaZ3MsAm.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"\">[9]ซังจู ซังมู ฟีนิกซ์ </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">แกงวัน เอฟซี[6]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงแกงวันเบียดหอบ เป็นคำตอบสุดท้าย </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/8YJ5hIcNMdY.jpg\" width=\"25\" align=\"absmiddle\"/> บราซิล เซเรีย เอ (Brazil Serie A)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1365292\" data-live-id=\"1365292\" data-smm=\"0\"><td class=\"utable_f1 f\">21:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[5]ฟลาเมงโก </span></td><td class=\"utable_f3 f classodds\">1/1.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">วิตอเรีย BA[19]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองวิตอเรีย เคลียร์ได้ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1365288\" data-live-id=\"1365288\" data-smm=\"0\"><td class=\"utable_f1 f\">02:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[16]บาเฮีย</span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">เซาเปาโล[17]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองเซาเปาโล ยันโชว์ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1365290\" data-live-id=\"1365290\" data-smm=\"0\"><td class=\"utable_f1 f\">02:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[4]พัลไมรัส </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1 +10<br/></td><td class=\"utable_f4 f\"><span class=\"\">แอตเลติโก้ พาราเนนเซ่[9]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อพัลไมรัส ซัดชัย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1365291\" data-live-id=\"1365291\" data-smm=\"0\"><td class=\"utable_f1 f\">02:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[13]กอริติบ้า</span></td><td class=\"utable_f3 f classodds\">0/0.5 +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1 -10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ชาเปโคเอนเซ่[14]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองชาเปโคเอนเซ่ มีเฮ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1365293\" data-live-id=\"1365293\" data-smm=\"0\"><td class=\"utable_f1 f\">02:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[7]ครูไซโร่</span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">โบตาโฟโก้[8]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองโบตาโฟโก้ ยิงโชว์สาว </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1365296\" data-live-id=\"1365296\" data-smm=\"0\"><td class=\"utable_f1 f\">02:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[2]เกรมิโอ้ ปอร์โต้ </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"\">อัตเลติโก มิไนโร่[10]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อเกรมิโอ้ ปอร์โต้ โกล์ โกล์ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1365287\" data-live-id=\"1365287\" data-smm=\"0\"><td class=\"utable_f1 f\">05:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[15]ปอนเต เปรตา </span></td><td class=\"utable_f3 f classodds\">0.5 +10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1<br/></td><td class=\"utable_f4 f\"><span class=\"\">วาสโก ดา กาม่า[11]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อปอนเต เปรตา มาวิน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1365289\" data-live-id=\"1365289\" data-smm=\"0\"><td class=\"utable_f1 f\">05:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/8wpQEJLIVYp.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"\">[18]อาไว</span></td><td class=\"utable_f3 f classodds\">เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0/0.5 -10<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">ซานโตส[3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#a1a5f8;\">ฟันธงต่อซานโตส กระโดดยิง </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEb2AWKki.jpg\" width=\"25\" align=\"absmiddle\"/> อเมริกา เมเจอร์ลีก (American Major League)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1344310\" data-live-id=\"1344310\" data-smm=\"0\"><td class=\"utable_f1 f\">01:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/wFo8HGfoSt.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[10]พอร์ทแลนด์ ทิมเบอร์</span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">แอลเอ กาแลกซี่[19]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองแอลเอ เฮนอกบ้าน </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1344311\" data-live-id=\"1344311\" data-smm=\"0\"><td class=\"utable_f1 f\">05:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/wFo8HGfoSt.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[3]นิวยอร์ก ซิตี้ เอฟซี </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">นิวยอร์ก เร้ด บูลล์ส[5]</span>&nbsp;<div class=\"red2\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อนิวยอร์ก ซิตี้ ดูดีกว่า </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1344312\" data-live-id=\"1344312\" data-smm=\"0\"><td class=\"utable_f1 f\">07:15</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/wFo8HGfoSt.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[4]สปอร์ติ้ง แคนซัส ซิตี้</span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5 +10<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">แอตแลนต้า ยูไนเต็ด[6]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUsczrv.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองแอตแลนต้า น่าลุ้น </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEb39ifdW.jpg\" width=\"25\" align=\"absmiddle\"/> เม็กซิโก พรีเมียร่า ดิวิชั่น (Mexico Primera Division)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1403171\" data-live-id=\"1403171\" data-smm=\"0\"><td class=\"utable_f1 f\">00:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEb3RqUdG.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[7]โตลูก้า </span></td><td class=\"utable_f3 f classodds\">0/0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">อัตลาส[2]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองอัตลาส ฟัดไหว </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1403172\" data-live-id=\"1403172\" data-smm=\"0\"><td class=\"utable_f1 f\">06:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEb3RqUdG.png\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[15]เวราครูซ </span></td><td class=\"utable_f3 f classodds\">เสมอ +10<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;เสมอ<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;เสมอ +10<br/></td><td class=\"utable_f4 f\"><span class=\"\">พูอีบลา[14]</span>&nbsp;<div class=\"red2\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">2 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงวางเวราครูซ ฉุดชัย </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/78CEbexrzLt.png\" width=\"25\" align=\"absmiddle\"/> ไทยแลนด์พรีเมียร์ลีก (T1) (Thailand premier league)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1394247\" data-live-id=\"1394247\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"\">[18]ซูเปอร์ฯ สมุทรปราการ </span></td><td class=\"utable_f3 f classodds\">3.5<br/></td><td class=\"utable_f4 f\"><span class=\"ured uwin\">บุรีรัมย์ ยูไนเต็ด[1]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">7</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อบุรีรัมย์ ทำกำไร </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1394248\" data-live-id=\"1394248\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[12]โปลิศ เทโร เอฟซี </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5 +10<br/></td><td class=\"utable_f4 f\"><span class=\"\">ราชนาวี เอฟซี[13]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อโปลิส เทโร โกล์ โกล์ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1394250\" data-live-id=\"1394250\" data-smm=\"0\"><td class=\"utable_f1 f\">19:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"uwin\">[16]ศรีสะเกษ เอฟซี</span></td><td class=\"utable_f3 f classodds\">2 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;2<br/></td><td class=\"utable_f4 f\"><span class=\"ured\">เมืองทอง ยูไนเต็ด[3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองศรีสะเกษ เผด็จศึก </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1394249\" data-live-id=\"1394249\" data-smm=\"0\"><td class=\"utable_f1 f\">19:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[15]สุโขทัย เอฟซี </span></td><td class=\"utable_f3 f classodds\">1/1.5 -10<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ไทยฮอนด้า เอฟซี[17]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองไทยฮอนด้า น่าลุ้น </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/4kVC5IrxtfR.png\" width=\"25\" align=\"absmiddle\"/> ไทยแชมเปี้ยนชิพ (T2) (ดิวิชั่น1 เดิม) (Thai Championship)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1394777\" data-live-id=\"1394777\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[6]ลำปาง เอฟซี </span></td><td class=\"utable_f3 f classodds\">0.5/1<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;0.5/1 +5<br/></td><td class=\"utable_f4 f\"><span class=\"\">กระบี่ เอฟซี[11]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">3 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#ff5959;\">ฟันธงต่อลำปาง วางได้เลย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1394776\" data-live-id=\"1394776\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"><img src=\"/img/source/8JIYtfodqiR.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"ured\">[16]สงขลา ยูไนเต็ด </span></td><td class=\"utable_f3 f classodds\">0.5<br/><img src=\"/img/source/5X3MjPQFjaB.gif\"/>&nbsp;1 +5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">สมุทรสงคราม เอฟซี[13]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#33CC00;\">ฟันธงรองสมุทรสงคราม ทำแต้ม </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1394778\" data-live-id=\"1394778\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[1]แอร์ฟอร์ซ เซ็นทรัล</span></td><td class=\"utable_f3 f classodds\">1<br/><img src=\"/img/source/5X3MmeL2hdg.gif\"/>&nbsp;0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ประจวบ เอฟซี[3]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อแอร์ฟอร์ซ กอดชัย </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1394779\" data-live-id=\"1394779\" data-smm=\"0\"><td class=\"utable_f1 f\">19:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[10]นครปฐม ยูไนเต็ด</span></td><td class=\"utable_f3 f classodds\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ม.เกษตรศาสตร์ เอฟซี[12]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">0</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อนักสู้เจดีย์ใหญ่ จัดไป </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/4kVC5SqxwYo.png\" width=\"25\" align=\"absmiddle\"/> ไทยลีก 3 (T3) โซนบน (ท็อป4โซนบน ดิวิชั่น2 เดิม)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[13]ลำพูน วอริเออร์ </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">สระแก้ว เอฟซี[9]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองสระแก้ว ซิตี้ มามีแต้ม </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[5]แพร่ ยูไนเต็ด</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">พะเยา เอฟซี[11]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงต่อแพร่ แน่จริง </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[7]ฉะเชิงเทรา เอฟซี</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">อยุธยา เอฟซี[3]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">1</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองอยุธยา มาแน่ </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:30</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[4]อยุธยา ยูไนเต็ด</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ขอนแก่น เอฟซี[1]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">1</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองขอนแก่น ดินแดนศิวิไล </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">19:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[2]อุดรธานี เอฟซี</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">อุบลราชธานี เอฟซี[10]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">5</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่ออุดร นอนมา </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/4kVC5SqxwYo.png\" width=\"25\" align=\"absmiddle\"/> ไทยลีก 3 (T3) โซนล่าง (ท็อป4โซนล่าง ดิวิชั่น2 เดิม)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" id=\"1436327\" data-live-id=\"1436327\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured\">[14]กรุงธนบุรี เอฟซี</span></td><td class=\"utable_f3 f classodds\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ราชประชา เอฟซี[13]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsf3rGW4.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">3 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">4</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองราชประชา บอกว่าเอาอยู่ </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1437102\" data-live-id=\"1437102\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[6]ทหารบก เอฟซี </span></td><td class=\"utable_f3 f classodds\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ม.เกษมบัณฑิต เอฟซี[8]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 1</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">3</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อทหาร น่าผ่านได้ </span></td></tr><tr class=\"table__head table__head--table1\"><td class=\"utable_league\" colspan=\"8\"><img src=\"/img/source/4zpuHqI3eAs.png\" width=\"25\" align=\"absmiddle\"/> ไทยลีก 4 (T4) (ดิวิชั่น2 เดิม + ทีมน้องใหม่)</td></tr><tr class=\"table__info table__info--table1\"><td class=\"utable_f1\" width=\"40\">เวลา</td><td class=\"utable_f1\" width=\"30\">ธง</td><td class=\"utable_f2\" width=\"180\">เจ้าบ้าน</td><td class=\"utable_f3\" width=\"90\">ราคาบอล</td><td class=\"utable_f4\" width=\"170\">ทีมเยือน</td><td class=\"utable_f5\" width=\"55\">ครึ่งแรก</td><td class=\"utable_f5\" width=\"55\">ผลบอล</td><td class=\"utable_f6\" width=\"218\">ทีเด็ดบอลคืนนี้</td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[A5]น่าน เอฟซี </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">เชียงราย ยูไนเต็ด(B)[A9]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">2</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อน่าน เจองานง่าย </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[A3]เชียงราย ซิตี้ </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">อุตรดิตถ์ เอฟซี[A2]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองอุตรดิตถ์ ไม่คิดนาน </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[B2]มาแชร์ ชัยภูมิ</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ร้อยเอ็ด ยูไนเต็ด[B12]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">2</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อชัยภูมิ ลุ้นกระจาย </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[B10]มุกดาหาร เอฟซี </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">สกลนคร เอฟซี[B7] </span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">6</span> - <span class=\"score2\">3</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อมุกดาหาร สราญอุรา </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[B6]บุรีรัมย์ ยูไนเต็ด(B)</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">เลย ซิตี้[B9] </span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">5</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อบุรีรัมย์ ทำกำไร </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[C6]ราชบุรี เอฟซี(B) </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ลูกอีสาน เอฟซี[C5]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">4</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองลูกอีสาน มายันเสมอ </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[C1]สุพรรณบุรี เอฟซี(B) </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">นนทบุรี เอฟซี[C9]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">1</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อสุพรรณ ยิงมันส์ๆ </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[D7]กบินทร์ ยูไนเต็ด</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ชลบุรี เอฟซี(B)[D4]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">0</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองชลบุรี เข้าทีกว่า </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[D6]บ้านค่าย ยูไนเต็ด</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">นครนายก เอฟซี[D8]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองนครนายก เอฟซี มีดี </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[D5]กองเรือยุทธการ </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">ปราจีน ยูไนเต็ด[D10]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">4</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#5256c0;\">ฟันธงรองปราจีน ถิ่นเมืองทวารวดี </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1436336\" data-live-id=\"1436336\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/5X3MjUaVjzN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"><img src=\"/img/source/5X3MjNJ9JEP.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<span class=\"ured\">[E2]ม.นอร์ทกรุงเทพ </span></td><td class=\"utable_f3 f classodds\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">สมุทรปราการ เอฟซี[E4]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">1 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">2</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงน่าเสมอกันไป ขอใส่สมุทรปราการ </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">17:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured\">[E7]บางกอกกล๊าส(B) </span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"uwin\">บีซีซี เอฟซี[E3]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">0</span> - <span class=\"score2\">2</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงรองบีซีซี เข้าทีกว่า </span></td></tr><tr class=\"table__data table__data--table1\" id=\"1436335\" data-live-id=\"1436335\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"><img src=\"/img/source/8JIYsdfzHyN.gif\" align=\"absmiddle\" height=\"13\"/></div>&nbsp;<div class=\"red1\"></div><span class=\"ured uwin\">[E6]โดม เอฟซี </span></td><td class=\"utable_f3 f classodds\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">พีทียู ปทุมธานี[E8]</span><div class=\"red2\"></div>&nbsp;<div class=\"yellow2\"><img src=\"/img/source/8JIYsbYtybD.gif\" align=\"absmiddle\" height=\"13\"/></div></td><td class=\"utable_f7 f\"><span class=\"ht\">0 - 0</span></td><td class=\"utable_f5 f classmore\"><div><span class=\"score1\">1</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อโดม เอฟซี ดีจริง </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">16:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[F1]สตูล ยูไนเต็ด</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">พัทลุง เอฟซี[F5]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">3</span> - <span class=\"score2\">0</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อสตูล ลุ้นสบาย </span></td></tr><tr class=\"table__data table__data--table1\" data-live-id=\"\" data-smm=\"0\"><td class=\"utable_f1 f\">18:00</td><td class=\"utable_f1 f\"><div class=\"utable_flag\"><img src=\"/img/source/78CEbeEare7.gif\"/></div></td><td class=\"utable_f2 f\"><div class=\"yellow1\"></div><div class=\"red1\"></div><span class=\"ured uwin\">[F3]ภูเก็ต เอฟซี</span></td><td class=\"utable_f3 f\">0.5<br/></td><td class=\"utable_f4 f\"><span class=\"\">ปัตตานี เอฟซี[F4]</span><div class=\"red2\"></div><div class=\"yellow2\"></div></td><td class=\"utable_f7 f\"><span class=\"ht\"></span></td><td class=\"utable_f5 f\"><div><span class=\"score1\">2</span> - <span class=\"score2\">1</span></div></td><td class=\"utable_f6 f\"><span style=\"background:#FF0000;\">ฟันธงต่อภูเก็ต เด็ดชัย </span></td></tr></tbody></table></div>', '2017-08-07 17:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `teames`
--

CREATE TABLE `teames` (
  `ts_id` int(11) NOT NULL,
  `p_id` varchar(100) NOT NULL,
  `teames` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `teames`
--

INSERT INTO `teames` (`ts_id`, `p_id`, `teames`) VALUES
(80, '(111)(107)(57)(61)', 'แมนเชสเตอร์ยูไนเต็ด'),
(83, '(111)(107)(61)', 'เชลซี'),
(84, '(107)(61)(57)', 'ท็อตแนม ฮ็อทสเปอร์'),
(85, '(107)(61)(57)', 'แมนเชสเตอร์ ซิตี้'),
(86, '(111)(107)(61)(57)', 'ลิเวอร์พูล'),
(87, '(107)(61)(57)', 'อาร์เซนอล'),
(88, '(107)(61)(57)', 'เอฟเวอร์ตัน'),
(89, '(107)(61)(57)', 'เซาธ์แฮมป์ตัน'),
(90, '(107)(61)(57)', 'บอร์นมัธ'),
(91, '(107)(61)(57)', 'เวสต์บรอมวิช อัลเบี้ยน'),
(92, '(107)(61)(57)', 'เวสต์แฮม ยูไนเต็ด'),
(93, '(61)(57)', 'เลสเตอร์ ซิตี้'),
(94, '(61)(57)', 'สโต๊ค ซิตี้'),
(95, '(61)(57)', 'คริสตัล พาเลซ'),
(96, '(61)(57)', 'สวอนซี ซิตี้'),
(97, '(61)(57)', 'เบิร์นลี่ย์'),
(98, '(61)(57)', 'วัตฟอร์ด'),
(99, '(61)(57)', 'นิวคาสเซิล'),
(100, '(61)(57)', 'ไบรท์ตัน'),
(101, '(61)(57)', 'ฮัดเดอร์สฟิลด์ ทาวน์'),
(102, '(105)(61)', 'ไทย'),
(103, '(50)', 'บุรีรัมย์ ยูไนเต็ด'),
(104, '(50)', 'SCG เมืองทองฯ ยูไนเต็ด'),
(105, '(50)', 'แบงค็อก ยูไนเต็ด'),
(106, '(50)', 'เชียงราย ยูไนเต็ด'),
(107, '(50)', 'บางกอกกล๊าส'),
(108, '(50)', 'ชลบุรี'),
(109, '(50)', 'ราชบุรี มิตรผล'),
(110, '(50)', 'พัทยา ยูไนเต็ด'),
(111, '(50)', 'อุบล ยูเอ็มที ยูไนเต็ด'),
(112, '(50)', 'การท่าเรือ'),
(113, '(50)', 'บีอีซี เทโรศาสน'),
(114, '(50)', 'สุพรรณบุรีฯ'),
(115, '(50)', 'ราชนาวี'),
(116, '(50)', 'นครราชสีมา มาสด้า'),
(117, '(50)', 'สุโขทัย'),
(118, '(50)', 'ศรีสะเกษ'),
(119, '(50)', 'ไทยฮอนด้า'),
(120, '(50)', 'ซุปเปอร์ พาวเวอร์ สมุทรปราการ'),
(121, '(67)', 'ประจวบ เอฟซี'),
(122, '(67)', 'ชัยนาท ฮอร์นบิล'),
(123, '(67)', 'พีทีที ระยอง'),
(124, '(67)', 'แอร์ฟอร์ซ เซ็นทรัล'),
(125, '(67)', 'ลำปาง เอฟซี'),
(126, '(67)', 'อ่างทอง เอฟซี'),
(127, '(67)', 'เชียงใหม่ เอฟซี'),
(128, '(67)', 'ระยอง เอฟซี'),
(129, '(67)', 'นครปฐม ยูไนเต็ด'),
(130, '(67)', 'กระบี่ เอฟซี'),
(131, '(67)', 'หนองบัว พิชญ เอฟซี'),
(132, '(67)', 'อาร์มี่ ยูไนเต็ด'),
(133, '(67)', 'สมุทรสงคราม เอฟซี'),
(134, '(67)', 'สงขลา ยูไนเต็ด'),
(135, '(67)', 'บางกอก เอฟซี'),
(136, '(67)', 'เกษตรศาสตร์ เอฟซี'),
(137, '(67)', 'บีบีซียู เอฟซี'),
(138, '(67)', 'ตราด เอฟซี'),
(139, '(58)', 'เซเรโซ โอซาก้า'),
(140, '(58)', 'คาชิม่า แอนท์เลอร์ส'),
(141, '(58)', 'คาชิว่า เรย์โซล'),
(142, '(58)', 'โยโกฮาม่า เอฟ มารินอส'),
(143, '(58)', 'คาวาซากิ ฟรอนตาเล่'),
(144, '(58)', 'กัมบะ โอซาก้า'),
(145, '(58)', 'จูบิโล อิวาตะ'),
(146, '(107)(58)', 'อูราวะ เรด ไดมอนส์'),
(147, '(58)', 'สากัน โตสู'),
(148, '(58)', 'วิสเซล โกเบ'),
(149, '(58)', 'เอฟซี โตเกียว'),
(150, '(58)', 'ชิมิสุ เอส-พัลส์'),
(151, '(58)', 'เวกัลตา เซนได'),
(152, '(58)', 'เวนท์ฟอเรท โกฟุ '),
(153, '(58)', 'คอนซาโดล ซัปโปโร'),
(154, '(58)', 'โอมิยะ อาร์ดิย่า'),
(155, '(58)', 'ซานเฟรซเซ ฮิโรชิม่า '),
(156, '(58)', 'อัลบิเร็กซ์ นิงาตะ '),
(157, '(68)', 'แอธเลติก คลับ'),
(158, '(68)', 'แอตเลติโก มาดริด'),
(159, '(68)', 'บาร์เซโลนา'),
(160, '(68)', 'เซลตา บิโก'),
(161, '(68)', 'เดปอร์ติโบ อลาเบส'),
(162, '(68)', 'เดปอร์ติโบ ลา คอรุนญา'),
(163, '(68)', 'ไอบาร์'),
(164, '(68)', 'แอสปันญอล'),
(165, '(68)', 'เกตาเฟ'),
(166, '(68)', 'ลาส พัลมาส'),
(167, '(68)', 'เลกาเนส'),
(168, '(68)', 'เลบานเต้'),
(169, '(68)', 'มาลาก้า'),
(170, '(68)', 'เรอัล เบติส'),
(171, '(68)', 'เรอัล มาดริด'),
(172, '(68)', 'เรอัล โซเซียดาด'),
(173, '(68)', 'เซบีญา'),
(174, '(68)', 'บาเลนเซีย'),
(175, '(68)', 'บียาร์เรอัล'),
(176, '(68)', 'คิโรน่า'),
(177, '(69)', 'โอลิมปิก ลียง	'),
(178, '(69)', 'โอลิมปิก มาร์กเซย'),
(179, '(69)', 'ลีลล์'),
(180, '(69)', 'แก็งก็อง'),
(181, '(69)', 'เปแอสเช'),
(182, '(69)', 'โมนาโก'),
(183, '(69)', 'แซงต์-เอเตียง'),
(184, '(69)', 'มงต์เปลลิเยร์'),
(185, '(69)', 'บอร์กโดซ์'),
(186, '(69)', 'อองเช่'),
(187, '(69)', 'แรนส์'),
(188, '(69)', 'ทรัวส์'),
(189, '(69)', 'ตูลูส'),
(190, '(69)', 'นีซ'),
(191, '(69)', 'ก็อง'),
(192, '(69)', 'เม็ตซ์'),
(193, '(69)', 'อาเมียงส์'),
(194, '(69)', 'นองต์ส'),
(195, '(69)', 'ดิฌง'),
(196, '(69)', 'สตราส์บูร์ก'),
(197, '(70)', 'เอาก์สบวร์ก'),
(198, '(70)', 'ไบเออร์ เลเวอร์คูเซน'),
(199, '(70)', 'บาเยิร์น มิวนิค'),
(200, '(70)', 'โบรุสเซีย ดอร์ทมุนด์'),
(201, '(70)', 'โบรุสเซีย มึนเชนกลัดบลัค'),
(202, '(70)', 'ไอน์ทรัค แฟรงค์เฟิร์ต'),
(203, '(70)', 'ไฟร์บวร์ก'),
(204, '(70)', 'ฮัมบูร์ก เอสวี	'),
(205, '(70)', 'ฮันโนเวอร์ 96'),
(206, '(70)', 'แฮร์ธา บีเอสซี'),
(207, '(111)(70)', 'ฮอฟเฟนไฮม์'),
(208, '(70)', 'โคโลญ'),
(209, '(70)', 'ไมซ์ 05'),
(210, '(70)', 'อาร์บี ไลป์ซิก'),
(211, '(70)', 'ชาลเก้ 04'),
(212, '(70)', '1893	สตุ๊ตการ์ต'),
(213, '(70)', 'แวร์เดอร์ เบรเมน'),
(214, '(70)', 'โวล์ฟบวร์ก'),
(215, '(71)', 'อตาลันต้า'),
(216, '(71)', 'เบเนเวนโต้'),
(217, '(71)', 'โบโลญญา'),
(218, '(71)', 'กายารี'),
(219, '(71)', 'คิเอโว'),
(220, '(71)', 'โครโตเน'),
(221, '(71)', 'ฟิออเรนตินา'),
(222, '(71)', 'เจนัว'),
(223, '(71)', 'เฮลลาส เวโรนา'),
(224, '(71)', 'อินเตอร์ มิลาน'),
(225, '(71)', 'ยูเวนตุส'),
(226, '(71)', 'ลาซิโอ'),
(227, '(71)', 'มิลาน'),
(228, '(71)', 'นาโปลี'),
(229, '(71)', 'โรมา'),
(230, '(71)', 'สปอล'),
(231, '(71)', 'ซามพ์โดเรีย'),
(232, '(71)', 'ซัสซูโอโล'),
(233, '(71)', 'โตริโน'),
(234, '(71)', 'อูดิเนเซ'),
(235, '(72)', 'บริสตอล ซิตี้'),
(236, '(72)', 'ควีนส์พาร์ค เรนเจอร์ส'),
(237, '(72)', 'ลีดส์ ยูไนเต็ด'),
(238, '(72)', 'คาร์ดิฟฟ์ ซิตี้'),
(239, '(72)', 'อิปสวิช ทาวน์'),
(240, '(72)', 'น็อตติ้งแฮม ฟอเรสต์'),
(241, '(72)', 'เปรสตัน นอร์ธ เอนด์'),
(242, '(72)', 'เชฟฟิลด์ ยูไนเต็ด'),
(243, '(72)', 'วูล์ฟแฮมป์ตัน วันเดอร์เรอร์ส'),
(244, '(72)', 'แอสตัน วิลลา'),
(245, '(72)', 'ดาร์บี้ เคาน์ตี้'),
(246, '(72)', 'ฟูแลม'),
(247, '(72)', 'ฮัลล์ ซิตี้'),
(248, '(72)', 'นอริช ซิตี้'),
(249, '(72)', 'ซันเดอร์แลนด์'),
(250, '(72)', 'โบลตัน วันเดอร์เรอร์ส	'),
(251, '(72)', 'เบอร์มิงแฮม ซิตี'),
(252, '(72)', 'เบรนท์ฟอร์ด'),
(253, '(72)', 'เบอร์ตัน อัลเบี้ยน'),
(254, '(72)', 'มิดเดิลสโบรห์'),
(255, '(72)', 'มิลล์วอลล์'),
(256, '(72)', 'เชฟฟิลด์ เวนสเดย์'),
(257, '(72)', 'บาร์นสลีย์'),
(258, '(72)', 'เรดดิ้ง'),
(259, '(73)', 'คอร์ค ซิต'),
(260, '(73)', 'ดันดาล์ค'),
(261, '(73)', 'เดอร์รี่ ซิตี้	'),
(262, '(73)', 'แชมร็อค โรเวอร์ส'),
(263, '(73)', 'เบรย์ วันเดอเรอร์ส	'),
(264, '(73)', 'โบฮีเมี่ยนส์'),
(265, '(73)', 'ลิเมริค เอฟซี'),
(266, '(73)', 'เซนต์ แพตทริคส์'),
(267, '(73)', 'ฟินน์ ฮาร์ปส์'),
(268, '(73)', 'กัลเวย์ ยูไนเต็ด'),
(269, '(73)', 'สลิโก โรเวอร์ส'),
(270, '(73)', 'ดร็อกเฮด้า ยูไนเต็ด'),
(271, '(74)', 'เคฟลาวิค'),
(272, '(74)', 'ฟีลเคียร์'),
(273, '(74)', 'ธอร์ตตูร์ เรย์ยาวิค'),
(274, '(74)', 'ฮัวการ์ ฮาฟนาร์ฟจอร์ดูร'),
(275, '(74)', 'เฮชเค โคปาโวกค์'),
(276, '(74)', 'ธอร์ อคูเรย์รี่ '),
(277, '(74)', 'เลคเนียร์ เรกยะวิก'),
(278, '(74)', 'เฟรม เรย์จาวิค'),
(279, '(74)', 'ยูเอ็มเอฟ เซลฟอสส์ '),
(280, '(74)', 'ไออาร์ เรกยะวิก'),
(281, '(74)', 'กรอตต้า เซลท์ยานาร์เนส'),
(282, '(74)', 'เลคเนียร์ เอฟ '),
(283, '(75)', 'CFR คลูจ'),
(284, '(75)', 'โบโตซานี่'),
(285, '(75)', 'คราอิโอว่า'),
(286, '(111)(75)', 'สเตอัว บูคาเรสต์'),
(287, '(75)', 'แอสตร้า'),
(288, '(75)', 'ดินาโม บูคาเรสต์'),
(289, '(75)', 'โปลิเทคนิก้า อายซ'),
(290, '(75)', 'โปลี ทิมิโซเอร่า'),
(291, '(75)', 'เซ็บซี่ OSK'),
(292, '(75)', 'เอฟซี โวลุนทารี'),
(293, '(75)', 'วิตอรูล คอนสแตนต้า'),
(294, '(75)', 'กาซ เมตัน'),
(295, '(75)', 'คอนคอร์เดีย'),
(296, '(75)', 'ยูเวนตุส บูคาเรสต'),
(297, '(76)', 'บิโตเวีย บิโตฟ'),
(298, '(76)', 'โครบรี้ กวอกูฟ'),
(299, '(76)', 'ปุสซ์ซา'),
(300, '(76)', 'GKSทิคี'),
(301, '(76)', 'สเตล มีเอเลตส์'),
(302, '(76)', 'ออด้าโอพอล'),
(303, '(76)', 'กรุดอดซ์'),
(304, '(76)', 'โคจ์นิเช่'),
(305, '(76)', 'เลกนีซา'),
(306, '(76)', 'ราโคว์ เชนสโตโควา'),
(307, '(76)', 'โกลนิค เลชน่า'),
(308, '(76)', 'ซาเกิลบี ซอสโนเวียค'),
(309, '(76)', 'โอส์ซไทน'),
(310, '(76)', 'โปกอน ซีดล์เซ'),
(311, '(76)', 'จีเคเอส คาโตวีตเซ'),
(312, '(76)', 'วิกิรี่ โซวาลกิ'),
(313, '(76)', 'ป็อดเบสคิดเซีย'),
(314, '(76)', 'รุช ซอร์ซอฟ'),
(315, '(77)', 'ดินาโม ซาเกร็บ'),
(316, '(77)', 'ไฮจ์ดุ๊กสปลิต'),
(317, '(77)', 'HNK ริเยก้า'),
(318, '(77)', 'โอซิเย็ค'),
(319, '(77)', 'สลาเวน เบลูโป'),
(320, '(77)', 'อินเตอร์ ซาเปรซิค'),
(321, '(77)', 'NK โลโคโมติวา'),
(322, '(77)', 'ซิบาเลีย'),
(323, '(77)', 'อิสตร้า'),
(324, '(77)', 'รูเดส'),
(325, '(80)', 'เอชเจเค เฮลซิงกิ'),
(326, '(80)', 'ลาห์ติ'),
(327, '(80)', 'คูพีเอส'),
(328, '(80)', 'วีพีเอส วาซ่า'),
(329, '(80)', 'อิลเวส แทมเปเร่'),
(330, '(80)', 'เอสเจเค ไซนาโจกิ'),
(331, '(80)', 'อินเตอร์ ตูร์คู'),
(332, '(80)', 'ไอเอฟเค มารีฮามน์'),
(333, '(80)', 'โรพีเอส โรวานีมี่'),
(334, '(80)', 'พีเอส เคมิ คิงส์'),
(335, '(80)', 'เอชไอเอฟเค'),
(336, '(80)', 'จีวาคีล่า เจเค '),
(337, '(82)', 'นอร์ดเจลแลนด์'),
(338, '(82)', 'บรอนด์บี้'),
(339, '(82)', 'เอซี ฮอร์เซ่นส์'),
(340, '(83)', 'มิดทิลแลนด์'),
(341, '(82)', 'ซอนเดอร์ไจสกี'),
(342, '(82)', 'โอเดนเซ่'),
(343, '(82)', 'โฮโบร'),
(344, '(111)(82)', 'เอฟซี โคเปนเฮเกน'),
(345, '(82)', 'ซิลเคบอร์ก'),
(346, '(82)', 'เฮลซิงกอร์'),
(347, '(82)', 'อาร์ฮุส เอจีเอฟ'),
(348, '(82)', 'ลิงบี้'),
(349, '(82)', 'อัลบอร์ก'),
(350, '(82)', 'แรนเดอร์ส'),
(351, '(83)', 'เวเจิล'),
(352, '(83)', 'บราแบรนด์'),
(353, '(83)', 'เอสเบิร์ก'),
(354, '(83)', 'ไนโคบิง เอฟซี'),
(355, '(83)', 'ทริสเต็ด'),
(356, '(83)', 'เวนซิสเซล'),
(357, '(83)', 'เฟรเดอริเซีย'),
(358, '(83)', 'โรสกิลด์'),
(359, '(83)', 'เฮอฟอล์จ โคเก้'),
(360, '(83)', 'สคีฟซ์'),
(361, '(83)', 'เอเมเกอร์'),
(362, '(83)', 'วีบรอก'),
(363, '(84)', 'เอฟซี วิคตอเรีย พัลเซ่น	'),
(364, '(111)(84)', 'สลาเวีย ปราก'),
(365, '(84)', 'ซิกม่า โอโลมุช'),
(366, '(84)', 'สโลวัคโก้'),
(367, '(84)', 'สปาร์ตาปราก'),
(368, '(84)', 'เอฟซี โบฮีเมี่ยนส์'),
(369, '(84)', 'เอ็มเอฟเค คาร์วีน่า'),
(370, '(84)', 'เทปลิเซ่'),
(371, '(84)', 'สโลวาน ลิเบอเรช'),
(372, '(84)', 'บานิค ออสตราว่า'),
(373, '(84)', 'ฟาสตาฟ ซลิน'),
(374, '(84)', 'ดูก้า ปรากซ์'),
(375, '(84)', 'เบามิต ยาโบลเนค'),
(376, '(84)', 'มลาด้า โบเลสลาฟ'),
(377, '(84)', 'เบอโน่'),
(378, '(84)', 'วิโซซิน่า จิคลาวา'),
(379, '(85)', 'โชนัน เบลมาเร่'),
(380, '(85)', 'อวิสปา ฟูกูโอกะ	'),
(381, '(85)', 'นาโกย่า แกรมปัส เอต'),
(382, '(85)', 'โตกุชิม่า วอร์ทิส'),
(383, '(85)', 'วี-วาเรน นากาซากิ'),
(384, '(85)', 'โยโกฮามา เอฟซี'),
(385, '(85)', 'เจอีเอฟ ยูไนเต็ด อิชิฮารา '),
(386, '(85)', 'ฟาเจียโน โอคายามา'),
(387, '(85)', 'โออิตะ ตรินิต้า'),
(388, '(85)', 'มอนเตดิโอะ ยามากาตะ'),
(389, '(85)', 'โตเกียวเวอร์ดี้'),
(390, '(85)', 'มิโตะ ฮอลลี่ฮ็อค'),
(391, '(85)', 'มัตซูโมโตะ ยามากะ เอฟซี	'),
(392, '(85)', 'มาชิดา เซลเวีย'),
(393, '(85)', 'เกียวโต แซงก้า'),
(394, '(85)', 'เอฮิเมะเอฟซี'),
(395, '(85)', 'เอฟซี กิฟู'),
(396, '(85)', 'ซไวเก้น คานาซาวะ เอฟซี'),
(397, '(85)', 'โรอัสโซ่ คุมาโมโตะ'),
(398, '(85)', 'คามาทามาเร่ ซานูกิ'),
(399, '(85)', 'รีโนฟา ยามากูชิ'),
(400, '(85)', 'เธสปา คูซัทส'),
(401, '(86)', 'ชอนบุกฮุนไดมอเตอร์'),
(402, '(86)', 'ุลซาน ฮุนได โฮรางอี'),
(403, '(86)', 'ซูวอน ซัมซุง บลูวิงส'),
(404, '(86)', 'เจจู ยูไนเต็ด เอฟซี'),
(405, '(86)', 'เอฟซี โซล'),
(406, '(86)', 'แกงวัน เอฟซี'),
(407, '(86)', 'โปฮัง สตีลเลอร์'),
(408, '(86)', 'ชุนนัมดรากอนส์'),
(409, '(86)', 'แดกู เอฟซี'),
(410, '(86)', 'ซังจู ซังมู ฟีนิกซ์'),
(411, '(86)', 'อินชอนยูไนเต็ด'),
(412, '(86)', 'กวางจู เอฟซี'),
(413, '(86)', 'กยองนัม เอฟซี'),
(414, '(87)', 'ปูซานไอปาร์ค'),
(415, '(87)', 'บูโชน เอฟซี'),
(416, '(87)', 'ซองนัม เอฟซี'),
(417, '(87)', 'อาซัน มูกุงฮวา เอฟซี'),
(418, '(87)', 'ซูวอน ซิตี้ '),
(419, '(87)', 'เอฟซี อันยาง'),
(420, '(87)', 'อันซัน กรีนเนอรซ์ เอฟซี'),
(421, '(87)', 'โซล อี-แลน เอฟซี'),
(422, '(87)', 'แทจอน ซิติเซน'),
(423, '(88)', 'วิเทสส์'),
(424, '(88)', 'อูเทร็คท์'),
(425, '(88)', 'วีวีวี เฟนโล่'),
(426, '(88)', 'เอฟซี ซวอลล์'),
(427, '(88)', 'พีเอสวี'),
(428, '(88)', 'เฟเยนูร์ด'),
(429, '(88)', 'เฮราเคิ่ลส์'),
(430, '(88)', 'เอ็กเซลซิเออร์'),
(431, '(88)', 'โกรนิงเก้น'),
(432, '(88)', 'ฮีเรนวีน'),
(433, '(88)', 'อัคร์มาร์'),
(434, '(88)', 'อาแจ๊กซ์'),
(435, '(88)', 'ทเวนเต้'),
(436, '(88)', 'วิลเล่ม ทเว'),
(437, '(88)', 'โรด้า เจซี	'),
(438, '(88)', 'เอ็นเอซี เบรด้า'),
(439, '(88)', 'เดนฮาก'),
(440, '(88)', 'สปาร์ต้า ร็อตเตอร์ดัม'),
(441, '(89)', 'อัลเมเร่ ซิตี้	'),
(442, '(89)', 'เดอ กราฟสคัป	'),
(443, '(89)', 'เดน บอสช์	'),
(444, '(89)', 'ดอร์เดรชท์'),
(445, '(89)', 'เอฟซี ไอนด์โฮเฟ่น'),
(446, '(89)', 'เอ็มเมน'),
(447, '(89)', 'FC ออสส์	'),
(448, '(89)', 'โวเลนดัม'),
(449, '(89)', 'ฟอร์ทูน่า ซิตตาร์ด'),
(450, '(89)', 'โก อเฮด อีเกิ้ลส์'),
(451, '(89)', 'เฮลมอนด์ สปอร์ต'),
(452, '(89)', 'อาแจกซ์ (เยาวชน)'),
(453, '(89)', 'จอง อาแซด อัลค์มาร์'),
(454, '(89)', 'พีเอสวี (เยาวชน)'),
(455, '(89)', 'อูเทร็คท์ (เยาวชน)'),
(456, '(89)', 'มาสทริสช์'),
(457, '(89)', 'ไนจ์เมเก้น'),
(458, '(89)', 'วาลไวค์'),
(459, '(89)', 'คัมบูร์'),
(460, '(89)', 'เทลสตาร์'),
(461, '(90)', 'โตรอนโต'),
(462, '(90)', 'นิวยอร์ก ซิตี้'),
(463, '(90)', 'ชิคาโก้ ไฟร์	'),
(464, '(90)', 'นิวยอร์ค เรดบูลล์'),
(465, '(90)', 'โคลัมบัส ครูว์'),
(466, '(90)', 'แอตแลนต้า ยูไนเต็ด'),
(467, '(90)', 'มอนทรีออล'),
(468, '(90)', 'ออร์แลนโด้ ซิตี้'),
(469, '(90)', 'ฟิลาเดลเฟีย'),
(470, '(90)', 'นิวอิงแลนด์ รีโวลูชั่น'),
(471, '(90)', 'ดี.ซี. ยูไนเต็ด'),
(472, '(90)', 'ฮูสตันไดนาโม'),
(473, '(90)', 'ซีแอตเติล ซาวน์เดอร์'),
(474, '(90)', 'แคนซัส ซิตี้ วิซาร์ด'),
(475, '(90)', 'ดาลัส'),
(476, '(90)', 'พอร์ทแลนด์'),
(477, '(90)', 'ซานโฮเซ'),
(478, '(90)', 'แวนคูเวอร์'),
(479, '(90)', 'รีล ซอล์ท เลค'),
(480, '(90)', 'แอลเอ กาแล็กซี่'),
(481, '(90)', 'โคโลราโด้ แรพปิดส์'),
(482, '(90)', 'มินนิโซตา ยูไนเต็ด'),
(483, '(91)', 'เบรสชา'),
(484, '(91)', 'บีปาแลร์โม่'),
(485, '(91)', 'ปาร์ม่า'),
(486, '(91)', 'บารี'),
(487, '(91)', 'เชเซน่า'),
(488, '(91)', 'เอ็มโปลี'),
(489, '(91)', 'อัสโคลี่'),
(490, '(91)', 'เปรูจา'),
(491, '(91)', 'แตร์นาน่า'),
(492, '(91)', 'บังกอร์ เอฟซี'),
(493, '(91)', 'เปสคารา'),
(494, '(91)', 'ซาแลร์นิตาน่า'),
(495, '(91)', 'โฟรซิโนเน่'),
(496, '(91)', 'สเปเซีย'),
(497, '(91)', 'เครโมเนเซ่'),
(498, '(91)', 'อเวลลิโน่'),
(499, '(91)', 'ชิตตาเดลล่า'),
(500, '(91)', 'ฟอกเจีย'),
(501, '(91)', 'โนวาร่า'),
(502, '(91)', 'โปร เวอร์เซลลี่'),
(503, '(91)', 'เอซีดี วีร์ตุส เอ็นเตลล่า'),
(504, '(91)', 'คาร์ปิ	'),
(505, '(92)', 'สตวร์ม กราซ'),
(506, '(92)', 'ซัลซ์บวร์ก'),
(507, '(92)', 'LASK ลินซ์'),
(508, '(92)', 'เทรควอลเดอร์ แอดมิร่า'),
(509, '(92)', 'ราปิด เวียนนา'),
(510, '(92)', 'แมตเตอร์บวร์ก'),
(511, '(92)', 'ออสเตรียเวียนนา'),
(512, '(92)', 'เรนดอร์ฟ อัลทัช'),
(513, '(92)', 'โวล์ฟสแบร์เกอร์'),
(514, '(92)', 'ซังค์ พอลเท่น'),
(515, '(93)', 'มัลโม่'),
(516, '(93)', 'ยอร์การ์เด้น'),
(517, '(93)', 'ซิริอุส'),
(518, '(93)', 'เอไอเค โซลน่า'),
(519, '(93)', 'นอร์โคปิง'),
(520, '(93)', 'ฮัคเค่น'),
(521, '(93)', 'โอเรโบร'),
(522, '(93)', 'เอลฟ์สเบิร์ก'),
(523, '(93)', 'โกเตนเบิร์ก'),
(524, '(93)', 'ฮัมมาร์บี้'),
(525, '(93)', 'ยอนโคปิง'),
(526, '(93)', 'คาลม่าร์'),
(527, '(93)', 'ซันด์สวาลล์'),
(528, '(93)', 'ฮาล์มสตัด'),
(529, '(93)', 'เอเอฟซี เอซีลส์ทูนา'),
(530, '(94)', 'บรอมมาโปร์คาร์น่า'),
(531, '(94)', 'ดัลคุลด์'),
(532, '(94)', 'ออสเตอร์ ไอเอฟ'),
(533, '(94)', 'เฮลซิงบอร์ก'),
(534, '(94)', 'ฟัลเค่นเบิร์ก'),
(535, '(94)', 'เทรลเลบอร์ก'),
(536, '(94)', 'เดเกอร์ฟอร์ส'),
(537, '(94)', 'ออร์กรีเต้'),
(538, '(94)', 'IFK วาร์นาโม่'),
(539, '(94)', 'GAIS โกเตบอร์ก'),
(540, '(94)', 'วาร์เบิร์ก'),
(541, '(94)', 'นอร์บี้ ไอเอฟ'),
(542, '(94)', 'แอตวิดาเบิร์ก'),
(543, '(94)', 'ซีเรียสคา FC'),
(544, '(94)', 'เกเฟิ่ล'),
(545, '(94)', 'ไอเค ฟรีจ'),
(546, '(95)', 'บูดาเปสต์ ฮอนเวด'),
(547, '(95)', 'วีดีโอตัน'),
(548, '(95)', 'ดิออสกียอร์'),
(549, '(95)', 'เฟเรนซ์วารอซี่'),
(550, '(95)', 'วาซาส บูดาเปสต์'),
(551, '(95)', 'เมโซโคเวสด์'),
(552, '(95)', 'ปาคซิ'),
(553, '(95)', 'อูจเปสต์'),
(554, '(95)', 'ฮาราดาส'),
(555, '(95)', 'Balmazujvaros'),
(556, '(95)', 'เดเบรเซน'),
(557, '(95)', 'พัสกุส อเคเดมี่'),
(558, '(96)', 'ไนย์รีคีฮาซ่า'),
(559, '(96)', 'คิสวาร์ดา FC'),
(560, '(96)', 'เอ็มทีเค บูดาเปสต์'),
(561, '(96)', 'Kazincbarcikai SC'),
(562, '(96)', 'Mosonmagyarovari'),
(563, '(96)', 'โซลนอค'),
(564, '(96)', 'จีเยอร์ม็อต'),
(565, '(96)', 'เบเคสซาบา'),
(566, '(96)', 'Budafoki'),
(567, '(96)', 'กิยอร์'),
(568, '(96)', 'แวค เอฟซี'),
(569, '(96)', 'Cegledi VSE'),
(570, '(96)', 'ซิโอฟ็อก'),
(571, '(96)', 'เซเก็ด'),
(572, '(96)', 'Aqvital FC'),
(573, '(96)', 'Soroksar'),
(574, '(96)', 'บูเดาร์ซี่'),
(575, '(96)', 'โดรอกิ เอฟซี'),
(576, '(96)', 'โซโปรนี่'),
(577, '(96)', 'ซาเลเกอสร์เซ็ก'),
(578, '(97)', 'ออปพาวา'),
(579, '(97)', 'บูเดโจวิซ'),
(580, '(97)', 'ทริเน็ค'),
(581, '(97)', 'Sellier & Bellot Vlasim'),
(582, '(97)', 'Olympia H.Kralove'),
(583, '(97)', 'ฮราเดค คราลอฟ'),
(584, '(97)', 'ฟรีเดค-มิสตัค'),
(585, '(97)', 'อัสติ เนด ลาเบม'),
(586, '(97)', 'เซซิโมโว่'),
(587, '(97)', 'วิคตอเรีย ซิซคอฟ'),
(588, '(97)', 'พาร์ดูบิซ'),
(589, '(97)', 'ซนอจโม่'),
(590, '(97)', 'MFK วิทโควิซ'),
(591, '(97)', 'โซโคโลฟ'),
(592, '(97)', 'ไพรบราม'),
(593, '(97)', 'วานส์ดอร์ฟ'),
(594, '(98)', 'อ๊อกซ์ฟอร์ด'),
(595, '(98)', 'ปีเตอร์โบโร่'),
(596, '(98)', 'วีแกน'),
(597, '(98)', 'ฟลีตวู้ด ทาวน์'),
(598, '(98)', 'แบรดฟอร์ด'),
(599, '(98)', 'ชรูว์สบิวรี่'),
(600, '(98)', 'ดอนคาสเตอร์'),
(601, '(98)', 'ร็อทเธอร์แฮม'),
(602, '(98)', 'พลีมัธ'),
(603, '(98)', 'แบล็คพูล'),
(604, '(98)', 'วอล์ซอลล์'),
(605, '(98)', 'ปอร์ทสมัธ'),
(606, '(98)', 'ชาร์ลตัน'),
(607, '(98)', 'บิวรี่'),
(608, '(98)', 'เซาธ์เอนด์'),
(609, '(98)', 'สคันธอร์ป'),
(610, '(98)', 'วิมเบอร์ดัน'),
(611, '(98)', 'จิลลิ่งแฮม'),
(612, '(98)', 'โรชเดล'),
(613, '(98)', 'มิลตัน คีนส์ ดอนส์	'),
(614, '(98)', 'นอร์ทแธมป์ตัน'),
(615, '(98)', 'แบล็คเบิร์น'),
(616, '(98)', 'โอล์ดแฮม'),
(617, '(98)', 'บริสตอลโรเวอร์ส'),
(618, '(99)', 'ซัลกิริส'),
(619, '(99)', 'ทราไก FK'),
(620, '(99)', 'ซูดูว่า'),
(621, '(99)', 'แอตแลนตาส ไคลเปด้า'),
(622, '(99)', 'อุเทนิส อุเทน่า'),
(623, '(99)', 'FK โจนาว่า'),
(624, '(99)', 'สตัมบราส'),
(625, '(100)', 'สปาร์ตัก'),
(626, '(100)', 'เลียปายา'),
(627, '(100)', 'เวนท์สปิลส'),
(628, '(100)', 'ริก้า เอฟซี	'),
(629, '(100)', 'รีกาส ฟุตโบลา สโคลา'),
(630, '(100)', 'เจลกาว่า'),
(631, '(100)', 'เมตตา'),
(632, '(100)', 'SK บาบิเต้	'),
(633, '(101)', 'เซนิต'),
(634, '(101)', 'รอสโตฟ'),
(635, '(101)', 'โลโคโมทีฟ มอสโค'),
(636, '(111)(101)', 'ซีเอสเคเอ มอสโค'),
(637, '(101)', 'คราสโนดาร์'),
(638, '(101)', 'FK อูฟ่า'),
(639, '(101)', 'เตเรค กรอซนี่'),
(640, '(101)', 'รูบิน คาซาน'),
(641, '(101)', 'อูราล'),
(642, '(101)', 'ดินาโม มอสโค'),
(643, '(101)', 'เอฟเค โทสโน'),
(644, '(101)', 'อิเนอจิย่า'),
(645, '(101)', 'อาร์เซน่อล ทูล่า'),
(646, '(101)', 'แอนซี่'),
(647, '(101)', 'อัมคาร์ เปิร์ม'),
(648, '(102)', 'คริลย่า โซเวียตอฟ'),
(649, '(102)', 'เยนีเซย์'),
(650, '(102)', 'โวลการ์ กัซพรูม อัสตราแกน'),
(651, '(102)', 'ดินาโม เซนต์ ปีเตอร์สเบิร์ก'),
(652, '(102)', 'เอฟเค ตัมบอฟ'),
(653, '(102)', 'ชินนิค ยาโรสลาฟล์'),
(654, '(102)', 'บัลติก้า'),
(655, '(102)', 'สปาร์ตัก มอสโค'),
(656, '(102)', 'ทอมสค์'),
(657, '(102)', 'คูบาน'),
(658, '(102)', 'ซิเบียร์'),
(659, '(102)', 'เอฟเค คิมกี้'),
(660, '(102)', 'โอเรนเบิร์ก'),
(661, '(102)', 'โอลิมปิเยทส์'),
(662, '(102)', 'เซนิต II'),
(663, '(102)', 'ลุช เอเนอร์จีย่า'),
(664, '(102)', 'อแวนการ์ด คุร์สค'),
(665, '(102)', 'เอฟเค ทิวเมน'),
(666, '(102)', 'โรโตร์ วอลโกกราด'),
(667, '(102)', 'ฟาเคล โวเรเนสก์'),
(668, '(103)', 'ดินาโม เคียฟ'),
(669, '(103)', 'ชักตาร์ โดเน็ตส์ก'),
(670, '(103)', 'โอลิมปิค โดเน็ตส์ก'),
(671, '(103)', 'วอร์สกล้า'),
(672, '(103)', 'FC มาริอูพอล'),
(673, '(103)', 'เวเรส ริฟเน่'),
(674, '(103)', 'Stal Kamianske'),
(675, '(103)', 'ซอร์ย่า ลูแฮงส์'),
(676, '(103)', 'คาร์ปาตี้'),
(677, '(103)', 'โอเล็กซานเดรีย'),
(678, '(103)', 'Zirka Kropyvnytskyi'),
(679, '(103)', 'เชอร์โนโมเร็ตส์'),
(680, '(104)', 'ดารูล ทักซิม'),
(681, '(104)', 'เคดาห์ เอฟเอ'),
(682, '(104)', 'ปาหัง'),
(683, '(104)', 'เฟลด้า'),
(684, '(104)', 'เซลังงอร์'),
(685, '(104)', 'เปรัค'),
(686, '(104)', 'พีเคเอ็นเอส เอฟซี'),
(687, '(104)', 'PBDKT'),
(688, '(104)', 'มะละกา ยูไนเต็ด'),
(689, '(104)', 'ซาราวัค'),
(690, '(104)', 'กลันตัน'),
(691, '(104)', 'Penang FA'),
(692, '(105)', 'ฟิลิปปินส์'),
(693, '(108)', 'คอรินเทียนส์ เปาลิสตา (เอสพี)'),
(694, '(108)', 'เกรมิโอ้ ปอร์โต้ '),
(695, '(108)', 'ซานโตส'),
(696, '(108)', 'พัลไมรัส'),
(697, '(108)', 'ฟลาเมงโก'),
(698, '(108)', 'สปอร์ต คลับ เรซิเฟ่ พีอี'),
(699, '(108)', 'แอตเลติโก้ พาราเนนเซ่'),
(700, '(108)', 'โบตาโฟโก้ (อาร์เจ)'),
(701, '(108)', 'ครูไซโร่ (เอ็มจี)'),
(702, '(108)', 'ฟลูมิเนนเซ (อาร์เจ)'),
(703, '(108)', 'อัตเลติโก มิไนโร่	'),
(704, '(108)', 'กอริติบ้า พีอาร์ '),
(705, '(108)', 'วาสโก ดา กามา (อาร์เจ)'),
(706, '(108)', 'ปอนเต เปรตา'),
(707, '(108)', 'บาเฮีย บีเอ'),
(708, '(108)', 'เซาเปาโล'),
(709, '(107)(108)', 'ชาเปโคเอนเซ่ เอสซี'),
(710, '(108)', 'อาไว เอฟซี เอสซี'),
(711, '(108)', 'วิตอเรีย บีเอ'),
(712, '(108)', 'แอตเลติโก้ กัวเนนเซ่'),
(713, '(109)', 'วิสล่า คราคอฟ'),
(714, '(109)', 'จาจิลโลเนีย'),
(715, '(109)', 'ซาเกลบี้ รูบิ้น'),
(716, '(109)', 'เลช พอซนัน'),
(717, '(109)', 'กอร์นิค ซาบร์เซ่'),
(718, '(109)', 'อาร์ก้า กดิเนีย'),
(719, '(109)', 'วิสล่า พล็อค'),
(720, '(109)', 'ลีเกีย วอร์ซอว์'),
(721, '(109)', 'โคโรน่า'),
(722, '(109)', 'ลีเชีย'),
(723, '(109)', 'แซนเดคจา'),
(724, '(109)', 'ไนไซค์ซ่า'),
(725, '(109)', 'สลาสค์ โลคอฟ'),
(726, '(109)', 'คราโคเวีย คราคอฟ'),
(727, '(109)', 'โปกอน'),
(728, '(109)', 'ปิแอส กลิวิส'),
(729, '(111)(110)', 'คาราบัค'),
(730, '(110)', 'เอฟเค กาบาล่า'),
(731, '(110)', 'สแตนดาร์ด ซัมเควียท'),
(732, '(110)', 'ซีล่า เอฟเค'),
(733, '(110)', 'ซาบาลี'),
(734, '(110)', 'เอฟเค อินเตอร์ บาคู'),
(735, '(110)', 'เอฟเคคาปาร์สคันก่า'),
(736, '(110)', 'เอฟซี เนฟต์ชี่ บาคู'),
(737, '(112)', 'ลาร์นาคา'),
(738, '(112)', 'เออีแอล ลิมาสโซ'),
(739, '(111)(112)', 'อาโปเอล นิโคเซีย'),
(740, '(112)', 'Alki Oroklini'),
(741, '(112)', 'อนอร์โธซิส'),
(742, '(112)', 'อพอลล่อน ลิมาสโซล'),
(743, '(112)', 'AEL ลิมาสซอล'),
(744, '(112)', 'โดซ่า คาโตโกเปีย'),
(745, '(112)', 'เออร์มิส เอราดิพเปา'),
(746, '(112)', 'เอธนิกอส อัชนาส'),
(747, '(112)', 'ซาลามิส'),
(748, '(112)', 'Olympiakos Nic'),
(749, '(112)', 'โอโมเนีย นิโคเซีย'),
(750, '(112)', 'ปาฟอส FC'),
(751, '(113)', 'อคาเดมิโค วิสซู'),
(752, '(113)', 'ซานตาคลารา'),
(753, '(113)', 'ฟามาลิเคา'),
(754, '(113)', 'อูเนียว มาไดรา'),
(755, '(113)', 'โอลิเวียร์เร็นเซ่'),
(756, '(113)', 'Real SC'),
(757, '(113)', 'โควา พีดาเด้'),
(758, '(113)', 'ไลโซส'),
(759, '(113)', 'อคาเดมิก้า'),
(760, '(113)', 'สปอร์ติ้ง ซีพี B'),
(761, '(113)', 'วาร์ซิม'),
(762, '(113)', 'กิล วิเซนเต้'),
(763, '(113)', 'นาซิอองนาล'),
(764, '(113)', 'เพนาฟิเอล'),
(765, '(113)', 'ปอร์โต้'),
(766, '(113)', 'อรัวก้า'),
(767, '(113)', 'เบนฟิก้า B'),
(768, '(113)', 'บราก้า B'),
(769, '(113)', 'กิมาไรส์ B'),
(770, '(113)', 'สปอร์ติ้ง โควิลฮา'),
(771, '(114)', 'เบนฟิก้า'),
(772, '(111)(114)', 'สปอร์ติ้ง ลิสบอน'),
(773, '(114)', 'ริโอ อาฟ'),
(774, '(114)', 'ปอร์ติโมเนนเซ่'),
(775, '(114)', 'เบเลเนนส์'),
(776, '(114)', 'มาริติโม่'),
(777, '(114)', 'บราก้า'),
(778, '(114)', 'เอสโตริล'),
(779, '(114)', 'วิตอเรีย กิมาไรส์ '),
(780, '(114)', 'เฟยเรนเซ่'),
(781, '(114)', 'โมไรเรนเซ่'),
(782, '(114)', 'ปากอส เดอ เฟอร์ไรร่า'),
(783, '(114)', 'ซีดี ทอนแดล่า'),
(784, '(114)', 'วิตอเรีย เซตูบัล '),
(785, '(114)', 'อาเวส'),
(786, '(114)', 'ชาเวซ'),
(787, '(114)', 'เบาวิสต้า'),
(788, '(115)', 'ซูริค'),
(789, '(111)(115)', 'ยัง บอยส'),
(790, '(115)', 'บาเซิ่ล'),
(791, '(115)', 'ลูเซิร์น'),
(792, '(115)', 'ซิยง'),
(793, '(115)', 'เซนต์ กัลเลน'),
(794, '(115)', 'ลูกาโน'),
(795, '(115)', 'เอฟซี ธูน'),
(796, '(115)', 'โลซาน'),
(797, '(115)', 'กราสฮอปเปอร์');

-- --------------------------------------------------------

--
-- Table structure for table `teamvs`
--

CREATE TABLE `teamvs` (
  `t_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `datetime_exp` datetime NOT NULL,
  `t_time` text COLLATE utf8_unicode_ci NOT NULL,
  `date_teame` date NOT NULL,
  `t_namevs` text COLLATE utf8_unicode_ci NOT NULL,
  `t_chanel` text COLLATE utf8_unicode_ci NOT NULL,
  `t_linktype` text COLLATE utf8_unicode_ci NOT NULL,
  `t_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `t_linktype2` text COLLATE utf8_unicode_ci NOT NULL,
  `t_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `t_link3` text COLLATE utf8_unicode_ci NOT NULL,
  `t_linktype3` text COLLATE utf8_unicode_ci NOT NULL,
  `t_link4` text COLLATE utf8_unicode_ci NOT NULL,
  `t_linktype4` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `teamvs`
--

INSERT INTO `teamvs` (`t_id`, `p_id`, `datetime_exp`, `t_time`, `date_teame`, `t_namevs`, `t_chanel`, `t_linktype`, `t_link1`, `t_linktype2`, `t_link2`, `t_link3`, `t_linktype3`, `t_link4`, `t_linktype4`) VALUES
(163, 68, '2017-08-11 16:50:00', '16:50', '2017-08-11', 'เซบีญา VS คิโรน่า', 'ch6', '', '', '', '', '', '', '', ''),
(164, 105, '2017-08-15 16:30:00', '16:30', '2017-08-15', 'ไทย VS ฟิลิปปินส์', 'ch1', '', '', '', '', '', '', '', ''),
(165, 107, '2017-08-15 17:30:00', '17:30', '2017-08-15', 'อูราวะ เรด ไดมอนส์ VS ชาเปโคเอนเซ่ เอสซี', 'ch2', '', '', '', '', '', '', '', ''),
(166, 109, '2017-08-15 20:30:00', '20:30', '2017-08-15', 'สลาสค์ โลคอฟ VS ไนไซค์ซ่า', 'ch3', '', '', '', '', '', '', '', ''),
(167, 111, '2017-08-15 23:00:00', '23:00', '2017-08-15', 'คาราบัค VS เอฟซี โคเปนเฮเกน', 'ch4', '', '', '', '', '', '', '', ''),
(168, 94, '2017-08-16 00:00:00', '00:00', '2017-08-16', 'เทรลเลบอร์ก VS นอร์บี้ ไอเอฟ', 'ch1', '', '', '', '', '', '', '', ''),
(169, 94, '2017-08-16 00:00:00', '00:00', '2017-08-16', 'เดเกอร์ฟอร์ส VS ฟัลเค่นเบิร์ก', 'ch6', '', '', '', '', '', '', '', ''),
(170, 111, '2017-08-16 01:45:00', '01:45', '2017-08-16', 'สปอร์ติ้ง ลิสบอน VS สเตอัว บูคาเรสต์', 'ch8', '', '', '', '', '', '', '', ''),
(171, 111, '2017-08-16 01:45:00', '01:45', '2017-08-16', 'อาโปเอล นิโคเซีย VS สลาเวีย ปราก', 'ch7', '', '', '', '', '', '', '', ''),
(172, 111, '2017-08-16 01:45:00', '01:45', '2017-08-16', 'ฮอฟเฟนไฮม์ VS ลิเวอร์พูล', 'ch9', '', '', '', '', '', '', '', ''),
(173, 111, '2017-08-16 01:45:00', '01:45', '2017-08-16', 'ยัง บอยส VS ซีเอสเคเอ มอสโค', 'ch10', '', '', '', '', '', '', '', ''),
(174, 72, '2017-08-16 01:45:00', '01:45', '2017-08-16', 'ฮัลล์ ซิตี้ VS วูล์ฟแฮมป์ตัน วันเดอร์เรอร์ส', 'ch10', '', '', '', '', '', '', '', ''),
(175, 72, '2017-08-16 01:45:00', '01:45', '2017-08-16', 'ฮัลล์ ซิตี้ VS วูล์ฟแฮมป์ตัน วันเดอร์เรอร์ส', 'ch11', '', '', '', '', '', '', '', ''),
(176, 72, '2017-08-16 02:00:00', '02:00', '2017-08-16', 'เรดดิ้ง VS แอสตัน วิลลา', 'ch12', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch`
--
ALTER TABLE `ch`
  ADD PRIMARY KEY (`t_chanel`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `press`
--
ALTER TABLE `press`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_tded_program`
--
ALTER TABLE `tbl_tded_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teames`
--
ALTER TABLE `teames`
  ADD PRIMARY KEY (`ts_id`);

--
-- Indexes for table `teamvs`
--
ALTER TABLE `teamvs`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ch`
--
ALTER TABLE `ch`
  MODIFY `t_chanel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `press`
--
ALTER TABLE `press`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `tbl_tded_program`
--
ALTER TABLE `tbl_tded_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teames`
--
ALTER TABLE `teames`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;
--
-- AUTO_INCREMENT for table `teamvs`
--
ALTER TABLE `teamvs`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
