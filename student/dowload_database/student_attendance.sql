-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 23 fév. 2021 à 11:46
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `student_attendance`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `iduser` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `name_profil` varchar(50) NOT NULL,
  `total_sign` int(11) NOT NULL,
  `date_class` date NOT NULL,
  `statut` int(11) NOT NULL,
  `total_absence` int(11) NOT NULL,
  `date_inscript` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`iduser`, `nom`, `email`, `mdp`, `tel`, `gender`, `name_profil`, `total_sign`, `date_class`, `statut`, `total_absence`, `date_inscript`) VALUES
(11, 'Bienvenue blanche', 'blanche@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '225 07010203', 'Mr', 'std_att6034d16981b491614074217_892', 0, '0000-00-00', 0, 1, '2021-02-23'),
(12, 'katy pery', 'katy@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '33 0501020306', 'Mlle', 'std_att6034d1adc60301614074285_810', 0, '0000-00-00', 0, 1, '2021-02-23'),
(13, 'consty hard', 'consty@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '225 01020304', 'Mr', 'std_att6034d1eb000eb1614074347_949', 1, '0000-00-00', 0, 0, '2021-02-23'),
(14, 'Monsieur', 'monsieur@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '01 0102030405', 'Mr', 'std_att6034d24520a8a1614074437_334', 0, '0000-00-00', 0, 1, '2021-02-23');

-- --------------------------------------------------------

--
-- Structure de la table `horraire`
--

CREATE TABLE `horraire` (
  `id_horraire` int(11) NOT NULL,
  `statut_cour` varchar(5) NOT NULL,
  `heure_class` time NOT NULL DEFAULT current_timestamp(),
  `date_class` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `horraire`
--

INSERT INTO `horraire` (`id_horraire`, `statut_cour`, `heure_class`, `date_class`) VALUES
(30, 'Debut', '10:51:04', '2021-02-23'),
(31, 'Fin', '11:43:25', '2021-02-23');

-- --------------------------------------------------------

--
-- Structure de la table `mouth`
--

CREATE TABLE `mouth` (
  `id_mouth` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `janvier` int(11) NOT NULL,
  `fevrier` int(11) NOT NULL,
  `mars` int(11) NOT NULL,
  `avril` int(11) NOT NULL,
  `mai` int(11) NOT NULL,
  `juin` int(11) NOT NULL,
  `jueillet` int(11) NOT NULL,
  `aout` int(11) NOT NULL,
  `septembre` int(11) NOT NULL,
  `octobre` int(11) NOT NULL,
  `novembre` int(11) NOT NULL,
  `decembre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mouth`
--

INSERT INTO `mouth` (`id_mouth`, `iduser`, `janvier`, `fevrier`, `mars`, `avril`, `mai`, `juin`, `jueillet`, `aout`, `septembre`, `octobre`, `novembre`, `decembre`) VALUES
(11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `synthese`
--

CREATE TABLE `synthese` (
  `id_synthese` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `datesign` date NOT NULL,
  `timesign` time NOT NULL,
  `date_absence` date NOT NULL,
  `statut` int(11) NOT NULL,
  `causes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `synthese`
--

INSERT INTO `synthese` (`id_synthese`, `iduser`, `datesign`, `timesign`, `date_absence`, `statut`, `causes`) VALUES
(38, 13, '2021-02-23', '11:39:23', '0000-00-00', 0, ''),
(39, 11, '0000-00-00', '00:00:00', '2021-02-23', 1, 'nom defini'),
(40, 12, '0000-00-00', '00:00:00', '2021-02-23', 1, 'nom defini'),
(41, 14, '0000-00-00', '00:00:00', '2021-02-23', 1, 'nom defini');

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` int(11) NOT NULL,
  `name_teacher` varchar(50) NOT NULL,
  `email_teacher` varchar(50) NOT NULL,
  `mdp_teacher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `name_teacher`, `email_teacher`, `mdp_teacher`) VALUES
(1, 'Administrateur', 'admin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`iduser`);

--
-- Index pour la table `horraire`
--
ALTER TABLE `horraire`
  ADD PRIMARY KEY (`id_horraire`);

--
-- Index pour la table `mouth`
--
ALTER TABLE `mouth`
  ADD PRIMARY KEY (`id_mouth`);

--
-- Index pour la table `synthese`
--
ALTER TABLE `synthese`
  ADD PRIMARY KEY (`id_synthese`);

--
-- Index pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `horraire`
--
ALTER TABLE `horraire`
  MODIFY `id_horraire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `mouth`
--
ALTER TABLE `mouth`
  MODIFY `id_mouth` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `synthese`
--
ALTER TABLE `synthese`
  MODIFY `id_synthese` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
