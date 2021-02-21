-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 21 fév. 2021 à 12:30
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
(1, 'NELSON MANDELA', 'nelson@gmail.com', '45df4696e2b4a05d8e090e40817bd998c6cf9c56', '74053194', 'Mr', 'std_att5f3c3b90c8c021597782928_145', 0, '0000-00-00', 0, 2, '2020-08-18'),
(2, 'SIRA KANTE', 'sira@gmail.com', '67b0d4f80fcb807967c37d85a13f0c56c5e2fdfe', '74053195', 'Mlle', 'std_att5f3c3c7b391491597783163_953', 5, '0000-00-00', 0, 1, '2020-08-18'),
(3, 'WILL SMITH', 'smith@gmail.com', '67b0d4f80fcb807967c37d85a13f0c56c5e2fdfe', '74053196', 'Mr', 'std_att5f3c3d1c3f5a81597783324_788', 1, '0000-00-00', 0, 2, '2020-08-18'),
(4, 'MARK', 'mark@gmail.com', '3d486f74b9975ec5b707ad03897c3d8e1f998dd9', '74053197', 'Mr', 'std_att5f3c3d674b7c21597783399_981', 4, '0000-00-00', 0, 1, '2020-08-18'),
(5, 'NICOLE', 'nicole@gmail.com', '45df4696e2b4a05d8e090e40817bd998c6cf9c56', '74053198', 'Mlle', 'std_att5f3c3de4586351597783524_311', 3, '0000-00-00', 0, 1, '2020-08-18'),
(6, 'PAUL KAGAME', 'kagame@gmail.com', '15d1d2ec03346f6b99b15bef33c6188ad222b5d6', '74053199', 'Mr', 'std_att5f3c3e1e48e0b1597783582_578', 2, '0000-00-00', 0, 2, '2020-08-18'),
(7, 'EMMA', 'emma@gmail.com', '8a1d9b464a3fd8c9e5f06af5b43005029d7c16b1', '53136858', 'Mlle', 'std_att5f3c3e87b4dbd1597783687_969', 1, '0000-00-00', 0, 3, '2020-08-18'),
(9, 'Kadafi', 'kadafi@gmail.com', '15d1d2ec03346f6b99b15bef33c6188ad222b5d6', '34053194', 'Mr', 'std_att5f3ec78a418361597949834_243', 2, '0000-00-00', 0, 1, '2020-08-20');

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
(1, 'Debut', '22:56:04', '2020-08-10'),
(2, 'Fin', '23:19:33', '2020-08-10'),
(3, 'Debut', '23:21:36', '2020-08-12'),
(4, 'Fin', '23:36:54', '2020-08-12'),
(5, 'Debut', '23:38:01', '2020-08-15'),
(6, 'Fin', '23:45:06', '2020-08-15'),
(7, 'Debut', '23:46:56', '2020-08-18'),
(8, 'Fin', '23:48:28', '2020-08-18'),
(9, 'Debut', '00:32:58', '2020-08-20'),
(10, 'Fin', '21:40:57', '2020-08-20'),
(11, 'Debut', '13:57:46', '2020-08-24'),
(12, 'Fin', '14:01:21', '2020-08-24'),
(16, 'Debut', '19:58:27', '2020-08-25'),
(19, 'Fin', '23:48:49', '2020-08-25'),
(20, 'Debut', '01:33:47', '2020-08-26'),
(21, 'Fin', '01:39:29', '2020-08-26'),
(26, 'Debut', '20:41:30', '2020-08-27'),
(27, 'Debut', '00:57:54', '2020-08-28'),
(28, 'Fin', '01:59:59', '2020-08-28');

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
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0),
(6, 6, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(7, 7, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(9, 9, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0);

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
(1, 3, '2020-08-25', '20:26:35', '0000-00-00', 0, ''),
(2, 2, '2020-08-24', '20:26:48', '0000-00-00', 0, ''),
(3, 2, '2020-05-22', '21:28:00', '0000-00-00', 0, ''),
(4, 2, '2020-08-25', '22:03:56', '0000-00-00', 0, ''),
(5, 4, '2020-08-25', '22:06:48', '0000-00-00', 0, ''),
(6, 5, '2020-08-25', '22:16:01', '0000-00-00', 0, ''),
(7, 4, '2020-08-25', '22:18:37', '0000-00-00', 0, ''),
(12, 6, '0000-00-00', '00:00:00', '2020-08-25', 1, 'MALAISE'),
(13, 7, '0000-00-00', '00:00:00', '2020-08-25', 1, 'nom defini'),
(14, 2, '2020-08-26', '01:34:39', '0000-00-00', 0, ''),
(15, 4, '2020-08-26', '01:38:20', '0000-00-00', 0, ''),
(16, 1, '0000-00-00', '00:00:00', '2020-08-26', 1, 'nom defini'),
(17, 3, '0000-00-00', '00:00:00', '2020-08-26', 1, 'nom defini'),
(18, 5, '0000-00-00', '00:00:00', '2020-08-26', 1, 'nom defini'),
(19, 6, '0000-00-00', '00:00:00', '2020-08-26', 1, 'nom defini'),
(20, 7, '0000-00-00', '00:00:00', '2020-08-26', 1, 'nom defini'),
(21, 9, '0000-00-00', '00:00:00', '2020-08-26', 1, 'nom defini'),
(22, 7, '2020-08-27', '07:19:45', '0000-00-00', 0, ''),
(23, 6, '2020-08-27', '07:22:47', '0000-00-00', 0, ''),
(24, 9, '2020-08-27', '07:29:06', '0000-00-00', 0, ''),
(25, 5, '2020-08-27', '07:30:52', '0000-00-00', 0, ''),
(27, 2, '2020-08-27', '20:47:27', '0000-00-00', 0, ''),
(28, 4, '2020-08-27', '00:53:46', '0000-00-00', 0, ''),
(29, 5, '2020-08-28', '01:54:08', '0000-00-00', 0, ''),
(30, 6, '2020-08-28', '01:54:16', '0000-00-00', 0, ''),
(31, 9, '2020-08-28', '01:54:26', '0000-00-00', 0, ''),
(32, 1, '0000-00-00', '00:00:00', '2020-08-28', 1, 'nom defini'),
(33, 2, '0000-00-00', '00:00:00', '2020-08-28', 1, 'Voyage'),
(34, 3, '0000-00-00', '00:00:00', '2020-08-28', 1, 'nom defini'),
(35, 4, '0000-00-00', '00:00:00', '2020-08-28', 1, 'nom defini'),
(36, 7, '0000-00-00', '00:00:00', '2020-08-28', 1, 'nom defini');

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
(1, 'Lassina Kone', 'admin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');

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
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `horraire`
--
ALTER TABLE `horraire`
  MODIFY `id_horraire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `mouth`
--
ALTER TABLE `mouth`
  MODIFY `id_mouth` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `synthese`
--
ALTER TABLE `synthese`
  MODIFY `id_synthese` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
