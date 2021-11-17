-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : Dim 14 mars 2021 à 17:04
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetjee`
--

-- --------------------------------------------------------

--
-- Structure de la table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `idab` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `about`
--

INSERT INTO `about` (`idab`, `image`, `designation`) VALUES
(1, 'prod1.jif', 'Avec 13,5 millions de chats domestiques en France et 7,3 millions de chiens, les entreprises se lançant dans le business autour des animaux se ');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `ida` int(11) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `datearticle` date DEFAULT NULL,
  `prix` int(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `promotion` float DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ida`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`ida`, `designation`, `details`, `url_image`, `datearticle`, `prix`, `description`, `type`, `promotion`, `id`) VALUES
(12, 'chiots POMERANIEN', 'Disponibles Magnifiques chiots POMERANIEN ( males et femelles ) importés d Ukraine ', 'spitz-nain.jpg', NULL, 2500, 'est un chien délicat qui a du caractère et rayonne de gentillesse. Il ressemble à un petit renard. Il a un poil de couverture long et dressé et un sous-poil épais, ce qui lui donne l\'air d\'une petite boule pelucheuse.', NULL, 10, NULL),
(13, 'Blaue Holicer', 'Nous avons de magnifiques jeunes lapins pure race, et pour la toute première fois au Maroc, des \"Blaue Holicer\" ou Holice.', 'BlaueWiener.jpg', NULL, 1000, 'Ce lapin de taille moyenne et très rare en élevage possède une fourrure dense et très douce ainsi qu\'une adorable tête de nounours !', NULL, 10, NULL),
(14, 'BRITISH LONG HAIR', 'Disponibles magnifiques chaton BRITISH LONG HAIR ( male et femelle ) importés d’Ukraine avec passeport et puce électronique.', 'fotolia_121128511.jpg\r\n', NULL, 2500, 'Ce sont des animaux calmes, au caractère équilibré et ils s\'avèrent parfaits pour rester en intérieur. Comme la plupart des chats, ils aiment avoir de l\'attention, un contact étroit avec leur maître et des moments réguliers de caresses et de jeux.', NULL, 10, NULL),
(15, 'Siamois', 'Les magnifiques Siamois qui sont très exigeant envers son maître et surtout qui s\'adapte à la vie d\'appartement. ', 'images.jpg', NULL, 2500, '- Yeux bleus Saphir.\r\n- Physionomie orientale. \r\n- Tête triangulaire.\r\n- Oreilles, nez et pattes plus foncés que le reste du corps.\r\n- La couleur de base peu aller de crème à gris.\r\n- Petites pâtes de forme ovale.', NULL, NULL, NULL),
(16, 'Bed Classic \"Moppy\"', 'Comfort Bed Square Classic \"Moppy\" Taille M', '61671_600x600.jpg', NULL, 700, '- Le lit confort classique \"Moppy\" est un lit douillet carré pour chien et chat qui invite votre animal à \r\n  rêver. Il est rempli de ouate et a un aspect lin à l\'extérieur et une longue microfibre douce à \r\n  l\'intérieur. Anti-dérapant assure une bonne tenue du lit. Il est lavable à la main jusqu\'à 30 ° C et \r\n  disponible en différentes tailles.\r\n- 60 x 40 x 17 cm', NULL, NULL, NULL),
(17, 'Laisse Retractable', 'Laisse Retractable Flexi New Classic S Cordon 5m', 'laisse-retractable-flexi-new-classic-s-cordon-5m-.jpg', NULL, 240, '- Laisse cordon de 5 m\r\n- Pour des chiens jusqu’à 12 kg\r\n- Système de freinage confortable\r\n- Sangle protectrice avec des composants réfléchissants\r\n- Mousqueton chromé\r\n- Adaptable au LED Lighting System\r\n- Extensible avec la Multi Box', NULL, NULL, NULL),
(18, 'Collier Cuir', 'Collier Cuir Pour Chiens 30mm Noir - Zolux', 'collier-cuir-pour-chiens-30mm-noir-zolux.jpg', NULL, 380, 'Collier Bouledogue. Chic et intemporel, ce collier fera sensation au cou de votre bouledogue. Il est en cuir qualitatif et s\'adapte aux tours de cou allant de 35 cm à 39 cm.', NULL, NULL, NULL),
(20, 'Support de Bols ', 'Support Avec 2 Bols En Inox Zolux', 'téléchargement (1).jpg', NULL, 150, 'Ce support en métal permet d\'accueillir 2 gamelles en inox de 700 ml chacun. Elles seront parfaites pour distribuer de l\'eau et de la nourriture à votre chien ou votre chat. Les gamelles sont conçues en inox. Elles sont facilement lavables. Des patins antidérapants sont placés sous le support double afin d\'assurer une bonne stabilité. Les 2 bols sont identiques.', NULL, NULL, NULL),
(21, NULL, 'Ecuelle Antidérapante Ronde 2,9L', '5ccb1f65aee4c808873322.jpeg', NULL, 100, '- Ecuelle pour chiens et chats, inox antiroutille, avec caoutchouc antidérapant - 33cm.\r\n- Cette écuelle en inox allie esthétisme et commodité. Antidérapante, elle permettra à votre chien de \r\n  manger en toute stabilité et tranquillité.', NULL, NULL, NULL),
(22, 'Royal Canin Maxi', 'Aliment complet pour chiens adultes et matures de grandes races (de 26 à 44 kg) - Plus de 15 mois - Chiens sujets aux irritations et démangeaisons de peau.', '41wFBXmDkEL._AC_.jpg', NULL, 660, 'L’irritation de la peau est l’une des principales raisons des visites chez le vétérinaire. Prenez soin de votre chien avec des nutriments de qualité supérieure, étudiés pour respecter la peau sensible de votre chien et l’aider à conserver un pelage sain et dense. Les problèmes cutanés entraînent souvent des démangeaisons excessives, qui peuvent abîmer davantage la peau de votre chien, et même causer une infection. ROYAL CANIN® Dermacomfort Maxi est soigneusement élaboré à l’aide de nutriments ac', NULL, NULL, NULL),
(23, 'Croquettes Mastery', 'Aliment complet allégé en matières grasses pour chats adultes stérilisés, peu actifs ou ayant tendance à l’embonpoint.\r\n\r\nL’aliment Mastery Chat Adulte Light Stérilisé a été formulé pour assurer le bien-être de votre compagnon tout en lui permettant de garder la ligne :\r\n\r\nUne teneur réduite en matières grasses et un respect du rationnement adapté au statut de votre chat, faciliteront le contrôle du son poids, suite à sa stérilisation et/ou sa sédentarisation.\r\n\r\nUn renforcement de la teneur en ', 'téléchargement.jpg', NULL, 160, 'Malgré le « régime allégé » de votre chat, les apports en acides gras essentiels contribueront au maintien de la brillance et beauté du pelage.\r\n\r\nUne supplémentation en argile et fructo-oligosaccharides permettra d’assurer une meilleure sécurité digestive.\r\n\r\nDes teneurs contrôlées en minéraux, notamment en magnésium, ainsi qu’une formulation adaptée pour respecter le pH urinaire physiologique de votre chat, contribueront à favoriser un système urinaire sain.\r\n\r\nCet aliment peut être distribué ', NULL, NULL, NULL),
(24, 'Foin Naturel ', 'Le foin Vadigran est un produit 100% naturel qui peut être utilisé comme fourrage pour vos rongeurs. En raison des nombreuses fibres alimentaires qu\'il contient, le foin contribue à la bonne digestion de votre rongeur.', 'foin-naturel-pour-rongeurs-30l-1kg-vadigran.jpg', NULL, 60, 'Vous pouvez également étaler un peu de foin dans la cage afin de créer un environnement chaleureux.\r\n\r\nAprès usage, jetez-le avec les déchets ménagers organiques ou dans le tas de compost.\r\n\r\nCOMPOSITION\r\n\r\nfoin\r\n\r\nCONSTITUANTS ANALYTIQUES\r\n\r\nProtéine brute 11% , Cellulose brute 29,50%', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'Accessoires'),
(2, 'Aliments'),
(3, 'Colliers'),
(4, 'Jouets'),
(5, 'Vêtements'),
(6, 'Transport');

