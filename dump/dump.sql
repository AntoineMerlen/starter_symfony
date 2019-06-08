-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  sam. 08 juin 2019 à 17:09
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `symfony-ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`) VALUES
(1, NULL),
(2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cart_product`
--

INSERT INTO `cart_product` (`id`, `cart_id`, `product_id`, `quantity`) VALUES
(1, 1, 256, 1),
(2, 2, 252, 1),
(3, 2, 257, 1),
(4, 2, 258, 1),
(5, 2, 258, 1),
(6, 2, 258, 1);

-- --------------------------------------------------------

--
-- Structure de la table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `collection`
--

INSERT INTO `collection` (`id`, `name`, `slug`, `picture_url`, `date_add`) VALUES
(56, 'Temporibus', 'tempor', 'https://lorempixel.com/1920/720/cats/?25202', '2019-01-27 12:21:00'),
(57, 'Unde', 'unde', 'https://lorempixel.com/1920/720/cats/?15391', '2019-01-27 12:21:14'),
(58, 'Recusandae', 'recusandae', 'https://lorempixel.com/1920/720/cats/?18849', '2019-01-27 12:21:14'),
(59, 'Impedit', 'impedit', 'https://lorempixel.com/1920/720/cats/?22338', '2019-01-27 12:21:14'),
(60, 'Rerum', 'rerum', 'https://lorempixel.com/1920/720/cats/?87636', '2019-01-27 12:21:14'),
(61, 'Rectum', 'rectummmmmm', 'https://lorempixel.com/1920/720/cats/?18849', '2019-01-27 23:46:00');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_add` datetime NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `collection_id`, `name`, `slug`, `price`, `sku`, `picture_url`, `date_add`, `stock`) VALUES
(252, 57, 'Enim', 'enim', 26, 'PRODUCT1', 'https://lorempixel.com/1920/720/cats/?60995', '2019-01-27 12:21:14', 96),
(253, 56, 'Ipsa', 'ipsa', 58, 'PRODUCT2', 'https://lorempixel.com/1920/720/cats/?90671', '2019-01-27 12:21:14', 54),
(254, 59, 'Quia', 'quia', 23, 'PRODUCT3', 'https://lorempixel.com/1920/720/cats/?94036', '2019-01-27 12:21:14', 89),
(255, 58, 'Aut', 'aut', 62, 'PRODUCT4', 'https://lorempixel.com/1920/720/cats/?80367', '2019-01-27 12:21:14', 53),
(256, 56, 'Est', 'est', 32, 'PRODUCT5', 'https://lorempixel.com/1920/720/cats/?56105', '2019-01-27 12:21:14', 75),
(257, 57, 'Ut', 'ut', 27, 'PRODUCT6', 'https://lorempixel.com/1920/720/cats/?57867', '2019-01-27 12:21:14', 83),
(258, 57, 'Nihil', 'nihil', 100, 'PRODUCT7', 'https://lorempixel.com/1920/720/cats/?52879', '2019-01-27 12:21:14', 77),
(259, 59, 'Omnis', 'omnis', 56, 'PRODUCT8', 'https://lorempixel.com/1920/720/cats/?60471', '2019-01-27 12:21:14', 51),
(260, 58, 'Optio', 'optio', 10, 'PRODUCT9', 'https://lorempixel.com/1920/720/cats/?10916', '2019-01-27 12:21:14', 34),
(261, 56, 'Repellat', 'repellat', 68, 'PRODUCT10', 'https://lorempixel.com/1920/720/cats/?55953', '2019-01-27 12:21:14', 10),
(262, 59, 'Nisi', 'nisi', 35, 'PRODUCT11', 'https://lorempixel.com/1920/720/cats/?69493', '2019-01-27 12:21:14', 59),
(263, 56, 'Et', 'et', 11, 'PRODUCT12', 'https://lorempixel.com/1920/720/cats/?28699', '2019-01-27 12:21:14', 71),
(264, 60, 'Fuga', 'fuga', 90, 'PRODUCT13', 'https://lorempixel.com/1920/720/cats/?49746', '2019-01-27 12:21:14', 52),
(265, 60, 'Quo', 'quo', 19, 'PRODUCT14', 'https://lorempixel.com/1920/720/cats/?68789', '2019-01-27 12:21:14', 83),
(266, 59, 'Deserunt', 'deserunt', 86, 'PRODUCT15', 'https://lorempixel.com/1920/720/cats/?98714', '2019-01-27 12:21:14', 85),
(267, 59, 'Est', 'est', 85, 'PRODUCT16', 'https://lorempixel.com/1920/720/cats/?65835', '2019-01-27 12:21:14', 54),
(268, 56, 'Laudantium', 'laudantium', 35, 'PRODUCT17', 'https://lorempixel.com/1920/720/cats/?22786', '2019-01-27 12:21:14', 79),
(269, 56, 'Repudiandae', 'repudiandae', 77, 'PRODUCT18', 'https://lorempixel.com/1920/720/cats/?52261', '2019-01-27 12:21:14', 87),
(270, 59, 'Maiores', 'maiores', 60, 'PRODUCT19', 'https://lorempixel.com/1920/720/cats/?53762', '2019-01-27 12:21:14', 26),
(271, 59, 'Molestias', 'molestias', 27, 'PRODUCT20', 'https://lorempixel.com/1920/720/cats/?22032', '2019-01-27 12:21:14', 79),
(272, 56, 'Dolores', 'dolores', 58, 'PRODUCT21', 'https://lorempixel.com/1920/720/cats/?71022', '2019-01-27 12:21:14', 52),
(273, 58, 'Aut', 'aut', 13, 'PRODUCT22', 'https://lorempixel.com/1920/720/cats/?57500', '2019-01-27 12:21:14', 85),
(274, 57, 'Recusandae', 'recusandae', 79, 'PRODUCT23', 'https://lorempixel.com/1920/720/cats/?51224', '2019-01-27 12:21:14', 40),
(275, 59, 'Omnis', 'omnis', 49, 'PRODUCT24', 'https://lorempixel.com/1920/720/cats/?75057', '2019-01-27 12:21:14', 90),
(276, 60, 'In', 'in', 63, 'PRODUCT25', 'https://lorempixel.com/1920/720/cats/?13934', '2019-01-27 12:21:14', 26),
(277, 57, 'Quia', 'quia', 18, 'PRODUCT26', 'https://lorempixel.com/1920/720/cats/?84186', '2019-01-27 12:21:14', 73),
(278, 58, 'Cupiditate', 'cupiditate', 47, 'PRODUCT27', 'https://lorempixel.com/1920/720/cats/?84503', '2019-01-27 12:21:14', 50),
(279, 57, 'Corporis', 'corporis', 61, 'PRODUCT28', 'https://lorempixel.com/1920/720/cats/?27238', '2019-01-27 12:21:14', 42),
(280, 56, 'Soluta', 'soluta', 26, 'PRODUCT29', 'https://lorempixel.com/1920/720/cats/?76338', '2019-01-27 12:21:14', 20),
(281, 57, 'Et', 'et', 26, 'PRODUCT30', 'https://lorempixel.com/1920/720/cats/?27488', '2019-01-27 12:21:14', 77),
(282, 56, 'Et', 'et', 11, 'PRODUCT31', 'https://lorempixel.com/1920/720/cats/?49744', '2019-01-27 12:21:14', 10),
(283, 60, 'Perferendis', 'perferendis', 56, 'PRODUCT32', 'https://lorempixel.com/1920/720/cats/?70843', '2019-01-27 12:21:14', 59),
(284, 60, 'Omnis', 'omnis', 99, 'PRODUCT33', 'https://lorempixel.com/1920/720/cats/?27935', '2019-01-27 12:21:14', 43),
(285, 58, 'Non', 'non', 34, 'PRODUCT34', 'https://lorempixel.com/1920/720/cats/?66292', '2019-01-27 12:21:14', 75),
(286, 57, 'Corrupti', 'corrupti', 56, 'PRODUCT35', 'https://lorempixel.com/1920/720/cats/?53394', '2019-01-27 12:21:14', 91),
(287, 56, 'Commodi', 'commodi', 43, 'PRODUCT36', 'https://lorempixel.com/1920/720/cats/?73485', '2019-01-27 12:21:14', 28),
(288, 58, 'Rerum', 'rerum', 75, 'PRODUCT37', 'https://lorempixel.com/1920/720/cats/?76074', '2019-01-27 12:21:14', 85),
(289, 56, 'Sed', 'sed', 100, 'PRODUCT38', 'https://lorempixel.com/1920/720/cats/?52335', '2019-01-27 12:21:14', 73),
(290, 56, 'Tempore', 'tempore', 62, 'PRODUCT39', 'https://lorempixel.com/1920/720/cats/?46222', '2019-01-27 12:21:14', 70),
(291, 57, 'Molestiae', 'molestiae', 78, 'PRODUCT40', 'https://lorempixel.com/1920/720/cats/?44675', '2019-01-27 12:21:14', 51),
(292, 57, 'Voluptatem', 'voluptatem', 23, 'PRODUCT41', 'https://lorempixel.com/1920/720/cats/?41506', '2019-01-27 12:21:14', 63),
(293, 58, 'Odio', 'odio', 96, 'PRODUCT42', 'https://lorempixel.com/1920/720/cats/?21102', '2019-01-27 12:21:14', 52),
(294, 57, 'Eligendi', 'eligendi', 73, 'PRODUCT43', 'https://lorempixel.com/1920/720/cats/?96874', '2019-01-27 12:21:14', 19),
(295, 56, 'Minus', 'minus', 28, 'PRODUCT44', 'https://lorempixel.com/1920/720/cats/?42583', '2019-01-27 12:21:14', 58),
(296, 59, 'Dolores', 'dolores', 78, 'PRODUCT45', 'https://lorempixel.com/1920/720/cats/?15419', '2019-01-27 12:21:14', 75),
(297, 56, 'Vitae', 'vitae', 29, 'PRODUCT46', 'https://lorempixel.com/1920/720/cats/?57708', '2019-01-27 12:21:14', 25),
(298, 58, 'Dignissimos', 'dignissimos', 67, 'PRODUCT47', 'https://lorempixel.com/1920/720/cats/?42067', '2019-01-27 12:21:14', 22),
(299, 60, 'Impedit', 'impedit', 31, 'PRODUCT48', 'https://lorempixel.com/1920/720/cats/?72265', '2019-01-27 12:21:14', 72),
(300, 59, 'Recusandae', 'recusandae', 39, 'PRODUCT49', 'https://lorempixel.com/1920/720/cats/?89206', '2019-01-27 12:21:14', 32),
(301, 58, 'bidule', 'bidule', 354, 'skuuuu', 'https://lorempixel.com/1920/720/cats/?90671', '2019-01-27 18:27:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `livraison_facturation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `livraison_facturation`, `username`) VALUES
(9, 'admin@admin.fr', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=1024,t=2,p=2$V3l1RWJMTmN5bWxobWRrNA$l7BHs2+PaJftAXQFXWawVRam0zNT0xQdJM75iwM1PSg', 'rue de admin', 'admin'),
(10, 'user@user.fr', '[\"ROLE_USER\"]', '$argon2i$v=19$m=1024,t=2,p=2$ZGxsQ0FPSTJSOTVkaGY0Rw$rpRGeDCN5se5jnc+mowIjhsa0OrHkkpsMj8NM3I7Ycw', 'rue de user', 'user'),
(15, 'gilou@gmail.com', '[\"ROLE_USER\"]', '$argon2i$v=19$m=1024,t=2,p=2$WGRHMmxJdENPbXg3NzJkcQ$1SQun4/mXRcLCa0qWVVMFGg7NRr77tNBBR4UbL7nKOU', 'rue des branleurs de merde', 'GilbertMontagnay'),
(19, 'tamere@tamere.com', '[\"ROLE_USER\"]', '$argon2i$v=19$m=1024,t=2,p=2$MTZKNmhYaGY5TWRUeGpvLg$Rqqkh/oSujTv5p3uAIOCJgmGpQjbg6ZnaCuyims7ZNE', 'rue des bites', 'Tamere');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BA388B7A76ED395` (`user_id`);

--
-- Index pour la table `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2890CCAA1AD5CDBF` (`cart_id`),
  ADD KEY `IDX_2890CCAA4584665A` (`product_id`);

--
-- Index pour la table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD514956FD` (`collection_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_BA388B7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `FK_2890CCAA1AD5CDBF` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `FK_2890CCAA4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD514956FD` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`);
