-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 25 nov. 2026 à 10:39
-- Version du serveur : 8.0.39
-- Version de PHP : 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_autoloc_v2`
--

-- --------------------------------------------------------

--
-- Structure de la table `reparations`
--

CREATE TABLE `reparations` (
  `id_reparation` int NOT NULL,
  `id_voiture` int NOT NULL,
  `date_reparation` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cout` decimal(8,2) NOT NULL,
  `id_garage` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reparations`
--

INSERT INTO `reparations` (`id_reparation`, `id_voiture`, `date_reparation`, `description`, `cout`, `id_garage`) VALUES
(1, 2, '2026-02-10', 'Remplacement des plaquettes de frein', 180.00, 2),
(2, 5, '2026-03-18', 'Vidange et changement des filtres', 120.50, 1),
(3, 3, '2026-05-05', 'Remplacement du pare-brise', 450.00, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reparations`
--
ALTER TABLE `reparations`
  ADD PRIMARY KEY (`id_reparation`),
  ADD KEY `id_voiture` (`id_voiture`),
  ADD KEY `id_garage` (`id_garage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reparations`
--
ALTER TABLE `reparations`
  MODIFY `id_reparation` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reparations`
--
ALTER TABLE `reparations`
  ADD CONSTRAINT `reparations_ibfk_1` FOREIGN KEY (`id_voiture`) REFERENCES `voitures` (`id_voiture`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `reparations_ibfk_2` FOREIGN KEY (`id_garage`) REFERENCES `nom garage` (`id_garage`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
