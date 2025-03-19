-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 14 mai 2022 à 23:41
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `allomyprof`
--

-- --------------------------------------------------------

--
-- Structure de la table `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `about`
--

INSERT INTO `about` (`id_about`, `title`, `text`, `lang`) VALUES
(1, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'fr'),
(2, ' مارسة التمارين الرياضية', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ar'),
(3, 'Lorem ipsum dolor sit a', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `fullname`, `email`, `password`, `level`) VALUES
(1, 'hossameelbezzari', 'hossameelbezzari@gmail.com', 'e23c7f6cb63a07dae645fdd75671ddc9', 1),
(2, 'merwan', 'marouanbenhadach@gmail.com', '1666a18ec1f89f98d8dffec860440f80', 2);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `comments` text NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `replied` int(111) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id_comment`, `id_teacher`, `comments`, `ip`, `replied`, `date`, `time`) VALUES
(1, 2, 'hh', '', NULL, '2022-05-14', '13:16:52'),
(3, 2, 'ok', '', NULL, '2022-05-14', '13:16:52'),
(4, 4, 'helo', '', 4, '2022-05-14', '13:16:52'),
(5, 4, 'hd', NULL, NULL, '2022-05-14', '13:16:52'),
(6, 4, 'yes', NULL, 4, '2022-05-14', '13:16:52'),
(7, 4, 'ok teacher', NULL, 0, '2022-05-14', '13:16:52'),
(8, 4, 'o\r\n', NULL, 4, '2022-05-14', '13:26:34'),
(9, 4, 'ok\r\n', NULL, 0, '2022-05-14', '13:28:53'),
(10, 2, 'ok\r\n', NULL, 4, '2022-05-14', '13:49:26'),
(11, 4, 'ok\r\n', NULL, 4, '2022-05-14', '13:50:11');

-- --------------------------------------------------------

--
-- Structure de la table `contacterwhatsapp`
--

