--DATASET

Use Airport

SET IDENTITY_INSERT Airports ON
INSERT INTO Airports (Id, AirportName, Country) VALUES
(1,'Touat-Cheikh Sidi Mohamed Belkebir Airport', 'Algeria'),
(2,'Cadjehoun Airport', 'Benin'),
(3,'Sir Seretse Khama International Airport', 'Botswana'),
(4,'Thomas Sankara International Airport Ouagadougou', 'Burkina Faso'),
(5,'Bujumbura International Airport', 'Burundi'),
(6,'Douala International Airport', 'Cameroon'),
(7,'Aristides Pereira International Airport', 'Cape Verde'),
(8,'Bangui M''Poko International Airport', 'Central African Republic'),
(9,'N''Djamena International Airport', 'Chad'),
(10,'Prince Said Ibrahim International Airport', 'Comoros'),
(11,'Kisangani Bangoka International Airport', 'Democratic Republic of the Congo'),
(12,'Agostinho-Neto International Airport', 'Republic of the Congo'),
(13,'Sharm El Sheikh International Airport', 'Egypt'),
(14,'Malabo International Airport', 'Equatorial Guinea'),
(15,'Asmara International Airport', 'Eritrea'),
(16,'King Mswati III International Airport', 'Eswatini'),
(17,'Addis Ababa Bole International Airport', 'Ethiopia'),
(18,'M''Vengue El Hadj Omar Bongo Ondimba International Airport', 'Gabon'),
(19,'Banjul International Airport', 'The Gambia'),
(20,'Kotoka International Airport', 'Ghana'),
(21,'Conakry International Airport', 'Guinea'),
(22,'Osvaldo Vieira International Airport', 'Guinea-Bissau'),
(23,'Jomo Kenyatta International Airport', 'Kenya'),
(24,'Roberts International Airport', 'Liberia'),
(25,'Tripoli International Airport', 'Libya'),
(26,'Ivato International Airport', 'Madagascar'),
(27,'Lilongwe International Airport', 'Malawi'),
(28,'Modibo Keita International Airport', 'Mali'),
(29,'Nouakchott–Oumtounsy International Airport', 'Mauritania'),
(30,'Sir Seewoosagur Ramgoolam International Airport', 'Mauritius'),
(31,'Dzaoudzi–Pamandzi International Airport', 'Mayotte'),
(32,'Tangier Ibn Battouta Airport', 'Morocco'),
(33,'Maputo International Airport', 'Mozambique'),
(34,'Hosea Kutako International Airport', 'Namibia'),
(35,'Mallam Aminu Kano International Airport', 'Nigeria'),
(36,'Saint Helena Airport', 'Saint Helena, Ascension and Tristan da Cunha'),
(37,'Aden Adde International Airport', 'Somalia'),
(38,'Kruger Mpumalanga International Airport', 'South Africa'),
(39,'Monastir Habib Bourguiba International Airport', 'Tunisia'),
(40,'Punta Cana International Airport', 'Dominican Republic'),
(41,'Providenciales Airport', 'Turks and Caicos Islands'),
(42,'Winnipeg James Armstrong Richardson International Airport', 'Canada'),
(43,'Miguel Hidalgo y Costilla Guadalajara International Airport', 'Mexico'),
(44,'Logan International Airport', 'United States'),
(45,'Presidente Castro Pinto International Airport', 'Brazil'),
(46,'Nursultan Nazarbayev International Airport', 'Kazakhstan'),
(47,'Chubu Centrair International Airport', 'Japan'),
(48,'55759 Valley Edge Pass', ''),
(49,'Guiyang Longdongbao International Airport', 'China'),
(50,'Netaji Subhas Chandra Bose International Airport', 'India');
SET IDENTITY_INSERT Airports OFF

SET IDENTITY_INSERT AircraftTypes ON
INSERT INTO AircraftTypes (Id, TypeName) VALUES
(1, 'Jumbo Passenger Jets'),
(2, 'Mid-Size Passenger Jets'),
(3, 'Light Passenger Jets'),
(4, 'Passenger Turboprops'),
(5, 'Cargo Airplanes'),
(6, 'VLJ (Very Light Jets)'),
(7, 'Light Business Jets'),
(8, 'Mid-Size Business Jets'),
(9, 'Heavy Business Jets'),
(10, 'Military Jets'),
(11, 'Private Single Engine'),
(12, 'Twin Turboprops'),
(13, 'Aerobatic'),
(14, 'Amphibious'),
(15, 'Military Turboprops');
SET IDENTITY_INSERT AircraftTypes OFF

