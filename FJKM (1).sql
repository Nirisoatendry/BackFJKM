-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 21 jan. 2023 à 09:21
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `FJKM`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '@dm1n@dm1n');

-- --------------------------------------------------------

--
-- Structure de la table `asa`
--

CREATE TABLE `asa` (
  `id_asa` int(11) NOT NULL,
  `asa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `asa`
--

INSERT INTO `asa` (`id_asa`, `asa`) VALUES
(1, 'A.F.F'),
(2, 'K.F.T.M');

-- --------------------------------------------------------

--
-- Structure de la table `dada`
--

CREATE TABLE `dada` (
  `id_dada` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `daty` date NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `sexe` int(11) NOT NULL,
  `situation` int(11) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `faritra` int(11) NOT NULL,
  `batisa` int(11) NOT NULL,
  `mpandray` int(11) NOT NULL,
  `andraikitra` varchar(100) NOT NULL,
  `taranaka` int(11) NOT NULL,
  `sampana` int(11) NOT NULL,
  `rantsana` int(11) NOT NULL,
  `asa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fianakaviana`
--

CREATE TABLE `fianakaviana` (
  `id_fianakaviana` int(11) NOT NULL,
  `id_dada` int(11) NOT NULL,
  `id_neny` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `neny`
--

CREATE TABLE `neny` (
  `id_neny` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `daty` date NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `sexe` int(11) NOT NULL,
  `situaton` int(11) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `faritra` int(11) NOT NULL,
  `batisa` int(11) NOT NULL,
  `mpandray` int(11) NOT NULL,
  `andraikitra` varchar(100) NOT NULL,
  `taranaka` int(11) NOT NULL,
  `sampana` int(11) NOT NULL,
  `rantsana` int(11) NOT NULL,
  `asa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rantsana`
--

CREATE TABLE `rantsana` (
  `id_rantsana` int(11) NOT NULL,
  `rantsana` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rantsana`
--

INSERT INTO `rantsana` (`id_rantsana`, `rantsana`) VALUES
(1, 'V.M'),
(2, 'A.R.M.M'),
(3, 'NY SALOHY');

-- --------------------------------------------------------

--
-- Structure de la table `safidy`
--

CREATE TABLE `safidy` (
  `id_safidy` int(11) NOT NULL,
  `safidy` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `safidy`
--

INSERT INTO `safidy` (`id_safidy`, `safidy`) VALUES
(1, 'ENY'),
(2, 'TSIA');

-- --------------------------------------------------------

--
-- Structure de la table `sampana`
--

CREATE TABLE `sampana` (
  `id_sampana` int(11) NOT NULL,
  `sampana` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sampana`
--

INSERT INTO `sampana` (`id_sampana`, `sampana`) VALUES
(1, 'DORKASY'),
(2, 'S.A'),
(3, 'S.V.M'),
(4, 'S.L.K'),
(5, 'S.T.K'),
(6, 'SAFIF'),
(7, 'SAMPATI'),
(8, 'V.F.L');

-- --------------------------------------------------------

--
-- Structure de la table `taranaka`
--

CREATE TABLE `taranaka` (
  `id_taranaka` int(11) NOT NULL,
  `taranaka` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `zanaka`
--

CREATE TABLE `zanaka` (
  `id_zanaka` int(11) NOT NULL,
  `id_dada` int(11) NOT NULL,
  `id_neny` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `daty` date NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `sexe` int(11) NOT NULL,
  `situation` int(11) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `faritra` int(11) NOT NULL,
  `batisa` int(11) NOT NULL,
  `mpandray` int(11) NOT NULL,
  `andraikitra` varchar(100) NOT NULL,
  `taranaka` int(11) NOT NULL,
  `sampana` int(11) NOT NULL,
  `rantsana` int(11) NOT NULL,
  `asa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `asa`
--
ALTER TABLE `asa`
  ADD PRIMARY KEY (`id_asa`);

--
-- Index pour la table `dada`
--
ALTER TABLE `dada`
  ADD PRIMARY KEY (`id_dada`),
  ADD KEY `fk1` (`taranaka`),
  ADD KEY `fk2` (`mpandray`),
  ADD KEY `fk3` (`batisa`),
  ADD KEY `fk4` (`sampana`),
  ADD KEY `fk5` (`rantsana`),
  ADD KEY `fk6` (`asa`);

--
-- Index pour la table `fianakaviana`
--
ALTER TABLE `fianakaviana`
  ADD PRIMARY KEY (`id_fianakaviana`),
  ADD KEY `rk1` (`id_dada`),
  ADD KEY `rk2` (`id_neny`);

--
-- Index pour la table `neny`
--
ALTER TABLE `neny`
  ADD PRIMARY KEY (`id_neny`),
  ADD KEY `nk1` (`taranaka`),
  ADD KEY `nk2` (`mpandray`),
  ADD KEY `nk3` (`batisa`),
  ADD KEY `nk4` (`sampana`),
  ADD KEY `nk5` (`rantsana`),
  ADD KEY `nk6` (`asa`);

--
-- Index pour la table `rantsana`
--
ALTER TABLE `rantsana`
  ADD PRIMARY KEY (`id_rantsana`);

--
-- Index pour la table `safidy`
--
ALTER TABLE `safidy`
  ADD PRIMARY KEY (`id_safidy`);

--
-- Index pour la table `sampana`
--
ALTER TABLE `sampana`
  ADD PRIMARY KEY (`id_sampana`);

--
-- Index pour la table `taranaka`
--
ALTER TABLE `taranaka`
  ADD PRIMARY KEY (`id_taranaka`);

--
-- Index pour la table `zanaka`
--
ALTER TABLE `zanaka`
  ADD PRIMARY KEY (`id_zanaka`),
  ADD KEY `zk1` (`id_dada`),
  ADD KEY `zk2` (`id_neny`),
  ADD KEY `zk3` (`taranaka`),
  ADD KEY `zk4` (`mpandray`),
  ADD KEY `zk5` (`batisa`),
  ADD KEY `zk6` (`sampana`),
  ADD KEY `zk7` (`rantsana`),
  ADD KEY `zk8` (`asa`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `asa`
--
ALTER TABLE `asa`
  MODIFY `id_asa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dada`
--
ALTER TABLE `dada`
  MODIFY `id_dada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fianakaviana`
--
ALTER TABLE `fianakaviana`
  MODIFY `id_fianakaviana` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `neny`
--
ALTER TABLE `neny`
  MODIFY `id_neny` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rantsana`
--
ALTER TABLE `rantsana`
  MODIFY `id_rantsana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `safidy`
--
ALTER TABLE `safidy`
  MODIFY `id_safidy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sampana`
--
ALTER TABLE `sampana`
  MODIFY `id_sampana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `taranaka`
--
ALTER TABLE `taranaka`
  MODIFY `id_taranaka` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `zanaka`
--
ALTER TABLE `zanaka`
  MODIFY `id_zanaka` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `dada`
--
ALTER TABLE `dada`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`taranaka`) REFERENCES `taranaka` (`id_taranaka`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`mpandray`) REFERENCES `safidy` (`id_safidy`),
  ADD CONSTRAINT `fk3` FOREIGN KEY (`batisa`) REFERENCES `safidy` (`id_safidy`),
  ADD CONSTRAINT `fk4` FOREIGN KEY (`sampana`) REFERENCES `sampana` (`id_sampana`),
  ADD CONSTRAINT `fk5` FOREIGN KEY (`rantsana`) REFERENCES `rantsana` (`id_rantsana`),
  ADD CONSTRAINT `fk6` FOREIGN KEY (`asa`) REFERENCES `asa` (`id_asa`);

--
-- Contraintes pour la table `fianakaviana`
--
ALTER TABLE `fianakaviana`
  ADD CONSTRAINT `rk1` FOREIGN KEY (`id_dada`) REFERENCES `dada` (`id_dada`),
  ADD CONSTRAINT `rk2` FOREIGN KEY (`id_neny`) REFERENCES `neny` (`id_neny`);

--
-- Contraintes pour la table `neny`
--
ALTER TABLE `neny`
  ADD CONSTRAINT `nk1` FOREIGN KEY (`taranaka`) REFERENCES `taranaka` (`id_taranaka`),
  ADD CONSTRAINT `nk2` FOREIGN KEY (`mpandray`) REFERENCES `safidy` (`id_safidy`),
  ADD CONSTRAINT `nk3` FOREIGN KEY (`batisa`) REFERENCES `safidy` (`id_safidy`),
  ADD CONSTRAINT `nk4` FOREIGN KEY (`sampana`) REFERENCES `sampana` (`id_sampana`),
  ADD CONSTRAINT `nk5` FOREIGN KEY (`rantsana`) REFERENCES `rantsana` (`id_rantsana`),
  ADD CONSTRAINT `nk6` FOREIGN KEY (`asa`) REFERENCES `asa` (`id_asa`);

--
-- Contraintes pour la table `zanaka`
--
ALTER TABLE `zanaka`
  ADD CONSTRAINT `zk1` FOREIGN KEY (`id_dada`) REFERENCES `dada` (`id_dada`),
  ADD CONSTRAINT `zk2` FOREIGN KEY (`id_neny`) REFERENCES `neny` (`id_neny`),
  ADD CONSTRAINT `zk3` FOREIGN KEY (`taranaka`) REFERENCES `taranaka` (`id_taranaka`),
  ADD CONSTRAINT `zk4` FOREIGN KEY (`mpandray`) REFERENCES `safidy` (`id_safidy`),
  ADD CONSTRAINT `zk5` FOREIGN KEY (`batisa`) REFERENCES `safidy` (`id_safidy`),
  ADD CONSTRAINT `zk6` FOREIGN KEY (`sampana`) REFERENCES `sampana` (`id_sampana`),
  ADD CONSTRAINT `zk7` FOREIGN KEY (`rantsana`) REFERENCES `rantsana` (`id_rantsana`),
  ADD CONSTRAINT `zk8` FOREIGN KEY (`asa`) REFERENCES `asa` (`id_asa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