CREATE TABLE `contacterwhatsapp` (
  `id_contact` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contacterwhatsapp`
--

INSERT INTO `contacterwhatsapp` (`id_contact`, `id_teacher`, `ip`, `date`) VALUES
(3, 4, '::1', '2022-04-04'),
(4, 19, '192.168.68.164', '2022-04-13'),
(5, 4, '::1', '2022-05-05'),
(6, 4, '::1', '2022-05-05'),
(7, 5, '::1', '2022-05-05'),
(8, 4, '::1', '2022-05-05'),
(9, 4, '::1', '2022-05-05'),
(10, 4, '::1', '2022-05-05'),
(11, 2, '::1', '2022-05-05'),
(12, 2, '::1', '2022-05-05'),
(14, 4, '::1', '2022-05-14'),
(15, 4, '::1', '2022-05-14'),
(16, 4, '::1', '2022-05-14');

-- --------------------------------------------------------

--
-- Structure de la table `cookies`
--

CREATE TABLE `cookies` (
  `id_cookies` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `lang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cookies`
--

INSERT INTO `cookies` (`id_cookies`, `title`, `text`, `date`, `time`, `lang`) VALUES
(0, 'cookies', '<h2>Comment cr&eacute;er un bandeau cookie conforme au RGPD ?</h2>\r\n<p>&nbsp;</p>\r\n<p>Bien s&ucirc;r, de votre point de vue, les cookies sont essentiels pour offrir la meilleure qualit&eacute; de service &agrave; vos utilisateurs (personalisation de pages, enregistrement de panier d\'achat,&nbsp;<a href=\"https://www.didomi.io/fr/blog/geolocalisation-comment-collecter-un-consentement-pour-des-donnees-des-fins-marketing\" rel=\"noopener\">adaptation &agrave; la g&eacute;olocalisation des utilisateurs</a>...). L&rsquo;utilisateur lui, les voit plut&ocirc;t comme des traceurs qui vont stocker ses informations personnelles, souvent sans son consentement.</p>\r\n<p>&nbsp;</p>\r\n<p>Forte de ce constat, l&rsquo;UE a donc mis en place&nbsp;<a href=\"https://blog.didomi.io/fr/gdpr-consentement-methodes\" rel=\"noopener\">le fameux RGPD en 2018</a>, obligeant de fait l&rsquo;ensemble des sites internet qui font usage des cookies &agrave; demander au pr&eacute;alable l&rsquo;autorisation de ses utilisateurs avant de r&eacute;cup&eacute;rer et de stocker leurs donn&eacute;es.</p>\r\n<p>&nbsp;</p>\r\n<p>De plus, en octobre 2020, la&nbsp;<a href=\"https://www.cnil.fr/fr/cookies-et-autres-traceurs-la-cnil-publie-des-lignes-directrices-modificatives-et-sa-recommandation\">CNIL</a>&nbsp;a publi&eacute;&nbsp;<a href=\"https://blog.didomi.io/fr/recommandations-cnil\">ses recommandations</a>&nbsp;d&eacute;finitives concernant l&rsquo;usage des&nbsp;<a href=\"https://support.didomi.io/fr/les-cookies-didomi\">cookies</a>&nbsp;et des traceurs avec une date limite fix&eacute;e &agrave; fin mars 2021.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Nous vous rappelons les principales&nbsp;recommandations de la&nbsp;<a href=\"https://www.cnil.fr/fr/cookies-et-autres-traceurs-la-cnil-publie-des-lignes-directrices-modificatives-et-sa-recommandation\">CNIL</a>&nbsp;sur les cookies :</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li aria-level=\"1\">\r\n<p>Le refus des cookies/tra&ccedil;eurs doit &ecirc;tre aussi simple que leur acceptation: une option &ldquo;Refuser tout&rdquo; doit exister sur le premier niveau de l&rsquo;avis de consentement ;</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li aria-level=\"1\">\r\n<p>Les visiteurs doivent clairement &ecirc;tre inform&eacute;s des finalit&eacute;s des traceurs avant de consentir ainsi que de l&rsquo;identit&eacute; de tous les acteurs utilisant des traceurs soumis au consentement ;</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li aria-level=\"1\">\r\n<p>La poursuite de la navigation sur un site ne peut plus &ecirc;tre consid&eacute;r&eacute;e comme une expression valide du consentement de l&rsquo;internaute ;</p>\r\n</li>\r\n<li aria-level=\"1\">\r\n<p>Les utilisateurs devront &ecirc;tre en mesure de retirer leur consentement, facilement, et &agrave; tout moment ;</p>\r\n</li>\r\n<li aria-level=\"1\">\r\n<p>L&rsquo;&eacute;diteur du site doit &ecirc;tre en mesure de fournir la preuve du consentement &agrave; tout moment.</p>\r\n</li>\r\n</ul>\r\n<p>Ainsi, que ce soit sous la forme d&rsquo;un bandeau cookies, d&rsquo;une fen&ecirc;tre pleine ou d&rsquo;une notification dans le coin de l&rsquo;&eacute;cran, il est essentiel de demander &agrave; vos utilisateurs leur consentement aux cookies. Ils pourront alors accepter, refuser ou red&eacute;finir leurs pr&eacute;f&eacute;rences quant &agrave; l&rsquo;utilisation que vous en faites.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span id=\"hs-cta-wrapper-6e170eab-a1ef-4fd1-b8a7-332d29229cfe\" class=\"hs-cta-wrapper\"><span id=\"hs-cta-6e170eab-a1ef-4fd1-b8a7-332d29229cfe\" class=\"hs-cta-node hs-cta-6e170eab-a1ef-4fd1-b8a7-332d29229cfe\" data-hs-drop=\"true\"><a id=\"cta_button_7560723_84e8ebba-0c34-47a1-b712-209ff73a7d75\" class=\"cta_button \" title=\"D&eacute;couvrir Didomi pour la Conformit&eacute;\" href=\"https://blog.didomi.io/cs/c/?cta_guid=84e8ebba-0c34-47a1-b712-209ff73a7d75&amp;signature=AAH58kGCVHUoRx-eg7P4tD2QlO-Do1q0QA&amp;pageId=32099556271&amp;placement_guid=6e170eab-a1ef-4fd1-b8a7-332d29229cfe&amp;click=d72dbded-c23e-4f98-a71c-7c0e590ca8ff&amp;hsutk=&amp;canon=https%3A%2F%2Fblog.didomi.io%2Ffr%2Fexemples-bandeaux-cookies-conformes-rgpd&amp;portal_id=7560723&amp;redirect_url=APefjpHfZdcvaXJhvlSnYnalqVkkrXoAsiFAsOcz2yebD0dqJWxz9PgmC_SltCtfFFFGy-HfWfYsjaOLep3JgGsxet8khQf0drJJlcCTUYTPEbsqV9ZEbcnoQRjAwHlP5M3LYBqf4jJp\">D&eacute;couvrir Didomi pour la Conformit&eacute;</a></span></span></p>\r\n<p>&nbsp;</p>\r\n<h2>Pourquoi travailler sur le design de votre banni&egrave;re cookies ?</h2>\r\n<p>&nbsp;</p>\r\n<p class=\"caption\">Voil&agrave; le&nbsp;<a href=\"https://blog.didomi.io/fr/recommandations-cnil-taux-de-consentement\" rel=\"noopener\">contexte juridique</a>, mais une banni&egrave;re de cookie ne se limite pas &agrave; une</p>\r\n<p data-pm-slice=\"1 1 []\">politique de cookies exemple.&nbsp;</p>\r\n<p class=\"caption\">&nbsp;</p>\r\n<p class=\"caption\">Transformer une exigence l&eacute;gale en marketing innovant vous permettra d\'am&eacute;liorer l\'exp&eacute;rience utilisateur, d\'augmenter votre taux de consentement et, au final, de g&eacute;n&eacute;rer des revenus.</p>\r\n<h3 class=\"caption\"><br />1) Am&eacute;liorer l\'UX :</h3>\r\n<p class=\"caption\">Votre banni&egrave;re de consentement est essentiellement la porte d\'entr&eacute;e de votre site ou application, et votre premi&egrave;re impression. Vous avez probablement pass&eacute; d\'innombrables heures &agrave; discuter de l\'image de marque de votre site. Alors, pourquoi ne pas ajouter de l\'image de marque &agrave; votre bandeau cookies ? La personnalit&eacute; de la marque attire le regard et augmente l\'interaction avec l\'utilisateur.</p>\r\n<h3 class=\"caption\">&nbsp;</h3>\r\n<h3 class=\"caption\">2) Augmenter les taux de consentement :</h3>\r\n<p class=\"caption\">Une interaction accrue se traduit par&nbsp;<a href=\"https://blog.didomi.io/fr/taux-de-consentement-x-4-1-mois\" rel=\"noopener\">un consentement accru</a>. De nombreuses entreprises craignent qu\'une notice explicative de grande taille dissuade les utilisateurs de donner leur consentement. En r&eacute;alit&eacute;, c\'est le contraire ! Si votre message de consentement est bien pens&eacute;, il n\'y a aucune raison pour que l\'utilisateur ne vous donne pas son consentement.<br /><br />Si les utilisateurs comprennent ce &agrave; quoi ils consentent et re&ccedil;oivent des messages cookies clairs, ils sont plus susceptibles de donner leur consentement. En fin de compte, c\'est une question de confiance, et&nbsp;<a href=\"https://www.cisco.com/c/dam/en/us/products/collateral/security/cybersecurity-series-2019-cps.pdf\" target=\"_blank\" rel=\"noopener\">une &eacute;tude r&eacute;cente de CISCO</a>&nbsp;a r&eacute;v&eacute;l&eacute; que 48 % des utilisateurs interrog&eacute;s ont d&eacute;j&agrave; chang&eacute; d\'entreprise ou de fournisseur &agrave; cause de leur politique de confidentialit&eacute;.<br /><br /></p>\r\n<h3 class=\"caption\">3) G&eacute;n&eacute;rer des revenus :</h3>\r\n<p class=\"caption\">Si vos utilisateurs ont un choix et une explication clairs et qu\'ils consentent librement parce qu\'ils aiment votre design ou les valeurs de votre marque, cela signifie qu\'ils vous font confiance. Ensuite, ils sont plus susceptibles de partager leurs donn&eacute;es avec vous, d\'interagir avec vos pubs, de passer plus de temps sur votre site ou de pr&ecirc;ter plus d\'attention &agrave; vos offres.<br /><br />En d&eacute;finitive, une banni&egrave;re de cookies claire, bien pens&eacute;e et cr&eacute;ative renforcera la confiance des utilisateurs et augmentera le retour sur investissement marketing.</p>\r\n<p>&nbsp;</p>\r\n<p>Avec Didomi, vous pouvez&nbsp;<a href=\"https://blog.didomi.io/fr/consent-preference-management\">param&eacute;trer et personnaliser la collecte du consentement</a>&nbsp;tr&egrave;s simplement, sur web &amp; mobile. Vous voulez en savoir plus ?&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span id=\"hs-cta-wrapper-9dd6f60d-de60-43c1-ad61-00488d98908e\" class=\"hs-cta-wrapper\"><span id=\"hs-cta-9dd6f60d-de60-43c1-ad61-00488d98908e\" class=\"hs-cta-node hs-cta-9dd6f60d-de60-43c1-ad61-00488d98908e\" data-hs-drop=\"true\"><a id=\"cta_button_7560723_3ad4f87e-bdf5-4c73-afa2-4025e7aecc58\" class=\"cta_button \" title=\"D&eacute;couvrir la CMP\" href=\"https://blog.didomi.io/cs/c/?cta_guid=3ad4f87e-bdf5-4c73-afa2-4025e7aecc58&amp;signature=AAH58kHSl1RrFojWwSyJAmHc3vKDKirQvA&amp;pageId=32099556271&amp;placement_guid=9dd6f60d-de60-43c1-ad61-00488d98908e&amp;click=269c61e7-2209-484d-b148-fe294e4e547d&amp;hsutk=&amp;canon=https%3A%2F%2Fblog.didomi.io%2Ffr%2Fexemples-bandeaux-cookies-conformes-rgpd&amp;portal_id=7560723&amp;redirect_url=APefjpHSNGveORQCC3MTxGU7Rv4dwoMHmbVi8g2rxeQUo8Qe18VP3YIH8rDiUNacbAfReaPHRJ4WyDCNAdzggmWwoYXthMK4A9eQEw6ntw1lwhcAG5LcixrGx1kMk-64Q-paTP8mOfUONKR3eVEuLGDnHH1gDLDlkQ\">D&eacute;couvrir la CMP</a></span></span></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>10 exemples de banni&egrave;res de collecte de consentement aux cookies</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Certains sites internet ont pris le parti de ne pas faire comme tout le monde. Bon nombre d&rsquo;entre eux ont bien compris l&rsquo;importance de la conformit&eacute; cookies pour cr&eacute;er de la transparence et un attachement certain &agrave; leur marque vis-&agrave;-vis des utilisateurs. Didomi a fait une petite liste pour que vous puissiez vous en inspirer... Allez, c&rsquo;est cadeau !</p>\r\n<p>&nbsp;</p>\r\n<h3>1 - Saint-Christophe assurances</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-44-52-png.png\" alt=\"exemple bandeau cookie + Saint-Christophe assurances\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Les banni&egrave;res de consentement peuvent &ecirc;tre &agrave; la fois conformes et personnalis&eacute;es ! La banni&egrave;re de Saint-Christophe assurances est&nbsp;<em>user-friendly</em>&nbsp;et facile &agrave; comprendre. Le texte cookies explique&nbsp;dans un langage clair comment les donn&eacute;es seront utilis&eacute;es et offrent une option claire de \"refus\". L\'image de l\'homme rappelle que Saint-Christophe priorise son utilisateur.</p>\r\n<p>&nbsp;</p>\r\n<h3>2 - Elle France</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2013-57-29-png.png\" alt=\"exemple bandeau cookie + Elle France\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Elle France fait rimer cr&eacute;ativit&eacute; avec simplicit&eacute;.</p>\r\n<p><br />Elle France se concentre sur un sch&eacute;ma de couleurs minimaliste : noir et blanc, avec des clins d\'&oelig;il &agrave; leur rose embl&eacute;matique. Claire, sophistiqu&eacute;e et avec le titre de la notification cookies affirmatif \"Elle respecte votre vie priv&eacute;e\", Elle prouve que les banni&egrave;res de cookies n\'ont pas besoin d\'&ecirc;tre r&eacute;volutionnaires pour &ecirc;tre performantes.</p>\r\n<p>&nbsp;</p>\r\n<h3>3 - Luko</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2013-59-36-png.png\" alt=\"exemple bandeau cookie + Luko\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Une attention particuli&egrave;re aux d&eacute;tails est ce qui distingue le bandeau cookies de Luko.<br /><br />Cette entreprise fran&ccedil;aise d\'assurance habitation int&egrave;gre parfaitement son image de marque, en consid&eacute;rant attentivement la couleur et le style. La cerise sur le g&acirc;teau ? L\'ic&ocirc;ne du cookie en haut de la banni&egrave;re, dans le bleu de Luko, bien s&ucirc;r ! Qui pourrait r&eacute;sister &agrave; l\'envie de consentir &agrave; une banni&egrave;re aussi m&eacute;ticuleusement con&ccedil;ue et r&eacute;alis&eacute;e ?</p>\r\n<h3>&nbsp;</h3>\r\n<h3>4 - Waze</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-13-03-png.png\" alt=\"exemple bandeau cookie + Waze\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Bien que la banni&egrave;re cookies de Waze soit assez imposante, elle reste agr&eacute;able &agrave; l&rsquo;oeil. Sans doute gr&acirc;ce &agrave; l&rsquo;image qui y a &eacute;t&eacute; int&eacute;gr&eacute;e. D&rsquo;ailleurs, avez-vous rep&eacute;r&eacute; le logo de la marque qui est venu remplacer les cookies dans l&rsquo;assiette ?</p>\r\n<p>&nbsp;</p>\r\n<p>En plus, m&ecirc;me s\'il y a une diff&eacute;rence de couleur des boutons, le refus est possible d&egrave;s le premier niveau. Bravo !</p>\r\n<p>&nbsp;</p>\r\n<h3>5 - Orange</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-16-59-png.png\" alt=\"exemple bandeau cookie + Orange\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Orange a opt&eacute; pour une banni&egrave;re simple, mais efficace. Elle garantit la conformit&eacute; CNIL gr&acirc;ce &agrave; l\'option \"continuer sans accepter\", et un message cookies d&eacute;taill&eacute;. Orange&nbsp;ajoute de l\'image de marque gr&acirc;ce &agrave; l\'ajout intelligent d\'orange.</p>\r\n<p>&nbsp;</p>\r\n<h3>6 - Le Slip Fran&ccedil;ais</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-20-16-png.png\" alt=\"exemple bandeau cookie + Le Slip Fran&ccedil;ais\" /></p>\r\n<p>&nbsp;</p>\r\n<p>100% pour la personnalisation ! Ici le cookie (en slip) est anim&eacute;. Le Slip Fran&ccedil;ais lui a &eacute;galement donn&eacute; du relief en ajoutant une ombre autour du bandeau. Une belle id&eacute;e pour rendre sa banni&egrave;re cookies plus visible sans la rendre trop imposante pour autant.</p>\r\n<p>&nbsp;</p>\r\n<p>Gr&acirc;ce &agrave; trois boutons, \"accepter\", \"refuser\" et \"personnaliser\", Le Slip Fran&ccedil;ais prouve que la conformit&eacute; &agrave; la CNIL ne signifie pas qu\'il faille sacrifier la personnalisation.</p>\r\n<p>&nbsp;</p>\r\n<h3>7 - Burger King</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-05-40-png.png\" alt=\"exemple bandeau cookie + Burger King\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Entre la taille de la banni&egrave;re qui est volontairement plus &eacute;troite, la couleur rouge du bouton et le dessin du cookie, l&rsquo;oeil de l&rsquo;utilisateur est directement attir&eacute; vers elle. Les cookies de statistiques et de publicit&eacute; sont d&eacute;sactiv&eacute;s par d&eacute;faut (un bon point pour Burger King), donc la marque a tout int&eacute;r&ecirc;t &agrave; faire cliquer ses visiteurs sur \"Tout accepter\". En m&ecirc;me temps, il est impossible de refuser.</p>\r\n<p>&nbsp;</p>\r\n<h3>8 - BNP Paribas</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-09-48-png.png\" alt=\"exemple bandeau cookie + BNP Paribas\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Contenu p&eacute;dagogique, visuel design et actuel, choix de la couleur en accord avec la charte graphique de BNP Paribas, tels sont les points forts de cette notification cookies. De plus, avec le lien \"continuer sans accepter\", BNP Paribas assure la conformit&eacute; CNIL.</p>\r\n<p>&nbsp;</p>\r\n<p>En termes de param&eacute;trage &eacute;galement, la banque d\'un monde qui change respecte les utilisateurs, puisque toutes les finalit&eacute;s d\'usage des cookies sont d&eacute;coch&eacute;es par d&eacute;faut. Vous pourrez dons facilement refuser.</p>\r\n<p>&nbsp;</p>\r\n<h3>9 - Giphy Arcade</h3>\r\n<p><br /><img src=\"https://blog.didomi.io/hubfs/GIPHY%20ARCADE-png.png\" alt=\"exemple bandeau cookie + Giphy\" /><br />Si des prix pouvaient &ecirc;tre gagn&eacute;s pour l\'int&eacute;gration d\'une marque dans votre banni&egrave;re de cookie, Giphy Arcade l\'emporte.<br /><br />Le premier niveau adopte un format de bas de page, dans un d&eacute;grad&eacute; de bleu &eacute;lectrique et de violet qui attire l\'attention de l\'utilisateur et encourage l\'interaction. Les deuxi&egrave;me et troisi&egrave;me niveaux sont au format pop-in, avec un fond noir qui s\'int&egrave;gre parfaitement au design du site, et des touches de couleur, le tout dans un d&eacute;grad&eacute; de bon go&ucirc;t qui s\'accorde avec le logo de la marque.<br /><br />Nous vous avions promis que les banni&egrave;res de cookies pouvaient aussi &ecirc;tre amusantes, et Giphy Arcade en est le parfait exemple.</p>\r\n<p>&nbsp;</p>\r\n<h3>10 - Didomi&nbsp;</h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-24-07-png.png\" alt=\"exemple bandeau cookie + Didomi\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Vous pensiez que nous avions oubli&eacute; la banni&egrave;re Didomi ? En octobre dernier, nous avons enti&egrave;rement revu la conception de notre banni&egrave;re de cookies. Nous avons opt&eacute; pour un format pop-in et avons pleinement int&eacute;gr&eacute; notre image de marque et notre design, en ajoutant m&ecirc;me un GIF anim&eacute; pour capter l\'attention de l\'utilisateur. En outre, les textes expliquent &agrave; nos utilisateurs en termes clairs et simples ce &agrave; quoi ils consentent exactement.</p>\r\n<p>&nbsp;</p>\r\n<p>En faisant cela, nous avons&nbsp;<a href=\"https://blog.didomi.io/fr/taux-de-consentement-x-4-1-mois\" rel=\"noopener\">quadrupl&eacute; notre taux de consentement en moins d\'un mois.</a></p>\r\n<p>&nbsp;</p>\r\n<h2>Comment cr&eacute;er votre bandeau cookies sur mesure ?</h2>\r\n<p>&nbsp;</p>\r\n<p>Vous vous sentez inspir&eacute; ? Nous serions ravis de discuter de la mani&egrave;re dont nous pouvons vous aider &agrave; cr&eacute;er une banni&egrave;re de cookies sur mesure. La conformit&eacute; est la premi&egrave;re &eacute;tape, mais la cr&eacute;ativit&eacute; est&nbsp;<a href=\"https://blog.didomi.io/fr/consentement-contrainte-opportunite\" rel=\"noopener\">la valeur ajout&eacute;e</a>&nbsp;qui permettra &agrave; votre marque de se d&eacute;marquer.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous vous sentez un peu perdu ? Ou vous ne savez pas quel format conviendrait le mieux &agrave; votre marque ?</p>\r\n<p>&nbsp;</p>\r\n<p>Nous avons la r&eacute;ponse pour cela aussi.&nbsp;<a href=\"https://www.didomi.io/fr/produits/consent-management-platform\" rel=\"noopener\">La solution Didomi</a>&nbsp;vous permet d\'effectuer des tests AB pour voir quel type de banni&egrave;re de cookie obtient le taux de consentement le plus &eacute;lev&eacute; pour votre site. Nous sommes en mesure de tester le format, le message, l\'UX et le design pour s\'assurer que vous obtenez le taux de consentement le plus &eacute;lev&eacute; possible.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-37-09-png.png\" /></p>\r\n<p>&nbsp;</p>\r\n<div class=\"caption\">\r\n<p>En bref : les avis de consentement valent la peine. C\'est important, tant pour l\'efficacit&eacute; de votre&nbsp;<a href=\"https://www.didomi.io/fr/solutions/marketing\" rel=\"noopener\">marketing digital</a>&nbsp;que pour l\'exp&eacute;rience que vous offrez &agrave; vos utilisateurs. La transparence cr&eacute;e la confiance, ce qui aura un impact significatif sur votre image de marque et vos revenus !</p>\r\n</div>', '2022-03-24', '00:00:00', 'fr'),
(0, 'cookies', '<h2><span>How to create a GDPR compliant cookie banner?</span></h2>\r\n<p>&nbsp;</p>\r\n<p><span>Of course, from your point of view, cookies are essential to offer the best quality of service to your users (personalization of pages, recording of shopping carts,&nbsp;</span><a href=\"https://www.didomi.io/fr/blog/geolocalisation-comment-collecter-un-consentement-pour-des-donnees-des-fins-marketing\" rel=\"noopener\"><span>adaptation to the geolocation of users,</span></a><span>&nbsp;etc.).&nbsp;The user sees them rather as tracers who will store his personal information, often without his consent.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>On the strength of this observation, the EU therefore implemented&nbsp;</span><a href=\"https://blog.didomi.io/fr/gdpr-consentement-methodes\" rel=\"noopener\"><span>the famous GDPR in 2018</span></a><span>&nbsp;, effectively obliging all websites that use cookies to request the prior authorization of its users before recovering and storing their data.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>In addition, in October 2020, the&nbsp;</span><a href=\"https://www.cnil.fr/fr/cookies-et-autres-traceurs-la-cnil-publie-des-lignes-directrices-modificatives-et-sa-recommandation\"><span>CNIL</span></a><span>&nbsp;published&nbsp;</span><a href=\"https://blog.didomi.io/fr/recommandations-cnil\"><span>its final recommendations</span></a><span>&nbsp;&nbsp;concerning the use of&nbsp;&nbsp;</span><a href=\"https://support.didomi.io/fr/les-cookies-didomi\"><span>cookies</span></a><span>&nbsp;&nbsp;and tracers with a deadline set at the end of March 2021.&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>We remind you of the main recommendations of the&nbsp;<a href=\"https://www.cnil.fr/fr/cookies-et-autres-traceurs-la-cnil-publie-des-lignes-directrices-modificatives-et-sa-recommandation\">CNIL</a>&nbsp;on cookies:</span>&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li aria-level=\"1\">\r\n<p><span>Refusing cookies/trackers should be as simple as accepting them: a &ldquo;Refuse All&rdquo; option should exist on the first level of the consent notice;</span></p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li aria-level=\"1\">\r\n<p><span>Visitors must be clearly informed of the purposes of the tracers before consenting as well as of the identity of all the actors using tracers subject to consent;</span></p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li aria-level=\"1\">\r\n<p><span>Continued navigation on a site can no longer be considered a valid expression of the user\'s consent;</span></p>\r\n</li>\r\n<li aria-level=\"1\">\r\n<p><span>Users should be able to withdraw their consent easily and at any time;</span></p>\r\n</li>\r\n<li aria-level=\"1\">\r\n<p><span>The site editor must be able to provide proof of consent at any time.</span></p>\r\n</li>\r\n</ul>\r\n<p><span>So, whether in the form of a cookie banner, a full window or a notification in the corner of the screen, it is essential to ask your users for their consent to cookies.&nbsp;They will then be able to accept, refuse or redefine their preferences as to the use you make of them.&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span id=\"hs-cta-wrapper-6e170eab-a1ef-4fd1-b8a7-332d29229cfe\" class=\"hs-cta-wrapper\"><span id=\"hs-cta-6e170eab-a1ef-4fd1-b8a7-332d29229cfe\" class=\"hs-cta-node hs-cta-6e170eab-a1ef-4fd1-b8a7-332d29229cfe\" data-hs-drop=\"true\"><a id=\"cta_button_7560723_84e8ebba-0c34-47a1-b712-209ff73a7d75\" class=\"cta_button \" title=\"Discover Didomi for Compliance\" href=\"https://blog.didomi.io/cs/c/?cta_guid=84e8ebba-0c34-47a1-b712-209ff73a7d75&amp;signature=AAH58kGCVHUoRx-eg7P4tD2QlO-Do1q0QA&amp;pageId=32099556271&amp;placement_guid=6e170eab-a1ef-4fd1-b8a7-332d29229cfe&amp;click=d72dbded-c23e-4f98-a71c-7c0e590ca8ff&amp;hsutk=&amp;canon=https%3A%2F%2Fblog.didomi.io%2Ffr%2Fexemples-bandeaux-cookies-conformes-rgpd&amp;portal_id=7560723&amp;redirect_url=APefjpHfZdcvaXJhvlSnYnalqVkkrXoAsiFAsOcz2yebD0dqJWxz9PgmC_SltCtfFFFGy-HfWfYsjaOLep3JgGsxet8khQf0drJJlcCTUYTPEbsqV9ZEbcnoQRjAwHlP5M3LYBqf4jJp\"><span>Discover Didomi for Compliance</span></a></span></span></p>\r\n<p>&nbsp;</p>\r\n<h2><span>Why work on the design of your cookie banner?</span></h2>\r\n<p>&nbsp;</p>\r\n<p class=\"caption\"><span>That\'s the&nbsp;</span><a href=\"https://blog.didomi.io/fr/recommandations-cnil-taux-de-consentement\" rel=\"noopener\"><span>legal background</span></a><span>&nbsp;, but a cookie banner is more than just a</span></p>\r\n<p data-pm-slice=\"1 1 []\"><span>sample cookie policy.&nbsp;</span></p>\r\n<p class=\"caption\">&nbsp;</p>\r\n<p class=\"caption\"><span>Turning a legal requirement into innovative marketing will allow you to improve user experience, increase your consent rate and ultimately generate revenue.</span></p>\r\n<h3 class=\"caption\"><br /><span>1) Improve UX:</span></h3>\r\n<p class=\"caption\"><span>Your consent banner is essentially the front door to your site or app, and your first impression.&nbsp;You\'ve probably spent countless hours discussing your site\'s branding.&nbsp;So why not add some branding to your cookie banner?&nbsp;Brand personality catches the eye and increases interaction with the user.</span></p>\r\n<h3 class=\"caption\">&nbsp;</h3>\r\n<h3 class=\"caption\"><span>2) Increase consent rates:</span></h3>\r\n<p class=\"caption\"><span>Increased interaction translates to&nbsp;</span><a href=\"https://blog.didomi.io/fr/taux-de-consentement-x-4-1-mois\" rel=\"noopener\"><span>increased consent</span></a><span>&nbsp;.&nbsp;Many companies fear that a large explanatory notice will deter users from giving their consent.&nbsp;In fact, it\'s the opposite!&nbsp;If your consent message is well thought out, there is no reason for the user not to give you consent.</span><br /><br /><span>If users understand what they are consenting to and receive clear cookie messages, they are more likely to consent.&nbsp;Ultimately, it\'s a matter of trust, and&nbsp;</span><a href=\"https://www.cisco.com/c/dam/en/us/products/collateral/security/cybersecurity-series-2019-cps.pdf\" target=\"_blank\" rel=\"noopener\"><span>a recent CISCO</span></a><span>&nbsp;study found that 48% of users surveyed have already switched companies or providers because of their privacy policies.</span><br /><br /></p>\r\n<h3 class=\"caption\"><span>3) Generate income:</span></h3>\r\n<p class=\"caption\"><span>If your users have a clear choice and explanation, and they consent freely because they like your design or your brand values, that means they trust you.&nbsp;Then they are more likely to share their data with you, interact with your ads, spend more time on your site, or pay more attention to your offers.</span><br /><br /><span>Ultimately, a clear, well-thought-out, and creative cookie banner will build user trust and increase marketing ROI.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>With Didomi, you can&nbsp;</span><a href=\"https://blog.didomi.io/fr/consent-preference-management\"><span>configure and personalize the collection of consent</span></a><span>&nbsp;very simply, on web &amp; mobile.&nbsp;You want to know more ?&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span id=\"hs-cta-wrapper-9dd6f60d-de60-43c1-ad61-00488d98908e\" class=\"hs-cta-wrapper\"><span id=\"hs-cta-9dd6f60d-de60-43c1-ad61-00488d98908e\" class=\"hs-cta-node hs-cta-9dd6f60d-de60-43c1-ad61-00488d98908e\" data-hs-drop=\"true\"><a id=\"cta_button_7560723_3ad4f87e-bdf5-4c73-afa2-4025e7aecc58\" class=\"cta_button \" title=\"Discover the CMP\" href=\"https://blog.didomi.io/cs/c/?cta_guid=3ad4f87e-bdf5-4c73-afa2-4025e7aecc58&amp;signature=AAH58kHSl1RrFojWwSyJAmHc3vKDKirQvA&amp;pageId=32099556271&amp;placement_guid=9dd6f60d-de60-43c1-ad61-00488d98908e&amp;click=269c61e7-2209-484d-b148-fe294e4e547d&amp;hsutk=&amp;canon=https%3A%2F%2Fblog.didomi.io%2Ffr%2Fexemples-bandeaux-cookies-conformes-rgpd&amp;portal_id=7560723&amp;redirect_url=APefjpHSNGveORQCC3MTxGU7Rv4dwoMHmbVi8g2rxeQUo8Qe18VP3YIH8rDiUNacbAfReaPHRJ4WyDCNAdzggmWwoYXthMK4A9eQEw6ntw1lwhcAG5LcixrGx1kMk-64Q-paTP8mOfUONKR3eVEuLGDnHH1gDLDlkQ\"><span>Discover the CMP</span></a></span></span></p>\r\n<p>&nbsp;</p>\r\n<h2><strong><span>10 examples of cookie consent collection banners</span></strong></h2>\r\n<p>&nbsp;</p>\r\n<p><span>Some websites have decided not to do like everyone else.&nbsp;Many of them have understood the importance of cookie compliance to create transparency and a certain attachment to their brand vis-&agrave;-vis users.&nbsp;Didomi has made a little list so that you can inspire yourself... Come on, it\'s a gift!</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>1 - Saint-Christophe insurance</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-44-52-png.png\" alt=\"example cookie banner + Saint-Christophe insurance\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>Consent banners can be both compliant and personalized!&nbsp;The banner of Saint-Christophe assurances is&nbsp;</span><em><span>user-friendly</span></em><span>&nbsp;and easy to understand.&nbsp;The cookie text explains in plain language how the data will be used and provides a clear \'opt-out\' option.&nbsp;The image of the man reminds us that Saint-Christophe prioritizes its user.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>2 - Elle France</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2013-57-29-png.png\" alt=\"example cookie banner + Elle France\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>Elle France rhymes creativity with simplicity.</span></p>\r\n<p><br /><span>Elle France focuses on a minimalist color scheme: black and white, with nods to their signature rose.&nbsp;Clear, sophisticated and with the affirmative cookie notice title \"It respects your privacy\", it proves that cookie banners don\'t have to be revolutionary to be successful.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>3 - Luke</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2013-59-36-png.png\" alt=\"example cookie banner + Luko\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>Careful attention to detail is what sets Luko\'s Cookies Headband apart.</span><br /><br /><span>This French home insurance company integrates its brand image perfectly, carefully considering color and style.&nbsp;The icing on the cake ?&nbsp;The cookie icon at the top of the banner, in Luko\'s blue, of course!&nbsp;Who could resist the urge to consent to such a meticulously designed and crafted banner?</span></p>\r\n<h3>&nbsp;</h3>\r\n<h3><span>4-Waze</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-13-03-png.png\" alt=\"example cookie banner + Waze\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>Although Waze\'s cookies banner is quite imposing, it\'s still pleasing to the eye.&nbsp;No doubt thanks to the image that has been integrated into it.&nbsp;By the way, have you spotted the logo of the brand that has replaced the cookies on the plate?</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>In addition, even if there is a difference in the color of the buttons, refusal is possible from the first level.&nbsp;Well done !</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>5 - Orange</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-16-59-png.png\" alt=\"example cookie banner + Orange\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>Orange opted for a simple but effective banner.&nbsp;It guarantees CNIL compliance thanks to the \"continue without accepting\" option, and a detailed cookie message.&nbsp;Orange adds branding through the smart addition of orange.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>6 - The French Slip</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-20-16-png.png\" alt=\"example cookie headband + Le Slip Fran&ccedil;ais\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>100% for customization!&nbsp;Here the cookie (in underwear) is animated.&nbsp;Le Slip Fran&ccedil;ais also gave it relief by adding a shadow around the headband.&nbsp;A great idea to make your cookie banner more visible without making it too imposing.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>Thanks to three buttons, \"accept\", \"refuse\" and \"personalize\", Le Slip Fran&ccedil;ais proves that compliance with the CNIL does not mean that you have to sacrifice personalization.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>7 - Burger King</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-05-40-png.png\" alt=\"example cookie banner + Burger King\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>Between the size of the banner which is deliberately narrower, the red color of the button and the design of the cookie, the user\'s eye is directly drawn to it.&nbsp;Statistics and advertising cookies are disabled by default (a good point for Burger King), so the brand has every interest in making its visitors click on \"Accept all\".&nbsp;At the same time, it is impossible to refuse.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>8 - BNP Paribas</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-09-48-png.png\" alt=\"example cookie banner + BNP Paribas\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>Educational content, visual design and current, choice of color in accordance with the graphic charter of BNP Paribas, these are the strengths of this cookie notification.&nbsp;In addition, with the \"continue without accepting\" link, BNP Paribas ensures CNIL compliance.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>Also in terms of configuration, the bank for a changing world respects users, since all the purposes for the use of cookies are unchecked by default.&nbsp;You can easily refuse donations.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>9 - Giphy Arcade</span></h3>\r\n<p><br /><img src=\"https://blog.didomi.io/hubfs/GIPHY%20ARCADE-png.png\" alt=\"example cookie banner + Giphy\" /><br /><span>If any prizes could be won for incorporating a brand into your cookie banner, Giphy Arcade wins.</span><br /><br /><span>The first level adopts a footer format, in an electric blue and purple gradient that grabs the user\'s attention and encourages interaction.&nbsp;The second and third levels are in pop-in format, with a black background that fits perfectly with the design of the site, and touches of color, all in a tasteful gradient that matches the brand logo .</span><br /><br /><span>We promised you cookie banners could be fun too, and Giphy Arcade is the perfect example.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span>10 - Didomi&nbsp;</span></h3>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-24-07-png.png\" alt=\"example cookie banner + Didomi\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span>Did you think we forgot the Didomi banner?&nbsp;Last October, we completely redesigned our cookie banner.&nbsp;We opted for a pop-in format and fully integrated our branding and design, even adding an animated GIF to capture the user\'s attention.&nbsp;In addition, the texts explain to our users in clear and simple terms what exactly they consent to.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>By doing this, we&nbsp;</span><a href=\"https://blog.didomi.io/fr/taux-de-consentement-x-4-1-mois\" rel=\"noopener\"><span>quadrupled our consent rate in less than a month.</span></a></p>\r\n<p>&nbsp;</p>\r\n<h2><span>How to create your custom cookie banner?</span></h2>\r\n<p>&nbsp;</p>\r\n<p><span>Do you feel inspired?&nbsp;We would love to discuss how we can help you create a bespoke cookie banner.&nbsp;Compliance is the first step, but creativity is&nbsp;</span><a href=\"https://blog.didomi.io/fr/consentement-contrainte-opportunite\" rel=\"noopener\"><span>the added value</span></a><span>&nbsp;that will make your brand stand out.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>Do you feel a little lost?&nbsp;Or you don\'t know which format would suit your brand best?</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>We have the answer for that too.&nbsp;</span><a href=\"https://www.didomi.io/fr/produits/consent-management-platform\" rel=\"noopener\"><span>The Didomi solution</span></a><span>&nbsp;allows you to perform AB tests to see which type of cookie banner gets the highest consent rate for your site.&nbsp;We are able to test the format, message, UX and design to ensure you get the highest possible consent rate.</span></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://blog.didomi.io/hubfs/Capture%20d%E2%80%99e%CC%81cran%202021-09-16%20a%CC%80%2014-37-09-png.png\" /></p>\r\n<p>&nbsp;</p>\r\n<div class=\"caption\">\r\n<p><span>In short: consent notices are worth the effort.&nbsp;This is important, both for the effectiveness of your&nbsp;</span><a href=\"https://www.didomi.io/fr/solutions/marketing\" rel=\"noopener\"><span>digital marketing</span></a><span>&nbsp;and for the experience you offer to your users.&nbsp;Transparency creates trust, which will have a significant impact on your brand image and your income!</span></p>\r\n</div>', '2022-03-24', '00:00:00', 'en'),
(0, 'cookies', 'كيفية إنشاء لافتة ملفات تعريف الارتباط متوافقة مع اللائحة العامة لحماية البيانات؟\r\n \r\n\r\nبالطبع ، من وجهة نظرك ، تعتبر ملفات تعريف الارتباط ضرورية لتقديم أفضل جودة من الخدمة لمستخدميك (تخصيص الصفحات ، وتسجيل عربات التسوق ، والتكيف مع تحديد الموقع الجغرافي للمستخدمين ، وما إلى ذلك). يراهم المستخدم بالأحرى على أنهم متتبعون يقومون بتخزين معلوماته الشخصية ، غالبًا دون موافقته.\r\n\r\n \r\n\r\nبناءً على قوة هذه الملاحظة ، طبق الاتحاد الأوروبي اللائحة العامة لحماية البيانات (GDPR) الشهيرة في عام 2018 ، مما ألزم بشكل فعال جميع مواقع الويب التي تستخدم ملفات تعريف الارتباط بطلب إذن مستخدميها أولاً قبل استعادة بياناتهم وتخزينها.\r\n\r\n \r\n\r\nبالإضافة إلى ذلك ، في أكتوبر 2020 ، نشرت CNIL توصياتها النهائية  بشأن استخدام  ملفات تعريف الارتباط  والمتتبعات مع الموعد النهائي المحدد في نهاية مارس 2021. \r\n\r\n \r\n\r\nنذكرك بالتوصيات الرئيسية لـ CNIL بشأن ملفات تعريف الارتباط:  \r\n\r\n \r\n\r\nيجب أن يكون رفض ملفات تعريف الارتباط / أدوات التتبع بسيطًا مثل قبولها: يجب أن يكون خيار \"رفض الكل\" موجودًا في المستوى الأول من إشعار الموافقة ؛\r\n\r\nيجب إبلاغ الزائرين بوضوح بأغراض أدوات التتبع قبل الموافقة وكذلك بهوية جميع الجهات الفاعلة التي تستخدم أدوات التتبع الخاضعة للموافقة ؛\r\n\r\nلم يعد من الممكن اعتبار التنقل المستمر على موقع ما تعبيراً صالحاً عن موافقة المستخدم ؛\r\n\r\nيجب أن يكون المستخدمون قادرين على سحب موافقتهم بسهولة وفي أي وقت ؛\r\n\r\nيجب أن يكون محرر الموقع قادرًا على تقديم دليل على الموافقة في أي وقت.\r\n\r\nلذلك ، سواء في شكل لافتة ملفات تعريف الارتباط أو نافذة كاملة أو إشعار في زاوية الشاشة ، من الضروري أن تطلب من المستخدمين موافقتهم على ملفات تعريف الارتباط. سيتمكنون بعد ذلك من قبول تفضيلاتهم أو رفضها أو إعادة تحديدها فيما يتعلق باستخدامك لها. \r\n\r\n \r\n\r\nاكتشف ديدومي للامتثال\r\n \r\n\r\nلماذا تعمل على تصميم لافتة ملفات تعريف الارتباط الخاصة بك؟\r\n \r\n\r\nهذه هي الخلفية القانونية ، لكن لافتة ملفات تعريف الارتباط هي أكثر من مجرد ملف\r\n\r\nنموذج لسياسة ملفات تعريف الارتباط. \r\n\r\n \r\n\r\nسيسمح لك تحويل المتطلبات القانونية إلى تسويق مبتكر بتحسين تجربة المستخدم وزيادة معدل موافقتك وتحقيق إيرادات في النهاية.\r\n\r\n\r\n1) تحسين تجربة المستخدم:\r\nشعار موافقتك هو في الأساس الباب الأمامي لموقعك أو تطبيقك ، وانطباعك الأول. ربما تكون قد أمضيت ساعات لا تحصى في مناقشة العلامة التجارية لموقعك. فلماذا لا تضيف بعض العلامات التجارية إلى لافتة ملفات تعريف الارتباط الخاصة بك؟ تلفت شخصية العلامة التجارية الأنظار وتزيد من التفاعل مع المستخدم.\r\n\r\n \r\n2) زيادة معدلات الموافقة:\r\nزيادة التفاعل يترجم إلى زيادة الموافقة . تخشى العديد من الشركات من أن الإشعار التوضيحي الكبير سوف يمنع المستخدمين من إعطاء موافقتهم. في الحقيقة ، العكس هو الصحيح! إذا كانت رسالة الموافقة الخاصة بك مدروسة جيدًا ، فلا يوجد سبب يمنع المستخدم من منحك موافقتك.\r\n\r\nإذا فهم المستخدمون ما يوافقون عليه وتلقوا رسائل ملفات تعريف ارتباط واضحة ، فمن المرجح أن يوافقوا. في النهاية ، إنها مسألة ثقة ، ووجدت دراسة حديثة لـ CISCO أن 48 ٪ من المستخدمين الذين شملهم الاستطلاع قد قاموا بالفعل بتبديل الشركات أو مقدمي الخدمات بسبب سياسات الخصوصية الخاصة بهم.\r\n\r\n\r\n3) توليد الدخل:\r\nإذا كان لدى المستخدمين خيار وشرح واضح ، ووافقوا بحرية لأنهم يحبون تصميمك أو قيم علامتك التجارية ، فهذا يعني أنهم يثقون بك. بعد ذلك ، من المرجح أن يشاركوا بياناتهم معك ، أو يتفاعلون مع إعلاناتك ، أو يقضون وقتًا أطول على موقعك ، أو يولون المزيد من الاهتمام لعروضك.\r\n\r\nفي النهاية ، ستعمل لافتة ملفات تعريف الارتباط الواضحة والمدروسة جيدًا والمبتكرة على بناء ثقة المستخدم وزيادة عائد الاستثمار التسويقي.\r\n\r\n \r\n\r\nمع Didomi ، يمكنك تكوين وتخصيص مجموعة الموافقة بكل بساطة ، على الويب والجوال. أتريد معرفة المزيد ؟ \r\n\r\n \r\n\r\nاكتشف CMP\r\n \r\n\r\n10 أمثلة على لافتات الموافقة على جمع ملفات تعريف الارتباط\r\n \r\n\r\nقررت بعض المواقع ألا تفعل مثل أي شخص آخر. لقد فهم الكثير منهم أهمية الامتثال لملفات تعريف الارتباط لخلق الشفافية وإرفاق معين بعلامتهم التجارية تجاه المستخدمين. أعدت ديدومي قائمة صغيرة حتى تتمكن من إلهام نفسك ... هيا ، إنها هدية!\r\n\r\n \r\n\r\n1 - تأمين سانت كريستوف\r\n \r\n\r\nمثال لافتة ملف تعريف الارتباط + تأمين Saint-Christophe\r\n\r\n \r\n\r\nيمكن أن تكون لافتات الموافقة متوافقة ومخصصة! لافتة تأكيدات Saint-Christophe سهلة الاستخدام وسهلة الفهم. يشرح نص ملف تعريف الارتباط بلغة بسيطة كيفية استخدام البيانات ويوفر خيار \"إلغاء الاشتراك\" الواضح. تذكرنا صورة الرجل بأن القديس كريستوف يعطي الأولوية لمستخدمها.\r\n\r\n \r\n\r\n2 - إيل فرانس\r\n \r\n\r\nمثال لافتة ملف تعريف الارتباط + Elle France\r\n\r\n \r\n\r\nElle France قوافي الإبداع مع البساطة.\r\n\r\n\r\nيركز Elle France على مخطط ألوان بسيط: أبيض وأسود ، مع إيماءات إلى وردة توقيعهم. واضح ومتطور ومع عنوان إشعار ملف تعريف الارتباط الإيجابي \"إنه يحترم خصوصيتك\" ، فإنه يثبت أن لافتات ملفات تعريف الارتباط لا يجب أن تكون ثورية حتى تنجح.\r\n\r\n \r\n\r\n3 - لوقا\r\n \r\n\r\nمثال لافتة ملف تعريف الارتباط + Luko\r\n\r\n \r\n\r\nالاهتمام الدقيق بالتفاصيل هو ما يميز Luko\'s Cookies Headband.\r\n\r\nتدمج شركة التأمين على المنازل الفرنسية صورة علامتها التجارية بشكل مثالي ، مع مراعاة اللون والأسلوب بعناية. الكرزة على الحلوى ؟ رمز ملف تعريف الارتباط أعلى اللافتة باللون الأزرق بالطبع! من يستطيع مقاومة الرغبة في الموافقة على مثل هذه اللافتة المصممة والمصنوعة بدقة؟\r\n\r\n \r\n4-ويز\r\n \r\n\r\nمثال لافتة ملفات تعريف الارتباط + Waze\r\n\r\n \r\n\r\nعلى الرغم من أن لافتة Waze الخاصة بملفات تعريف الارتباط مهيبة للغاية ، إلا أنها لا تزال ترضي العين. لا شك بفضل الصورة التي تم دمجها فيها. بالمناسبة ، هل اكتشفت شعار العلامة التجارية التي حلت محل ملفات تعريف الارتباط على اللوحة؟\r\n\r\n \r\n\r\nبالإضافة إلى ذلك ، حتى لو كان هناك اختلاف في لون الأزرار ، فإن الرفض ممكن من المستوى الأول. أتقنه !\r\n\r\n \r\n\r\n5 - برتقالي\r\n \r\n\r\nمثال لافتة ملفات تعريف الارتباط + برتقالي\r\n\r\n \r\n\r\nاختار Orange لافتة بسيطة ولكنها فعالة. تضمن امتثال CNIL بفضل خيار \"المتابعة بدون قبول\" ورسالة ملف تعريف الارتباط التفصيلية. تضيف Orange العلامة التجارية من خلال الإضافة الذكية للبرتقالي.\r\n\r\n \r\n\r\n6 - الانزلاق الفرنسي\r\n \r\n\r\nمثال عقال ملف تعريف الارتباط + Le Slip Français\r\n\r\n \r\n\r\n100٪ للتخصيص! هنا يتم تحريك ملف تعريف الارتباط (في الملابس الداخلية). كما أعطتها Le Slip Français الراحة من خلال إضافة ظل حول عقال. فكرة رائعة لجعل لافتة ملفات تعريف الارتباط أكثر وضوحًا دون أن تجعلها شديدة الإبهار.\r\n\r\n \r\n\r\nبفضل ثلاثة أزرار ، \"قبول\" و \"رفض\" و \"تخصيص\" ، تثبت Le Slip Français أن الامتثال لـ CNIL لا يعني أنه يتعين عليك التضحية بالتخصيص.\r\n\r\n \r\n\r\n7- برجر كنج\r\n \r\n\r\nمثال لافتة ملفات تعريف الارتباط + برجر كنج\r\n\r\n \r\n\r\nبين حجم اللافتة الأضيق عمدًا واللون الأحمر للزر وتصميم ملف تعريف الارتباط ، تنجذب عين المستخدم إليه مباشرةً. يتم تعطيل ملفات تعريف الارتباط للإحصاءات والإعلانات افتراضيًا (نقطة جيدة لـ Burger King) ، لذلك فإن العلامة التجارية لها كل الاهتمام بجعل زوارها ينقرون على \"قبول الكل\". في الوقت نفسه ، من المستحيل الرفض.\r\n\r\n \r\n\r\n8 - بي إن بي باريبا\r\n \r\n\r\nمثال لافتة ملف تعريف الارتباط + BNP Paribas\r\n\r\n \r\n\r\nالمحتوى التعليمي والتصميم المرئي والحالي واختيار اللون وفقًا لميثاق الرسوم البيانية لـ BNP Paribas ، هذه هي نقاط القوة في إشعار ملفات تعريف الارتباط هذا. بالإضافة إلى ذلك ، مع رابط \"متابعة بدون قبول\" ، يضمن بنك BNP Paribas امتثال CNIL.\r\n\r\n \r\n\r\nأيضًا من حيث التكوين ، يحترم البنك للعالم المتغير المستخدمين ، نظرًا لأن جميع أغراض استخدام ملفات تعريف الارتباط غير محددة بشكل افتراضي. يمكنك بسهولة رفض التبرعات.\r\n\r\n \r\n\r\n9 - Giphy Arcade\r\n\r\nمثال لافتة ملفات تعريف الارتباط + Giphy\r\nإذا كان من الممكن الفوز بأي جوائز لدمج علامة تجارية في لافتة ملفات تعريف الارتباط ، فستفوز Giphy Arcade.\r\n\r\nيتبنى المستوى الأول تنسيق تذييل ، بتدرج لوني أزرق وأرجواني كهربائي يجذب انتباه المستخدم ويشجع على التفاعل. المستويان الثاني والثالث في شكل منبثق ، مع خلفية سوداء تتناسب تمامًا مع تصميم الموقع ، ولمسات من اللون ، وكل ذلك بتدرج حسن الذوق يطابق شعار العلامة التجارية.\r\n\r\nلقد وعدنا أن تكون لافتات ملفات تعريف الارتباط ممتعة أيضًا ، وجيفي آركيد هو المثال المثالي.\r\n\r\n \r\n\r\n10 - ديدومي \r\n \r\n\r\nمثال لافتة ملفات تعريف الارتباط + ديدومي\r\n\r\n \r\n\r\nهل تعتقد أننا نسينا لافتة ديدومي؟ في أكتوبر الماضي ، قمنا بإعادة تصميم لافتة ملفات تعريف الارتباط الخاصة بنا بالكامل. اخترنا تنسيقًا منبثقًا ودمجنا علامتنا التجارية وتصميمنا بالكامل ، حتى أضفنا صورة GIF متحركة لجذب انتباه المستخدم. بالإضافة إلى ذلك ، تشرح النصوص لمستخدمينا بعبارات واضحة وبسيطة ما يوافقون عليه بالضبط.\r\n\r\n \r\n\r\nمن خلال القيام بذلك ، ضاعفنا معدل موافقتنا أربع مرات في أقل من شهر.\r\n\r\n \r\n\r\nكيف تصنع لافتة ملفات تعريف الارتباط المخصصة الخاصة بك؟\r\n \r\n\r\nهل تشعر بالإلهام؟ نود مناقشة كيف يمكننا مساعدتك في إنشاء لافتة مخصصة لملفات تعريف الارتباط. الامتثال هو الخطوة الأولى ، لكن الإبداع هو القيمة المضافة التي ستجعل علامتك التجارية مميزة.\r\n\r\n \r\n\r\nهل تشعر بالضياع قليلا؟ أو أنك لا تعرف الشكل الذي يناسب علامتك التجارية بشكل أفضل؟\r\n\r\n \r\n\r\nلدينا الجواب لذلك أيضا. يتيح لك حل Didomi إجراء اختبارات AB لمعرفة نوع لافتة ملفات تعريف الارتباط التي تحصل على أعلى معدل موافقة لموقعك. نحن قادرون على اختبار التنسيق والرسالة وتجربة المستخدم والتصميم لضمان حصولك على أعلى معدل موافقة ممكن.\r\n\r\n \r\n\r\n\r\n\r\n \r\n\r\nباختصار: إشعارات الموافقة تستحق الجهد المبذول. هذا مهم ، لكل من فعالية التسويق الرقمي الخاص بك وللتجربة التي تقدمها لمستخدميك. الشفافية تخلق الثقة ، والتي سيكون لها تأثير كبير على صورة علامتك التجارية ودخلك!', '2022-03-24', '00:00:00', 'ar');

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id_country` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `src` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id_country`, `country`, `src`) VALUES
(1, 'Morocco', 'Morocco.png');

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `id_admin` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `faq`
--

INSERT INTO `faq` (`id_faq`, `page`, `title`, `text`, `date`, `time`, `id_admin`, `lang`) VALUES
(1, 1, 'LIMITATION DE RESPONSABILITÉ', 'TRANSMISSION DE DONNÉES\nAlloprof ne transmet ni ne vend aucune des données d\'utilisateur qu\'il recueille lui-même, ni au public ni à quelque tiers que ce soit.\nAlloprof transmettra des renseignements aux autorités lorsque cela est prescrit par la loi, notamment afin de prévenir un acte de violence, lorsqu’il existe un motif raisonnable de croire qu’un danger imminent de mort ou de blessure grave menace une personne, ou un groupe de personnes identifiables ou lors de situations mettant en danger la vie, la santé ou la sécurité de la personne concernée.\n\n\nAlloprof contribue à la recherche universitaire et se réserve le droit, à cette fin et dans le cadre strict d\'études soumises à une certification éthique dûment adoptée par l\'autorité universitaire compétente, de donner accès à ses données aux chercheurs soumis à cette certification éthique. Veuillez noter qu\'aucune donnée transmise ne permet d\'identifier un utilisateur ou de communiquer avec lui, à moins qu\'Alloprof ait obtenu l\'autorisation de la part de l\'utilisateur concerné ou de la personne majeure qui en a la charge.\n\n\nCOLLECTE DE DONNÉES DANS LES SERVICES EN LIGNE\nAlloprof recueille des données sur les utilisateurs et leur comportement sur ses plateformes, à des fins d\'analyse, d\'optimisation et d\'amélioration de ses services. Ces données comprennent notamment des renseignements sur le système d\'exploitation et le type d\'appareil utilisés, le fournisseur Internet, la durée des sessions de l\'utilisateur, ainsi que ses interactions avec les différentes composantes des plateformes Alloprof. Aucune de ces informations ne permet d\'identifier l\'utilisateur.\nAlloprof se réserve le droit d\'utiliser des fichiers témoins (cookies) à des fins d\'optimisation et d\'amélioration de ses services ainsi que de ses activités promotionnelles. Les cookies peuvent provenir de sources extérieures à Alloprof, telles que, mais sans s’y limiter : Google, Facebook ou YouTube.\nSur certaines de ses plateformes, Alloprof demande à l\'utilisateur l\'un ou plusieurs de ces renseignements : Pseudonyme; Mois et année de naissance; Adresse courriel; Mot de passe; Genre; Année scolaire; Province, ville et nom de l’école fréquentée; Statut de l’utilisateur (Parent; Élève; Élève adulte; Enseignant). Ces renseignements servent à des fins statistiques, notamment pour guider Alloprof dans l’amélioration de ses services.\n\nESPACES PUBLICS\nSur certaines des plateformes Alloprof, par exemple les Forums, l\'utilisateur a la possibilité de divulguer des renseignements personnels visibles par les autres utilisateurs. Dans ses Conditions d\'utilisation, Alloprof interdit expressément la divulgation d\'information qui permettraient d\'identifier ou de communiquer avec un utilisateur à l\'extérieur des plateformes Alloprof. L\'utilisateur est seul responsable du non-respect des Conditions d\'utilisation des services Alloprof. Alloprof se réserve le droit d\'expulser de ses plateformes un utilisateur qui ne respecte pas ses Conditions d\'utilisation. De plus, l\'utilisateur est conscient qu\'Alloprof assure un suivi serré des conversations sur ses plateformes, mais qu\'il peut s\'écouler un certain temps avant que des renseignements personnels qu\'il aura rendus visibles aux autres utilisateurs ne soient effacés. L\'utilisateur ou la personne majeure qui en a la charge est seul responsable des conséquences du non-respect des Conditions d\'utilisation des services d’Alloprof.\n\n\nCOLLECTE DE DONNÉES DANS LES SERVICES TÉLÉPHONIQUE ET TEXTO\nL\'utilisateur qui communique avec Alloprof par téléphone ou par messagerie texte est susceptible de transmettre, en fonction des paramètres de son entente avec son fournisseur de service, son numéro de téléphone. Alloprof se réserve le droit, à des fins de qualité de service seulement, de communiquer avec l\'utilisateur dont il a obtenu le numéro de téléphone. Aucun autre usage ne saurait en être fait, et Alloprof s\'assure de la confidentialité des numéros de téléphone ainsi transmis.\n\n\nCOLLECTE D\'INFORMATION SUPPLÉMENTAIRE\nAlloprof se réserve le droit, dans le cadre de ses activités, de demander des renseignements supplémentaires à ses utilisateurs. Ces renseignements servent uniquement à des fins d\'optimisation, d\'amélioration ou de promotion de ses services, et ne sont transmis ni au public ni à aucun tiers, sauf précision contraire qui sera expressément signifiée à l\'utilisateur ou à la personne majeure qui en a la charge. Il peut s\'agir, sans s\'y limiter :\n-    De la source d\'information par laquelle l\'utilisateur a pris connaissance de l\'existence des services d’Alloprof;\n-    De la principale langue parlée à la maison;\n-    De la possession d\'un code remis à l\'utilisateur dans le cadre d\'une activité promotionnelle d\'Alloprof;\n-    De la présence de frère ou de sœur d\'âge scolaire à la maison.\nIl est toujours spécifié à l\'utilisateur qu\'il est libre de répondre à ces questions, et que sa participation ou non à ce questionnaire n\'a aucune incidence sur son droit ou sa capacité d\'accès aux services.\n\nFERMETURE DE SESSION\nAlloprof recommande fortement que l\'utilisateur ayant ouvert une session à partir de son compte Alloprof ferme sa session lorsque celle-ci est terminée ou lorsqu\'il laisse son poste de travail sans surveillance.\n\n\nFERMETURE D\'UN COMPTE\nUn utilisateur peut faire fermer son compte Alloprof en tout temps en formulant sa demande à info@alloprof.ca. L\'utilisateur comprend que le compte Alloprof est nécessaire à l\'utilisation de certains services tels que le Cyberprof, ou de toutes les fonctionnalités de certains services tels que les Forums ou les Jeux vidéo, et que certains services ou certaines fonctionnalités lui deviendront inaccessibles s\'il ferme son compte.\n\n\nLIENS VERS DES SITES EXTÉRIEURS\nSur son site Internet, Alloprof propose, à l\'occasion, la consultation de sites extérieurs. Alloprof s\'assure, dans la mesure du possible, de la qualité et de la pertinence pédagogique ou éducative de ces sites, mais décline toute responsabilité quant aux contenus qui s’y affichent, à l\'application de leurs conditions d\'utilisation ou de leur politique de confidentialité, ou quant à l\'absence de telles conditions ou politiques.\n\n\nÀ L\'ATTENTION DES PARENTS\nLes plateformes d’Alloprof s\'adressent en général à des clientèles d\'âge scolaire. Nous vous invitons à être vigilants quant à l\'utilisation que fait votre enfant des plateformes d’Alloprof ou de tout autre média, notamment en ce qui a trait à la transmission de renseignements personnels. Alloprof présume que si votre enfant est mineur au sens de la loi, il a préalablement obtenu votre autorisation avant d\'utiliser les plateformes d’Alloprof.\n\n\nQUESTIONS RELATIVES À LA SÉCURITÉ OU LA CONFIDENTIALITÉ\nPour toute question, demande ou commentaire en lien avec la Politique de protection de la vie privée des utilisateurs d\'Alloprof, veuillez communiquer avec nous à l’adresse courriel suivante : info@alloprof.ca.\n\nPOLITIQUE DE PROTECTION DE LA VIE PRIVÉE DES DONATEURS\n\nAlloprof accepte les dons de particuliers ou d\'entreprises par l\'intermédiaire de la plateforme de donation en ligne Logilys.\nTous les renseignements recueillis par la plateforme Logilys sont régis par la Politique de confidentialité « Logilys », qui peut être consultée à l’adresse Internet suivante : https://www.jedonneenligne.org/Alloprof/privacy.html\nÀ cette occasion, Alloprof reçoit les renseignements personnels d\'un donateur qui lui permettront de lui émettre un reçu de charité et de le lui expédier.\nL\'accès à ces renseignements est limité aux employés spécialement affectés au traitement du don en ligne, dans le strict exercice de leur travail.\nAucune information recueillie n\'est transmise à quelque tiers que ce soit.\nPour toute question, demande ou commentaire en lien avec la Politique de protection de la vie privée des donateurs d\'Alloprof, veuillez communiquer avec nous à l’adresse courriel suivante : info@alloprof.ca.\n\n\nCONDITIONS D\'UTILISATION\nCONSENTEMENT\n\nEn utilisant les plateformes et services Alloprof, vous reconnaissez avoir pris connaissance des « Conditions d\'utilisation » et consentez à leur respect et application. Alloprof se réserve le droit de modifier sans autre avis les Conditions d\'utilisation de ses plateformes et services. L\'utilisateur des plateformes et services Alloprof s\'engage à respecter les plus récentes Conditions d\'utilisation.\n \nLES SERVICES D’Alloprof\nAlloprof est un organisme de bienfaisance enregistré qui a pour mission d’engager les élèves du Québec et leurs parents dans la réussite éducative en offrant des services d’accompagnement scolaire gratuits, professionnels et stimulants. Les plateformes Internet d’Alloprof sont une des composantes des services d’Alloprof, dans lesquelles les élèves jeunes ou adultes, ou leurs parents, peuvent trouver de l’information, s’exercer ou échanger avec des enseignants afin de surmonter les difficultés scolaires ponctuelles. Les enseignants et les services d’Alloprof répondent aux questions relatives aux notions abordées dans les Programmes de formation de l’école québécoise du primaire et du secondaire.\n\n\nDROITS D\'UTILISATION\nL\'utilisateur peut naviguer sur les plateformes d’Alloprof et utiliser les services dans le respect des Conditions d’utilisation. Tout manquement aux Conditions d\'utilisation peut être sanctionné à la seule discrétion d\'Alloprof. Alloprof se réserve le droit de bannir l’utilisateur de ses plateformes. Par ailleurs, toute action menée de la part de l\'utilisateur sur les plateformes et dans les services d’Alloprof, et contraire aux lois de la province du Québec, peut entraîner des recours civils ou pénaux.\n \nPROPRIÉTÉ INTELLECTUELLE\nSauf avis contraire, Alloprof est l\'unique détenteur de la propriété intellectuelle et droits d\'auteur des Produits regroupés sus l\'appellation « Alloprof », le nom de domaine « Alloprof » et tous ses sous-domaines. Le terme « Produits » comprend, sans s\'y limiter, les plateformes numériques et leurs composantes, les textes, les images, les vidéos, les sons et musiques, les photographies, les illustrations graphiques, les slogans, les applications et logiciels incluant leurs codes source, le matériel promotionnel et toutes ses composantes. L\'utilisateur est autorisé à utiliser les Produits dans le cadre d\'un usage personnel. Nul ne peut sans le consentement écrit d\'Alloprof reproduire, intégrer à une plateforme numérique tierce, télécharger, copier, imprimer, distribuer, vendre, louer, licencier ou modifier, en tout ou en partie, l\'un ou l\'autre Produit.\n \nACCÈS AUX PLATEFORMES ET SERVICES Alloprof\nAlloprof s\'engage à fournir des plateformes et des services fiables et sécurisés. Ces plateformes et services sont accessibles à l\'utilisateur pendant les heures d\'ouverture prescrites. Alloprof se réserve le droit, sans autre préavis, d\'interrompre l\'accès à l\'un ou l\'autre des services ou plateformes, ou de retirer l\'une ou l\'autre de leurs fonctionnalités ou l\'un ou l\'autre de leurs contenus. Alloprof ne peut être tenu responsable pour tout préjudice réputé encouru à la suite d\'une telle interruption ou d\'un tel retrait.\nIl est expressément interdit d\'accéder ou de permettre l\'accès à toute plateforme ou tout service Alloprof à des fins illégitimes. Sont notamment considérés comme illégitimes :\n-    Tout accès frauduleux utilisant l\'identifiant d\'une autre personne et son mot de passe Alloprof sans sa permission explicite;\n-    Toute tentative, par quelque moyen, y compris tout moyen technologique ou informatique, d\'obtenir le mot de passe d\'un utilisateur à son insu.\n-    Toute tentative d\'accès à un compte qui n\'est pas le sien constitue un usage frauduleux passible de sanctions sévères, incluant le bannissement des plateformes et services d’Alloprof.\nPour toute question ou problème relatifs à l\'accès aux plateformes et services d’Alloprof, veuillez écrire à l’adresse courriel suivante : info@alloprof.ca.\n \nUTILISATION DES PLATEFORMES ET SERVICES ALLOPROF\nL\'utilisateur est tenu de se conformer en tout temps aux Conditions d\'utilisation des plateformes et services d’Alloprof. Il est de plus tenu de respecter les Conditions d\'utilisation propres à chacune des plateformes et à chacun des services dont il fait l\'usage.\n \nCOMPORTEMENTS INTERDITS\nEn utilisant les plateformes et services d’Alloprof, vous vous engagez à ne pas agir ainsi, ni donner l\'opportunité à quiconque d\'agir ainsi :\n-    Accéder, tenter d\'accéder ou exploiter les plateformes et services Alloprof par des moyens, technologiques ou autres, autres que ceux normalement prévus à ces fins. Ceci comprend, mais ne se limite pas, toute tentative de piratage des systèmes informatiques, d\'envoi de pourriels, de transmission de virus, logiciels malveillants, vers informatiques ou tout autre système similaire;\n-    Adopter un comportement qui contrevienne aux Conditions d\'utilisation des plateformes et services d’Alloprof;\n-    Adopter un comportement illégal, préjudiciable, menaçant, injurieux, de mauvais goût, obscène, qui porte atteinte au droit à la vie privée d\'autrui, haineux, violent, polémique ou autrement inadmissible ou inapproprié;\n-    Encourager de quelque manière tout comportement susceptible d\'enfreindre une loi ou un règlement, ou de donner lieu à une responsabilité civile ou pénale au titre de la loi ou pouvant porter atteinte à la sensibilité du public;\n-    Tenter d\'exploiter ou exploiter commercialement toute plateforme, service, mécanisme ou fonctionnalité des plateformes et services d’Alloprof;\n-    Tenter d\'obtenir ou obtenir des renseignements personnels d\'autres utilisateurs, comprenant, mais sans s\'y limiter leur nom, leurs coordonnées physiques ou virtuelles, leur mot de passe Alloprof;\n-    Tenter de nuire ou nuire, par des moyens technologiques ou autres, au bon fonctionnement des plateformes et services d’Alloprof;\n-    Violer, intentionnellement ou non, toute loi ou réglementation nationale ou internationale en vigueur, ainsi que toute autre règle ayant force de loi.\nTout comportement interdit pourra encourir envers son auteur des sanctions, comprenant le bannissement des plateformes et services d’Alloprof, o', '2022-03-24', '06:00:00', 1, 'en'),
(2, 1, 'LIMITATION DE RESPONSABILITÉ', 'TRANSMISSION DE DONNÉES\r\nAlloprof ne transmet ni ne vend aucune des données d\'utilisateur qu\'il recueille lui-même, ni au public ni à quelque tiers que ce soit.\r\nAlloprof transmettra des renseignements aux autorités lorsque cela est prescrit par la loi, notamment afin de prévenir un acte de violence, lorsqu’il existe un motif raisonnable de croire qu’un danger imminent de mort ou de blessure grave menace une personne, ou un groupe de personnes identifiables ou lors de situations mettant en danger la vie, la santé ou la sécurité de la personne concernée.\r\n\r\n\r\nAlloprof contribue à la recherche universitaire et se réserve le droit, à cette fin et dans le cadre strict d\'études soumises à une certification éthique dûment adoptée par l\'autorité universitaire compétente, de donner accès à ses données aux chercheurs soumis à cette certification éthique. Veuillez noter qu\'aucune donnée transmise ne permet d\'identifier un utilisateur ou de communiquer avec lui, à moins qu\'Alloprof ait obtenu l\'autorisation de la part de l\'utilisateur concerné ou de la personne majeure qui en a la charge.\r\n\r\n\r\nCOLLECTE DE DONNÉES DANS LES SERVICES EN LIGNE\r\nAlloprof recueille des données sur les utilisateurs et leur comportement sur ses plateformes, à des fins d\'analyse, d\'optimisation et d\'amélioration de ses services. Ces données comprennent notamment des renseignements sur le système d\'exploitation et le type d\'appareil utilisés, le fournisseur Internet, la durée des sessions de l\'utilisateur, ainsi que ses interactions avec les différentes composantes des plateformes Alloprof. Aucune de ces informations ne permet d\'identifier l\'utilisateur.\r\nAlloprof se réserve le droit d\'utiliser des fichiers témoins (cookies) à des fins d\'optimisation et d\'amélioration de ses services ainsi que de ses activités promotionnelles. Les cookies peuvent provenir de sources extérieures à Alloprof, telles que, mais sans s’y limiter : Google, Facebook ou YouTube.\r\nSur certaines de ses plateformes, Alloprof demande à l\'utilisateur l\'un ou plusieurs de ces renseignements : Pseudonyme; Mois et année de naissance; Adresse courriel; Mot de passe; Genre; Année scolaire; Province, ville et nom de l’école fréquentée; Statut de l’utilisateur (Parent; Élève; Élève adulte; Enseignant). Ces renseignements servent à des fins statistiques, notamment pour guider Alloprof dans l’amélioration de ses services.\r\n\r\nESPACES PUBLICS\r\nSur certaines des plateformes Alloprof, par exemple les Forums, l\'utilisateur a la possibilité de divulguer des renseignements personnels visibles par les autres utilisateurs. Dans ses Conditions d\'utilisation, Alloprof interdit expressément la divulgation d\'information qui permettraient d\'identifier ou de communiquer avec un utilisateur à l\'extérieur des plateformes Alloprof. L\'utilisateur est seul responsable du non-respect des Conditions d\'utilisation des services Alloprof. Alloprof se réserve le droit d\'expulser de ses plateformes un utilisateur qui ne respecte pas ses Conditions d\'utilisation. De plus, l\'utilisateur est conscient qu\'Alloprof assure un suivi serré des conversations sur ses plateformes, mais qu\'il peut s\'écouler un certain temps avant que des renseignements personnels qu\'il aura rendus visibles aux autres utilisateurs ne soient effacés. L\'utilisateur ou la personne majeure qui en a la charge est seul responsable des conséquences du non-respect des Conditions d\'utilisation des services d’Alloprof.\r\n\r\n\r\nCOLLECTE DE DONNÉES DANS LES SERVICES TÉLÉPHONIQUE ET TEXTO\r\nL\'utilisateur qui communique avec Alloprof par téléphone ou par messagerie texte est susceptible de transmettre, en fonction des paramètres de son entente avec son fournisseur de service, son numéro de téléphone. Alloprof se réserve le droit, à des fins de qualité de service seulement, de communiquer avec l\'utilisateur dont il a obtenu le numéro de téléphone. Aucun autre usage ne saurait en être fait, et Alloprof s\'assure de la confidentialité des numéros de téléphone ainsi transmis.\r\n\r\n\r\nCOLLECTE D\'INFORMATION SUPPLÉMENTAIRE\r\nAlloprof se réserve le droit, dans le cadre de ses activités, de demander des renseignements supplémentaires à ses utilisateurs. Ces renseignements servent uniquement à des fins d\'optimisation, d\'amélioration ou de promotion de ses services, et ne sont transmis ni au public ni à aucun tiers, sauf précision contraire qui sera expressément signifiée à l\'utilisateur ou à la personne majeure qui en a la charge. Il peut s\'agir, sans s\'y limiter :\r\n-    De la source d\'information par laquelle l\'utilisateur a pris connaissance de l\'existence des services d’Alloprof;\r\n-    De la principale langue parlée à la maison;\r\n-    De la possession d\'un code remis à l\'utilisateur dans le cadre d\'une activité promotionnelle d\'Alloprof;\r\n-    De la présence de frère ou de sœur d\'âge scolaire à la maison.\r\nIl est toujours spécifié à l\'utilisateur qu\'il est libre de répondre à ces questions, et que sa participation ou non à ce questionnaire n\'a aucune incidence sur son droit ou sa capacité d\'accès aux services.\r\n\r\nFERMETURE DE SESSION\r\nAlloprof recommande fortement que l\'utilisateur ayant ouvert une session à partir de son compte Alloprof ferme sa session lorsque celle-ci est terminée ou lorsqu\'il laisse son poste de travail sans surveillance.\r\n\r\n\r\nFERMETURE D\'UN COMPTE\r\nUn utilisateur peut faire fermer son compte Alloprof en tout temps en formulant sa demande à info@alloprof.ca. L\'utilisateur comprend que le compte Alloprof est nécessaire à l\'utilisation de certains services tels que le Cyberprof, ou de toutes les fonctionnalités de certains services tels que les Forums ou les Jeux vidéo, et que certains services ou certaines fonctionnalités lui deviendront inaccessibles s\'il ferme son compte.\r\n\r\n\r\nLIENS VERS DES SITES EXTÉRIEURS\r\nSur son site Internet, Alloprof propose, à l\'occasion, la consultation de sites extérieurs. Alloprof s\'assure, dans la mesure du possible, de la qualité et de la pertinence pédagogique ou éducative de ces sites, mais décline toute responsabilité quant aux contenus qui s’y affichent, à l\'application de leurs conditions d\'utilisation ou de leur politique de confidentialité, ou quant à l\'absence de telles conditions ou politiques.\r\n\r\n\r\nÀ L\'ATTENTION DES PARENTS\r\nLes plateformes d’Alloprof s\'adressent en général à des clientèles d\'âge scolaire. Nous vous invitons à être vigilants quant à l\'utilisation que fait votre enfant des plateformes d’Alloprof ou de tout autre média, notamment en ce qui a trait à la transmission de renseignements personnels. Alloprof présume que si votre enfant est mineur au sens de la loi, il a préalablement obtenu votre autorisation avant d\'utiliser les plateformes d’Alloprof.\r\n\r\n\r\nQUESTIONS RELATIVES À LA SÉCURITÉ OU LA CONFIDENTIALITÉ\r\nPour toute question, demande ou commentaire en lien avec la Politique de protection de la vie privée des utilisateurs d\'Alloprof, veuillez communiquer avec nous à l’adresse courriel suivante : info@alloprof.ca.\r\n\r\nPOLITIQUE DE PROTECTION DE LA VIE PRIVÉE DES DONATEURS\r\n\r\nAlloprof accepte les dons de particuliers ou d\'entreprises par l\'intermédiaire de la plateforme de donation en ligne Logilys.\r\nTous les renseignements recueillis par la plateforme Logilys sont régis par la Politique de confidentialité « Logilys », qui peut être consultée à l’adresse Internet suivante : https://www.jedonneenligne.org/Alloprof/privacy.html\r\nÀ cette occasion, Alloprof reçoit les renseignements personnels d\'un donateur qui lui permettront de lui émettre un reçu de charité et de le lui expédier.\r\nL\'accès à ces renseignements est limité aux employés spécialement affectés au traitement du don en ligne, dans le strict exercice de leur travail.\r\nAucune information recueillie n\'est transmise à quelque tiers que ce soit.\r\nPour toute question, demande ou commentaire en lien avec la Politique de protection de la vie privée des donateurs d\'Alloprof, veuillez communiquer avec nous à l’adresse courriel suivante : info@alloprof.ca.\r\n\r\n\r\nCONDITIONS D\'UTILISATION\r\nCONSENTEMENT\r\n\r\nEn utilisant les plateformes et services Alloprof, vous reconnaissez avoir pris connaissance des « Conditions d\'utilisation » et consentez à leur respect et application. Alloprof se réserve le droit de modifier sans autre avis les Conditions d\'utilisation de ses plateformes et services. L\'utilisateur des plateformes et services Alloprof s\'engage à respecter les plus récentes Conditions d\'utilisation.\r\n \r\nLES SERVICES D’Alloprof\r\nAlloprof est un organisme de bienfaisance enregistré qui a pour mission d’engager les élèves du Québec et leurs parents dans la réussite éducative en offrant des services d’accompagnement scolaire gratuits, professionnels et stimulants. Les plateformes Internet d’Alloprof sont une des composantes des services d’Alloprof, dans lesquelles les élèves jeunes ou adultes, ou leurs parents, peuvent trouver de l’information, s’exercer ou échanger avec des enseignants afin de surmonter les difficultés scolaires ponctuelles. Les enseignants et les services d’Alloprof répondent aux questions relatives aux notions abordées dans les Programmes de formation de l’école québécoise du primaire et du secondaire.\r\n\r\n\r\nDROITS D\'UTILISATION\r\nL\'utilisateur peut naviguer sur les plateformes d’Alloprof et utiliser les services dans le respect des Conditions d’utilisation. Tout manquement aux Conditions d\'utilisation peut être sanctionné à la seule discrétion d\'Alloprof. Alloprof se réserve le droit de bannir l’utilisateur de ses plateformes. Par ailleurs, toute action menée de la part de l\'utilisateur sur les plateformes et dans les services d’Alloprof, et contraire aux lois de la province du Québec, peut entraîner des recours civils ou pénaux.\r\n \r\nPROPRIÉTÉ INTELLECTUELLE\r\nSauf avis contraire, Alloprof est l\'unique détenteur de la propriété intellectuelle et droits d\'auteur des Produits regroupés sus l\'appellation « Alloprof », le nom de domaine « Alloprof » et tous ses sous-domaines. Le terme « Produits » comprend, sans s\'y limiter, les plateformes numériques et leurs composantes, les textes, les images, les vidéos, les sons et musiques, les photographies, les illustrations graphiques, les slogans, les applications et logiciels incluant leurs codes source, le matériel promotionnel et toutes ses composantes. L\'utilisateur est autorisé à utiliser les Produits dans le cadre d\'un usage personnel. Nul ne peut sans le consentement écrit d\'Alloprof reproduire, intégrer à une plateforme numérique tierce, télécharger, copier, imprimer, distribuer, vendre, louer, licencier ou modifier, en tout ou en partie, l\'un ou l\'autre Produit.\r\n \r\nACCÈS AUX PLATEFORMES ET SERVICES Alloprof\r\nAlloprof s\'engage à fournir des plateformes et des services fiables et sécurisés. Ces plateformes et services sont accessibles à l\'utilisateur pendant les heures d\'ouverture prescrites. Alloprof se réserve le droit, sans autre préavis, d\'interrompre l\'accès à l\'un ou l\'autre des services ou plateformes, ou de retirer l\'une ou l\'autre de leurs fonctionnalités ou l\'un ou l\'autre de leurs contenus. Alloprof ne peut être tenu responsable pour tout préjudice réputé encouru à la suite d\'une telle interruption ou d\'un tel retrait.\r\nIl est expressément interdit d\'accéder ou de permettre l\'accès à toute plateforme ou tout service Alloprof à des fins illégitimes. Sont notamment considérés comme illégitimes :\r\n-    Tout accès frauduleux utilisant l\'identifiant d\'une autre personne et son mot de passe Alloprof sans sa permission explicite;\r\n-    Toute tentative, par quelque moyen, y compris tout moyen technologique ou informatique, d\'obtenir le mot de passe d\'un utilisateur à son insu.\r\n-    Toute tentative d\'accès à un compte qui n\'est pas le sien constitue un usage frauduleux passible de sanctions sévères, incluant le bannissement des plateformes et services d’Alloprof.\r\nPour toute question ou problème relatifs à l\'accès aux plateformes et services d’Alloprof, veuillez écrire à l’adresse courriel suivante : info@alloprof.ca.\r\n \r\nUTILISATION DES PLATEFORMES ET SERVICES ALLOPROF\r\nL\'utilisateur est tenu de se conformer en tout temps aux Conditions d\'utilisation des plateformes et services d’Alloprof. Il est de plus tenu de respecter les Conditions d\'utilisation propres à chacune des plateformes et à chacun des services dont il fait l\'usage.\r\n \r\nCOMPORTEMENTS INTERDITS\r\nEn utilisant les plateformes et services d’Alloprof, vous vous engagez à ne pas agir ainsi, ni donner l\'opportunité à quiconque d\'agir ainsi :\r\n-    Accéder, tenter d\'accéder ou exploiter les plateformes et services Alloprof par des moyens, technologiques ou autres, autres que ceux normalement prévus à ces fins. Ceci comprend, mais ne se limite pas, toute tentative de piratage des systèmes informatiques, d\'envoi de pourriels, de transmission de virus, logiciels malveillants, vers informatiques ou tout autre système similaire;\r\n-    Adopter un comportement qui contrevienne aux Conditions d\'utilisation des plateformes et services d’Alloprof;\r\n-    Adopter un comportement illégal, préjudiciable, menaçant, injurieux, de mauvais goût, obscène, qui porte atteinte au droit à la vie privée d\'autrui, haineux, violent, polémique ou autrement inadmissible ou inapproprié;\r\n-    Encourager de quelque manière tout comportement susceptible d\'enfreindre une loi ou un règlement, ou de donner lieu à une responsabilité civile ou pénale au titre de la loi ou pouvant porter atteinte à la sensibilité du public;\r\n-    Tenter d\'exploiter ou exploiter commercialement toute plateforme, service, mécanisme ou fonctionnalité des plateformes et services d’Alloprof;\r\n-    Tenter d\'obtenir ou obtenir des renseignements personnels d\'autres utilisateurs, comprenant, mais sans s\'y limiter leur nom, leurs coordonnées physiques ou virtuelles, leur mot de passe Alloprof;\r\n-    Tenter de nuire ou nuire, par des moyens technologiques ou autres, au bon fonctionnement des plateformes et services d’Alloprof;\r\n-    Violer, intentionnellement ou non, toute loi ou réglementation nationale ou internationale en vigueur, ainsi que toute autre règle ayant force de loi.\r\nTout comportement interdit pourra encourir envers son auteur des sanctions, comprenant le bannissement des plateformes et services d’Alloprof, o', '2022-03-24', '06:00:00', 1, 'ar'),
(3, 1, 'LIMITATION DE RESPONSABILITÉ', 'TRANSMISSION DE DONNÉES\r\nAlloprof ne transmet ni ne vend aucune des données d\'utilisateur qu\'il recueille lui-même, ni au public ni à quelque tiers que ce soit.\r\nAlloprof transmettra des renseignements aux autorités lorsque cela est prescrit par la loi, notamment afin de prévenir un acte de violence, lorsqu’il existe un motif raisonnable de croire qu’un danger imminent de mort ou de blessure grave menace une personne, ou un groupe de personnes identifiables ou lors de situations mettant en danger la vie, la santé ou la sécurité de la personne concernée.\r\n\r\n\r\nAlloprof contribue à la recherche universitaire et se réserve le droit, à cette fin et dans le cadre strict d\'études soumises à une certification éthique dûment adoptée par l\'autorité universitaire compétente, de donner accès à ses données aux chercheurs soumis à cette certification éthique. Veuillez noter qu\'aucune donnée transmise ne permet d\'identifier un utilisateur ou de communiquer avec lui, à moins qu\'Alloprof ait obtenu l\'autorisation de la part de l\'utilisateur concerné ou de la personne majeure qui en a la charge.\r\n\r\n\r\nCOLLECTE DE DONNÉES DANS LES SERVICES EN LIGNE\r\nAlloprof recueille des données sur les utilisateurs et leur comportement sur ses plateformes, à des fins d\'analyse, d\'optimisation et d\'amélioration de ses services. Ces données comprennent notamment des renseignements sur le système d\'exploitation et le type d\'appareil utilisés, le fournisseur Internet, la durée des sessions de l\'utilisateur, ainsi que ses interactions avec les différentes composantes des plateformes Alloprof. Aucune de ces informations ne permet d\'identifier l\'utilisateur.\r\nAlloprof se réserve le droit d\'utiliser des fichiers témoins (cookies) à des fins d\'optimisation et d\'amélioration de ses services ainsi que de ses activités promotionnelles. Les cookies peuvent provenir de sources extérieures à Alloprof, telles que, mais sans s’y limiter : Google, Facebook ou YouTube.\r\nSur certaines de ses plateformes, Alloprof demande à l\'utilisateur l\'un ou plusieurs de ces renseignements : Pseudonyme; Mois et année de naissance; Adresse courriel; Mot de passe; Genre; Année scolaire; Province, ville et nom de l’école fréquentée; Statut de l’utilisateur (Parent; Élève; Élève adulte; Enseignant). Ces renseignements servent à des fins statistiques, notamment pour guider Alloprof dans l’amélioration de ses services.\r\n\r\nESPACES PUBLICS\r\nSur certaines des plateformes Alloprof, par exemple les Forums, l\'utilisateur a la possibilité de divulguer des renseignements personnels visibles par les autres utilisateurs. Dans ses Conditions d\'utilisation, Alloprof interdit expressément la divulgation d\'information qui permettraient d\'identifier ou de communiquer avec un utilisateur à l\'extérieur des plateformes Alloprof. L\'utilisateur est seul responsable du non-respect des Conditions d\'utilisation des services Alloprof. Alloprof se réserve le droit d\'expulser de ses plateformes un utilisateur qui ne respecte pas ses Conditions d\'utilisation. De plus, l\'utilisateur est conscient qu\'Alloprof assure un suivi serré des conversations sur ses plateformes, mais qu\'il peut s\'écouler un certain temps avant que des renseignements personnels qu\'il aura rendus visibles aux autres utilisateurs ne soient effacés. L\'utilisateur ou la personne majeure qui en a la charge est seul responsable des conséquences du non-respect des Conditions d\'utilisation des services d’Alloprof.\r\n\r\n\r\nCOLLECTE DE DONNÉES DANS LES SERVICES TÉLÉPHONIQUE ET TEXTO\r\nL\'utilisateur qui communique avec Alloprof par téléphone ou par messagerie texte est susceptible de transmettre, en fonction des paramètres de son entente avec son fournisseur de service, son numéro de téléphone. Alloprof se réserve le droit, à des fins de qualité de service seulement, de communiquer avec l\'utilisateur dont il a obtenu le numéro de téléphone. Aucun autre usage ne saurait en être fait, et Alloprof s\'assure de la confidentialité des numéros de téléphone ainsi transmis.\r\n\r\n\r\nCOLLECTE D\'INFORMATION SUPPLÉMENTAIRE\r\nAlloprof se réserve le droit, dans le cadre de ses activités, de demander des renseignements supplémentaires à ses utilisateurs. Ces renseignements servent uniquement à des fins d\'optimisation, d\'amélioration ou de promotion de ses services, et ne sont transmis ni au public ni à aucun tiers, sauf précision contraire qui sera expressément signifiée à l\'utilisateur ou à la personne majeure qui en a la charge. Il peut s\'agir, sans s\'y limiter :\r\n-    De la source d\'information par laquelle l\'utilisateur a pris connaissance de l\'existence des services d’Alloprof;\r\n-    De la principale langue parlée à la maison;\r\n-    De la possession d\'un code remis à l\'utilisateur dans le cadre d\'une activité promotionnelle d\'Alloprof;\r\n-    De la présence de frère ou de sœur d\'âge scolaire à la maison.\r\nIl est toujours spécifié à l\'utilisateur qu\'il est libre de répondre à ces questions, et que sa participation ou non à ce questionnaire n\'a aucune incidence sur son droit ou sa capacité d\'accès aux services.\r\n\r\nFERMETURE DE SESSION\r\nAlloprof recommande fortement que l\'utilisateur ayant ouvert une session à partir de son compte Alloprof ferme sa session lorsque celle-ci est terminée ou lorsqu\'il laisse son poste de travail sans surveillance.\r\n\r\n\r\nFERMETURE D\'UN COMPTE\r\nUn utilisateur peut faire fermer son compte Alloprof en tout temps en formulant sa demande à info@alloprof.ca. L\'utilisateur comprend que le compte Alloprof est nécessaire à l\'utilisation de certains services tels que le Cyberprof, ou de toutes les fonctionnalités de certains services tels que les Forums ou les Jeux vidéo, et que certains services ou certaines fonctionnalités lui deviendront inaccessibles s\'il ferme son compte.\r\n\r\n\r\nLIENS VERS DES SITES EXTÉRIEURS\r\nSur son site Internet, Alloprof propose, à l\'occasion, la consultation de sites extérieurs. Alloprof s\'assure, dans la mesure du possible, de la qualité et de la pertinence pédagogique ou éducative de ces sites, mais décline toute responsabilité quant aux contenus qui s’y affichent, à l\'application de leurs conditions d\'utilisation ou de leur politique de confidentialité, ou quant à l\'absence de telles conditions ou politiques.\r\n\r\n\r\nÀ L\'ATTENTION DES PARENTS\r\nLes plateformes d’Alloprof s\'adressent en général à des clientèles d\'âge scolaire. Nous vous invitons à être vigilants quant à l\'utilisation que fait votre enfant des plateformes d’Alloprof ou de tout autre média, notamment en ce qui a trait à la transmission de renseignements personnels. Alloprof présume que si votre enfant est mineur au sens de la loi, il a préalablement obtenu votre autorisation avant d\'utiliser les plateformes d’Alloprof.\r\n\r\n\r\nQUESTIONS RELATIVES À LA SÉCURITÉ OU LA CONFIDENTIALITÉ\r\nPour toute question, demande ou commentaire en lien avec la Politique de protection de la vie privée des utilisateurs d\'Alloprof, veuillez communiquer avec nous à l’adresse courriel suivante : info@alloprof.ca.\r\n\r\nPOLITIQUE DE PROTECTION DE LA VIE PRIVÉE DES DONATEURS\r\n\r\nAlloprof accepte les dons de particuliers ou d\'entreprises par l\'intermédiaire de la plateforme de donation en ligne Logilys.\r\nTous les renseignements recueillis par la plateforme Logilys sont régis par la Politique de confidentialité « Logilys », qui peut être consultée à l’adresse Internet suivante : https://www.jedonneenligne.org/Alloprof/privacy.html\r\nÀ cette occasion, Alloprof reçoit les renseignements personnels d\'un donateur qui lui permettront de lui émettre un reçu de charité et de le lui expédier.\r\nL\'accès à ces renseignements est limité aux employés spécialement affectés au traitement du don en ligne, dans le strict exercice de leur travail.\r\nAucune information recueillie n\'est transmise à quelque tiers que ce soit.\r\nPour toute question, demande ou commentaire en lien avec la Politique de protection de la vie privée des donateurs d\'Alloprof, veuillez communiquer avec nous à l’adresse courriel suivante : info@alloprof.ca.\r\n\r\n\r\nCONDITIONS D\'UTILISATION\r\nCONSENTEMENT\r\n\r\nEn utilisant les plateformes et services Alloprof, vous reconnaissez avoir pris connaissance des « Conditions d\'utilisation » et consentez à leur respect et application. Alloprof se réserve le droit de modifier sans autre avis les Conditions d\'utilisation de ses plateformes et services. L\'utilisateur des plateformes et services Alloprof s\'engage à respecter les plus récentes Conditions d\'utilisation.\r\n \r\nLES SERVICES D’Alloprof\r\nAlloprof est un organisme de bienfaisance enregistré qui a pour mission d’engager les élèves du Québec et leurs parents dans la réussite éducative en offrant des services d’accompagnement scolaire gratuits, professionnels et stimulants. Les plateformes Internet d’Alloprof sont une des composantes des services d’Alloprof, dans lesquelles les élèves jeunes ou adultes, ou leurs parents, peuvent trouver de l’information, s’exercer ou échanger avec des enseignants afin de surmonter les difficultés scolaires ponctuelles. Les enseignants et les services d’Alloprof répondent aux questions relatives aux notions abordées dans les Programmes de formation de l’école québécoise du primaire et du secondaire.\r\n\r\n\r\nDROITS D\'UTILISATION\r\nL\'utilisateur peut naviguer sur les plateformes d’Alloprof et utiliser les services dans le respect des Conditions d’utilisation. Tout manquement aux Conditions d\'utilisation peut être sanctionné à la seule discrétion d\'Alloprof. Alloprof se réserve le droit de bannir l’utilisateur de ses plateformes. Par ailleurs, toute action menée de la part de l\'utilisateur sur les plateformes et dans les services d’Alloprof, et contraire aux lois de la province du Québec, peut entraîner des recours civils ou pénaux.\r\n \r\nPROPRIÉTÉ INTELLECTUELLE\r\nSauf avis contraire, Alloprof est l\'unique détenteur de la propriété intellectuelle et droits d\'auteur des Produits regroupés sus l\'appellation « Alloprof », le nom de domaine « Alloprof » et tous ses sous-domaines. Le terme « Produits » comprend, sans s\'y limiter, les plateformes numériques et leurs composantes, les textes, les images, les vidéos, les sons et musiques, les photographies, les illustrations graphiques, les slogans, les applications et logiciels incluant leurs codes source, le matériel promotionnel et toutes ses composantes. L\'utilisateur est autorisé à utiliser les Produits dans le cadre d\'un usage personnel. Nul ne peut sans le consentement écrit d\'Alloprof reproduire, intégrer à une plateforme numérique tierce, télécharger, copier, imprimer, distribuer, vendre, louer, licencier ou modifier, en tout ou en partie, l\'un ou l\'autre Produit.\r\n \r\nACCÈS AUX PLATEFORMES ET SERVICES Alloprof\r\nAlloprof s\'engage à fournir des plateformes et des services fiables et sécurisés. Ces plateformes et services sont accessibles à l\'utilisateur pendant les heures d\'ouverture prescrites. Alloprof se réserve le droit, sans autre préavis, d\'interrompre l\'accès à l\'un ou l\'autre des services ou plateformes, ou de retirer l\'une ou l\'autre de leurs fonctionnalités ou l\'un ou l\'autre de leurs contenus. Alloprof ne peut être tenu responsable pour tout préjudice réputé encouru à la suite d\'une telle interruption ou d\'un tel retrait.\r\nIl est expressément interdit d\'accéder ou de permettre l\'accès à toute plateforme ou tout service Alloprof à des fins illégitimes. Sont notamment considérés comme illégitimes :\r\n-    Tout accès frauduleux utilisant l\'identifiant d\'une autre personne et son mot de passe Alloprof sans sa permission explicite;\r\n-    Toute tentative, par quelque moyen, y compris tout moyen technologique ou informatique, d\'obtenir le mot de passe d\'un utilisateur à son insu.\r\n-    Toute tentative d\'accès à un compte qui n\'est pas le sien constitue un usage frauduleux passible de sanctions sévères, incluant le bannissement des plateformes et services d’Alloprof.\r\nPour toute question ou problème relatifs à l\'accès aux plateformes et services d’Alloprof, veuillez écrire à l’adresse courriel suivante : info@alloprof.ca.\r\n \r\nUTILISATION DES PLATEFORMES ET SERVICES ALLOPROF\r\nL\'utilisateur est tenu de se conformer en tout temps aux Conditions d\'utilisation des plateformes et services d’Alloprof. Il est de plus tenu de respecter les Conditions d\'utilisation propres à chacune des plateformes et à chacun des services dont il fait l\'usage.\r\n \r\nCOMPORTEMENTS INTERDITS\r\nEn utilisant les plateformes et services d’Alloprof, vous vous engagez à ne pas agir ainsi, ni donner l\'opportunité à quiconque d\'agir ainsi :\r\n-    Accéder, tenter d\'accéder ou exploiter les plateformes et services Alloprof par des moyens, technologiques ou autres, autres que ceux normalement prévus à ces fins. Ceci comprend, mais ne se limite pas, toute tentative de piratage des systèmes informatiques, d\'envoi de pourriels, de transmission de virus, logiciels malveillants, vers informatiques ou tout autre système similaire;\r\n-    Adopter un comportement qui contrevienne aux Conditions d\'utilisation des plateformes et services d’Alloprof;\r\n-    Adopter un comportement illégal, préjudiciable, menaçant, injurieux, de mauvais goût, obscène, qui porte atteinte au droit à la vie privée d\'autrui, haineux, violent, polémique ou autrement inadmissible ou inapproprié;\r\n-    Encourager de quelque manière tout comportement susceptible d\'enfreindre une loi ou un règlement, ou de donner lieu à une responsabilité civile ou pénale au titre de la loi ou pouvant porter atteinte à la sensibilité du public;\r\n-    Tenter d\'exploiter ou exploiter commercialement toute plateforme, service, mécanisme ou fonctionnalité des plateformes et services d’Alloprof;\r\n-    Tenter d\'obtenir ou obtenir des renseignements personnels d\'autres utilisateurs, comprenant, mais sans s\'y limiter leur nom, leurs coordonnées physiques ou virtuelles, leur mot de passe Alloprof;\r\n-    Tenter de nuire ou nuire, par des moyens technologiques ou autres, au bon fonctionnement des plateformes et services d’Alloprof;\r\n-    Violer, intentionnellement ou non, toute loi ou réglementation nationale ou internationale en vigueur, ainsi que toute autre règle ayant force de loi.\r\nTout comportement interdit pourra encourir envers son auteur des sanctions, comprenant le bannissement des plateformes et services d’Alloprof, o', '2022-03-24', '06:00:00', 1, 'fr'),
(4, 2, 'With Helpie FAQ, you can also give a chance for your customers to submit questions directl', '<p>gkb;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>mvk</li>\r\n<li>gio;</li>\r\n</ul>', '2022-03-24', '06:00:00', 1, 'en'),
(5, 2, 'With Helpie FAQ, you can also give a chance for your customers to submit questions directl', '<p>gkb;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>mvk</li>\r\n<li>gio;</li>\r\n</ul>', '2022-03-24', '06:00:00', 1, 'ar'),
(46, 2, 'With Helpie FAQ, you can also give a chance for your customers to submit questions directl', '<p>gkb;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>mvk</li>\r\n<li>gio;</li>\r\n</ul>', '2022-03-24', '06:00:00', 1, 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `src` varchar(200) NOT NULL,
  `size` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `id_teacher`, `src`, `size`) VALUES
(1, 19, '625615b6b3e500.66745810_.jpg', 78731),
(13, 4, '62744a9c2191f8.48790894_.png', 1058521);

-- --------------------------------------------------------

--
-- Structure de la table `infoteacher`
--

CREATE TABLE `infoteacher` (
  `id_teacher` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `tel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `infoteacher`
--

INSERT INTO `infoteacher` (`id_teacher`, `fullname`, `description`, `price`, `tel`) VALUES
(1, 'khaoula essakhi', 'Bienvenue . Je suis enseignant pour les cours de s...', 100, '+212603470642'),
(2, 'Salma El hayany', 'Bienvenue . Je suis enseignant pour les cours de s...', 100, '+212709696361'),
(4, 'Hossame El Bezzari', 'مبرمج و لي خبرة في المونتاج بالإظافة إلى تقافة في مجال الإتصال', 200, '+212626571602'),
(5, 'Houda labyed', 'حاصلة على دبلوم في البرمجة', 100, '+212681102873'),
(19, 'marouan ben hadach', 'ggggggg,jjkdq,qx,,q', 100, '+212658438738'),
(20, 'Omar slimi', 'bbbb', 100, '+212798004365'),
(22, 'igi', 'heowowe', 545, '+212626570002');

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE `log` (
  `id_log` int(200) NOT NULL,
  `page` text NOT NULL,
  `ip` varchar(70) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `log`
--

INSERT INTO `log` (`id_log`, `page`, `ip`, `date`, `time`) VALUES
(1, '/allomyprof/', '::1', '2022-03-24', '00:00:00'),
(2, '/allomyprof/', '::1', '2022-03-24', '00:00:00'),
(3, '/allomyprof/', '::1', '2022-03-24', '00:00:00'),
(4, '/allomyprof/', '::1', '2022-03-24', '00:00:00'),
(5, '/allomyprof/recherche', '::1', '2022-03-24', '00:00:00'),
(6, '/allomyprof/logout', '::1', '2022-03-24', '00:00:00'),
(7, '/allomyprof/login', '::1', '2022-03-24', '00:00:00'),
(8, '/allomyprof/recherche', '::1', '2022-03-24', '00:00:00'),
(9, '/allomyprof/recherche', '::1', '2022-03-24', '00:00:00'),
(10, '/allomyprof/index', '::1', '2022-03-24', '00:00:00'),
(11, '/allomyprof/index', '::1', '2022-03-24', '00:00:00'),
(12, '/allomyprof/recherche', '::1', '2022-03-24', '00:00:00'),
(13, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=sal&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(14, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=sal&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(15, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(16, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(17, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=g&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(18, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=g&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(19, '/allomyprof/recherche', '::1', '2022-03-24', '00:00:00'),
(20, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(21, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(22, '/allomyprof/recherche?ville=Fes&matiere=arabic&nomprof=&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(23, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(24, '/allomyprof/recherche?ville=Fes&matiere=micro+economie+2&nomprof=&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(25, '/allomyprof/recherche?ville=Fes&matiere=micro+economie+2&nomprof=&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(26, '/allomyprof/recherche?ville=Fes&matiere=franch&nomprof=sal&btnsubmit=se', '::1', '2022-03-24', '00:00:00'),
(27, '/allomyprof/index', '::1', '2022-03-24', '00:00:00'),
(28, '/allomyprof/', '::1', '2022-03-24', '00:00:00'),
(29, '/allomyprof/', '::1', '2022-03-24', '00:00:00'),
(30, '/allomyprof/', '::1', '2022-03-24', '00:00:00'),
(31, '/allomyprof/', '::1', '2022-03-24', '23:58:58'),
(32, '/allomyprof/configuration', '::1', '2022-03-24', '23:59:04'),
(33, '/allomyprof/settings', '::1', '2022-03-25', '00:00:56'),
(34, '/allomyprof/configuration', '::1', '2022-03-25', '00:00:56'),
(35, '/allomyprof/', '::1', '2022-03-25', '00:12:09'),
(36, '/allomyprof/recherche', '::1', '2022-03-25', '00:12:11'),
(37, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:12:13'),
(38, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:13:36'),
(39, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:19:01'),
(40, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:20:15'),
(41, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:21:40'),
(42, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:21:53'),
(43, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:22:57'),
(44, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:24:26'),
(45, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '00:30:11'),
(46, '/allomyprof/', '::1', '2022-03-25', '00:38:37'),
(47, '/allomyprof/', '::1', '2022-03-25', '00:39:02'),
(48, '/allomyprof/', '::1', '2022-03-25', '00:40:42'),
(49, '/allomyprof/', '::1', '2022-03-25', '01:07:42'),
(50, '/allomyprof/signup', '::1', '2022-03-25', '01:07:46'),
(51, '/allomyprof/configuration', '::1', '2022-03-25', '01:07:59'),
(52, '/allomyprof/user', '::1', '2022-03-25', '01:08:42'),
(53, '/allomyprof/profile', '::1', '2022-03-25', '01:08:42'),
(54, '/allomyprof/settings', '::1', '2022-03-25', '01:08:52'),
(55, '/allomyprof/settings', '::1', '2022-03-25', '01:13:05'),
(56, '/allomyprof/settings', '::1', '2022-03-25', '01:13:50'),
(57, '/allomyprof/settings', '::1', '2022-03-25', '01:14:29'),
(58, '/allomyprof/settings', '::1', '2022-03-25', '01:20:11'),
(59, '/allomyprof/settings', '::1', '2022-03-25', '01:21:13'),
(60, '/allomyprof/settings', '::1', '2022-03-25', '01:21:29'),
(61, '/allomyprof/settings', '::1', '2022-03-25', '01:22:06'),
(62, '/allomyprof/settings', '::1', '2022-03-25', '01:22:17'),
(63, '/allomyprof/settings', '::1', '2022-03-25', '01:22:31'),
(64, '/allomyprof/', '::1', '2022-03-25', '01:25:45'),
(65, '/allomyprof/logout', '::1', '2022-03-25', '01:25:50'),
(66, '/allomyprof/login', '::1', '2022-03-25', '01:25:50'),
(67, '/allomyprof/recherche', '::1', '2022-03-25', '01:25:55'),
(68, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '01:25:56'),
(69, '/allomyprof/signup', '::1', '2022-03-25', '01:33:56'),
(70, '/allomyprof/configuration', '::1', '2022-03-25', '01:34:17'),
(71, '/allomyprof/user', '::1', '2022-03-25', '01:34:49'),
(72, '/allomyprof/profile', '::1', '2022-03-25', '01:34:49'),
(73, '/allomyprof/settings', '::1', '2022-03-25', '01:34:56'),
(74, '/allomyprof/settings', '::1', '2022-03-25', '01:36:05'),
(75, '/allomyprof/settings', '::1', '2022-03-25', '01:38:24'),
(76, '/allomyprof/settings', '::1', '2022-03-25', '01:38:53'),
(77, '/allomyprof/settings', '::1', '2022-03-25', '01:39:10'),
(78, '/allomyprof/teacher?id=12', '::1', '2022-03-25', '01:39:13'),
(79, '/allomyprof/teacher?id=12', '::1', '2022-03-25', '01:39:24'),
(80, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '01:39:27'),
(81, '/allomyprof/teacher?id=2', '::1', '2022-03-25', '01:39:36'),
(82, '/allomyprof/teacher?id=12', '::1', '2022-03-25', '01:39:40'),
(83, '/allomyprof/recherche', '::1', '2022-03-25', '01:39:45'),
(84, '/allomyprof/recherche', '::1', '2022-03-25', '01:41:06'),
(85, '/allomyprof/recherche', '::1', '2022-03-25', '01:41:10'),
(86, '/allomyprof/recherche', '::1', '2022-03-25', '01:41:36'),
(87, '/allomyprof/recherche', '::1', '2022-03-25', '01:42:58'),
(88, '/allomyprof/recherche', '::1', '2022-03-25', '01:45:41'),
(89, '/allomyprof/settings', '::1', '2022-03-25', '01:45:43'),
(90, '/allomyprof/settings', '::1', '2022-03-25', '01:45:56'),
(91, '/allomyprof/settings', '::1', '2022-03-25', '01:46:12'),
(92, '/allomyprof/', '::1', '2022-03-27', '18:33:19'),
(93, '/allomyprof/', '::1', '2022-03-27', '18:35:16'),
(94, '/allomyprof/', '::1', '2022-03-27', '22:36:52'),
(95, '/allomyprof/recherche?ville=Ayt+Mohamed&matiere=franch&nomprof=', '::1', '2022-03-27', '22:36:59'),
(96, '/allomyprof/index', '::1', '2022-03-27', '22:42:58'),
(97, '/allomyprof/settings', '::1', '2022-03-27', '22:53:57'),
(98, '/allomyprof/configuration', '::1', '2022-03-27', '22:53:57'),
(99, '/allomyprof/logout', '::1', '2022-03-27', '22:57:23'),
(100, '/allomyprof/login', '::1', '2022-03-27', '22:57:23'),
(101, '/allomyprof/signup', '::1', '2022-03-27', '22:57:40'),
(102, '/allomyprof/configuration', '::1', '2022-03-27', '22:57:54'),
(103, '/allomyprof/logout', '::1', '2022-03-27', '22:59:00'),
(104, '/allomyprof/login', '::1', '2022-03-27', '22:59:00'),
(105, '/allomyprof/signup', '::1', '2022-03-27', '22:59:07'),
(106, '/allomyprof/signup', '::1', '2022-03-27', '22:59:29'),
(107, '/allomyprof/configuration', '::1', '2022-03-27', '22:59:50'),
(108, '/allomyprof/settings', '::1', '2022-03-27', '22:59:58'),
(109, '/allomyprof/configuration', '::1', '2022-03-27', '22:59:58'),
(110, '/allomyprof/user', '::1', '2022-03-27', '23:00:38'),
(111, '/allomyprof/profile', '::1', '2022-03-27', '23:00:38'),
(112, '/allomyprof/profile', '::1', '2022-03-27', '23:02:19'),
(113, '/allomyprof/configuration', '::1', '2022-03-27', '23:02:19'),
(114, '/allomyprof/user', '::1', '2022-03-27', '23:02:41'),
(115, '/allomyprof/profile', '::1', '2022-03-27', '23:02:41'),
(116, '/allomyprof/profile', '::1', '2022-03-27', '23:03:25'),
(117, '/allomyprof/configuration', '::1', '2022-03-27', '23:03:25'),
(118, '/allomyprof/user', '::1', '2022-03-27', '23:03:47'),
(119, '/allomyprof/profile', '::1', '2022-03-27', '23:03:47'),
(120, '/allomyprof/profile', '::1', '2022-03-27', '23:04:14'),
(121, '/allomyprof/configuration', '::1', '2022-03-27', '23:04:14'),
(122, '/allomyprof/', '::1', '2022-03-28', '16:45:32'),
(123, '/allomyprof/', '::1', '2022-03-28', '16:47:35'),
(124, '/allomyprof/settings', '::1', '2022-03-28', '16:47:38'),
(125, '/allomyprof/configuration', '::1', '2022-03-28', '16:47:38'),
(126, '/allomyprof/logout', '::1', '2022-03-28', '16:47:43'),
(127, '/allomyprof/login', '::1', '2022-03-28', '16:47:43'),
(128, '/allomyprof/', '::1', '2022-03-28', '16:52:08'),
(129, '/allomyprof/recherche?ville=Douar+Ouled+Ayad&matiere=franch&nomprof=', '::1', '2022-03-28', '16:52:31'),
(130, '/allomyprof/recherche?ville=Casablanca&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-03-28', '16:53:22'),
(131, '/allomyprof/recherche', '::1', '2022-03-28', '16:53:27'),
(132, '/allomyprof/teacher?id=2', '::1', '2022-03-28', '16:53:30'),
(133, '/allomyprof/teacher?id=2', '::1', '2022-03-28', '16:54:02'),
(134, '/allomyprof/teacher?id=2', '::1', '2022-03-28', '16:54:13'),
(135, '/allomyprof/index', '::1', '2022-03-28', '17:15:46'),
(136, '/allomyprof/index', '::1', '2022-03-28', '17:16:06'),
(137, '/allomyprof/index', '::1', '2022-03-28', '17:16:54'),
(138, '/allomyprof/index', '::1', '2022-03-28', '17:17:07'),
(139, '/allomyprof/index', '::1', '2022-03-28', '17:18:33'),
(140, '/allomyprof/index', '::1', '2022-03-28', '17:18:59'),
(141, '/allomyprof/index', '::1', '2022-03-28', '17:21:52'),
(142, '/allomyprof/index', '::1', '2022-03-28', '17:22:06'),
(143, '/allomyprof/index', '::1', '2022-03-28', '17:22:21'),
(144, '/allomyprof/index', '::1', '2022-03-28', '17:23:00'),
(145, '/allomyprof/index', '::1', '2022-03-28', '17:26:29'),
(146, '/allomyprof/index', '::1', '2022-03-28', '17:36:52'),
(147, '/allomyprof/index', '::1', '2022-03-28', '17:37:29'),
(148, '/allomyprof/index', '::1', '2022-03-28', '17:37:53'),
(149, '/allomyprof/index', '::1', '2022-03-28', '17:37:55'),
(150, '/allomyprof/index', '::1', '2022-03-28', '17:39:18'),
(151, '/allomyprof/index', '::1', '2022-03-28', '17:39:35'),
(152, '/allomyprof/index', '::1', '2022-03-28', '17:39:50'),
(153, '/allomyprof/index', '::1', '2022-03-28', '17:40:06'),
(154, '/allomyprof/index', '::1', '2022-03-28', '17:40:17'),
(155, '/allomyprof/index', '::1', '2022-03-28', '17:40:39'),
(156, '/allomyprof/index', '::1', '2022-03-28', '17:41:02'),
(157, '/allomyprof/index', '::1', '2022-03-28', '17:42:34'),
(158, '/allomyprof/index', '::1', '2022-03-28', '17:43:10'),
(159, '/allomyprof/index', '::1', '2022-03-28', '17:49:51'),
(160, '/allomyprof/index', '::1', '2022-03-28', '17:51:02'),
(161, '/allomyprof/index', '::1', '2022-03-28', '17:52:09'),
(162, '/allomyprof/index', '::1', '2022-03-28', '20:38:01'),
(163, '/allomyprof/index', '::1', '2022-03-28', '20:38:26'),
(164, '/allomyprof/index', '::1', '2022-03-28', '20:38:56'),
(165, '/allomyprof/index', '::1', '2022-03-28', '20:39:06'),
(166, '/allomyprof/index', '::1', '2022-03-28', '20:39:40'),
(167, '/allomyprof/index', '::1', '2022-03-28', '20:39:52'),
(168, '/allomyprof/index', '::1', '2022-03-28', '20:40:33'),
(169, '/allomyprof/index', '::1', '2022-03-28', '20:40:43'),
(170, '/allomyprof/index', '::1', '2022-03-28', '20:43:15'),
(171, '/allomyprof/index', '::1', '2022-03-28', '20:43:32'),
(172, '/allomyprof/index', '::1', '2022-03-28', '20:43:45'),
(173, '/allomyprof/index', '::1', '2022-03-28', '20:44:13'),
(174, '/allomyprof/index', '::1', '2022-03-28', '20:45:35'),
(175, '/allomyprof/index', '::1', '2022-03-28', '20:47:14'),
(176, '/allomyprof/teacher?id=1', '192.168.1.5', '2022-03-28', '20:49:28'),
(177, '/allomyprof/index', '192.168.1.5', '2022-03-28', '20:49:29'),
(178, '/allomyprof/privacy-policity', '192.168.1.5', '2022-03-28', '20:50:05'),
(179, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:51:57'),
(180, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:54:50'),
(181, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:57:45'),
(182, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:57:49'),
(183, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:57:57'),
(184, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:58:07'),
(185, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:58:15'),
(186, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:58:20'),
(187, '/allomyprof/privacy-policity', '::1', '2022-03-28', '20:58:27'),
(188, '/allomyprof/privacy-policity', '192.168.1.5', '2022-03-28', '21:01:58'),
(189, '/allomyprof/index', '::1', '2022-03-28', '21:17:09'),
(190, '/allomyprof/index', '::1', '2022-03-28', '21:34:29'),
(191, '/allomyprof/index', '::1', '2022-03-28', '21:35:14'),
(192, '/allomyprof/index', '::1', '2022-03-28', '21:35:45'),
(193, '/allomyprof/index', '::1', '2022-03-28', '21:35:47'),
(194, '/allomyprof/index', '::1', '2022-03-28', '21:36:01'),
(195, '/allomyprof/', '::1', '2022-03-30', '10:16:29'),
(196, '/allomyprof/login', '::1', '2022-03-30', '10:16:32'),
(197, '/allomyprof/', '::1', '2022-03-30', '15:35:37'),
(198, '/allomyprof/', '::1', '2022-03-30', '17:36:38'),
(199, '/allomyprof/', '::1', '2022-03-30', '17:36:41'),
(200, '/allomyprof/', '::1', '2022-03-30', '17:37:08'),
(201, '/allomyprof/', '::1', '2022-03-30', '18:05:49'),
(202, '/allomyprof/', '::1', '2022-03-30', '18:08:52'),
(203, '/allomyprof/', '::1', '2022-03-30', '18:11:17'),
(204, '/allomyprof/', '::1', '2022-03-30', '18:14:29'),
(205, '/allomyprof/', '::1', '2022-03-30', '18:17:08'),
(206, '/allomyprof/', '::1', '2022-03-30', '18:31:17'),
(207, '/allomyprof/', '::1', '2022-03-30', '18:37:45'),
(208, '/allomyprof/recherche', '::1', '2022-03-30', '18:37:49'),
(209, '/index', '105.69.249.113', '2022-03-30', '18:40:31'),
(210, '/recherche', '105.69.249.113', '2022-03-30', '18:40:32'),
(211, '/index', '105.69.249.113', '2022-03-30', '18:40:40'),
(212, '/', '105.69.249.113', '2022-03-30', '18:45:15'),
(213, '/', '105.71.7.195', '2022-03-30', '19:29:49'),
(214, '/', '105.71.7.195', '2022-03-30', '19:30:16'),
(215, '/', '105.71.7.195', '2022-03-31', '04:06:04'),
(216, '/', '105.71.7.195', '2022-03-31', '04:06:11'),
(217, '/', '105.71.7.195', '2022-03-31', '04:06:30'),
(218, '/', '41.249.104.169', '2022-03-31', '11:19:49'),
(219, '/', '105.69.225.25', '2022-03-31', '18:21:19'),
(220, '/logout', '105.69.225.25', '2022-03-31', '18:21:36'),
(221, '/login', '105.69.225.25', '2022-03-31', '18:21:37'),
(222, '/login', '105.69.225.25', '2022-03-31', '18:21:55'),
(223, '/index', '105.69.225.25', '2022-03-31', '18:21:59'),
(224, '/', '105.71.134.41', '2022-03-31', '22:06:47'),
(225, '/index', '105.69.237.53', '2022-04-01', '12:28:29'),
(226, '/', '196.70.97.82', '2022-04-03', '21:18:16'),
(227, '/', '196.70.97.82', '2022-04-03', '21:19:48'),
(228, '/', '196.70.97.82', '2022-04-03', '21:20:15'),
(229, '/', '196.70.97.82', '2022-04-03', '21:20:32'),
(230, '/index', '196.70.97.82', '2022-04-03', '21:20:41'),
(231, '/', '196.70.97.82', '2022-04-03', '21:20:47'),
(232, '/', '196.70.97.82', '2022-04-03', '21:20:51'),
(233, '/', '196.70.97.82', '2022-04-03', '21:21:05'),
(234, '/', '196.70.97.82', '2022-04-03', '21:21:33'),
(235, '/recherche?ville=F%C3%A8s&matiere=franch&nomprof=', '196.70.97.82', '2022-04-03', '21:21:50'),
(236, '/recherche?ville=F%C3%A8s&matiere=franch&nomprof=', '196.70.97.82', '2022-04-03', '21:22:19'),
(237, '/recherche?ville=Casablanca&matiere=franch&nomprof=hoss&btnsubmit=se', '196.70.97.82', '2022-04-03', '21:22:49'),
(238, '/login', '196.70.97.82', '2022-04-03', '21:23:01'),
(239, '/signup', '196.70.97.82', '2022-04-03', '21:23:11'),
(240, '/configuration', '196.70.97.82', '2022-04-03', '21:23:43'),
(241, '/user', '196.70.97.82', '2022-04-03', '21:25:06'),
(242, '/profile', '196.70.97.82', '2022-04-03', '21:25:12'),
(243, '/settings', '196.70.97.82', '2022-04-03', '21:25:51'),
(244, '/teacher?id=15', '196.70.97.82', '2022-04-03', '21:26:36'),
(245, '/user', '196.70.97.82', '2022-04-03', '21:28:19'),
(246, '/user', '196.70.97.82', '2022-04-03', '21:28:19'),
(247, '/', '196.64.254.125', '2022-04-03', '22:19:39'),
(248, '/', '196.64.254.125', '2022-04-03', '22:21:16'),
(249, '/recherche?ville=Casablanca&matiere=franch&nomprof=', '196.64.254.125', '2022-04-03', '22:21:22'),
(250, '/recherche?ville=Casablanca&matiere=franch&nomprof=sal&btnsubmit=se', '196.64.254.125', '2022-04-03', '22:21:30'),
(251, '/teacher?id=2', '196.64.254.125', '2022-04-03', '22:21:32'),
(252, '/teacher?id=2', '196.64.254.125', '2022-04-03', '22:21:56'),
(253, '/teacher?id=2', '196.64.254.125', '2022-04-03', '22:25:36'),
(254, '/teacher?id=2', '196.64.254.125', '2022-04-03', '22:25:40'),
(255, '/teacher?id=2', '196.64.254.125', '2022-04-03', '22:26:03'),
(256, '/index', '196.64.254.125', '2022-04-03', '22:26:07'),
(257, '/index', '196.64.254.125', '2022-04-03', '22:27:29'),
(258, '/recherche', '196.64.254.125', '2022-04-03', '22:29:16'),
(259, '/teacher?id=2', '196.64.254.125', '2022-04-03', '22:29:52'),
(260, '/login', '196.64.254.125', '2022-04-03', '22:30:01'),
(261, '/signup', '196.64.254.125', '2022-04-03', '22:30:07'),
(262, '/configuration', '196.64.254.125', '2022-04-03', '22:30:19'),
(263, '/faq', '196.64.254.125', '2022-04-03', '22:45:23'),
(264, '/allomyprof/', '::1', '2022-04-04', '00:47:36'),
(265, '/allomyprof/recherche', '::1', '2022-04-04', '00:48:15'),
(266, '/allomyprof/teacher?id=2', '::1', '2022-04-04', '00:48:38'),
(267, '/allomyprof/index', '::1', '2022-04-04', '00:48:49'),
(268, '/allomyprof/index', '::1', '2022-04-04', '00:48:51'),
(269, '/allomyprof/recherche?ville=Casablanca&matiere=finances+publiques&nomprof=', '::1', '2022-04-04', '00:49:19'),
(270, '/allomyprof/recherche?ville=Sale&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-04-04', '00:49:23'),
(271, '/allomyprof/recherche?ville=Casablanca&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-04-04', '00:49:26'),
(272, '/allomyprof/login', '::1', '2022-04-04', '00:52:39'),
(273, '/allomyprof/index', '::1', '2022-04-04', '00:52:46'),
(274, '/allomyprof/index', '::1', '2022-04-04', '00:52:56'),
(275, '/allomyprof/login', '::1', '2022-04-04', '00:52:58'),
(276, '/allomyprof/index', '::1', '2022-04-04', '00:53:01'),
(277, '/allomyprof/login', '::1', '2022-04-04', '00:53:26'),
(278, '/allomyprof/index', '::1', '2022-04-04', '00:54:02'),
(279, '/allomyprof/login', '::1', '2022-04-04', '01:03:52'),
(280, '/allomyprof/index', '::1', '2022-04-04', '01:03:54'),
(281, '/allomyprof/settings', '::1', '2022-04-04', '01:03:59'),
(282, '/allomyprof/configuration', '::1', '2022-04-04', '01:03:59'),
(283, '/allomyprof/configuration', '::1', '2022-04-04', '01:16:58'),
(284, '/allomyprof/settings', '::1', '2022-04-04', '01:17:01'),
(285, '/allomyprof/configuration', '::1', '2022-04-04', '01:17:01'),
(286, '/allomyprof/recherche', '::1', '2022-04-04', '01:17:02'),
(287, '/allomyprof/recherche', '::1', '2022-04-04', '01:17:59'),
(288, '/allomyprof/recherche', '::1', '2022-04-04', '01:18:55'),
(289, '/allomyprof/recherche', '::1', '2022-04-04', '01:19:31'),
(290, '/allomyprof/recherche', '::1', '2022-04-04', '01:20:14'),
(291, '/allomyprof/recherche', '::1', '2022-04-04', '01:20:35'),
(292, '/allomyprof/recherche', '::1', '2022-04-04', '01:21:13'),
(293, '/allomyprof/recherche', '::1', '2022-04-04', '01:21:26'),
(294, '/allomyprof/recherche', '::1', '2022-04-04', '01:21:33'),
(295, '/allomyprof/recherche', '::1', '2022-04-04', '01:22:31'),
(296, '/allomyprof/recherche', '::1', '2022-04-04', '01:23:01'),
(297, '/allomyprof/login', '::1', '2022-04-04', '01:23:02'),
(298, '/allomyprof/login', '::1', '2022-04-04', '01:23:54'),
(299, '/allomyprof/recherche', '::1', '2022-04-04', '01:23:59'),
(300, '/allomyprof/login', '::1', '2022-04-04', '01:23:59'),
(301, '/allomyprof/login', '::1', '2022-04-04', '01:24:00'),
(302, '/allomyprof/recherche', '::1', '2022-04-04', '01:24:03'),
(303, '/allomyprof/login', '::1', '2022-04-04', '01:24:03'),
(304, '/allomyprof/index', '::1', '2022-04-04', '01:24:05'),
(305, '/allomyprof/recherche', '::1', '2022-04-04', '01:24:08'),
(306, '/allomyprof/login', '::1', '2022-04-04', '01:24:08'),
(307, '/allomyprof/login', '::1', '2022-04-04', '01:24:38'),
(308, '/allomyprof/login', '::1', '2022-04-04', '01:24:44'),
(309, '/allomyprof/login', '::1', '2022-04-04', '01:25:37'),
(310, '/allomyprof/recherche', '::1', '2022-04-04', '01:25:40'),
(311, '/allomyprof/recherche', '::1', '2022-04-04', '01:28:36'),
(312, '/allomyprof/recherche', '::1', '2022-04-04', '01:29:34'),
(313, '/allomyprof/recherche', '::1', '2022-04-04', '01:29:37'),
(314, '/allomyprof/recherche', '::1', '2022-04-04', '01:29:38'),
(315, '/allomyprof/recherche', '::1', '2022-04-04', '01:29:39'),
(316, '/allomyprof/recherche', '::1', '2022-04-04', '01:29:42'),
(317, '/allomyprof/recherche', '::1', '2022-04-04', '01:30:20'),
(318, '/allomyprof/recherche', '::1', '2022-04-04', '01:31:13'),
(319, '/allomyprof/recherche', '::1', '2022-04-04', '01:31:43'),
(320, '/allomyprof/recherche', '::1', '2022-04-04', '01:32:06'),
(321, '/allomyprof/recherche', '::1', '2022-04-04', '01:33:16'),
(322, '/allomyprof/recherche', '::1', '2022-04-04', '01:33:32'),
(323, '/allomyprof/recherche', '::1', '2022-04-04', '01:35:06'),
(324, '/allomyprof/login', '::1', '2022-04-04', '01:35:19'),
(325, '/allomyprof/index', '::1', '2022-04-04', '01:35:22'),
(326, '/allomyprof/settings', '::1', '2022-04-04', '01:35:29'),
(327, '/allomyprof/configuration', '::1', '2022-04-04', '01:35:29'),
(328, '/allomyprof/configuration', '::1', '2022-04-04', '01:35:48'),
(329, '/allomyprof/user', '::1', '2022-04-04', '01:37:13'),
(330, '/allomyprof/profile', '::1', '2022-04-04', '01:37:13'),
(331, '/allomyprof/profile', '::1', '2022-04-04', '01:37:19'),
(332, '/allomyprof/settings', '::1', '2022-04-04', '01:37:34'),
(333, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:37:37'),
(334, '/allomyprof/user', '::1', '2022-04-04', '01:37:39'),
(335, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:38:02'),
(336, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:38:40'),
(337, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:39:51'),
(338, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:40:21'),
(339, '/allomyprof/index', '::1', '2022-04-04', '01:40:35'),
(340, '/allomyprof/recherche?ville=Casablanca&matiere=franch&nomprof=', '::1', '2022-04-04', '01:40:43'),
(341, '/allomyprof/recherche?ville=Casablanca&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-04-04', '01:40:58'),
(342, '/allomyprof/recherche?ville=Casablanca&matiere=arabic&nomprof=&btnsubmit=se', '::1', '2022-04-04', '01:41:02'),
(343, '/allomyprof/teacher?id=15', '::1', '2022-04-04', '01:41:06'),
(344, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:41:19'),
(345, '/allomyprof/index', '::1', '2022-04-04', '01:41:23'),
(346, '/allomyprof/index', '::1', '2022-04-04', '01:41:58'),
(347, '/allomyprof/login', '::1', '2022-04-04', '01:42:07'),
(348, '/allomyprof/index', '::1', '2022-04-04', '01:42:09'),
(349, '/allomyprof/settings', '::1', '2022-04-04', '01:42:12'),
(350, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:42:31'),
(351, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:42:36'),
(352, '/allomyprof/login', '::1', '2022-04-04', '01:43:26'),
(353, '/allomyprof/recherche', '::1', '2022-04-04', '01:43:28'),
(354, '/allomyprof/login', '::1', '2022-04-04', '01:43:31'),
(355, '/allomyprof/index', '::1', '2022-04-04', '01:43:38'),
(356, '/allomyprof/login', '::1', '2022-04-04', '01:44:33'),
(357, '/allomyprof/login', '::1', '2022-04-04', '01:44:58'),
(358, '/allomyprof/login', '::1', '2022-04-04', '01:45:00'),
(359, '/allomyprof/index', '::1', '2022-04-04', '01:45:02'),
(360, '/allomyprof/login', '::1', '2022-04-04', '01:45:15'),
(361, '/allomyprof/recherche', '::1', '2022-04-04', '01:45:17'),
(362, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:45:47'),
(363, '/allomyprof/index', '::1', '2022-04-04', '01:45:52'),
(364, '/allomyprof/login', '::1', '2022-04-04', '01:46:22'),
(365, '/allomyprof/login', '::1', '2022-04-04', '01:46:24'),
(366, '/allomyprof/index', '::1', '2022-04-04', '01:46:27'),
(367, '/allomyprof/settings', '::1', '2022-04-04', '01:46:50'),
(368, '/allomyprof/settings', '::1', '2022-04-04', '01:47:55'),
(369, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:47:58'),
(370, '/allomyprof/settings', '::1', '2022-04-04', '01:48:39'),
(371, '/allomyprof/recherche', '::1', '2022-04-04', '01:48:41'),
(372, '/allomyprof/teacher?id=2', '::1', '2022-04-04', '01:48:45'),
(373, '/allomyprof/settings', '::1', '2022-04-04', '01:49:42'),
(374, '/allomyprof/settings', '::1', '2022-04-04', '01:50:00'),
(375, '/allomyprof/configuration', '::1', '2022-04-04', '01:50:01'),
(376, '/allomyprof/user', '::1', '2022-04-04', '01:51:41'),
(377, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:51:56'),
(378, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '01:54:37'),
(379, '/allomyprof/login', '::1', '2022-04-04', '01:58:42'),
(380, '/allomyprof/login', '::1', '2022-04-04', '01:58:47'),
(381, '/allomyprof/login', '::1', '2022-04-04', '01:59:08'),
(382, '/allomyprof/login', '::1', '2022-04-04', '01:59:29'),
(383, '/allomyprof/reset', '::1', '2022-04-04', '01:59:32'),
(384, '/allomyprof/reset', '::1', '2022-04-04', '02:30:19'),
(385, '/allomyprof/resetConfirme', '::1', '2022-04-04', '02:34:43'),
(386, '/allomyprof/resetConfirme', '::1', '2022-04-04', '02:38:25'),
(387, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:05:52'),
(388, '/allomyprof/reset', '::1', '2022-04-04', '03:05:53'),
(389, '/allomyprof/index', '::1', '2022-04-04', '03:05:56'),
(390, '/allomyprof/login', '::1', '2022-04-04', '03:05:58'),
(391, '/allomyprof/reset', '::1', '2022-04-04', '03:06:00'),
(392, '/allomyprof/reset', '::1', '2022-04-04', '03:06:30'),
(393, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:07:02'),
(394, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:11:48'),
(395, '/allomyprof/index', '::1', '2022-04-04', '03:11:48'),
(396, '/allomyprof/login', '::1', '2022-04-04', '03:14:08'),
(397, '/allomyprof/reset', '::1', '2022-04-04', '03:14:13'),
(398, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:14:25'),
(399, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:14:45'),
(400, '/allomyprof/index', '::1', '2022-04-04', '03:14:45'),
(401, '/allomyprof/reset', '::1', '2022-04-04', '03:16:34'),
(402, '/allomyprof/index', '::1', '2022-04-04', '03:16:35'),
(403, '/allomyprof/login', '::1', '2022-04-04', '03:17:11'),
(404, '/allomyprof/reset', '::1', '2022-04-04', '03:17:23'),
(405, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:17:26'),
(406, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:17:40'),
(407, '/allomyprof/index', '::1', '2022-04-04', '03:17:40'),
(408, '/allomyprof/changepassword', '::1', '2022-04-04', '03:18:41'),
(409, '/allomyprof/changepassword', '::1', '2022-04-04', '03:27:58'),
(410, '/allomyprof/login', '::1', '2022-04-04', '03:28:40'),
(411, '/allomyprof/reset', '::1', '2022-04-04', '03:28:43'),
(412, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:28:49'),
(413, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:29:07'),
(414, '/allomyprof/index', '::1', '2022-04-04', '03:29:08'),
(415, '/allomyprof/login', '::1', '2022-04-04', '03:30:02'),
(416, '/allomyprof/reset', '::1', '2022-04-04', '03:30:06'),
(417, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:30:15'),
(418, '/allomyprof/changePassword', '::1', '2022-04-04', '03:30:32'),
(419, '/allomyprof/changePassword', '::1', '2022-04-04', '03:40:27'),
(420, '/allomyprof/user', '::1', '2022-04-04', '03:40:33'),
(421, '/allomyprof/login', '::1', '2022-04-04', '03:40:48'),
(422, '/allomyprof/login', '::1', '2022-04-04', '03:41:11'),
(423, '/allomyprof/reset', '::1', '2022-04-04', '03:41:14'),
(424, '/allomyprof/resetConfirme', '::1', '2022-04-04', '03:41:26'),
(425, '/allomyprof/changePassword', '::1', '2022-04-04', '03:44:56'),
(426, '/allomyprof/user', '::1', '2022-04-04', '03:48:05'),
(427, '/allomyprof/login', '::1', '2022-04-04', '03:48:12'),
(428, '/allomyprof/login', '::1', '2022-04-04', '03:48:35'),
(429, '/allomyprof/index', '::1', '2022-04-04', '03:48:49'),
(430, '/allomyprof/settings', '::1', '2022-04-04', '03:48:57'),
(431, '/allomyprof/teacher?id=16', '::1', '2022-04-04', '03:49:00'),
(432, '/allomyprof/user', '::1', '2022-04-04', '03:49:04'),
(433, '/allomyprof/login', '::1', '2022-04-04', '03:50:01'),
(434, '/allomyprof/login', '::1', '2022-04-04', '03:51:37'),
(435, '/allomyprof/login', '::1', '2022-04-04', '03:53:56'),
(436, '/allomyprof/reset', '::1', '2022-04-04', '03:53:59'),
(437, '/allomyprof/login', '::1', '2022-04-04', '04:19:06'),
(438, '/allomyprof/reset', '::1', '2022-04-04', '04:19:08'),
(439, '/allomyprof/resetConfirme', '::1', '2022-04-04', '04:19:23'),
(440, '/allomyprof/login', '::1', '2022-04-04', '04:19:32'),
(441, '/allomyprof/reset', '::1', '2022-04-04', '04:19:43'),
(442, '/allomyprof/', '::1', '2022-04-04', '04:51:35'),
(443, '/allomyprof/recherche', '::1', '2022-04-04', '04:54:16'),
(444, '/allomyprof/signup', '::1', '2022-04-04', '04:54:42'),
(445, '/allomyprof/configuration', '::1', '2022-04-04', '04:55:08'),
(446, '/allomyprof/user', '::1', '2022-04-04', '04:55:54'),
(447, '/allomyprof/profile', '::1', '2022-04-04', '04:55:54'),
(448, '/allomyprof/settings', '::1', '2022-04-04', '04:56:02'),
(449, '/allomyprof/teacher?id=17', '::1', '2022-04-04', '04:56:06'),
(450, '/allomyprof/login', '::1', '2022-04-04', '04:57:48'),
(451, '/allomyprof/reset', '::1', '2022-04-04', '04:57:54'),
(452, '/allomyprof/resetConfirme', '::1', '2022-04-04', '04:58:03'),
(453, '/allomyprof/resetConfirme', '::1', '2022-04-04', '05:00:09'),
(454, '/allomyprof/login', '::1', '2022-04-04', '05:00:13'),
(455, '/allomyprof/', '::1', '2022-04-05', '17:39:24'),
(456, '/allomyprof/', '::1', '2022-04-07', '17:01:42'),
(457, '/allomyprof/login', '::1', '2022-04-07', '17:01:45'),
(458, '/allomyprof/signup', '::1', '2022-04-07', '17:01:47'),
(459, '/allomyprof/configuration', '::1', '2022-04-07', '17:02:04'),
(460, '/allomyprof/user', '::1', '2022-04-07', '17:02:45'),
(461, '/allomyprof/profile', '::1', '2022-04-07', '17:02:45'),
(462, '/allomyprof/profile', '::1', '2022-04-07', '17:04:20'),
(463, '/allomyprof/settings', '::1', '2022-04-07', '17:06:25'),
(464, '/allomyprof/settings', '::1', '2022-04-07', '17:08:30'),
(465, '/allomyprof/settings', '::1', '2022-04-07', '17:08:39'),
(466, '/allomyprof/settings', '::1', '2022-04-07', '17:24:16'),
(467, '/allomyprof/', '::1', '2022-04-08', '13:39:59'),
(468, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:40:03'),
(469, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:44:09'),
(470, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:44:53'),
(471, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:45:27'),
(472, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:48:09'),
(473, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:51:06'),
(474, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:52:20'),
(475, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:54:59'),
(476, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '13:57:35'),
(477, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:02:15'),
(478, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:03:01'),
(479, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:03:40'),
(480, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:06:11'),
(481, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:08:38'),
(482, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:08:59'),
(483, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:09:08'),
(484, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:09:35'),
(485, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:12:55'),
(486, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:15:15'),
(487, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:16:07'),
(488, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:16:39'),
(489, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:20:37'),
(490, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:23:12'),
(491, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:24:16'),
(492, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:26:06'),
(493, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:33:51'),
(494, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:35:32'),
(495, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:35:55'),
(496, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:40:49'),
(497, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:47:36'),
(498, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '14:54:05'),
(499, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '15:06:07'),
(500, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '15:08:38'),
(501, '/allomyprof/recherche', '::1', '2022-04-08', '15:11:37'),
(502, '/allomyprof/recherche', '::1', '2022-04-08', '15:17:39'),
(503, '/allomyprof/recherche', '::1', '2022-04-08', '15:18:00'),
(504, '/allomyprof/recherche?ville=Casablanca&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-04-08', '15:20:12'),
(505, '/allomyprof/recherche?ville=Casablanca&matiere=probabilite&nomprof=&btnsubmit=se', '::1', '2022-04-08', '15:20:18'),
(506, '/allomyprof/settings', '::1', '2022-04-08', '15:20:24'),
(507, '/allomyprof/teacher?id=18', '::1', '2022-04-08', '15:20:26'),
(508, '/allomyprof/user', '::1', '2022-04-08', '15:20:31'),
(509, '/allomyprof/user', '::1', '2022-04-08', '15:22:07'),
(510, '/allomyprof/user', '::1', '2022-04-08', '15:26:31'),
(511, '/allomyprof/user', '::1', '2022-04-08', '15:28:51'),
(512, '/allomyprof/user', '::1', '2022-04-08', '15:29:19'),
(513, '/allomyprof/user', '::1', '2022-04-08', '15:29:25'),
(514, '/allomyprof/user', '::1', '2022-04-08', '15:29:29'),
(515, '/allomyprof/user', '::1', '2022-04-08', '15:29:31'),
(516, '/allomyprof/user', '::1', '2022-04-08', '15:39:09'),
(517, '/allomyprof/user', '::1', '2022-04-08', '16:00:42'),
(518, '/allomyprof/login', '::1', '2022-04-08', '16:03:24'),
(519, '/allomyprof/login', '::1', '2022-04-08', '16:07:09'),
(520, '/allomyprof/login', '::1', '2022-04-08', '16:09:34'),
(521, '/allomyprof/reset', '::1', '2022-04-08', '16:12:00'),
(522, '/allomyprof/reset', '::1', '2022-04-08', '16:12:10'),
(523, '/allomyprof/reset', '::1', '2022-04-08', '16:17:00'),
(524, '/allomyprof/resetConfirme', '::1', '2022-04-08', '16:18:23'),
(525, '/allomyprof/reset', '::1', '2022-04-08', '17:09:40'),
(526, '/allomyprof/reset', '::1', '2022-04-08', '17:12:33'),
(527, '/allomyprof/reset', '::1', '2022-04-08', '17:17:19'),
(528, '/allomyprof/reset', '::1', '2022-04-08', '17:18:01'),
(529, '/allomyprof/reset', '::1', '2022-04-08', '17:20:32'),
(530, '/allomyprof/reset', '::1', '2022-04-08', '17:23:46'),
(531, '/allomyprof/', '::1', '2022-04-08', '18:03:38'),
(532, '/allomyprof/recherche', '::1', '2022-04-08', '18:03:45'),
(533, '/allomyprof/recherche', '::1', '2022-04-08', '18:07:06'),
(534, '/allomyprof/recherche', '::1', '2022-04-08', '18:08:12'),
(535, '/allomyprof/recherche', '::1', '2022-04-08', '18:08:29'),
(536, '/allomyprof/recherche', '::1', '2022-04-08', '18:13:07'),
(537, '/allomyprof/recherche', '::1', '2022-04-08', '18:13:34'),
(538, '/allomyprof/recherche', '::1', '2022-04-08', '18:13:49'),
(539, '/allomyprof/recherche', '::1', '2022-04-08', '18:14:33'),
(540, '/allomyprof/index', '::1', '2022-04-08', '18:14:37'),
(541, '/allomyprof/index', '::1', '2022-04-08', '18:14:40'),
(542, '/allomyprof/index', '::1', '2022-04-08', '18:14:43'),
(543, '/allomyprof/index', '::1', '2022-04-08', '18:14:45'),
(544, '/allomyprof/login', '::1', '2022-04-08', '18:14:47'),
(545, '/allomyprof/signup', '::1', '2022-04-08', '18:14:50'),
(546, '/allomyprof/recherche', '::1', '2022-04-08', '18:15:12'),
(547, '/allomyprof/login', '::1', '2022-04-08', '18:16:13'),
(548, '/allomyprof/index', '::1', '2022-04-08', '18:16:47'),
(549, '/allomyprof/user', '::1', '2022-04-08', '18:17:17'),
(550, '/allomyprof/teacher?id=4', '::1', '2022-04-08', '18:17:36'),
(551, '/allomyprof/user', '::1', '2022-04-08', '18:18:19'),
(552, '/allomyprof/user', '::1', '2022-04-08', '18:18:32'),
(553, '/allomyprof/user', '::1', '2022-04-08', '18:18:49'),
(554, '/allomyprof/user', '::1', '2022-04-08', '18:20:27'),
(555, '/allomyprof/index', '::1', '2022-04-08', '18:21:06'),
(556, '/allomyprof/settings', '::1', '2022-04-08', '18:21:09'),
(557, '/allomyprof/', '::1', '2022-04-11', '01:27:15'),
(558, '/allomyprof/recherche', '::1', '2022-04-11', '01:27:22'),
(559, '/allomyprof/recherche', '::1', '2022-04-11', '01:28:22'),
(560, '/allomyprof/recherche', '::1', '2022-04-11', '01:28:45'),
(561, '/allomyprof/recherche', '::1', '2022-04-11', '01:29:03'),
(562, '/allomyprof/recherche', '::1', '2022-04-11', '01:29:18'),
(563, '/allomyprof/recherche', '::1', '2022-04-11', '01:31:10'),
(564, '/allomyprof/recherche', '::1', '2022-04-11', '01:38:31'),
(565, '/allomyprof/recherche', '::1', '2022-04-11', '01:42:09'),
(566, '/allomyprof/recherche', '::1', '2022-04-11', '01:46:33'),
(567, '/allomyprof/recherche', '::1', '2022-04-11', '01:47:13'),
(568, '/allomyprof/recherche', '::1', '2022-04-11', '01:48:39'),
(569, '/allomyprof/recherche', '::1', '2022-04-11', '01:49:53'),
(570, '/allomyprof/', '::1', '2022-04-11', '03:41:27'),
(571, '/allomyprof/recherche', '::1', '2022-04-11', '03:44:04'),
(572, '/allomyprof/recherche', '::1', '2022-04-11', '04:07:00'),
(573, '/allomyprof/recherche?ville=Casablanca&matiere=franch&nomprof=hossam&btnsubmit=se', '::1', '2022-04-11', '04:07:12'),
(574, '/allomyprof/recherche?ville=Casablanca&matiere=franch&nomprof=hossam&btnsubmit=se', '::1', '2022-04-11', '04:08:05'),
(575, '/allomyprof/recherche?ville=Casablanca&matiere=franch&nomprof=&btnsubmit=se', '::1', '2022-04-11', '04:08:13'),
(576, '/allomyprof/recherche?ville=Casablanca&matiere=arabic&nomprof=&btnsubmit=se', '::1', '2022-04-11', '04:08:22'),
(577, '/allomyprof/recherche?', '::1', '2022-04-11', '04:08:28'),
(578, '/allomyprof/recherche?', '::1', '2022-04-11', '04:15:49'),
(579, '/allomyprof/recherche?page=1', '::1', '2022-04-11', '04:16:16'),
(580, '/allomyprof/recherche?page=1', '::1', '2022-04-11', '04:17:09'),
(581, '/allomyprof/recherche?page=2', '::1', '2022-04-11', '04:17:16'),
(582, '/allomyprof/recherche?page=1', '::1', '2022-04-11', '04:17:24'),
(583, '/allomyprof/recherche?page=1', '::1', '2022-04-11', '04:17:57'),
(584, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:18:01'),
(585, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:18:26'),
(586, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:18:28'),
(587, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:19:01'),
(588, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:19:03'),
(589, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:19:17'),
(590, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:19:19'),
(591, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:19:22'),
(592, '/allomyprof/recherche?page=1', '::1', '2022-04-11', '04:19:25'),
(593, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:20:16'),
(594, '/allomyprof/recherche?page=3', '::1', '2022-04-11', '04:21:07'),
(595, '/allomyprof/index', '::1', '2022-04-11', '04:21:07'),
(596, '/allomyprof/recherche?page=4', '::1', '2022-04-11', '04:21:32'),
(597, '/allomyprof/recherche.php', '::1', '2022-04-11', '04:21:33'),
(598, '/allomyprof/recherche.php', '::1', '2022-04-11', '04:21:54'),
(599, '/allomyprof/recherche.php', '::1', '2022-04-11', '04:23:46'),
(600, '/allomyprof/', '::1', '2022-04-12', '22:40:24'),
(601, '/allomyprof/login', '::1', '2022-04-12', '22:40:33'),
(602, '/allomyprof/index', '::1', '2022-04-12', '22:40:44'),
(603, '/allomyprof/index', '::1', '2022-04-12', '22:46:12'),
(604, '/allomyprof/', '192.168.68.164', '2022-04-12', '22:46:30'),
(605, '/allomyprof/', '192.168.68.164', '2022-04-12', '23:10:58'),
(606, '/allomyprof/', '192.168.68.164', '2022-04-12', '23:11:01'),
(607, '/allomyprof/login', '192.168.68.164', '2022-04-12', '23:12:52'),
(608, '/allomyprof/signup', '192.168.68.164', '2022-04-12', '23:15:41'),
(609, '/allomyprof/configuration', '192.168.68.164', '2022-04-12', '23:16:06'),
(610, '/allomyprof/index', '::1', '2022-04-12', '23:28:13'),
(611, '/allomyprof/index', '::1', '2022-04-12', '23:29:22'),
(612, '/allomyprof/index', '::1', '2022-04-12', '23:29:28'),
(613, '/allomyprof/index', '::1', '2022-04-12', '23:31:17'),
(614, '/allomyprof/index', '::1', '2022-04-12', '23:32:09'),
(615, '/allomyprof/index', '::1', '2022-04-12', '23:32:44'),
(616, '/allomyprof/index', '::1', '2022-04-12', '23:33:34'),
(617, '/allomyprof/recherche', '::1', '2022-04-12', '23:34:23'),
(618, '/allomyprof/recherche?ville=Casablanca&matiere=fran%C3%A7ais&nomprof=ho&btnsubmit=se', '::1', '2022-04-12', '23:34:45'),
(619, '/allomyprof/signup', '::1', '2022-04-12', '23:43:39'),
(620, '/allomyprof/login', '::1', '2022-04-12', '23:43:51'),
(621, '/allomyprof/reset', '::1', '2022-04-12', '23:43:53'),
(622, '/allomyprof/resetConfirme', '::1', '2022-04-12', '23:44:14'),
(623, '/allomyprof/resetConfirme', '::1', '2022-04-12', '23:48:10'),
(624, '/allomyprof/resetConfirme', '::1', '2022-04-12', '23:48:13'),
(625, '/allomyprof/resetConfirme', '::1', '2022-04-12', '23:49:08'),
(626, '/allomyprof/resetConfirme', '::1', '2022-04-12', '23:50:36'),
(627, '/allomyprof/resetConfirme', '::1', '2022-04-12', '23:58:19'),
(628, '/allomyprof/resetConfirme', '::1', '2022-04-12', '23:59:16'),
(629, '/allomyprof/configuration', '192.168.68.164', '2022-04-12', '23:59:47'),
(630, '/allomyprof/index', '192.168.68.164', '2022-04-12', '23:59:57'),
(631, '/allomyprof/index', '192.168.68.164', '2022-04-12', '23:59:59'),
(632, '/allomyprof/index', '192.168.68.164', '2022-04-13', '00:00:09'),
(633, '/allomyprof/', '192.168.68.249', '2022-04-13', '00:01:08'),
(634, '/allomyprof/', '192.168.68.249', '2022-04-13', '00:01:08'),
(635, '/allomyprof/', '192.168.68.249', '2022-04-13', '00:02:06'),
(636, '/allomyprof/', '192.168.68.249', '2022-04-13', '00:05:49'),
(637, '/allomyprof/', '192.168.68.249', '2022-04-13', '00:07:07'),
(638, '/allomyprof/', '192.168.68.249', '2022-04-13', '00:07:15'),
(639, '/allomyprof/', '192.168.68.249', '2022-04-13', '00:07:25'),
(640, '/allomyprof/resetConfirme', '::1', '2022-04-13', '00:07:50'),
(641, '/allomyprof/resetConfirme', '::1', '2022-04-13', '00:07:56'),
(642, '/allomyprof/', '192.168.68.249', '2022-04-13', '00:08:21'),
(643, '/allomyprof/index', '::1', '2022-04-13', '00:08:30'),
(644, '/allomyprof/settings', '192.168.68.164', '2022-04-13', '00:09:51'),
(645, '/allomyprof/configuration', '192.168.68.164', '2022-04-13', '00:09:51'),
(646, '/allomyprof/user', '192.168.68.164', '2022-04-13', '00:11:41'),
(647, '/allomyprof/profile', '192.168.68.164', '2022-04-13', '00:11:41'),
(648, '/allomyprof/settings', '192.168.68.164', '2022-04-13', '00:11:59'),
(649, '/allomyprof/user', '192.168.68.164', '2022-04-13', '00:12:12'),
(650, '/allomyprof/user', '192.168.68.164', '2022-04-13', '00:12:29'),
(651, '/allomyprof/user', '192.168.68.164', '2022-04-13', '00:13:16'),
(652, '/allomyprof/user', '192.168.68.164', '2022-04-13', '00:13:42'),
(653, '/allomyprof/user', '192.168.68.164', '2022-04-13', '00:13:54'),
(654, '/allomyprof/teacher?id=19', '192.168.68.164', '2022-04-13', '00:14:08'),
(655, '/allomyprof/index', '192.168.68.164', '2022-04-13', '00:14:31'),
(656, '/allomyprof/recherche', '192.168.68.164', '2022-04-13', '00:15:33'),
(657, '/allomyprof/recherche', '::1', '2022-04-13', '00:15:48'),
(658, '/allomyprof/recherche', '192.168.68.164', '2022-04-13', '00:16:43'),
(659, '/allomyprof/index', '192.168.68.164', '2022-04-13', '00:16:45'),
(660, '/allomyprof/index', '::1', '2022-04-13', '00:21:33'),
(661, '/allomyprof/index', '192.168.68.164', '2022-04-13', '00:21:38'),
(662, '/allomyprof/index', '192.168.68.164', '2022-04-13', '00:21:41'),
(663, '/allomyprof/login', '192.168.68.164', '2022-04-13', '00:21:44'),
(664, '/allomyprof/index', '192.168.68.164', '2022-04-13', '00:21:48'),
(665, '/allomyprof/', '::1', '2022-04-15', '03:41:50'),
(666, '/allomyprof/recherche', '::1', '2022-04-15', '03:42:08'),
(667, '/allomyprof/recherche', '::1', '2022-04-15', '03:42:50'),
(668, '/allomyprof/recherche', '::1', '2022-04-15', '03:44:37'),
(669, '/allomyprof/recherche', '::1', '2022-04-15', '03:44:42'),
(670, '/allomyprof/teacher?id=2', '::1', '2022-04-15', '03:45:30'),
(671, '/allomyprof/teacher?id=5', '::1', '2022-04-15', '03:45:39'),
(672, '/allomyprof/teacher?id=5', '::1', '2022-04-15', '03:46:52'),
(673, '/allomyprof/teacher?id=5', '::1', '2022-04-15', '03:47:48'),
(674, '/allomyprof/recherche', '::1', '2022-04-15', '03:47:59'),
(675, '/allomyprof/index', '::1', '2022-04-15', '03:48:01'),
(676, '/allomyprof/login', '::1', '2022-04-15', '03:48:03'),
(677, '/allomyprof/login', '::1', '2022-04-15', '03:49:18'),
(678, '/allomyprof/signup', '::1', '2022-04-15', '03:49:29'),
(679, '/allomyprof/signup', '::1', '2022-04-15', '03:49:49'),
(680, '/allomyprof/signup', '::1', '2022-04-15', '03:59:31'),
(681, '/allomyprof/signup', '::1', '2022-04-15', '04:01:45'),
(682, '/allomyprof/login', '::1', '2022-04-15', '04:04:03'),
(683, '/allomyprof/reset', '::1', '2022-04-15', '04:07:40'),
(684, '/allomyprof/signup', '::1', '2022-04-15', '04:08:37'),
(685, '/allomyprof/signup', '::1', '2022-04-15', '04:15:14'),
(686, '/allomyprof/signup', '::1', '2022-04-15', '04:15:25'),
(687, '/allomyprof/signup', '::1', '2022-04-15', '04:15:58'),
(688, '/allomyprof/signup', '::1', '2022-04-15', '04:16:11'),
(689, '/allomyprof/signup', '::1', '2022-04-15', '04:16:39'),
(690, '/allomyprof/signup', '::1', '2022-04-15', '04:18:16'),
(691, '/login', '105.69.253.153', '2022-04-15', '04:55:49'),
(692, '/login', '105.69.253.153', '2022-04-15', '04:55:58'),
(693, '/login', '105.69.253.153', '2022-04-15', '04:56:02'),
(694, '/reset', '105.69.253.153', '2022-04-15', '04:56:07'),
(695, '/login', '105.69.253.153', '2022-04-15', '04:56:11'),
(696, '/index', '105.69.253.153', '2022-04-15', '04:56:17'),
(697, '/user', '105.69.253.153', '2022-04-15', '04:56:23'),
(698, '/user', '105.69.253.153', '2022-04-15', '04:57:18'),
(699, '/user', '105.69.253.153', '2022-04-15', '04:57:23'),
(700, '/teacher?id=4', '105.69.253.153', '2022-04-15', '04:59:19'),
(701, '/user', '105.69.253.153', '2022-04-15', '05:09:46'),
(702, '/user', '105.69.253.153', '2022-04-15', '05:09:53'),
(703, '/', '105.69.253.153', '2022-04-15', '05:15:56'),
(704, '/', '105.71.135.154', '2022-04-15', '12:00:55'),
(705, '/', '105.71.135.154', '2022-04-15', '12:00:59'),
(706, '/', '105.71.135.154', '2022-04-15', '12:01:15'),
(707, '/', '105.69.253.153', '2022-04-15', '12:30:14'),
(708, '/login', '105.69.253.153', '2022-04-15', '12:49:38'),
(709, '/login', '105.69.253.153', '2022-04-15', '12:49:45'),
(710, '/login', '105.69.253.153', '2022-04-15', '12:50:00'),
(711, '/signup', '105.69.253.153', '2022-04-15', '12:50:03'),
(712, '/', '105.69.253.153', '2022-04-15', '12:55:12'),
(713, '/', '105.69.253.153', '2022-04-15', '12:55:18'),
(714, '/', '105.69.253.153', '2022-04-15', '12:55:21'),
(715, '/', '105.71.135.154', '2022-04-15', '13:18:50'),
(716, '/', '105.71.135.154', '2022-04-15', '13:18:53'),
(717, '/', '105.71.135.154', '2022-04-15', '13:19:05'),
(718, '/', '105.71.135.154', '2022-04-15', '13:19:28'),
(719, '/', '105.71.135.154', '2022-04-15', '13:19:48'),
(720, '/', '2a03:2880:32ff:6::face:b00c', '2022-04-15', '13:21:12'),
(721, '/', '2a03:2880:32ff:1::face:b00c', '2022-04-15', '13:21:13'),
(722, '/', '2a03:2880:31ff:19::face:b00c', '2022-04-15', '13:21:15'),
(723, '/?fbclid=IwAR0pV3UA0LOhzJhGlZupVD_n7uYsnqUsgYctsVqF-8BlUFJiK8QMoKxKMKY', '2a03:2880:30ff:14::face:b00c', '2022-04-15', '13:21:16'),
(724, '/?fbclid=IwAR2tl6bK1KMQBl4abb8ERKeV-4djsyPKCTqucDmaUgjZVpJEhDl7PXXtGnE', '2a03:2880:31ff:76::face:b00c', '2022-04-15', '13:21:16'),
(725, '/', '2a03:2880:32ff:b::face:b00c', '2022-04-15', '13:21:51'),
(726, '/', '2a03:2880:32ff:2::face:b00c', '2022-04-15', '13:21:53'),
(727, '/', '105.71.135.154', '2022-04-15', '15:02:20'),
(728, '/signup', '105.71.135.154', '2022-04-15', '21:07:57'),
(729, '/', '105.71.135.154', '2022-04-15', '22:20:48'),
(730, '/', '105.71.135.154', '2022-04-15', '22:45:32'),
(731, '/', '105.71.135.154', '2022-04-15', '22:48:14'),
(732, '/', '105.69.253.153', '2022-04-16', '00:56:55'),
(733, '/teacher?id=19', '105.69.253.153', '2022-04-16', '01:00:03'),
(734, '/', '105.71.135.154', '2022-04-16', '01:04:13'),
(735, '/', '105.71.135.154', '2022-04-16', '01:10:26'),
(736, '/', '105.71.135.154', '2022-04-16', '02:23:08'),
(737, '/', '105.71.135.154', '2022-04-16', '02:24:56'),
(738, '/', '105.71.135.154', '2022-04-16', '02:28:45'),
(739, '/login', '105.71.135.154', '2022-04-16', '02:38:14'),
(740, '/login', '105.71.135.154', '2022-04-16', '02:38:28'),
(741, '/login', '105.71.135.154', '2022-04-16', '02:38:30'),
(742, '/index', '105.71.135.154', '2022-04-16', '02:38:43'),
(743, '/index', '105.71.135.154', '2022-04-16', '02:38:51'),
(744, '/index', '105.71.135.154', '2022-04-16', '02:38:54'),
(745, '/login', '105.71.135.154', '2022-04-16', '02:43:31'),
(746, '/login', '197.230.59.4', '2022-04-16', '02:43:45'),
(747, '/index', '105.71.135.154', '2022-04-16', '02:44:16'),
(748, '/user', '105.71.135.154', '2022-04-16', '02:44:26'),
(749, '/', '197.230.59.4', '2022-04-16', '02:44:29'),
(750, '/recherche', '105.71.135.154', '2022-04-16', '02:44:42'),
(751, '/teacher?id=19', '105.71.135.154', '2022-04-16', '02:44:46'),
(752, '/teacher?id=58', '197.230.59.5', '2022-04-16', '02:44:49'),
(753, '/index', '197.230.59.5', '2022-04-16', '02:44:51'),
(754, '/login', '105.71.135.154', '2022-04-16', '02:49:33'),
(755, '/signup', '105.71.135.154', '2022-04-16', '02:49:36'),
(756, '/configuration', '105.71.135.154', '2022-04-16', '02:50:53'),
(757, '/user', '105.71.135.154', '2022-04-16', '03:10:18'),
(758, '/profile', '105.71.135.154', '2022-04-16', '03:10:18'),
(759, '/settings', '105.71.135.154', '2022-04-16', '03:10:46'),
(760, '/user', '105.71.135.154', '2022-04-16', '03:36:30'),
(761, '/user', '105.71.135.154', '2022-04-16', '03:37:09'),
(762, '/index', '105.71.135.154', '2022-04-16', '03:37:13'),
(763, '/index', '105.71.135.154', '2022-04-16', '03:37:48'),
(764, '/index', '105.71.135.154', '2022-04-16', '03:38:02'),
(765, '/index', '105.71.135.154', '2022-04-16', '19:55:48'),
(766, '/index', '105.71.135.154', '2022-04-16', '22:16:55'),
(767, '/', '105.69.213.208', '2022-04-17', '03:05:49'),
(768, '/recherche', '105.69.213.208', '2022-04-17', '03:06:36'),
(769, '/teacher?id=20', '105.69.213.208', '2022-04-17', '03:06:52'),
(770, '/', '105.71.135.154', '2022-04-17', '03:06:55'),
(771, '/', '105.71.135.154', '2022-04-17', '03:08:06'),
(772, '/', '105.71.135.154', '2022-04-17', '03:08:10'),
(773, '/', '105.71.135.154', '2022-04-17', '03:09:03'),
(774, '/teacher?id=20', '105.69.213.208', '2022-04-17', '03:11:26'),
(775, '/recherche', '105.69.213.208', '2022-04-17', '03:11:33'),
(776, '/recherche?ville=Casablanca&matiere=volvo&nomprof=o&btnsubmit=se', '105.69.213.208', '2022-04-17', '03:12:18'),
(777, '/login', '105.69.213.208', '2022-04-17', '04:14:24'),
(778, '/signup', '105.69.213.208', '2022-04-17', '04:14:28'),
(779, '/', '105.69.213.208', '2022-04-18', '04:25:09'),
(780, '/recherche', '105.69.213.208', '2022-04-18', '04:25:21');
INSERT INTO `log` (`id_log`, `page`, `ip`, `date`, `time`) VALUES
(781, '/login', '105.69.213.208', '2022-04-18', '04:25:36'),
(782, '/index', '105.69.213.208', '2022-04-18', '04:25:40'),
(783, '/user', '105.69.213.208', '2022-04-18', '04:25:48'),
(784, '/user', '105.69.213.208', '2022-04-18', '04:27:21'),
(785, '/', '105.69.213.208', '2022-04-18', '04:29:08'),
(786, '/user', '105.69.213.208', '2022-04-18', '04:29:10'),
(787, '/user', '105.69.213.208', '2022-04-18', '04:29:16'),
(788, '/user', '105.69.213.208', '2022-04-18', '04:30:13'),
(789, '/user', '105.69.213.208', '2022-04-18', '04:43:06'),
(790, '/user', '105.69.213.208', '2022-04-18', '04:48:16'),
(791, '/', '105.69.213.208', '2022-04-18', '04:52:29'),
(792, '/user', '105.69.213.208', '2022-04-18', '04:52:32'),
(793, '/', '105.69.213.208', '2022-04-18', '04:53:50'),
(794, '/user', '105.69.213.208', '2022-04-18', '04:53:55'),
(795, '/user', '105.69.213.208', '2022-04-18', '04:58:39'),
(796, '/user', '105.69.213.208', '2022-04-18', '04:59:49'),
(797, '/user', '105.69.213.208', '2022-04-18', '05:02:51'),
(798, '/user', '105.69.213.208', '2022-04-18', '05:03:35'),
(799, '/user', '105.69.213.208', '2022-04-18', '05:05:10'),
(800, '/user', '105.69.213.208', '2022-04-18', '05:06:44'),
(801, '/user', '105.69.213.208', '2022-04-18', '05:07:56'),
(802, '/user', '105.69.213.208', '2022-04-18', '05:08:36'),
(803, '/user', '105.69.213.208', '2022-04-18', '05:10:08'),
(804, '/user', '105.69.213.208', '2022-04-18', '05:10:11'),
(805, '/user', '105.69.213.208', '2022-04-18', '05:10:16'),
(806, '/user', '105.69.213.208', '2022-04-18', '05:10:26'),
(807, '/user', '105.69.213.208', '2022-04-18', '05:11:15'),
(808, '/user', '105.69.213.208', '2022-04-18', '05:13:12'),
(809, '/user', '105.69.213.208', '2022-04-18', '05:13:27'),
(810, '/user', '105.69.213.208', '2022-04-18', '05:13:37'),
(811, '/user', '105.69.213.208', '2022-04-18', '05:15:15'),
(812, '/user', '105.69.213.208', '2022-04-18', '05:15:26'),
(813, '/user', '105.69.213.208', '2022-04-18', '05:16:39'),
(814, '/user', '105.69.213.208', '2022-04-18', '05:16:45'),
(815, '/user', '105.69.213.208', '2022-04-18', '05:16:57'),
(816, '/user', '105.69.213.208', '2022-04-18', '05:17:05'),
(817, '/user', '105.69.213.208', '2022-04-18', '05:17:20'),
(818, '/user', '105.69.213.208', '2022-04-18', '05:19:34'),
(819, '/settings', '105.69.213.208', '2022-04-18', '05:19:41'),
(820, '/settings', '105.69.213.208', '2022-04-18', '05:20:29'),
(821, '/settings', '105.69.213.208', '2022-04-18', '05:23:12'),
(822, '/settings', '105.69.213.208', '2022-04-18', '05:25:31'),
(823, '/settings', '105.69.213.208', '2022-04-18', '05:28:46'),
(824, '/settings', '105.69.213.208', '2022-04-18', '05:30:08'),
(825, '/', '105.69.213.208', '2022-04-18', '08:58:18'),
(826, '/login', '105.69.213.208', '2022-04-18', '08:58:26'),
(827, '/signup', '105.69.213.208', '2022-04-18', '08:58:53'),
(828, '/configuration', '105.69.213.208', '2022-04-18', '08:59:07'),
(829, '/user', '105.69.213.208', '2022-04-18', '09:00:09'),
(830, '/profile', '105.69.213.208', '2022-04-18', '09:00:09'),
(831, '/settings', '105.69.213.208', '2022-04-18', '09:00:34'),
(832, '/teacher?id=21', '105.69.213.208', '2022-04-18', '09:00:41'),
(833, '/settings', '105.69.213.208', '2022-04-18', '09:01:02'),
(834, '/settings', '105.69.213.208', '2022-04-18', '09:01:16'),
(835, '/recherche', '105.69.213.208', '2022-04-18', '09:01:18'),
(836, '/teacher?id=21', '105.69.213.208', '2022-04-18', '09:01:51'),
(837, '/login', '105.69.213.208', '2022-04-18', '09:01:57'),
(838, '/signup', '105.69.213.208', '2022-04-18', '09:02:03'),
(839, '/login', '105.69.213.208', '2022-04-18', '09:03:00'),
(840, '/login', '105.69.213.208', '2022-04-18', '09:09:20'),
(841, '/signup', '105.69.213.208', '2022-04-18', '09:09:25'),
(842, '/login', '105.69.213.208', '2022-04-18', '09:09:27'),
(843, '/index', '105.71.133.112', '2022-04-19', '13:53:31'),
(844, '/index', '105.71.133.112', '2022-04-19', '13:53:38'),
(845, '/user', '105.71.133.112', '2022-04-19', '13:54:03'),
(846, '/user', '105.71.133.112', '2022-04-19', '13:54:16'),
(847, '/login', '105.71.133.112', '2022-04-19', '13:54:29'),
(848, '/index', '105.71.133.112', '2022-04-19', '13:54:33'),
(849, '/', '196.92.89.96', '2022-04-21', '00:29:43'),
(850, '/', '197.230.59.5', '2022-04-21', '00:29:44'),
(851, '/', '196.92.89.96', '2022-04-21', '00:30:17'),
(852, '/', '196.92.89.96', '2022-04-21', '00:30:29'),
(853, '/login', '196.92.89.96', '2022-04-21', '00:30:33'),
(854, '/recherche?ville=Casablanca&matiere=volvo&nomprof=', '196.92.89.96', '2022-04-21', '00:30:51'),
(855, '/', '105.69.236.64', '2022-04-22', '02:23:16'),
(856, '/', '105.69.236.64', '2022-04-22', '02:24:34'),
(857, '/', '105.69.236.64', '2022-04-22', '02:25:20'),
(858, '/', '105.69.236.64', '2022-04-22', '02:26:08'),
(859, '/', '105.71.133.112', '2022-04-22', '02:28:58'),
(860, '/', '105.69.236.64', '2022-04-22', '02:29:04'),
(861, '/', '105.71.133.112', '2022-04-22', '02:29:08'),
(862, '/', '105.69.236.64', '2022-04-22', '02:31:14'),
(863, '/', '105.69.236.64', '2022-04-22', '02:42:26'),
(864, '/recherche', '105.69.236.64', '2022-04-22', '02:43:20'),
(865, '/recherche', '105.69.236.64', '2022-04-22', '02:51:42'),
(866, '/recherche?ville=Casablanca&matiere=volvo&nomprof=h&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:51:50'),
(867, '/recherche?ville=Casablanca&matiere=volvo&nomprof=hhh&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:51:59'),
(868, '/recherche?ville=Casablanca&matiere=volvo&nomprof=hossam&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:52:05'),
(869, '/recherche', '105.69.236.64', '2022-04-22', '02:52:11'),
(870, '/recherche?ville=Casablanca&matiere=volvo&nomprof=hoss&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:52:27'),
(871, '/recherche?ville=El+Kelaa+des+Srarhna&matiere=volvo&nomprof=hossame&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:52:39'),
(872, '/recherche?ville=Casablanca&matiere=volvo&nomprof=k&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:52:58'),
(873, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:53:01'),
(874, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:53:41'),
(875, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:53:45'),
(876, '/recherche?ville=Casablanca&matiere=volvo&nomprof=hos&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:53:51'),
(877, '/recherche', '105.69.236.64', '2022-04-22', '02:53:54'),
(878, '/recherche?ville=Casablanca&matiere=volvo&nomprof=+&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:54:01'),
(879, '/recherche', '105.69.236.64', '2022-04-22', '02:54:09'),
(880, '/recherche', '105.69.236.64', '2022-04-22', '02:54:59'),
(881, '/recherche?ville=Casablanca&matiere=volvo&nomprof=a&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:55:05'),
(882, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:55:09'),
(883, '/recherche', '105.69.236.64', '2022-04-22', '02:55:39'),
(884, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:56:07'),
(885, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:56:50'),
(886, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:56:57'),
(887, '/recherche?ville=Casablanca&matiere=volvo&nomprof=hoss&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:57:04'),
(888, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:59:13'),
(889, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:59:20'),
(890, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '02:59:39'),
(891, '/recherche?ville=Casablanca&matiere=volvo&nomprof=ho&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:03:32'),
(892, '/recherche?ville=Casablanca&matiere=volvo&nomprof=hoss&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:05:31'),
(893, '/recherche?ville=Casablanca&matiere=volvo&nomprof=hoss&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:05:39'),
(894, '/recherche?ville=Casablanca&matiere=volvo&nomprof=hoss&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:07:30'),
(895, '/recherche?ville=Casablanca&matiere=volvo&nomprof=h&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:07:34'),
(896, '/recherche?ville=Casablanca&matiere=volvo&nomprof=&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:07:42'),
(897, '/recherche?ville=Casablanca&matiere=volvo&nomprof=jj&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:07:48'),
(898, '/recherche?ville=Casablanca&matiere=volvo&nomprof=jj&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:08:22'),
(899, '/recherche?ville=Casablanca&matiere=volvo&nomprof=jj&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:08:49'),
(900, '/recherche?ville=Casablanca&matiere=volvo&nomprof=jj&btnsubmit=se', '105.69.236.64', '2022-04-22', '03:08:55'),
(901, '/recherche', '105.69.236.64', '2022-04-22', '04:22:32'),
(902, '/', '105.69.236.64', '2022-04-22', '05:23:30'),
(903, '/recherche', '105.69.236.64', '2022-04-22', '05:25:25'),
(904, '/recherche.php?ville=&matiere=&nomprof=&page=2', '105.69.236.64', '2022-04-22', '05:25:28'),
(905, '/recherche.php?ville=&matiere=&nomprof=&page=3', '105.69.236.64', '2022-04-22', '05:25:31'),
(906, '/allomyprof/', '::1', '2022-05-05', '22:05:12'),
(907, '/allomyprof/login', '::1', '2022-05-05', '22:05:43'),
(908, '/allomyprof/index', '::1', '2022-05-05', '22:05:54'),
(909, '/allomyprof/user', '::1', '2022-05-05', '22:06:49'),
(910, '/allomyprof/user', '::1', '2022-05-05', '22:07:14'),
(911, '/allomyprof/user', '::1', '2022-05-05', '22:07:24'),
(912, '/allomyprof/user', '::1', '2022-05-05', '22:08:52'),
(913, '/allomyprof/user', '::1', '2022-05-05', '22:08:55'),
(914, '/allomyprof/user', '::1', '2022-05-05', '22:19:33'),
(915, '/allomyprof/index', '::1', '2022-05-05', '22:33:16'),
(916, '/allomyprof/index', '::1', '2022-05-05', '22:37:49'),
(917, '/allomyprof/index', '::1', '2022-05-05', '22:39:37'),
(918, '/allomyprof/index', '::1', '2022-05-05', '22:41:47'),
(919, '/allomyprof/index', '::1', '2022-05-05', '22:46:28'),
(920, '/allomyprof/index', '::1', '2022-05-05', '22:54:45'),
(921, '/allomyprof/index', '::1', '2022-05-05', '22:55:06'),
(922, '/allomyprof/index', '::1', '2022-05-05', '22:59:13'),
(923, '/allomyprof/index', '::1', '2022-05-05', '23:01:11'),
(924, '/allomyprof/teacher?id=4', '::1', '2022-05-05', '23:01:27'),
(925, '/allomyprof/user', '::1', '2022-05-05', '23:01:37'),
(926, '/allomyprof/user', '::1', '2022-05-05', '23:11:49'),
(927, '/allomyprof/user', '::1', '2022-05-05', '23:17:05'),
(928, '/allomyprof/login', '::1', '2022-05-05', '23:25:45'),
(929, '/allomyprof/signup', '::1', '2022-05-05', '23:25:55'),
(930, '/allomyprof/configuration', '::1', '2022-05-05', '23:26:41'),
(931, '/allomyprof/login', '::1', '2022-05-05', '23:43:12'),
(932, '/allomyprof/recherche', '::1', '2022-05-05', '23:43:14'),
(933, '/allomyprof/teacher?id=2', '::1', '2022-05-05', '23:43:16'),
(934, '/allomyprof/teacher?id=2', '::1', '2022-05-05', '23:44:33'),
(935, '/allomyprof/teacher?id=2', '::1', '2022-05-05', '23:45:58'),
(936, '/allomyprof/teacher?id=2', '::1', '2022-05-05', '23:46:50'),
(937, '/allomyprof/teacher?id=2', '::1', '2022-05-05', '23:50:32'),
(938, '/allomyprof/login', '::1', '2022-05-05', '23:52:04'),
(939, '/allomyprof/index', '::1', '2022-05-05', '23:52:06'),
(940, '/allomyprof/user', '::1', '2022-05-05', '23:52:09'),
(941, '/allomyprof/login', '::1', '2022-05-05', '23:52:38'),
(942, '/allomyprof/user', '::1', '2022-05-05', '23:52:40'),
(943, '/allomyprof/login', '::1', '2022-05-05', '23:52:55'),
(944, '/allomyprof/user', '::1', '2022-05-05', '23:53:06'),
(945, '/allomyprof/configuration', '::1', '2022-05-05', '23:53:06'),
(946, '/allomyprof/configuration', '::1', '2022-05-05', '23:55:06'),
(947, '/allomyprof/configuration', '::1', '2022-05-05', '23:55:32'),
(948, '/allomyprof/configuration', '::1', '2022-05-05', '23:55:54'),
(949, '/allomyprof/configuration', '::1', '2022-05-05', '23:57:40'),
(950, '/allomyprof/user', '::1', '2022-05-05', '23:58:01'),
(951, '/allomyprof/profile', '::1', '2022-05-05', '23:58:01'),
(952, '/allomyprof/profile', '::1', '2022-05-06', '00:00:03'),
(953, '/allomyprof/profile', '::1', '2022-05-06', '00:02:33'),
(954, '/allomyprof/profile', '::1', '2022-05-06', '00:02:51'),
(955, '/allomyprof/profile', '::1', '2022-05-06', '00:04:00'),
(956, '/allomyprof/user', '::1', '2022-05-06', '00:04:41'),
(957, '/allomyprof/user', '::1', '2022-05-06', '00:06:41'),
(958, '/allomyprof/', '::1', '2022-05-06', '00:10:01'),
(959, '/allomyprof/user', '::1', '2022-05-06', '00:10:05'),
(960, '/allomyprof/user', '::1', '2022-05-06', '00:10:14'),
(961, '/allomyprof/user', '::1', '2022-05-06', '00:11:58'),
(962, '/allomyprof/user', '::1', '2022-05-06', '00:12:19'),
(963, '/allomyprof/user', '::1', '2022-05-06', '00:16:14'),
(964, '/allomyprof/user', '::1', '2022-05-06', '00:16:42'),
(965, '/allomyprof/user', '::1', '2022-05-06', '00:17:58'),
(966, '/allomyprof/user', '::1', '2022-05-06', '00:18:31'),
(967, '/allomyprof/user', '::1', '2022-05-06', '00:19:05'),
(968, '/allomyprof/user', '::1', '2022-05-06', '00:19:49'),
(969, '/allomyprof/user', '::1', '2022-05-06', '00:20:05'),
(970, '/allomyprof/user', '::1', '2022-05-06', '00:20:38'),
(971, '/allomyprof/user', '::1', '2022-05-06', '00:21:17'),
(972, '/allomyprof/user', '::1', '2022-05-06', '00:22:27'),
(973, '/allomyprof/user', '::1', '2022-05-06', '00:26:04'),
(974, '/allomyprof/user', '::1', '2022-05-06', '00:26:30'),
(975, '/allomyprof/login', '::1', '2022-05-06', '00:27:11'),
(976, '/allomyprof/user', '::1', '2022-05-06', '00:27:13'),
(977, '/allomyprof/user', '::1', '2022-05-06', '00:54:38'),
(978, '/allomyprof/', '::1', '2022-05-06', '14:57:14'),
(979, '/allomyprof/recherche', '::1', '2022-05-06', '14:57:20'),
(980, '/allomyprof/teacher?id=4', '::1', '2022-05-06', '14:57:26'),
(981, '/allomyprof/login', '::1', '2022-05-06', '14:57:48'),
(982, '/allomyprof/user', '::1', '2022-05-06', '14:57:59'),
(983, '/allomyprof/user', '::1', '2022-05-06', '15:01:23'),
(984, '/allomyprof/user', '::1', '2022-05-06', '15:03:35'),
(985, '/allomyprof/user', '::1', '2022-05-06', '15:34:44'),
(986, '/allomyprof/user', '::1', '2022-05-06', '15:36:24'),
(987, '/allomyprof/user', '::1', '2022-05-06', '15:36:55'),
(988, '/allomyprof/user', '::1', '2022-05-06', '16:05:50'),
(989, '/allomyprof/user', '::1', '2022-05-06', '16:24:31'),
(990, '/allomyprof/user', '::1', '2022-05-06', '16:25:00'),
(991, '/allomyprof/user', '::1', '2022-05-06', '16:25:50'),
(992, '/allomyprof/user', '::1', '2022-05-06', '16:40:23'),
(993, '/allomyprof/user', '::1', '2022-05-06', '16:40:57'),
(994, '/allomyprof/user', '::1', '2022-05-06', '16:42:16'),
(995, '/allomyprof/user', '::1', '2022-05-06', '16:42:45'),
(996, '/allomyprof/user', '::1', '2022-05-06', '16:43:10'),
(997, '/allomyprof/user', '::1', '2022-05-06', '16:44:03'),
(998, '/allomyprof/user', '::1', '2022-05-06', '16:44:20'),
(999, '/allomyprof/user', '::1', '2022-05-06', '16:44:35'),
(1000, '/allomyprof/user', '::1', '2022-05-06', '16:45:03'),
(1001, '/allomyprof/user', '::1', '2022-05-06', '16:45:22'),
(1002, '/allomyprof/user', '::1', '2022-05-06', '16:45:57'),
(1003, '/allomyprof/user', '::1', '2022-05-06', '16:46:44'),
(1004, '/allomyprof/user', '::1', '2022-05-06', '16:47:39'),
(1005, '/allomyprof/user', '::1', '2022-05-06', '16:48:50'),
(1006, '/allomyprof/user', '::1', '2022-05-06', '16:49:13'),
(1007, '/allomyprof/user', '::1', '2022-05-06', '16:49:39'),
(1008, '/allomyprof/user', '::1', '2022-05-06', '16:50:00'),
(1009, '/allomyprof/user', '::1', '2022-05-06', '16:55:11'),
(1010, '/allomyprof/user', '::1', '2022-05-06', '16:55:24'),
(1011, '/allomyprof/user', '::1', '2022-05-06', '16:55:54'),
(1012, '/allomyprof/user', '::1', '2022-05-06', '16:56:36'),
(1013, '/allomyprof/user', '::1', '2022-05-06', '16:57:01'),
(1014, '/allomyprof/user', '::1', '2022-05-06', '17:00:57'),
(1015, '/allomyprof/user', '::1', '2022-05-06', '17:01:08'),
(1016, '/allomyprof/user', '::1', '2022-05-06', '17:01:17'),
(1017, '/allomyprof/user', '::1', '2022-05-06', '17:02:41'),
(1018, '/allomyprof/user', '::1', '2022-05-06', '17:02:57'),
(1019, '/allomyprof/user', '::1', '2022-05-06', '17:04:59'),
(1020, '/allomyprof/login', '::1', '2022-05-06', '17:08:50'),
(1021, '/allomyprof/user', '::1', '2022-05-06', '17:09:13'),
(1022, '/allomyprof/user', '::1', '2022-05-06', '17:14:35'),
(1023, '/allomyprof/user', '::1', '2022-05-06', '17:16:26'),
(1024, '/allomyprof/', '192.168.11.108', '2022-05-06', '17:17:58'),
(1025, '/allomyprof/login', '192.168.11.108', '2022-05-06', '17:18:07'),
(1026, '/allomyprof/user', '192.168.11.108', '2022-05-06', '17:18:27'),
(1027, '/allomyprof/login', '::1', '2022-05-06', '17:21:04'),
(1028, '/allomyprof/login', '::1', '2022-05-06', '17:21:45'),
(1029, '/allomyprof/user', '::1', '2022-05-06', '17:21:48'),
(1030, '/allomyprof/login', '::1', '2022-05-06', '17:22:12'),
(1031, '/allomyprof/login', '::1', '2022-05-06', '17:25:57'),
(1032, '/allomyprof/login', '::1', '2022-05-06', '17:26:05'),
(1033, '/allomyprof/user', '::1', '2022-05-06', '17:26:09'),
(1034, '/allomyprof/user', '::1', '2022-05-06', '17:30:11'),
(1035, '/allomyprof/user', '::1', '2022-05-06', '17:35:21'),
(1036, '/allomyprof/user', '::1', '2022-05-06', '17:37:39'),
(1037, '/allomyprof/user', '::1', '2022-05-06', '17:37:51'),
(1038, '/allomyprof/user', '::1', '2022-05-06', '17:42:30'),
(1039, '/allomyprof/user', '::1', '2022-05-06', '17:43:06'),
(1040, '/allomyprof/user', '::1', '2022-05-06', '17:43:29'),
(1041, '/allomyprof/user', '::1', '2022-05-06', '17:45:03'),
(1042, '/allomyprof/user', '::1', '2022-05-06', '17:46:56'),
(1043, '/allomyprof/user', '::1', '2022-05-06', '17:47:23'),
(1044, '/allomyprof/user', '::1', '2022-05-06', '17:50:15'),
(1045, '/allomyprof/user', '::1', '2022-05-06', '17:51:19'),
(1046, '/allomyprof/user', '::1', '2022-05-06', '17:51:27'),
(1047, '/allomyprof/user', '::1', '2022-05-06', '17:52:54'),
(1048, '/allomyprof/user', '::1', '2022-05-06', '17:55:14'),
(1049, '/allomyprof/', '::1', '2022-05-11', '13:11:00'),
(1050, '/allomyprof/', '::1', '2022-05-11', '13:12:21'),
(1051, '/allomyprof/', '::1', '2022-05-11', '13:13:24'),
(1052, '/allomyprof/', '::1', '2022-05-11', '13:16:05'),
(1053, '/allomyprof/login', '::1', '2022-05-11', '13:45:23'),
(1054, '/allomyprof/login', '::1', '2022-05-11', '13:45:37'),
(1055, '/allomyprof/user', '::1', '2022-05-11', '13:46:09'),
(1056, '/allomyprof/user', '::1', '2022-05-11', '13:46:30'),
(1057, '/allomyprof/user', '::1', '2022-05-11', '15:19:38'),
(1058, '/allomyprof/user', '::1', '2022-05-11', '16:15:43'),
(1059, '/allomyprof/user', '::1', '2022-05-11', '16:17:13'),
(1060, '/allomyprof/user', '::1', '2022-05-11', '16:17:39'),
(1061, '/allomyprof/user', '::1', '2022-05-11', '16:21:37'),
(1062, '/allomyprof/user', '::1', '2022-05-11', '16:39:53'),
(1063, '/allomyprof/user', '::1', '2022-05-11', '16:40:50'),
(1064, '/allomyprof/user', '::1', '2022-05-11', '16:46:40'),
(1065, '/allomyprof/user', '::1', '2022-05-11', '16:47:25'),
(1066, '/allomyprof/user', '::1', '2022-05-11', '16:48:27'),
(1067, '/allomyprof/user', '::1', '2022-05-11', '17:09:10'),
(1068, '/allomyprof/user', '::1', '2022-05-11', '17:09:19'),
(1069, '/allomyprof/user', '::1', '2022-05-11', '17:09:54'),
(1070, '/allomyprof/user', '::1', '2022-05-11', '17:10:52'),
(1071, '/allomyprof/user', '::1', '2022-05-11', '17:11:02'),
(1072, '/allomyprof/user', '::1', '2022-05-11', '17:12:23'),
(1073, '/allomyprof/user', '::1', '2022-05-11', '17:12:56'),
(1074, '/allomyprof/user', '::1', '2022-05-11', '17:13:52'),
(1075, '/allomyprof/user', '::1', '2022-05-11', '17:14:13'),
(1076, '/allomyprof/user', '::1', '2022-05-11', '17:14:39'),
(1077, '/allomyprof/user', '::1', '2022-05-11', '17:15:08'),
(1078, '/allomyprof/user', '::1', '2022-05-11', '17:18:30'),
(1079, '/allomyprof/user', '::1', '2022-05-11', '17:20:01'),
(1080, '/allomyprof/user', '::1', '2022-05-11', '17:21:34'),
(1081, '/allomyprof/', '192.168.11.110', '2022-05-11', '17:24:52'),
(1082, '/allomyprof/recherche', '192.168.11.110', '2022-05-11', '17:25:49'),
(1083, '/allomyprof/user', '::1', '2022-05-11', '17:28:58'),
(1084, '/allomyprof/recherche', '192.168.11.110', '2022-05-11', '17:29:02'),
(1085, '/allomyprof/user', '::1', '2022-05-11', '17:34:43'),
(1086, '/allomyprof/user', '::1', '2022-05-11', '17:35:13'),
(1087, '/allomyprof/user', '::1', '2022-05-11', '17:35:56'),
(1088, '/allomyprof/user', '::1', '2022-05-11', '17:36:03'),
(1089, '/allomyprof/user', '::1', '2022-05-11', '17:36:25'),
(1090, '/allomyprof/', '::1', '2022-05-12', '17:27:26'),
(1091, '/allomyprof/recherche', '::1', '2022-05-14', '11:59:11'),
(1092, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '11:59:15'),
(1093, '/allomyprof/recherche', '::1', '2022-05-14', '11:59:26'),
(1094, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '11:59:28'),
(1095, '/allomyprof/login', '::1', '2022-05-14', '11:59:31'),
(1096, '/allomyprof/login', '::1', '2022-05-14', '11:59:34'),
(1097, '/allomyprof/index', '::1', '2022-05-14', '11:59:37'),
(1098, '/allomyprof/index', '::1', '2022-05-14', '12:01:01'),
(1099, '/allomyprof/login', '::1', '2022-05-14', '12:12:35'),
(1100, '/allomyprof/user', '::1', '2022-05-14', '12:12:41'),
(1101, '/allomyprof/', '192.168.1.2', '2022-05-14', '12:16:00'),
(1102, '/allomyprof/login', '192.168.1.2', '2022-05-14', '12:16:04'),
(1103, '/allomyprof/user', '192.168.1.2', '2022-05-14', '12:17:23'),
(1104, '/allomyprof/user', '::1', '2022-05-14', '12:20:16'),
(1105, '/allomyprof/user', '::1', '2022-05-14', '12:20:22'),
(1106, '/allomyprof/user', '::1', '2022-05-14', '12:20:28'),
(1107, '/allomyprof/user', '::1', '2022-05-14', '12:20:34'),
(1108, '/allomyprof/user', '::1', '2022-05-14', '12:20:40'),
(1109, '/allomyprof/user', '::1', '2022-05-14', '12:20:50'),
(1110, '/allomyprof/user', '::1', '2022-05-14', '12:21:19'),
(1111, '/allomyprof/user', '::1', '2022-05-14', '12:22:52'),
(1112, '/allomyprof/user', '::1', '2022-05-14', '12:37:17'),
(1113, '/allomyprof/user', '::1', '2022-05-14', '12:37:57'),
(1114, '/allomyprof/user', '::1', '2022-05-14', '12:41:34'),
(1115, '/allomyprof/user', '::1', '2022-05-14', '12:42:19'),
(1116, '/allomyprof/user', '::1', '2022-05-14', '12:42:46'),
(1117, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '12:44:31'),
(1118, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '12:45:47'),
(1119, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:01:58'),
(1120, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:02:49'),
(1121, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:03:20'),
(1122, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:04:38'),
(1123, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:04:53'),
(1124, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:05:14'),
(1125, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:05:26'),
(1126, '/allomyprof/login', '::1', '2022-05-14', '13:05:33'),
(1127, '/allomyprof/user', '::1', '2022-05-14', '13:05:37'),
(1128, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:05:41'),
(1129, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:06:16'),
(1130, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:07:24'),
(1131, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:07:44'),
(1132, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:08:40'),
(1133, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:09:08'),
(1134, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:09:16'),
(1135, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:09:19'),
(1136, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:10:00'),
(1137, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:10:31'),
(1138, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:10:41'),
(1139, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:10:44'),
(1140, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:10:47'),
(1141, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:15:17'),
(1142, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:15:23'),
(1143, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:15:32'),
(1144, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:15:39'),
(1145, '/allomyprof/user', '::1', '2022-05-14', '13:19:19'),
(1146, '/allomyprof/user', '::1', '2022-05-14', '13:19:59'),
(1147, '/allomyprof/user', '::1', '2022-05-14', '13:21:14'),
(1148, '/allomyprof/user', '::1', '2022-05-14', '13:23:09'),
(1149, '/allomyprof/user', '::1', '2022-05-14', '13:24:00'),
(1150, '/allomyprof/user', '::1', '2022-05-14', '13:24:08'),
(1151, '/allomyprof/user', '::1', '2022-05-14', '13:24:59'),
(1152, '/allomyprof/user', '::1', '2022-05-14', '13:25:05'),
(1153, '/allomyprof/user', '::1', '2022-05-14', '13:25:41'),
(1154, '/allomyprof/user', '::1', '2022-05-14', '13:25:47'),
(1155, '/allomyprof/user', '::1', '2022-05-14', '13:26:22'),
(1156, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:26:27'),
(1157, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:26:34'),
(1158, '/allomyprof/user', '::1', '2022-05-14', '13:26:52'),
(1159, '/allomyprof/user', '::1', '2022-05-14', '13:27:52'),
(1160, '/allomyprof/user', '::1', '2022-05-14', '13:28:00'),
(1161, '/allomyprof/user', '::1', '2022-05-14', '13:28:03'),
(1162, '/allomyprof/user', '::1', '2022-05-14', '13:28:15'),
(1163, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:28:44'),
(1164, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:28:53'),
(1165, '/allomyprof/user', '::1', '2022-05-14', '13:29:40'),
(1166, '/allomyprof/user', '::1', '2022-05-14', '13:30:03'),
(1167, '/allomyprof/user', '::1', '2022-05-14', '13:31:29'),
(1168, '/allomyprof/user', '::1', '2022-05-14', '13:32:43'),
(1169, '/allomyprof/user', '::1', '2022-05-14', '13:40:17'),
(1170, '/allomyprof/user', '::1', '2022-05-14', '13:41:10'),
(1171, '/allomyprof/user', '::1', '2022-05-14', '13:41:32'),
(1172, '/allomyprof/user', '::1', '2022-05-14', '13:44:18'),
(1173, '/allomyprof/user', '::1', '2022-05-14', '13:44:46'),
(1174, '/allomyprof/user', '::1', '2022-05-14', '13:46:54'),
(1175, '/allomyprof/user', '::1', '2022-05-14', '13:47:16'),
(1176, '/allomyprof/user', '::1', '2022-05-14', '13:49:00'),
(1177, '/allomyprof/user', '::1', '2022-05-14', '13:49:26'),
(1178, '/allomyprof/user', '::1', '2022-05-14', '13:49:59'),
(1179, '/allomyprof/user', '::1', '2022-05-14', '13:50:11'),
(1180, '/allomyprof/user', '::1', '2022-05-14', '13:52:08'),
(1181, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '13:55:34'),
(1182, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '15:19:40'),
(1183, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:32:08'),
(1184, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:36:18'),
(1185, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:37:43'),
(1186, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:38:05'),
(1187, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:38:31'),
(1188, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:38:41'),
(1189, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:39:38'),
(1190, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:45:32'),
(1191, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:45:59'),
(1192, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:47:47'),
(1193, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:48:45'),
(1194, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:49:36'),
(1195, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:49:47'),
(1196, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:50:30'),
(1197, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:53:34'),
(1198, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:54:39'),
(1199, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:59:23'),
(1200, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '16:59:41'),
(1201, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:00:03'),
(1202, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:00:24'),
(1203, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:03:04'),
(1204, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:04:05'),
(1205, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:06:36'),
(1206, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:06:52'),
(1207, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:08:12'),
(1208, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '17:08:21'),
(1209, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '17:08:39'),
(1210, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:08:45'),
(1211, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:08:51'),
(1212, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:09:06'),
(1213, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:09:33'),
(1214, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:09:55'),
(1215, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:10:07'),
(1216, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:11:28'),
(1217, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:11:40'),
(1218, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:11:49'),
(1219, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:13:22'),
(1220, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:13:45'),
(1221, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:13:52'),
(1222, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:14:43'),
(1223, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:14:56'),
(1224, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:15:07'),
(1225, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '17:15:19'),
(1226, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '17:16:10'),
(1227, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '17:17:44'),
(1228, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '17:18:38'),
(1229, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '17:18:48'),
(1230, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:19:07'),
(1231, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:19:47'),
(1232, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:19:56'),
(1233, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '17:20:00'),
(1234, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:20:23'),
(1235, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:20:54'),
(1236, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '17:20:58'),
(1237, '/allomyprof/teacher?id=2', '::1', '2022-05-14', '17:21:18'),
(1238, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:21:30'),
(1239, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:23:40'),
(1240, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:23:43'),
(1241, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:23:49'),
(1242, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:24:18'),
(1243, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:24:43'),
(1244, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:26:18'),
(1245, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:26:22'),
(1246, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:28:03'),
(1247, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:28:07'),
(1248, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:31:28'),
(1249, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:31:51'),
(1250, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:32:21'),
(1251, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:32:50'),
(1252, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:33:43'),
(1253, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:34:25'),
(1254, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:35:15'),
(1255, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:37:33'),
(1256, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:38:12'),
(1257, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:38:30'),
(1258, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:40:07'),
(1259, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:40:12'),
(1260, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:40:44'),
(1261, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:40:50'),
(1262, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:43:31'),
(1263, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:43:38'),
(1264, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:44:51'),
(1265, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:45:35'),
(1266, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:45:44'),
(1267, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:46:39'),
(1268, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:46:51'),
(1269, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:46:57'),
(1270, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:47:15'),
(1271, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:47:19'),
(1272, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:47:53'),
(1273, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:47:57'),
(1274, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:50:13'),
(1275, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:50:16'),
(1276, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:51:03'),
(1277, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:51:08'),
(1278, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:51:49'),
(1279, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:51:53'),
(1280, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '17:53:04'),
(1281, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:54:34'),
(1282, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:54:39'),
(1283, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:54:59'),
(1284, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:55:04'),
(1285, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:55:20'),
(1286, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:55:25'),
(1287, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:56:38'),
(1288, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:56:42'),
(1289, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:57:06'),
(1290, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:57:10'),
(1291, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '17:58:16'),
(1292, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '17:58:21'),
(1293, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:04:27'),
(1294, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:04:30'),
(1295, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:04:58'),
(1296, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:05:02'),
(1297, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:05:06'),
(1298, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:05:09'),
(1299, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:06:02'),
(1300, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:06:32'),
(1301, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:06:35'),
(1302, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:06:52'),
(1303, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:07:19'),
(1304, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:07:46'),
(1305, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:07:51'),
(1306, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:08:15'),
(1307, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:08:24'),
(1308, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:08:29'),
(1309, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:09:11'),
(1310, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:09:15'),
(1311, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:11:07'),
(1312, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:11:10'),
(1313, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:11:33'),
(1314, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:11:37'),
(1315, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:12:41'),
(1316, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:12:44'),
(1317, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:15:20'),
(1318, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:15:24'),
(1319, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:15:40'),
(1320, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:15:46'),
(1321, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:16:45'),
(1322, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:17:54'),
(1323, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:17:58'),
(1324, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:18:01'),
(1325, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:18:28'),
(1326, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:18:30'),
(1327, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:18:34'),
(1328, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:19:06'),
(1329, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:19:18'),
(1330, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:20:03'),
(1331, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:21:31'),
(1332, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:21:37'),
(1333, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:21:53'),
(1334, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:25:24'),
(1335, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:25:51'),
(1336, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:25:57'),
(1337, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:26:35'),
(1338, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:26:39'),
(1339, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:26:57'),
(1340, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:27:00'),
(1341, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:27:05'),
(1342, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:28:25'),
(1343, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:28:45'),
(1344, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '18:29:08'),
(1345, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:29:13'),
(1346, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '18:29:36'),
(1347, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:29:40'),
(1348, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '18:29:45'),
(1349, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:29:48'),
(1350, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:38:44'),
(1351, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:38:49'),
(1352, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:39:06'),
(1353, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:39:48'),
(1354, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:39:53'),
(1355, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:44:41'),
(1356, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:44:46'),
(1357, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:45:06'),
(1358, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:45:14'),
(1359, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:45:18'),
(1360, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:46:20'),
(1361, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:46:27'),
(1362, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '18:46:29'),
(1363, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '18:49:39'),
(1364, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:49:42'),
(1365, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:49:45'),
(1366, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:50:10'),
(1367, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '18:50:15'),
(1368, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:50:18'),
(1369, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:50:30'),
(1370, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:50:36'),
(1371, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:50:40'),
(1372, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:51:12'),
(1373, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:51:17'),
(1374, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:51:27'),
(1375, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:51:30'),
(1376, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:51:43'),
(1377, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:51:53'),
(1378, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:51:57'),
(1379, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '18:52:36'),
(1380, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:52:41'),
(1381, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:53:25'),
(1382, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:53:29'),
(1383, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:53:48'),
(1384, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:53:52'),
(1385, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:55:30'),
(1386, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:55:33'),
(1387, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:55:45'),
(1388, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:55:49'),
(1389, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '18:59:46'),
(1390, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:59:51'),
(1391, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '18:59:54'),
(1392, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '19:00:17'),
(1393, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '19:00:21'),
(1394, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '19:00:38'),
(1395, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '19:01:54'),
(1396, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '19:02:04'),
(1397, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '19:02:19'),
(1398, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '19:58:02'),
(1399, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '19:58:55'),
(1400, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '19:59:00'),
(1401, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '19:59:04'),
(1402, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '19:59:31'),
(1403, '/allomyprof/user', '192.168.1.2', '2022-05-14', '20:03:52'),
(1404, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '20:08:22'),
(1405, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '20:08:27'),
(1406, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '20:08:37'),
(1407, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '20:08:48'),
(1408, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '20:09:29'),
(1409, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '20:09:34'),
(1410, '/allomyprof/', '::1', '2022-05-14', '21:09:21'),
(1411, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:09:24'),
(1412, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '21:09:30'),
(1413, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:09:54'),
(1414, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:15:23'),
(1415, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:15:52'),
(1416, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:15:58'),
(1417, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:17:30'),
(1418, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:17:33'),
(1419, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:20:48'),
(1420, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:21:25'),
(1421, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:26:07'),
(1422, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:26:18'),
(1423, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:38:26'),
(1424, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:38:36'),
(1425, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:39:10'),
(1426, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:39:14'),
(1427, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:40:03'),
(1428, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:40:56'),
(1429, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:41:00'),
(1430, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:41:03'),
(1431, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:41:27'),
(1432, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:41:29'),
(1433, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:41:52'),
(1434, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:41:54'),
(1435, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:49:59'),
(1436, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '21:55:10'),
(1437, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '21:55:14'),
(1438, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '22:01:25'),
(1439, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:02:38'),
(1440, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:02:43'),
(1441, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:03:47'),
(1442, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:04:06'),
(1443, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:04:09'),
(1444, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:06:21'),
(1445, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:06:32'),
(1446, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:06:49'),
(1447, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:07:17'),
(1448, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:07:20'),
(1449, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:07:24'),
(1450, '/allomyprof/', '192.168.1.2', '2022-05-14', '22:08:09'),
(1451, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:08:16'),
(1452, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:09:18'),
(1453, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:09:26'),
(1454, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:09:34'),
(1455, '/allomyprof/index', '::1', '2022-05-14', '22:09:47'),
(1456, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:09:54'),
(1457, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:12:47'),
(1458, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:14:16'),
(1459, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:15:24'),
(1460, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:15:27'),
(1461, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:16:24'),
(1462, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:16:36'),
(1463, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:16:40'),
(1464, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:16:50'),
(1465, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:17:25'),
(1466, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:17:41'),
(1467, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:17:50'),
(1468, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:18:05'),
(1469, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:18:10'),
(1470, '/allomyprof/teacher?id=4', '192.168.1.2', '2022-05-14', '22:18:34'),
(1471, '/allomyprof/recherche', '::1', '2022-05-14', '22:20:09'),
(1472, '/allomyprof/teacher?id=5', '::1', '2022-05-14', '22:20:17'),
(1473, '/allomyprof/recherche', '::1', '2022-05-14', '22:22:22'),
(1474, '/allomyprof/teacher?id=21', '::1', '2022-05-14', '22:22:25'),
(1475, '/allomyprof/user', '::1', '2022-05-14', '22:23:42'),
(1476, '/allomyprof/user', '::1', '2022-05-14', '22:27:33'),
(1477, '/allomyprof/teacher?id=4', '::1', '2022-05-14', '22:27:44'),
(1478, '/allomyprof/user', '::1', '2022-05-14', '22:27:55'),
(1479, '/allomyprof/user', '::1', '2022-05-14', '22:28:10'),
(1480, '/allomyprof/user', '::1', '2022-05-14', '22:28:25'),
(1481, '/allomyprof/user', '::1', '2022-05-14', '22:32:13'),
(1482, '/allomyprof/recherche', '::1', '2022-05-14', '22:32:15'),
(1483, '/allomyprof/recherche', '::1', '2022-05-14', '22:35:28'),
(1484, '/allomyprof/recherche', '::1', '2022-05-14', '22:35:44'),
(1485, '/allomyprof/recherche', '::1', '2022-05-14', '22:38:24'),
(1486, '/allomyprof/recherche', '::1', '2022-05-14', '22:39:45'),
(1487, '/allomyprof/recherche', '::1', '2022-05-14', '22:39:49'),
(1488, '/allomyprof/teacher?id=20', '::1', '2022-05-14', '22:40:07'),
(1489, '/allomyprof/teacher?id=19', '::1', '2022-05-14', '22:40:16');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id_matiere` int(11) NOT NULL,
  `matiere` varchar(200) NOT NULL,
  `typematiere` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id_matiere`, `matiere`, `typematiere`) VALUES
(1, 'français', 'langue'),
(2, 'arabe', 'langue'),
(3, 'anglais', 'langue'),
(4, 'espagnole', 'langue'),
(5, 'germanie', 'langue'),
(6, 'algebre', 'economie'),
(7, 'monnaie', 'economie'),
(8, 'probabilité', 'economie'),
(11, 'micro economie', 'economie'),
(12, 'analyse financière', 'economie'),
(13, 'compta de société', 'economie'),
(17, 'mathématique financière', 'economie'),
(18, 'audit', 'economie'),
(20, 'management industriel et logistique', 'economie'),
(21, 'management stratégique', 'economie'),
(23, 'informatique', 'economie'),
(24, 'contrôle de gestion', 'economie'),
(25, 'économiétrie', 'economie'),
(27, 'recherche operationnelle', 'economie'),
(33, 'violon', 'musique'),
(34, 'alto', 'musique'),
(35, 'violoncelle', 'musique'),
(36, 'contrebasse', 'musique'),
(37, 'guitare', 'musique'),
(38, 'harpe', 'musique'),
(39, 'clavecin', 'musique'),
(40, 'piano', 'musique'),
(41, 'flûte à bec', 'musique'),
(42, 'flûte traversière', 'musique'),
(43, 'clarinette', 'musique'),
(44, 'saxophone', 'musique'),
(45, 'trompette', 'musique'),
(46, 'trombone', 'musique'),
(47, 'tuba', 'musique'),
(48, 'orgue', 'musique'),
(49, 'batterie', 'musique'),
(50, 'svt', 'sciences'),
(51, 'mathématique', 'sciences'),
(52, 'phisique', 'sciences'),
(53, 'gym', 'coaching'),
(55, 'déveleppement personnel', 'coaching'),
(56, 'tennis', 'coaching'),
(58, 'psichologie', 'coaching');

-- --------------------------------------------------------

--
-- Structure de la table `privacy_policity`
--

CREATE TABLE `privacy_policity` (
  `id_privacy` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `lang` varchar(10) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `privacy_policity`
--

INSERT INTO `privacy_policity` (`id_privacy`, `title`, `text`, `lang`, `date`, `time`) VALUES
(1, 'Privacy Policy Generator', '<p>Not everyone knows how to make&nbsp;<strong>a Privacy Policy agreement</strong>, especially with&nbsp;<strong>CCPA</strong>&nbsp;or&nbsp;<strong>GDPR</strong>&nbsp;or&nbsp;<strong>CalOPPA</strong>&nbsp;or&nbsp;<strong>PIPEDA</strong>&nbsp;or&nbsp;<strong>Australia\'s Privacy Act</strong>&nbsp;provisions. If you are not a lawyer or someone who is familiar to Privacy Policies, you will be clueless. Some people might even take advantage of you because of this. Some people may even extort money from you. These are some examples that we want to stop from happening to you.</p>\r\n<p>We will help you protect yourself by generating a Privacy Policy.</p>\r\n<p><strong>Our Privacy Policy Generator can help you make sure that your business complies with the law.</strong>&nbsp;We are here to help you protect your business, yourself and your customers.</p>\r\n<p>Fill in the blank spaces below and we will create a personalized website Privacy Policy for your business. No account registration required.&nbsp;<strong>Simply generate &amp; download a Privacy Policy in seconds!</strong></p>\r\n<p><em>Small remark when filling in this Privacy Policy generator: Not all parts of this Privacy Policy might be applicable to your website. When there are parts that are not applicable, these can be removed. Optional elements can be selected in step 2. The accuracy of the generated Privacy Policy on this website is not legally binding. Use at your own risk.</em></p>\r\n<p><strong>Looking for Terms and Conditions?</strong>&nbsp;Check out&nbsp;<a href=\"https://www.termsandconditionsgenerator.com/\" target=\"_blank\" rel=\"noopener noreferrer\">Terms and Conditions Generator</a>.</p>', 'en', '2022-03-24', '00:00:00'),
(2, 'منشئ نهج الخصوصية', '<p><span>لا يعرف الجميع كيفية&nbsp;</span><strong><span>إبرام اتفاقية سياسة الخصوصية</span></strong><span>&nbsp;، خاصةً مع&nbsp;</span><strong><span>CCPA</span></strong><span>&nbsp;أو&nbsp;</span><strong><span>GDPR</span></strong><span>&nbsp;أو&nbsp;</span><strong><span>CalOPPA</span></strong><span>&nbsp;أو&nbsp;</span><strong><span>PIPEDA</span></strong><span>&nbsp;أو أحكام&nbsp;</span><strong><span>قانون الخصوصية الأسترالي</span></strong><span>&nbsp;.&nbsp;إذا لم تكن محامياً أو شخصاً على دراية بسياسات الخصوصية ، فستكون جاهلاً.&nbsp;حتى أن بعض الناس قد يستغلونك بسبب هذا.&nbsp;حتى أن بعض الناس قد يبتزون الأموال منك.&nbsp;هذه بعض الأمثلة التي نريد منع حدوثها لك.</span></p>\r\n<p><span>سنساعدك على حماية نفسك من خلال إنشاء سياسة الخصوصية.</span></p>\r\n<p><strong><span>يمكن أن يساعدك مُنشئ سياسة الخصوصية لدينا على التأكد من أن عملك يتوافق مع القانون.&nbsp;</span></strong><span>نحن هنا لمساعدتك في حماية أعمالك ونفسك وعملائك.</span></p>\r\n<p><span>املأ الفراغات أدناه وسننشئ سياسة خصوصية مخصصة لموقع الويب لعملك.&nbsp;لا يلزم تسجيل الحساب.&nbsp;</span><strong><span>ما عليك سوى إنشاء وتنزيل سياسة الخصوصية في ثوانٍ!</span></strong></p>\r\n<p><em><span>ملاحظة صغيرة عند ملء مُنشئ سياسة الخصوصية هذا: قد لا تنطبق جميع أجزاء سياسة الخصوصية هذه على موقع الويب الخاص بك.&nbsp;عندما تكون هناك أجزاء غير قابلة للتطبيق ، يمكن إزالتها.&nbsp;يمكن تحديد العناصر الاختيارية في الخطوة 2. دقة سياسة الخصوصية التي تم إنشاؤها على هذا الموقع ليست ملزمة قانونًا.&nbsp;استخدام على مسؤوليتك الخاصة.</span></em></p>\r\n<p><strong><span>هل تبحث عن الشروط والأحكام؟&nbsp;</span></strong><span>تحقق من&nbsp;</span><a href=\"https://www.termsandconditionsgenerator.com/\" target=\"_blank\" rel=\"noopener noreferrer\"><span>مُنشئ الشروط والأحكام</span></a><span>&nbsp;.</span></p>', 'ar', '2022-03-24', '00:00:00'),
(3, 'Générateur de politique de confidentialité', '<p><span>Tout le monde ne sait pas comment conclure&nbsp;</span><strong><span>un accord de politique de confidentialit&eacute;</span></strong><span>&nbsp;, en particulier avec les dispositions du&nbsp;</span><strong><span>CCPA</span></strong><span>&nbsp;ou du&nbsp;</span><strong><span>RGPD</span></strong><span>&nbsp;ou de&nbsp;</span><strong><span>la CalOPPA</span></strong><span>&nbsp;ou de la&nbsp;</span><strong><span>LPRPDE</span></strong><span>&nbsp;ou&nbsp;</span><strong><span>de la loi australienne sur la protection de la vie priv&eacute;e</span></strong><span>&nbsp;.&nbsp;Si vous n\'&ecirc;tes pas un avocat ou quelqu\'un qui conna&icirc;t les politiques de confidentialit&eacute;, vous n\'aurez aucune id&eacute;e.&nbsp;Certaines personnes pourraient m&ecirc;me profiter de vous &agrave; cause de cela.&nbsp;Certaines personnes peuvent m&ecirc;me vous extorquer de l\'argent.&nbsp;Ce sont quelques exemples que nous voulons emp&ecirc;cher de vous arriver.</span></p>\r\n<p><span>Nous vous aiderons &agrave; vous prot&eacute;ger en g&eacute;n&eacute;rant une politique de confidentialit&eacute;.</span></p>\r\n<p><strong><span>Notre g&eacute;n&eacute;rateur de politique de confidentialit&eacute; peut vous aider &agrave; vous assurer que votre entreprise respecte la loi.&nbsp;</span></strong><span>Nous sommes l&agrave; pour vous aider &agrave; prot&eacute;ger votre entreprise, vous-m&ecirc;me et vos clients.</span></p>\r\n<p><span>Remplissez les espaces vides ci-dessous et nous cr&eacute;erons une politique de confidentialit&eacute; de site Web personnalis&eacute;e pour votre entreprise.&nbsp;Aucune inscription de compte requise.&nbsp;</span><strong><span>G&eacute;n&eacute;rez et t&eacute;l&eacute;chargez simplement une politique de confidentialit&eacute; en quelques secondes&nbsp;!</span></strong></p>\r\n<p><em><span>Petite remarque lorsque vous remplissez ce g&eacute;n&eacute;rateur de politique de confidentialit&eacute;&nbsp;: toutes les parties de cette politique de confidentialit&eacute; peuvent ne pas s\'appliquer &agrave; votre site Web.&nbsp;Lorsqu\'il y a des pi&egrave;ces qui ne sont pas applicables, celles-ci peuvent &ecirc;tre supprim&eacute;es.&nbsp;Des &eacute;l&eacute;ments facultatifs peuvent &ecirc;tre s&eacute;lectionn&eacute;s &agrave; l\'&eacute;tape 2. L\'exactitude de la politique de confidentialit&eacute; g&eacute;n&eacute;r&eacute;e sur ce site Web n\'est pas juridiquement contraignante.&nbsp;&Agrave; utiliser &agrave; vos risques et p&eacute;rils.</span></em></p>\r\n<p><strong><span>Vous cherchez les termes et conditions&nbsp;?&nbsp;</span></strong><span>Consultez le&nbsp;</span><a href=\"https://www.termsandconditionsgenerator.com/\" target=\"_blank\" rel=\"noopener noreferrer\"><span>g&eacute;n&eacute;rateur de conditions g&eacute;n&eacute;rales</span></a><span>&nbsp;.</span></p>', 'fr', '2022-03-24', '00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

CREATE TABLE `profile` (
  `id_profile` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `src` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profile`
--

INSERT INTO `profile` (`id_profile`, `id_teacher`, `src`) VALUES
(1, 2, '623aeb1643e9c3.74918756_.png'),
(2, 4, '624a4bdde9f528.88872106_.jpg'),
(3, 5, '624f10aae03546.42760858_.jpg'),
(13, 19, '6256154f9911e0.56383294_.jpg'),
(14, 20, '625a340eab15e7.50075443_.png'),
(16, 22, '62746619b7abc5.68100179_.png');

-- --------------------------------------------------------

--
-- Structure de la table `reset`
--

CREATE TABLE `reset` (
  `id_reset` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `changed` tinyint(1) NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reset`
--

INSERT INTO `reset` (`id_reset`, `id_teacher`, `code`, `changed`, `date`, `time`) VALUES
(4, 4, 17651, 1, '2022-04-04', '03:07:02'),
(5, 4, 29540, 1, '2022-04-04', '03:14:25'),
(6, 4, 42149, 1, '2022-04-04', '03:17:26'),
(7, 4, 35546, 1, '2022-04-04', '03:28:49'),
(8, 4, 43371, 1, '2022-04-04', '03:30:15'),
(9, 4, 60897, 1, '2022-04-04', '03:41:26'),
(10, 4, 11533, 0, '2022-04-04', '04:19:23'),
(11, 4, 70670, 0, '2022-04-04', '04:19:56'),
(12, 4, 47278, 0, '2022-04-04', '04:23:14'),
(13, 4, 47882, 0, '2022-04-04', '04:24:53'),
(14, 5, 63137, 0, '2022-04-04', '04:58:02'),
(15, 4, 3328, 0, '2022-04-08', '16:18:23'),
(16, 4, 80085, 0, '2022-04-08', '16:18:43'),
(17, 4, 87808, 0, '2022-04-08', '16:30:33'),
(19, 4, 89720, 0, '2022-04-08', '16:35:04'),
(20, 4, 31110, 0, '2022-04-12', '23:44:14');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id_site` int(11) NOT NULL,
  `site` varchar(20) NOT NULL,
  `dateCreation` date NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `on_off` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id_site`, `site`, `dateCreation`, `telephone`, `email`, `on_off`) VALUES
(1, 'AlloMyProf', '2022-02-26', '+212678987654', 'Booking@support_allomyprof.com', 1);

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

CREATE TABLE `support` (
  `id_support` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `support`
--

INSERT INTO `support` (`id_support`, `name`, `email`, `subject`, `message`, `seen`, `date`, `time`) VALUES
(2, 'hoss', 'bwidb@tghj', 'dineudno', 'hwudwdhnowhdnqolw', 0, '2022-03-28', '21:36:01'),
(3, 'hoss', 'bwidb@tghj', 'dineudno', 'hwudwdhnowhdnqolw', 0, '2022-04-16', '02:23:08'),
(4, 'hoss', 'bwidb@tghj', 'dineudno', 'hwudwdhnowhdnqolw', 0, '2022-04-16', '02:24:56'),
(5, 'hoss', 'bwidb@tghj', 'dineudno', 'hwudwdhnowhdnqolw', 0, '2022-04-16', '02:28:45');

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `id_ville` int(11) DEFAULT NULL,
  `id_country` int(11) DEFAULT NULL,
  `xs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `email`, `password`, `date`, `time`, `id_ville`, `id_country`, `xs`) VALUES
(1, 'khaoulaesakhi@gmail.com', '253e66adc5e2e28675d8bc0457912069', '2022-03-22', '11:28:34', 3, 1, 'bddbecfa0cfbb2812e475c3777276522551846671aebe485a7085eacc14b44c9'),
(2, 'Ssalmaelhayany@gmail.com', '9b0c7f6fbaa2b032d2692c5f47af1aa0', '2022-03-21', '15:00:34', 3, 1, '9f73354b5268605f83d4850336e84d896a463ad261e3efa21db5f8ec628e3302'),
(3, 'Bahlihanane.alae@gmail.com ', '8ca592af52b7d18a5b923c67f9e6f1d6', '2022-03-24', '00:00:00', 3, 1, 'cf478164448c468ae6dd342bf8d327e24e728c7b967b51c35088ec94adcb90cf'),
(4, 'hossameelbezzari@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2022-04-03', '22:30:18', 1, 1, '3788b9a71805e5c3e6843e626cf87b6d2d54cd18f0b429687c5ee328d1b2521d'),
(5, 'labyedhouda22@gmail.com', '4f405e5bd00029c306e582431583ff53', '2022-04-04', '04:55:08', 8, 1, '7dc4f6711a256c006d274e6f38fe91f1eac1e557f97e81a60ead95894f3de6a4'),
(19, 'marouan.officiel10@gmail.com', '1666a18ec1f89f98d8dffec860440f80', '2022-04-12', '23:16:05', 1, 1, 'd0146b0387344c96ad441523dcdb36bc47f94b558809e0225855047f2033be50'),
(20, 'marouanbenhadach@gmail.com', '1666a18ec1f89f98d8dffec860440f80', '2022-04-16', '02:50:53', 1, 1, '9196919189486eb0a364b9d05e6bd4f09de6b2efc4f366659122c5dacdae929d'),
(22, 'ho@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2022-05-05', '23:26:41', 7, 1, '39edb6ae71917c0ca05c00133ff76bfd140c8155b3416d8a88db9b7f77c8c7fd');

-- --------------------------------------------------------

--
-- Structure de la table `teachermatier`
--

CREATE TABLE `teachermatier` (
  `id_teacherMatiere` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `id_matiere` int(11) NOT NULL,
  `time` time NOT NULL DEFAULT current_timestamp(),
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `teachermatier`
--

INSERT INTO `teachermatier` (`id_teacherMatiere`, `id_teacher`, `id_matiere`, `time`, `date`) VALUES
(1, 2, 2, '17:31:22', '2022-05-06'),
(2, 2, 3, '17:31:22', '2022-05-06'),
(3, 2, 1, '17:31:22', '2022-05-06'),
(4, 2, 6, '17:31:22', '2022-05-06'),
(75, 5, 5, '17:31:22', '2022-05-06'),
(83, 19, 51, '17:31:22', '2022-05-06'),
(84, 19, 12, '17:31:22', '2022-05-06'),
(85, 19, 18, '17:31:22', '2022-05-06'),
(86, 19, 23, '17:31:22', '2022-05-06'),
(87, 20, 51, '17:31:22', '2022-05-06'),
(88, 20, 43, '17:31:22', '2022-05-06'),
(89, 20, 36, '17:31:22', '2022-05-06'),
(90, 20, 48, '17:31:22', '2022-05-06'),
(95, 22, 51, '17:31:22', '2022-05-06'),
(96, 22, 58, '17:31:22', '2022-05-06'),
(97, 4, 49, '13:49:16', '2022-05-14'),
(98, 4, 3, '13:49:16', '2022-05-14'),
(99, 4, 5, '13:49:16', '2022-05-14');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `src` varchar(200) NOT NULL,
  `size` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int(11) NOT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `src` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `ville`, `src`) VALUES
(1, 'Casablanca', 'Casablanca.jpg'),
(2, 'El Kelaa des Srarhna', NULL),
(3, 'Fès', 'Fès.jpg'),
(4, 'Tangier', 'Tangier.jpg'),
(5, 'Marrakech', 'Marrakech.jpg'),
(6, 'Sale', 'Sale.jpg'),
(7, 'Rabat', NULL),
(8, 'Meknès', 'Meknès.jpg'),
(9, 'Kenitra', 'Kenitra.jpg'),
(10, 'Agadir', 'Agadir.jpg'),
(11, 'Oujda', 'Oujda.jpg'),
(12, 'Tétouan', 'Tétouan.jpg'),
(13, 'Taourirt', NULL),
(14, 'Temara', 'Temara.jpg'),
(15, 'Safi', 'Safi.jpg'),
(16, 'Laâyoune', 'Laâyoune.jpg'),
(17, 'Mohammedia', NULL),
(18, 'Khouribga', 'Khouribga.jpg'),
(19, 'Béni Mellal', 'Béni Mellal.jpg'),
(20, 'El Jadida', 'El Jadida.jpg'),
(21, 'Ait Melloul', NULL),
(22, 'Nador', 'Nador.jpg'),
(23, 'Taza', 'Taza.jpg'),
(24, 'Settat', 'Settat.jpg'),
(25, 'Barrechid', 'Barrechid.jpg'),
(26, 'Al Khmissat', 'Al Khmissat.jpg'),
(27, 'Inezgane', NULL),
(28, 'Ksar El Kebir', NULL),
(29, 'Larache', NULL),
(30, 'Guelmim', NULL),
(31, 'Khénifra', NULL),
(32, 'Berkane', 'Berkane.jpg'),
(33, 'Bouskoura', NULL),
(34, 'Al Fqih Ben Çalah', NULL),
(35, 'Oued Zem', NULL),
(36, 'Sidi Slimane', NULL),
(37, 'Errachidia', 'Errachidia.jpg'),
(38, 'Guercif', NULL),
(39, 'Oulad Teïma', NULL),
(40, 'Ad Dakhla', NULL),
(41, 'Ben Guerir', NULL),
(42, 'Wislane', NULL),
(43, 'Tiflet', NULL),
(44, 'Lqoliaa', NULL),
(45, 'Taroudannt', NULL),
(46, 'Sefrou', NULL),
(47, 'Essaouira', NULL),
(48, 'Fnidq', NULL),
(49, 'Ait Ali', NULL),
(50, 'Sidi Qacem', NULL),
(51, 'Tiznit', NULL),
(52, 'Moulay Abdallah', NULL),
(53, 'Tan-Tan', NULL),
(54, 'Warzat', NULL),
(55, 'Youssoufia', NULL),
(56, 'Sa’ada', NULL),
(57, 'Martil', NULL),
(58, 'Aïn Harrouda', NULL),
(59, 'Skhirate', NULL),
(60, 'Ouezzane', NULL),
(61, 'Sidi Yahya Zaer', NULL),
(62, 'Benslimane', NULL),
(63, 'Al Hoceïma', NULL),
(64, 'Beni Enzar', NULL),
(65, 'M’diq', NULL),
(66, 'Sidi Bennour', NULL),
(67, 'Midalt', NULL),
(68, 'Azrou', NULL),
(69, 'Ain El Aouda', NULL),
(70, 'Beni Yakhlef', NULL),
(71, 'Semara', NULL),
(72, 'Ad Darwa', NULL),
(73, 'Al Aaroui', 'Al Aaroui.jpg'),
(74, 'Qasbat Tadla', NULL),
(75, 'Boujad', NULL),
(76, 'Jerada', NULL),
(77, 'Chefchaouene', 'Chefchaouene.jpg'),
(78, 'Mrirt', NULL),
(79, 'Sidi Mohamed Lahmar', NULL),
(80, 'Tineghir', NULL),
(81, 'El Aïoun', NULL),
(82, 'Azemmour', NULL),
(83, 'Temsia', NULL),
(84, 'Zoumi', NULL),
(85, 'Laouamra', NULL),
(86, 'Zagora', NULL),
(87, 'Ait Ourir', NULL),
(88, 'Sidi Bibi', NULL),
(89, 'Aziylal', NULL),
(90, 'Sidi Yahia El Gharb', NULL),
(91, 'Biougra', NULL),
(92, 'Taounate', NULL),
(93, 'Bouznika', NULL),
(94, 'Aourir', NULL),
(95, 'Zaïo', NULL),
(96, 'Aguelmous', NULL),
(97, 'El Hajeb', NULL),
(98, 'Mnasra', NULL),
(99, 'Mediouna', NULL),
(100, 'Zeghanghane', NULL),
(101, 'Imzouren', NULL),
(102, 'Loudaya', NULL),
(103, 'Oulad Zemam', NULL),
(104, 'Bou Ahmed', NULL),
(105, 'Tit Mellil', NULL),
(106, 'Arbaoua', NULL),
(107, 'Douar Oulad Hssine', NULL),
(108, 'Bahharet Oulad Ayyad', NULL),
(109, 'Mechraa Bel Ksiri', NULL),
(110, 'Mograne', NULL),
(111, 'Dar Ould Zidouh', NULL),
(112, 'Asilah', NULL),
(113, 'Demnat', NULL),
(114, 'Lalla Mimouna', NULL),
(115, 'Fritissa', NULL),
(116, 'Arfoud', NULL),
(117, 'Tameslouht', NULL),
(118, 'Bou Arfa', NULL),
(119, 'Sidi Smai’il', NULL),
(120, 'Taza', NULL),
(121, 'Souk et Tnine Jorf el Mellah', NULL),
(122, 'Mehdya', NULL),
(123, 'Oulad Hammou', NULL),
(124, 'Douar Oulad Aj-jabri', NULL),
(125, 'Aïn Taoujdat', NULL),
(126, 'Dar Bel Hamri', NULL),
(127, 'Chichaoua', NULL),
(128, 'Tahla', NULL),
(129, 'Bellaa', NULL),
(130, 'Oulad Yaïch', NULL),
(131, 'Ksebia', NULL),
(132, 'Tamorot', NULL),
(133, 'Moulay Bousselham', NULL),
(134, 'Sabaa Aiyoun', NULL),
(135, 'Bourdoud', NULL),
(136, 'Aït Faska', NULL),
(137, 'Boureït', NULL),
(138, 'Lamzoudia', NULL),
(139, 'Oulad Said', NULL),
(140, 'Missour', NULL),
(141, 'Ain Aicha', NULL),
(142, 'Zawyat ech Cheïkh', NULL),
(143, 'Bouknadel', NULL),
(144, 'El Ghiate', NULL),
(145, 'Safsaf', NULL),
(146, 'Ouaoula', NULL),
(147, 'Douar Olad. Salem', NULL),
(148, 'Oulad Tayeb', NULL),
(149, 'Echemmaia Est', NULL),
(150, 'Oulad Barhil', NULL),
(151, 'Douar ’Ayn Dfali', NULL),
(152, 'Setti Fatma', NULL),
(153, 'Skoura', NULL),
(154, 'Douar Ouled Ayad', NULL),
(155, 'Zawyat an Nwaçer', NULL),
(156, 'Khenichet-sur Ouerrha', NULL),
(157, 'Ayt Mohamed', NULL),
(158, 'Gueznaia', NULL),
(159, 'Oulad Hassoune', NULL),
(160, 'Bni Frassen', NULL),
(161, 'Tifariti', NULL),
(162, 'Zawit Al Bour', NULL),
(163, 'Ifrane', 'Ifrane.jpg'),
(164, 'Essaouira', 'Essaouira.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `fullname` (`fullname`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_teacher` (`id_teacher`);

--
-- Index pour la table `contacterwhatsapp`
--
ALTER TABLE `contacterwhatsapp`
  ADD PRIMARY KEY (`id_contact`),
  ADD KEY `id_teacher` (`id_teacher`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id_country`);

--
-- Index pour la table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_faq`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_teacher` (`id_teacher`);

--
-- Index pour la table `infoteacher`
--
ALTER TABLE `infoteacher`
  ADD PRIMARY KEY (`id_teacher`),
  ADD UNIQUE KEY `fullname` (`fullname`);

--
-- Index pour la table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id_matiere`);

--
-- Index pour la table `privacy_policity`
--
ALTER TABLE `privacy_policity`
  ADD PRIMARY KEY (`id_privacy`);

--
-- Index pour la table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profile`),
  ADD KEY `id_teacher` (`id_teacher`);

--
-- Index pour la table `reset`
--
ALTER TABLE `reset`
  ADD PRIMARY KEY (`id_reset`),
  ADD KEY `id_teacher` (`id_teacher`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id_site`),
  ADD UNIQUE KEY `site` (`site`);

--
-- Index pour la table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id_support`);

--
-- Index pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`),
  ADD UNIQUE KEY `gmail` (`email`),
  ADD UNIQUE KEY `xss` (`xs`) USING HASH,
  ADD KEY `id_ville` (`id_ville`),
  ADD KEY `id_country` (`id_country`);

--
-- Index pour la table `teachermatier`
--
ALTER TABLE `teachermatier`
  ADD PRIMARY KEY (`id_teacherMatiere`),
  ADD KEY `id_matiere` (`id_matiere`),
  ADD KEY `id_teacher` (`id_teacher`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`),
  ADD KEY `id_teacher` (`id_teacher`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `contacterwhatsapp`
--
ALTER TABLE `contacterwhatsapp`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1490;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id_matiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `privacy_policity`
--
ALTER TABLE `privacy_policity`
  MODIFY `id_privacy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `reset`
--
ALTER TABLE `reset`
  MODIFY `id_reset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id_site` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `support`
--
ALTER TABLE `support`
  MODIFY `id_support` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `teachermatier`
--
ALTER TABLE `teachermatier`
  MODIFY `id_teacherMatiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_ville` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `contacterwhatsapp`
--
ALTER TABLE `contacterwhatsapp`
  ADD CONSTRAINT `contacterwhatsapp_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `infoteacher`
--
ALTER TABLE `infoteacher`
  ADD CONSTRAINT `infoteacher_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reset`
--
ALTER TABLE `reset`
  ADD CONSTRAINT `reset_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`id_country`) REFERENCES `country` (`id_country`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `teachermatier`
--
ALTER TABLE `teachermatier`
  ADD CONSTRAINT `teachermatier_ibfk_1` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teachermatier_ibfk_2` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
