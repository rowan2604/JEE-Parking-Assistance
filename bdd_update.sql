CREATE TABLE `localisation` (
  `idLocalisation` int(11) NOT NULL,
  `coordoneeGps` varchar(45) DEFAULT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLocalisation`),
  KEY `idx_localisation_coordoneeGps` (`coordoneeGps`),
  KEY `idx_localisation_adresse` (`adresse`),
  KEY `idx_localisation_photo` (`photo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `parking` (
  `idParking` int(11) NOT NULL,
  `nbrPlace` int(11) DEFAULT NULL,
  `prix_1h` float DEFAULT NULL,
  `estGratuit` tinyint(4) DEFAULT NULL,
  `hauteur` int(11) DEFAULT NULL,
  PRIMARY KEY (`idParking`),
  KEY `idx_parking_idParking` (`idParking`),
  KEY `idx_parking_idParking_nbrPlace_prix_1h_estGratuit_hauteur` (`idParking`,`nbrPlace`,`prix_1h`,`estGratuit`,`hauteur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `placespeciales` (
  `idPlaceSpeciales` int(11) NOT NULL,
  `nbrHandicapes` int(11) DEFAULT NULL,
  `nbrVelos` int(11) DEFAULT NULL,
  `nbrVoitureElectrique` int(11) DEFAULT NULL,
  `nbrConvoiturage` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPlaceSpeciales`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ville` (
  `idVille` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `nbrParking` int(11) DEFAULT NULL,
  `nbrPlace` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVille`),
  KEY `idx_ville_idVille_nom_nbrParking_nbrPlace` (`idVille`,`nom`,`nbrParking`,`nbrPlace`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
