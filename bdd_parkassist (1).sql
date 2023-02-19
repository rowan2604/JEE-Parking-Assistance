-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 19 fév. 2023 à 22:13
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdd_parkassist`
--

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

DROP TABLE IF EXISTS `localisation`;
CREATE TABLE IF NOT EXISTS `localisation` (
  `id` int NOT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `ville_id` int NOT NULL,
  `lienPhoto` varchar(255) DEFAULT NULL,
  `parking_id` int DEFAULT NULL,
  `parking_idParking` int DEFAULT NULL,
  `ville_idVille` int DEFAULT NULL,
  `coordoneeGpsGPS` varchar(255) DEFAULT NULL,
  `xlong` float DEFAULT NULL,
  `ylat` float DEFAULT NULL,
  `coordoneeGPS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_localisation_adresse` (`adresse`),
  KEY `idx_localisation_photo` (`photo`),
  KEY `FKuiwvctes8klw3btg0at7ws4i` (`parking_idParking`),
  KEY `FK35ipcu2irj5u3wjc8c8gfux2r` (`ville_idVille`),
  KEY `FKfbhuv1b6dbv4t4e0f1daiyct6` (`parking_id`),
  KEY `FK2x3jylkfdnau53bk7xeihtgcv` (`ville_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `localisation`
--