SET IDENTITY_INSERT Passengers ON
INSERT INTO Passengers (Id, FullName, Email) VALUES
(1,'Kalindi Keningham', 'KalindiKeningham@gmail.com'),
(2,'Lois Leidle', 'LoisLeidle@gmail.com'),
(3,'Casi Farens', 'CasiFarens@gmail.com'),
(4,'Janna Kellert', 'JannaKellert@gmail.com'),
(5,'Conny Barnwille', 'ConnyBarnwille@gmail.com'),
(6,'Pierrette Dunmuir', 'PierretteDunmuir@gmail.com'),
(7,'Jasen Yeldham', 'JasenYeldham@gmail.com'),
(8,'Josi Hammelberg', 'JosiHammelberg@gmail.com'),
(9,'Ursulina Partner', 'UrsulinaPartner@gmail.com'),
(10,'Meris Shale', 'MerisShale@gmail.com'),
(11,'Colline Dannme', 'CollineDann@gmail.com'),
(12,'Joyann Garrettson', 'JoyannGarrettson@gmail.com'),
(13,'Shane Arorbe', 'ShaneArr@gmail.com'),
(14,'Owen Strivens', 'OwenStrivens@gmail.com'),
(15,'Moyna Bosnell', 'MoynaBosnell@gmail.com'),
(16,'Henrik Sivyer', 'Henrik@gmail.com'),
(17,'Cullan Dogerty', 'Cullan@gmail.com'),
(18,'Jens Aitken', 'Aitken@gmail.com'),
(19,'Lorilee Kryszkiecicz', 'Kryszkiecicz@gmail.com'),
(20,'Myrta Soggete', 'Myrta@gmail.com'),
(21,'Craig Backeren', 'Craig@gmail.com'),
(22,'Jacquelynn Plackstone', 'Plackstone@gmail.com'),
(23,'Therese Gerwood', 'Gerwood@gmail.com'),
(24,'Jefferson Montacute', 'Montacute@gmail.com'),
(25,'Jameson Elgarerson', 'Elgar@gmail.com'),
(26,'Gilberte Shalders', 'Shalders@gmail.com'),
(27,'Siegfried Simony', 'Simony@gmail.com'),
(28,'Kimball Deemond', 'Deem@gmail.com'),
(29,'Sascha Ruddom', 'Ruddom@gmail.com'),
(30,'Janelle Southern', 'Janelle Southern@gmail.com'),
(31,'Chaunce Taffe', 'ChaunceTaffe@gmail.com'),
(32,'Dante Sagerson', 'DanteSagerson@gmail.com'),
(33,'Carey Flannery', 'CareyFlannery@gmail.com'),
(34,'Lizzie Iscowitz', 'LizzieIscowitz@gmail.com'),
(35,'Zeke Rowston', 'ZekeRowston@gmail.com'),
(36,'Adelle Kurten', 'AdelleKurten@gmail.com'),
(37,'Rolland Trevna', 'RollandTrevna@gmail.com'),
(38,'Gwynne Bleakley', 'GwynneBleakley@gmail.com'),
(39,'Darby Rothert', 'DarbyRothert@gmail.com'),
(40,'Meridel Straker', 'MeridelStraker@gmail.com'),
(41,'Raynor Dobbison', 'RaynorDobbison@gmail.com'),
(42,'Burnaby Blackater', 'BurnabyBlackater@gmail.com'),
(43,'Yulin Moseby', 'YulMoseby@gmail.com'),
(44,'Miles Scruby', 'MilesScruby@gmail.com'),
(45,'Jeanine Gerren', 'JeanineGerren@gmail.com'),
(46,'Carmel Lendrem', 'CarmelLendrem@gmail.com'),
(47,'Allsun O'' Kelleher', 'AllsunKelleher@gmail.com'),
(48,'Lanita Crockatt', 'LanitaCrockatt@gmail.com'),
(49,'Georges Lanston', 'GeorgesLanston@gmail.com'),
(50,'Abbey Pedrinson', 'AbbeyPedri@gmail.com'),
(51,'Micheal Newtown', 'MichealNewtown@gmail.com'),
(52,'Sari Chicotti', 'SariChicotti@gmail.com'),
(53,'Gibbie Liggens', 'GibbieLiggens@gmail.com'),
(54,'Odele Sinncock', 'OdeleSinncock@gmail.com1'),
(55,'Tisha Paterson', 'TishaPatey@gmail.com'),
(56,'Mariele Drinkhall', 'MarieleDrinkhall@gmail.com'),
(57,'Raymund Clacenson', 'RaymundClace@gmail.com'),
(58,'Joshuah Duckers', 'JoshuahDuckers@gmail.com'),
(59,'Kelcy Viccary', 'KelcyViccary@gmail.com'),
(60,'Kaylee Ponten', 'KayleePonten@gmail.com'),
(61,'Mady Viccary', 'MadyViccary@gmail.com'),
(62,'Mattie Hampton', 'MattieHampton@gmail.com'),
(63,'Kaylee Coushe', 'KayleeCoushe@gmail.com'),
(64,'Lucita Robelet', 'LucitaRobelet@gmail.com'),
(65,'Findley Iacoboni', 'FindleyIacoboni@gmail.com'),
(66,'Allan Wedge', 'AllanWedge@gmail.com'),
(67,'Cordey Tremblet', 'CordeyTremblet@gmail.com'),
(68,'Gaye Sillars', 'GayeSillars@gmail.com'),
(69,'Pieter Curphey', 'PieterCurphey@gmail.com'),
(70,'Ewen MacDearmont', 'Ewen-MacDearmont@gmail.com'),
(71,'Mignon Pennell', 'ignonPennell@gmail.com'),
(72,'Alano Georgot', 'AlanoGeorgot@gmail.com'),
(73,'Alley Couch', 'Alleyouch@gmail.com'),
(74,'Liam Offner', 'LiamOffner@gmail.com'),
(75,'Elbertina Kleinsinger', 'ElbertinaKleinsinger@gmail.com'),
(76,'Elbtina Klsinger', 'ElbtinaKlsinger@gmail.com'),
(77,'Norean Sharpless', 'NoreanSharpless@gmail.com'),
(78,'Vincents Bould', 'VincentsBould@gmail.com'),
(79,'Parker McGeorge', 'ParkerMcGeorge@gmail.com'),
(80,'Gregorius May', 'GregoriusMay@gmail.com'),
(81,'Bev Wrigglesworth', 'BevWrigglesworth@gmail.com'),
(82,'Courtney Gawkes', 'CourtneyGawkes@gmail.com'),
(83,'Courtney Matiasek', 'CourtneyMatiasek@gmail.com'),
(84,'Corine Gunda', 'CoriGunda@gmail.com'),
(85,'Mandy Scoggin', 'MandyScoggin@gmail.com'),
(86,'Juane Gorrynsen', 'JuanGorry@gmail.com'),
(87,'Randie Cridgeno', 'RandieCridge@gmail.com'),
(88,'Courtnay Devoy', 'CourtnayDevoy@gmail.com'),
(89,'Haven Seaton', 'HavenSeaton@gmail.com'),
(90,'Nicolai Seaborn', 'NicolaiSeaborn@gmail.com'),
(91,'Mona Crose', 'MonaCrose@gmail.com'),
(92,'Alyson Jankowski', 'AlysonJankowski@gmail.com'),
(93,'Jeralee Tue', 'JeraleeTue@gmail.com'),
(94,'Lonny Carnachen', 'LonnyCarnachen@gmail.com'),
(95,'Kora Nichol', 'KoraNichol@gmail.com'),
(96,'Kermy Bertot', 'KermyBertot@gmail.com'),
(97,'Stanislaus Baggallay', 'StanislausBaggallay@gmail.com'),
(98,'Danny Simoneau', 'DannySimoneau@gmail.com'),
(99,'Rubin Meaddowcroft', 'RubinMeaddowcroft@gmail.com'),
(100,'Marsha Cridge', 'MarshaCridge@gmail.com'),
(101,'Elysha Maydwell', 'ElyshaMaydwell@gmail.com'),
(102,'Cridge1232', 'Cridge123@gmail.com'),
(103,'Marsha2345', 'MarshaC3456@gmail.com'),
(104,'Marde123', 'Mardge123@gmail.com'),
(105,'CdSe232', 'CridgeSe232@gmail.com'),
(106,'Axaner23', 'Alexander23@gmail.com'),
(107,'Janka23', 'Janka123@gmail.com'),
(108,'S', 'Saxon34@gmail.com'),
(109,'Lob', 'Lob@gmail.com'),
(110,'Ge', 'Ge@gmail.com');
SET IDENTITY_INSERT Passengers OFF

