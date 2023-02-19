-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 19 fév. 2023 à 15:55
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
  `coordoneeGps` varchar(45) DEFAULT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `ville_id` int NOT NULL,
  `cooGPS` varchar(255) DEFAULT NULL,
  `lienPhoto` varchar(255) DEFAULT NULL,
  `parking_id` int DEFAULT NULL,
  `parking_idParking` int DEFAULT NULL,
  `ville_idVille` int DEFAULT NULL,
  `coordoneeGpsGPS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_localisation_coordoneeGps` (`coordoneeGps`),
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

INSERT INTO `localisation` (`id`, `coordoneeGps`, `adresse`, `photo`, `ville_id`, `cooGPS`, `lienPhoto`, `parking_id`, `parking_idParking`, `ville_idVille`, `coordoneeGpsGPS`) VALUES
(22, NULL, 'Avenue des Nations Unies, 59170, Roubaix', 'photoParking GRAND RUE', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 'Avenue Carnot, 59000, Lille', 'photoParking Opera', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'Boulevard dAlsace, 59000, Lille', 'photoPorte d Arras', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 'Place de la Republique, 59000, Lille', 'photoParking Republique', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, 'Place du General de Gaulle, 59000, Lille', 'photoParking Grand Place', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, 'Rue Neuve, 59170, Roubaix', 'photoParking CENTRE', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 'Avenue Allende, 59200, Tourcoing', 'photoParking Miss Cavell', 2, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 'Avenue Nelson Mandela, 59160, Capinghem', 'photoSaint Philibert', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, 'Rue de la Bienfaisance, 59200, Tourcoing', 'photoParking Hotel de Ville', 2, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, 'Place Rihour, 59000, Lille', 'photoParking Rihour-Printemps', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, 'place Bartelemy Dorez, 59000, Lille', 'photoPorte des Postes', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, 'Rue du president Vincent Auriol, 59170, Rouba', 'photoParking CHURCHILL', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, 'Rue des Anges, 59200, Tourcoing', 'photoParking St Christophe', 2, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, '89 rue Nationale, 59000, Lille', 'photoParking Plaza', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, '70 rue du Molinel, 59000, Lille', 'photoParking Les Tanneurs', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, 'Rue du pont de Neuville,59200, Tourcoing', 'photoPont de Neuville', 2, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, '6 rue de la Riviere, 59000, Lille', 'photoParking Bethune-Lafayette', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, '2 Avenue Henri Poincare, 59350, Villeneuve dA', 'photo4 Cantons', 3, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, 'Avenue Jean Baptiste Lebas, 59480, La Bassee', 'photoLa Bassee', 4, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, 'Facade de lEsplanade, 59000, Lille', 'photoParking Liberte', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, 'Boulevard Eugene Duthoit, 59000, Lille', 'photoCHU – Eurasante', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, 'Rue de Tournai, 59000, Lille', 'photoParking Gare Lille Flandres', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, 'Quai de la Deule,59136, Sainghin en weppes', 'photoDon Sainghin', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, 'Facade Esplanade, 59000, Lille', 'photoParking Petit Paradis', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, 'Avenue du Peuple Belge, 59000, Lille', 'photoParking Vieux Lille', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, 'Rue de Wattiessart, 59113, Seclin', 'photoSeclin', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, '11 Place Pierre Semard, 59200, Tourcoing', 'photoGare de Tourcoing', 2, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, 'Rue Charles Watteeuw, 59170, Roubaix', 'photoParking Mac Arthur Glen (Lannoy Gambetta', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, 'Place de la Gare, 59280, Armentieres', 'photoArmentieres', 7, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, 'Avenue de Cologne, 59000, Lille', 'photoParking Gare Lille Europe', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, '164 Avenue Willy Brandt, 59000, Lille', 'photoParking Euralille', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, '19 place Mendes France,59000, Lille', 'photoParking Nouveau Siecle', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, 'Boulevard de Turin, 59000, Lille', 'photoParking Tours', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, 'Rue du moulin Delmar, 59650, Villeneuve dAscq', 'photoLes Pres 1', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, 'Rue de la Halle, 59170, Roubaix', 'photoParking LA POSTE', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(127, NULL, 'Boulevard des Cites Unies, 59000, Lille', 'photoParking Grand Palais', 1, NULL, NULL, NULL, NULL, NULL, NULL);

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
  KEY `idLocalisation` (`localisation_id`),
  KEY `idPlaceSpeciales` (`placeSpeciales_id`),
  KEY `FKkgxocur9l31120d62tuco6b7a` (`localisation_idLocalisation`),
  KEY `FKd9mjbk49p4nrvorbw1rr5rk8p` (`placeSpeciales_idPlacesSpeciales`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parking`
--

INSERT INTO `parking` (`id`, `nameParking`, `nbrPlace`, `prix_1h`, `estGratuit`, `hauteur`, `localisation_id`, `placeSpeciales_id`, `name`, `localisation_idLocalisation`, `placeSpeciales_idPlacesSpeciales`) VALUES
(20, 'Parking GRAND RUE', 1286, 1.4, 0, 215, 20, 20, NULL, NULL, NULL),
(23, 'Parking Opera', 546, 1.7, 0, 190, 23, 23, NULL, NULL, NULL),
(26, 'Porte d Arras', 100, NULL, 1, 200, 26, 26, NULL, NULL, NULL),
(29, 'Parking Republique', 353, 1.4, 0, 190, 29, 29, NULL, NULL, NULL),
(32, 'Parking Grand Place', 422, 2.8, 0, 180, 32, 32, NULL, NULL, NULL),
(35, 'Parking CENTRE', 80, 1.2, 0, 500, 35, 35, NULL, NULL, NULL),
(38, 'Parking Miss Cavell', 273, 0.8, 0, 190, 38, 38, NULL, NULL, NULL),
(41, 'Saint Philibert', 311, NULL, 1, 220, 41, 41, NULL, NULL, NULL),
(44, 'Parking Hotel de Ville', 434, 0.8, 0, 190, 44, 44, NULL, NULL, NULL),
(47, 'Parking Rihour-Printemps', 300, 2, 0, 220, 47, 47, NULL, NULL, NULL),
(50, 'Porte des Postes', 90, NULL, 1, 200, 50, 50, NULL, NULL, NULL),
(53, 'Parking CHURCHILL', 505, 1.9, 0, 190, 53, 53, NULL, NULL, NULL),
(56, 'Parking St Christophe', 757, 0.8, 0, 190, 56, 56, NULL, NULL, NULL),
(59, 'Parking Plaza', 300, NULL, 0, 190, 59, 59, NULL, NULL, NULL),
(62, 'Parking Les Tanneurs', 563, 2.8, 0, 180, 62, 62, NULL, NULL, NULL),
(65, 'Pont de Neuville', 42, NULL, 1, 210, 65, 65, NULL, NULL, NULL),
(68, 'Parking Bethune-Lafayette', 595, NULL, 0, 500, 68, 68, NULL, NULL, NULL),
(71, '4 Cantons', 2088, NULL, 1, 200, 71, 71, NULL, NULL, NULL),
(74, 'La Bassee', 166, NULL, 1, 200, 74, 74, NULL, NULL, NULL),
(77, 'Parking Liberte', 525, 1.6, 0, 500, 77, 77, NULL, NULL, NULL),
(80, 'CHU – Eurasante', 250, NULL, 1, 200, 80, 80, NULL, NULL, NULL),
(83, 'Parking Gare Lille Flandres', 374, 3.1, 0, 185, 83, 83, NULL, NULL, NULL),
(86, 'Don Sainghin', 467, NULL, 1, 200, 86, 86, NULL, NULL, NULL),
(89, 'Parking Petit Paradis', 293, 1.2, 0, 500, 89, 89, NULL, NULL, NULL),
(92, 'Parking Vieux Lille', 312, 2, 0, 190, 92, 92, NULL, NULL, NULL),
(95, 'Seclin', 370, NULL, 1, 210, 95, 95, NULL, NULL, NULL),
(98, 'Gare de Tourcoing', 90, NULL, 1, 500, 98, 98, NULL, NULL, NULL),
(101, 'Parking Mac Arthur Glen (Lannoy Gambetta)', 1261, NULL, 0, 190, 101, 101, NULL, NULL, NULL),
(104, 'Armentieres', 450, NULL, 1, 210, 104, 104, NULL, NULL, NULL),
(107, 'Parking Gare Lille Europe', 806, 1.9, 0, 190, 107, 107, NULL, NULL, NULL),
(110, 'Parking Euralille', 2796, 1.9, 0, 190, 110, 110, NULL, NULL, NULL),
(113, 'Parking Nouveau Siecle', 933, 1.3, 0, 230, 113, 113, NULL, NULL, NULL),
(116, 'Parking Tours', 1074, 1.9, 0, 190, 116, 116, NULL, NULL, NULL),
(119, 'Les Pres 1', 550, NULL, 1, 210, 119, 119, NULL, NULL, NULL),
(122, 'Parking LA POSTE', 80, NULL, 0, 500, 122, 122, NULL, NULL, NULL),
(125, 'Parking Grand Palais', 1165, 1.9, 0, 280, 125, 125, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `placespeciales`
--

DROP TABLE IF EXISTS `placespeciales`;
CREATE TABLE IF NOT EXISTS `placespeciales` (
  `nbrHandicapes` int DEFAULT NULL,
  `nbrVelos` int DEFAULT NULL,
  `nbrVoitureElectrique` int DEFAULT NULL,
  `nbrConvoiturage` int DEFAULT NULL,
  `nbrCovoiturage` int NOT NULL,
  `nbrPVoiturelaceElectriques` int NOT NULL,
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

INSERT INTO `placespeciales` (`nbrHandicapes`, `nbrVelos`, `nbrVoitureElectrique`, `nbrConvoiturage`, `nbrCovoiturage`, `nbrPVoiturelaceElectriques`, `nbrVelo`, `parking_id`, `id`, `parking_idParking`) VALUES
(NULL, 20, 4, NULL, 0, 0, 0, NULL, 21, NULL),
(NULL, 0, 3, NULL, 0, 0, 0, NULL, 24, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 27, NULL),
(NULL, 0, 3, NULL, 0, 0, 0, NULL, 30, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 33, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 36, NULL),
(NULL, 0, 3, NULL, 0, 0, 0, NULL, 39, NULL),
(NULL, 36, 12, NULL, 0, 0, 0, NULL, 42, NULL),
(NULL, 15, 3, NULL, 0, 0, 0, NULL, 45, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 48, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 51, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 54, NULL),
(NULL, 0, 3, NULL, 0, 0, 0, NULL, 57, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 60, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 63, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 66, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 69, NULL),
(NULL, 98, 12, NULL, 0, 0, 0, NULL, 72, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 75, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 78, NULL),
(NULL, 36, 0, NULL, 0, 0, 0, NULL, 81, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 84, NULL),
(NULL, 68, 0, NULL, 0, 0, 0, NULL, 87, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 90, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 93, NULL),
(NULL, 100, 0, NULL, 0, 0, 0, NULL, 96, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 99, NULL),
(NULL, 15, 4, NULL, 0, 0, 0, NULL, 102, NULL),
(NULL, 68, 0, NULL, 0, 0, 0, NULL, 105, NULL),
(NULL, 15, 3, NULL, 0, 0, 0, NULL, 108, NULL),
(NULL, 40, 6, NULL, 0, 0, 0, NULL, 111, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 114, NULL),
(NULL, 0, 3, NULL, 0, 0, 0, NULL, 117, NULL),
(NULL, 45, 0, NULL, 0, 0, 0, NULL, 120, NULL),
(NULL, 0, 0, NULL, 0, 0, 0, NULL, 123, NULL),
(NULL, 12, 3, NULL, 0, 0, 0, NULL, 126, NULL);

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
