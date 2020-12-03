--
-- Base de données : `mediatheque`
--

CREATE DATABASE IF NOT EXISTS mediatheque

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `year` varchar(4) DEFAULT NULL,
  `note` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `title`, `year`, `note`) VALUES
(1, 'La ligne verte', '2004', '5'),
(2, 'Contact', '2000', '5'),
(3, 'La 7éme compagnie', '1987', '2'),
(4, 'Le soleil rouge', '1978', '4');
(5, 'Le soleil rouge', '1978', '1');
(6, 'Le soleil rouge', '1978', '3');

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
