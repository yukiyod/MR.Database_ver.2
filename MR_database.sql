-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2020 年 7 月 09 日 23:41
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
  `u_id` int(11) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `mrdb_kern_table`
--

INSERT INTO `mrdb_kern_table` (`id`, `genre`, `s_title`, `o_title`, `composer`, `kern`, `contributor`, `u_id`, `indate`) VALUES
(18, 'Classical', 'mychorales', 'From the Depths of My Heart', 'J.S.Bach', '!!!COM:	Bach, Johann Sebastian\r\n!!!CDT:	1685/02/21/-1750/07/28/\r\n!!!OTL@@DE:	Aus meines Herzens Grunde\r\n!!!OTL@EN:      From the Depths of My Heart\r\n!!!SCT:	BWV 269\r\n!!!PC#:	1\r\n!!!AGN:	chorale\r\n**kern	**kern	**kern	**kern\r\n*ICvox	*ICvox	*ICvox	*ICvox\r\n*Ibass	*Itenor	*Ialto	*Isoprn\r\n*I\"Bass	*I\"Tenor	*I\"Alto	*I\"Soprano\r\n*>[A,A,B]	*>[A,aA,B]	*>[A,A,B]	*>[A,A,B]\r\n*>norep[A,B]	*>norep[A,B]	*>norep[A,B]	*>norep[A,B]\r\n*>A	*>A	*>A	*>A\r\n*	*oclefC4	*oclefC3	*oclefC1\r\n*clefF4	*clefGv2	*clefG2	*clefG2\r\n*k[f#]	*k[f#]	*k[f#]	*k[f#]\r\n*G:	*G:	*G:	*G:\r\n*M3/4	*M3/4	*M3/4	*M3/4\r\n*MM100	*MM100	*MM100	*MM100\r\n4GG	4B	4d	4g\r\n=1	=1	=1	=1\r\n4G	4B	4d	2g\r\n4E	8cL	4e	.\r\n.	8BJ	.	.\r\n4F#	4A	4d	4dd\r\n=2	=2	=2	=2\r\n4G	4G	2d	4.b\r\n4D	4F#	.	.\r\n.	.	.	8a\r\n4E	4G	4B	4g\r\n=3	=3	=3	=3\r\n4C	8cL	8eL	4.g\r\n.	8BJ	8d	.\r\n8BBL	4c	8e	.\r\n8AAJ	.	8f#J	8a\r\n4GG	4d	4g	4b\r\n=4	=4	=4	=4\r\n2D;	2d;	2f#;	2a;\r\n4GG	4d	4g	4b\r\n=5	=5	=5	=5\r\n4FF#	4A	4d	2dd\r\n4GG	4B	4e	.\r\n4AA	4c	4f#	4cc\r\n=6	=6	=6	=6\r\n4BB	4d	2g	4b\r\n4C	4e	.	2a\r\n4D	8dL	4f#	.\r\n.	8cJ	.	.\r\n=7	=7	=7	=7\r\n2GG;	2B;	2d;	2g;\r\n=:|!	=:|!	=:|!	=:|!\r\n*>B	*>B	*>B	*>B\r\n4GG	4d	[4g	4b\r\n=8	=8	=8	=8\r\n4GG	4d	8gL]	4b\r\n.	.	8f#J	.\r\n4AA	4c	8eL	4cc\r\n.	.	8f#J	.\r\n4BB	8BL	[4g	4dd\r\n.	8AJ	.	.\r\n=9	=9	=9	=9\r\n4.BB	8BL	8gL]	4.dd\r\n.	8cJ	8aJ	.\r\n.	4d	8gL	.\r\n8AA	.	8f#J	8cc\r\n4GG	4d	4g	4b\r\n=10	=10	=10	=10\r\n2D;	2d;	2f#;	2a;\r\n[4E	4B	4e	4g\r\n=11	=11	=11	=11\r\n4E]	4G	4e	2b\r\n4D	4B	8f#L	.\r\n.	.	8gJ	.\r\n4C	4e	4a	4cc\r\n=12	=12	=12	=12\r\n4.BB	2d	4a	2dd\r\n.	.	4.g	.\r\n8C	.	.	.\r\n4D	4d	.	4cc\r\n.	.	8f#	.\r\n=13	=13	=13	=13\r\n8GGL	2.d	2g	2.b\r\n8AAJ	.	.	.\r\n4BB	.	.	.\r\n4GG	.	4f	.\r\n=14	=14	=14	=14\r\n2C;	2c;	2e;	2g;\r\n4GG	4d	4g	4b\r\n=15	=15	=15	=15\r\n4FF#	8dL	4.a	2dd\r\n.	8cJ	.	.\r\n4GG	4B	.	.\r\n.	.	8g	.\r\n4AA	4c	4f#	4cc\r\n=16	=16	=16	=16\r\n4BB	2d	2g	2b\r\n4GG	.	.	.\r\n4D	8dL	[4f#	4a\r\n.	8cJ	.	.\r\n=17	=17	=17	=17\r\n8EL	4B	8f#L]	4.g\r\n8D	.	8eJ	.\r\n8C	4c	8eL	.\r\n8BB	.	8f#J	8a\r\n8AA	4d	4g	4b\r\n8GGJ	.	.	.\r\n=18	=18	=18	=18\r\n2D;	2d;	2f#;	2a;\r\n[4G	4d	4g	4b\r\n=19	=19	=19	=19\r\n4G]	2d	2a	2dd\r\n4F#	.	.	.\r\n[4E	4e	8gL	4cc\r\n.	.	8f#J	.\r\n=20	=20	=20	=20\r\n8EL]	2e	2g	4b\r\n8DJ	.	.	.\r\n4C	.	.	2a\r\n4D	8dL	4f#	.\r\n.	8cJ	.	.\r\n=21	=21	=21	=21\r\n2GG;	2B;	2d;	2g;\r\n==	==	==	==\r\n*-	*-	*-	*-\r\n!!!YOR1: 371 vierstimmige Choralges&auml;nge von Johann Sebastian Bach, \r\n!!!YOR2: 4th ed. by Alfred D&ouml;rffel (Leipzig: Breitkopf und H&auml;rtel, \r\n!!!YOR3: c.1875). 178 pp. Plate \"V.A.10\".  reprint: J.S. Bach, 371 Four-Part \r\n!!!YOR4: Chorales (New York: Associated Music Publishers, Inc., c.1940).\r\n!!!SMS: B&H, 4th ed, Alfred D&ouml;rffel, c.1875, plate V.A.10\r\n!!!EED:  Craig Stuart Sapp\r\n!!!EEV:  2009/05/22\r\n', 'YukikoYoden', 1, '2020-06-24 01:38:32'),
(19, 'FilmScore', 'SoundsForTheSilents', 'Home Sweet Home', 'Bishop', '!!!!SEGMENT: ss003a-home-sweet-home.krn\r\n!!!COM: Bishop\r\n!!!OTL: Home Sweet Home\r\n!!!ARE: United States\r\n!!!ONB: Suitable for Northern quiet scenes, farm, old folks, etc.\r\n!!!OMD: Andante\r\n**kern	**kern	**dynam\r\n*part1	*part1	*part1\r\n*staff2	*staff1	*\r\n*clefF4	*clefG2	*\r\n*k[b-e-]	*k[b-e-]	*\r\n*M4/4	*M4/4	*\r\n*met(c)	*met(c)	*\r\n*MM108	*MM108	*MM108\r\n!!LO:TX:a:i:t=con espress\r\n4r	(>8b-L	p\r\n.	8ccJ	.\r\n=1	=1	=1\r\n*^	*^	*\r\n(>8BB-L	2BB-	2dd	2b- 2f	<\r\n8F	.	.	.	.\r\n8B-	.	.	.	.\r\n8FJ)	.	.	.	.\r\n(>8CL	2C	4.ee-	2a 2f	.\r\n8F	.	.	.	.\r\n8A	.	.	.	.\r\n8FJ)	.	8ff)	.	[\r\n*	*	*v	*v	*\r\n=2	=2	=2	=2\r\n(>8DL	2D	(>2ff 2b- 2f	.\r\n8F	.	.	.\r\n8B-	.	.	.\r\n8FJ)	.	.	.\r\n(8GGL	2ryy	4dd 4bn 4f	.\r\n8G	.	.	.\r\n8Bn	.	4ff 4dd 4a-X	.\r\n8GJ))	.	.	.\r\n=3	=3	=3	=3\r\n*	*	*^	*\r\n(>8CL	2C	4.ee- 4.cc	2g	.\r\n8G	.	.	.	.\r\n8c	.	.	.	.\r\n8GJ)	.	8dd 8b-X	.	.\r\n(8FFL>	2ryy	4ee-	2an 2f	.\r\n8F	.	.	.	.\r\n8A	.	4cc	.	.\r\n8FJ)	.	.	.	.\r\n=4	=4	=4	=4	=4\r\n(>8BB-L	2.BB-	2.dd) 2.b- 2.f	2.ryy	.\r\n8F	.	.	.	.\r\n8B-	.	.	.	.\r\n8FJ	.	.	.	.\r\n8B-L	.	.	.	.\r\n8F	.	.	.	.\r\n8D	4r	(>8b-L	4f	.\r\n8CJ)	.	8ccJ	.	.\r\n=5	=5	=5	=5	=5\r\n(>8BB-L	2BB-	2dd	2b- 2f	<\r\n8F	.	.	.	.\r\n8B-	.	.	.	.\r\n8FJ)	.	.	.	.\r\n(>8CL	2C	4.ee-	2a 2f	.\r\n8F	.	.	.	.\r\n8A	.	.	.	.\r\n8FJ)	.	8ff)	.	[\r\n*	*	*v	*v	*\r\n=6	=6	=6	=6\r\n!!linebreak:original\r\n(>8DL	2D	(>2ff 2b- 2f	.\r\n8F	.	.	.\r\n8B-	.	.	.\r\n8FJ)	.	.	.\r\n(>8GGL<	2ryy	4dd 4bn 4f	.\r\n8G	.	.	.\r\n8Bn	.	4ff 4dd 4a-X	.\r\n8GJ)	.	.	.\r\n=7	=7	=7	=7\r\n*	*	*^	*\r\n(>8CL	2C	4.ee- 4.cc	2g	>\r\n8G	.	.	.	.\r\n8c	.	.	.	.\r\n8GJ)	.	8dd 8b-X	.	.\r\n(<8FFL>	2ryy	4ee- 4an 4f	2ryy	.\r\n8F	.	.	.	.\r\n8A	.	4cc 4e-	.	.\r\n8FJ)	.	.	.	.\r\n*	*	*v	*v	*\r\n=8	=8	=8	=8\r\n(>8BB-L	2BB-	2.b-) 2.f 2.d	]\r\n8F	.	.	.\r\n8B-	.	.	.\r\n8FJ	.	.	.\r\n4BB-)	4BB-	.	.\r\n4r	4ryy	(>4ff	< [\r\n*v	*v	*	*\r\n=9||	=9||	=9||\r\n8BB-L> (<8BBB-	4.bb- 4.dd 4.b-	f\r\n!LO:TX:a:i:t=Grandioso	!	!\r\n8D	.	.\r\n8F	.	.\r\n8B-J)	8aa 8ff 8a	.\r\n8BB-L> (<8BBB-	4.gg 4.ee- 4.g	.\r\n8E-	.	.\r\n8G	.	.\r\n8B-J)	8ff) 8dd 8f	.\r\n=10	=10	=10\r\n8BB-L> (<8BBB-	(>2ff 2dd 2f	.\r\n8D	.	.\r\n8F	.	.\r\n8B-J)	.	.\r\n8BB-L> (<8BBB-	4dd 4b- 4d	.\r\n8D	.	.\r\n8F	4ff) 4dd 4f	.\r\n8B-J)	.	.\r\n=11	=11	=11\r\n!!linebreak:original\r\n(<8FFL>	(>4.ee- 4.cc 4.e-	.\r\n8E-	.	.\r\n8F	.	.\r\n8AJ)	8dd 8bn 8d	.\r\n(<8FFL>	4ee- 4cc 4e-	.\r\n8E-	.	.\r\n8F	4cc 4a 4c	.\r\n8AJ)	.	.\r\n=12	=12	=12\r\n*ped	*	*\r\n8BB-L> (<8BBB-	2.dd) 2.b-X 2.d	.\r\n8D	.	.\r\n8F	.	.\r\n[8B-J)	.	.\r\n4B-] 4BB-	.	.\r\n*Xped	*	*\r\n(>4A 4AA	(>4f 4c	.\r\n=13	=13	=13\r\n*	*^	*\r\n4G 4GG	4.b-	2d 2B-	.\r\n4F 4FF	.	.	.\r\n.	8a	.	.\r\n4En 4EEn	4.g	2c#X 2B-	.\r\n4AA) 4AAA	.	.	.\r\n.	8f)	.	.\r\n=14	=14	=14	=14\r\n4D (<4DD	(>2f	2d 2A	.\r\n4C 4CC	.	.	.\r\n4BBn 4BBBn	4d	2d 2A-X	.\r\n4GG 4GGG	4f)	.	.\r\n=15	=15	=15	=15\r\n!	!LO:TX:b:i:t=rit.	!	!\r\n4C 4CC	(>4.e-	2c 2G	.\r\n4BB-X 4BBB-X	.	.	.\r\n.	8d	.	.\r\n!	!LO:TX:b:i:t=dim.	!	!\r\n4AA\\ 4AAA\\	4e- 4c 4F<	2ryy	.\r\n4FF\\ 4FFF\\	4c) 4A 4E-<	.	.\r\n*	*v	*v	*\r\n=16	=16	=16\r\n4BB-\\ 4BBB-\\)	4B- 4D<	.\r\n[4BB- 4EE-	[4b- 4g 4e- [4B-	.\r\n4BB-] 4BBB-	4b-] 4f 4d 4B-]	.\r\n=||	=||;	=||\r\n*-	*-	*-\r\n!!!system-decoration: {(s1,s2)}\r\n!!!RDF**kern: > = above\r\n!!!RDF**kern: < = below\r\n', 'YukikoYoden', 1, '2020-06-29 17:30:22'),
(20, 'FilmScore', 'SoundsForTheSilents', 'Essence Grotesque', 'M. L. Lake', '!!!!SEGMENT: ss219-essence-grotesque.krn\r\n!!!COM: M. L. Lake\r\n!!!OTL: Essence Grotesque\r\n!!!ONB: For depicting mysterious scenes grotesque comedy etc.\r\n**kern	**kern	**dynam\r\n*part1	*part1	*part1\r\n*staff2	*staff1	*\r\n*clefF4	*clefG2	*\r\n*k[b-]	*k[b-]	*\r\n*M6/8	*M6/8	*\r\n*	*	*\r\n=1	=1	=1\r\n.	(16qqaa/LL	p\r\n.	16qqbbn/	.\r\n.	16qqccc#X/JJ)	.\r\n4r	8ddd^	.\r\n.	8r	.\r\n8r	8r	.\r\n(4.d^ (>4.B-X [4.G	[4.e^	fp\r\n=2	=2	=2\r\n8c#X)) 8A 8G]	8e]	.\r\n8r	8r	.\r\n!	!	!LO:DY:a\r\n8r	(32eeLLL	<\r\n.	32ff	.\r\n.	32gg	.\r\n.	32aaJJJ	.\r\n4ee> 4cc#X> 4g>	4bb-)	.\r\n8r	8rccc	[\r\n=3	=3	=3\r\n.	(16qqaa/LL	p\r\n.	16qqbbn/	.\r\n.	16qqccc#X/JJ	.\r\n4r	8ddd^)	.\r\n.	8r	.\r\n8r	8r	.\r\n(4.d^ (>4.B-X [4.G	[4.e^	fp\r\n=4	=4	=4\r\n8c#X)) 8A 8G]	8e]	.\r\n8r	8r	.\r\n!	!	!LO:DY:a\r\n8r	(32eeLLL	<\r\n.	32ff	.\r\n.	32gg	.\r\n.	32aaJJJ	.\r\n4ee> 4cc#X> 4g>	4bb-)	.\r\n8r	8rccc	[\r\n=5	=5	=5\r\n[4.e^ [4.d [4.B- [4.G	4r	.\r\n.	(32eeLLL	<\r\n.	32ff	.\r\n.	32gg	.\r\n.	32aaJJJ	.\r\n4e] 4d] 4B-] 4G]	4bb-)	[\r\n8g 8B-	8r	[\r\n=6	=6	=6\r\n*tremolo	*	*\r\n!!linebreak:original\r\n[4.e^ (>4.d 4.B- [4.G	4r	.\r\n.	(32ggLLL	<\r\n.	32aa	.\r\n.	32bb-	.\r\n.	32cccJJJ	.\r\n4e]) 4d 4B-) 4G]	4ddd)	.\r\n8d 8G#X	8r	.\r\n=7	=7	=7\r\n4c#X 4A	4r	.\r\n8r	(8aa 8ee	.\r\n32AAALLL	8aa-XL 8ee-X	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	8gg 8dd	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	8ff#XJ 8cc#X	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AAJJJ	.	.\r\n=8	=8	=8\r\n32AAALLL	8ffnL 8ccn	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	8een 8bn	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	8ee-XJ 8b-X	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AAJJJ	.	.\r\n8d 8D	8dd) 8a	.\r\n8r	8r	.\r\n8r	8r	.\r\n=9	=9	=9\r\n.	(16qqaa/LL	p\r\n.	16qqbbn/	.\r\n.	16qqccc#X/JJ)	.\r\n4r	8ddd^	.\r\n.	8r	.\r\n8r	8r	.\r\n(4.d^ (>4.B-X 4.G	[4.e	fp\r\n=10	=10	=10\r\n8c#X)) 8A 8G	8e]	.\r\n8r	8r	[\r\n!	!	!LO:DY:a\r\n8r	(32eeLLL	<\r\n.	32ff	.\r\n.	32gg	.\r\n.	32aaJJJ	.\r\n4ee> 4cc#X> 4g>	4bb-)	[\r\n8r	8raa	.\r\n=11	=11	=11\r\n.	(16qqaa/LL	p\r\n.	16qqbbn/	.\r\n.	16qqccc#X/JJ	.\r\n4r	8ddd^)	.\r\n.	8r	.\r\n8r	8r	.\r\n4.d^ (>4.B-X [4.G	[4.e^	fp\r\n=12	=12	=12\r\n!!linebreak:original\r\n8c#) 8A 8G]	8e]	.\r\n8r	8r	.\r\n8r	(32eeLLL	<\r\n.	32ff	.\r\n.	32gg	.\r\n.	32aaJJJ	.\r\n4ee> 4cc#X> 4g>	4bb-)	.\r\n8r	8raa	.\r\n=13	=13	=13\r\n(16qqd/LL	.	.\r\n16qqe/	.	.\r\n16qqf/JJ)	.	.\r\n(4.g	4r	.\r\n.	8dd\'	.\r\n4.f#X	8a\'L	.\r\n.	8r	.\r\n.	8dd\'J	.\r\n=14	=14	=14\r\n4.fn	4r	.\r\n.	8dd\'	<\r\n4.e	4gg^ 4dd 4b-	.\r\n.	8r	.\r\n=15	=15	=15\r\n4.e-X	4r	.\r\n.	8cc#X\'	.\r\n4.d	8dd\'L	.\r\n.	8r	.\r\n.	8a\'J	>\r\n=16	=16	=16\r\n8c#XL)	8ee\'L 8a 8g	.\r\n8rA	8r	.\r\n8A\'J	8a\'J	.\r\n8D\'	8dd\' 8d	.\r\n8r	8r	.\r\n8r	8r	.\r\n=17:|!|:	=17:|!|:	=17:|!|:\r\n.	(32qqdd/LLL	.\r\n.	32qqee/	.\r\n.	32qqff/	.\r\n.	32qqgg/JJJ	.\r\n8DL	8aaL)	.\r\n8rc	8raa	.\r\n!	!	!LO:DY:a\r\n8a>J 8f> 8d>	8aaJ	<\r\n4g#X>^ 4f> 4d> 4Bn>	(32gg#XLLL	.\r\n.	32aa	.\r\n.	32bbn	.\r\n.	32ccc#XJJ	.\r\n.	8dddJ)	.\r\n8r	8rddd	[\r\n=18	=18	=18\r\n!!linebreak:original\r\n.	(16qqdd/LL	.\r\n.	16qqee/	.\r\n.	16qqff/JJ	.\r\n8AAL	8ggnL)	.\r\n8r	8rff	.\r\n8gJ 8e 8c#X 8A	8ggJ	.\r\n4f#X^ 4d#X 4cn 4A	(32ff#XLLL	<\r\n.	32gg	.\r\n.	32aa	.\r\n.	32bb-XJJ	.\r\n.	8cccnJ)	.\r\n8fn	8rff	[\r\n=19	=19	=19\r\n[2.e (>2.d (<2.B-X [2.G	8r	.\r\n.	16gg\'LL	fp\r\n.	16ee\'	.\r\n.	16aa\'	.\r\n.	16ee\'JJ	.\r\n.	16bb-X\'LL	.\r\n.	16ee\'	.\r\n.	16aa\'	.\r\n.	16ee\'	.\r\n.	16gg#X\'	.\r\n.	16ee\'JJ	.\r\n=20	=20	=20\r\n8eL]) 8c#X 8A 8G])	8aa\'L	.\r\n8rF	(16aa-XL	.\r\n.	16gg	.\r\n8A\'J	16ff#X	.\r\n.	16ffnJJ	.\r\n8A\'	8eeL)	.\r\n8r	8aan\'J	.\r\n8r	8r	.\r\n=21	=21	=21\r\n.	(16qqdd/LL	.\r\n.	16qqee/	.\r\n.	16qqff/	.\r\n.	16qqgg/JJ)	.\r\n8DL	8aaL	.\r\n8rA	8raa	.\r\n8a>J 8f> 8d>	8aaJ	.\r\n!	!	!LO:DY:a\r\n4g#X>^ 4f> 4d> 4Bn>	(32gg#XLLL	<\r\n.	32aa	.\r\n.	32bbn	.\r\n.	32ccc#XJJ	.\r\n.	8dddJ)	.\r\n8r	8rccc	[\r\n=22	=22	=22\r\n!!linebreak:original\r\n.	(16qqaa/LL	.\r\n.	16qqaa#X/	.\r\n.	16qqbbn/JJ)	.\r\n8AL	8cccL	.\r\n8rB	8raa	.\r\n8cc>J 8a> 8e>	8cccJ	.\r\n4bn>^ 4g#X> 4f> 4d>	(32gg#XLLL	.\r\n.	32aa#	.\r\n.	32bbn	.\r\n.	32cccnJJ	.\r\n.	8dddJ)	.\r\n8b-X>	8rccc	.\r\n=23	=23	=23\r\n[2.a>^ [2.e> [2.c>	8rccc	.\r\n.	16ccc\'LL	fp\r\n.	16aa\'	.\r\n.	16ddd\'	.\r\n.	16aa\'JJ	.\r\n.	16ddd#X\'LL	.\r\n.	16aa\'	.\r\n.	16eee\'	.\r\n.	16aa\'	.\r\n.	16ccc\'	.\r\n.	16aa\'JJ	.\r\n=24	=24	=24\r\n8a>L] 8e>] 8c>]	8aaL	.\r\n8rF>	(16aa-XL	.\r\n.	16gg	.\r\n8a>\'J	16ff#X	.\r\n.	16ffnJJ	.\r\n8A\'	8eeL>)	.\r\n8r	8aan\'J	.\r\n8r	8rff	.\r\n=25	=25	=25\r\n.	(16qqa/LL	.\r\n.	16qqbn/	.\r\n.	16qqcc#X/JJ	.\r\n8DL	8ddL)	.\r\n8rA	8rdd	.\r\n8fJ 8d 8A	8ddJ	.\r\n4g^ 4e 4B-X	8cc#XL	.\r\n.	8rdd	.\r\n8rA	8gJ	.\r\n=26	=26	=26\r\n2.b-X 2.g 2.e 2.c#X	4raa	.\r\n.	(32eeLLL	<\r\n.	32ff	.\r\n.	32gg	.\r\n.	32aaJJJ	.\r\n.	4bb-)	.\r\n.	8rccc	.\r\n=27	=27	=27\r\n!!linebreak:original\r\n.	(32qqe/LLL	.\r\n.	32qqf/	.\r\n.	32qqg/	.\r\n.	32qqa/JJJ	.\r\n8GL	8b-L)	.\r\n8rA	8r	.\r\n8gJ 8e 8c#X	8b-J	.\r\n4g^ 4e 4c#	8aL	.\r\n.	8r	.\r\n8rA	8eJ	.\r\n=28	=28	=28\r\n[4.g [4.e 4.d 4.B-	4rgg	.\r\n.	(32ggLLL	<\r\n.	32aa	.\r\n.	32bb-	.\r\n.	32cccJJJ	.\r\n4.g] 4.e] 4.c#X 4.A	4ddd-X)	.\r\n.	8rccc	.\r\n=29	=29	=29\r\n.	(32qqdd/LLL	.\r\n.	32qqee/	.\r\n.	32qqff/	.\r\n.	32qqgg/JJJ)	.\r\n8DL	8aaL	.\r\n8rA	8raa	.\r\n8aJ 8f 8d	8aaJ	.\r\n!	!	!LO:DY:a\r\n4g#X^ 4f 4d 4Bn	(32gg#XLLL	<\r\n.	32aa	.\r\n.	32bbn	.\r\n.	32ccc#XJJ	.\r\n.	8dddnJ)	.\r\n8r	8raa	[\r\n=30	=30	=30\r\n.	(16qqdd/LL	.\r\n.	16qqee/	.\r\n.	16qqff/JJ	.\r\n8AAL	8ggnL)	.\r\n8r	8rff	.\r\n8gJ 8e 8c#X 8A	8ggJ	.\r\n4f^ 4d 4Bn 4G#X	(32gg#XLLL	<\r\n.	32aa	.\r\n.	32bbn	.\r\n.	32ccc#XJJ	.\r\n.	8dddJ)	.\r\n8r	8raa	[\r\n=31	=31	=31\r\n!!linebreak:original\r\n2.d 2.D	4r	.\r\n.	(8ddd 8aa	.\r\n.	8ddd-XL 8aa-X	.\r\n.	8ccc 8gg	.\r\n.	8bbnJ 8ff#X	.\r\n=32	=32	=32\r\n(32DLLL	8bb-XL) 8ffn	.\r\n32d	.	.\r\n32D	.	.\r\n32d	.	.\r\n32D	8aa\' 8ff	.\r\n32d	.	.\r\n32D	.	.\r\n32dJJJ)	.	.\r\n8A\'	8ff\'J 8dd	.\r\n8d\' 8D	8dd\'	.\r\n8r	8r	.\r\n8r	8r	.\r\n=33:|!|:	=33:|!|:	=33:|!|:\r\n*k[]	*k[]	*\r\n.	(16qqe/LL	.\r\n.	16qqf#X/	.\r\n.	16qqg#X/JJ	.\r\n8e\' 8c 8A	8a\')	.\r\n8r	8r	.\r\n8r	8r	.\r\n.	(16qqa/LL	.\r\n.	16qqb/	.\r\n.	16qqcc/	.\r\n.	16qqdd/JJ)	.\r\n8e\' 8c 8A	8ee\'	.\r\n8r	8r	.\r\n8r	8r	.\r\n=34	=34	=34\r\n.	(16qqdd/LL	.\r\n.	16qqee/JJ	.\r\n4b> 4g#X>	4ff^)	.\r\n(32dLLL	8rff	.\r\n32c	.	.\r\n32B	.	.\r\n32AJJJ	.	.\r\n4G#X)	4rff	.\r\n8r	8rff	.\r\n=35	=35	=35\r\n.	(16qqe/LL	.\r\n.	16qqf#X/	.\r\n.	16qqg/JJ	.\r\n8e\' 8c 8A	8a)	.\r\n8r	8r	.\r\n8r	8r	.\r\n.	(16qqa/LL	.\r\n.	16qqb/	.\r\n.	16qqcc/	.\r\n.	16qqdd/JJ)	.\r\n8e\' 8c 8A	8ee\'	.\r\n8r	8r	.\r\n8r	8r	.\r\n=36	=36	=36\r\n!!linebreak:original\r\n.	(16qqdd/LL	.\r\n.	16qqee/JJ	.\r\n4b> 4g#X>	4ff^)	.\r\n(32dLLL	8rff	.\r\n32c	.	.\r\n32B	.	.\r\n32AJJJ	.	.\r\n4G#X)	4rgg	.\r\n8r	8rff	.\r\n=37	=37	=37\r\n(16qqe/LL	.	.\r\n16qqf/JJ	.	.\r\n(2.e^)	4r	.\r\n.	8ccc\' 8ff#X 8ee	.\r\n.	8bb\'L 8gg 8ee	.\r\n.	8gg\' 8ee 8b	.\r\n.	8gg#X\'J 8ee 8dd	.\r\n=38	=38	=38\r\n2.A)	8aa\'L 8ee 8cc	.\r\n.	8ff\' 8dd 8a	.\r\n.	8ee\'J 8cc 8a	.\r\n.	4.dd#X^ 4.cc 4.a 4.f	.\r\n=39	=39	=39\r\n(16qqe/LL	.	.\r\n16qqf/JJ	.	.\r\n(2.e^)	4r	.\r\n.	8ccc\' 8ff#X 8ee	.\r\n.	8bb\'L 8gg 8ee	.\r\n.	8gg\' 8ee 8b	.\r\n.	8gg#X\'J 8ee 8dd	.\r\n=40	=40	=40\r\n2.A)	8aa\'L 8ee 8cc	.\r\n.	8ff\' 8dd 8a	.\r\n.	8ee\'J 8cc 8a	.\r\n.	4.dd#X 4.cc 4.a 4.f	.\r\n=41	=41	=41\r\n[4.B-X [4.F [4.D	4r	.\r\n.	(32b-XLLL	<\r\n.	32cc	.\r\n.	32dd	.\r\n.	32eeJJJ	.\r\n4B-] 4F] 4D]	4ff)	.\r\n8d	8r	[\r\n=42	=42	=42\r\n[4.A [4.E [4.C	4r	.\r\n.	(32aLLL	.\r\n.	32bn	.\r\n.	32cc	.\r\n.	32ddJJJ	.\r\n4A] 4E] 4C]	4ee)	.\r\n8c	8r	.\r\n=43	=43	=43\r\n!!linebreak:original\r\n(8qd#X/	.	.\r\n[4.e)	4r	.\r\n.	8ee\' 8cc	.\r\n4e]	8a\'L 8f#X	.\r\n.	8r	.\r\n8d#X	8cc\'J 8f#	.\r\n=44	=44	=44\r\n[4.dn^	4b^ 4g#X 4fn	.\r\n.	(32bLLL	<\r\n.	32cc	.\r\n.	32dd	.\r\n.	32eeJJJ	.\r\n4d]	4ff)	.\r\n8c#X	8b-X 8gn 8e	[\r\n=45	=45	=45\r\n[4.cn	8a-X\'L 8f	.\r\n.	8r	.\r\n.	8cc\'J 8a-	.\r\n4c]	8f\'L 8dn	.\r\n.	8r	.\r\n8Bn	8a-\'J 8d	.\r\n=46	=46	=46\r\n[4.B-X^	4g 4en 4d-X	.\r\n.	(32gLLL	<\r\n.	32a-X	.\r\n.	32b-X	.\r\n.	32ccJJJ	.\r\n4B-]	4dd-X)	.\r\n8An	8f#X 8d#X 8c	[\r\n=47	=47	=47\r\n[4.G#X^	4fn 4dn 4B	.\r\n.	32g#XLLL	<\r\n.	32an	.\r\n.	32bn	.\r\n.	32ccJJJ	.\r\n4G#]	4ddn	.\r\n8E	8g# 8e 8d	[\r\n=48	=48	=48\r\n!!linebreak:original\r\n8A\'L	8a\'L 8e 8c	.\r\n8AA\'J	8A\'J	.\r\n8r	8r	.\r\n8A\'L	4r	.\r\n8AA\'J	.	.\r\n8r	8r	.\r\n=49:|!|:	=49:|!|:	=49:|!|:\r\n8A^ 8AA	8a^L 8e 8c	.\r\n8r	8g#X\' 8B	.\r\n8r	8b\'J 8d	.\r\n4r	8a\'L 8c	.\r\n.	8dd\' 8f	.\r\n8r	8cc#X\'J 8e	.\r\n=50	=50	=50\r\n4r	8ee\'L 8gn	.\r\n.	8dd\' 8f	.\r\n8r	8ff\'J 8a	.\r\n8r	8ee\'L 8g#X	.\r\n(4e^	8bb\'J 8dd	.\r\n.	8r	.\r\n=51	=51	=51\r\n(2.d#X)	8r	.\r\n.	8b\' 8a 8f#X	.\r\n.	8r	.\r\n.	8ff#X\'L 8b 8a	.\r\n.	8bb\'J 8ff# 8dd#X 8b	.\r\n.	8r	.\r\n=52	=52	=52\r\n2.dn)	8r	.\r\n.	8b\' 8g#X 8e	.\r\n.	8r	.\r\n.	8ee\'L 8b 8g#	.\r\n.	8bb\'J 8gg#X 8ee 8b	.\r\n.	8r	.\r\n=53	=53	=53\r\n8A^ 8AA	8aL 8e 8c^	.\r\n8r	8g#X\' 8B	.\r\n8r	8b\'J 8d	.\r\n4r	8a\'L 8c	.\r\n.	8dd\' 8f	.\r\n8r	8cc#X\'J 8e	.\r\n=54	=54	=54\r\n!!linebreak:original\r\n4r	8ee\'L 8gn	.\r\n.	8dd\' 8f	.\r\n8r	8ff\'J 8a	.\r\n8r	8ee\'L 8g#X	.\r\n(4e^	8bb\'J 8dd	.\r\n.	8r	.\r\n=55	=55	=55\r\n8A^) 8AA	8a^ 8e 8c	fz\r\n[4A^ (<4F	(4d#X^ [4c	.\r\n8A] 8E)	8eL) 8c]	.\r\n8r	8a\' 8e 8c	.\r\n8r	8cc\'J 8a 8e	.\r\n=56	=56	=56\r\n8G#X\'	8b\' 8e 8d	.\r\n.	(8qd#X/	.\r\n8r	(4e)	.\r\n8r	.	.\r\n8A\'L	8a\' 8e 8c)	.\r\n8AA\'J	8r	.\r\n8r	8r	.\r\n=57	=57	=57\r\n32AAALLL	2.rdd	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AAJJJ	.	.\r\n=58	=58	=58\r\n32AAALLL	(16aaLL	.\r\n32AA	.	.\r\n32AAA	16bb-X	.\r\n32AA	.	.\r\n32AAA	16ccc	.\r\n32AA	.	.\r\n32AAA	16ddd	.\r\n32AA	.	.\r\n32AAA	16eee	.\r\n32AA	.	.\r\n32AAA	16cccJJ	.\r\n32AA	.	.\r\n32AAA	16dddLL	.\r\n32AA	.	.\r\n32AAA	16bb-	.\r\n32AA	.	.\r\n32AAA	16ccc	.\r\n32AA	.	.\r\n32AAA	16aaJJ)	.\r\n32AA	.	.\r\n32AAA	8r	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AAJJJ	.	.\r\n=59	=59	=59\r\n32AAALLL	2.rdd	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AAJJJ	.	.\r\n=60	=60	=60\r\n!!linebreak:original\r\n32AAALLL	(16f#XLL	.\r\n32AA	.	.\r\n32AAA	16g	.\r\n32AA	.	.\r\n32AAA	16a	.\r\n32AA	.	.\r\n32AAA	16b-X	.\r\n32AA	.	.\r\n32AAA	16cc	.\r\n32AA	.	.\r\n32AAA	16aJJ	.\r\n32AA	.	.\r\n32AAA	16b-LL	.\r\n32AA	.	.\r\n32AAA	16g	.\r\n32AA	.	.\r\n32AAA	16a	.\r\n32AA	.	.\r\n32AAA	16f#JJ)	.\r\n32AA	.	.\r\n32AAA	8r	.\r\n32AA	.	.\r\n32AAA	.	.\r\n32AAJJJ	.	.\r\n=61	=61	=61\r\n2.AAA	4r	.\r\n.	8r	.\r\n.	8qd#X/	.\r\n.	4.e^	.\r\n=62	=62	=62\r\n2.AAA	(8aaL 8ee	.\r\n.	8aa-X 8ee-X	.\r\n.	8ggJ 8dd	.\r\n.	8ff#XL 8cc#X	.\r\n.	8ffn 8ccn	.\r\n.	8ee-J 8b	.\r\n=63	=63	=63\r\n2.AAA	8ee-XL 8b-X	.\r\n.	8dd 8a	.\r\n.	8cc#XJ 8g#X	.\r\n.	8ccnL 8gn	.\r\n.	8bn 8f#X	.\r\n.	8b-XJ 8fn	.\r\n=64	=64	=64\r\n4.AAA	8aL) 8e	.\r\n.	(8qee/	.\r\n.	8aa\')	.\r\n.	8qee/	.\r\n.	8a\'J	.\r\n.	(8qqe/	.\r\n8AA\'L	8A\'L)	.\r\n8AAA\'J	8AA\'J	.\r\n8r	8r	.\r\n=:|!	=:|!	=:|!\r\n*-	*-	*-\r\n!!!system-decoration: {(s1,s2)}\r\n!!!RDF**kern: > = above\r\n!!!RDF**kern: < = below\r\n', 'YukikoYoden', 1, '2020-07-01 01:41:12'),
(21, 'Classical', 'mychorales', 'Ich dank dir, lieber Herre', 'J.S.Bach', '!!!COM:	Bach, Johann Sebastian\r\n!!!CDT:	1685/02/21/-1750/07/28/\r\n!!!OTL@@DE:	Ich dank dir, lieber Herre\r\n!!!SCT:	BWV 347\r\n!!!PC#:	2\r\n!!!AGN:	chorale\r\n**kern	**kern	**kern	**kern\r\n*ICvox	*ICvox	*ICvox	*ICvox\r\n*Ibass	*Itenor	*Ialto	*Isoprn\r\n*I\"Bass	*I\"Tenor	*I\"Alto	*I\"Soprano\r\n*>[A,A,B]	*>[A,A,B]	*>[A,A,B]	*>[A,A,B]\r\n*>norep[A,B]	*>norep[A,B]	*>norep[A,B]	*>norep[A,B]\r\n*>A	*>A	*>A	*>A\r\n*	*oclefC4	*oclefC3	*oclefC1\r\n*clefF4	*clefGv2	*clefG2	*clefG2\r\n*k[f#c#g#]	*k[f#c#g#]	*k[f#c#g#]	*k[f#c#g#]\r\n*A:	*A:	*A:	*A:\r\n*M4/4	*M4/4	*M4/4	*M4/4\r\n*met(c)	*met(c)	*met(c)	*met(c)\r\n*MM100	*MM100	*MM100	*MM100\r\n8AL	4c#	4e	4a\r\n8G#J	.	.	.\r\n=1	=1	=1	=1\r\n4F#	4c#	4f#	4a\r\n4C#	8c#L	4e	4a\r\n.	8BJ	.	.\r\n4D	8AL	4f#	4a\r\n.	8G#J	.	.\r\n4D#	4F#	4f#	4b\r\n=2	=2	=2	=2\r\n4E	4.B	4e	4g\r\n4BB	.	4d#	4f#\r\n.	8A	.	.\r\n4EE;	4G#X;	4B;	4e;\r\n4E	4e	4g#	4b\r\n=3	=3	=3	=3\r\n4A	4e	4a	4cc#\r\n4B	4d#	8g#L	4b\r\n.	.	8f#J	.\r\n4c#	2c#	[2e	4a\r\n8BL	.	.	8g#L\r\n8AJ	.	.	8f#J\r\n=4	=4	=4	=4\r\n4B	4.B	4e]	4g#\r\n4BB	.	4d#	4f#\r\n.	8A	.	.\r\n4E;	4G#;	4B;	4e;\r\n=:|!	=:|!	=:|!	=:|!\r\n*>B	*>B	*>B	*>B\r\n4C#	4G#	8cc#L	4ee\r\n.	.	8bJ	.\r\n=5	=5	=5	=5\r\n8F#L	8AL	4a	4dd\r\n8G#J	8BJ	.	.\r\n4A	8c#L	4a	4cc#\r\n.	8dJ	.	.\r\n4E	4e	4g#	4b\r\n8C#L	4e	8aL	4a\r\n8AAJ	.	8gJ	.\r\n=6	=6	=6	=6\r\n4D	4d	8f#L	8aL\r\n.	.	8g#XJ	8bJ\r\n8C#L	4e	4a	4cc#\r\n8DJ	.	.	.\r\n4E;	4e;	4g#;	4b;\r\n4C#	4e	4a#	4cc#\r\n=7	=7	=7	=7\r\n4BB	8f#	8bL	4dd\r\n.	4B	8aJ	.\r\n4C#	.	4g	4cc#\r\n.	8A#	.	.\r\n8DL	4B	8f#L	4b\r\n8GJ	.	8eJ	.\r\n4F#	4c#	4f#	4a#\r\n=8	=8	=8	=8\r\n2.BB;	2.d;	2.f#;	2.b;\r\n4C#	4G#	8eL	4e\r\n.	.	8dJ	.\r\n=9	=9	=9	=9\r\n4F#	4A	4c#	4a\r\n8EL	8G#L	4d	4b\r\n8DJ	8F#J	.	.\r\n4C#	8EL	4e	4cc#\r\n.	8eJ	.	.\r\n4BB	4d	8f#L	4dd\r\n.	.	8g#J	.\r\n=10	=10	=10	=10\r\n8AAL	8c#L	2a	4ee\r\n8BB	8d	.	.\r\n8C#	8e	.	8ddL\r\n8DJ	8f#J	.	8cc#J\r\n4E;	4g#;	4e;	4b;\r\n4BB	4f#	4b	4dd\r\n=11	=11	=11	=11\r\n8F#L	8f#L	8aL	4cc#\r\n8G#J	8eJ	8g#J	.\r\n4A	8dL	4f#	4b\r\n.	8c#J	.	.\r\n8G#L	4B	4e	4.ee\r\n8EJ	.	.	.\r\n[4A	8c#L	8f#L	.\r\n.	8dJ	8g#J	8dd\r\n=12	=12	=12	=12\r\n8AL]	4.e	2a	8cc#L\r\n8G#J	.	.	8b\r\n4F#	.	.	8a\r\n.	8d	.	8bJ\r\n8EL	8c#L	4a	4cc#\r\n8DJ	8f#J	.	.\r\n4E	8BL	4g#	4b\r\n.	16eL	.	.\r\n.	16dJJ	.	.\r\n=13	=13	=13	=13\r\n2.AA;	2.c#;	2.e;	2.a;\r\n==	==	==	==\r\n*-	*-	*-	*-\r\n!!!YOR1: 371 vierstimmige Choralges&auml;nge von Johann Sebastian Bach, \r\n!!!YOR2: 4th ed. by Alfred D&ouml;rffel (Leipzig: Breitkopf und H&auml;rtel, \r\n!!!YOR2: c.1875). 178 pp. Plate \"V.A.10\".  reprint: J.S. Bach, 371 Four-Part \r\n!!!YOR4: Chorales (New York: Associated Music Publishers, Inc., c.1940).\r\n!!!SMS: B&H, 4th ed, Alfred D&ouml;rffel, c.1875, plate V.A.10\r\n!!!EED:  Craig Stuart Sapp\r\n!!!EEV:  2009/05/22\r\n', '石田佳佑', 2, '2020-07-01 01:41:57'),
(22, 'Classical', 'mychorales', 'Oh God, look down from Heaven', 'J.S.Bach', '!!!COM:	Bach, Johann Sebastian\r\n!!!CDT:	1685/02/21/-1750/07/28/\r\n!!!OTL@@DE:	Ach Gott, vom Himmel sieh darein\r\n!!!OTL@EN:	Oh God, look down from Heaven\r\n!!!OPR: Cantata BWV 153: Schau, lieber Gott, wie meine Feind\r\n!!!SCT:	BWV 153/1\r\n!!!PC#:	3\r\n!!!AGN:	chorale\r\n**kern	**kern	**kern	**kern\r\n*ICvox	*ICvox	*ICvox	*ICvox\r\n*Ibass	*Itenor	*Ialto	*Isoprn\r\n*I\"Bass	*I\"Tenor	*I\"Alto	*I\"Soprano\r\n*>[A,A,B]	*>[A,A,B]	*>[A,A,B]	*>[A,A,B]\r\n*>norep[A,B]	*>norep[A,B]	*>norep[A,B]	*>norep[A,B]\r\n*>A	*>A	*>A	*>A\r\n*	*oclefC4	*oclefC3	*oclefC1\r\n*clefF4	*clefGv2	*clefG2	*clefG2\r\n*k[f#]	*k[f#]	*k[f#]	*k[f#]\r\n*a:dor	*a:dor	*a:dor	*a:dor\r\n*M4/4	*M4/4	*M4/4	*M4/4\r\n*met(c)	*met(c)	*met(c)	*met(c)\r\n*MM100	*MM100	*MM100	*MM100\r\n4E	4e	4g#	4b\r\n=1	=1	=1	=1\r\n4A	4e	4a	4cc\r\n4B	4d	4g#	4b\r\n4c	4e	4a	4a\r\n8BL	8dL	8g#L	4ee\r\n8AJ	8cJ	8aJ	.\r\n=2	=2	=2	=2\r\n4G#	4B	4b	8eeL\r\n.	.	.	8ddJ\r\n4A	8cL	8eL	4cc\r\n.	8dJ	8f#J	.\r\n4E;	4e;	4g#;	4b;\r\n4BB	4f	4g#	4dd\r\n=3	=3	=3	=3\r\n8CL	4e	4a	4cc\r\n8DJ	.	.	.\r\n4E	8eL	4g#	4b\r\n.	8dJ	.	.\r\n4F	4c	8aL	4a\r\n.	.	8gJ	.\r\n8EL	4d	4f	8bL\r\n8DJ	.	.	16ccL\r\n.	.	.	16ddJJ\r\n=4	=4	=4	=4\r\n2E	8G#	2e	4cc\r\n.	4A	.	.\r\n.	.	.	4b\r\n.	8G#	.	.\r\n4AA;	4c;	4e;	4a;\r\n=:|!	=:|!	=:|!	=:|!\r\n*>B	*>B	*>B	*>B\r\n4F#	4A	4d	4a\r\n=5	=5	=5	=5\r\n8GL	8GL	8dL	8bL\r\n8F#J	8AJ	8d#J	8aJ\r\n4E	4B	4e	4g\r\n8BL	4B	4d#	4f#\r\n8AJ	.	.	.\r\n8GL	8BL	8eL	8eL\r\n8F#J	8AJ	8d#J	8f#J\r\n=6	=6	=6	=6\r\n8EL	4B	8eL	4g\r\n8DJ	.	8gJ	.\r\n4C	4c	8f#L	4a\r\n.	.	8eJ	.\r\n4BB;	4F#;	4d#;	4b;\r\n4E	8eL	4B	4g\r\n.	8dnJ	.	.\r\n=7	=7	=7	=7\r\n4F	8cL	4A	8aL\r\n.	8dJ	.	8bJ\r\n8CL	4e	4a	4cc\r\n8DJ	.	.	.\r\n4E	4e	4g#	4b\r\n8AAL	8eL	4a	8ccL\r\n8BBJ	8dJ	.	8bJ\r\n=8	=8	=8	=8\r\n8CL	4c	4e	4a\r\n8DJ	.	.	.\r\n4E	4B	4e	4g#\r\n4AA;	4c;	4e;	4a;\r\n4A	4c	4e	4a\r\n=9	=9	=9	=9\r\n4G#	4B	4e	4ee\r\n8AL	4A	4e	4cc\r\n8GJ	.	.	.\r\n8FL	4A	4f	4dd\r\n8EJ	.	.	.\r\n8DL	4B-	4g	4ee\r\n8C#J	.	.	.\r\n=10	=10	=10	=10\r\n4D	8AL	8f#XL	4dd\r\n.	8EJ	8g#J	.\r\n4D#	4F#X	4a	4cc\r\n4E;	4G#;	4e;	4b;\r\n==	==	==	==\r\n*-	*-	*-	*-\r\n!!!YOR1: 371 vierstimmige Choralges&auml;nge von Johann Sebastian Bach, \r\n!!!YOR2: 4th ed. by Alfred D&ouml;rffel (Leipzig: Breitkopf und H&auml;rtel, \r\n!!!YOR2: c.1875). 178 pp. Plate \"V.A.10\".  reprint: J.S. Bach, 371 Four-Part \r\n!!!YOR4: Chorales (New York: Associated Music Publishers, Inc., c.1940).\r\n!!!SMS: B&H, 4th ed, Alfred D&ouml;rffel, c.1875, plate V.A.10\r\n!!!PC#2: 7 (Budapest/Imre, 1982) with first part written with repeats.\r\n!!!EED:  Craig Stuart Sapp\r\n!!!EEV:  2009/05/22\r\n', '石田佳佑', 2, '2020-07-01 01:42:32'),
(23, 'EthnicMusic', 'indea', 'lalalala', 'aseem', 'testtest', '松本隼人', 3, '2020-07-01 01:43:25'),
(24, 'EthnicMusic', 'arab', 'arabarab', 'abra', 'aaaaa', '松本隼人', 3, '2020-07-01 01:43:53'),
(25, 'Classical', 'deltest', 'delete', 'deldel', 'what if?', 'ヨデンユキコ', 65, '2020-07-01 18:46:54'),
(26, 'Classical', 'test', 'hash', 'test', 'hash_del', 'テスト太郎', 88, '2020-07-01 20:56:26'),
(27, 'FilmScore', 'chart', 'forchart', 'test', 'asdf_updated', 'YukikoYoden', 1, '2020-06-29 03:35:20'),
(28, 'FilmScore', 'MGMM', '1111', '11111', '22222', 'YukikoYoden', 1, '2020-07-02 17:16:34'),
(29, 'FilmScore', 'test', 'test', 'ttttt', 'ttttttt', 'YukikoYoden', 1, '2020-07-02 17:21:03'),
(30, 'Classical', 'test', 'test', 'xqqqq', 'qqqqq', 'YukikoYoden', 1, '2020-07-02 17:24:45'),
(31, 'EthnicMusic', 'abc ', 'abc', 'abc abc', 'abcabc', '松本隼人', 3, '2020-07-02 18:06:51'),
(32, 'EthnicMusic', 'my les co', 'edittest', 'Yukiko Yoden', 'asdfasdf', 'テスト太郎', 88, '2020-07-02 18:07:37'),
(33, 'FilmScore', 'my les co', 'edittest', 'YODEN YUKIKO', 'asdfasdfasdf', 'テスト太郎', 88, '2020-07-02 18:07:56'),
(34, 'FilmScore', 'my les co', 'edittest', 'yukikoyoden', 'asdasdfasdafs', 'テスト太郎', 88, '2020-07-02 18:08:12'),
(35, 'Classical', 'test', '１', '１', '１', 'テスト太郎', 88, '2020-07-04 15:17:39'),
(36, 'FilmScore', 'q', 'test', 'q', 'q', 'テスト太郎', 88, '2020-07-04 15:37:12'),
(37, 'Classical', '1', '1111', '1', '11', 'テスト太郎', 88, '2020-07-04 15:38:00'),
(38, 'Classical', 'test', 'test', 'Bach a　b', 'yyy', 'テスト太郎', 97, '2020-07-07 01:00:56'),
(39, 'Classical', 'test', 'test', 'Bach a　b', 'uuu', 'テスト太郎', 98, '2020-07-07 01:10:57'),
(40, 'Classical', 'test', 'test', 'aseem', 'asdf', 'テスト太郎', 99, '2020-07-07 01:14:27');