SET IDENTITY_INSERT Pilots ON
INSERT INTO Pilots (Id, FirstName, LastName, Age, Rating) VALUES
(1,'Alexander', 'Jubb', 40, 3.3),
(2,'Cullan', 'Geram', 54, 1.5),
(3,'Germana', 'Emburey', 38, 9.2),
(4,'Janka', 'Loblie', 48, 7.5),
(5,'Krystal', 'Cuckson', 54, 9.0),
(6,'Susy', 'Borrel', 42, 3.7),
(7,'Saxon', 'Veldman', 43, 3.2),
(8,'Lenore', 'Romera', 29, 6.9),
(9,'Enrichetta', 'Jeremiah', 60, 4.4),
(10,'Delaney', 'Stove', 24, 6.9),
(11,'Ilaire', 'Tomaszewicz', 25, 7.8),
(12,'Genna', 'Jaquet', 36, 4.0),
(13,'Carlotta', 'Dykas', 34, 6.4),
(14,'Viki', 'Oneal', 57, 4.9),
(15,'Anthe', 'Larne', 43, 7.1),
(16,'Philip', 'Penwarden', 45, 3.7),
(17,'Cristi', 'Ravenshear', 38, 1.4),
(18,'Louie', 'Vogel', 44, 7.4),
(19,'Roddie', 'Gribben', 30, 8.0),
(20,'Boyce', 'Briddock', 45, 6.7),
(21,'Heidie', 'Blacksell', 29, 3.1),
(22,'Lexie', 'Salasar', 22, 9.5),
(23,'Harmony', 'Beincken', 46, 2.2),
(24,'Dick', 'Eton', 42, 8.8),
(25,'Philis', 'Treswell', 54, 6.8),
(26,'Crosby', 'Godlee', 55, 9.6),
(27,'Gerhard', 'Alderson', 44, 7.2),
(28,'Dominga', 'Cavy', 24, 3.6),
(29,'Judye', 'Albrooke', 28, 3.1),
(30,'Felice', 'Bartol', 47, 2.1),
(31,'Adolpho', 'Wainscot', 36, 4.7),
(32,'Aurilia', 'McCready', 49, 1.4),
(33,'Neill', 'Woof', 37, 8.5),
(34,'Rab', 'McDarmid', 60, 2.4),
(35,'Ardith', 'Kienlein', 46, 9.7),
(36,'Berenice', 'Liddiatt', 56, 1.6),
(37,'Ailina', 'Sebyer', 59, 8.7),
(38,'Jaynell', 'Kidson', 22, 6.2),
(39,'Carina', 'Vanyatin', 38, 4.3),
(40,'Edna', 'Heatley', 57, 7.5),
(41,'Hally', 'Barthelmes', 46, 8.9),
(42,'Leanna', 'Olensby', 40, 4.8),
(43,'Dell', 'Willoughey', 23, 6.3),
(44,'Guinevere', 'Gras', 33, 6.3),
(45,'Jerrie', 'Myles', 21, 1.8),
(46,'Francoise', 'Cusack', 52, 1.1),
(47,'Happy', 'Bezant', 41, 8.3),
(48,'Kingsly', 'Ianiello', 58, 7.1),
(49,'Leonhard', 'Tukely', 28, 5.1),
(50,'Joe', 'Waine', 21, 4.4);
SET IDENTITY_INSERT Pilots OFF

