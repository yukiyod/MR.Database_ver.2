-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2020 年 6 月 19 日 17:32
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `MR_database`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `mrdb_kern_table`
--

CREATE TABLE `mrdb_kern_table` (
  `id` int(11) NOT NULL,
  `genre` varchar(128) NOT NULL,
  `s_title` varchar(128) NOT NULL,
  `o_title` varchar(128) NOT NULL,
  `composer` varchar(128) NOT NULL,
  `kern` varchar(20000) NOT NULL,
  `contributor` varchar(128) DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `mrdb_kern_table`
--

INSERT INTO `mrdb_kern_table` (`id`, `genre`, `s_title`, `o_title`, `composer`, `kern`, `contributor`, `indate`) VALUES
(1, 'Classical', 'test', 'test', 'test', 'testtest', 'YukikoYoden', '2020-06-10 02:49:15'),
(2, 'Classical', 'indea', '222', '222', '33333', 'YukikoYoden', '2020-06-10 03:15:14'),
(3, 'FilmScore', 'MGM', 'Home Sweet Home', 'Bishop', '!!!!SEGMENT: ss003a-home-sweet-home.krn\r\n!!!COM: Bishop\r\n!!!OTL: Home Sweet Home\r\n!!!ARE: United States\r\n!!!ONB: Suitable for Northern quiet scenes, farm, old folks, etc.\r\n!!!OMD: Andante\r\n**kern	**kern	**dynam\r\n*part1	*part1	*part1\r\n*staff2	*staff1	*\r\n*clefF4	*clefG2	*\r\n*k[b-e-]	*k[b-e-]	*\r\n*M4/4	*M4/4	*\r\n*met(c)	*met(c)	*\r\n*MM108	*MM108	*MM108\r\n!!LO:TX:a:i:t=con espress\r\n4r	(>8b-L	p\r\n.	8ccJ	.\r\n=1	=1	=1\r\n*^	*^	*\r\n(>8BB-L	2BB-	2dd	2b- 2f	<\r\n8F	.	.	.	.\r\n8B-	.	.	.	.\r\n8FJ)	.	.	.	.\r\n(>8CL	2C	4.ee-	2a 2f	.\r\n8F	.	.	.	.\r\n8A	.	.	.	.\r\n8FJ)	.	8ff)	.	[\r\n*	*	*v	*v	*\r\n=2	=2	=2	=2\r\n(>8DL	2D	(>2ff 2b- 2f	.\r\n8F	.	.	.\r\n8B-	.	.	.\r\n8FJ)	.	.	.\r\n(8GGL	2ryy	4dd 4bn 4f	.\r\n8G	.	.	.\r\n8Bn	.	4ff 4dd 4a-X	.\r\n8GJ))	.	.	.\r\n=3	=3	=3	=3\r\n*	*	*^	*\r\n(>8CL	2C	4.ee- 4.cc	2g	.\r\n8G	.	.	.	.\r\n8c	.	.	.	.\r\n8GJ)	.	8dd 8b-X	.	.\r\n(8FFL>	2ryy	4ee-	2an 2f	.\r\n8F	.	.	.	.\r\n8A	.	4cc	.	.\r\n8FJ)	.	.	.	.\r\n=4	=4	=4	=4	=4\r\n(>8BB-L	2.BB-	2.dd) 2.b- 2.f	2.ryy	.\r\n8F	.	.	.	.\r\n8B-	.	.	.	.\r\n8FJ	.	.	.	.\r\n8B-L	.	.	.	.\r\n8F	.	.	.	.\r\n8D	4r	(>8b-L	4f	.\r\n8CJ)	.	8ccJ	.	.\r\n=5	=5	=5	=5	=5\r\n(>8BB-L	2BB-	2dd	2b- 2f	<\r\n8F	.	.	.	.\r\n8B-	.	.	.	.\r\n8FJ)	.	.	.	.\r\n(>8CL	2C	4.ee-	2a 2f	.\r\n8F	.	.	.	.\r\n8A	.	.	.	.\r\n8FJ)	.	8ff)	.	[\r\n*	*	*v	*v	*\r\n=6	=6	=6	=6\r\n!!linebreak:original\r\n(>8DL	2D	(>2ff 2b- 2f	.\r\n8F	.	.	.\r\n8B-	.	.	.\r\n8FJ)	.	.	.\r\n(>8GGL<	2ryy	4dd 4bn 4f	.\r\n8G	.	.	.\r\n8Bn	.	4ff 4dd 4a-X	.\r\n8GJ)	.	.	.\r\n=7	=7	=7	=7\r\n*	*	*^	*\r\n(>8CL	2C	4.ee- 4.cc	2g	>\r\n8G	.	.	.	.\r\n8c	.	.	.	.\r\n8GJ)	.	8dd 8b-X	.	.\r\n(<8FFL>	2ryy	4ee- 4an 4f	2ryy	.\r\n8F	.	.	.	.\r\n8A	.	4cc 4e-	.	.\r\n8FJ)	.	.	.	.\r\n*	*	*v	*v	*\r\n=8	=8	=8	=8\r\n(>8BB-L	2BB-	2.b-) 2.f 2.d	]\r\n8F	.	.	.\r\n8B-	.	.	.\r\n8FJ	.	.	.\r\n4BB-)	4BB-	.	.\r\n4r	4ryy	(>4ff	< [\r\n*v	*v	*	*\r\n=9||	=9||	=9||\r\n8BB-L> (<8BBB-	4.bb- 4.dd 4.b-	f\r\n!LO:TX:a:i:t=Grandioso	!	!\r\n8D	.	.\r\n8F	.	.\r\n8B-J)	8aa 8ff 8a	.\r\n8BB-L> (<8BBB-	4.gg 4.ee- 4.g	.\r\n8E-	.	.\r\n8G	.	.\r\n8B-J)	8ff) 8dd 8f	.\r\n=10	=10	=10\r\n8BB-L> (<8BBB-	(>2ff 2dd 2f	.\r\n8D	.	.\r\n8F	.	.\r\n8B-J)	.	.\r\n8BB-L> (<8BBB-	4dd 4b- 4d	.\r\n8D	.	.\r\n8F	4ff) 4dd 4f	.\r\n8B-J)	.	.\r\n=11	=11	=11\r\n!!linebreak:original\r\n(<8FFL>	(>4.ee- 4.cc 4.e-	.\r\n8E-	.	.\r\n8F	.	.\r\n8AJ)	8dd 8bn 8d	.\r\n(<8FFL>	4ee- 4cc 4e-	.\r\n8E-	.	.\r\n8F	4cc 4a 4c	.\r\n8AJ)	.	.\r\n=12	=12	=12\r\n*ped	*	*\r\n8BB-L> (<8BBB-	2.dd) 2.b-X 2.d	.\r\n8D	.	.\r\n8F	.	.\r\n[8B-J)	.	.\r\n4B-] 4BB-	.	.\r\n*Xped	*	*\r\n(>4A 4AA	(>4f 4c	.\r\n=13	=13	=13\r\n*	*^	*\r\n4G 4GG	4.b-	2d 2B-	.\r\n4F 4FF	.	.	.\r\n.	8a	.	.\r\n4En 4EEn	4.g	2c#X 2B-	.\r\n4AA) 4AAA	.	.	.\r\n.	8f)	.	.\r\n=14	=14	=14	=14\r\n4D (<4DD	(>2f	2d 2A	.\r\n4C 4CC	.	.	.\r\n4BBn 4BBBn	4d	2d 2A-X	.\r\n4GG 4GGG	4f)	.	.\r\n=15	=15	=15	=15\r\n!	!LO:TX:b:i:t=rit.	!	!\r\n4C 4CC	(>4.e-	2c 2G	.\r\n4BB-X 4BBB-X	.	.	.\r\n.	8d	.	.\r\n!	!LO:TX:b:i:t=dim.	!	!\r\n4AA\\ 4AAA\\	4e- 4c 4F<	2ryy	.\r\n4FF\\ 4FFF\\	4c) 4A 4E-<	.	.\r\n*	*v	*v	*\r\n=16	=16	=16\r\n4BB-\\ 4BBB-\\)	4B- 4D<	.\r\n[4BB- 4EE-	[4b- 4g 4e- [4B-	.\r\n4BB-] 4BBB-	4b-] 4f 4d 4B-]	.\r\n=||	=||;	=||\r\n*-	*-	*-\r\n!!!system-decoration: {(s1,s2)}\r\n!!!RDF**kern: > = above\r\n!!!RDF**kern: < = below\r\n', 'YukikoYoden', '2020-06-10 04:02:59'),
(4, 'FilmScore', 'scoret', 'edittest', 'chopin', 'chopchop', 'YukikoYoden', '2020-06-11 22:24:27'),
(5, 'Classical', 'my chorales', 'From the Depths of My Heart', 'J.S.Bach', '!!!COM:	Bach, Johann Sebastian\r\n!!!CDT:	1685/02/21/-1750/07/28/\r\n!!!OTL@@DE:	Aus meines Herzens Grunde\r\n!!!OTL@EN:      From the Depths of My Heart\r\n!!!SCT:	BWV 269\r\n!!!PC#:	1\r\n!!!AGN:	chorale\r\n**kern	**kern	**kern	**kern\r\n*ICvox	*ICvox	*ICvox	*ICvox\r\n*Ibass	*Itenor	*Ialto	*Isoprn\r\n*I\"Bass	*I\"Tenor	*I\"Alto	*I\"Soprano\r\n*>[A,A,B]	*>[A,A,B]	*>[A,A,B]	*>[A,A,B]\r\n*>norep[A,B]	*>norep[A,B]	*>norep[A,B]	*>norep[A,B]\r\n*>A	*>A	*>A	*>A\r\n*	*oclefC4	*oclefC3	*oclefC1\r\n*clefF4	*clefGv2	*clefG2	*clefG2\r\n*k[f#]	*k[f#]	*k[f#]	*k[f#]\r\n*G:	*G:	*G:	*G:\r\n*M3/4	*M3/4	*M3/4	*M3/4\r\n*MM100	*MM100	*MM100	*MM100\r\n4GG	4B	4d	4g\r\n=1	=1	=1	=1\r\n4G	4B	4d	2g\r\n4E	8cL	4e	.\r\n.	8BJ	.	.\r\n4F#	4A	4d	4dd\r\n=2	=2	=2	=2\r\n4G	4G	2d	4.b\r\n4D	4F#	.	.\r\n.	.	.	8a\r\n4E	4G	4B	4g\r\n=3	=3	=3	=3\r\n4C	8cL	8eL	4.g\r\n.	8BJ	8d	.\r\n8BBL	4c	8e	.\r\n8AAJ	.	8f#J	8a\r\n4GG	4d	4g	4b\r\n=4	=4	=4	=4\r\n2D;	2d;	2f#;	2a;\r\n4GG	4d	4g	4b\r\n=5	=5	=5	=5\r\n4FF#	4A	4d	2dd\r\n4GG	4B	4e	.\r\n4AA	4c	4f#	4cc\r\n=6	=6	=6	=6\r\n4BB	4d	2g	4b\r\n4C	4e	.	2a\r\n4D	8dL	4f#	.\r\n.	8cJ	.	.\r\n=7	=7	=7	=7\r\n2GG;	2B;	2d;	2g;\r\n=:|!	=:|!	=:|!	=:|!\r\n*>B	*>B	*>B	*>B\r\n4GG	4d	[4g	4b\r\n=8	=8	=8	=8\r\n4GG	4d	8gL]	4b\r\n.	.	8f#J	.\r\n4AA	4c	8eL	4cc\r\n.	.	8f#J	.\r\n4BB	8BL	[4g	4dd\r\n.	8AJ	.	.\r\n=9	=9	=9	=9\r\n4.BB	8BL	8gL]	4.dd\r\n.	8cJ	8aJ	.\r\n.	4d	8gL	.\r\n8AA	.	8f#J	8cc\r\n4GG	4d	4g	4b\r\n=10	=10	=10	=10\r\n2D;	2d;	2f#;	2a;\r\n[4E	4B	4e	4g\r\n=11	=11	=11	=11\r\n4E]	4G	4e	2b\r\n4D	4B	8f#L	.\r\n.	.	8gJ	.\r\n4C	4e	4a	4cc\r\n=12	=12	=12	=12\r\n4.BB	2d	4a	2dd\r\n.	.	4.g	.\r\n8C	.	.	.\r\n4D	4d	.	4cc\r\n.	.	8f#	.\r\n=13	=13	=13	=13\r\n8GGL	2.d	2g	2.b\r\n8AAJ	.	.	.\r\n4BB	.	.	.\r\n4GG	.	4f	.\r\n=14	=14	=14	=14\r\n2C;	2c;	2e;	2g;\r\n4GG	4d	4g	4b\r\n=15	=15	=15	=15\r\n4FF#	8dL	4.a	2dd\r\n.	8cJ	.	.\r\n4GG	4B	.	.\r\n.	.	8g	.\r\n4AA	4c	4f#	4cc\r\n=16	=16	=16	=16\r\n4BB	2d	2g	2b\r\n4GG	.	.	.\r\n4D	8dL	[4f#	4a\r\n.	8cJ	.	.\r\n=17	=17	=17	=17\r\n8EL	4B	8f#L]	4.g\r\n8D	.	8eJ	.\r\n8C	4c	8eL	.\r\n8BB	.	8f#J	8a\r\n8AA	4d	4g	4b\r\n8GGJ	.	.	.\r\n=18	=18	=18	=18\r\n2D;	2d;	2f#;	2a;\r\n[4G	4d	4g	4b\r\n=19	=19	=19	=19\r\n4G]	2d	2a	2dd\r\n4F#	.	.	.\r\n[4E	4e	8gL	4cc\r\n.	.	8f#J	.\r\n=20	=20	=20	=20\r\n8EL]	2e	2g	4b\r\n8DJ	.	.	.\r\n4C	.	.	2a\r\n4D	8dL	4f#	.\r\n.	8cJ	.	.\r\n=21	=21	=21	=21\r\n2GG;	2B;	2d;	2g;\r\n==	==	==	==\r\n*-	*-	*-	*-\r\n!!!YOR1: 371 vierstimmige Choralges&auml;nge von Johann Sebastian Bach, \r\n!!!YOR2: 4th ed. by Alfred D&ouml;rffel (Leipzig: Breitkopf und H&auml;rtel, \r\n!!!YOR3: c.1875). 178 pp. Plate \"V.A.10\".  reprint: J.S. Bach, 371 Four-Part \r\n!!!YOR4: Chorales (New York: Associated Music Publishers, Inc., c.1940).\r\n!!!SMS: B&H, 4th ed, Alfred D&ouml;rffel, c.1875, plate V.A.10\r\n!!!EED:  Craig Stuart Sapp\r\n!!!EEV:  2009/05/22\r\n', '石田佳佑', '2020-06-11 23:02:33'),
(6, 'EthnicMusic', 'regi', 'confirm', 'wanttosee', 'hey', 'YukikoYoden', '2020-06-11 23:15:31'),
(9, 'Classical', 'choral', 'Aus tiefer Not schrei ich zu dir', 'J.S.Bach', '!!!COM:	Bach, Johann Sebastian\r\n!!!CDT:	1685/02/21/-1750/07/28/\r\n!!!OTL@@DE:	Aus tiefer Not schrei ich zu dir\r\n!!!SCT:	BWV 38/6\r\n!!!PC#:	10\r\n!!!AGN:	chorale\r\n**kern	**kern	**kern	**kern\r\n*ICvox	*ICvox	*ICvox	*ICvox\r\n*Ibass	*Itenor	*Ialto	*Isoprn\r\n*I\"Bass	*I\"Tenor	*I\"Alto	*I\"Soprano\r\n*>[A,A,B]	*>[A,A,B]	*>[A,A,B]	*>[A,A,B]\r\n*>norep[A,B]	*>norep[A,B]	*>norep[A,B]	*>norep[A,B]\r\n*>A	*>A	*>A	*>A\r\n*	*oclefC4	*oclefC3	*oclefC1\r\n*clefF4	*clefGv2	*clefG2	*clefG2\r\n*k[]	*k[]	*k[]	*k[]\r\n*a:	*a:	*a:	*a:\r\n*M4/4	*M4/4	*M4/4	*M4/4\r\n*met(c)	*met(c)	*met(c)	*met(c)\r\n*MM100	*MM100	*MM100	*MM100\r\n=1-	=1-	=1-	=1-\r\n2D	2G#	2e	2b\r\n4C	4A	4e	4e\r\n4BB	4d	4g#	4b\r\n=2	=2	=2	=2\r\n4AA	4e	4a	4cc\r\n4BB	4d	8gnXL	8bL\r\n.	.	8f#J	8aJ\r\n8CL	8eL	4e	4g\r\n8BBJ	8dJ	.	.\r\n4AA	4c	4f#	4a\r\n=3	=3	=3	=3\r\n2E;	2B;	2g#;	2b;\r\n2E	2e	2g#	2b\r\n=4	=4	=4	=4\r\n4A	4e	4a	4cc\r\n8GL	4f	4b	4dd\r\n8FJ	.	.	.\r\n4E	4g	4cc	8ccL\r\n.	.	.	8bJ\r\n4F	4c	4f	4a\r\n=5	=5	=5	=5\r\n4C	8cL	4e	4g\r\n.	8BJ	.	.\r\n4D	4A	8dL	4f\r\n.	.	8cJ	.\r\n2E;	2G#;	2B;	2e;\r\n=6:|!	=6:|!	=6:|!	=6:|!\r\n*>B	*>B	*>B	*>B\r\n2c	2A	2e	2a\r\n4B	4B	4d	4gnX\r\n4A	4c	8eL	4cc\r\n.	.	8f#J	.\r\n=7	=7	=7	=7\r\n4G	4d	4g	4b\r\n8FnXL	8dL	4a	4a\r\n8EJ	8eJ	.	.\r\n4D	4f	8bL	8ddL\r\n.	.	8aJ	8ccJ\r\n4E	4B	4g#	4b\r\n=8	=8	=8	=8\r\n2AA;	2c;	2e;	2a;\r\n2A	2e	2a	2cc\r\n=9	=9	=9	=9\r\n4E	4e	4g	4b\r\n8DL	4e	4g	4cc\r\n8CJ	.	.	.\r\n4BB	4d	8gL	4dd\r\n.	.	8fJ	.\r\n4C	4c	4e	4g\r\n=10	=10	=10	=10\r\n4D	8F#	4d	4b\r\n.	4G	.	.\r\n4D	.	4c	4a\r\n.	8F#	.	.\r\n2GG;	2G;	2B;	2g;\r\n=11	=11	=11	=11\r\n2C	2G	2e	2g\r\n4AA	4A	4e	4cc\r\n4E	4G#	8eL	4b\r\n.	.	8dJ	.\r\n=12	=12	=12	=12\r\n4F	4A	4c	4a\r\n4C	4G	4c	4e\r\n4BB-	4G	[2d	4g\r\n4AA	4A	.	4f\r\n=13	=13	=13	=13\r\n4GG#	4B	4d]	1e;\r\n4AA	4A	4c	.\r\n2EE;	2G#X;	2B;	.\r\n==	==	==	==\r\n*-	*-	*-	*-\r\n!!!YOR1: 371 vierstimmige Choralges&auml;nge von Johann Sebastian Bach, \r\n!!!YOR2: 4th ed. by Alfred D&ouml;rffel (Leipzig: Breitkopf und H&auml;rtel, \r\n!!!YOR2: c.1875). 178 pp. Plate \"V.A.10\".  reprint: J.S. Bach, 371 Four-Part \r\n!!!YOR4: Chorales (New York: Associated Music Publishers, Inc., c.1940).\r\n!!!SMS: B&H, 4th ed, Alfred D&ouml;rffel, c.1875, plate V.A.10\r\n!!!EED:  Craig Stuart Sapp\r\n!!!EEV:  2009/05/22\r\n', '石田佳佑', '2020-06-12 23:16:02'),
(14, 'Classical', 'test', 'some', 'C.P.E. Bach', 'some', 'YukikoYoden', '2020-06-18 23:12:55'),
(15, 'FilmScore', 'seji', 'hoshimeguri', 'YukikoYoden', 'demodemo', 'YukikoYoden', '2020-06-18 23:21:18');

-- --------------------------------------------------------

--
-- テーブルの構造 `mrdb_user_table`
--

CREATE TABLE `mrdb_user_table` (
  `id` int(12) NOT NULL,
  `u_name` varchar(128) NOT NULL,
  `u_mail` varchar(64) NOT NULL,
  `u_pw` varchar(64) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `mrdb_user_table`
--

INSERT INTO `mrdb_user_table` (`id`, `u_name`, `u_mail`, `u_pw`, `life_flg`, `indate`) VALUES
(1, 'YukikoYoden', 'test@test', 'test', 0, '2020-06-10 00:47:41'),
(2, '石田佳佑', 'ishida@keisuke', 'ishida', 0, '2020-06-11 22:52:14'),
(3, '松本隼人', 'matsumoto@hayato', 'matsumoto', 0, '2020-06-11 22:58:00'),
(4, 'ヨデンユキコ', 'aaa@aaa', '1234asdf', 0, '2020-06-18 18:52:43'),
(64, 'ヨデンユキコ', 'ayukf@asdf', 'asdf1234', 0, '2020-06-18 20:53:46'),
(65, 'ヨデンユキコ', 'asdf@asdf', 'asdfasdfasdf123', 0, '2020-06-18 20:54:59'),
(68, 'asdfqwer', 'asdf@zxcv', 'asdfasdf1234', 0, '2020-06-18 20:56:53'),
(69, 'ヨデンユキコ', 'asdf@asqw', 'qwer1234', 0, '2020-06-18 21:02:28'),
(70, 'ヨデンユキコ', 'asdf@alkjh', 'lkjh123asd', 0, '2020-06-18 21:06:39'),
(71, 'ヨデンユキコ', 'asd@yoi', 'asdf17654', 0, '2020-06-18 21:50:27'),
(72, 'ヨデンユキコ', 'yoi@ayou', 'asdfyou123', 0, '2020-06-18 22:05:55'),
(73, 'ヨデンユキコ', 'yoi@ayoi', 'asdfaas1234', 0, '2020-06-18 22:07:45'),
(74, 'tesuto', 'tesuto@tet', 'orphwer1', 0, '2020-06-18 22:18:40'),
(75, 'tesuto', 'tesuto@tett', 'asd12752', 0, '2020-06-18 22:19:59'),
(76, 'asdfqwe', 'reoip@asdhfio', 'jieowyg1', 0, '2020-06-18 22:21:09'),
(77, 'ヨデンユキコ', 'aaa@aaaa', 'gd1234gsa', 0, '2020-06-18 22:23:19'),
(78, 'yoisoihasf', 'fpiug@aefgpiug', '1234fhksdj', 0, '2020-06-18 22:26:35'),
(79, 'ヨデンユキコ', 'asd@lkjh', 'ljhg8761', 0, '2020-06-18 22:31:43'),
(80, 'yoden yoden', 'yode@yode', 'yode123r4', 0, '2020-06-18 22:32:43'),
(81, 'fyoibw', 'aeliuy@awer', 'qwetro1234', 0, '2020-06-18 22:34:45');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `mrdb_kern_table`
--
ALTER TABLE `mrdb_kern_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `mrdb_user_table`
--
ALTER TABLE `mrdb_user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_mail` (`u_mail`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `mrdb_kern_table`
--
ALTER TABLE `mrdb_kern_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- テーブルのAUTO_INCREMENT `mrdb_user_table`
--
ALTER TABLE `mrdb_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
