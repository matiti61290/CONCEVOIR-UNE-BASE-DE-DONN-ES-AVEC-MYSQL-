-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 01 nov. 2024 à 17:16
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE IF NOT EXISTS `boisson` (
  `id_boisson` int NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(45) NOT NULL,
  `marqueId` varchar(45) NOT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `marqueId` (`marqueId`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `marqueId`) VALUES
(1, 'Coca-cola zéro', '1\r'),
(2, 'Coca-cola original', '1\r'),
(3, 'Fanta citron', '1\r'),
(4, 'Fanta orange', '1\r'),
(5, 'Capri-sun', '1\r'),
(6, 'Pepsi', '4\r'),
(7, 'Pepsi Max Zéro', '4\r'),
(8, 'Lipton zéro citron', '4\r'),
(9, 'Lipton Peach', '4\r'),
(10, 'Monster energy ultra gold', '3\r'),
(11, 'Monster energy ultra blue', '3\r'),
(12, 'Eau de source ', '2\r');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int NOT NULL,
  `nom_client` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `cp_client` int NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clientfocaccia`
--

DROP TABLE IF EXISTS `clientfocaccia`;
CREATE TABLE IF NOT EXISTS `clientfocaccia` (
  `clientId` int NOT NULL,
  `focacciaId` int NOT NULL,
  `jour` date DEFAULT NULL,
  KEY `clientId` (`clientId`),
  KEY `focacciaId` (`focacciaId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clientmenu`
--

DROP TABLE IF EXISTS `clientmenu`;
CREATE TABLE IF NOT EXISTS `clientmenu` (
  `clientId` int NOT NULL,
  `menuId` int NOT NULL,
  `jour` date DEFAULT NULL,
  KEY `clientId` (`clientId`),
  KEY `menuId` (`menuId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
CREATE TABLE IF NOT EXISTS `focaccia` (
  `id_focaccia` int NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix_focaccia` float NOT NULL,
  PRIMARY KEY (`id_focaccia`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

-- --------------------------------------------------------

--
-- Structure de la table `focacciaingredient`
--

DROP TABLE IF EXISTS `focacciaingredient`;
CREATE TABLE IF NOT EXISTS `focacciaingredient` (
  `focacciaId` int NOT NULL,
  `ingredientId` int NOT NULL,
  PRIMARY KEY (`focacciaId`,`ingredientId`),
  KEY `ingredientId` (`ingredientId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `focacciaingredient`
--

INSERT INTO `focacciaingredient` (`focacciaId`, `ingredientId`) VALUES
(1, 1),
(1, 3),
(1, 5),
(1, 7),
(1, 9),
(1, 13),
(1, 14),
(1, 17),
(1, 19),
(1, 21),
(2, 1),
(2, 5),
(2, 7),
(2, 9),
(2, 11),
(2, 17),
(2, 19),
(2, 21),
(3, 1),
(3, 5),
(3, 7),
(3, 9),
(3, 19),
(3, 21),
(3, 23),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(4, 16),
(4, 19),
(4, 21),
(5, 5),
(5, 7),
(5, 9),
(5, 12),
(5, 14),
(5, 17),
(5, 18),
(5, 19),
(5, 21),
(6, 2),
(6, 4),
(6, 5),
(6, 9),
(6, 14),
(6, 17),
(6, 19),
(6, 20),
(6, 21),
(7, 4),
(7, 5),
(7, 9),
(7, 14),
(7, 17),
(7, 19),
(7, 21),
(7, 22),
(8, 1),
(8, 3),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 13),
(8, 15),
(8, 17),
(8, 19),
(8, 21),
(8, 22);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail\r'),
(2, 'Ananas\r'),
(3, 'Artichaut\r'),
(4, 'Bacon\r'),
(5, 'Base Tomate\r'),
(6, 'Base crème\r'),
(7, 'Champignon\r'),
(8, 'Chevre\r'),
(9, 'Cresson\r'),
(10, 'Emmental\r'),
(11, 'Gorgonzola\r'),
(12, 'Jambon cuit\r'),
(13, 'Jambon fumé\r'),
(14, 'Oeuf\r'),
(15, 'Oignon\r'),
(16, 'Olive noire\r'),
(17, 'Olive verte\r'),
(18, 'Parmesan\r'),
(19, 'Piment\r'),
(20, 'Poivre\r'),
(21, 'Pomme de terre\r'),
(22, 'Raclette\r'),
(23, 'Salami\r'),
(24, 'Tomate cerise\r');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` int NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marque`),
  UNIQUE KEY `nom_marque` (`nom_marque`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola\r'),
(2, 'Cristalline\r'),
(3, 'Monster\r'),
(4, 'Pepsico\r');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int NOT NULL,
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` float NOT NULL,
  `boissonId` int NOT NULL,
  `focacciaId` int NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `boissonId` (`boissonId`),
  KEY `focacciaId` (`focacciaId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