SET IDENTITY_INSERT Aircraft ON
INSERT INTO Aircraft (Id, Manufacturer, Model, [Year], FlightHours, Condition, TypeId) VALUES
(1,'Safran', 'LEAP-1A', 2021, 559, 'A', 3),
(2,'Safran', 'LEAP-1B', 2012, 275, 'A', 4),
(3,'Safran', 'LEAP-1C', 2004, NULL, 'B', 1),
(4,'Safran', 'CFM56', 2020, 703, 'C', 1),
(5,'Safran', 'SaM146', 2016, 303, 'B', 4),
(6,'Safran', 'TP400', 2006, 636, 'B', 5),
(7,'Safran', 'M88', 2001, 695, 'C', 2),
(8,'Safran', 'SaM14612', 2015, 527, 'C', 2),
(9,'Safran', 'LEAP-1D', 2013, 835, 'B', 2),
(10,'Safran', 'LEAP-1H', 2002, 639, 'C', 1),
(11,'Safran', 'LEAP-1H', 2019, 885, 'A', 8),
(12,'Safran', 'LEAP-1J', 2008, 357, 'C', 9),
(13,'Safran', 'TP500', 2007, 849, 'B', 10),
(14,'Safran', 'TP600', 2020, 98, 'B', 11),
(15,'Northrop Grumman', 'EA-6 Prowler', 2021, 334, 'B', 12),
(16,'Northrop Grumman', 'E-2 Hawkeye', 2007, 617, 'C', 13),
(17,'Northrop Grumman', 'C-2 Greyhound', 2019, 720, 'A', 14),
(18,'Northrop Grumman', 'Model 151 (ARES)', 2004, NULL, 'A', 15),
(19,'Northrop Grumman', 'Douglas YF-23 ', 2015, 64, 'B', 1),
(20,'Northrop Grumman', 'E-8 Joint STARS', 2015, 480, 'C', 2),
(21,'Northrop Grumman', 'TRW RQ-5 Hunter', 2010, 620, 'A', 3),
(22,'Northrop Grumman', 'B-2 Spirit', 2002, 796, 'B', 4),
(23,'Northrop Grumman', 'X-47A Pegasus', 2020, 906, 'B', 5),
(24,'Northrop Grumman', 'Bat', 2008, 149039, 'C', 6),
(25,'Northrop Grumman', 'KC-45 (KC-30)', 2002, 414, 'A', 7),
(26,'Northrop Grumman', 'Sandstorm', 2002, 342, 'C', 8),
(27,'Northrop Grumman', 'DARPA KQ-X', 2010, 894, 'C', 9),
(28,'GE Aviation', 'GE90', 2013, 380, 'C', 10),
(29,'GE Aviation', 'GE9X', 2011, 148, 'A', 11),
(30,'GE Aviation', 'GEnx', 2007, 65, 'A', 12),
(31,'GE Aviation', 'GP7200c', 2007, 395, 'B', 13),
(32,'GE Aviation', 'CF6', 2000, 936, 'C', 14),
(33,'GE Aviation', 'CFM56', 2008, 128, 'A', 15),
(34,'GE Aviation', 'LEAP', 2004, 847, 'C', 6),
(35,'GE Aviation', 'CF34', 2011, 18, 'A', 7),
(36,'GE Aviation', 'CT7', 2005, 96, 'B', 8),
(37,'GE Aviation', 'CT8', 2020, 4, 'B', 9),
(38,'GE Aviation', 'CT9', 2020, 112, 'C', 10),
(39,'GE Aviation', 'CT10', 2002, 275, 'A', 11),
(40,'GE Aviation', 'CF67', 2007, 582, 'B', 14),
(41,'GE Aviation', 'CF8', 2001, 508, 'A', 11),
(42,'GE Aviation', 'CF9', 2004, 574, 'B', 15),
(43,'GE Aviation', 'CF10', 2003, 499, 'A', 12),
(44,'Boeing', '787', 2004, 623, 'C', 11),
(45,'Boeing', '787', 2007, NULL, 'C', 13),
(46,'Boeing', '787', 2019, 386, 'B', 11),
(47,'Boeing', '787', 2009, 849, 'A', 12),
(48,'Boeing', '787', 2021, NULL, 'B', 13),
(49,'Boeing', '787', 2010, 382, 'B', 12),
(50,'Boeing', '787', 2011, 440, 'A', 13),
(51,'Boeing', '787', 2013, 414, 'B', 7),
(52,'Boeing', '787', 2012, 591, 'B', 8),
(53,'Boeing', '787', 2007, NULL, 'C', 9),
(54,'Boeing', '787', 2013, 118, 'C', 10),
(55,'Boeing', '747', 2012, 246, 'A', 7),
(56,'Boeing', '747', 2010, 147, 'B', 8),
(57,'Boeing', '747', 2019, 189, 'A', 9),
(58,'Boeing', 'BBJ', 2001, 349, 'B', 10),
(59,'Boeing', 'BBJ', 2013, 925, 'C', 1),
(60,'Boeing', 'BBJ', 2007, 860, 'C', 12),
(61,'Boeing', '737', 2005, 131, 'B', 13),
(62,'Boeing', '737', 2002, 870, 'C', 14),
(63,'Boeing', '737', 2020, 599, 'C', 15),
(64,'Boeing', '737', 2010, 824, 'A', 2),
(65,'Rolls-Royce Holdings', 'Trent XWB', 2005, 775, 'A', 1),
(66,'Rolls-Royce Holdings', 'Trent 900', 2005, 958, 'B', 4),
(67,'Rolls-Royce Holdings', 'EJ200', 2003, 100, 'C', 4),
(68,'Rolls-Royce Holdings', 'Eurofighter Typhoon', 2001, 256, 'C', 2),
(69,'Rolls-Royce Holdings', 'Trent 700', 2006, 776, 'C', 1),
(70,'Rolls-Royce Holdings', 'Trent 500', 2010, 225, 'C', 5),
(71,'Lockheed Martin', 'P-38 Lightning', 2011, 571, 'B', 6),
(72,'Lockheed Martin', 'P-80 Shooting Star', 2002, 557, 'B', 7),
(73,'Lockheed Martin', 'F-94 Starfire', 2018, 839, 'A', 8),
(74,'Lockheed Martin', 'F-104 Starfighter', 2008, 805, 'C', 9),
(75,'Lockheed Martin', 'F-16 Fighting Falcon', 2016, 459, 'C', 10),
(76,'Lockheed Martin', 'F-117 Nighthawk', 2003, 122, 'A', 11),
(77,'Lockheed Martin', 'F-22 Raptor', 2013, 633, 'A', 12),
(78,'Lockheed Martin', 'A-4AR Fightinghawk', 2004, 603, 'A', 13),
(79,'Lockheed Martin', 'F-35 Lightning II', 2000, 623, 'A', 14),
(80,'Lockheed Martin', 'A-4AR Fightinghawk', 2015, 714, 'A', 15),
(81,'Lockheed Martin', 'F-22 Raptor', 2004, 271, 'A', 5),
(82,'Lockheed Martin', 'F-117 Nighthawk', 2006, 28, 'C', 6),
(83,'Lockheed Martin', 'F-16 Fighting Falcon', 2003, 570, 'A', 7),
(84,'Airbus', 'A220', 2003, 409, 'C', 8),
(85,'Airbus', 'A300', 2000, 780, 'B', 9),
(86,'Airbus', 'A310', 2012, 243, 'C', 15),
(87,'Airbus', 'A318', 2021, 359, 'B', 10),
(88,'Airbus', 'A319', 2015, 501, 'B', 11),
(89,'Airbus', 'A320', 2001, 15, 'C', 12),
(90,'Airbus', 'A321', 2017, 62, 'A', 3),
(91,'Airbus', 'A330', 2019, 999, 'B', 1),
(92,'Airbus', 'A340', 2003, 767, 'B', 2),
(93,'Airbus', 'A350', 2010, 702, 'B', 3),
(94,'Airbus', 'A380', 2014, 44, 'C', 4),
(95,'Airbus', 'A320', 2016, 177, 'A', 5),
(96,'Northrop Grumman', 'B-2 Stealth Bomber', 2016, 410, 'A', 6),
(97,'Northrop Grumman', 'B-21 Raider', 2009, 47, 'C', 7),
(98,'Northrop Grumman', 'C-2A Greyhound', 2014, 82, 'C', 8),
(99,'Northrop Grumman', 'E-2C Hawkeye 2000', 2010, 386, 'C', 9),
(100,'Northrop Grumman', 'E-8C Joint STARS', 2019, 472, 'C', 10);
SET IDENTITY_INSERT Aircraft OFF