-- --------------------------------------------------------

--
-- テーブルの構造 `mrdb_old_user_table`
--

CREATE TABLE `mrdb_old_user_table` (
  `id` int(12) NOT NULL,
  `old_id` int(12) NOT NULL,
  `old_u_name` varchar(128) NOT NULL,
  `old_u_mail` varchar(64) NOT NULL,
  `old_u_pw` varchar(64) NOT NULL,
  `old_indate` datetime NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `mrdb_old_user_table`
--

INSERT INTO `mrdb_old_user_table` (`id`, `old_id`, `old_u_name`, `old_u_mail`, `old_u_pw`, `old_indate`, `indate`) VALUES
(13, 99, 'テスト太郎', 'hash@hash', '$2y$10$Drydsi0yO6iTJYkybqyc3eGUbd10PO/ulj744gXdd7EottMfLjhs6', '2020-07-07 01:13:45', '2020-07-07 01:18:24');

-- --------------------------------------------------------

--
-- テーブルの構造 `mrdb_profile_table`
--

CREATE TABLE `mrdb_profile_table` (
  `id` int(11) NOT NULL,
  `city` varchar(128) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `inst` varchar(128) DEFAULT NULL,
  `dept` varchar(128) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `keywords` varchar(10000) DEFAULT NULL,
  `facebook` varchar(256) DEFAULT NULL,
  `twitter` varchar(256) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `mrdb_profile_table`
--

INSERT INTO `mrdb_profile_table` (`id`, `city`, `country`, `inst`, `dept`, `comment`, `keywords`, `facebook`, `twitter`, `u_id`, `indate`) VALUES
(1, 'Suginami-ku', 'Japan', 'Tokyo University of the Arts', 'music', 'Hi there! I like MR.database!', 'J.S.Bach,filmmusic,photoplay', 'https://www.facebook.com/yukiko.yoden/', 'twi', 101, '2020-07-09 19:27:03'),
(2, 'Suginami-ku', 'Japan', 'Stanford', 'music', 'testinf', 'J.S.Bach,kern', 'ff', 'tt', 102, '2020-07-09 23:00:25'),
(3, 'Suginami-ku', '', 'Tokyo University of the Arts', 'music', 'Hi there! I like MR.database! I\'m updating!', 'J.S.Bach,filmmusic,photoplay', 'https://www.facebook.com/yukiko.yoden/', 'twi', 101, '2020-07-09 23:40:57');

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
(81, 'fyoibw', 'aeliuy@awer', 'qwetro1234', 0, '2020-06-18 22:34:45'),
(83, 'qwera', 'asf1234@1234', '123476uio', 0, '2020-06-20 14:48:04'),
(86, 'ヨデンユキコ', 'yuil@drj', '1234asghjk', 0, '2020-06-20 15:32:53'),
(87, 'ヨデンユキコ', 'qweryuio@qwertoi', '$2y$10$GCBiipD/X6lcySy/Dek9O.xdlMMXotTQkeY6RUNreYKvlP2hOJwf.', 0, '2020-06-20 17:26:26'),
(101, 'setpro太郎', 'set@set', '$2y$10$fSOPvrmc7IW4MIVrn1jqpe9HmIgxypynhJgAz.HHVgf9ckV.YrRve', 0, '2020-07-09 19:24:06'),
(102, 'test hanako', 'hana@hana', '$2y$10$k5YvPuDKnLpuykIucVR5FuejtZFw9hDxemzqtO25udZzd00216wh6', 0, '2020-07-09 22:47:44');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `mrdb_kern_table`
--
ALTER TABLE `mrdb_kern_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- テーブルのインデックス `mrdb_old_user_table`
--
ALTER TABLE `mrdb_old_user_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `mrdb_profile_table`
--
ALTER TABLE `mrdb_profile_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- テーブルのインデックス `mrdb_user_table`
--
ALTER TABLE `mrdb_user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_mail` (`u_mail`),
  ADD UNIQUE KEY `u_mail_2` (`u_mail`),
  ADD UNIQUE KEY `u_mail_3` (`u_mail`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `mrdb_kern_table`
--
ALTER TABLE `mrdb_kern_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- テーブルのAUTO_INCREMENT `mrdb_old_user_table`
--
ALTER TABLE `mrdb_old_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルのAUTO_INCREMENT `mrdb_profile_table`
--
ALTER TABLE `mrdb_profile_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `mrdb_user_table`
--
ALTER TABLE `mrdb_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `mrdb_kern_table`
--
ALTER TABLE `mrdb_kern_table`
  ADD CONSTRAINT `mrdb_kern_table_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `mrdb_user_table` (`id`);

--
-- テーブルの制約 `mrdb_profile_table`
--
ALTER TABLE `mrdb_profile_table`
  ADD CONSTRAINT `mrdb_profile_table_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `mrdb_user_table` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
