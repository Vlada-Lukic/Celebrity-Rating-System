-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 02:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `celebrity_guests`
--

-- --------------------------------------------------------

--
-- Table structure for table `cruise_rating`
--

CREATE TABLE `cruise_rating` (
  `Service_In_MDR` double NOT NULL,
  `Food_Quality_In_MDR` double NOT NULL,
  `Service_In_OVC` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cruise_rating`
--

INSERT INTO `cruise_rating` (`Service_In_MDR`, `Food_Quality_In_MDR`, `Service_In_OVC`) VALUES
(78.54, 90.2, 85.6),
(88.7, 92.8, 96.4),
(5.58, 5.433333333333334, 5.86);

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `Room_Number` int(10) NOT NULL,
  `First_Name` varchar(10) NOT NULL,
  `Last_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`Room_Number`, `First_Name`, `Last_Name`) VALUES
(1001, '	Jonis	', '	Sharples	'),
(1002, '	Niko	', '	Orsay	'),
(1003, '	Dredi	', '	Potts	'),
(1004, '	Lew	', '	Daal	'),
(1005, '	Noak	', '	Constanti'),
(1006, '	Glenn	', '	Odde	'),
(1007, '	Blanca	', '	Gaze	'),
(1008, '	Bondon	', '	Chrispin	'),
(1009, '	Matty	', '	Kilduff	'),
(1010, '	Haskel	', '	MacFadzea'),
(1011, '	Clare	', '	Eggleton	'),
(1012, '	Terrell	', '	Monksfiel'),
(1013, '	Brett	', '	Dowling	'),
(1014, '	Leese	', '	Dreghorn	'),
(1015, '	Nicole	', '	Forster	'),
(1016, '	Wynny	', '	Abden	'),
(1017, '	Seymour	', '	Kupis	'),
(1018, '	Brinn	', '	Waldie	'),
(1019, '	Lynnea	', '	Eagleston'),
(1020, '	Stepha	', '	McGuiness'),
(1021, '	Marie-ann', '	Manass	'),
(1022, '	Jerrie	', '	Dominguez'),
(1023, '	Andreas	', '	Noweak	'),
(1024, '	Llewellyn', '	Dottrell	'),
(1025, '	Aloysia	', '	Guerreau	'),
(1026, '	Kristofor', '	Lukianovi'),
(1027, '	Gary	', '	Solomonid'),
(1028, '	Shelden	', '	Kalewe	'),
(1029, '	Imelda	', '	Lucus	'),
(1030, '	Doreen	', '	Cervantes'),
(1031, '	Cornall	', '	Brownsett'),
(1032, '	Tiertza	', '	Bagott	'),
(1033, '	Vevay	', '	Betancour'),
(1034, '	Winn	', '	Nast	'),
(1035, '	Bennie	', '	Randerson'),
(1036, '	Billy	', '	Novichenk'),
(1037, '	Emory	', '	Nettles	'),
(1038, '	Obie	', '	Cuxson	'),
(1039, '	Pearle	', '	Dalziell	'),
(1040, '	Isak	', '	Hertwell	'),
(1041, '	Avrom	', '	Kettlesti'),
(1042, '	Charity	', '	Ohm	'),
(1043, '	Janek	', '	Shirt	'),
(1044, '	Jeanie	', '	Waycott	'),
(1045, '	Fredrick	', '	Canario	'),
(1046, '	Mahmud	', '	Polini	'),
(1047, '	Remington', '	Drieu	'),
(1048, '	Isobel	', '	Simeoli	'),
(1049, '	Nanette	', '	Edmeads	'),
(1050, '	Hanson	', '	Tresvina	'),
(1051, '	Alf	', '	McTerlagh'),
(1052, '	Tirrell	', '	Cathery	'),
(1053, '	Dannie	', '	Morecomb	'),
(1054, '	Leoline	', '	Anetts	'),
(1055, '	Yoshi	', '	Dabinett	'),
(1056, '	Nerte	', '	McIan	'),
(1057, '	Burlie	', '	Ingram	'),
(1058, '	Chastity	', '	Streader	'),
(1059, '	Mord	', '	Snedden	'),
(1060, '	Wenona	', '	Truelove	'),
(1061, '	Giacopo	', '	Reilingen'),
(1062, '	Avram	', '	Kasman	'),
(1063, '	Weber	', '	Standley	'),
(1064, '	Averil	', '	Lilleman	'),
(1065, '	Dalila	', '	Clapperto'),
(1066, '	Missy	', '	Hattersla'),
(1067, '	Kath	', '	O\'	'),
(1068, '	Krystle	', '	Bartosins'),
(1069, '	Jennilee	', '	Avramovic'),
(1070, '	Happy	', '	Swayte	'),
(1071, '	Bartie	', '	MacDougal'),
(1072, '	Krisha	', '	Ridde	'),
(1073, '	Dar	', '	Rielly	'),
(1074, '	Elisabet	', '	Lince	'),
(1075, '	Skipton	', '	Cumbers	'),
(1076, '	Rowe	', '	Bednell	'),
(1077, '	Malynda	', '	Sleight	'),
(1078, '	Michaelin', '	Rontsch	'),
(1079, '	Sam	', '	Ahren	'),
(1080, '	Arnaldo	', '	Aslett	'),
(1081, '	Cherry	', '	Burdekin	'),
(1082, '	Mira	', '	Pinney	'),
(1083, '	Chastity	', '	Sobey	'),
(1084, '	Tudor	', '	Radage	'),
(1085, '	Ailey	', '	Strelitz	'),
(1086, '	Jule	', '	Guarin	'),
(1087, '	Maryjane	', '	Abels	'),
(1088, '	Anna-mari', '	Hazzard	'),
(1089, '	Jenine	', '	Lagne	'),
(1090, '	Rubina	', '	Ozintsev	'),
(1091, '	Lurlene	', '	Miskimmon'),
(1092, '	Clo	', '	Marson	'),
(1093, '	Juline	', '	Bottomley'),
(1094, '	Claus	', '	Antonowic'),
(1095, '	Audy	', '	Hanwright'),
(1096, '	Gustaf	', '	Seaborn	'),
(1097, '	Flem	', '	Jollye	'),
(1098, '	Bernhard	', '	Witheridg'),
(1099, '	Sibeal	', '	Le	'),
(1100, '	Whitney	', '	Corben	'),
(1101, '	Meghan	', '	Rowesby	'),
(1102, '	Teodoor	', '	Schoular	'),
(1103, '	Ab	', '	Bachman	'),
(1104, '	Ade	', '	Antonias	'),
(1105, '	Maryanne	', '	Rowlett	'),
(1106, '	Rheba	', '	Posse	'),
(1107, '	Anna-dian', '	Benner	'),
(1108, '	Josee	', '	Kobisch	'),
(1109, '	Shirlene	', '	Terron	'),
(1110, '	Erminie	', '	Terzo	'),
(1111, '	Rivkah	', '	Borton	'),
(1112, '	Guilbert	', '	Marns	'),
(1113, '	Marje	', '	Hodgon	'),
(1114, '	Mace	', '	Bellringe'),
(1115, '	Scarlett	', '	Slevin	'),
(1116, '	Gerick	', '	Scarce	'),
(1117, '	Boone	', '	Boorne	'),
(1118, '	Misti	', '	Gennrich	'),
(1119, '	Mile	', '	Shackleto'),
(1120, '	Ezmeralda', '	Beneze	'),
(1121, '	Orly	', '	Stiff	'),
(1122, '	Raynell	', '	Biagi	'),
(1123, '	Shaylah	', '	Demeza	'),
(1124, '	Adolph	', '	Rosindill'),
(1125, '	Shawn	', '	Bullion	'),
(1126, '	Dominica	', '	Rontree	'),
(1127, '	Cheryl	', '	Reinhard	'),
(1128, '	Doralia	', '	Aldwinckl'),
(1129, '	Ana	', '	Curran	'),
(1130, '	Gil	', '	Buff	'),
(1131, '	West	', '	McVeagh	'),
(1132, '	Elsie	', '	Candwell	'),
(1133, '	Giorgi	', '	Rodinger	'),
(1134, '	Jerrie	', '	Settle	'),
(1135, '	Giraud	', '	Derrick	'),
(1136, '	Odo	', '	Gadsden	'),
(1137, '	Paige	', '	Tweedell	'),
(1138, '	Sigmund	', '	Morrant	'),
(1139, '	Emlynne	', '	Ditch	'),
(1140, '	Antin	', '	Gallimore'),
(1141, '	Diana	', '	Wileman	'),
(1142, '	Porty	', '	Tiner	'),
(1143, '	Bran	', '	Lidgey	'),
(1144, '	Dian	', '	Chastelai'),
(1145, '	Hilda	', '	Mowday	'),
(1146, '	Ernestus	', '	Marshland'),
(1147, '	Harris	', '	Keepin	'),
(1148, '	Deonne	', '	Ubsdell	'),
(1149, '	Trudy	', '	Potteridg'),
(1150, '	Reina	', '	Giraldez	');