-- --------------------------------------------------------

--
-- Structure de la table `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `idco` int(11) NOT NULL,
  `couleur` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `colorarticle`
--

DROP TABLE IF EXISTS `colorarticle`;
CREATE TABLE IF NOT EXISTS `colorarticle` (
  `ida` int(11) NOT NULL,
  `idco` int(11) NOT NULL,
  PRIMARY KEY (`ida`,`idco`),
  KEY `idco` (`idco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `lignepanier`
--

DROP TABLE IF EXISTS `lignepanier`;
CREATE TABLE IF NOT EXISTS `lignepanier` (
  `idl` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `idp` int(11) DEFAULT NULL,
  PRIMARY KEY (`idl`),
  KEY `idp` (`idp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `idp` int(11) NOT NULL,
  `date_commande` date DEFAULT NULL,
  `idu` int(11) DEFAULT NULL,
  PRIMARY KEY (`idp`),
  KEY `idu` (`idu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`idp`, `date_commande`, `idu`) VALUES
(1, '2021-03-16', 1),
(2, '2020-08-13', 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idu` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idu`, `username`, `password`, `email`, `phone`, `company`, `adress`) VALUES
(1, 'mesrar hadil', 'hadil123', 'mesrarhadil@gmail.com', '0697119994', 'Novelis', 'Al Quds'),
(2, 'hadil', '12356', 'mesrarhadil@gmail.com', '0658249753', 'SQLI', 'Al Andalous');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `colorarticle`
--
ALTER TABLE `colorarticle`
  ADD CONSTRAINT `colorarticle_ibfk_1` FOREIGN KEY (`ida`) REFERENCES `article` (`ida`),
  ADD CONSTRAINT `colorarticle_ibfk_2` FOREIGN KEY (`idco`) REFERENCES `color` (`idco`);

--
-- Contraintes pour la table `lignepanier`
--
ALTER TABLE `lignepanier`
  ADD CONSTRAINT `lignepanier_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `panier` (`idp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