SET IDENTITY_INSERT FlightDestinations ON
INSERT INTO FlightDestinations (Id, AirportId, [Start], AircraftId, PassengerId, TicketPrice) values
(1,29, '2020-01-01 01:26:11', 29, 86, 4096.92),
(2,1, '2020-04-26 17:51:13', 80, 16, 1904.47),
(3,27, '2020-02-18 14:00:01', 25, 86, 404.01),
(4,3, '2020-03-22 04:23:48', 92, 59, 2490.24),
(5,34, '2021-04-17 12:30:28', 74, 72, 405.83),
(6,42, '2020-09-21 22:50:50', 1, 69, 1880.23),
(7,31, '2020-10-16 04:58:11', 78, 4, 2111.93),
(8,15, '2020-01-13 05:32:42', 100, 89, 2110.56),
(9,41, '2020-02-06 22:32:14', 22, 48, 4100.49),
(10,11, '2020-06-06 22:44:50', 63, 92, 150.56),
(11,1, '2020-08-26 06:09:21', 83, 63, 290.98),
(12,12, '2021-04-20 09:34:41', 93, 53, 930.27),
(13,28, '2020-02-04 04:59:33', 80, 89, 3280.36),
(14,31, '2021-01-19 11:05:43', 13, 65, 3083.05),
(15,18, '2020-04-17 23:42:06', 49, 63, 3087.56),
(16,5, '2021-02-06 01:03:30', 37, 61, 1780.6),
(17,28, '2020-10-29 05:10:21', 47, 19, 300.46),
(18,12, '2021-04-18 11:35:23', 5, 79, 2180.54),
(19,21, '2020-07-03 21:38:23', 77, 28, 1801.36),
(20,18, '2020-02-27 06:06:45', 4, 28, 440.72),
(21,34, '2020-08-02 15:43:34', 50, 88, 3010.46),
(22,27, '2020-04-10 23:14:06', 33, 86, 160.99),
(23,17, '2021-04-30 06:25:18', 36, 78, 300.07),
(24,42, '2020-03-24 21:08:22', 6, 70, 2170.03),
(25,6, '2020-10-01 00:35:46', 33, 92, 470.11),
(26,11, '2021-02-02 04:44:05', 55, 88, 460.57),
(27,13, '2021-05-02 12:52:14', 2, 31, 3091.31),
(28,42, '2020-11-11 11:15:42', 44, 37, 2130.86),
(29,31, '2020-11-14 07:12:00', 20, 78, 1120.51),
(30,23, '2021-05-25 02:55:43', 45, 41, 405.97),
(31,4, '2020-12-12 03:06:06', 79, 19, 260.58),
(32,5, '2020-09-10 01:55:19', 75, 22, 3690.22),
(33,10, '2020-02-06 02:03:35', 76, 8, 1017.93),
(34,16, '2020-06-13 10:53:40', 82, 86, 3190.57),
(35,3, '2020-01-15 09:11:40', 77, 12, 380.32),
(36,1, '2020-03-02 21:56:45', 38, 57, 350.42),
(37,39, '2020-07-19 18:01:03', 80, 86, 1150.16),
(38,42, '2020-11-28 17:58:40', 91, 93, 3390.81),
(39,11, '2020-08-18 13:40:40', 1, 55, 1410.62),
(40,10, '2021-02-25 08:42:39', 66, 55, 1170.27),
(41,40, '2021-03-02 19:42:22', 83, 9, 2150.78),
(42,50, '2020-02-11 16:31:21', 62, 2, 980.72),
(43,35, '2020-04-29 17:34:29', 30, 63, 403.19),
(44,50, '2021-02-27 15:59:23', 14, 81, 290.01),
(45,9, '2020-09-12 18:14:55', 61, 14, 3096.19),
(46,12, '2020-03-27 02:42:38', 39, 100, 3091.39),
(47,3, '2020-01-10 01:52:57', 37, 88, 306.61),
(48,50, '2020-02-22 20:03:36', 15, 87, 1088.93),
(49,33, '2020-03-24 21:03:10', 85, 99, 810.51),
(50,45, '2020-11-07 13:41:06', 99, 24, 409.12),
(51,11, '2020-03-02 07:59:07', 87, 41, 700.8),
(52,26, '2020-08-24 06:12:57', 67, 27, 410.56),
(53,1, '2020-02-03 22:30:45', 60, 35, 630.86),
(54,49, '2021-04-10 16:03:34', 70, 21, 506.44),
(55,3, '2021-02-28 13:13:55', 76, 35, 3700.65),
(56,50, '2021-02-20 21:04:53', 96, 68, 4002.21),
(57,3, '2020-01-31 19:14:27', 88, 92, 108.95),
(58,48, '2020-07-04 21:44:16', 48, 79, 304.77),
(59,20, '2020-11-10 06:55:47', 5, 98, 2780.25),
(60,34, '2021-02-22 09:00:28', 8, 6, 2870.65),
(61,15, '2020-11-11 19:57:00', 25, 73, 450.02),
(62,9, '2020-02-16 14:49:41', 13, 52, 1810.68),
(63,4, '2021-01-09 15:02:02', 79, 47, 470.63),
(64,27, '2020-04-17 21:13:50', 65, 34, 1190.59),
(65,28, '2021-02-04 14:38:44', 67, 50, 2930.91),
(66,35, '2020-03-11 23:29:24', 61, 49, 3920.71),
(67,22, '2021-02-04 04:28:14', 69, 18, 490.84),
(68,13, '2020-08-27 21:11:18', 13, 46, 2890.17),
(69,25, '2020-09-28 15:03:00', 59, 36, 420.55),
(70,42, '2020-02-12 13:11:22', 52, 88, 1860.01),
(71,46, '2021-05-19 12:34:08', 96, 7, 280.93),
(72,39, '2020-08-23 14:33:46', 97, 98, 4807.43),
(73,47, '2020-06-10 22:09:33', 8, 96, 420.85),
(74,21, '2020-03-23 16:22:39', 44, 49, 340.18),
(75,45, '2020-08-02 03:42:00', 35, 24, 702.46),
(76,33, '2020-11-14 01:03:51', 98, 79, 809.14),
(77,38, '2021-03-29 10:58:54', 8, 84, 807.1),
(78,31, '2020-04-29 12:02:59', 14, 79, 602.12),
(79,15, '2020-07-22 16:54:08', 76, 65, 401.98),
(80,45, '2020-03-30 10:06:29', 79, 97, 802.38),
(81,36, '2021-05-29 07:41:51', 46, 50, 909.56),
(82,18, '2020-07-23 14:01:00', 43, 53, 409.88),
(83,16, '2020-11-14 18:46:33', 54, 87, 705.88),
(84,44, '2020-05-04 04:14:31', 64, 53, 603.49),
(85,3, '2020-03-11 03:39:48', 88, 81, 800.23),
(86,38, '2020-08-19 21:31:20', 61, 54, 805.19),
(87,14, '2020-10-29 23:37:30', 1, 15, 752.29),
(89,12, '2020-09-04 09:54:34', 80, 5, 637.57),
(90,6, '2021-01-09 15:03:24', 31, 58, 304.22),
(91,25, '2020-05-11 00:07:58', 94, 64, 3082.56),
(92,2, '2020-07-29 10:01:06', 72, 32, 405.93),
(93,42, '2021-04-26 16:07:55', 87, 22, 708.14),
(94,26, '2020-08-16 02:44:31', 32, 96, 404.77),
(95,11, '2020-07-02 15:27:47', 13, 17, 5048.89),
(96,12, '2020-02-16 15:54:11', 44, 63, 504.98),
(97,35, '2021-01-10 01:05:48', 37, 48, 603.63),
(98,23, '2021-03-13 22:23:55', 84, 77, 501.41),
(99,43, '2021-01-14 11:37:30', 87, 31, 400.24),
(100,8, '2020-10-21 21:27:13', 25, 49, 504.86),
(101,14, '2020-03-03 18:07:00', 64, 24, 706.06);
SET IDENTITY_INSERT FlightDestinations OFF

