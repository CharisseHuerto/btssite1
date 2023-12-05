-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 15:00
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `id_adherent` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE big5_bin NOT NULL,
  `prenom` varchar(50) COLLATE big5_bin NOT NULL,
  `date_naissance` date NOT NULL,
  `date_adhesion` date NOT NULL,
  `adresse` varchar(50) COLLATE big5_bin NOT NULL,
  `num_tel` varchar(50) COLLATE big5_bin NOT NULL,
  `mail` varchar(50) COLLATE big5_bin NOT NULL,
  PRIMARY KEY (`id_adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=big5 COLLATE=big5_bin AUTO_INCREMENT=4 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`id_adherent`, `nom`, `prenom`, `date_naissance`, `date_adhesion`, `adresse`, `num_tel`, `mail`) VALUES
(1, 'dsfdsfdsf', 'iness', '2023-12-01', '2023-12-01', 'qsdsdsdqdqd', '123232123', 'qsdqdsqd@gmail.com'),
(2, 'dfsdfsdf', 'max', '2023-12-27', '2023-12-20', 'sdfdfddsffdfsdf', '12312313', 'sdffdssfsdfsf@gmail.com'),
(3, 'efezffzef', 'elia', '2023-12-04', '2023-12-04', 'dsqdsdsqdsqdqd', '12312313123', 'dsfdsdf@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `id_auteur` varchar(50) COLLATE big5_bin NOT NULL,
  `nom` varchar(50) COLLATE big5_bin NOT NULL,
  `prenom` varchar(50) COLLATE big5_bin NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 COLLATE=big5_bin;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`id_auteur`, `nom`, `prenom`, `date_naissance`) VALUES
('camus', 'camus', 'albert', '2004-12-02'),
('fontaine', 'de la fontaine', 'jean', '2023-12-06'),
('walter', 'walter', 'benjamin', '2023-12-07');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `date_emprunt` date NOT NULL,
  `duree` int(11) NOT NULL,
  `id_adherent` int(11) NOT NULL,
  `reference_livre` varchar(50) COLLATE big5_bin NOT NULL,
  PRIMARY KEY (`id_emprunt`),
  KEY `id_adherent` (`id_adherent`,`reference_livre`),
  KEY `reference_livre` (`reference_livre`)
) ENGINE=InnoDB  DEFAULT CHARSET=big5 COLLATE=big5_bin AUTO_INCREMENT=6 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`id_emprunt`, `date_emprunt`, `duree`, `id_adherent`, `reference_livre`) VALUES
(3, '2023-12-02', 1, 1, '31232131231'),
(4, '2023-12-23', 1, 2, '34324234324'),
(5, '2023-12-10', 2, 3, '342343423424424');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `reference_livre` varchar(50) COLLATE big5_bin NOT NULL,
  `nbre_pages` int(11) NOT NULL,
  `id_auteur` varchar(50) COLLATE big5_bin NOT NULL,
  `date_publication` date NOT NULL,
  `genre` varchar(50) COLLATE big5_bin NOT NULL,
  `disponibilite` tinyint(1) NOT NULL,
  `nbre_emprunts` int(11) NOT NULL,
  `etat` varchar(50) COLLATE big5_bin NOT NULL,
  `nbre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`reference_livre`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 COLLATE=big5_bin;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`reference_livre`, `nbre_pages`, `id_auteur`, `date_publication`, `genre`, `disponibilite`, `nbre_emprunts`, `etat`, `nbre_exemplaire`) VALUES
('31232131231', 500, 'camus', '2023-12-13', 'roman', 13, 467, 'bon etat', 234),
('342343423424424', 150, 'walter', '2000-12-22', 'essai', 12, 76, 'neuf', 15000),
('34324234324', 200, 'fontaine', '2000-12-06', 'nouvelle', 12, 200, 'mauvais etat', 100);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD CONSTRAINT `auteurs_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `livres` (`id_auteur`);

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`id_adherent`) REFERENCES `adherents` (`id_adherent`),
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`reference_livre`) REFERENCES `livres` (`reference_livre`);
