/* Showing results for table_tableau11 (1).csv
Used website: http://beautifytools.com/excel-to-sql-converter.php to generate the sql inserts and create table
 as 300+ rows was a lot to manually insert, and it stopped me from making stupid mistakes.*/

 -- use f20comp1101;           Database i used might differ based on your set up Jaret. Pls don't dock marks for commenting it out




/* CREATE TABLE */
CREATE TABLE elections_results(
ID int not null primary key auto_increment,
Province VARCHAR(100),
ElectoralDistrictName VARCHAR(100),
ElectoralDistrictNum int,
Population int,
Electors int,
NumberOfPollingStations int,
ValidBallots int,
PercentageValidBallots DOUBLE,
RejectedBallots int,
PercentageRejectBallots DOUBLE,
TotalBallotsCast int,
VoterTurnoutPercent DOUBLE,
ElectedCandidate VARCHAR(200)
);


select Province, avg(VoterTurnoutPercent)
From elections_results
group by province;


/* INSERT QUERY NO: 1 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Newfoundland and Labrador/Terre-Neuve-et-Labrador', 'Avalon', 10001, 86494, 70341, 211, 41334, 99, 397, 1, 41731, 59.3, 'McDonald'
);

/* INSERT QUERY NO: 2 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Newfoundland and Labrador/Terre-Neuve-et-Labrador', 'Bonavista--Burin--Trinity', 10002, 74116, 60166, 258, 32179, 98.1, 609, 1.9, 32788, 54.5, 'Rogers'
);

/* INSERT QUERY NO: 3 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Newfoundland and Labrador/Terre-Neuve-et-Labrador', 'Coast of Bays--Central--Notre Dame', 10003, 77680, 63639, 229, 34182, 97.8, 770, 2.2, 34952, 54.9, 'Simms'
);

/* INSERT QUERY NO: 4 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Newfoundland and Labrador/Terre-Neuve-et-Labrador', 'Labrador', 10004, 27197, 20184, 85, 11419, 98.8, 139, 1.2, 11558, 57.3, 'Jones'
);

/* INSERT QUERY NO: 5 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Newfoundland and Labrador/Terre-Neuve-et-Labrador', 'Long Range Mountains', 10005, 86553, 70688, 248, 38426, 98.5, 576, 1.5, 39002, 55.2, 'Hutchings'
);

/* INSERT QUERY NO: 6 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Newfoundland and Labrador/Terre-Neuve-et-Labrador', 'St. John\'s East/St. John\'s-Est', 10006, 85697, 67406, 180, 45072, 98.8, 528, 1.2, 45600, 67.6, 'Harris'
);

/* INSERT QUERY NO: 7 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Newfoundland and Labrador/Terre-Neuve-et-Labrador', 'St. John\'s South--Mount Pearl/St. John\'s-Sud--Mount Pearl', 10007, 81979, 67643, 183, 40666, 98.6, 592, 1.4, 41258, 61, 'O\'Regan'
);

/* INSERT QUERY NO: 8 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Prince Edward Island/Île-du-Prince-Édouard', 'Cardigan', 11001, 36615, 29869, 88, 22167, 99, 232, 1, 22399, 75, 'MacAulay'
);

/* INSERT QUERY NO: 9 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Prince Edward Island/Île-du-Prince-Édouard', 'Charlottetown', 11002, 36094, 27719, 75, 19910, 98.6, 274, 1.4, 20184, 72.8, 'Casey'
);

/* INSERT QUERY NO: 10 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Prince Edward Island/Île-du-Prince-Édouard', 'Egmont', 11003, 34168, 28557, 88, 20178, 98.7, 274, 1.3, 20452, 71.6, 'Morrissey'
);

/* INSERT QUERY NO: 11 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Prince Edward Island/Île-du-Prince-Édouard', 'Malpeque', 11004, 36030, 30576, 89, 23039, 98.8, 288, 1.2, 23327, 76.3, 'Easter'
);

/* INSERT QUERY NO: 12 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Cape Breton--Canso', 12001, 71913, 60699, 214, 42940, 98.6, 601, 1.4, 43541, 71.7, 'Kelloway'
);

/* INSERT QUERY NO: 13 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Central Nova/Nova-Centre', 12002, 71962, 60955, 228, 44470, 99.1, 412, .9, 44882, 73.6, 'Fraser'
);

/* INSERT QUERY NO: 14 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Cumberland--Colchester', 12003, 80590, 66967, 218, 45450, 99, 447, 1, 45897, 68.5, 'Zann'
);

/* INSERT QUERY NO: 15 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Dartmouth--Cole Harbour', 12004, 92301, 77390, 196, 53499, 99.3, 404, .7, 53903, 69.7, 'Fisher'
);

/* INSERT QUERY NO: 16 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Halifax', 12005, 94610, 76843, 199, 55752, 99.4, 361, .6, 56113, 73, 'Fillmore'
);

/* INSERT QUERY NO: 17 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Halifax West/Halifax-Ouest', 12006, 96255, 77531, 223, 54357, 99.2, 465, .8, 54822, 70.7, 'Regan'
);

/* INSERT QUERY NO: 18 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Kings--Hants', 12007, 83465, 70332, 221, 48036, 99.3, 327, .7, 48363, 68.8, 'Blois'
);

/* INSERT QUERY NO: 19 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Sackville--Preston--Chezzetcook', 12008, 86498, 71759, 194, 49537, 99.4, 320, .6, 49857, 69.5, 'Samson'
);

/* INSERT QUERY NO: 20 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'South Shore--St. Margarets', 12009, 91830, 78470, 258, 52518, 99.2, 439, .8, 52957, 67.5, 'Jordan'
);

/* INSERT QUERY NO: 21 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'Sydney--Victoria', 12010, 72148, 60322, 194, 40565, 98.7, 528, 1.3, 41093, 68.1, 'Battiste'
);

/* INSERT QUERY NO: 22 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nova Scotia/Nouvelle-Écosse', 'West Nova/Nova-Ouest', 12011, 82026, 70143, 227, 46798, 98.9, 512, 1.1, 47310, 67.4, 'd\'Entremont'
);

/* INSERT QUERY NO: 23 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Acadie--Bathurst', 13001, 77791, 66937, 233, 48143, 98.1, 924, 1.9, 49067, 73.3, 'Cormier'
);

/* INSERT QUERY NO: 24 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Beauséjour', 13002, 82292, 70361, 219, 53685, 99.1, 475, .9, 54160, 77, 'LeBlanc'
);

/* INSERT QUERY NO: 25 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Fredericton', 13003, 83303, 66606, 156, 49409, 99.4, 301, .6, 49710, 74.6, 'Atwin'
);

/* INSERT QUERY NO: 26 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Fundy Royal', 13004, 79943, 65543, 196, 48646, 99.3, 349, .7, 48995, 74.8, 'Moore'
);

/* INSERT QUERY NO: 27 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Madawaska--Restigouche', 13005, 60378, 50828, 154, 34469, 98.1, 657, 1.9, 35126, 69.1, 'Arseneault'
);

/* INSERT QUERY NO: 28 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Miramichi--Grand Lake', 13006, 57405, 48570, 161, 34598, 98.5, 517, 1.5, 35115, 72.3, 'Finnigan'
);

/* INSERT QUERY NO: 29 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Moncton--Riverview--Dieppe', 13007, 92666, 75006, 189, 51828, 99.2, 396, .8, 52224, 69.6, 'Petitpas Taylor'
);

/* INSERT QUERY NO: 30 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'New Brunswick Southwest/Nouveau-Brunswick-Sud-Ouest', 13008, 65287, 53889, 178, 39578, 99.2, 301, .8, 39879, 74, 'Williamson'
);

/* INSERT QUERY NO: 31 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Saint John--Rothesay', 13009, 79363, 63677, 168, 41253, 99.4, 250, .6, 41503, 65.2, 'Long'
);

/* INSERT QUERY NO: 32 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'New Brunswick/Nouveau-Brunswick', 'Tobique--Mactaquac', 13010, 68673, 55287, 182, 38201, 99, 376, 1, 38577, 69.8, 'Bragdon'
);

/* INSERT QUERY NO: 33 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Abitibi--Baie-James--Nunavik--Eeyou', 24001, 87787, 65225, 193, 31656, 97.5, 828, 2.5, 32484, 49.8, 'Bérubé'
);

/* INSERT QUERY NO: 34 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Abitibi--Témiscamingue', 24002, 103491, 82499, 268, 50155, 97.9, 1057, 2.1, 51212, 62.1, 'Lemire'
);

/* INSERT QUERY NO: 35 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Ahuntsic-Cartierville', 24003, 117447, 83384, 229, 55111, 98.2, 1022, 1.8, 56133, 67.3, 'Joly'
);

/* INSERT QUERY NO: 36 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Alfred-Pellan', 24004, 101373, 79355, 211, 54309, 98.2, 973, 1.8, 55282, 69.7, 'Iacono'
);

/* INSERT QUERY NO: 37 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Argenteuil--La Petite-Nation', 24005, 95781, 80428, 247, 49997, 98.4, 828, 1.6, 50825, 63.2, 'Lauzon'
);

/* INSERT QUERY NO: 38 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Avignon--La Mitis--Matane--Matapédia', 24006, 71897, 59618, 218, 35968, 98.4, 591, 1.6, 36559, 61.3, 'Michaud'
);

/* INSERT QUERY NO: 39 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Beauce', 24007, 108746, 86621, 240, 59429, 98.1, 1147, 1.9, 60576, 69.9, 'Lehoux'
);

/* INSERT QUERY NO: 40 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Beauport--Limoilou', 24008, 96029, 78080, 198, 50191, 97.5, 1272, 2.5, 51463, 65.9, 'Vignola'
);

/* INSERT QUERY NO: 41 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Beauport-Côte-de-Beaupré-Île d\'Orléans-Charlevoix', 24020, 93674, 76657, 244, 50635, 98.1, 976, 1.9, 51611, 67.3, 'Desbiens'
);

/* INSERT QUERY NO: 42 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Bécancour--Nicolet--Saurel', 24009, 94588, 79314, 235, 52337, 98, 1042, 2, 53379, 67.3, 'Plamondon'
);

/* INSERT QUERY NO: 43 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Bellechasse--Les Etchemins--Lévis', 24010, 114966, 94558, 289, 64447, 98.3, 1113, 1.7, 65560, 69.3, 'Blaney'
);

/* INSERT QUERY NO: 44 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Beloeil--Chambly', 24011, 117343, 95838, 268, 69490, 98.5, 1064, 1.5, 70554, 73.6, 'Blanchet'
);

/* INSERT QUERY NO: 45 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Berthier--Maskinongé', 24012, 100371, 84645, 271, 56354, 98.3, 977, 1.7, 57331, 67.7, 'Perron'
);

/* INSERT QUERY NO: 46 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Bourassa', 24015, 101032, 70287, 187, 40351, 97.6, 1009, 2.4, 41360, 58.8, 'Dubourg'
);

/* INSERT QUERY NO: 47 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Brome--Missisquoi', 24016, 103457, 89334, 264, 61441, 98.5, 962, 1.5, 62403, 69.9, 'Bessette'
);

/* INSERT QUERY NO: 48 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Brossard--Saint-Lambert', 24017, 107582, 83716, 221, 56652, 98.9, 657, 1.1, 57309, 68.5, 'Mendès'
);

/* INSERT QUERY NO: 49 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Charlesbourg--Haute-Saint-Charles', 24019, 107254, 85926, 227, 59096, 97.9, 1264, 2.1, 60360, 70.2, 'Paul-Hus'
);

/* INSERT QUERY NO: 50 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Châteauguay--Lacolle', 24021, 97887, 78384, 218, 52402, 98, 1071, 2, 53473, 68.2, 'Shanahan'
);

/* INSERT QUERY NO: 51 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Chicoutimi--Le Fjord', 24022, 81639, 65747, 184, 43881, 97.9, 925, 2.1, 44806, 68.1, 'Martel'
);

/* INSERT QUERY NO: 52 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Compton--Stanstead', 24023, 105459, 84913, 267, 58237, 98.3, 988, 1.7, 59225, 69.7, 'Bibeau'
);

/* INSERT QUERY NO: 53 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Dorval--Lachine--LaSalle', 24024, 112866, 85550, 228, 52574, 98.5, 788, 1.5, 53362, 62.4, 'Dhillon'
);

/* INSERT QUERY NO: 54 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Drummond', 24025, 103397, 84074, 239, 54824, 98, 1126, 2, 55950, 66.5, 'Champoux'
);

/* INSERT QUERY NO: 55 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Gaspésie--Les Îles-de-la-Madeleine', 24026, 75850, 64919, 212, 38380, 98, 783, 2, 39163, 60.3, 'Lebouthillier'
);

/* INSERT QUERY NO: 56 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Gatineau', 24027, 107464, 84667, 230, 55783, 98.6, 787, 1.4, 56570, 66.8, 'MacKinnon'
);

/* INSERT QUERY NO: 57 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Hochelaga', 24028, 106496, 82881, 217, 53037, 98.3, 907, 1.7, 53944, 65.1, 'Martinez Ferrada'
);

/* INSERT QUERY NO: 58 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Honoré-Mercier', 24029, 103592, 78850, 207, 50363, 98, 1013, 2, 51376, 65.2, 'Rodriguez'
);

/* INSERT QUERY NO: 59 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Hull--Aylmer', 24030, 105419, 79609, 213, 54993, 98.8, 692, 1.2, 55685, 69.9, 'Fergus'
);

/* INSERT QUERY NO: 60 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Joliette', 24031, 104136, 89118, 269, 57699, 98, 1203, 2, 58902, 66.1, 'Ste-Marie'
);

/* INSERT QUERY NO: 61 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Jonquière', 24032, 89818, 72961, 208, 49367, 98, 999, 2, 50366, 69, 'Simard'
);

/* INSERT QUERY NO: 62 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'La Pointe-de-l\'Île', 24033, 106336, 85843, 241, 55534, 98, 1141, 2, 56675, 66, 'Beaulieu'
);

/* INSERT QUERY NO: 63 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'La Prairie', 24034, 105496, 87062, 202, 61553, 98.6, 886, 1.4, 62439, 71.7, 'Therrien'
);

/* INSERT QUERY NO: 64 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Lac-Saint-Jean', 24035, 104911, 84609, 265, 54227, 97.9, 1155, 2.1, 55382, 65.5, 'Brunelle-Duceppe'
);

/* INSERT QUERY NO: 65 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Lac-Saint-Louis', 24036, 108579, 84074, 230, 59525, 99.3, 445, .7, 59970, 71.3, 'Scarpaleggia'
);

/* INSERT QUERY NO: 66 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'LaSalle--Émard--Verdun', 24037, 106766, 82733, 201, 52391, 98.4, 864, 1.6, 53255, 64.4, 'Lametti'
);

/* INSERT QUERY NO: 67 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Laurentides--Labelle', 24038, 113815, 100509, 282, 65406, 98.5, 1018, 1.5, 66424, 66.1, 'Gaudreau'
);

/* INSERT QUERY NO: 68 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Laurier--Sainte-Marie', 24039, 111835, 83085, 172, 53409, 99, 551, 1, 53960, 64.9, 'Guilbeault'
);

/* INSERT QUERY NO: 69 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Laval--Les Îles', 24040, 108003, 83496, 212, 53961, 98.5, 840, 1.5, 54801, 65.6, 'EL-Khoury'
);

/* INSERT QUERY NO: 70 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Lévis--Lotbinière', 24042, 113528, 89779, 259, 63489, 98.1, 1241, 1.9, 64730, 72.1, 'Gourde'
);

/* INSERT QUERY NO: 71 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Longueuil--Charles-LeMoyne', 24041, 106583, 83920, 228, 51544, 98, 1067, 2, 52611, 62.7, 'Romanado'
);

/* INSERT QUERY NO: 72 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Longueuil--Saint-Hubert', 24043, 108703, 87319, 224, 59844, 98.2, 1086, 1.8, 60930, 69.8, 'Trudel'
);

/* INSERT QUERY NO: 73 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Louis-Hébert', 24044, 103346, 82395, 223, 62060, 98.6, 873, 1.4, 62933, 76.4, 'Lightbound'
);

/* INSERT QUERY NO: 74 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Louis-Saint-Laurent', 24045, 117238, 94851, 253, 65561, 97.9, 1389, 2.1, 66950, 70.6, 'Deltell'
);

/* INSERT QUERY NO: 75 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Manicouagan', 24046, 92518, 72431, 247, 40390, 98.3, 712, 1.7, 41102, 56.7, 'Gill'
);

/* INSERT QUERY NO: 76 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Marc-Aurèle-Fortin', 24065, 101750, 78632, 169, 55817, 98.4, 924, 1.6, 56741, 72.2, 'Robillard'
);

/* INSERT QUERY NO: 77 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Mégantic--L\'Érable', 24047, 87233, 70950, 231, 47508, 98.1, 898, 1.9, 48406, 68.2, 'Berthold'
);

/* INSERT QUERY NO: 78 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Mirabel', 24048, 117652, 96848, 240, 65030, 98.1, 1286, 1.9, 66316, 68.5, 'Marcil'
);

/* INSERT QUERY NO: 79 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Montarville', 24049, 97811, 77292, 209, 59228, 98.8, 742, 1.2, 59970, 77.6, 'Bergeron'
);

/* INSERT QUERY NO: 80 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Montcalm', 24050, 107981, 88809, 234, 54806, 97.7, 1311, 2.3, 56117, 63.2, 'Thériault'
);

/* INSERT QUERY NO: 81 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Montmagny--L\'Islet--Kamouraska--Rivière-du-Loup', 24051, 95527, 78461, 260, 50388, 98.1, 976, 1.9, 51364, 65.5, 'Généreux'
);

/* INSERT QUERY NO: 82 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Mount Royal/Mont-Royal', 24052, 103320, 73273, 201, 43679, 98.7, 583, 1.3, 44262, 60.4, 'Housefather'
);

/* INSERT QUERY NO: 83 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Notre-Dame-de-Grâce--Westmount', 24053, 104974, 76649, 204, 50321, 99.1, 446, .9, 50767, 66.2, 'Garneau'
);

/* INSERT QUERY NO: 84 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Outremont', 24054, 102088, 67842, 168, 41457, 98.9, 455, 1.1, 41912, 61.8, 'Bendayan'
);

/* INSERT QUERY NO: 85 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Papineau', 24055, 110750, 77341, 195, 50781, 98.2, 938, 1.8, 51719, 66.9, 'Trudeau'
);

/* INSERT QUERY NO: 86 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Pierre-Boucher--Les Patriotes--Verchères', 24014, 99787, 81078, 225, 60783, 98.5, 913, 1.5, 61696, 76.1, 'Barsalou-Duval'
);

/* INSERT QUERY NO: 87 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Pierrefonds--Dollard', 24056, 108587, 83562, 226, 55471, 98.8, 682, 1.2, 56153, 67.2, 'Zuberi'
);

/* INSERT QUERY NO: 88 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Pontiac', 24057, 115531, 92341, 275, 61847, 98.9, 661, 1.1, 62508, 67.7, 'Amos'
);

/* INSERT QUERY NO: 89 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Portneuf--Jacques-Cartier', 24058, 115313, 93183, 264, 64674, 98.1, 1251, 1.9, 65925, 70.7, 'Godin'
);

/* INSERT QUERY NO: 90 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Québec', 24059, 97143, 79186, 225, 54198, 98.1, 1051, 1.9, 55249, 69.8, 'Duclos'
);

/* INSERT QUERY NO: 91 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Repentigny', 24060, 116066, 92684, 255, 65456, 98, 1316, 2, 66772, 72, 'Pauzé'
);

/* INSERT QUERY NO: 92 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Richmond--Arthabaska', 24061, 107242, 86896, 268, 58638, 98.2, 1077, 1.8, 59715, 68.7, 'Rayes'
);

/* INSERT QUERY NO: 93 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Rimouski-Neigette--Témiscouata--Les Basques', 24018, 84918, 70099, 218, 45767, 98.4, 758, 1.6, 46525, 66.4, 'Blanchette-Joncas'
);

/* INSERT QUERY NO: 94 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Rivière-des-Mille-Îles', 24062, 102346, 82372, 223, 58184, 98.2, 1090, 1.8, 59274, 72, 'Desilets'
);

/* INSERT QUERY NO: 95 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Rivière-du-Nord', 24063, 112156, 96054, 270, 60101, 98, 1206, 2, 61307, 63.8, 'Fortin'
);

/* INSERT QUERY NO: 96 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Rosemont--La Petite-Patrie', 24064, 110677, 85832, 221, 60206, 98.8, 718, 1.2, 60924, 71, 'Boulerice'
);

/* INSERT QUERY NO: 97 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Saint-Hyacinthe--Bagot', 24066, 102693, 82040, 245, 55914, 97.6, 1391, 2.4, 57305, 69.9, 'Savard-Tremblay'
);

/* INSERT QUERY NO: 98 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Saint-Jean', 24067, 111190, 91228, 254, 61875, 98, 1241, 2, 63116, 69.2, 'Normandin'
);

/* INSERT QUERY NO: 99 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Saint-Laurent', 24068, 98828, 68271, 167, 40147, 98.5, 618, 1.5, 40765, 59.7, 'Lambropoulos'
);

/* INSERT QUERY NO: 100 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Saint-Léonard--Saint-Michel', 24069, 113212, 77136, 197, 45434, 97.9, 993, 2.1, 46427, 60.2, 'Lattanzio'
);

/* INSERT QUERY NO: 101 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Saint-Maurice--Champlain', 24070, 110264, 91779, 279, 58414, 97.8, 1307, 2.2, 59721, 65.1, 'Champagne'
);

/* INSERT QUERY NO: 102 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Salaberry--Suroît', 24071, 112826, 96039, 283, 62903, 98, 1285, 2, 64188, 66.8, 'Debellefeuille'
);

/* INSERT QUERY NO: 103 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Shefford', 24072, 111139, 91138, 269, 60913, 97.9, 1313, 2.1, 62226, 68.3, 'Larouche'
);

/* INSERT QUERY NO: 104 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Sherbrooke', 24073, 111176, 89152, 259, 59726, 98.3, 1003, 1.7, 60729, 68.1, 'Brière'
);

/* INSERT QUERY NO: 105 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Terrebonne', 24075, 111575, 89062, 199, 61335, 98, 1282, 2, 62617, 70.3, 'Boudrias'
);

/* INSERT QUERY NO: 106 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Thérèse-De Blainville', 24013, 101840, 82756, 220, 58549, 98.4, 933, 1.6, 59482, 71.9, 'Chabot'
);

/* INSERT QUERY NO: 107 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Trois-Rivières', 24076, 110515, 92465, 258, 60538, 98.2, 1092, 1.8, 61630, 66.7, 'Charbonneau'
);

/* INSERT QUERY NO: 108 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Vaudreuil--Soulanges', 24074, 119227, 95659, 265, 68142, 98.6, 962, 1.4, 69104, 72.2, 'Schiefke'
);

/* INSERT QUERY NO: 109 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Ville-Marie--Le Sud-Ouest--Île-des-Soeurs', 24077, 114659, 89012, 227, 52522, 98.9, 601, 1.1, 53123, 59.7, 'Miller'
);

/* INSERT QUERY NO: 110 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Quebec/Québec', 'Vimy', 24078, 111867, 88462, 233, 55533, 98.1, 1057, 1.9, 56590, 64, 'Koutrakis'
);

/* INSERT QUERY NO: 111 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Ajax', 35001, 119677, 93215, 217, 61020, 99.2, 487, .8, 61507, 66, 'Holland'
);

/* INSERT QUERY NO: 112 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Algoma--Manitoulin--Kapuskasing', 35002, 79483, 65906, 210, 40591, 99.1, 384, .9, 40975, 62.2, 'Hughes'
);

/* INSERT QUERY NO: 113 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Aurora--Oak Ridges--Richmond Hill', 35003, 115227, 83340, 203, 53109, 99.2, 454, .8, 53563, 64.3, 'Alleslev'
);

/* INSERT QUERY NO: 114 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Barrie--Innisfil', 35004, 109286, 87025, 179, 54253, 99.3, 376, .7, 54629, 62.8, 'Brassard'
);

/* INSERT QUERY NO: 115 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Barrie--Springwater--Oro-Medonte', 35005, 100788, 81414, 202, 53793, 99.3, 378, .7, 54171, 66.5, 'Shipley'
);

/* INSERT QUERY NO: 116 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Bay of Quinte/Baie de Quinte', 35006, 109735, 94197, 227, 61547, 99.3, 464, .7, 62011, 65.8, 'Ellis'
);

/* INSERT QUERY NO: 117 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Beaches--East York', 35007, 109468, 81842, 200, 57078, 99.4, 340, .6, 57418, 70.2, 'Erskine-Smith'
);

/* INSERT QUERY NO: 118 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Brampton Centre/Brampton-Centre', 35008, 102270, 67890, 185, 39758, 98.8, 480, 1.2, 40238, 59.3, 'Sangha'
);

/* INSERT QUERY NO: 119 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Brampton East/Brampton-Est', 35009, 122000, 78728, 211, 50753, 99, 510, 1, 51263, 65.1, 'Sidhu'
);

/* INSERT QUERY NO: 120 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Brampton North/Brampton-Nord', 35010, 118180, 78229, 193, 50502, 99, 496, 1, 50998, 65.2, 'Sahota'
);

/* INSERT QUERY NO: 121 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Brampton South/Brampton-Sud', 35011, 121188, 79046, 199, 48683, 98.8, 583, 1.2, 49266, 62.3, 'Sidhu'
);

/* INSERT QUERY NO: 122 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Brampton West/Brampton-Ouest', 35012, 130000, 88166, 197, 53683, 98.6, 735, 1.4, 54418, 61.7, 'Khera'
);

/* INSERT QUERY NO: 123 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Brantford--Brant', 35013, 130296, 108602, 233, 66666, 99.3, 497, .7, 67163, 61.8, 'McColeman'
);

/* INSERT QUERY NO: 124 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Bruce--Grey--Owen Sound', 35014, 107679, 89386, 249, 58161, 99.5, 303, .5, 58464, 65.4, 'Ruff'
);

/* INSERT QUERY NO: 125 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Burlington', 35015, 123180, 100201, 275, 71985, 99.2, 600, .8, 72585, 72.4, 'Gould'
);

/* INSERT QUERY NO: 126 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Cambridge', 35016, 115463, 90291, 218, 57942, 99.3, 385, .7, 58327, 64.6, 'May'
);

/* INSERT QUERY NO: 127 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Carleton', 35088, 102918, 88701, 223, 69359, 99.4, 408, .6, 69767, 78.7, 'Poilievre'
);

/* INSERT QUERY NO: 128 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Chatham-Kent--Leamington', 35017, 109619, 86586, 258, 54088, 99.2, 450, .8, 54538, 63, 'Epp'
);

/* INSERT QUERY NO: 129 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Davenport', 35018, 108473, 82047, 192, 53180, 99.2, 417, .8, 53597, 65.3, 'Dzerowicz'
);

/* INSERT QUERY NO: 130 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Don Valley East/Don Valley-Est', 35019, 94579, 66530, 188, 42294, 99, 438, 1, 42732, 64.2, 'Ratansi'
);

/* INSERT QUERY NO: 131 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Don Valley North/Don Valley-Nord', 35020, 110076, 76151, 199, 46571, 99.3, 314, .7, 46885, 61.6, 'Dong'
);

/* INSERT QUERY NO: 132 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Don Valley West/Don Valley-Ouest', 35021, 102508, 74003, 167, 52234, 99.2, 422, .8, 52656, 71.2, 'Oliphant'
);

/* INSERT QUERY NO: 133 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Dufferin--Caledon', 35022, 128237, 106348, 221, 68616, 99.4, 447, .6, 69063, 64.9, 'Seeback'
);

/* INSERT QUERY NO: 134 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Durham', 35023, 130872, 108096, 305, 73014, 99.3, 480, .7, 73494, 68, 'O\'Toole'
);

/* INSERT QUERY NO: 135 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Eglinton--Lawrence', 35024, 114395, 83559, 210, 56004, 99.3, 394, .7, 56398, 67.5, 'Mendicino'
);

/* INSERT QUERY NO: 136 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Elgin--Middlesex--London', 35025, 115052, 94026, 172, 61754, 99.2, 475, .8, 62229, 66.2, 'Vecchio'
);

/* INSERT QUERY NO: 137 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Essex', 35026, 125442, 102796, 252, 68288, 99.3, 450, .7, 68738, 66.9, 'Lewis'
);

/* INSERT QUERY NO: 138 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Etobicoke Centre/Etobicoke-Centre', 35027, 118022, 92638, 241, 63219, 99, 624, 1, 63843, 68.9, 'Baker'
);

/* INSERT QUERY NO: 139 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Etobicoke North/Etobicoke-Nord', 35029, 118040, 75415, 182, 42946, 98.7, 565, 1.3, 43511, 57.7, 'Duncan'
);

/* INSERT QUERY NO: 140 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Etobicoke--Lakeshore', 35028, 129081, 104246, 239, 69515, 99.3, 525, .7, 70040, 67.2, 'Maloney'
);

/* INSERT QUERY NO: 141 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Flamborough--Glanbrook', 35030, 111065, 89823, 221, 62539, 99.4, 381, .6, 62920, 70, 'Sweet'
);

/* INSERT QUERY NO: 142 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Glengarry--Prescott--Russell', 35031, 109975, 92555, 269, 65791, 99, 645, 1, 66436, 71.8, 'Drouin'
);

/* INSERT QUERY NO: 143 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Guelph', 35032, 131794, 107425, 237, 75568, 99.4, 452, .6, 76020, 70.8, 'Longfield'
);

/* INSERT QUERY NO: 144 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Haldimand--Norfolk', 35033, 109652, 91557, 250, 59926, 99.3, 436, .7, 60362, 65.9, 'Finley'
);

/* INSERT QUERY NO: 145 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Haliburton--Kawartha Lakes--Brock', 35034, 113956, 99274, 273, 65760, 99.4, 413, .6, 66173, 66.7, 'Schmale'
);

/* INSERT QUERY NO: 146 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Hamilton Centre/Hamilton-Centre', 35035, 100103, 75371, 187, 44122, 99.1, 405, .9, 44527, 59.1, 'Green'
);

/* INSERT QUERY NO: 147 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Hamilton East--Stoney Creek/Hamilton-Est--Stoney Creek', 35036, 107848, 85252, 206, 52146, 99, 533, 1, 52679, 61.8, 'Bratina'
);

/* INSERT QUERY NO: 148 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Hamilton Mountain', 35037, 104877, 81698, 204, 52949, 99.1, 489, .9, 53438, 65.4, 'Duvall'
);

/* INSERT QUERY NO: 149 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Hamilton West--Ancaster--Dundas/Hamilton-Ouest--Ancaster--Dundas', 35038, 113024, 89679, 228, 64901, 99.4, 415, .6, 65316, 72.8, 'Tassi'
);

/* INSERT QUERY NO: 150 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Hastings--Lennox and Addington', 35039, 94333, 80434, 222, 53094, 99.3, 352, .7, 53446, 66.4, 'Sloan'
);

/* INSERT QUERY NO: 151 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Humber River--Black Creek', 35121, 108037, 69524, 165, 37958, 98.7, 503, 1.3, 38461, 55.3, 'Sgro'
);

/* INSERT QUERY NO: 152 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Huron--Bruce', 35040, 106570, 86416, 257, 60867, 99.4, 398, .6, 61265, 70.9, 'Lobb'
);

/* INSERT QUERY NO: 153 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Kanata--Carleton', 35041, 110960, 87281, 205, 66772, 99.3, 438, .7, 67210, 77, 'McCrimmon'
);

/* INSERT QUERY NO: 154 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Kenora', 35042, 62556, 46766, 144, 27787, 99, 273, 1, 28060, 60, 'Melillo'
);

/* INSERT QUERY NO: 155 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'King--Vaughan', 35043, 131995, 100174, 247, 63848, 99.1, 598, .9, 64446, 64.3, 'Schulte'
);

/* INSERT QUERY NO: 156 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Kingston and the Islands/Kingston et les Îles', 35044, 117543, 98921, 248, 68193, 99.3, 484, .7, 68677, 69.4, 'Gerretsen'
);

/* INSERT QUERY NO: 157 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Kitchener Centre/Kitchener-Centre', 35045, 105258, 83884, 216, 55374, 99.2, 465, .8, 55839, 66.6, 'Saini'
);

/* INSERT QUERY NO: 158 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Kitchener South--Hespeler/Kitchener-Sud--Hespeler', 35047, 105309, 80150, 205, 52233, 99.2, 395, .8, 52628, 65.7, 'Tabbara'
);

/* INSERT QUERY NO: 159 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Kitchener--Conestoga', 35046, 100709, 74975, 214, 51535, 99.3, 361, .7, 51896, 69.2, 'Louis'
);

/* INSERT QUERY NO: 160 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Lambton--Kent--Middlesex', 35048, 105331, 88838, 240, 58412, 99.3, 434, .7, 58846, 66.2, 'Rood'
);

/* INSERT QUERY NO: 161 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Lanark--Frontenac--Kingston', 35049, 101630, 87395, 251, 62481, 99.3, 434, .7, 62915, 72, 'Reid'
);

/* INSERT QUERY NO: 162 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Leeds--Grenville--Thousand Islands and Rideau Lakes/Leeds--Grenville--Thousand Islands et Rideau Lakes', 35050, 100546, 84999, 237, 58453, 99.2, 479, .8, 58932, 69.3, 'Barrett'
);

/* INSERT QUERY NO: 163 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'London North Centre/London-Centre-Nord', 35052, 125362, 98039, 236, 63741, 99.2, 493, .8, 64234, 65.5, 'Fragiskatos'
);

/* INSERT QUERY NO: 164 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'London West/London-Ouest', 35053, 126110, 100387, 241, 71273, 99.3, 496, .7, 71769, 71.5, 'Young'
);

/* INSERT QUERY NO: 165 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'London--Fanshawe', 35051, 119467, 93944, 235, 55575, 99.1, 518, .9, 56093, 59.7, 'Mathyssen'
);

/* INSERT QUERY NO: 166 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Markham--Stouffville', 35054, 126064, 95461, 236, 64388, 99, 623, 1, 65011, 68.1, 'Jaczek'
);

/* INSERT QUERY NO: 167 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Markham--Thornhill', 35055, 99078, 72499, 175, 44331, 99, 448, 1, 44779, 61.8, 'Ng'
);

/* INSERT QUERY NO: 168 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Markham--Unionville', 35056, 123318, 88882, 213, 53396, 99, 523, 1, 53919, 60.7, 'Saroya'
);

/* INSERT QUERY NO: 169 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Milton', 35057, 114093, 85353, 194, 59679, 99.4, 379, .6, 60058, 70.4, 'van Koeverden'
);

/* INSERT QUERY NO: 170 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Mississauga Centre/Mississauga-Centre', 35058, 124849, 87888, 228, 53756, 99.1, 475, .9, 54231, 61.7, 'Alghabra'
);

/* INSERT QUERY NO: 171 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Mississauga East--Cooksville/Mississauga-Est--Cooksville', 35059, 120205, 86191, 219, 52623, 99.1, 483, .9, 53106, 61.6, 'Fonseca'
);

/* INSERT QUERY NO: 172 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Mississauga--Erin Mills', 35060, 122560, 88722, 214, 58262, 98.9, 637, 1.1, 58899, 66.4, 'Khalid'
);

/* INSERT QUERY NO: 173 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Mississauga--Lakeshore', 35061, 117444, 90419, 244, 60999, 99.3, 407, .7, 61406, 67.9, 'Spengemann'
);

/* INSERT QUERY NO: 174 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Mississauga--Malton', 35062, 118240, 79810, 190, 48537, 99, 500, 1, 49037, 61.4, 'Bains'
);

/* INSERT QUERY NO: 175 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Mississauga--Streetsville', 35063, 118301, 87961, 212, 58765, 99.3, 437, .7, 59202, 67.3, 'Sikand'
);

/* INSERT QUERY NO: 176 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Nepean', 35064, 119110, 93734, 233, 69583, 99.4, 407, .6, 69990, 74.7, 'Arya'
);

/* INSERT QUERY NO: 177 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Newmarket--Aurora', 35065, 117418, 91880, 214, 61460, 99.3, 424, .7, 61884, 67.4, 'Van Bynen'
);

/* INSERT QUERY NO: 178 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Niagara Centre/Niagara-Centre', 35066, 109067, 90968, 208, 57963, 99.1, 539, .9, 58502, 64.3, 'Badawey'
);

/* INSERT QUERY NO: 179 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Niagara Falls', 35067, 136292, 113232, 238, 69734, 99.1, 636, .9, 70370, 62.1, 'Baldinelli'
);

/* INSERT QUERY NO: 180 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Niagara West/Niagara-Ouest', 35068, 90838, 74983, 195, 53924, 99.5, 252, .5, 54176, 72.3, 'Allison'
);

/* INSERT QUERY NO: 181 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Nickel Belt', 35069, 93772, 76585, 211, 48848, 99.4, 298, .6, 49146, 64.2, 'Serré'
);

/* INSERT QUERY NO: 182 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Nipissing--Timiskaming', 35070, 88813, 75052, 202, 47727, 99.2, 407, .8, 48134, 64.1, 'Rota'
);

/* INSERT QUERY NO: 183 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Northumberland--Peterborough South/Northumberland--Peterborough-Sud', 35071, 112412, 97186, 292, 68961, 99.3, 484, .7, 69445, 71.5, 'Lawrence'
);

/* INSERT QUERY NO: 184 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Oakville', 35072, 120923, 90334, 246, 65401, 99.3, 487, .7, 65888, 72.9, 'Anand'
);

/* INSERT QUERY NO: 185 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Oakville North--Burlington/Oakville-Nord--Burlington', 35073, 129078, 97696, 218, 69623, 99.4, 412, .6, 70035, 71.7, 'Damoff'
);

/* INSERT QUERY NO: 186 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Orléans', 35076, 128281, 106321, 264, 81410, 99.3, 585, .7, 81995, 77.1, 'Lalonde'
);

/* INSERT QUERY NO: 187 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Oshawa', 35074, 126764, 101988, 238, 61983, 99.3, 414, .7, 62397, 61.2, 'Carrie'
);

/* INSERT QUERY NO: 188 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Ottawa Centre/Ottawa-Centre', 35075, 118038, 101219, 248, 78902, 99.4, 482, .6, 79384, 78.4, 'McKenna'
);

/* INSERT QUERY NO: 189 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Ottawa South/Ottawa-Sud', 35077, 121058, 92759, 238, 65376, 99.1, 574, .9, 65950, 71.1, 'McGuinty'
);

/* INSERT QUERY NO: 190 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Ottawa West--Nepean/Ottawa-Ouest--Nepean', 35079, 111837, 87394, 229, 62206, 99, 602, 1, 62808, 71.9, 'Vandenbeld'
);

/* INSERT QUERY NO: 191 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Ottawa--Vanier', 35078, 111508, 92837, 247, 63881, 98.9, 699, 1.1, 64580, 69.6, 'Fortier'
);

/* INSERT QUERY NO: 192 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Oxford', 35080, 113790, 93166, 222, 60891, 99.1, 528, .9, 61419, 65.9, 'MacKenzie'
);

/* INSERT QUERY NO: 193 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Parkdale--High Park', 35081, 108805, 84479, 207, 60887, 99.4, 382, .6, 61269, 72.5, 'Virani'
);

/* INSERT QUERY NO: 194 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Parry Sound--Muskoka', 35082, 94398, 83362, 230, 54663, 99.3, 392, .7, 55055, 66, 'Aitchison'
);

/* INSERT QUERY NO: 195 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Perth--Wellington', 35083, 107908, 83501, 195, 55294, 99.3, 381, .7, 55675, 66.7, 'Nater'
);

/* INSERT QUERY NO: 196 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Peterborough--Kawartha', 35084, 118176, 100351, 281, 69801, 99.4, 448, .6, 70249, 70, 'Monsef'
);

/* INSERT QUERY NO: 197 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Pickering--Uxbridge', 35085, 112947, 92933, 263, 63495, 99.4, 407, .6, 63902, 68.8, 'O\'Connell'
);

/* INSERT QUERY NO: 198 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Renfrew--Nipissing--Pembroke', 35086, 103495, 86387, 245, 58957, 99.2, 471, .8, 59428, 68.8, 'Gallant'
);

/* INSERT QUERY NO: 199 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Richmond Hill', 35087, 110177, 85075, 235, 50149, 98.8, 584, 1.2, 50733, 59.6, 'Jowhari'
);

/* INSERT QUERY NO: 200 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'St. Catharines', 35089, 111691, 91215, 211, 60113, 99.2, 506, .8, 60619, 66.5, 'Bittle'
);

/* INSERT QUERY NO: 201 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Sarnia--Lambton', 35091, 105337, 85266, 236, 57916, 99.3, 400, .7, 58316, 68.4, 'Gladu'
);

/* INSERT QUERY NO: 202 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Sault Ste. Marie', 35092, 80371, 66668, 179, 41700, 99.2, 337, .8, 42037, 63.1, 'Sheehan'
);

/* INSERT QUERY NO: 203 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Scarborough Centre/Scarborough-Centre', 35094, 112603, 76698, 183, 46556, 98.6, 638, 1.4, 47194, 61.5, 'Zahid'
);

/* INSERT QUERY NO: 204 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Scarborough North/Scarborough-Nord', 35096, 98800, 66759, 168, 39037, 99, 385, 1, 39422, 59.1, 'Chen'
);

/* INSERT QUERY NO: 205 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Scarborough Southwest/Scarborough-Sud-Ouest', 35098, 110278, 79291, 194, 50635, 99.1, 449, .9, 51084, 64.4, 'Blair'
);

/* INSERT QUERY NO: 206 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Scarborough--Agincourt', 35093, 105542, 71907, 189, 41814, 98.9, 476, 1.1, 42290, 58.8, 'Yip'
);

/* INSERT QUERY NO: 207 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Scarborough--Guildwood', 35095, 102386, 68886, 182, 42742, 98.7, 580, 1.3, 43322, 62.9, 'McKay'
);

/* INSERT QUERY NO: 208 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Scarborough--Rouge Park', 35097, 102275, 77449, 194, 50426, 99.4, 322, .6, 50748, 65.5, 'Anandasangaree'
);

/* INSERT QUERY NO: 209 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Simcoe North/Simcoe-Nord', 35100, 111332, 97613, 265, 62778, 99.4, 358, .6, 63136, 64.7, 'Stanton'
);

/* INSERT QUERY NO: 210 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Simcoe--Grey', 35099, 129944, 115604, 312, 75509, 99.4, 492, .6, 76001, 65.7, 'Dowdall'
);

/* INSERT QUERY NO: 211 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Spadina--Fort York', 35101, 115506, 93251, 220, 60650, 99.4, 339, .6, 60989, 65.4, 'Vaughan'
);

/* INSERT QUERY NO: 212 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Stormont--Dundas--South Glengarry', 35102, 103320, 84983, 248, 53711, 99, 533, 1, 54244, 63.8, 'Duncan'
);

/* INSERT QUERY NO: 213 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Sudbury', 35103, 91532, 75035, 207, 47977, 99.3, 317, .7, 48294, 64.4, 'Lefebvre'
);

/* INSERT QUERY NO: 214 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Thornhill', 35104, 112719, 85005, 227, 53496, 98.9, 583, 1.1, 54079, 63.6, 'Kent'
);

/* INSERT QUERY NO: 215 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Thunder Bay--Rainy River', 35105, 82805, 66306, 193, 41051, 99.2, 333, .8, 41384, 62.4, 'Powlowski'
);

/* INSERT QUERY NO: 216 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Thunder Bay--Superior North/Thunder Bay--Supérieur-Nord', 35106, 82651, 66579, 201, 43177, 99, 416, 1, 43593, 65.5, 'Hajdu'
);

/* INSERT QUERY NO: 217 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Timmins--James Bay/Timmins--Baie James', 35107, 83257, 63903, 167, 36740, 99, 369, 1, 37109, 58.1, 'Angus'
);

/* INSERT QUERY NO: 218 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Toronto Centre/Toronto-Centre', 35108, 103805, 83076, 255, 54512, 99.3, 384, .7, 54896, 66.1, 'Morneau'
);

/* INSERT QUERY NO: 219 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Toronto--Danforth', 35109, 106875, 82703, 198, 58059, 99.3, 413, .7, 58472, 70.7, 'Dabrusin'
);

/* INSERT QUERY NO: 220 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Toronto--St. Paul\'s', 35090, 107900, 85544, 206, 59834, 99.4, 384, .6, 60218, 70.4, 'Bennett'
);

/* INSERT QUERY NO: 221 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'University--Rosedale', 35110, 104311, 83485, 204, 57391, 99.5, 281, .5, 57672, 69.1, 'Freeland'
);

/* INSERT QUERY NO: 222 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Vaughan--Woodbridge', 35111, 105228, 80593, 195, 50328, 99.1, 480, .9, 50808, 63, 'Sorbara'
);

/* INSERT QUERY NO: 223 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Waterloo', 35112, 110134, 88927, 229, 63706, 99.3, 417, .7, 64123, 72.1, 'Chagger'
);

/* INSERT QUERY NO: 224 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Wellington--Halton Hills', 35113, 120981, 99113, 267, 69680, 99.5, 359, .5, 70039, 70.7, 'Chong'
);

/* INSERT QUERY NO: 225 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Whitby', 35114, 128377, 98572, 248, 69101, 99.4, 415, .6, 69516, 70.5, 'Turnbull'
);

/* INSERT QUERY NO: 226 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Willowdale', 35115, 118801, 79367, 195, 45470, 99.1, 410, .9, 45880, 57.8, 'Ehsassi'
);

/* INSERT QUERY NO: 227 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Windsor West/Windsor-Ouest', 35117, 122988, 94944, 228, 51962, 98.9, 560, 1.1, 52522, 55.3, 'Masse'
);

/* INSERT QUERY NO: 228 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'Windsor--Tecumseh', 35116, 117429, 95668, 251, 56957, 99.1, 539, .9, 57496, 60.1, 'Kusmierczyk'
);

/* INSERT QUERY NO: 229 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'York Centre/York-Centre', 35118, 104319, 71100, 188, 43186, 98.5, 665, 1.5, 43851, 61.7, 'Levitt'
);

/* INSERT QUERY NO: 230 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'York South--Weston/York-Sud--Weston', 35120, 116686, 79364, 199, 44463, 98.7, 575, 1.3, 45038, 56.7, 'Hussen'
);

/* INSERT QUERY NO: 231 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Ontario', 'York--Simcoe', 35119, 104010, 89556, 183, 53781, 99.1, 497, .9, 54278, 60.6, 'Davidson'
);

/* INSERT QUERY NO: 232 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Brandon--Souris', 46001, 88170, 63401, 175, 41206, 99.5, 224, .5, 41430, 65.3, 'Maguire'
);

/* INSERT QUERY NO: 233 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Charleswood--St. James--Assiniboia--Headingley', 46002, 82574, 65949, 178, 46228, 99.4, 256, .6, 46484, 70.5, 'Morantz'
);

/* INSERT QUERY NO: 234 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Churchill--Keewatinook Aski', 46003, 87027, 51482, 152, 23687, 99.2, 190, .8, 23877, 46.4, 'Ashton'
);

/* INSERT QUERY NO: 235 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Dauphin--Swan River--Neepawa', 46004, 87527, 63250, 233, 40566, 99.3, 279, .7, 40845, 64.6, 'Mazier'
);

/* INSERT QUERY NO: 236 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Elmwood--Transcona', 46005, 92738, 70062, 185, 43364, 99.3, 313, .7, 43677, 62.3, 'Blaikie'
);

/* INSERT QUERY NO: 237 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Kildonan--St. Paul', 46006, 84077, 66290, 203, 44298, 99.5, 222, .5, 44520, 67.2, 'Dancho'
);

/* INSERT QUERY NO: 238 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Portage--Lisgar', 46007, 97354, 67397, 227, 44636, 99.4, 275, .6, 44911, 66.6, 'Bergen'
);

/* INSERT QUERY NO: 239 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Provencher', 46008, 99946, 71676, 191, 48305, 99.3, 322, .7, 48627, 67.8, 'Falk'
);

/* INSERT QUERY NO: 240 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Saint Boniface--Saint Vital/Saint-Boniface--Saint-Vital', 46009, 89818, 68631, 181, 47338, 99.4, 269, .6, 47607, 69.4, 'Vandal'
);

/* INSERT QUERY NO: 241 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Selkirk--Interlake--Eastman', 46010, 94778, 74439, 262, 49602, 99.4, 322, .6, 49924, 67.1, 'Bezan'
);

/* INSERT QUERY NO: 242 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Winnipeg Centre/Winnipeg-Centre', 46011, 85949, 59762, 173, 31724, 99.1, 274, .9, 31998, 53.5, 'Gazan'
);

/* INSERT QUERY NO: 243 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Winnipeg North/Winnipeg-Nord', 46012, 95676, 63681, 170, 32735, 99.3, 243, .7, 32978, 51.8, 'Lamoureux'
);

/* INSERT QUERY NO: 244 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Winnipeg South/Winnipeg-Sud', 46013, 99678, 69567, 176, 47889, 99.4, 303, .6, 48192, 69.3, 'Duguid'
);

/* INSERT QUERY NO: 245 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Manitoba', 'Winnipeg South Centre/Winnipeg-Centre-Sud', 46014, 93053, 71760, 195, 50661, 99.5, 267, .5, 50928, 71, 'Carr'
);

/* INSERT QUERY NO: 246 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Battlefords--Lloydminster', 47001, 73506, 51893, 140, 35821, 99.2, 278, .8, 36099, 69.6, 'Falk'
);

/* INSERT QUERY NO: 247 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Carlton Trail--Eagle Creek/Sentier Carlton--Eagle Creek', 47004, 80662, 58887, 182, 44949, 99.5, 240, .5, 45189, 76.7, 'Block'
);

/* INSERT QUERY NO: 248 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Cypress Hills--Grasslands', 47002, 68353, 50705, 170, 38415, 99.3, 259, .7, 38674, 76.3, 'Patzer'
);

/* INSERT QUERY NO: 249 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Desnethé--Missinippi--Churchill River/Desnethé--Missinippi--Rivière Churchill', 47003, 70891, 47985, 168, 27257, 99.2, 216, .8, 27473, 57.3, 'Vidal'
);

/* INSERT QUERY NO: 250 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Moose Jaw--Lake Centre--Lanigan', 47005, 79733, 59700, 183, 44984, 99.4, 291, .6, 45275, 75.8, 'Lukiwski'
);

/* INSERT QUERY NO: 251 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Prince Albert', 47006, 79625, 58367, 174, 39710, 99.4, 237, .6, 39947, 68.4, 'Hoback'
);

/* INSERT QUERY NO: 252 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Regina--Lewvan', 47007, 92426, 68770, 182, 51614, 99.4, 312, .6, 51926, 75.5, 'Steinley'
);

/* INSERT QUERY NO: 253 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Regina--Qu\'Appelle', 47008, 76017, 56412, 165, 38755, 99.2, 323, .8, 39078, 69.3, 'Scheer'
);

/* INSERT QUERY NO: 254 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Regina--Wascana', 47009, 84153, 60451, 139, 45355, 99.2, 344, .8, 45699, 75.6, 'Kram'
);

/* INSERT QUERY NO: 255 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Saskatoon West/Saskatoon-Ouest', 47012, 83711, 61577, 150, 38985, 99, 397, 1, 39382, 64, 'Redekopp'
);

/* INSERT QUERY NO: 256 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Saskatoon--Grasswood', 47010, 82946, 64874, 171, 49439, 99.3, 337, .7, 49776, 76.7, 'Waugh'
);

/* INSERT QUERY NO: 257 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Saskatoon--University', 47011, 82663, 62012, 168, 47027, 99.4, 271, .6, 47298, 76.3, 'Tochor'
);

/* INSERT QUERY NO: 258 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Souris--Moose Mountain', 47013, 72635, 52708, 190, 41550, 99.7, 114, .3, 41664, 79, 'Kitchen'
);

/* INSERT QUERY NO: 259 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Saskatchewan', 'Yorkton--Melville', 47014, 71031, 53643, 204, 38769, 99.3, 287, .7, 39056, 72.8, 'Wagantall'
);

/* INSERT QUERY NO: 260 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Banff--Airdrie', 48001, 135762, 108264, 282, 78080, 99.5, 393, .5, 78473, 72.5, 'Richards'
);

/* INSERT QUERY NO: 261 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Battle River--Crowfoot', 48002, 110223, 83139, 246, 62360, 99.4, 352, .6, 62712, 75.4, 'Kurek'
);

/* INSERT QUERY NO: 262 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Bow River', 48003, 115022, 80610, 211, 55138, 99.6, 234, .4, 55372, 68.7, 'Shields'
);

/* INSERT QUERY NO: 263 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Centre/Calgary-Centre', 48004, 119176, 97129, 226, 65864, 99.4, 385, .6, 66249, 68.2, 'McLean'
);

/* INSERT QUERY NO: 264 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Confederation', 48005, 122023, 93160, 244, 65892, 99.4, 410, .6, 66302, 71.2, 'Webber'
);

/* INSERT QUERY NO: 265 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Forest Lawn', 48006, 111830, 75683, 203, 39964, 99, 395, 1, 40359, 53.3, 'Hallan'
);

/* INSERT QUERY NO: 266 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Heritage', 48007, 112087, 82059, 193, 57715, 99.6, 260, .4, 57975, 70.7, 'Benzen'
);

/* INSERT QUERY NO: 267 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Midnapore', 48008, 121844, 94245, 233, 68088, 99.5, 338, .5, 68426, 72.6, 'Kusie'
);

/* INSERT QUERY NO: 268 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Nose Hill', 48009, 115795, 83395, 203, 55309, 99.5, 262, .5, 55571, 66.6, 'Rempel'
);

/* INSERT QUERY NO: 269 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Rocky Ridge', 48010, 131823, 98738, 236, 70650, 99.6, 284, .4, 70934, 71.8, 'Kelly'
);

/* INSERT QUERY NO: 270 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Shepard', 48011, 147520, 112660, 265, 78140, 99.4, 441, .6, 78581, 69.8, 'Kmiec'
);

/* INSERT QUERY NO: 271 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Signal Hill', 48012, 121392, 88690, 225, 63478, 99.6, 241, .4, 63719, 71.8, 'Liepert'
);

/* INSERT QUERY NO: 272 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Calgary Skyview', 48013, 135730, 84915, 197, 50552, 99, 497, 1, 51049, 60.1, 'Sahota'
);

/* INSERT QUERY NO: 273 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Edmonton Centre/Edmonton-Centre', 48014, 109941, 83112, 202, 53092, 99.3, 362, .7, 53454, 64.3, 'Cumming'
);

/* INSERT QUERY NO: 274 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Edmonton Griesbach', 48015, 112287, 83188, 212, 46963, 99.3, 319, .7, 47282, 56.8, 'Diotte'
);

/* INSERT QUERY NO: 275 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Edmonton Manning', 48016, 121048, 89968, 200, 54380, 99.3, 357, .7, 54737, 60.8, 'Aboultaif'
);

/* INSERT QUERY NO: 276 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Edmonton Mill Woods', 48017, 118561, 78601, 192, 53177, 99.4, 342, .6, 53519, 68.1, 'Uppal'
);

/* INSERT QUERY NO: 277 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Edmonton Riverbend', 48018, 120863, 87305, 211, 61148, 99.5, 329, .5, 61477, 70.4, 'Jeneroux'
);

/* INSERT QUERY NO: 278 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Edmonton Strathcona', 48019, 106066, 78876, 196, 56745, 99.6, 250, .4, 56995, 72.3, 'McPherson'
);

/* INSERT QUERY NO: 279 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Edmonton West/Edmonton-Ouest', 48020, 121869, 89249, 214, 58635, 99.5, 304, .5, 58939, 66, 'McCauley'
);

/* INSERT QUERY NO: 280 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Edmonton--Wetaskiwin', 48021, 158749, 125054, 288, 87455, 99.6, 392, .4, 87847, 70.2, 'Lake'
);

/* INSERT QUERY NO: 281 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Foothills', 48022, 113227, 87873, 254, 65591, 99.6, 290, .4, 65881, 75, 'Barlow'
);

/* INSERT QUERY NO: 282 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Fort McMurray--Cold Lake', 48023, 110230, 79222, 213, 50976, 99.5, 258, .5, 51234, 64.7, 'Yurdiga'
);

/* INSERT QUERY NO: 283 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Grande Prairie--Mackenzie', 48024, 117327, 86736, 227, 60979, 99.5, 314, .5, 61293, 70.7, 'Warkentin'
);

/* INSERT QUERY NO: 284 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Lakeland', 48025, 108451, 80578, 236, 57578, 99.7, 198, .3, 57776, 71.7, 'Stubbs'
);

/* INSERT QUERY NO: 285 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Lethbridge', 48026, 117394, 90051, 243, 61882, 99.5, 335, .5, 62217, 69.1, 'Harder'
);

/* INSERT QUERY NO: 286 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Medicine Hat--Cardston--Warner', 48027, 106896, 79596, 214, 53102, 99.5, 254, .5, 53356, 67, 'Motz'
);

/* INSERT QUERY NO: 287 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Peace River--Westlock', 48028, 109965, 75814, 225, 51649, 99.3, 347, .7, 51996, 68.6, 'Viersen'
);

/* INSERT QUERY NO: 288 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Red Deer--Lacombe', 48030, 128786, 95095, 253, 67444, 99.5, 325, .5, 67769, 71.3, 'Calkins'
);

/* INSERT QUERY NO: 289 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Red Deer--Mountain View', 48029, 119019, 90857, 242, 68169, 99.6, 278, .4, 68447, 75.3, 'Dreeshen'
);

/* INSERT QUERY NO: 290 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'St. Albert--Edmonton', 48031, 121313, 93468, 238, 65091, 99.5, 336, .5, 65427, 70, 'Cooper'
);

/* INSERT QUERY NO: 291 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Sherwood Park--Fort Saskatchewan', 48032, 122193, 96171, 252, 73050, 99.6, 321, .4, 73371, 76.3, 'Genuis'
);

/* INSERT QUERY NO: 292 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Sturgeon River--Parkland', 48033, 120784, 94282, 247, 68657, 99.5, 314, .5, 68971, 73.2, 'Lloyd'
);

/* INSERT QUERY NO: 293 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Alberta', 'Yellowhead', 48034, 101979, 76197, 257, 55968, 99.5, 303, .5, 56271, 73.8, 'Soroka'
);

/* INSERT QUERY NO: 294 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Abbotsford', 59001, 101814, 75474, 165, 48936, 99.2, 403, .8, 49339, 65.4, 'Fast'
);

/* INSERT QUERY NO: 295 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Burnaby North--Seymour/Burnaby-Nord--Seymour', 59002, 102486, 77969, 188, 50059, 99.1, 466, .9, 50525, 64.8, 'Beech'
);

/* INSERT QUERY NO: 296 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Burnaby South/Burnaby-Sud', 59003, 111973, 80312, 190, 45006, 99.1, 417, .9, 45423, 56.6, 'Singh'
);

/* INSERT QUERY NO: 297 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Cariboo--Prince George', 59004, 108907, 84968, 226, 54774, 99.4, 321, .6, 55095, 64.8, 'Doherty'
);

/* INSERT QUERY NO: 298 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Central Okanagan--Similkameen--Nicola', 59005, 110293, 95597, 225, 64935, 99.5, 341, .5, 65276, 68.3, 'Albas'
);

/* INSERT QUERY NO: 299 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Chilliwack--Hope', 59006, 100126, 82824, 194, 53755, 99.6, 226, .4, 53981, 65.2, 'Strahl'
);

/* INSERT QUERY NO: 300 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Cloverdale--Langley City', 59007, 117640, 86610, 203, 55488, 99.3, 415, .7, 55903, 64.5, 'Jansen'
);

/* INSERT QUERY NO: 301 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Coquitlam--Port Coquitlam', 59008, 123576, 92653, 215, 58175, 99.5, 314, .5, 58489, 63.1, 'McKinnon'
);

/* INSERT QUERY NO: 302 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Courtenay--Alberni', 59009, 114647, 101731, 262, 72280, 99.5, 359, .5, 72639, 71.4, 'Johns'
);

/* INSERT QUERY NO: 303 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Cowichan--Malahat--Langford', 59010, 108052, 93745, 240, 65228, 99.6, 282, .4, 65510, 69.9, 'MacGregor'
);

/* INSERT QUERY NO: 304 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Delta', 59011, 103064, 77216, 187, 53976, 99.3, 361, .7, 54337, 70.4, 'Qualtrough'
);

/* INSERT QUERY NO: 305 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Esquimalt--Saanich--Sooke', 59026, 120834, 100238, 232, 70125, 99.6, 304, .4, 70429, 70.3, 'Garrison'
);

/* INSERT QUERY NO: 306 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Fleetwood--Port Kells', 59012, 116958, 81198, 199, 48905, 99.3, 336, .7, 49241, 60.6, 'Hardie'
);

/* INSERT QUERY NO: 307 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Kamloops--Thompson--Cariboo', 59013, 124358, 104054, 281, 72453, 99.6, 311, .4, 72764, 69.9, 'McLeod'
);

/* INSERT QUERY NO: 308 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Kelowna--Lake Country', 59014, 119388, 101507, 229, 69120, 99.6, 305, .4, 69425, 68.4, 'Gray'
);

/* INSERT QUERY NO: 309 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Kootenay--Columbia', 59015, 112354, 93002, 266, 67330, 99.6, 266, .4, 67596, 72.7, 'Morrison'
);

/* INSERT QUERY NO: 310 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Langley--Aldergrove', 59016, 117017, 93499, 214, 63452, 99.4, 373, .6, 63825, 68.3, 'Van Popta'
);

/* INSERT QUERY NO: 311 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Mission--Matsqui--Fraser Canyon', 59017, 94825, 69970, 176, 46066, 99.1, 439, .9, 46505, 66.5, 'Vis'
);

/* INSERT QUERY NO: 312 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Nanaimo--Ladysmith', 59018, 122710, 104678, 254, 71864, 99.7, 225, .3, 72089, 68.9, 'Manly'
);

/* INSERT QUERY NO: 313 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'New Westminster--Burnaby', 59019, 115340, 86544, 199, 52977, 99.2, 452, .8, 53429, 61.7, 'Julian'
);

/* INSERT QUERY NO: 314 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'North Island--Powell River', 59037, 105466, 90454, 248, 62915, 99.5, 291, .5, 63206, 69.9, 'Blaney'
);

/* INSERT QUERY NO: 315 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'North Okanagan--Shuswap', 59020, 124605, 107712, 284, 74145, 99.4, 449, .6, 74594, 69.3, 'Arnold'
);

/* INSERT QUERY NO: 316 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'North Vancouver', 59021, 115344, 88874, 207, 62930, 99.4, 349, .6, 63279, 71.2, 'Wilkinson'
);

/* INSERT QUERY NO: 317 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Pitt Meadows--Maple Ridge', 59022, 101101, 80494, 181, 54231, 99.5, 298, .5, 54529, 67.7, 'Dalton'
);

/* INSERT QUERY NO: 318 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Port Moody--Coquitlam', 59023, 110817, 82674, 200, 54003, 99.3, 361, .7, 54364, 65.8, 'Shin'
);

/* INSERT QUERY NO: 319 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Prince George--Peace River--Northern Rockies', 59024, 110995, 81094, 231, 55129, 99.5, 283, .5, 55412, 68.3, 'Zimmer'
);

/* INSERT QUERY NO: 320 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Richmond Centre/Richmond-Centre', 59025, 98396, 73975, 186, 38817, 99.1, 371, .9, 39188, 53, 'Wong'
);

/* INSERT QUERY NO: 321 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Saanich--Gulf Islands', 59027, 107339, 91752, 236, 68150, 99.5, 323, .5, 68473, 74.6, 'May'
);

/* INSERT QUERY NO: 322 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Skeena--Bulkley Valley', 59028, 88920, 67474, 217, 41384, 99.4, 267, .6, 41651, 61.7, 'Bachrach'
);

/* INSERT QUERY NO: 323 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'South Okanagan--West Kootenay/Okanagan-Sud--Kootenay-Ouest', 59029, 114695, 99676, 278, 68196, 99.4, 381, .6, 68577, 68.8, 'Cannings'
);

/* INSERT QUERY NO: 324 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'South Surrey--White Rock/Surrey-Sud--White Rock', 59030, 104051, 84664, 207, 58028, 99.4, 326, .6, 58354, 68.9, 'Findlay'
);

/* INSERT QUERY NO: 325 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Steveston--Richmond East/Steveston--Richmond-Est', 59031, 99913, 74428, 182, 41951, 99, 431, 1, 42382, 56.9, 'Chiu'
);

/* INSERT QUERY NO: 326 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Surrey Centre/Surrey-Centre', 59032, 120172, 76731, 181, 41319, 98.9, 471, 1.1, 41790, 54.5, 'Sarai'
);

/* INSERT QUERY NO: 327 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Surrey--Newton', 59033, 114605, 67763, 163, 42098, 98.8, 505, 1.2, 42603, 62.9, 'Dhaliwal'
);

/* INSERT QUERY NO: 328 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Vancouver Centre/Vancouver-Centre', 59034, 116443, 92243, 238, 55946, 99.4, 364, .6, 56310, 61, 'Fry'
);

/* INSERT QUERY NO: 329 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Vancouver East/Vancouver-Est', 59035, 115724, 93146, 234, 55611, 99, 537, 1, 56148, 60.3, 'Kwan'
);

/* INSERT QUERY NO: 330 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Vancouver Granville', 59036, 103456, 82985, 203, 53032, 99.5, 264, .5, 53296, 64.2, 'Wilson-Raybould'
);

/* INSERT QUERY NO: 331 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Vancouver Kingsway', 59038, 104870, 76039, 185, 44163, 99, 446, 1, 44609, 58.7, 'Davies'
);

/* INSERT QUERY NO: 332 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Vancouver Quadra', 59039, 105608, 75967, 167, 50754, 99.5, 251, .5, 51005, 67.1, 'Murray'
);

/* INSERT QUERY NO: 333 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Vancouver South/Vancouver-Sud', 59040, 102927, 74826, 192, 43194, 99, 431, 1, 43625, 58.3, 'Sajjan'
);

/* INSERT QUERY NO: 334 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'Victoria', 59041, 117133, 99103, 225, 71549, 99.3, 475, .7, 72024, 72.7, 'Collins'
);

/* INSERT QUERY NO: 335 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'British Columbia/Colombie-Britannique', 'West Vancouver--Sunshine Coast--Sea to Sky Country', 59042, 119113, 95395, 265, 64980, 99.5, 335, .5, 65315, 68.5, 'Weiler'
);

/* INSERT QUERY NO: 336 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Yukon', 'Yukon', 60001, 35874, 29591, 89, 21017, 99.4, 133, .6, 21150, 71.5, 'Bagnell'
);

/* INSERT QUERY NO: 337 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Northwest Territories/Territoires du Nord-Ouest', 'Northwest Territories/Territoires du Nord-Ouest', 61001, 41786, 30704, 101, 16291, 99.2, 125, .8, 16416, 53.5, 'McLeod'
);

/* INSERT QUERY NO: 338 */
INSERT INTO elections_results(Province, ElectoralDistrictName, ElectoralDistrictNum, Population, Electors, NumberOfPollingStations, ValidBallots, PercentageValidBallots, RejectedBallots, PercentageRejectBallots, TotalBallotsCast, VoterTurnoutPercent, ElectedCandidate)
VALUES
(
'Nunavut', 'Nunavut', 62001, 35944, 20025, 55, 9454, 99.1, 88, .9, 9542, 47.7, 'Qaqqaq'
);


select *
from elections_results;