INSERT INTO PilotsAircraft (AircraftId, PilotId) VALUES
(94, 4),
(22, 33),
(60, 26),
(5, 12),
(69, 41),
(90, 37),
(33, 24),
(20, 49),
(66, 10),
(37, 35),
(67, 42),
(96, 6),
(99, 5),
(85, 2),
(77, 37),
(100, 2),
(39, 10),
(21, 36),
(80, 39),
(4, 11),
(49, 9),
(71, 50),
(57, 16),
(16, 31),
(4, 14),
(60, 25),
(36, 1),
(81, 38),
(68, 41),
(6, 50),
(65, 39),
(48, 20),
(30, 18),
(90, 27),
(15, 30),
(57, 33),
(96, 19),
(81, 26),
(5, 22),
(56, 45),
(7, 18),
(4, 48),
(93, 7),
(20, 8),
(23, 17),
(84, 3),
(21, 40),
(33, 8),
(72, 7),
(72, 37),
(77, 43),
(30, 4),
(68, 38),
(3, 3),
(52, 32),
(70, 30),
(72, 21),
(28, 9),
(100, 3),
(32, 36),
(47, 13),
(55, 38),
(55, 18),
(21, 24),
(85, 29),
(86, 22),
(3, 11),
(28, 49),
(82, 42),
(25, 36),
(42, 28),
(59, 20),
(20, 3),
(70, 21),
(84, 7),
(96, 26),
(89, 47),
(46, 19),
(42, 7),
(10, 9),
(38, 15),
(94, 14),
(18, 4),
(5, 38),
(48, 2),
(38, 20),
(55, 23),
(25, 33),
(26, 37),
(12, 35),
(48, 26),
(42, 27),
(5, 19),
(10, 7),
(45, 47),
(80, 29),
(47, 48),
(67, 47),
(14, 40),
(6, 18);