-- --------------------------------------------------------

--
-- Table structure for table `medallia`
--

CREATE TABLE `medallia` (
  `Room_Number` int(10) NOT NULL,
  `First_Name` varchar(10) NOT NULL,
  `Last_Name` varchar(10) NOT NULL,
  `Service_In_MDR` int(2) NOT NULL,
  `Food_Quality_In_MDR` int(2) NOT NULL,
  `Service_In_OVC` int(2) NOT NULL,
  `Station_Number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medallia`
--

INSERT INTO `medallia` (`Room_Number`, `First_Name`, `Last_Name`, `Service_In_MDR`, `Food_Quality_In_MDR`, `Service_In_OVC`, `Station_Number`) VALUES
(1001, '	Jonis	', '	Sharples	', 7, 3, 9, 3),
(1002, '	Niko	', '	Orsay	', 7, 8, 8, 3),
(1003, '	Dredi	', '	Potts	', 6, 1, 8, 3),
(1004, '	Lew	', '	Daal	', 9, 10, 6, 3),
(1005, '	Noak	', '	Constanti', 7, 10, 9, 12),
(1006, '	Glenn	', '	Odde	', 4, 10, 3, 11),
(1007, '	Blanca	', '	Gaze	', 8, 9, 1, 13),
(1008, '	Bondon	', '	Chrispin	', 4, 4, 7, 6),
(1009, '	Matty	', '	Kilduff	', 4, 5, 10, 5),
(1010, '	Haskel	', '	MacFadzea', 3, 2, 10, 4),
(1011, '	Clare	', '	Eggleton	', 8, 6, 5, 10),
(1012, '	Terrell	', '	Monksfiel', 5, 6, 5, 12),
(1013, '	Brett	', '	Dowling	', 8, 10, 9, 7),
(1014, '	Leese	', '	Dreghorn	', 10, 1, 4, 6),
(1015, '	Nicole	', '	Forster	', 4, 1, 4, 4),
(1016, '	Wynny	', '	Abden	', 8, 5, 6, 9),
(1017, '	Seymour	', '	Kupis	', 6, 10, 4, 2),
(1018, '	Brinn	', '	Waldie	', 7, 8, 1, 8),
(1019, '	Lynnea	', '	Eagleston', 10, 8, 3, 15),
(1020, '	Stepha	', '	McGuiness', 6, 6, 3, 15),
(1021, '	Marie-ann', '	Manass	', 4, 1, 7, 5),
(1022, '	Jerrie	', '	Dominguez', 6, 3, 6, 4),
(1023, '	Andreas	', '	Noweak	', 1, 4, 7, 5),
(1024, '	Llewellyn', '	Dottrell	', 8, 3, 4, 10),
(1025, '	Aloysia	', '	Guerreau	', 3, 5, 4, 7),
(1026, '	Kristofor', '	Lukianovi', 4, 4, 3, 6),
(1027, '	Gary	', '	Solomonid', 3, 4, 2, 7),
(1028, '	Shelden	', '	Kalewe	', 3, 1, 10, 2),
(1029, '	Imelda	', '	Lucus	', 8, 8, 9, 9),
(1030, '	Doreen	', '	Cervantes', 5, 2, 8, 15),
(1031, '	Cornall	', '	Brownsett', 4, 2, 1, 13),
(1032, '	Tiertza	', '	Bagott	', 9, 5, 7, 9),
(1033, '	Vevay	', '	Betancour', 5, 3, 7, 14),
(1034, '	Winn	', '	Nast	', 4, 5, 3, 15),
(1035, '	Bennie	', '	Randerson', 5, 9, 9, 7),
(1036, '	Billy	', '	Novichenk', 1, 6, 8, 7),
(1037, '	Emory	', '	Nettles	', 5, 5, 7, 14),
(1038, '	Obie	', '	Cuxson	', 3, 2, 2, 14),
(1039, '	Pearle	', '	Dalziell	', 6, 8, 1, 2),
(1040, '	Isak	', '	Hertwell	', 3, 9, 10, 8),
(1041, '	Avrom	', '	Kettlesti', 7, 7, 2, 14),
(1042, '	Charity	', '	Ohm	', 6, 5, 8, 6),
(1043, '	Janek	', '	Shirt	', 1, 4, 4, 5),
(1044, '	Jeanie	', '	Waycott	', 3, 1, 1, 8),
(1045, '	Fredrick	', '	Canario	', 7, 5, 6, 7),
(1046, '	Mahmud	', '	Polini	', 5, 3, 5, 1),
(1047, '	Remington', '	Drieu	', 10, 7, 8, 11),
(1048, '	Isobel	', '	Simeoli	', 9, 10, 10, 3),
(1049, '	Nanette	', '	Edmeads	', 10, 8, 2, 8),
(1050, '	Hanson	', '	Tresvina	', 2, 6, 8, 9),
(1051, '	Alf	', '	McTerlagh', 9, 10, 4, 9),
(1052, '	Tirrell	', '	Cathery	', 9, 2, 1, 8),
(1053, '	Dannie	', '	Morecomb	', 10, 8, 3, 8),
(1054, '	Leoline	', '	Anetts	', 7, 2, 7, 8),
(1055, '	Yoshi	', '	Dabinett	', 5, 3, 8, 8),
(1056, '	Nerte	', '	McIan	', 10, 7, 1, 11),
(1057, '	Burlie	', '	Ingram	', 8, 3, 4, 8),
(1058, '	Chastity	', '	Streader	', 4, 6, 2, 9),
(1059, '	Mord	', '	Snedden	', 4, 3, 10, 7),
(1060, '	Wenona	', '	Truelove	', 7, 7, 10, 6),
(1061, '	Giacopo	', '	Reilingen', 3, 8, 10, 14),
(1062, '	Avram	', '	Kasman	', 10, 4, 10, 7),
(1063, '	Weber	', '	Standley	', 5, 3, 9, 14),
(1064, '	Averil	', '	Lilleman	', 3, 10, 7, 4),
(1065, '	Dalila	', '	Clapperto', 10, 3, 6, 4),
(1066, '	Missy	', '	Hattersla', 4, 2, 8, 2),
(1067, '	Kath	', '	O\'	', 7, 6, 8, 11),
(1068, '	Krystle	', '	Bartosins', 4, 8, 3, 11),
(1069, '	Jennilee	', '	Avramovic', 3, 9, 8, 10),
(1070, '	Happy	', '	Swayte	', 3, 4, 9, 11),
(1071, '	Bartie	', '	MacDougal', 4, 5, 2, 12),
(1072, '	Krisha	', '	Ridde	', 5, 8, 6, 11),
(1073, '	Dar	', '	Rielly	', 2, 4, 9, 2),
(1074, '	Elisabet	', '	Lince	', 5, 1, 8, 7),
(1075, '	Skipton	', '	Cumbers	', 1, 6, 5, 1),
(1076, '	Rowe	', '	Bednell	', 8, 2, 4, 12),
(1077, '	Malynda	', '	Sleight	', 9, 2, 10, 15),
(1078, '	Michaelin', '	Rontsch	', 1, 1, 2, 11),
(1079, '	Sam	', '	Ahren	', 5, 10, 2, 1),
(1080, '	Arnaldo	', '	Aslett	', 7, 6, 5, 12),
(1081, '	Cherry	', '	Burdekin	', 7, 3, 9, 1),
(1082, '	Mira	', '	Pinney	', 4, 7, 1, 4),
(1083, '	Chastity	', '	Sobey	', 5, 1, 5, 13),
(1084, '	Tudor	', '	Radage	', 4, 4, 7, 1),
(1085, '	Ailey	', '	Strelitz	', 8, 2, 6, 3),
(1086, '	Jule	', '	Guarin	', 5, 5, 9, 11),
(1087, '	Maryjane	', '	Abels	', 5, 8, 3, 11),
(1088, '	Anna-mari', '	Hazzard	', 1, 8, 3, 4),
(1089, '	Jenine	', '	Lagne	', 4, 10, 5, 7),
(1090, '	Rubina	', '	Ozintsev	', 2, 9, 6, 6),
(1091, '	Lurlene	', '	Miskimmon', 1, 10, 6, 13),
(1092, '	Clo	', '	Marson	', 6, 9, 8, 9),
(1093, '	Juline	', '	Bottomley', 10, 7, 9, 2),
(1094, '	Claus	', '	Antonowic', 2, 4, 10, 10),
(1095, '	Audy	', '	Hanwright', 10, 2, 6, 2),
(1096, '	Gustaf	', '	Seaborn	', 3, 5, 10, 9),
(1097, '	Flem	', '	Jollye	', 1, 6, 1, 8),
(1098, '	Bernhard	', '	Witheridg', 4, 10, 9, 5),
(1099, '	Sibeal	', '	Le	', 8, 1, 2, 15),
(1100, '	Whitney	', '	Corben	', 1, 10, 7, 5),
(1101, '	Meghan	', '	Rowesby	', 8, 8, 9, 15),
(1102, '	Teodoor	', '	Schoular	', 4, 9, 5, 5),
(1103, '	Ab	', '	Bachman	', 5, 2, 5, 5),
(1104, '	Ade	', '	Antonias	', 9, 9, 9, 4),
(1105, '	Maryanne	', '	Rowlett	', 9, 10, 1, 7),
(1106, '	Rheba	', '	Posse	', 8, 3, 3, 9),
(1107, '	Anna-dian', '	Benner	', 2, 7, 2, 13),
(1108, '	Josee	', '	Kobisch	', 8, 9, 1, 6),
(1109, '	Shirlene	', '	Terron	', 9, 8, 5, 3),
(1110, '	Erminie	', '	Terzo	', 3, 8, 8, 7),
(1111, '	Rivkah	', '	Borton	', 5, 2, 6, 13),
(1112, '	Guilbert	', '	Marns	', 2, 7, 7, 3),
(1113, '	Marje	', '	Hodgon	', 2, 3, 8, 14),
(1114, '	Mace	', '	Bellringe', 10, 4, 9, 1),
(1115, '	Scarlett	', '	Slevin	', 3, 5, 2, 12),
(1116, '	Gerick	', '	Scarce	', 8, 6, 7, 6),
(1117, '	Boone	', '	Boorne	', 2, 5, 9, 10),
(1118, '	Misti	', '	Gennrich	', 1, 8, 6, 2),
(1119, '	Mile	', '	Shackleto', 8, 5, 7, 15),
(1120, '	Ezmeralda', '	Beneze	', 5, 5, 10, 7),
(1121, '	Orly	', '	Stiff	', 6, 10, 9, 15),
(1122, '	Raynell	', '	Biagi	', 2, 4, 1, 3),
(1123, '	Shaylah	', '	Demeza	', 5, 1, 9, 1),
(1124, '	Adolph	', '	Rosindill', 6, 1, 5, 15),
(1125, '	Shawn	', '	Bullion	', 4, 8, 9, 15),
(1126, '	Dominica	', '	Rontree	', 1, 6, 8, 7),
(1127, '	Cheryl	', '	Reinhard	', 9, 7, 8, 4),
(1128, '	Doralia	', '	Aldwinckl', 9, 2, 2, 3),
(1129, '	Ana	', '	Curran	', 5, 3, 5, 4),
(1130, '	Gil	', '	Buff	', 9, 10, 2, 13),
(1131, '	West	', '	McVeagh	', 10, 3, 7, 14),
(1132, '	Elsie	', '	Candwell	', 6, 3, 7, 3),
(1133, '	Giorgi	', '	Rodinger	', 9, 2, 8, 12),
(1134, '	Jerrie	', '	Settle	', 5, 8, 3, 12),
(1135, '	Giraud	', '	Derrick	', 1, 8, 1, 2),
(1136, '	Odo	', '	Gadsden	', 2, 7, 5, 10),
(1137, '	Paige	', '	Tweedell	', 4, 7, 6, 5),
(1138, '	Sigmund	', '	Morrant	', 10, 1, 4, 15),
(1139, '	Emlynne	', '	Ditch	', 8, 10, 6, 14),
(1140, '	Antin	', '	Gallimore', 6, 4, 7, 3),
(1141, '	Diana	', '	Wileman	', 4, 8, 10, 11),
(1142, '	Porty	', '	Tiner	', 7, 9, 10, 6),
(1143, '	Bran	', '	Lidgey	', 3, 3, 9, 3),
(1144, '	Dian	', '	Chastelai', 5, 2, 4, 3),
(1145, '	Hilda	', '	Mowday	', 7, 3, 6, 7),
(1146, '	Ernestus	', '	Marshland', 5, 1, 5, 8),
(1147, '	Harris	', '	Keepin	', 7, 5, 4, 11),
(1148, '	Deonne	', '	Ubsdell	', 5, 8, 10, 12),
(1149, '	Trudy	', '	Potteridg', 1, 2, 1, 6),
(1150, '	Reina	', '	Giraldez	', 9, 4, 2, 6),
(1151, 'Vlada', 'Lukic', 10, 10, 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `rating_score`
--

CREATE TABLE `rating_score` (
  `ID_Number` int(10) NOT NULL,
  `First_Name` varchar(10) NOT NULL,
  `Last_Name` varchar(10) NOT NULL,
  `Service_In_MDR` int(10) NOT NULL,
  `Food_Quality_In_MDR` int(10) NOT NULL,
  `Service_In_OVC` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_score`
--

INSERT INTO `rating_score` (`ID_Number`, `First_Name`, `Last_Name`, `Service_In_MDR`, `Food_Quality_In_MDR`, `Service_In_OVC`) VALUES
(10554, 'Mona', 'Harrison', 7, 7, 5),
(12548, 'Jonas', 'Brewer', 6, 5, 6),
(14182, 'Lila', 'Jefferson', 7, 6, 4),
(16239, 'Hector', 'Donovan', 6, 6, 5),
(17047, 'Jarrod', 'Martin', 5, 4, 6),
(19138, 'Cedric', 'Anthony', 5, 6, 7),
(19222, 'Natalie', 'Figueroa', 5, 5, 5),
(20893, 'Kyle', 'Mcconnell', 5, 6, 7),
(23424, 'Skyler', 'Snyder', 5, 5, 6),
(25453, 'Adena', 'Skinner', 6, 6, 7),
(25602, 'Lars', 'Jimenez', 6, 5, 6),
(25629, 'Elliott', 'Rodriquez', 5, 6, 8),
(29273, 'Nasim', 'Hayden', 6, 5, 5),
(35495, 'Quyn', 'Swanson', 5, 6, 5),
(39191, 'Doris', 'Byers', 7, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `stations_and_tables`
--

CREATE TABLE `stations_and_tables` (
  `Station_Number` int(10) NOT NULL,
  `ID_Number` int(10) NOT NULL,
  `Waiter` varchar(20) NOT NULL,
  `Table_Number` int(10) NOT NULL,
  `Room_Number` int(10) NOT NULL,
  `Guest` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stations_and_tables`
--

INSERT INTO `stations_and_tables` (`Station_Number`, `ID_Number`, `Waiter`, `Table_Number`, `Room_Number`, `Guest`) VALUES
(1, 25453, 'Adena Skinner', 101, 1001, 'Jonis Sharples'),
(1, 25453, 'Adena Skinner', 102, 1002, 'Niko Orsay'),
(1, 25453, 'Adena Skinner', 103, 1003, 'Dredi Potts'),
(1, 25453, 'Adena Skinner', 104, 1004, 'Lew Daal'),
(1, 25453, 'Adena Skinner', 105, 1005, 'Noak Constantine'),
(1, 25453, 'Adena Skinner', 106, 1006, 'Glenn Odde'),
(1, 25453, 'Adena Skinner', 107, 1007, 'Blanca Gaze'),
(1, 25453, 'Adena Skinner', 108, 1008, 'Bondon Chrispin'),
(1, 25453, 'Adena Skinner', 109, 1009, 'Matty Kilduff'),
(1, 25453, 'Adena Skinner', 110, 1010, 'Haskel MacFadzean'),
(2, 14182, 'Lila  Jefferson', 201, 1011, 'Clare Eggleton'),
(2, 14182, 'Lila  Jefferson', 202, 1012, 'Terrell Monksfield'),
(2, 14182, 'Lila  Jefferson', 203, 1013, 'Brett Dowling'),
(2, 14182, 'Lila  Jefferson', 204, 1014, 'Leese Dreghorn'),
(2, 14182, 'Lila  Jefferson', 205, 1015, 'Nicole Forster'),
(2, 14182, 'Lila  Jefferson', 206, 1016, 'Wynny Abden'),
(2, 14182, 'Lila  Jefferson', 207, 1017, 'Seymour Kupis'),
(2, 14182, 'Lila  Jefferson', 208, 1018, 'Brinn Waldie'),
(2, 14182, 'Lila  Jefferson', 209, 1019, 'Lynnea Eaglestone'),
(2, 14182, 'Lila  Jefferson', 210, 1020, 'Stepha McGuiness'),
(3, 17047, 'Jarrod  Martin', 301, 1021, 'Marie-ann Manass'),
(3, 17047, 'Jarrod  Martin', 302, 1022, 'Jerrie Dominguez'),
(3, 17047, 'Jarrod  Martin', 303, 1023, 'Andreas Noweak'),
(3, 17047, 'Jarrod  Martin', 304, 1024, 'Llewellyn Dottrell'),
(3, 17047, 'Jarrod  Martin', 305, 1025, 'Aloysia Guerreau'),
(3, 17047, 'Jarrod  Martin', 306, 1026, 'Kristofor Lukianovic'),
(3, 17047, 'Jarrod  Martin', 307, 1027, 'Gary Solomonides'),
(3, 17047, 'Jarrod  Martin', 308, 1028, 'Shelden Kalewe'),
(3, 17047, 'Jarrod  Martin', 309, 1029, 'Imelda Lucus'),
(3, 17047, 'Jarrod  Martin', 310, 1030, 'Doreen Cervantes'),
(4, 25602, 'Lars  Jimenez', 401, 1031, 'Cornall Brownsett'),
(4, 25602, 'Lars  Jimenez', 402, 1032, 'Tiertza Bagott'),
(4, 25602, 'Lars  Jimenez', 403, 1033, 'Vevay Betancourt'),
(4, 25602, 'Lars  Jimenez', 404, 1034, 'Winn Nast'),
(4, 25602, 'Lars  Jimenez', 405, 1035, 'Bennie Randerson'),
(4, 25602, 'Lars  Jimenez', 406, 1036, 'Billy Novichenko'),
(4, 25602, 'Lars  Jimenez', 407, 1037, 'Emory Nettles'),
(4, 25602, 'Lars  Jimenez', 408, 1038, 'Obie Cuxson'),
(4, 25602, 'Lars  Jimenez', 409, 1039, 'Pearle Dalziell'),
(4, 25602, 'Lars  Jimenez', 410, 1040, 'Isak Hertwell'),
(5, 16239, 'Hector  Donovan', 501, 1041, 'Avrom Kettlesting'),
(5, 16239, 'Hector  Donovan', 502, 1042, 'Charity Ohm'),
(5, 16239, 'Hector  Donovan', 503, 1043, 'Janek Shirt'),
(5, 16239, 'Hector  Donovan', 504, 1044, 'Jeanie Waycott'),
(5, 16239, 'Hector  Donovan', 505, 1045, 'Fredrick Canario'),
(5, 16239, 'Hector  Donovan', 506, 1046, 'Mahmud Polini'),
(5, 16239, 'Hector  Donovan', 507, 1047, 'Remington Drieu'),
(5, 16239, 'Hector  Donovan', 508, 1048, 'Isobel Simeoli'),
(5, 16239, 'Hector  Donovan', 509, 1049, 'Nanette Edmeads'),
(5, 16239, 'Hector  Donovan', 510, 1050, 'Hanson Tresvina'),
(6, 39191, 'Doris  Byers', 601, 1051, 'Alf McTerlagh'),
(6, 39191, 'Doris  Byers', 602, 1052, 'Tirrell Cathery'),
(6, 39191, 'Doris  Byers', 603, 1053, 'Dannie Morecomb'),
(6, 39191, 'Doris  Byers', 604, 1054, 'Leoline Anetts'),
(6, 39191, 'Doris  Byers', 605, 1055, 'Yoshi Dabinett'),
(6, 39191, 'Doris  Byers', 606, 1056, 'Nerte McIan'),
(6, 39191, 'Doris  Byers', 607, 1057, 'Burlie Ingram'),
(6, 39191, 'Doris  Byers', 608, 1058, 'Chastity Streader'),
(6, 39191, 'Doris  Byers', 609, 1059, 'Mord Snedden'),
(6, 39191, 'Doris  Byers', 610, 1060, 'Wenona Truelove'),
(7, 25629, 'Elliott  Rodriquez', 701, 1061, 'Giacopo Reilingen'),
(7, 25629, 'Elliott  Rodriquez', 702, 1062, 'Avram Kasman'),
(7, 25629, 'Elliott  Rodriquez', 703, 1063, 'Weber Standley'),
(7, 25629, 'Elliott  Rodriquez', 704, 1064, 'Averil Lilleman'),
(7, 25629, 'Elliott  Rodriquez', 705, 1065, 'Dalila Clapperton'),
(7, 25629, 'Elliott  Rodriquez', 706, 1066, 'Missy Hatterslay'),
(7, 25629, 'Elliott  Rodriquez', 707, 1067, 'Kath O\' Bee'),
(7, 25629, 'Elliott  Rodriquez', 708, 1068, 'Krystle Bartosinski'),
(7, 25629, 'Elliott  Rodriquez', 709, 1069, 'Jennilee Avramovich'),
(7, 25629, 'Elliott  Rodriquez', 710, 1070, 'Happy Swayte'),
(8, 19222, 'Natalie  Figueroa', 801, 1071, 'Bartie MacDougal'),
(8, 19222, 'Natalie  Figueroa', 802, 1072, 'Krisha Ridde'),
(8, 19222, 'Natalie  Figueroa', 803, 1073, 'Dar Rielly'),
(8, 19222, 'Natalie  Figueroa', 804, 1074, 'Elisabet Lince'),
(8, 19222, 'Natalie  Figueroa', 805, 1075, 'Skipton Cumbers'),
(8, 19222, 'Natalie  Figueroa', 806, 1076, 'Rowe Bednell'),
(8, 19222, 'Natalie  Figueroa', 807, 1077, 'Malynda Sleight'),
(8, 19222, 'Natalie  Figueroa', 808, 1078, 'Michaelina Rontsch'),
(8, 19222, 'Natalie  Figueroa', 809, 1079, 'Sam Ahren'),
(8, 19222, 'Natalie  Figueroa', 810, 1080, 'Arnaldo Aslett'),
(9, 35495, 'Quyn  Swanson', 901, 1081, 'Cherry Burdekin'),
(9, 35495, 'Quyn  Swanson', 902, 1082, 'Mira Pinney'),
(9, 35495, 'Quyn  Swanson', 903, 1083, 'Chastity Sobey'),
(9, 35495, 'Quyn  Swanson', 904, 1084, 'Tudor Radage'),
(9, 35495, 'Quyn  Swanson', 905, 1085, 'Ailey Strelitz'),
(9, 35495, 'Quyn  Swanson', 906, 1086, 'Jule Guarin'),
(9, 35495, 'Quyn  Swanson', 907, 1087, 'Maryjane Abels'),
(9, 35495, 'Quyn  Swanson', 908, 1088, 'Anna-maria Hazzard'),
(9, 35495, 'Quyn  Swanson', 909, 1089, 'Jenine Lagne'),
(9, 35495, 'Quyn  Swanson', 910, 1090, 'Rubina Ozintsev'),
(10, 20893, 'Kyle  Mcconnell', 1001, 1091, 'Lurlene Miskimmon'),
(10, 20893, 'Kyle  Mcconnell', 1002, 1092, 'Clo Marson'),
(10, 20893, 'Kyle  Mcconnell', 1003, 1093, 'Juline Bottomley'),
(10, 20893, 'Kyle  Mcconnell', 1004, 1094, 'Claus Antonowicz'),
(10, 20893, 'Kyle  Mcconnell', 1005, 1095, 'Audy Hanwright'),
(10, 20893, 'Kyle  Mcconnell', 1006, 1096, 'Gustaf Seaborn'),
(10, 20893, 'Kyle  Mcconnell', 1007, 1097, 'Flem Jollye'),
(10, 20893, 'Kyle  Mcconnell', 1008, 1098, 'Bernhard Witheridge'),
(10, 20893, 'Kyle  Mcconnell', 1009, 1099, 'Sibeal Le Strange'),
(10, 20893, 'Kyle  Mcconnell', 1010, 1100, 'Whitney Corben'),
(11, 10554, 'Mona  Harrison', 1101, 1101, 'Meghan Rowesby'),
(11, 10554, 'Mona  Harrison', 1102, 1102, 'Teodoor Schoular'),
(11, 10554, 'Mona  Harrison', 1103, 1103, 'Ab Bachman'),
(11, 10554, 'Mona  Harrison', 1104, 1104, 'Ade Antonias'),
(11, 10554, 'Mona  Harrison', 1105, 1105, 'Maryanne Rowlett'),
(11, 10554, 'Mona  Harrison', 1106, 1106, 'Rheba Posse'),
(11, 10554, 'Mona  Harrison', 1107, 1107, 'Anna-diane Benner'),
(11, 10554, 'Mona  Harrison', 1108, 1108, 'Josee Kobisch'),
(11, 10554, 'Mona  Harrison', 1109, 1109, 'Shirlene Terron'),
(11, 10554, 'Mona  Harrison', 1110, 1110, 'Erminie Terzo'),
(12, 19138, 'Cedric  Anthony', 1201, 1111, 'Rivkah Borton'),
(12, 19138, 'Cedric  Anthony', 1202, 1112, 'Guilbert Marns'),
(12, 19138, 'Cedric  Anthony', 1203, 1113, 'Marje Hodgon'),
(12, 19138, 'Cedric  Anthony', 1204, 1114, 'Mace Bellringer'),
(12, 19138, 'Cedric  Anthony', 1205, 1115, 'Scarlett Slevin'),
(12, 19138, 'Cedric  Anthony', 1206, 1116, 'Gerick Scarce'),
(12, 19138, 'Cedric  Anthony', 1207, 1117, 'Boone Boorne'),
(12, 19138, 'Cedric  Anthony', 1208, 1118, 'Misti Gennrich'),
(12, 19138, 'Cedric  Anthony', 1209, 1119, 'Mile Shackleton'),
(12, 19138, 'Cedric  Anthony', 1210, 1120, 'Ezmeralda Beneze'),
(13, 12548, 'Jonas  Brewer', 1301, 1121, 'Orly Stiff'),
(13, 12548, 'Jonas  Brewer', 1302, 1122, 'Raynell Biagi'),
(13, 12548, 'Jonas  Brewer', 1303, 1123, 'Shaylah Demeza'),
(13, 12548, 'Jonas  Brewer', 1304, 1124, 'Adolph Rosindill'),
(13, 12548, 'Jonas  Brewer', 1305, 1125, 'Shawn Bullion'),
(13, 12548, 'Jonas  Brewer', 1306, 1126, 'Dominica Rontree'),
(13, 12548, 'Jonas  Brewer', 1307, 1127, 'Cheryl Reinhard'),
(13, 12548, 'Jonas  Brewer', 1308, 1128, 'Doralia Aldwinckle'),
(13, 12548, 'Jonas  Brewer', 1309, 1129, 'Ana Curran'),
(13, 12548, 'Jonas  Brewer', 1310, 1130, 'Gil Buff'),
(14, 29273, 'Nasim  Hayden', 1401, 1131, 'West McVeagh'),
(14, 29273, 'Nasim  Hayden', 1402, 1132, 'Elsie Candwell'),
(14, 29273, 'Nasim  Hayden', 1403, 1133, 'Giorgi Rodinger'),
(14, 29273, 'Nasim  Hayden', 1404, 1134, 'Jerrie Settle'),
(14, 29273, 'Nasim  Hayden', 1405, 1135, 'Giraud Derrick'),
(14, 29273, 'Nasim  Hayden', 1406, 1136, 'Odo Gadsden'),
(14, 29273, 'Nasim  Hayden', 1407, 1137, 'Paige Tweedell'),
(14, 29273, 'Nasim  Hayden', 1408, 1138, 'Sigmund Morrant'),
(14, 29273, 'Nasim  Hayden', 1409, 1139, 'Emlynne Ditch'),
(14, 29273, 'Nasim  Hayden', 1410, 1140, 'Antin Gallimore'),
(15, 23424, 'Skyler  Snyder', 1501, 1141, 'Diana Wileman'),
(15, 23424, 'Skyler  Snyder', 1502, 1142, 'Porty Tiner'),
(15, 23424, 'Skyler  Snyder', 1503, 1143, 'Bran Lidgey'),
(15, 23424, 'Skyler  Snyder', 1504, 1144, 'Dian Chastelain'),
(15, 23424, 'Skyler  Snyder', 1505, 1145, 'Hilda Mowday'),
(15, 23424, 'Skyler  Snyder', 1506, 1146, 'Ernestus Marshland'),
(15, 23424, 'Skyler  Snyder', 1507, 1147, 'Harris Keepin'),
(15, 23424, 'Skyler  Snyder', 1508, 1148, 'Deonne Ubsdell'),
(15, 23424, 'Skyler  Snyder', 1509, 1149, 'Trudy Potteridge'),
(15, 23424, 'Skyler  Snyder', 1510, 1150, 'Reina Giraldez');

-- --------------------------------------------------------

--
-- Table structure for table `waiters`
--

CREATE TABLE `waiters` (
  `Station_Number` int(11) DEFAULT NULL,
  `ID_Number` int(10) NOT NULL,
  `First_Name` varchar(10) NOT NULL,
  `Last_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waiters`
--

INSERT INTO `waiters` (`Station_Number`, `ID_Number`, `First_Name`, `Last_Name`) VALUES
(11, 10554, '	Mona	', '	Harrison	'),
(13, 12548, '	Jonas	', '	Brewer	'),
(2, 14182, '	Lila	', '	Jefferson'),
(5, 16239, '	Hector	', '	Donovan	'),
(3, 17047, '	Jarrod	', '	Martin	'),
(12, 19138, '	Cedric	', '	Anthony	'),
(8, 19222, '	Natalie	', '	Figueroa	'),
(10, 20893, '	Kyle	', '	Mcconnell'),
(15, 23424, '	Skyler	', '	Snyder	'),
(1, 25453, '	Adena	', '	Skinner	'),
(4, 25602, '	Lars	', '	Jimenez	'),
(7, 25629, '	Elliott	', '	Rodriquez'),
(14, 29273, '	Nasim	', '	Hayden	'),
(9, 35495, '	Quyn	', '	Swanson	'),
(6, 39191, '	Doris	', '	Byers	');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`Room_Number`);

--
-- Indexes for table `medallia`
--
ALTER TABLE `medallia`
  ADD PRIMARY KEY (`Room_Number`);

--
-- Indexes for table `rating_score`
--
ALTER TABLE `rating_score`
  ADD PRIMARY KEY (`ID_Number`);

--
-- Indexes for table `stations_and_tables`
--
ALTER TABLE `stations_and_tables`
  ADD PRIMARY KEY (`Table_Number`);

--
-- Indexes for table `waiters`
--
ALTER TABLE `waiters`
  ADD PRIMARY KEY (`ID_Number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `Room_Number` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1151;

--
-- AUTO_INCREMENT for table `medallia`
--
ALTER TABLE `medallia`
  MODIFY `Room_Number` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1152;

--
-- AUTO_INCREMENT for table `rating_score`
--
ALTER TABLE `rating_score`
  MODIFY `ID_Number` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39192;

--
-- AUTO_INCREMENT for table `stations_and_tables`
--
ALTER TABLE `stations_and_tables`
  MODIFY `Table_Number` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1511;

--
-- AUTO_INCREMENT for table `waiters`
--
ALTER TABLE `waiters`
  MODIFY `ID_Number` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39192;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