INSERT INTO `localisation` (`id`, `adresse`, `photo`, `ville_id`, `lienPhoto`, `parking_id`, `parking_idParking`, `ville_idVille`, `coordoneeGpsGPS`, `xlong`, `ylat`, `coordoneeGPS`) VALUES
(21, 'Avenue des Nations Unies, 59170, Roubaix', 'photoParking GRAND RUE', 0, NULL, NULL, NULL, NULL, NULL, 3.17753, 50.6932, NULL),
(24, 'Avenue Carnot, 59000, Lille', 'photoParking Opera', 1, NULL, NULL, NULL, NULL, NULL, 3.06542, 50.6384, NULL),
(27, 'Boulevard dAlsace, 59000, Lille', 'photoPorte d Arras', 1, NULL, NULL, NULL, NULL, NULL, 3.06377, 50.6174, NULL),
(30, 'Place de la Republique, 59000, Lille', 'photoParking Republique', 1, NULL, NULL, NULL, NULL, NULL, 3.06323, 50.6311, NULL),
(33, 'Place du General de Gaulle, 59000, Lille', 'photoParking Grand Place', 1, NULL, NULL, NULL, NULL, NULL, 3.06357, 50.6372, NULL),
(36, 'Rue Neuve, 59170, Roubaix', 'photoParking CENTRE', 0, NULL, NULL, NULL, NULL, NULL, 3.17212, 50.6911, NULL),
(39, 'Avenue Allende, 59200, Tourcoing', 'photoParking Miss Cavell', 2, NULL, NULL, NULL, NULL, NULL, 3.16325, 50.7219, NULL),
(42, 'Avenue Nelson Mandela, 59160, Capinghem', 'photoSaint Philibert', 1, NULL, NULL, NULL, NULL, NULL, 2.97384, 50.6528, NULL),
(45, 'Rue de la Bienfaisance, 59200, Tourcoing', 'photoParking Hotel de Ville', 2, NULL, NULL, NULL, NULL, NULL, 3.15888, 50.7245, NULL),
(48, 'Place Rihour, 59000, Lille', 'photoParking Rihour-Printemps', 1, NULL, NULL, NULL, NULL, NULL, 3.06149, 50.6354, NULL),
(51, 'place Bartelemy Dorez, 59000, Lille', 'photoPorte des Postes', 1, NULL, NULL, NULL, NULL, NULL, 3.04973, 50.6175, NULL),
(54, 'Rue du president Vincent Auriol, 59170, Rouba', 'photoParking CHURCHILL', 0, NULL, NULL, NULL, NULL, NULL, 3.17911, 50.6896, NULL),
(57, 'Rue des Anges, 59200, Tourcoing', 'photoParking St Christophe', 2, NULL, NULL, NULL, NULL, NULL, 3.16114, 50.7201, NULL),
(60, '89 rue Nationale, 59000, Lille', 'photoParking Plaza', 1, NULL, NULL, NULL, NULL, NULL, 3.05829, 50.6351, NULL),
(63, '70 rue du Molinel, 59000, Lille', 'photoParking Les Tanneurs', 1, NULL, NULL, NULL, NULL, NULL, 3.06721, 50.6343, NULL),
(66, 'Rue du pont de Neuville,59200, Tourcoing', 'photoPont de Neuville', 2, NULL, NULL, NULL, NULL, NULL, 3.17271, 50.7364, NULL),
(69, '6 rue de la Riviere, 59000, Lille', 'photoParking Bethune-Lafayette', 1, NULL, NULL, NULL, NULL, NULL, 3.06398, 50.6342, NULL),
(72, '2 Avenue Henri Poincare, 59350, Villeneuve dA', 'photo4 Cantons', 3, NULL, NULL, NULL, NULL, NULL, 3.13969, 50.6048, NULL),
(75, 'Avenue Jean Baptiste Lebas, 59480, La Bassee', 'photoLa Bassee', 4, NULL, NULL, NULL, NULL, NULL, 2.80661, 50.5285, NULL),
(78, 'Facade de lEsplanade, 59000, Lille', 'photoParking Liberte', 1, NULL, NULL, NULL, NULL, NULL, 3.05083, 50.6392, NULL),
(81, 'Boulevard Eugene Duthoit, 59000, Lille', 'photoCHU – Eurasante', 1, NULL, NULL, NULL, NULL, NULL, 3.04029, 50.6079, NULL),
(84, 'Rue de Tournai, 59000, Lille', 'photoParking Gare Lille Flandres', 1, NULL, NULL, NULL, NULL, NULL, 3.07265, 50.6351, NULL),
(87, 'Quai de la Deule,59136, Sainghin en weppes', 'photoDon Sainghin', 5, NULL, NULL, NULL, NULL, NULL, 2.91382, 50.5507, NULL),
(90, 'Facade Esplanade, 59000, Lille', 'photoParking Petit Paradis', 1, NULL, NULL, NULL, NULL, NULL, 3.052, 50.6419, NULL),
(93, 'Avenue du Peuple Belge, 59000, Lille', 'photoParking Vieux Lille', 1, NULL, NULL, NULL, NULL, NULL, 3.06401, 50.6416, NULL),
(96, 'Rue de Wattiessart, 59113, Seclin', 'photoSeclin', 6, NULL, NULL, NULL, NULL, NULL, 3.03363, 50.4566, NULL),
(99, '11 Place Pierre Semard, 59200, Tourcoing', 'photoGare de Tourcoing', 2, NULL, NULL, NULL, NULL, NULL, 3.16639, 50.7167, NULL),
(102, 'Rue Charles Watteeuw, 59170, Roubaix', 'photoParking Mac Arthur Glen (Lannoy Gambetta', 0, NULL, NULL, NULL, NULL, NULL, 3.18148, 50.6906, NULL),
(105, 'Place de la Gare, 59280, Armentieres', 'photoArmentieres', 7, NULL, NULL, NULL, NULL, NULL, 2.91285, 50.5507, NULL),
(108, 'Avenue de Cologne, 59000, Lille', 'photoParking Gare Lille Europe', 1, NULL, NULL, NULL, NULL, NULL, 3.07613, 50.6399, NULL),
(111, '164 Avenue Willy Brandt, 59000, Lille', 'photoParking Euralille', 1, NULL, NULL, NULL, NULL, NULL, 3.07448, 50.6364, NULL),
(114, '19 place Mendes France,59000, Lille', 'photoParking Nouveau Siecle', 1, NULL, NULL, NULL, NULL, NULL, 3.05943, 50.6375, NULL),
(117, 'Boulevard de Turin, 59000, Lille', 'photoParking Tours', 1, NULL, NULL, NULL, NULL, NULL, 3.07668, 50.6388, NULL),
(120, 'Rue du moulin Delmar, 59650, Villeneuve dAscq', 'photoLes Pres 1', 1, NULL, NULL, NULL, NULL, NULL, 3.1262, 50.6503, NULL),
(123, 'Rue de la Halle, 59170, Roubaix', 'photoParking LA POSTE', 0, NULL, NULL, NULL, NULL, NULL, 3.17588, 50.6908, NULL),
(126, 'Boulevard des Cites Unies, 59000, Lille', 'photoParking Grand Palais', 1, NULL, NULL, NULL, NULL, NULL, 3.07859, 50.6314, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `parking`
--

DROP TABLE IF EXISTS `parking`;
CREATE TABLE IF NOT EXISTS `parking` (
  `id` int NOT NULL,
  `nameParking` varchar(255) DEFAULT NULL,
  `nbrPlace` int DEFAULT NULL,
  `prix_1h` float DEFAULT NULL,
  `estGratuit` tinyint DEFAULT NULL,
  `hauteur` int DEFAULT NULL,
  `localisation_id` int NOT NULL,
  `placeSpeciales_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `localisation_idLocalisation` int DEFAULT NULL,
  `placeSpeciales_idPlacesSpeciales` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_parking_idParking` (`id`),
  KEY `idx_parking_nameParking` (`nameParking`),
  KEY `idx_parking_nbrPlace` (`nbrPlace`),
  KEY `idx_parking_prix_1h` (`prix_1h`),
  KEY `idx_parking_estGratuit` (`estGratuit`),
  KEY `idx_parking_hauteur` (`hauteur`),
  KEY `FKkgxocur9l31120d62tuco6b7a` (`localisation_idLocalisation`),
  KEY `FKd9mjbk49p4nrvorbw1rr5rk8p` (`placeSpeciales_idPlacesSpeciales`),
  KEY `FK3f70ylvln04xklq1yppycgh82` (`localisation_id`),
  KEY `FKgh84yd309q3p3215w4dl8iw0n` (`placeSpeciales_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parking`
--

INSERT INTO `parking` (`id`, `nameParking`, `nbrPlace`, `prix_1h`, `estGratuit`, `hauteur`, `localisation_id`, `placeSpeciales_id`, `name`, `localisation_idLocalisation`, `placeSpeciales_idPlacesSpeciales`) VALUES
(20, 'Parking GRAND RUE', 1286, 1.4, 0, 215, 21, 22, NULL, NULL, NULL),
(23, 'Parking Opera', 546, 1.7, 0, 190, 24, 25, NULL, NULL, NULL),
(26, 'Porte d Arras', 100, 0, 1, 200, 27, 28, NULL, NULL, NULL),
(29, 'Parking Republique', 353, 1.4, 0, 190, 30, 31, NULL, NULL, NULL),
(32, 'Parking Grand Place', 422, 2.8, 0, 180, 33, 34, NULL, NULL, NULL),
(35, 'Parking CENTRE', 80, 1.2, 0, 500, 36, 37, NULL, NULL, NULL),
(38, 'Parking Miss Cavell', 273, 0.8, 0, 190, 39, 40, NULL, NULL, NULL),
(41, 'Saint Philibert', 311, 0, 1, 220, 42, 43, NULL, NULL, NULL),
(44, 'Parking Hotel de Ville', 434, 0.8, 0, 190, 45, 46, NULL, NULL, NULL),
(47, 'Parking Rihour-Printemps', 300, 2, 0, 220, 48, 49, NULL, NULL, NULL),
(50, 'Porte des Postes', 90, 0, 1, 200, 51, 52, NULL, NULL, NULL),
(53, 'Parking CHURCHILL', 505, 1.9, 0, 190, 54, 55, NULL, NULL, NULL),
(56, 'Parking St Christophe', 757, 0.8, 0, 190, 57, 58, NULL, NULL, NULL),
(59, 'Parking Plaza', 300, 0, 0, 190, 60, 61, NULL, NULL, NULL),
(62, 'Parking Les Tanneurs', 563, 2.8, 0, 180, 63, 64, NULL, NULL, NULL),
(65, 'Pont de Neuville', 42, 0, 1, 210, 66, 67, NULL, NULL, NULL),
(68, 'Parking Bethune-Lafayette', 595, 0, 0, 500, 69, 70, NULL, NULL, NULL),
(71, '4 Cantons', 2088, 0, 1, 200, 72, 73, NULL, NULL, NULL),
(74, 'La Bassee', 166, 0, 1, 200, 75, 76, NULL, NULL, NULL),
(77, 'Parking Liberte', 525, 1.6, 0, 500, 78, 79, NULL, NULL, NULL),
(80, 'CHU – Eurasante', 250, 0, 1, 200, 81, 82, NULL, NULL, NULL),
(83, 'Parking Gare Lille Flandres', 374, 3.1, 0, 185, 84, 85, NULL, NULL, NULL),
(86, 'Don Sainghin', 467, 0, 1, 200, 87, 88, NULL, NULL, NULL),
(89, 'Parking Petit Paradis', 293, 1.2, 0, 500, 90, 91, NULL, NULL, NULL),
(92, 'Parking Vieux Lille', 312, 2, 0, 190, 93, 94, NULL, NULL, NULL),
(95, 'Seclin', 370, 0, 1, 210, 96, 97, NULL, NULL, NULL),
(98, 'Gare de Tourcoing', 90, 0, 1, 500, 99, 100, NULL, NULL, NULL),
(101, 'Parking Mac Arthur Glen (Lannoy Gambetta)', 1261, 0, 0, 190, 102, 103, NULL, NULL, NULL),
(104, 'Armentieres', 450, 0, 1, 210, 105, 106, NULL, NULL, NULL),
(107, 'Parking Gare Lille Europe', 806, 1.9, 0, 190, 108, 109, NULL, NULL, NULL),
(110, 'Parking Euralille', 2796, 1.9, 0, 190, 111, 112, NULL, NULL, NULL),
(113, 'Parking Nouveau Siecle', 933, 1.3, 0, 230, 114, 115, NULL, NULL, NULL),
(116, 'Parking Tours', 1074, 1.9, 0, 190, 117, 118, NULL, NULL, NULL),
(119, 'Les Pres 1', 550, 0, 1, 210, 120, 121, NULL, NULL, NULL),
(122, 'Parking LA POSTE', 80, 0, 0, 500, 123, 124, NULL, NULL, NULL),
(125, 'Parking Grand Palais', 1165, 1.9, 0, 280, 126, 127, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `placespeciales`
--

DROP TABLE IF EXISTS `placespeciales`;
CREATE TABLE IF NOT EXISTS `placespeciales` (
  `nbrHandicapes` int DEFAULT NULL,
  `nbrVoitureElectrique` int DEFAULT NULL,
  `nbrCovoiturage` int NOT NULL,
  `nbrVelo` int NOT NULL,
  `parking_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `parking_idParking` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnjoyjrcf4mpp62m3dhfx20d2e` (`parking_idParking`),
  KEY `FKgfhhyi2ygiyr825m5981huou9` (`parking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `placespeciales`
--

INSERT INTO `placespeciales` (`nbrHandicapes`, `nbrVoitureElectrique`, `nbrCovoiturage`, `nbrVelo`, `parking_id`, `id`, `parking_idParking`) VALUES
(0, 4, 0, 20, NULL, 22, NULL),
(0, 3, 0, 0, NULL, 25, NULL),
(0, 0, 0, 0, NULL, 28, NULL),
(0, 3, 0, 0, NULL, 31, NULL),
(0, 0, 0, 0, NULL, 34, NULL),
(0, 0, 0, 0, NULL, 37, NULL),
(0, 3, 0, 0, NULL, 40, NULL),
(0, 12, 0, 36, NULL, 43, NULL),
(0, 3, 0, 15, NULL, 46, NULL),
(0, 0, 0, 0, NULL, 49, NULL),
(0, 0, 0, 0, NULL, 52, NULL),
(0, 0, 0, 0, NULL, 55, NULL),
(0, 3, 0, 0, NULL, 58, NULL),
(0, 0, 0, 0, NULL, 61, NULL),
(0, 0, 0, 0, NULL, 64, NULL),
(0, 0, 0, 0, NULL, 67, NULL),
(0, 0, 0, 0, NULL, 70, NULL),
(0, 12, 0, 98, NULL, 73, NULL),
(0, 0, 0, 0, NULL, 76, NULL),
(0, 0, 0, 0, NULL, 79, NULL),
(0, 0, 0, 36, NULL, 82, NULL),
(0, 0, 0, 0, NULL, 85, NULL),
(0, 0, 0, 68, NULL, 88, NULL),
(0, 0, 0, 0, NULL, 91, NULL),
(0, 0, 0, 0, NULL, 94, NULL),
(0, 0, 0, 100, NULL, 97, NULL),
(0, 0, 0, 0, NULL, 100, NULL),
(0, 4, 0, 15, NULL, 103, NULL),
(0, 0, 0, 68, NULL, 106, NULL),
(0, 3, 0, 15, NULL, 109, NULL),
(0, 6, 0, 40, NULL, 112, NULL),
(0, 0, 0, 0, NULL, 115, NULL),
(0, 3, 0, 0, NULL, 118, NULL),
(0, 0, 0, 45, NULL, 121, NULL),
(0, 0, 0, 0, NULL, 124, NULL),
(0, 3, 0, 12, NULL, 127, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `id` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `nbrParking` int DEFAULT NULL,
  `nbrPlace` int DEFAULT NULL,
  `depVille` int DEFAULT NULL,
  `regVille` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ville_idVille_nom_nbrParking_nbrPlace` (`id`,`nom`,`nbrParking`,`nbrPlace`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `nom`, `nbrParking`, `nbrPlace`, `depVille`, `regVille`, `name`, `region`) VALUES
(0, 'Roubaix', 5, 3212, 59, 'Hauts-de-France', NULL, NULL),
(1, 'Lille', 21, 12658, 59, 'Hauts-de-France', NULL, NULL),
(2, 'Tourcoing', 5, 1596, 59, 'Hauts-de-France', NULL, NULL),
(3, 'Villeneuve-dAscq', 1, 2088, 59, 'Hauts-de-France', NULL, NULL),
(4, 'La Bassée', 1, 166, 59, 'Hauts-de-France', NULL, NULL),
(5, 'Sainghin-en-Weppes', 1, 467, 59, 'Hauts-de-France', NULL, NULL),
(6, 'Seclin', 1, 370, 59, 'Hauts-de-France', NULL, NULL),
(7, 'Armentières', 1, 450, 59, 'Hauts-de-France', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
