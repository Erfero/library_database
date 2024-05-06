-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 02 mars 2024 à 18:59
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `library_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add author', 7, 'add_author'),
(26, 'Can change author', 7, 'change_author'),
(27, 'Can delete author', 7, 'delete_author'),
(28, 'Can view author', 7, 'view_author'),
(29, 'Can add gender', 8, 'add_gender'),
(30, 'Can change gender', 8, 'change_gender'),
(31, 'Can delete gender', 8, 'delete_gender'),
(32, 'Can view gender', 8, 'view_gender'),
(33, 'Can add book', 9, 'add_book'),
(34, 'Can change book', 9, 'change_book'),
(35, 'Can delete book', 9, 'delete_book'),
(36, 'Can view book', 9, 'view_book'),
(37, 'Can add comment', 10, 'add_comment'),
(38, 'Can change comment', 10, 'change_comment'),
(39, 'Can delete comment', 10, 'delete_comment'),
(40, 'Can view comment', 10, 'view_comment'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add order item', 13, 'add_orderitem'),
(50, 'Can change order item', 13, 'change_orderitem'),
(51, 'Can delete order item', 13, 'delete_orderitem'),
(52, 'Can view order item', 13, 'view_orderitem'),
(53, 'Can add invoice', 14, 'add_invoice'),
(54, 'Can change invoice', 14, 'change_invoice'),
(55, 'Can delete invoice', 14, 'delete_invoice'),
(56, 'Can view invoice', 14, 'view_invoice'),
(57, 'Can add payment', 15, 'add_payment'),
(58, 'Can change payment', 15, 'change_payment'),
(59, 'Can delete payment', 15, 'delete_payment'),
(60, 'Can view payment', 15, 'view_payment'),
(61, 'Can add l book', 16, 'add_lbook'),
(62, 'Can change l book', 16, 'change_lbook'),
(63, 'Can delete l book', 16, 'delete_lbook'),
(64, 'Can view l book', 16, 'view_lbook'),
(65, 'Can add answer', 17, 'add_answer'),
(66, 'Can change answer', 17, 'change_answer'),
(67, 'Can delete answer', 17, 'delete_answer'),
(68, 'Can view answer', 17, 'view_answer'),
(69, 'Can add contact', 18, 'add_contact'),
(70, 'Can change contact', 18, 'change_contact'),
(71, 'Can delete contact', 18, 'delete_contact'),
(72, 'Can view contact', 18, 'view_contact'),
(73, 'Can add answer', 19, 'add_answer'),
(74, 'Can change answer', 19, 'change_answer'),
(75, 'Can delete answer', 19, 'delete_answer'),
(76, 'Can view answer', 19, 'view_answer'),
(77, 'Can add order item', 20, 'add_orderitem'),
(78, 'Can change order item', 20, 'change_orderitem'),
(79, 'Can delete order item', 20, 'delete_orderitem'),
(80, 'Can view order item', 20, 'view_orderitem'),
(81, 'Can add order', 21, 'add_order'),
(82, 'Can change order', 21, 'change_order'),
(83, 'Can delete order', 21, 'delete_order'),
(84, 'Can view order', 21, 'view_order'),
(85, 'Can add cart', 22, 'add_cart'),
(86, 'Can change cart', 22, 'change_cart'),
(87, 'Can delete cart', 22, 'delete_cart'),
(88, 'Can view cart', 22, 'view_cart'),
(89, 'Can add PayPal IPN', 23, 'add_paypalipn'),
(90, 'Can change PayPal IPN', 23, 'change_paypalipn'),
(91, 'Can delete PayPal IPN', 23, 'delete_paypalipn'),
(92, 'Can view PayPal IPN', 23, 'view_paypalipn');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$CQCBLT1efVNYllN94PMJ7X$jvJnP2RFyGHaSjr+M9u/vYREO8KBlOgkVXfYuWAiVYc=', '2024-03-01 09:15:51.473487', 1, 'possidius.capo', 'Possidius', 'Capo', 'nothcapo@gmail.com', 1, 1, '2024-02-20 15:39:14.207836'),
(2, 'pbkdf2_sha256$720000$q7oKYJMJ8fxuAIB8vLS6WH$N8VgBQ3CcFS1rU2wOSVLXThi0CWAAL7UZ2f/QgI2w4U=', '2024-02-21 15:02:38.727904', 0, '@Capo', '', '', '', 0, 1, '2024-02-21 15:00:35.000000');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_answer`
--

CREATE TABLE `catalogue_answer` (
  `id` char(32) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `comment_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_author`
--

CREATE TABLE `catalogue_author` (
  `id` char(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `biography` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catalogue_author`
--

INSERT INTO `catalogue_author` (`id`, `name`, `biography`, `created_at`, `updated_at`, `image`) VALUES
('02c17af7976e43c3a2b0d6d88cd4f699', 'François René De Châteaubriand', 'François-René, vicomte de ChateaubriandN 1, né le 4 septembre 1768 à Saint-Malo et mort le 4 juillet 1848 à Paris, est un écrivain, mémorialiste et homme politique français. Il est considéré comme l\'un des précurseurs et pionniers du romantisme français et l\'un des grands noms de la littérature française.\r\n\r\nIssu de la noblesse bretonne, membre le plus célèbre de sa famille originaire de Saint-Malo, Chateaubriand s\'inscrit politiquement dans la mouvance royaliste. Plusieurs fois ambassadeur auprès de souverains divers, il est nommé, en 1822, sous la Restauration, ministre des Affaires étrangères et occupe cette fonction jusqu\'en 1824. Sous le règne de Charles X, il compte parmi les ultraroyalistes. Les nombreuses responsabilités politiques et diplomatiques qui jalonnent sa carrière ainsi que son goût pour le voyage, en Amérique puis dans le bassin méditerranéen, structurent une vie marquée par l\'exil et la nostalgie de la stabilité.\r\n\r\nSes premières publications majeures, l\'Essai sur les révolutions (1797)1 et le Génie du christianisme (1802), manifestent son engagement politique alors en faveur de la contre-révolution et en défense de la société d\'Ancien Régime. Mais la question idéologique s\'entremêle très rapidement à la promotion d\'une esthétique originale qui remporte un grand succès populaire et littéraire : la description de la nature et l\'analyse des sentiments du « Moi », qu\'il met en œuvre dans les fictions Atala (1801) et René (1802). D\'abord publiées comme illustrations des thèses du Génie puis rattachées au vaste cycle romanesque des Natchez (intégralement paru en 1826), elles sont un modèle pour la génération suivante des écrivains français. Sa propension au mystère, à l\'amplitude, à l\'emphase, à la grandeur mélancolique, sa tentative d\'exprimer une souffrance indicible et sa soif d\'exotisme, qu\'il réaffirme dans le récit de son voyage en Méditerranée Itinéraire de Paris à Jérusalem (1811), lui ont valu d\'être considéré a posteriori comme l\'un des « préromantiques » les plus influents de sa génération. La sensibilité douloureuse de ce « vague des passions », illustré à travers le personnage de René, connaît une importante postérité dans le romantisme français : le « mal du siècle » de Musset ou le « spleen » de Baudelaire peuvent en être considérés, entre autres, comme de lointains avatars.\r\n\r\nMais l\'œuvre monumentale de Chateaubriand réside dans les Mémoires d\'outre-tombe, parus à titre posthume dès 1849, dont les premiers livres recréent son enfance et sa formation dans son milieu social de petite noblesse à Saint-Malo et à Combourg. Les livres suivants relèvent davantage du tableau historique des périodes dont il a été le témoin de 1789 à 1841. Ce texte, à la fois chef-d\'œuvre autobiographique et témoignage historique de premier plan, manifeste une évolution de sa prose qui ne demeure pas moins influente sur la littérature française.', '2024-02-20 16:06:53.489056', '2024-02-20 16:06:53.489056', 'authorImage/260px-Anne-Louis_Girodet-Trioson_006_u2NhdTK.jpg'),
('16b96b50730a4ec682259a754c947c30', 'Virginie Despentes', 'Enfance (1969-1980)\r\nÀ sa naissance, ses parents, postiers engagés dans le syndicat CGT, ont vingt et dix-neuf ans4. Elle participe avec eux à des manifestations4, et à deux ans chante L\'Internationale4. Son vrai nom est Virginie Daget5. Elle prend le pseudonyme de Virginie Despentes à vingt-cinq ans.\r\n\r\nSa mère lui achète les Fantômette de la Bibliothèque rose, mais ce sont les subversifs Reiser et Wolinski qu\'elle aime lire en cachette4. À l\'école primaire elle exaspère ses maîtres par des bagarres incessantes avec les garçons, qu\'elle dépasse tous en taille4. En grandissant, c\'est Marilyn Monroe, image de la fragilité féminine, qu\'elle se choisit comme idole. Mais elle la reniera à l\'adolescence4.\r\n\r\nAdolescence (1981-1987)\r\nÀ quinze ans, elle est internée contre son gré6 en hôpital psychiatrique7 pendant un peu plus de deux mois6. La psychothérapie, en dépit de la sollicitude bienveillante ressentie par la patiente, se heurte à la violence de l\'institution[non neutre] et reste un échec que suivent une déscolarisation et une errance à travers les préfectures de France, au cours de laquelle l\'adolescente est arrêtée de très nombreuses fois par la police6.\r\n\r\nÀ dix-sept ans, en faisant de l\'auto-stop au retour d\'un voyage à Londres, elle est victime d\'un viol, qui fera en 2006 la matière d\'un chapitre de son ouvrage King Kong Théorie8. Face à ce traumatisme elle s\'installe dans le déni. Cet épisode douloureux constituera le ressort du personnage de Manu dans son premier roman, Baise-moi. Ce n\'est que vingt ans plus tard qu\'elle reconnaîtra à propos de ce viol qu\'« […] il est fondateur, de ce que je suis en tant qu\'écrivain, en tant que femme qui n\'en est plus tout à fait une. C\'est à la fois ce qui me défigure et me constitue »9.\r\n\r\nTout en travaillant comme femme de ménage à Longwy, elle passe son baccalauréat en candidate libre, et n\'a pas encore dix huit ans quand elle s\'inscrit à Lyon dans une école de cinéma, qui deviendra deux ans plus tard l\'ARFIS.\r\n\r\nLes années post-punk (1988-1993)\r\nHébergée dans un foyer de la Croix-Rousse mais seule, elle sombre dans un alcoolisme à la bière tout en s\'enivrant de la lecture de Bukowski4. Elle multiplie les petits emplois : baby-sitter, superviseuse pour un réseau Minitel, employée chez Auchan, vendeuse chez un disquaire, puis pigiste pour des journaux de rock10. Adepte du groupe de rock alternatif Bérurier noir11, elle en fréquente le milieu, celui des punks et des autonomes. Le manque d\'argent11 l\'amène à « la prostitution volontaire et occasionnelle »12 via le Minitel rose, dans des « salons de massage » et des peep shows.\r\n\r\nEn 1992 elle souffre d\'un grave eczéma généralisé et se réfugie dans la maison que ses parents lui abandonnent pour les vacances4. En un mois11 elle y écrit le roman Baise-moi4. À l\'automne la jeune femme rejoint un squat11 parisien et mène une vie de chef de bande, de manifestations et de violence11. Son manuscrit circule sous forme de copies dans le milieu post-punk mais il sera refusé par neuf maisons d\'édition et même par ceux des libraires qui proposent des ouvrages en dépôt11. Son style trash déplaît et effraie les professionnels.\r\n\r\nEn 19934 elle travaille à Paris comme critique de films pornographiques pour un magazine spécialisé. À l\'occasion, pour vivre, elle continue de se prostituer11.', '2024-02-20 15:57:14.356352', '2024-02-20 16:29:13.560092', 'authorImage/260px-Virginie_Despentes_2012.jpg'),
('1dfdf091822241fdba861657c3fc153a', 'Chloé Delaume', 'Enfance et études\r\nNée en 1973 d\'une mère française et d\'un père libanais, Chloé Delaume passe une partie de son enfance à Beyrouth, où la guerre civile commencée en 1975 finit par détruire sa maison. En 1983 se déroule à Paris un drame qui hantera toute son œuvre : alors qu\'elle n\'a que dix ans, son père tue sa mère devant ses yeux puis se suicide2.\r\n\r\nElle va ensuite vivre chez ses grands-parents puis chez son oncle et sa tante. Voulant devenir professeure comme sa mère, elle s\'inscrit à la faculté de Nanterre en Lettres modernes jusqu’à la maîtrise3 et entame un mémoire inachevé sur La Pataphysique chez Boris Vian4.\r\n\r\nDéçue par le système universitaire, elle quitte la faculté et se met à écrire en se prostituant dans des bars à hôtesses5.\r\n\r\nCarrière littéraire\r\nDe 1998 à 2001, elle travaille comme critique littéraire au Matricule des Anges sous son vrai nom, tout en commençant à publier des textes en revues 6.\r\n\r\nEntre 1999 et 2002, elle fait partie du noyau dur7 de la revue littéraire EvidenZ8 fondée par Mehdi Belhaj Kacem (son mari jusqu\'en 2002). Elle publie trois textes dans la revue, pour la première fois sous le nom de Chloé Delaume. Le prénom « Chloé » a été emprunté à l\'héroïne du roman L\'Écume des jours de Boris Vian et le patronyme « Delaume » provient de l\'ouvrage d\'Antonin Artaud, L\'Arve et l\'Aume : « il y a mort de l\'identité civile parce que je ne l\'ai pas choisie. Un beau matin je me suis dit “ça suffit, ma vie ne me convient pas, qui je suis ne me convient pas, je vais être autre” et j\'ai pris cette décision9. » Elle quitte la revue après le deuxième et dernier numéro.\r\n\r\nElle publie son premier roman, Les Mouflettes d\'Atropos, en 2000, chez Farrago10.\r\n\r\nDe septembre à décembre 2001, elle est résidente au CipM11[source insuffisante] où elle écrit Monologue pour épluchures d’Atrides, publié en 2003 aux éditions du CipM/Spectres familiers.\r\n\r\nAutomne 2001, elle remporte le prix Décembre pour son roman, Le Cri du sablier12.\r\n\r\nEntre janvier 2005 et juin 2007, elle gère le forum de l\'émission Arrêt sur images, présenté par Daniel Schneidermann sur France 513 et rend compte des critiques et remarques qui y sont écrites une fois par mois sur le plateau de l\'émission. Chloé Delaume est alors surnommée « la forumancière »[réf. nécessaire]. Durant cette période, elle écrit et publie J’habite dans la télévision, qu’elle déclinera en performances.\r\n\r\nEn 2008, elle participe à la création de la revue de littérature contemporaine Tina14, aux éditions è®e.\r\n\r\nEn 2010, elle est nommée Chevalière des Arts et des Lettres15.\r\n\r\nLa même année, elle lance la manifestation « À vous de lire » dont elle est la marraine avec Frédéric Mitterrand16.\r\n\r\nFin 2010, Chloé Delaume devient directrice d\'une collection intitulée « Extraction17 » aux éditions Joca Seria. Elle souhaite alors éditer principalement de la littérature expérimentale. Elle y publiera onze titres.\r\n\r\nD\'avril 2011 à avril 2012, elle est pensionnaire à la Villa Médicis18 où elle fait des recherches sur Messaline et interroge magie et politique à travers des performances.\r\n\r\nEntre le 6 mai 2012 et le 16 juillet 2012, elle tient une chronique hebdomadaire intitulée « Bienvenue à Normaland », sur le site Arrêt sur images19.\r\n\r\nEn 2017, elle développe le cycle Liberté-Parité-Sororité avec le programme de résidence d’écrivains de la Région Île de France, à la librairie Violette and Co, tout en menant des ateliers d’écriture au Palais de la Femme20.\r\n\r\nEn 2019, elle entre au comité de lecture du pôle littérature des éditions du Seuil. La même année, elle intègre le jury du Prix Décembre.\r\n\r\nEn 2020, elle est lauréate du Prix Médicis pour son roman Le Cœur synthétique.\r\n\r\nEn 2021, elle tient durant six mois la chronique Au lance-flammes du magazine Causette.\r\n\r\nEn 2021, elle dirige l’ouvrage collectif Sororité publié par Points Féminisme, auquel participent quatorze autrices telles que Lydie Salvayre, Lola Lafon, Ovidie, Camille Froidevaux-Metterie ou encore Alice Coffin.\r\n\r\nDe 2021 à 2023, elle organise un dimanche par mois La petite veillée, une soirée lecture dans le café féministe Chez Mona, à Paris. Elle y invite de nouvelles voix, et met en avant la poésie[réf. nécessaire].\r\n\r\nEn 2023, elle est la marraine de la Villa Valmont, maison des écritures et des paysages, qui ouvre ses portes en avril.', '2024-02-20 15:57:49.628439', '2024-02-20 16:27:22.146851', 'authorImage/Chloe_Delaume.jpg'),
('211ae721319847b7bf7c85cbb5f45612', 'Mariama Bâ', 'Mariama Bâ naît à Dakar au Sénégal en 1929, sous domination française, dans une famille fortunée. Son père était fonctionnaire de l\'État puis ministre de la Santé dans un Sénégal devenu indépendant1.\r\n\r\nAprès la mort prématurée de sa mère, elle est élevée par ses grands-parents dans un milieu musulman traditionnel2. Son père, Amadou Bâ, est devenu ministre de la Santé du premier gouvernement sénégalais en 19573.\r\n\r\nElle intègre une école française où elle se fait remarquer par ses excellents résultats. Après son certificat d\'études primaires obtenu à 14 ans, elle est reçue première4, en 1943, au concours d\'entrée à l’École normale de Rufisque, qu’elle quitte munie d’un diplôme d’enseignement en 19475. Cette année-là, une de ses compositions, citée par Maurice Genevoix et Jacques Richard-Molard dans l\'un de leurs ouvrages6,7, paraît dans la revue Esprit8. Elle enseigne pendant douze ans dans l’école Faidherbe située dans le quartier de la Médina à Dakar9 puis demande sa mutation au sein de l’Inspection régionale de l’enseignement pour raison de santé2.\r\n\r\nDe son premier mariage, avec Bassirou Ndiaye, elle a trois filles, et du second mariage avec Ablaye Ndiaye une fille Seynabou M.Ndiaye ; elle obtient le divorce de son troisième mari, le député et ministre Obèye Diop, avec qui elle a cinq enfants.', '2024-02-20 15:55:06.447163', '2024-02-20 15:55:06.447163', 'authorImage/Mariama_Bâ_vers_1958_Unesco_Domaine_public.jpg'),
('36d86546c032454e9c8d9d545e29f34f', 'Seydou Badian', 'Seydou Badian Kouyaté effectue des études de médecine à l’université de Montpellier en France2. Il est l\'auteur d\'une thèse sur les traitements africains de la fièvre jaune3 et fut un grand poète\r\n\r\nEn 1956, il rentre au Mali et est nommé médecin de circonscription2. Proche du premier président Modibo Keïta, il écrit les paroles de l’hymne national du Mali. Il devient à l\'indépendance du pays ministre de l\'Économie rural et du Plan. Lors du remaniement du 17 septembre 1962, il devient ministre du Développement4. Il défend l\'existence d\'un parti unique dans l\'Afrique post-colonial, seul moyen selon lui de créer la Nation5. Lors du coup d’État de Moussa Traoré en 1968, il est déporté à Kidal puis s’exile à Dakar au Sénégal.\r\n\r\nEn 1997, il est candidat à l\'élection présidentielle6 mais décide, comme la plupart des autres candidats opposés au président sortant Alpha Oumar Konaré, de retirer sa candidature pour protester contre la mauvaise organisation des élections7.\r\n\r\nMilitant de la première heure de l’Union soudanaise-Rassemblement démocratique africain, il en est exclu en 1998 pour s’être opposé à une partie de la direction qui prônait la non-reconnaissance des institutions lors des élections contestées8.\r\n\r\nÉcrivain reconnu internationalement, il publie en 1957, trois ans avant l’indépendance du Mali, son premier roman intitulé Sous l’orage. En 1965, il publie les dirigeants africains face à leurs peuples. Deux autres romans sont publiés ensuite, Le Sang des masques en 1976 et Noces sacrées en 1977.\r\n\r\nEn octobre 2007, Seydou Badian Kouyaté publie un roman intitulé La Saison des pièges9.\r\n\r\nSeydou Badian a été sacré lauréat du Grand Prix des mécènes aux GPAL 2017 pour l\'ensemble de sa production bibliographique.ces ouvres sont etudié au Sénégal.', '2024-02-21 15:49:00.980590', '2024-02-21 15:49:00.980590', 'authorImage/seydou-badian-88553-250-400.jpg'),
('64994f6e2ec6456995104e35531d35da', 'Ousmane Sembène', 'Ousmane Sembène, né le 1er janvier 1923 à Ziguinchor, Sénégal et mort le 9 juin 2007 à Dakar (Sénégal), est un écrivain, réalisateur et scénariste sénégalais, personnalité majeure de l\'Afrique contemporaine, connu pour ses partis pris militants sur les questions politiques et sociales.\r\n\r\nIl a grandi dans une famille pauvre et a dû abandonner l\'école à un jeune âge. Plus tard, il a été soldat pendant la Seconde Guerre mondiale et a ensuite travaillé comme docker avant de s\'engager dans la lutte pour l\'indépendance du Sénégal. C\'est à cette époque qu\'il se prend de passion pour le cinéma et commence à réaliser des films. Ses premiers films sont des documentaires qui attirent l\'attention du public sur les problèmes sociaux et politiques de l\'Afrique. Plus tard, il réalise des longs-métrages de fiction, dont certains deviennent des classiques du cinéma africain.', '2024-02-21 15:50:32.327856', '2024-02-21 15:50:32.327856', 'authorImage/Ousmane_Sembène_1987_by_Guenter_Prust.jpg'),
('68e4c2d2f02846a7b1a1f048b33d1992', 'Fatou Diome', 'Fatou Diome est née en 1968 à Niodor sur la petite île de Guior, dans le delta du Saloum, en pays sérère, au sud-ouest du Sénégal1. Fille naturelle, elle est élevée par sa grand-mère, Aminata (qui est née dans un département français du Sénégal), et son grand-père, tous deux pêcheurs1,2,3. Son nom vient du Sine Saloum, où les Diome sont des Niominka2.\r\n\r\nContrairement à ce qu\'exigent les traditions de sa terre natale, elle côtoie les hommes plutôt que d\'aller aider les femmes à préparer les repas et assurer les tâches ménagères4. Toujours en décalage avec le microcosme de l\'île, elle décide d\'aller à l\'école et apprend le français. Quand elle était jeune, « ce n’était que [ses] grand-parents qui [la] traitaient comme une personne5 », disait-elle dans un entretien. Sa grand-mère était « sa complice », et elle lui confiait tous ses petits cahiers5.\r\n\r\nÀ treize ans, elle se passionne pour la littérature francophone et commence à écrire2. Fatou Diome quitte son village pour aller poursuivre ses études dans d\'autres villes du Sénégal, tout en finançant cette vie nomade par de petits boulots dès ses 14 ans1 ; puis elle va au lycée de M\'bour, travaille en tant que servante en Gambie et finit par entamer des études universitaires à Dakar1,4. À ce moment, elle songe à devenir professeur de français, loin de l\'idée de quitter son pays natal1,4.\r\n\r\nMais, à vingt-deux ans, un Français venu travailler au Sénégal tombe amoureux d\'elle6, ils se marient et décident de s\'installer en France, à Strasbourg, en 19941,7. Rejetée par la famille de son époux, elle divorce deux ans plus tard et se retrouve en grande difficulté, abandonnée à une condition d\'immigrée sur le territoire françaisNote 1,2. Pour pouvoir subsister et financer ses études, elle doit faire des ménages pendant six ans, y compris lorsqu\'elle peut exercer la fonction de chargée de cours durant son DEA (diplôme d\'études approfondies), avant de commencer sa thèse sur « Le voyage, les échanges et la formation dans l’œuvre littéraire et cinématographique de Sembène Ousmane »8,9.\r\n\r\nL\'étude du motif du « voyage » chez Sembène Ousmane a inspiré ses œuvres ultérieures et a influencé la liberté de ton, le sens du récit et la justesse des descriptions dans des œuvres comme Celles qui attendent10.', '2024-02-20 15:52:03.337082', '2024-02-20 15:52:03.337082', 'authorImage/260px-Fatou_Diome_par_Claude_Truong-Ngoc_avril_2015.jpg'),
('7e1902e4184c4d59a667cdcb6ae33517', 'Abdourahman Waberi', 'Abdourahman A. Waberi est né dans un milieu modeste en République de Djibouti. Bac littéraire en poche, il part en France poursuivre ses études en 1985, d\'abord à Caen, puis à l\'Université de Bourgogne à Dijon où il obtient en 1993 un DEA de littérature anglaise.\r\n\r\nÀ partir de 1996, il est enseignant d\'anglais dans des lycées en Normandie jusqu\'en 2005, en parallèle à ses premières productions littéraires.\r\n\r\nEn 2010, il est professeur invité et William F. Podlich Distinguished Fellow au Claremont McKenna College et membre du jury du prix International IMPAC Dublin Literary Award.\r\n\r\nEn 2010-2011 il est pensionnaire de l\'Académie de France à Rome, à la Villa Médicis. En 2012, il est professeur invité à l\'Université d\'Innsbruck en Autriche.\r\n\r\nEn juin 2012, il soutient une thèse de doctorat en langue et littérature française intitulée Fragments d\'un discours africain. Approches critique et historique des littératures subsahariennes, francophones et transnationales de 1980 à aujourd\'hui , sous la direction de Jean-Marc Moura à l\'université Paris Ouest-Nanterre La Défense1.\r\n\r\nIl enseigne actuellement les littératures françaises et francophones et la création littéraire à George Washington University à Washington DC. Il collabore régulièrement avec Le Monde et d\'autres journaux et magazines français.\r\n\r\nEn décembre 2021, il rejoint le Parlement de l\'Union Populaire, organe soutenant la candidature de Jean-Luc Mélenchon à l\'élection présidentielle française de 20222.', '2024-02-20 16:01:29.832979', '2024-02-20 16:01:29.832979', 'authorImage/Abdourahmanwaberi.jpg'),
('8eb7de695dd74d01a401695268d69c8a', 'Alain Mabanckou', 'Alain Mabanckou, né le 24 février 1966 à Pointe-Noire (république du Congo), a été élevé par sa mère, Pauline Kengué, vendeuse de bananes au marché, et Roger Kimangou, un père adoptif réceptionniste dans un hôtel. Son père biologique a quitté sa mère lorsqu\'elle était enceinte4. Alain a pris le nom de son oncle René Mabanckou5. Alain Mabanckou passe son enfance dans la ville côtière de Pointe-Noire, plus précisément dans le quartier de Tié-Tié6. Il découvre la lecture d\'abord à travers les San Antonio et SAS abandonnés par les coopérants français, que son père lui rapporte de l\'hôtel7.\r\n\r\nIl obtient un baccalauréat en lettres et philosophie au lycée Karl-Marx. Il s\'oriente alors vers le droit, sa mère souhaitant qu’il devienne magistrat ou avocat. Après un premier cycle de droit privé à l\'université Marien-Ngouabi à Brazzaville (République du Congo), il obtient une bourse d’études et s\'envole pour la France à l\'âge de 22 ans8. Il emporte déjà dans ses affaires quelques manuscrits, des recueils de poèmes pour la plupart, qu\'il commencera à publier trois ans plus tard. Il étudie à l\'université de Nantes, puis à Paris XII et à Paris-Dauphine9.\r\n\r\nIl travaille une dizaine d\'années dans le groupe Suez-Lyonnaise des Eaux, mais se consacre de plus en plus à l\'écriture avec la parution de son premier roman Bleu-Blanc-Rouge publié aux éditions Présence Africaine en 1998 et qui lui vaut le Grand prix littéraire d\'Afrique noire10.\r\n\r\nÉcrivain en résidence en 2002, il enseigne la littérature francophone à Ann Arbor (Michigan USA) pendant trois ans avant d\'être embauché en 2006 par l’Université de Californie à Los Angeles (UCLA) où il est jusqu\'à ce jour professeur titulaire (Full Professor) de littérature francophone. Sur proposition d\'Antoine Compagnon, il est élu comme professeur invité au Collège de France à la Chaire de Création artistique pour l\'année universitaire 2015-2016, devenant ainsi le premier écrivain à occuper ce poste depuis sa création en 200411. Le 17 mars 201612, il y prononce sa leçon inaugurale intitulée Lettres noires : des ténèbres à la lumière13, devant des invités comme la ministre des Outre-Mer George Pau-Langevin, la ministre de la Culture Audrey Azoulay, la secrétaire générale de la francophonie Michaëlle Jean, l’écrivain et diplomate Henri Lopes ainsi que l’écrivain et académicien Dany Laferrière14.\r\n\r\nDepuis 2021, il dirige la collection Points Poésie chez Éditions Points15. Il est également chroniqueur à L\'Obs16. En 2021, il devient un de 12 inaugural Royal Society International Writers17.', '2024-02-20 16:00:31.319883', '2024-02-20 16:00:31.319883', 'authorImage/260px-Alain_Mabanckou-1050121.jpg'),
('d4d9c3b3562e47ccb6b3fb76c48a43ef', 'Jean PLIYA', 'Jean Pliya est un écrivain Béninois. Né le 21 Juillet 1931 à Djougou, il est marié et père de 7 enfants.\r\n\r\nJean Pliya est un écrivain Béninois. Né le 21 Juillet 1931 à Djougou, il est marié et père de 7 enfants. Il commence ses études secondaires au Bénin en 1946 pour les poursuivre en Côte d’Ivoire, au Sénégal et en France. En 1955, il obtient sa licence en Géographie puis son DES en 1957. La même année, il passe son CAPES et devient Professeur certifié d’Histoire et de Géographie. Il enseigne alors l’Histoire et la Géographie en France et au Bénin entre 1957 et 1969. De 1969 à 1972, il est Assistant de Géographie à l’Université du Bénin au Togo, puis de 1972 à 1976 à l’Université Nationale du Bénin. En 1976, il devient Maître Assistant. Il enseignera également la Géographie Tropicale et Economique à l’Université de Niamey au Niger entre 1983 et 1991.\r\nJean Pliya mène également des activités politiques et administratives à son retour au bénin, à la veille de l’Indépendance. De 1960 à 1963, il est Directeur de Cabinet du Ministre de l’Education Nationale. En 1963, il devient Ministre de l’Information et du Tourisme. De 1964 à 1967, Jean Pliya est député à l’Assemblée Nationale. Il occupera aussi le poste de Recteur de l’Université Nationale du Bénin de 1981 à 1983.\r\nEntre 1980 et 1983, l’écrivain est également membre Titulaire du Conseil d’Administration et du Comité Permanent de l’Institut de l’UNESCO pour l’Education.\r\nJean Pliya est également connu pour son engagement religieux. Il a été Responsable de la Jeunesse Etudiante Chrétienne et de l’Action Catholique des Familles à l’Université de Toulouse. Il est également le Responsable National du Renouveau Charismatique Catholique au Bénin.\r\nIl recevra de nombreuses distinctions, entre autres, le Prix de la Meilleur Nouvelle Africaine en 1963 à Paris pour son œuvre « l’Arbre Fétiche », le Grand Prix de Littérature d’Afrique Noire en 1967 pour son livre « Kondo le Requin » et la distinction au rang de Chevalier dans l’Ordre Français des Arts et Lettres le 21 janvier 1974 puis au rang d’Officier le 19 Septembre 1981.', '2024-02-20 16:05:38.193508', '2024-02-20 16:05:38.193508', 'authorImage/jean-pliya-979371-330-540.jpg'),
('d658386e7937457e90b7efc1dc6cf03b', 'Paul Coelho', 'Paulo Coelho de Souza est né à Rio de Janeiro ; son père était ingénieur appartenant à la classe moyenne brésilienne. Il fréquente l’école jésuite de San Ignacio. Ses parents le veulent ingénieur, Paulo aime le théâtre. Quand il annonce à sa mère qu\'il souhaite devenir écrivain, sa mère lui répond : « Mon chéri, ton père est un ingénieur. C\'est un homme raisonnable et logique avec une vision très nette du monde. Sais-tu exactement ce qu’est un écrivain ? »[réf. nécessaire]. Après quelques recherches, Paulo découvre qu\'un écrivain « porte toujours des lunettes et ne se coiffe jamais »[réf. nécessaire] et a le devoir « de ne jamais être compris par sa génération »[réf. nécessaire].\r\n\r\nIntroverti et rebelle, il s\'oppose au chemin tracé par ses parents. Son père, désemparé par cet enfant difficile, le fait interner dans un hôpital psychiatrique alors qu’il n’avait que dix-sept ans. Il s\'en est échappé trois fois avant d’être relâché à l\'âge de 20 ans. Paulo Coelho dit à ce sujet « Ils n\'ont pas fait ça pour me faire souffrir... mais ils ne savaient pas quoi faire. Ils n\'ont pas fait ça pour me détruire, ils ont fait ça pour me sauver. » Bien des années plus tard, l’écrivain puisera dans cette expérience pénible le matériau de son roman Veronika décide de mourir.\r\n\r\nPour faire plaisir à ses parents, Paulo Coelho décide de suivre des études de droit et met de côté son rêve de devenir écrivain. Mais il abandonne tout un an plus tard[réf. nécessaire].\r\n\r\nLes années 1960 voient l’explosion internationale du mouvement hippie. Paulo y souscrit, ainsi qu’à tous ses excès. À l\'âge de 23 ans, il abandonne sa ville natale pour voyager à travers le Mexique, le Pérou, la Bolivie et le Chili, ainsi qu\'à travers l\'Europe et l\'Afrique du Nord. Deux ans plus tard, il revient au Brésil et commence à composer des paroles de chansons populaires, travaillant avec des musiciens tels que Raul Seixas. Leur association est un succès, et leur collaboration contribue à changer le visage de la scène rock brésilienne. Paulo Coelho s\'est réconcilié avec la confession catholique en rencontrant sa femme Christina Oiticica, artiste peintre.\r\n\r\nIl est brièvement emprisonné en 1974 sous le prétexte d\'avoir commis des gestes subversifs contre la dictature brésilienne, et torturé durant son emprisonnement3. Après cette expérience, Paulo Coelho aspire à une vie ordinaire. Il est alors journaliste spécialisé dans la musique brésilienne, puis il travaille chez Polygram et rencontre sa première épouse. Cet épisode de « normalité » ne dure que quelques années. En 1978, il quitte sa femme et son travail.\r\n\r\nSon questionnement spirituel l\'amène à participer à bien des expériences, y compris des rituels de magie noire.\r\n\r\nSur le chemin du pèlerinage de Saint-Jacques-de-Compostelle, il trouve l\'inspiration de son premier livre, Le Pèlerin de Compostelle, publié en 1987, mais qui ne sera exporté que dix ans plus tard. Dans une interview il raconte : « J\'étais très heureux dans ce que je faisais. Je faisais quelque chose qui me donnait nourriture et eau. Je travaillais, j\'avais une personne que j\'aimais à mes côtés, j\'avais de l\'argent. Mais je ne vivais pas mon rêve. Mon rêve était, et l\'est toujours, de devenir écrivain. »\r\n\r\nIl laisse tomber sa carrière d’interprète pour se consacrer entièrement aux livres.\r\n\r\nPaulo Coelho a épousé en secondes noces en 1980 l\'artiste-peintre brésilienne Christina Oiticica. Il habite à Genève puis à Tarbes, dans le sud-ouest de la France, ville dont il se déclara amoureux, en dehors des périodes où il voyage pour promouvoir son œuvre. Il consacre une partie de ses revenus à sa fondation qui s\'occupe de jeunes et de personnes âgées délaissées à Rio de Janeiro.', '2024-02-20 16:22:23.514328', '2024-02-20 16:22:23.514328', 'authorImage/260px-Paulo_Coelho_2007-04-09_001.jpg'),
('f1172221f4ca442d84abd50c5eb9dc4e', 'Jean Echenoz', 'Fils d\'un père médecin psychiatre et d\'une mère pratiquant la gravure2, Jean Echenoz passe sa jeunesse dans l\'Aveyron et dans les Alpes-de-Haute-Provence3, poursuit des études universitaires de sociologie à Aix-en-Provence3 puis s\'installe en 19703 à Paris où il suit les cours de l\'École pratique des hautes études ainsi que des enseignements à la Sorbonne. En 1979, il publie son premier ouvrage, Le Méridien de Greenwich (prix Fénéon 1980).\r\n\r\nÀ ce jour, il a publié tous ses romans aux Éditions de Minuit4 et a reçu une dizaine de prix littéraires, dont le prix Médicis en 1983 pour Cherokee et le prix Goncourt en 1999 pour Je m\'en vais.\r\n\r\nDans le cadre de la nouvelle traduction de la Bible par les éditions Bayard en 2001, qui ont confié à différents auteurs la traduction de chaque livre en binôme avec des exégètes, il effectue la traduction du livre de Josué, des livres de Samuel, du livre de Daniel, des livres des maccabées, de la lettre à Philémon, de la lettre de Jacques et de la lettre de Jude5.\r\n\r\nSon fils, Jérôme Echenoz (né 1976) alias Tacteel, est un des membres du groupe TTC.', '2024-02-20 15:57:33.782151', '2024-02-20 16:23:37.325255', 'authorImage/Jean_Echenoz_2016.png'),
('f14b75a4d1914eeda5774cef1d60a734', 'Ferdinand Oyono', 'Ferdinand Oyono est un diplomate et homme politique camerounais en même temps qu\'un écrivain de langue française, auteur de trois romans publiés à la fin des années cinquante.\r\n\r\nNé en 1929 à Ebolowa, dans la Province du Sud au Cameroun, Ferdinand Oyono poursuit au lycée de Provins, en France, des études commencées au lycée de Yaoundé. Il réussit ensuite des études supérieures de droit à la Sorbonne avant d\'entrer à l\'École nationale d\'administration (ENA) de Paris en section diplomatique.', '2024-02-21 16:08:47.997085', '2024-02-21 16:08:47.997085', ''),
('f88c7bff82ca4b11b2338f7daba8da6e', 'Victor HUGO', 'Victor Hugo, parfois surnommé l\'Homme océan ou, de manière posthume, l\'Homme siècle, est un poète, dramaturge, écrivain, romancier et dessinateur romantique français, né le 7 ventôse an X (26 février 1802) à Besançon et mort le 22 mai 1885 à Paris. Il est considéré comme l\'un des écrivains de la langue française et de la littérature mondiale les plus importants. Hugo est aussi une personnalité politique et un intellectuel engagé qui a un rôle idéologique majeur et occupe une place marquante dans l\'histoire des lettres françaises au xixe siècle.\r\n\r\nAu théâtre, Victor Hugo s\'impose comme un des chefs de file du romantisme français en présentant sa conception du drame romantique dans les préfaces qui introduisent Cromwell en 1827, puis Hernani en 1830, qui sont de véritables manifestes, puis par ses autres œuvres dramatiques, en particulier Lucrèce Borgia en 1833 et Ruy Blas en 1838.\r\n\r\nSon œuvre poétique comprend plusieurs recueils de poèmes lyriques, dont les plus célèbres sont Odes et Ballades paru en 1826, Les Feuilles d\'automne en 1831 et Les Contemplations en 1856. Victor Hugo est aussi un poète engagé contre Napoléon III dans Les Châtiments, paru en 1853, et un poète épique dans La Légende des siècles, publié de 1859 à 1883.\r\n\r\nComme romancier, il rencontre un grand succès populaire, d\'abord avec Notre-Dame de Paris en 1831, et plus encore avec Les Misérables en 1862.\r\n\r\nSon œuvre multiple comprend aussi des écrits et discours politiques, des récits de voyages, des recueils de notes et de mémoires, des commentaires littéraires, une correspondance abondante, près de quatre mille dessins dont la plupart réalisés à l\'encre, ainsi que la conception de décors intérieurs et une contribution à la photographie.\r\n\r\nTrès impliqué dans le débat public, Victor Hugo est parlementaire sous la monarchie de Juillet et sous la Deuxième et Troisième République. Il s\'exile pendant près de vingt ans à Jersey et Guernesey sous le Second Empire, dont il est l\'un des grands opposants. Attaché à la paix et à la liberté et sensible à la misère humaine, il s\'exprime en faveur de nombreuses avancées sociales, s\'oppose à la peine de mort et à l\'esclavage. Il soutient aussi l\'idée d\'une Europe unifiée.\r\n\r\nSon engagement résolument républicain dans la deuxième partie de sa vie et son immense œuvre littéraire font de lui un personnage emblématique, que la Troisième République honore par des funérailles nationales et le transfert de sa dépouille au Panthéon de Paris le 1er juin 1885, dix jours après sa mort. Pendant les deux jours où sa tombe est exposée au public, plus de deux millions de personnes se déplacent pour lui rendre hommage.\r\n\r\nAyant fortement contribué au renouvellement de la poésie et du théâtre et ayant marqué son époque par ses prises de position politiques et sociales, Victor Hugo est encore célébré aujourd\'hui, en France et à l\'étranger, comme un personnage illustre, dont la vie et l\'œuvre font l\'objet de multiples commentaires et hommages.', '2024-02-20 16:09:56.188678', '2024-02-20 16:09:56.188678', 'authorImage/Victor_Hugo_by_Étienne_Carjat_1876_-_full.jpg'),
('fde2ddb2b4164ad8a8e2d6d26f4b790f', 'Marilyn Monroe', 'Ascendance\r\n\r\nCertificat de naissance de Norma Jeane Mortensen.\r\nLes arrière-arrière grands-parents de Marilyn Monroe sont George Willis Hogan, né en 1823 dans le Kentucky (fils de Zachariah Hogan et Delilah Marksberry), et Sarah Ann Owen, née en 1823 en Virginie (fille d\'Edward Owen). Ils se marient le 11 mars 1843. Ils ont un fils, Tilford Marion Hogan, et une fille, Mary Ann (1844-1930)2.\r\n\r\nLes arrière-grands-parents de Marilyn s\'appellent Tilford Marion Hogan (1851-1933) et Charlotte Virginia (Jennie) Nance (1857-?). Ils se marient en 1870 et vivent dans le Missouri. Ils ont quatre enfants dont Della, deuxième née. Les trois autres enfants sont Dora, Myrtle et William Marion2.\r\n\r\nDella (1876-1927, fille de Tilford et Jennie) épouse en 1899 un peintre en bâtiment de dix ans plus âgé qu\'elle, Otis Elmer Monroe. Ils partent pour le Mexique travailler dans une société de chemins de fer où on lui avait promis un bon salaire, puis revient en Californie en 1903, pour un meilleur emploi à la Pacific Electric Railway. En 1902 alors qu\'ils sont encore au Mexique, Gladys (mère de Marilyn) voit le jour. En 1905, un autre enfant vient agrandir la famille, Marion (1905-?)2.\r\n\r\nEntre 1903 et 1909, la famille déménage une douzaine de fois, menant une vie précaire et instable. À partir de 1907, la santé d\'Otis se dégrade. Hospitalisé en 1908, il meurt en 1909 d\'une syphilis neurologique (paralysie générale progressive)3, contractée à cause des déplorables conditions d’hygiène qu\'il avait connues au Mexique où la maladie sévissait de façon épidémique. Il est enterré à Whittier. Della se remarie deux fois, puis divorce. Elle souffre de soucis de santé. Marion son fils se marie avec une camarade d\'école. Della meurt le 23 août 1927 d\'un arrêt cardiaque.\r\n\r\nLa mère de Marilyn, Gladys Pearl Baker Mortensen Monroe4 (27 mai 1902 - 11 mars 19845) née au Mexique de parents américains, travaille comme monteuse dans le laboratoire cinématographique Consolidated Film Industries (en).\r\n\r\nLe 17 mai 1917, elle épouse John Newton « Jasper » Baker6, dont Marilyn adopte le patronyme en 1938. Le couple a deux enfants : Robert Kermit « Jack » (né le 24 janvier 1918) et Berniece Inez Gladys Baker Miracle (née le 30 juillet 1919). Le 20 juin 1921, elle demande le divorce pour « cruauté et cruauté mentale »7 mais est accusée en retour de « comportement indécent et de luxure ». Le divorce est prononcé le 11 mai 19238. Gladys obtient la garde de ses enfants mais, incapable de s\'en occuper, elle est contrainte de les laisser à leur père, qui s\'est installé dans le Kentucky et s\'est remarié. Robert meurt le 16 août 1933 à l\'âge de 15 ans. Quant à Berniece, elle ne renoue avec sa mère qu\'en 1939, alors que celle-ci est internée à l\'hôpital Agnews State pour schizophrénie ; c\'est à cette occasion qu\'elle apprend l\'existence de sa demi-sœur, Norma Jeane. Marilyn n\'a pas connu son demi-frère Hermitt Jack ; en revanche, elle rencontre pour la première fois sa demi-sœur Berniece en 1944 dans le Tennessee.\r\n\r\nGladys connaît autant de liaisons sentimentales sans lendemain que de problèmes psychologiques et de santé, aussi Marilyn n\'a jamais connu l\'identité de son vrai père9. Martin Edward Mortensen, né en 1897 et mort en 1981, est le père officiel noté sur l\'acte de naissance de Marilyn Monroe10. Il épouse Gladys le 11 octobre 1924 ; le couple se sépare en août 1925.', '2024-02-20 16:32:33.091001', '2024-02-20 16:32:33.091001', 'authorImage/260px-Marilyn_Monroe_Photoplay_1953.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_book`
--

CREATE TABLE `catalogue_book` (
  `id` char(32) NOT NULL,
  `title` varchar(100) NOT NULL,
  `summary` longtext NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `num_pages` int(11) NOT NULL,
  `cover_image` varchar(100) NOT NULL,
  `published_date` date NOT NULL,
  `availibility` tinyint(1) NOT NULL,
  `recommended_number` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `author_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catalogue_book`
--

INSERT INTO `catalogue_book` (`id`, `title`, `summary`, `price`, `num_pages`, `cover_image`, `published_date`, `availibility`, `recommended_number`, `created_at`, `updated_at`, `author_id`) VALUES
('44058b5b994746cab21430bde6640ed3', 'Les Bouts de bois de Dieu', 'Les Bouts de bois de Dieu est un roman de l\'écrivain sénégalais Ousmane Sembène paru en 1960.\r\n\r\nLe roman décrit la grève1 que menèrent les cheminots africains de la ligne Dakar-Niger du 11 octobre 1947 au 19 mars 1948 au temps de la colonisation française2,3,4.\r\n\r\nOusmane Sembène a dédié le livre à ses « frères de syndicats et à tous les syndicalistes et à leur compagnes dans ce vaste monde ».\r\n\r\nAu cours du récit, l\'auteur s\'attache à présenter le combat dans trois lieux principaux : Bamako, Thiès et Dakar à travers de nombreux personnages : enfants, femmes, syndicalistes, employés opposés à la grève, vieillards, colons, apprentis. Parmi ceux-ci émerge la figure charismatique de Bakayoko délégué des roulants auquel nombre de personnages font régulièrement référence bien qu\'il n\'apparaisse au lecteur qu\'à la page 287.\r\n\r\nPar cette galerie de personnages l\'auteur montre le courage et les doutes de ce long combat. La participation des femmes est particulièrement mis en valeur à travers leur combat quotidien et leurs astuces pour trouver de l\'eau et de la nourriture puis par la marche sur Dakar. L\'organisation syndicale tient une grande place dans la lutte mais elle n\'est pas nommée précisément, c\'est seulement à la fin du roman (p.345) qu\'on apprend son sigle DN, son autonomie, et son désaccord avec la CGT.\r\n\r\nÉcrit avant les indépendances africaines, le roman ne présente aucun colon sous un jour positif mais il maintient une ambiguïté concernant certains personnages comme Leblanc et Pierrot et se conclut par le chant de Maïmouna : « Heureux celui qui combat sans haine ».\r\n\r\nIl est adapté en film en 2009.', 20.00, 345, 'book_covers/1016367_OJK9360_VrHOhG0.jpg', '1948-03-19', 1, 15, '2024-02-21 15:58:59.882015', '2024-03-01 10:30:12.755529', '64994f6e2ec6456995104e35531d35da'),
('573db165046949b6863d99e04f1a15b0', 'Un chant écarlate', '\"Un chant écarlate\" est l\'histoire d’amour impossible entre deux étudiants idéalistes, une Française et un Sénégalais, dans le Dakar des années 1980, où l’apprentissage de l’autre, au-delà des frontières, des cultures et des traditions, s’avère difficile.\r\nOusmane, jeune Sénégalais de condition modeste et Mireille, Française, fille de diplomate, se rencontrent sur les bancs du lycée, à Dakar. Ils se marient, au grand dam de leur famille respective. Mireille coupe les ponts avec les siens et se convertit à l’islam. Ousmane impose sa femme à ses parents, catastrophés. Un fils naît de cet amour, Gorgui. Mais le poids des traditions et la pression sociale et familiale aura raison de leur amour….', 22.00, 316, 'book_covers/917407_2838_oNklrn1.jpg', '1981-03-16', 1, 10, '2024-02-21 15:38:25.786025', '2024-03-01 10:30:02.946669', '211ae721319847b7bf7c85cbb5f45612'),
('71dde40b0a9d410a839840fed1cfc725', 'Les Sorcières de la République', 'Il s’est passé de bien vilaines choses, en France, entre 2017 et 2020, avec l’arrivé au pouvoir du Parti du Cercle, émanation d’une secte féministe qui a voulu compenser quelques millénaires de domination masculine. De ces trois ans il ne reste toutefois rien : l’amnésie collective a été décidée par un référendum. On l’appelle le Grand Blanc.\r\n\r\nEn 2062, au Tribunal du Grand Paris, anciennement Stade de France, la fondatrice du Parti du Cercle va enfin être jugée. Son nom est la Sibylle. Prophétesse de métier, conseillère des déesses de l’Olympe, elle va devoir tout raconter.\r\n\r\nPièces à conviction à l’appui, la Sibylle lève le voile sur l’histoire des femmes et sur les rapports de domination.\r\n\r\nDans ce roman à l’imagination virevoltante, Chloé Delaume dit l’avenir. Le nôtre ? Son humour est féroce. Il faut se laisser emporter.', 20.00, 368, 'book_covers/1016368_OJK9410_uVCLsMy.jpg', '2016-08-18', 0, 10, '2024-02-21 15:10:13.687373', '2024-03-01 10:29:51.112790', '1dfdf091822241fdba861657c3fc153a'),
('7444727f931645d5b24bddf3aae3cc46', 'La saison de pièges', 'Son premier roman « Sous l\'orage », reste cinquante ans après sa parution, un grand classique de la littérature africaine, que des générations de lycéens continuent à étudier. L\'auteur Seydou Badian, aux multiples destins, tour à tour médecin, homme politique, fidèle à ses engagements qui le conduisirent, des années durant, à supporter la condition inhumaine des prisonniers politiques, et une des grandes consciences de son temps. Ministre des premiers gouvernements du Mali indépendant, le brillant écrivain eut pendant de nombreuses années, la plume dilettante au grand désespoir de ses admirateurs. Après « Les dirigeants Africains Face à leur Peuple » qui lui valut le Grand Prix de l\'Afrique Noire en 1965, le « Sang des masques » et « Noces sacrées » dans les années soixante-dix, le silence du romancier prévalut au profit d\'une intense activité internationale. Son humanisme, sa connaissance des hommes et des évènements le conduisent auprès des plus grands de ce monde qui sollicitaient ses conseils pour profiter de sa sagesse et de son expérience. Avec « La saison des pièges », Seydou Badian, reprend son bâton de pèlerin et renoue avec le roman social pour dénoncer les outrances et les abus qui caractérisent souvent les dirigeants africains d\'aujourd\'hui. Insatiable défenseur des valeurs morales indispensables à l\'harmonie des sociétés, donnant à la tradition comme à la modernité la place qui doit leur revenir, Seydou Badian perpétue son oeuvre en 2008, celle de l\'écrivain majeur des Indépendances qu\'il est resté.', 22.00, 253, 'book_covers/24748810_6850938_eeBH9Rc.jpg', '2008-01-01', 1, 15, '2024-02-21 15:45:21.650366', '2024-03-01 10:29:39.256589', '36d86546c032454e9c8d9d545e29f34f'),
('84dd01c092f74e72b3c9306269cd8d59', 'Une si longue lettre', 'Une si longue lettre est une oeuvre majeure, pour ce qu\'elle dit de la condition des femmes. Au coeur de ce roman, la lettre que l\'une d\'elle, Ramatoulaye, adresse à sa meilleure amie, pendant la réclusion traditionnelle qui suit son veuvage.\r\nElle y évoque leurs souvenirs heureux d\'étudiantes impatientes de changer le monde, et cet espoir suscité par les Indépendances. Mais elle rappelle aussi les mariages forcés, l\'absence de droit des femmes. Et tandis que sa belle-famille vient prestement reprendre les affaires du défunt, Ramatoulaye évoque alors avec douleur le jour où son mari prit une seconde épouse, plus jeune, ruinant vingt-cinq années de vie commune et d\'amour.\r\nLa Sénégalaise Mariana Bâ est la première romancière africaine à décrire avec une telle lumière la place faite aux femmes dans sa société.', 50.00, 176, 'book_covers/12706178_5053289.jpg', '1979-05-06', 1, 9, '2024-02-21 15:20:08.492878', '2024-03-01 10:29:28.477983', '211ae721319847b7bf7c85cbb5f45612'),
('8665c18e414347c9b3ac25ffad17a406', 'Mémoire d\'outre-tombe (Tome 3)', 'Ce troisième volume s\'ouvre sur la Restauration et nous conduit jusqu\'à la Révolution de 1830 : après la carrière du voyageur puis de l\'écrivain, voici venu le temps du politique. Nommé pair de France en 1815, Chateaubriand devient ambassadeur dans plusieurs capitales d\'Europe, et surtout ministre des Affaires étrangères de 1822 à 1824. Mais comme frappé de mutisme au moment d\'évoquer le véritable exercice du pouvoir, le mémorialiste reste silencieux sur ces mois de gouvernement, soudainement impuissant à se représenter pleinement comme acteur de l\'Histoire. L\'écrivain en tout cas fragmente son tableau d\'une Restauration qui se déréalise peu à peu sous nos yeux, et le présente d\'emblée sur le ton du désenchantement : «Retomber de Bonaparte et de l\'Empire à ce qui les a suivis, c\'est tomber de la réalité dans le néant, du sommet d\'une montagne dans un gouffre.» Mais c\'est que la rédaction de cette partie des Mémoires fut tardive et qu\'au moment où elle s\'achève déferle sur la France la vague du mythe napoléonien, qui atteindra son apogée en 1840 avec le retour des cendres de l\'Empereur : la grande ombre du héros national vient éclipser le soleil de la monarchie.\r\nEdition de Jean-Claude Berchet.', 8.90, 671, 'book_covers/12985005_5111348.jpg', '2002-05-06', 1, 10, '2024-02-20 18:30:43.922107', '2024-03-01 10:29:16.476771', '02c17af7976e43c3a2b0d6d88cd4f699'),
('89f4e02077bd4a7b9d6609d5ac6c6853', 'L\'Alchimiste', 'Santiago, un jeune berger andalou, parti à la recherche d\'un trésor enfoui au pied des pyramides. Dans le désert, initié par l’alchimiste, il apprendra à écouter son cœur et à déchiffrer les signes du destin.\r\n\r\nMerveilleux conte philosophique destiné à l\'enfant qui sommeille en chaque être, ce livre a déjà marqué une génération de lecteurs.', 20.00, 252, 'book_covers/24748810_6850938.jpg', '1995-03-16', 1, 15, '2024-02-21 15:13:32.111496', '2024-03-01 10:29:02.414177', 'd658386e7937457e90b7efc1dc6cf03b'),
('c4c71875d01740bea1e570b26cbb5855', 'Le coeur synthétique', 'Adélaïde vient de rompre, après des années de vie commune. Alors qu’elle s’élance sur le marché de l’amour, elle découvre avec effroi qu’avoir quarante-six ans est un puissant facteur de décote à la bourse des sentiments. Obnubilée par l’idée de rencontrer un homme et de l’épouser au plus vite, elle culpabilise de ne pas gérer sa solitude comme une vraie féministe le devrait. Entourée de ses amies elles-mêmes empêtrées dans leur crise existentielle, elle tente d’apprivoiser le célibat, tout en effectuant au mieux son travail dans une grande maison d’édition. En seconde partie de vie, une femme seule fait ce qu’elle peut. Les statistiques tournent dans sa tête et ne parlent pas en sa faveur : « Il y a plus de femmes que d’hommes, et ils meurent en premier. »\r\n\r\nÀ l’heure de #metoo, Chloé Delaume écrit un roman drôle, poignant, et porté par une écriture magnifique.', 18.00, 208, 'book_covers/22891623_6726546.jpg', '2020-08-06', 0, 10, '2024-02-20 20:06:11.904565', '2024-03-01 10:28:48.834085', '1dfdf091822241fdba861657c3fc153a'),
('c9ec895233694635a73d4ae07c506a42', 'Les dirigeants d\'afrique noire face à leur peuple', 'Rares sont les dirigeants d’Afrique francophone – et d’Afrique tout court – qui peuvent parler du socialisme en praticiens autant qu’en intellectuels.\r\n\r\nC’est nanti d’une expérience de plusieurs années comme ministre du développement rural, au Mali, et instruit par de nombreux voyages d’études à l’étranger, notamment en Chine, que le Dr Seydou Badian a entrepris de méditer sur la responsabilité des dirigeants africains face à leur peuple. Issu de la jeune génération d’étudiants noirs formés en France – il est docteur en médecine de la faculté de Montpellier – mais resté plus disponible à son peuple que nombre de ses anciens camarades, Seydou Badian écrit, en militant, pour la jeunesse et les syndicalistes, en qui il voit les forces vives de la nouvelle Afrique. Sa condamnation du passé colonial n’est pas sans nuances pas plus que son éloge du parti unique n’est sans mesure. Au premier, il sait reconnaître des aspects positifs, au second des déviations regrettables. Et si la voie socialiste lui parait une nécessité, c’est à condition d’être adaptée au cadre humain. et historique de la société africaine. Il a quelques pages impitoyables sur les travers qui guettent les dirigeants des jeunes républiques et un paragraphe fort adroit sur les différentes aides étrangères, que le lecteur français, pour sa part, peut lire sans inquiétude. Ce livre intelligent et honnête deviendra un classique du socialisme africain. Il fait honneur à la pensée noire, en montrant qu’elle peut s’exprimer avec concision et non sur le seul mode lyrique. Au-delà de l’Afrique, le livre de Seydou Badian concerne tous ceux qui s’interrogent honnêtement sur le socialisme.', 52.00, 15, 'book_covers/851344_1413.jpg', '1965-02-15', 0, 5, '2024-02-21 15:46:19.962810', '2024-03-01 10:28:20.157827', '36d86546c032454e9c8d9d545e29f34f'),
('ca09e1c763f94a2c80a9cbd271b56360', 'Vernon Subutex', 'QUI EST VERNON SUBUTEX ?\r\nUne légende urbaine.\r\nUn ange déchu.\r\nUn disparu qui ne cesse de ressurgir.\r\nLe détenteur d’un secret.\r\nLe dernier témoin d’un monde disparu.\r\nL’ultime visage de notre comédie inhumaine.\r\nNotre fantôme à tous.\r\nLE RETOUR DE VIRGINIE DESPENTES - Prix Landerneau du roman 2015\r\nCe livre fait partie des 5 finalistes du prix RTL-Lire 2015.', 9.98, 365, 'book_covers/1016368_OJK9410.jpg', '2015-01-06', 0, 10, '2024-02-20 19:51:07.145809', '2024-03-01 10:28:08.224106', '16b96b50730a4ec682259a754c947c30'),
('ce982ab380e34bd6bb26665c4e35ce9e', 'Mémoires d\'outre-tombe (Tome 1)', 'Quand vers 1830 Chateaubriand revient aux Mémoires de ma vie entrepris depuis plus de vingt ans, il les juge trop intimes et réoriente son projet. A travers le récit de sa propre existence, les Mémoires d’outre-tombe seront également l’épopée de ce temps qu’il a vécu et comme témoin et comme acteur. Au-delà de ce qu’il fut lui-même, son destin deviendra ainsi exemplaire de celui d’une génération qui connut à la fois l’effondrement de l’ancien monde et le commencement du nouveau, issu de la Révolution.\r\nLa première partie de ces Mémoires traversés par l’Histoire, où la mélancolie dit la difficulté à croire en la réalité du monde, où la vanité des choses toujours transparaît, est la plus personnelle. Car l’écrivain n’y retrace pas seulement ce qu’il appelait sa première carrière de soldat et de voyageur, mais le commencement d’une vie qui se découvre à nous comme un récit de formation : celui du jeune chevalier breton bientôt parti pour l’Amérique et de l’aristocrate qui combat dans l’armée des Princes, émigre en Angleterre, avant de revenir en France pour y devenir Chateaubriand.\r\nEdition de Jean-Claude Berchet, comprenant également les Mémoires de ma vie, les pièces retranchées des Mémoires d’outre-tombe, ainsi que la préface de 1826 et la préface testamentaire.', 8.90, 800, 'book_covers/917407_2838.jpg', '2001-11-01', 1, 8, '2024-02-20 17:54:38.208417', '2024-03-01 10:27:55.661736', '02c17af7976e43c3a2b0d6d88cd4f699'),
('d1c3fb7ba28349cc98bd115eba847230', 'Sous l\'orage', 'Sous l\'orage : d\'une part, le poids du passé, l\'autorité de la tradition, le prestige des anciens, d\'autre part, l\'appel de temps nouveaux, l\'ouverture et les émois de la jeunesse : la profondeur millénaire de l\'Afrique et les horizons stimulants dévoilés par d\'autres formes de savoir, ce débat est celui des pères et des fils, et tel est l\'orage subi par les peuples africains. Il est très remarquable en ce roman, si juste d\'écriture, si mesuré de ton, de voir ce peuple - ici une famille et un village maliens - sortir de la tourmente sans sacrifices extrêmes : la parole sage a raison des passions, et le désordre de l\'histoire finalement s\'épuise face à l\'ordre de la vie. La mort de Chaka est une action dramatique évoquant la fin tragique du plus grand conquérant noir que l\'Afrique est connu.', 52.00, 253, 'book_covers/1016367_OJK9360.jpg', '2000-07-11', 0, 85, '2024-02-21 15:44:16.633058', '2024-03-01 10:27:46.464638', '36d86546c032454e9c8d9d545e29f34f'),
('d75a507ea9b34b48aa12654a3076396d', 'Mémoire d\'outre-tombe (Tome 2)', 'Le temps du Consulat et de l’Empire qui couvre cette deuxième partie des Mémoires, Chateaubriand le définissait comme celui de sa carrière d’écrivain. Et ce sont en effet de belles années de fécondité littéraire, puisque alors s’écrivent Atala, le Génie du christianisme et Les Martyrs. Mais comme toujours s’entrecroisent l’histoire privée et l’histoire publique que les deuils ici réunissent : en 1803, la mort de Pauline de Beaumont à Rome dans les bras de l’écrivain-diplomate, et en 1804, l’assassinat du duc d’Enghien qui entraîne la rupture avec Napoléon. Un empereur détesté, et pourtant assez admiré pour que la seconde partie de ce volume en retrace longuement la vie et que sa disparition contresigne la fin d’un monde : «Quand on a rencontré comme moi Washington et Bonaparte, que reste-t-il à regarder derrière la charrue du Cincinnatus américain et la tombe de Sainte-Hélène ? Pourquoi ai-je survécu au siècle et aux hommes à qui j’appartenais par la date de ma vie ? Pourquoi ne suis-je pas tombé avec mes contemporains, les derniers d’une race épuisée ? Pourquoi suis-je demeuré seul à chercher leurs os dans les ténèbres et la poussière d’une catacombe remplie ? Je me décourage de durer.»\r\n\r\nEdition de Jean-Claude Berchet, comprenant également les pièces retranchées des Mémoires d’outre-tombe.', 8.90, 798, 'book_covers/13209950_5151818.jpg', '2001-11-15', 1, 5, '2024-02-20 17:58:26.173559', '2024-03-01 10:27:36.525901', '02c17af7976e43c3a2b0d6d88cd4f699');

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_book_genre`
--

CREATE TABLE `catalogue_book_genre` (
  `id` bigint(20) NOT NULL,
  `book_id` char(32) NOT NULL,
  `gender_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catalogue_book_genre`
--

INSERT INTO `catalogue_book_genre` (`id`, `book_id`, `gender_id`) VALUES
(16, '44058b5b994746cab21430bde6640ed3', 'ed7984995d954b3fbbd4c59dd0dae4eb'),
(12, '573db165046949b6863d99e04f1a15b0', '8bf548354f8b464485c46750f549e38e'),
(9, '71dde40b0a9d410a839840fed1cfc725', 'f33308baf157457faec6ef18a6e58649'),
(18, '7444727f931645d5b24bddf3aae3cc46', 'ffd5899070fd4c6e889c10fdeaeea303'),
(11, '84dd01c092f74e72b3c9306269cd8d59', 'f9f8fb71b2c942bf9360a90db6ed26ca'),
(5, '8665c18e414347c9b3ac25ffad17a406', '0a7afa7ed0a2430b85ba720c96d823e2'),
(6, '8665c18e414347c9b3ac25ffad17a406', 'f33308baf157457faec6ef18a6e58649'),
(10, '89f4e02077bd4a7b9d6609d5ac6c6853', 'f33308baf157457faec6ef18a6e58649'),
(8, 'c4c71875d01740bea1e570b26cbb5855', 'f33308baf157457faec6ef18a6e58649'),
(19, 'c9ec895233694635a73d4ae07c506a42', 'ffd5899070fd4c6e889c10fdeaeea303'),
(7, 'ca09e1c763f94a2c80a9cbd271b56360', 'f33308baf157457faec6ef18a6e58649'),
(1, 'ce982ab380e34bd6bb26665c4e35ce9e', '0a7afa7ed0a2430b85ba720c96d823e2'),
(2, 'ce982ab380e34bd6bb26665c4e35ce9e', 'f33308baf157457faec6ef18a6e58649'),
(17, 'd1c3fb7ba28349cc98bd115eba847230', 'f5ccb75f9e244244a475cd3e3adc9108'),
(3, 'd75a507ea9b34b48aa12654a3076396d', '0a7afa7ed0a2430b85ba720c96d823e2'),
(4, 'd75a507ea9b34b48aa12654a3076396d', 'f33308baf157457faec6ef18a6e58649');

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_cart`
--

CREATE TABLE `catalogue_cart` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catalogue_cart`
--

INSERT INTO `catalogue_cart` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
('1cf02fb88c7b447cb9464c7a9aab4d0a', '2024-03-02 09:59:19.536258', '2024-03-02 09:59:19.536258', 1);

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_cart_book`
--

CREATE TABLE `catalogue_cart_book` (
  `id` bigint(20) NOT NULL,
  `cart_id` char(32) NOT NULL,
  `book_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catalogue_cart_book`
--

INSERT INTO `catalogue_cart_book` (`id`, `cart_id`, `book_id`) VALUES
(3, '1cf02fb88c7b447cb9464c7a9aab4d0a', '71dde40b0a9d410a839840fed1cfc725');

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_comment`
--

CREATE TABLE `catalogue_comment` (
  `id` char(32) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `book_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_gender`
--

CREATE TABLE `catalogue_gender` (
  `id` char(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catalogue_gender`
--

INSERT INTO `catalogue_gender` (`id`, `name`, `created_at`, `updated_at`) VALUES
('00fe3cb23c6a45e89a0d6de23526f163', 'Apologue', '2024-02-20 16:40:32.134407', '2024-02-20 16:40:32.134407'),
('06e0f6d06dc04f5c82b4f73c6a1ba001', 'Journal', '2024-02-20 16:40:38.521596', '2024-02-20 16:40:38.521596'),
('087b8a92f199451e9e6f3494f93de8b0', 'Fable', '2024-02-20 16:43:45.360778', '2024-02-20 16:43:45.360778'),
('0a7afa7ed0a2430b85ba720c96d823e2', 'Nouvelle', '2024-02-20 16:41:07.407015', '2024-02-20 16:41:07.407015'),
('0dfa4688367149959f81b8573af2a17c', 'Roman de moeurs', '2024-02-20 16:41:43.262991', '2024-02-20 16:41:43.262991'),
('0e7a21bdf3614415b030fec2521416d2', 'Légende', '2024-02-20 16:39:49.115243', '2024-02-20 16:39:49.115243'),
('127e7f1772314a238ad0eeba4486b391', 'Science-Fictions', '2024-02-20 16:33:39.130236', '2024-02-20 16:33:39.130236'),
('159653f5e5a84c7490c14f6cdad6e4d2', 'Mystère', '2024-02-20 16:34:12.942459', '2024-02-20 16:34:12.942459'),
('1b7cf725b87b4424afdd5fb1643011bd', 'Conte', '2024-02-20 16:40:58.571033', '2024-02-20 16:40:58.571033'),
('2d57547130d547738447e289c59d9694', 'Conte', '2024-02-20 16:34:39.495474', '2024-02-20 16:34:39.495474'),
('39f87bf3cfd042c7a2e0ff11e1007c8d', 'Farce', '2024-02-20 16:42:36.874835', '2024-02-20 16:42:36.874835'),
('3a9220f164134fa6a7c217b0462125e6', 'Sermon', '2024-02-20 16:43:52.977794', '2024-02-20 16:43:52.977794'),
('4afae4228d004476ab42435b8626a9fd', 'Chronique', '2024-02-20 16:40:21.743041', '2024-02-20 16:40:21.743041'),
('4e3c5add2bf3461fa184807ff3134360', 'Autobiographie', '2024-02-20 16:40:14.364921', '2024-02-20 16:40:14.364921'),
('5c65b5830e7e40578830f1fcecf63c9b', 'Sextine', '2024-02-20 16:36:39.123922', '2024-02-20 16:36:39.123922'),
('5d69ee6fe1f74795bf4bf71d1ffdaaff', 'Tragédie', '2024-02-20 16:42:53.917158', '2024-02-20 16:42:53.917158'),
('64a12c92e7e74dfba336fd8ef577dfd2', 'Proverbe', '2024-02-20 16:42:24.880084', '2024-02-20 16:42:24.880084'),
('662e0ec420cc4c02848e062695d4671e', 'Roman Policiers', '2024-02-20 16:35:21.033463', '2024-02-20 16:35:21.033463'),
('67460779c8404e8f80fad617e3c9cea2', 'Comédie', '2024-02-20 16:42:42.691443', '2024-02-20 16:42:42.691443'),
('68b8a69853b54cceb1a18c7063084c6c', 'Biographie', '2024-02-20 16:40:02.776559', '2024-02-20 16:40:02.776559'),
('89038b35c7c6446bae6c467fc19dfd0a', 'Romances', '2024-02-20 16:33:31.325857', '2024-02-20 16:33:31.325857'),
('8a63e6b447b340898051071be5b21e47', 'Fantastique', '2024-02-20 16:34:57.457905', '2024-02-20 16:34:57.457905'),
('8bf548354f8b464485c46750f549e38e', 'Roman sentimentaux', '2024-02-20 16:41:27.468171', '2024-02-20 16:41:27.468171'),
('b0b7e08ce87649119066a2bbf6daaa3d', 'Mythe', '2024-02-20 16:40:51.357586', '2024-02-20 16:40:51.357586'),
('ed7984995d954b3fbbd4c59dd0dae4eb', 'Drame', '2024-02-20 16:33:21.519272', '2024-02-20 16:33:21.519272'),
('f33308baf157457faec6ef18a6e58649', 'Roman', '2024-02-20 16:33:54.021848', '2024-02-20 16:33:54.021848'),
('f5ccb75f9e244244a475cd3e3adc9108', 'Essai', '2024-02-20 16:33:44.840064', '2024-02-20 16:33:44.840064'),
('f722d905752a4e13ad095dfaa41d0831', 'Poésie', '2024-02-20 16:37:04.471462', '2024-02-20 16:37:04.471462'),
('f9f8fb71b2c942bf9360a90db6ed26ca', 'Roman Aventures', '2024-02-20 16:35:40.910657', '2024-02-20 16:35:40.910657'),
('ffd5899070fd4c6e889c10fdeaeea303', 'Moralité', '2024-02-20 16:42:30.324388', '2024-02-20 16:42:30.324388');

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_lbook`
--

CREATE TABLE `catalogue_lbook` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_order`
--

CREATE TABLE `catalogue_order` (
  `id` char(32) NOT NULL,
  `total_price` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catalogue_order`
--

INSERT INTO `catalogue_order` (`id`, `total_price`, `order_status`, `created_at`, `updated_at`, `user_id`) VALUES
('1ee43d3bbac941c5b57d5401369f0bbe', 100.00, 'Accepté', '2024-03-02 08:53:11.954576', '2024-03-02 08:53:11.963273', 1),
('764ce4e72a7a43e1af98b18538a48d63', 20.00, 'Accepté', '2024-03-02 09:58:27.282958', '2024-03-02 09:58:27.296961', 1);

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_orderitem`
--

CREATE TABLE `catalogue_orderitem` (
  `id` char(32) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `book_id` char(32) NOT NULL,
  `order_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `catalogue_orderitem`
--

INSERT INTO `catalogue_orderitem` (`id`, `quantity`, `price`, `created_at`, `updated_at`, `book_id`, `order_id`) VALUES
('55ed87299be84e778b0386e5dc0d3007', 1, 20.00, '2024-03-02 09:58:27.286959', '2024-03-02 09:58:27.286959', '71dde40b0a9d410a839840fed1cfc725', '764ce4e72a7a43e1af98b18538a48d63'),
('dda091ea723e460590bd1e3bcc0251a3', 5, 20.00, '2024-03-02 08:53:11.959986', '2024-03-02 08:53:11.959986', '71dde40b0a9d410a839840fed1cfc725', '1ee43d3bbac941c5b57d5401369f0bbe');

-- --------------------------------------------------------

--
-- Structure de la table `contacts_answer`
--

CREATE TABLE `contacts_answer` (
  `id` bigint(20) NOT NULL,
  `answer_text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `contact_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacts_contact`
--

CREATE TABLE `contacts_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-20 15:52:03.340083', '68e4c2d2-f028-46a7-b1a1-f048b33d1992', 'Fatou Diome', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-02-20 15:55:06.449164', '211ae721-3198-47b7-bf7c-85cbb5f45612', 'Mariama Bâ', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-02-20 15:56:48.566330', 'a23084f6-e413-4841-bf0e-97c7ccc998bf', 'Michel Houellebecq.', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-02-20 15:57:01.550554', '70b28e7d-a404-4297-b407-94554c036dc7', 'Annie Ernaux.', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-02-20 15:57:14.357352', '16b96b50-730a-4ec6-8225-9a754c947c30', 'Virginie Despentes.', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-02-20 15:57:33.783115', 'f1172221-f4ca-442d-84ab-d50c5eb9dc4e', 'Jean Echenoz.', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-02-20 15:57:49.629482', '1dfdf091-8222-41fd-ba86-1657c3fc153a', 'Chloé Delaume.', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-02-20 15:58:04.524670', 'a7762f15-b675-420b-a1ad-67bb233756bc', 'Marie Ndiaye.', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-02-20 15:58:43.125027', '2a9ebe67-59d9-47d9-a59f-d81fdb860858', 'Christine Angot', 1, '[{\"added\": {}}]', 7, 1),
(10, '2024-02-20 16:00:31.320838', '8eb7de69-5dd7-4d01-a401-695268d69c8a', 'Alain Mabanckou', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-02-20 16:01:29.833979', '7e1902e4-184c-4d59-a667-cdcb6ae33517', 'Abdourahman Waberi', 1, '[{\"added\": {}}]', 7, 1),
(12, '2024-02-20 16:05:38.194508', 'd4d9c3b3-562e-47cc-b6b3-fb76c48a43ef', 'Jean PLIYA', 1, '[{\"added\": {}}]', 7, 1),
(13, '2024-02-20 16:06:53.490057', '02c17af7-976e-43c3-a2b0-d6d88cd4f699', 'François René De Châteaubriand', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-02-20 16:09:56.190678', 'f88c7bff-82ca-4b11-b233-8f7daba8da6e', 'Victor HUGO', 1, '[{\"added\": {}}]', 7, 1),
(15, '2024-02-20 16:21:53.760696', 'd52934f0-95a5-449c-af8c-a0e6b4f23c60', 'Paul', 1, '[{\"added\": {}}]', 7, 1),
(16, '2024-02-20 16:22:23.520328', 'd658386e-7937-457e-90b7-efc1dc6cf03b', 'Paul Coelho', 1, '[{\"added\": {}}]', 7, 1),
(17, '2024-02-20 16:22:48.491373', 'd52934f0-95a5-449c-af8c-a0e6b4f23c60', 'Paul', 3, '', 7, 1),
(18, '2024-02-20 16:23:37.327251', 'f1172221-f4ca-442d-84ab-d50c5eb9dc4e', 'Jean Echenoz', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Biography\", \"Image\"]}}]', 7, 1),
(19, '2024-02-20 16:24:44.506612', 'a7762f15-b675-420b-a1ad-67bb233756bc', 'Marie Ndiaye', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Biography\", \"Image\"]}}]', 7, 1),
(20, '2024-02-20 16:25:26.313585', 'a23084f6-e413-4841-bf0e-97c7ccc998bf', 'Michel Houellebecq', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Biography\", \"Image\"]}}]', 7, 1),
(21, '2024-02-20 16:26:18.571873', '70b28e7d-a404-4297-b407-94554c036dc7', 'Annie Ernaux.', 2, '[{\"changed\": {\"fields\": [\"Biography\", \"Image\"]}}]', 7, 1),
(22, '2024-02-20 16:26:29.072683', '70b28e7d-a404-4297-b407-94554c036dc7', 'Annie Ernaux', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(23, '2024-02-20 16:27:22.147851', '1dfdf091-8222-41fd-ba86-1657c3fc153a', 'Chloé Delaume', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Biography\", \"Image\"]}}]', 7, 1),
(24, '2024-02-20 16:28:08.702235', '2a9ebe67-59d9-47d9-a59f-d81fdb860858', 'Christine Angot', 2, '[{\"changed\": {\"fields\": [\"Biography\", \"Image\"]}}]', 7, 1),
(25, '2024-02-20 16:29:06.414980', '16b96b50-730a-4ec6-8225-9a754c947c30', 'Virginie Despentes.', 2, '[{\"changed\": {\"fields\": [\"Biography\", \"Image\"]}}]', 7, 1),
(26, '2024-02-20 16:29:13.562092', '16b96b50-730a-4ec6-8225-9a754c947c30', 'Virginie Despentes', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(27, '2024-02-20 16:32:33.092001', 'fde2ddb2-b416-4ad8-a8e2-d6d26f4b790f', 'Marilyn Monroe', 1, '[{\"added\": {}}]', 7, 1),
(28, '2024-02-20 16:33:21.520270', 'ed798499-5d95-4b3f-bbd4-c59dd0dae4eb', 'Drame', 1, '[{\"added\": {}}]', 8, 1),
(29, '2024-02-20 16:33:31.327890', '89038b35-c7c6-446b-ae6c-467fc19dfd0a', 'Romances', 1, '[{\"added\": {}}]', 8, 1),
(30, '2024-02-20 16:33:39.132238', '127e7f17-7231-4a23-8ad0-eeba4486b391', 'Science-Fictions', 1, '[{\"added\": {}}]', 8, 1),
(31, '2024-02-20 16:33:44.841065', 'f5ccb75f-9e24-4244-a475-cd3e3adc9108', 'Essai', 1, '[{\"added\": {}}]', 8, 1),
(32, '2024-02-20 16:33:54.022847', 'f33308ba-f157-457f-aec6-ef18a6e58649', 'Roman', 1, '[{\"added\": {}}]', 8, 1),
(33, '2024-02-20 16:34:12.943459', '159653f5-e5a8-4c74-90c1-4f6cdad6e4d2', 'Mystère', 1, '[{\"added\": {}}]', 8, 1),
(34, '2024-02-20 16:34:39.497473', '2d575471-30d5-4773-8447-e289c59d9694', 'Conte', 1, '[{\"added\": {}}]', 8, 1),
(35, '2024-02-20 16:34:57.458904', '8a63e6b4-47b3-4089-8051-071be5b21e47', 'Fantastique', 1, '[{\"added\": {}}]', 8, 1),
(36, '2024-02-20 16:35:21.034463', '662e0ec4-20cc-4c02-848e-062695d4671e', 'Roman Policiers', 1, '[{\"added\": {}}]', 8, 1),
(37, '2024-02-20 16:35:40.911660', 'f9f8fb71-b2c9-42bf-9360-a90db6ed26ca', 'Roman Aventures', 1, '[{\"added\": {}}]', 8, 1),
(38, '2024-02-20 16:36:39.142386', '5c65b583-0e7e-4057-8830-f1fcecf63c9b', 'Sextine', 1, '[{\"added\": {}}]', 8, 1),
(39, '2024-02-20 16:37:04.472566', 'f722d905-752a-4e13-ad09-5dfaa41d0831', 'Poésie', 1, '[{\"added\": {}}]', 8, 1),
(40, '2024-02-20 16:39:49.116257', '0e7a21bd-f361-4415-b030-fec2521416d2', 'Légende', 1, '[{\"added\": {}}]', 8, 1),
(41, '2024-02-20 16:40:02.777559', '68b8a698-53b5-4cce-b1a1-8c7063084c6c', 'Biographie', 1, '[{\"added\": {}}]', 8, 1),
(42, '2024-02-20 16:40:14.366370', '4e3c5add-2bf3-461f-a184-807ff3134360', 'Autobiographie', 1, '[{\"added\": {}}]', 8, 1),
(43, '2024-02-20 16:40:21.744557', '4afae422-8d00-4476-ab42-435b8626a9fd', 'Chronique', 1, '[{\"added\": {}}]', 8, 1),
(44, '2024-02-20 16:40:32.135967', '00fe3cb2-3c6a-45e8-9a0d-6de23526f163', 'Apologue', 1, '[{\"added\": {}}]', 8, 1),
(45, '2024-02-20 16:40:38.522595', '06e0f6d0-6dc0-4f5c-82b4-f73c6a1ba001', 'Journal', 1, '[{\"added\": {}}]', 8, 1),
(46, '2024-02-20 16:40:51.358388', 'b0b7e08c-e876-4911-9066-a2bbf6daaa3d', 'Mythe', 1, '[{\"added\": {}}]', 8, 1),
(47, '2024-02-20 16:40:58.572257', '1b7cf725-b87b-4424-afdd-5fb1643011bd', 'Conte', 1, '[{\"added\": {}}]', 8, 1),
(48, '2024-02-20 16:41:07.408292', '0a7afa7e-d0a2-430b-85ba-720c96d823e2', 'Nouvelle', 1, '[{\"added\": {}}]', 8, 1),
(49, '2024-02-20 16:41:27.469551', '8bf54835-4f8b-4644-85c4-6750f549e38e', 'Roman sentimentaux', 1, '[{\"added\": {}}]', 8, 1),
(50, '2024-02-20 16:41:43.263991', '0dfa4688-3671-4995-9f81-b8573af2a17c', 'Roman de moeurs', 1, '[{\"added\": {}}]', 8, 1),
(51, '2024-02-20 16:42:24.881131', '64a12c92-e7e7-4dfb-a336-fd8ef577dfd2', 'Proverbe', 1, '[{\"added\": {}}]', 8, 1),
(52, '2024-02-20 16:42:30.325417', 'ffd58990-70fd-4c6e-889c-10fdeaeea303', 'Moralité', 1, '[{\"added\": {}}]', 8, 1),
(53, '2024-02-20 16:42:36.875835', '39f87bf3-cfd0-42c7-a2e0-ff11e1007c8d', 'Farce', 1, '[{\"added\": {}}]', 8, 1),
(54, '2024-02-20 16:42:42.692998', '67460779-c840-4e8f-80fa-d617e3c9cea2', 'Comédie', 1, '[{\"added\": {}}]', 8, 1),
(55, '2024-02-20 16:42:53.918124', '5d69ee6f-e1f7-4795-bf4b-f71d1ffdaaff', 'Tragédie', 1, '[{\"added\": {}}]', 8, 1),
(56, '2024-02-20 16:43:45.361779', '087b8a92-f199-451e-9e6f-3494f93de8b0', 'Fable', 1, '[{\"added\": {}}]', 8, 1),
(57, '2024-02-20 16:43:52.978741', '3a9220f1-6413-4fa6-a7c2-17b0462125e6', 'Sermon', 1, '[{\"added\": {}}]', 8, 1),
(58, '2024-02-20 17:54:38.212453', 'ce982ab3-80e3-4bd6-bb26-665c4e35ce9e', 'Mémoires d\'outre-tombe (Tome 1)', 1, '[{\"added\": {}}]', 9, 1),
(59, '2024-02-20 17:58:26.178559', 'd75a507e-a9b3-4b48-aa12-654a3076396d', 'Mémoire d\'outre-tombe (Tome 2)', 1, '[{\"added\": {}}]', 9, 1),
(60, '2024-02-20 18:30:43.925107', '8665c18e-4143-47c9-b3ac-25ffad17a406', 'Mémoire', 1, '[{\"added\": {}}]', 9, 1),
(61, '2024-02-20 19:51:07.154808', 'ca09e1c7-63f9-4a2c-80a9-cbd271b56360', 'Vernon Subutex', 1, '[{\"added\": {}}]', 9, 1),
(62, '2024-02-20 20:06:11.907285', 'c4c71875-d017-40be-a1e5-70b26cbb5855', 'Le coeur synthétique', 1, '[{\"added\": {}}]', 9, 1),
(63, '2024-02-21 15:00:35.954715', '2', '@Capo', 1, '[{\"added\": {}}]', 4, 1),
(64, '2024-02-21 15:01:40.437443', '2', '@Capo', 2, '[]', 4, 1),
(65, '2024-02-21 15:04:38.308051', 'c4c71875-d017-40be-a1e5-70b26cbb5855', 'Le coeur synthétique', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(66, '2024-02-21 15:10:13.692373', '71dde40b-0a9d-410a-8398-40fed1cfc725', 'Les Sorcières de la République', 1, '[{\"added\": {}}]', 9, 1),
(67, '2024-02-21 15:11:00.361661', '8665c18e-4143-47c9-b3ac-25ffad17a406', 'Mémoire d\'outre-tombe (Tome 3)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(68, '2024-02-21 15:13:32.115220', '89f4e020-77bd-4a7b-9d66-09d5ac6c6853', 'L\'Alchimiste', 1, '[{\"added\": {}}]', 9, 1),
(69, '2024-02-21 15:20:08.495876', '84dd01c0-92f7-4e72-b3c9-306269cd8d59', 'Une si longue lettre', 1, '[{\"added\": {}}]', 9, 1),
(70, '2024-02-21 15:20:20.217035', '89f4e020-77bd-4a7b-9d66-09d5ac6c6853', 'L\'Alchimiste', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(71, '2024-02-21 15:20:35.540771', '71dde40b-0a9d-410a-8398-40fed1cfc725', 'Les Sorcières de la République', 2, '[]', 9, 1),
(72, '2024-02-21 15:21:19.394448', '84dd01c0-92f7-4e72-b3c9-306269cd8d59', 'Une si longue lettre', 2, '[{\"changed\": {\"fields\": [\"Published date\"]}}]', 9, 1),
(73, '2024-02-21 15:22:25.837165', '84dd01c0-92f7-4e72-b3c9-306269cd8d59', 'Une si longue lettre', 2, '[{\"changed\": {\"fields\": [\"Cover image\", \"Availibility\"]}}]', 9, 1),
(74, '2024-02-21 15:27:23.975163', '2a9ebe67-59d9-47d9-a59f-d81fdb860858', 'Christine Angot', 3, '', 7, 1),
(75, '2024-02-21 15:27:34.381906', '70b28e7d-a404-4297-b407-94554c036dc7', 'Annie Ernaux', 3, '', 7, 1),
(76, '2024-02-21 15:27:58.335718', 'a7762f15-b675-420b-a1ad-67bb233756bc', 'Marie Ndiaye', 3, '', 7, 1),
(77, '2024-02-21 15:27:58.336716', 'a23084f6-e413-4841-bf0e-97c7ccc998bf', 'Michel Houellebecq', 3, '', 7, 1),
(78, '2024-02-21 15:38:25.790116', '573db165-0469-49b6-863d-99e04f1a15b0', 'Un chant écarlate', 1, '[{\"added\": {}}]', 9, 1),
(79, '2024-02-21 15:42:26.658698', '84dd01c0-92f7-4e72-b3c9-306269cd8d59', 'Une si longue lettre', 2, '[{\"changed\": {\"fields\": [\"Published date\"]}}]', 9, 1),
(80, '2024-02-21 15:42:44.196352', '573db165-0469-49b6-863d-99e04f1a15b0', 'Un chant écarlate', 2, '[{\"changed\": {\"fields\": [\"Published date\"]}}]', 9, 1),
(81, '2024-02-21 15:44:16.637549', 'd1c3fb7b-a283-49cc-98bd-115eba847230', 'Sous l\'orage', 1, '[{\"added\": {}}]', 9, 1),
(82, '2024-02-21 15:45:21.652373', '7444727f-9316-45d5-b24b-ddf3aae3cc46', 'La saison de pièges', 1, '[{\"added\": {}}]', 9, 1),
(83, '2024-02-21 15:46:19.965849', 'c9ec8952-3369-4635-a73d-4ae07c506a42', 'Les dirigeants de l\'afrique', 1, '[{\"added\": {}}]', 9, 1),
(84, '2024-02-21 15:49:00.982590', '36d86546-c032-454e-9c8d-9d545e29f34f', 'Seydou Badian', 1, '[{\"added\": {}}]', 7, 1),
(85, '2024-02-21 15:50:32.328856', '64994f6e-2ec6-4569-9510-4e35531d35da', 'Ousmane Sembène', 1, '[{\"added\": {}}]', 7, 1),
(86, '2024-02-21 15:58:59.888017', '44058b5b-9947-46ca-b214-30bde6640ed3', 'Les Bouts de bois de Dieu', 1, '[{\"added\": {}}]', 9, 1),
(87, '2024-02-21 16:00:57.453038', 'd1c3fb7b-a283-49cc-98bd-115eba847230', 'Sous l\'orage', 2, '[{\"changed\": {\"fields\": [\"Author\", \"Genre\", \"Summary\", \"Num pages\", \"Cover image\", \"Published date\"]}}]', 9, 1),
(88, '2024-02-21 16:07:05.332522', '7444727f-9316-45d5-b24b-ddf3aae3cc46', 'La saison de pièges', 2, '[{\"changed\": {\"fields\": [\"Author\", \"Genre\", \"Summary\", \"Num pages\", \"Cover image\", \"Published date\", \"Availibility\", \"Recommended number\"]}}]', 9, 1),
(89, '2024-02-21 16:08:47.998083', 'f14b75a4-d191-4eed-a577-4cef1d60a734', 'Ferdinand Oyono', 1, '[{\"added\": {}}]', 7, 1),
(90, '2024-02-21 16:31:56.827663', '8665c18e-4143-47c9-b3ac-25ffad17a406', 'Mémoire d\'outre-tombe (Tome 3)', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(91, '2024-02-21 16:32:39.112441', 'ce982ab3-80e3-4bd6-bb26-665c4e35ce9e', 'Mémoires d\'outre-tombe (Tome 1)', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(92, '2024-02-21 16:33:12.783242', 'd75a507e-a9b3-4b48-aa12-654a3076396d', 'Mémoire d\'outre-tombe (Tome 2)', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(93, '2024-02-21 16:35:32.585839', 'c9ec8952-3369-4635-a73d-4ae07c506a42', 'Les dirigeants d\'afrique noire face à leur peuple', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Author\"]}}]', 9, 1),
(94, '2024-02-21 16:39:22.591402', 'c9ec8952-3369-4635-a73d-4ae07c506a42', 'Les dirigeants d\'afrique noire face à leur peuple', 2, '[{\"changed\": {\"fields\": [\"Genre\", \"Summary\", \"Num pages\", \"Cover image\", \"Published date\"]}}]', 9, 1),
(95, '2024-02-21 16:43:35.912580', '44058b5b-9947-46ca-b214-30bde6640ed3', 'Les Bouts de bois de Dieu', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(96, '2024-02-21 16:44:10.249549', 'c9ec8952-3369-4635-a73d-4ae07c506a42', 'Les dirigeants d\'afrique noire face à leur peuple', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(97, '2024-03-01 10:27:36.529981', 'd75a507e-a9b3-4b48-aa12-654a3076396d', 'Mémoire d\'outre-tombe (Tome 2)', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(98, '2024-03-01 10:27:46.467842', 'd1c3fb7b-a283-49cc-98bd-115eba847230', 'Sous l\'orage', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(99, '2024-03-01 10:27:55.665942', 'ce982ab3-80e3-4bd6-bb26-665c4e35ce9e', 'Mémoires d\'outre-tombe (Tome 1)', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(100, '2024-03-01 10:28:08.226678', 'ca09e1c7-63f9-4a2c-80a9-cbd271b56360', 'Vernon Subutex', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(101, '2024-03-01 10:28:20.161983', 'c9ec8952-3369-4635-a73d-4ae07c506a42', 'Les dirigeants d\'afrique noire face à leur peuple', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(102, '2024-03-01 10:28:30.064934', 'c4c71875-d017-40be-a1e5-70b26cbb5855', 'Le coeur synthétique', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(103, '2024-03-01 10:28:48.840461', 'c4c71875-d017-40be-a1e5-70b26cbb5855', 'Le coeur synthétique', 2, '[]', 9, 1),
(104, '2024-03-01 10:29:02.418367', '89f4e020-77bd-4a7b-9d66-09d5ac6c6853', 'L\'Alchimiste', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(105, '2024-03-01 10:29:16.480892', '8665c18e-4143-47c9-b3ac-25ffad17a406', 'Mémoire d\'outre-tombe (Tome 3)', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(106, '2024-03-01 10:29:28.480890', '84dd01c0-92f7-4e72-b3c9-306269cd8d59', 'Une si longue lettre', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(107, '2024-03-01 10:29:39.260270', '7444727f-9316-45d5-b24b-ddf3aae3cc46', 'La saison de pièges', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(108, '2024-03-01 10:29:51.120789', '71dde40b-0a9d-410a-8398-40fed1cfc725', 'Les Sorcières de la République', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(109, '2024-03-01 10:30:02.950199', '573db165-0469-49b6-863d-99e04f1a15b0', 'Un chant écarlate', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1),
(110, '2024-03-01 10:30:12.758529', '44058b5b-9947-46ca-b214-30bde6640ed3', 'Les Bouts de bois de Dieu', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(17, 'Catalogue', 'answer'),
(7, 'Catalogue', 'author'),
(9, 'Catalogue', 'book'),
(22, 'Catalogue', 'cart'),
(10, 'Catalogue', 'comment'),
(8, 'Catalogue', 'gender'),
(16, 'Catalogue', 'lbook'),
(21, 'Catalogue', 'order'),
(20, 'Catalogue', 'orderitem'),
(19, 'Contacts', 'answer'),
(18, 'Contacts', 'contact'),
(5, 'contenttypes', 'contenttype'),
(23, 'ipn', 'paypalipn'),
(11, 'Order', 'cart'),
(12, 'Order', 'order'),
(13, 'Order', 'orderitem'),
(14, 'Payment', 'invoice'),
(15, 'Payment', 'payment'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-20 15:37:48.304491'),
(2, 'auth', '0001_initial', '2024-02-20 15:37:48.575681'),
(3, 'Catalogue', '0001_initial', '2024-02-20 15:37:48.728180'),
(4, 'Catalogue', '0002_author_image', '2024-02-20 15:37:48.734866'),
(5, 'Catalogue', '0003_alter_book_summary', '2024-02-20 15:37:48.740056'),
(6, 'Catalogue', '0004_alter_book_cover_image', '2024-02-20 15:37:48.746057'),
(7, 'Order', '0001_initial', '2024-02-20 15:37:48.953119'),
(8, 'Payment', '0001_initial', '2024-02-20 15:37:49.026655'),
(9, 'admin', '0001_initial', '2024-02-20 15:37:49.087927'),
(10, 'admin', '0002_logentry_remove_auto_add', '2024-02-20 15:37:49.096928'),
(11, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-20 15:37:49.106664'),
(12, 'contenttypes', '0002_remove_content_type_name', '2024-02-20 15:37:49.156228'),
(13, 'auth', '0002_alter_permission_name_max_length', '2024-02-20 15:37:49.204448'),
(14, 'auth', '0003_alter_user_email_max_length', '2024-02-20 15:37:49.218326'),
(15, 'auth', '0004_alter_user_username_opts', '2024-02-20 15:37:49.225349'),
(16, 'auth', '0005_alter_user_last_login_null', '2024-02-20 15:37:49.270178'),
(17, 'auth', '0006_require_contenttypes_0002', '2024-02-20 15:37:49.272178'),
(18, 'auth', '0007_alter_validators_add_error_messages', '2024-02-20 15:37:49.279214'),
(19, 'auth', '0008_alter_user_username_max_length', '2024-02-20 15:37:49.294843'),
(20, 'auth', '0009_alter_user_last_name_max_length', '2024-02-20 15:37:49.306503'),
(21, 'auth', '0010_alter_group_name_max_length', '2024-02-20 15:37:49.322507'),
(22, 'auth', '0011_update_proxy_permissions', '2024-02-20 15:37:49.331500'),
(23, 'auth', '0012_alter_user_first_name_max_length', '2024-02-20 15:37:49.342663'),
(24, 'sessions', '0001_initial', '2024-02-20 15:37:49.362089'),
(25, 'Catalogue', '0005_alter_author_biography_alter_author_name', '2024-02-20 15:51:13.585510'),
(26, 'Catalogue', '0006_lbook', '2024-03-01 09:13:56.418504'),
(27, 'Catalogue', '0006_answer', '2024-03-01 09:13:56.553495'),
(28, 'Catalogue', '0007_merge_0006_answer_0006_lbook', '2024-03-01 09:13:56.555534'),
(29, 'Contacts', '0001_initial', '2024-03-01 09:13:56.566647'),
(30, 'Contacts', '0002_answer', '2024-03-01 09:13:56.625659'),
(31, 'Catalogue', '0008_cart_order_orderitem', '2024-03-02 08:50:22.125010'),
(32, 'Catalogue', '0009_alter_author_image_alter_book_cover_image', '2024-03-02 09:51:15.537021'),
(33, 'ipn', '0001_initial', '2024-03-02 17:09:06.675428'),
(34, 'ipn', '0002_paypalipn_mp_id', '2024-03-02 17:09:06.692428'),
(35, 'ipn', '0003_auto_20141117_1647', '2024-03-02 17:09:06.795428'),
(36, 'ipn', '0004_auto_20150612_1826', '2024-03-02 17:09:07.477237'),
(37, 'ipn', '0005_auto_20151217_0948', '2024-03-02 17:09:07.501784'),
(38, 'ipn', '0006_auto_20160108_1112', '2024-03-02 17:09:07.541709'),
(39, 'ipn', '0007_auto_20160219_1135', '2024-03-02 17:09:07.551776'),
(40, 'ipn', '0008_auto_20181128_1032', '2024-03-02 17:09:07.563886'),
(41, 'ipn', '0009_alter_paypalipn_id', '2024-03-02 17:09:07.637793');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9gwrnirsf5p6h1e0cun5npcwyreasla1', '.eJxVjDsOwjAQBe_iGlm7GH9ESc8ZrPV6jQPIkeKkirg7iZQC2jczb1WRlrnGpcsUh6yuCtXpd0vEL2k7yE9qj1Hz2OZpSHpX9EG7vo9Z3rfD_Tuo1OtWByhFiiVgyN4bYy1bj0GM53QBThAEz5IMstsccsE5LOABhShlcerzBetoOEY:1rfyzf:Huh2RjikMW976TdLR1Fm83dHE43DwyELY_S7YAXs2-E', '2024-03-15 09:15:51.478402'),
('ibkt0jp8t3w37we3r3fxrbiix5u1jzcb', '.eJxVjM0OwiAQhN-FsyHyU9h69O4zkIVdpGogKe3J-O62SQ96nPm-mbcIuC4lrJ3nMJG4CC1Ov13E9OS6A3pgvTeZWl3mKcpdkQft8taIX9fD_Tso2Mu2hpEVYnJWD4PNQDn5kXxmQxbAE5HK7mwIrPaUtxQjWGBwypioWRvx-QL7kThP:1rco7K:pJAJXP1qDVCmOIyPW3GMz1sPkgVPTQXA6mm2QcC95IM', '2024-03-06 15:02:38.730903'),
('zqihprnqa2vtnlpav4rutyhr1rya4u6w', '.eJxVjDsOwjAQBe_iGlm7GH9ESc8ZrPV6jQPIkeKkirg7iZQC2jczb1WRlrnGpcsUh6yuCtXpd0vEL2k7yE9qj1Hz2OZpSHpX9EG7vo9Z3rfD_Tuo1OtWByhFiiVgyN4bYy1bj0GM53QBThAEz5IMstsccsE5LOABhShlcerzBetoOEY:1rcSKJ:nX6twDfnS9bY5fJDASqjyQoUEoRURTdiY3GI7zh3QkI', '2024-03-05 15:46:35.478184');

-- --------------------------------------------------------

--
-- Structure de la table `order_cart`
--

CREATE TABLE `order_cart` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_cart_book`
--

CREATE TABLE `order_cart_book` (
  `id` bigint(20) NOT NULL,
  `cart_id` char(32) NOT NULL,
  `book_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_order`
--

CREATE TABLE `order_order` (
  `id` char(32) NOT NULL,
  `total_price` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_orderitem`
--

CREATE TABLE `order_orderitem` (
  `id` char(32) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `book_id` char(32) NOT NULL,
  `order_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_invoice`
--

CREATE TABLE `payment_invoice` (
  `id` char(32) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_payment`
--

CREATE TABLE `payment_payment` (
  `id` char(32) NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` bigint(20) NOT NULL,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `catalogue_answer`
--
ALTER TABLE `catalogue_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Catalogue_answer_comment_id_af62689e_fk_Catalogue_comment_id` (`comment_id`),
  ADD KEY `Catalogue_answer_user_id_9728fb5d_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `catalogue_author`
--
ALTER TABLE `catalogue_author`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `catalogue_book`
--
ALTER TABLE `catalogue_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Catalogue_book_author_id_8f267aaf_fk_Catalogue_author_id` (`author_id`);

--
-- Index pour la table `catalogue_book_genre`
--
ALTER TABLE `catalogue_book_genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Catalogue_book_genre_book_id_gender_id_5e257d81_uniq` (`book_id`,`gender_id`),
  ADD KEY `Catalogue_book_genre_gender_id_6f1f7c95_fk_Catalogue_gender_id` (`gender_id`);

--
-- Index pour la table `catalogue_cart`
--
ALTER TABLE `catalogue_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Catalogue_cart_user_id_1b1fd64e_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `catalogue_cart_book`
--
ALTER TABLE `catalogue_cart_book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Catalogue_cart_book_cart_id_book_id_8edddf5a_uniq` (`cart_id`,`book_id`),
  ADD KEY `Catalogue_cart_book_book_id_4beaf30e_fk_Catalogue_book_id` (`book_id`);

--
-- Index pour la table `catalogue_comment`
--
ALTER TABLE `catalogue_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Catalogue_comment_book_id_f26c036d_fk_Catalogue_book_id` (`book_id`),
  ADD KEY `Catalogue_comment_user_id_d53aa2ad_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `catalogue_gender`
--
ALTER TABLE `catalogue_gender`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `catalogue_lbook`
--
ALTER TABLE `catalogue_lbook`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `catalogue_order`
--
ALTER TABLE `catalogue_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Catalogue_order_user_id_919b8c79_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `catalogue_orderitem`
--
ALTER TABLE `catalogue_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Catalogue_orderitem_book_id_fe372dfe_fk_Catalogue_book_id` (`book_id`),
  ADD KEY `Catalogue_orderitem_order_id_e8b67e05_fk_Catalogue_order_id` (`order_id`);

--
-- Index pour la table `contacts_answer`
--
ALTER TABLE `contacts_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Contacts_answer_contact_id_424e4073_fk_Contacts_contact_id` (`contact_id`);

--
-- Index pour la table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `order_cart`
--
ALTER TABLE `order_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_cart_user_id_2f2263f7_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `order_cart_book`
--
ALTER TABLE `order_cart_book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Order_cart_book_cart_id_book_id_3a74c937_uniq` (`cart_id`,`book_id`),
  ADD KEY `Order_cart_book_book_id_811505ac_fk_Catalogue_book_id` (`book_id`);

--
-- Index pour la table `order_order`
--
ALTER TABLE `order_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_order_user_id_de1a5bf6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `order_orderitem`
--
ALTER TABLE `order_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_orderitem_book_id_39ac5ebf_fk_Catalogue_book_id` (`book_id`),
  ADD KEY `Order_orderitem_order_id_a5a99dec_fk_Order_order_id` (`order_id`);

--
-- Index pour la table `payment_invoice`
--
ALTER TABLE `payment_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Payment_invoice_order_id_92441fd4_fk_Order_order_id` (`order_id`);

--
-- Index pour la table `payment_payment`
--
ALTER TABLE `payment_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Payment_payment_order_id_15a2fd98_fk_Order_order_id` (`order_id`);

--
-- Index pour la table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `catalogue_book_genre`
--
ALTER TABLE `catalogue_book_genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `catalogue_cart_book`
--
ALTER TABLE `catalogue_cart_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `catalogue_lbook`
--
ALTER TABLE `catalogue_lbook`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contacts_answer`
--
ALTER TABLE `contacts_answer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `order_cart_book`
--
ALTER TABLE `order_cart_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `catalogue_answer`
--
ALTER TABLE `catalogue_answer`
  ADD CONSTRAINT `Catalogue_answer_comment_id_af62689e_fk_Catalogue_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `catalogue_comment` (`id`),
  ADD CONSTRAINT `Catalogue_answer_user_id_9728fb5d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `catalogue_book`
--
ALTER TABLE `catalogue_book`
  ADD CONSTRAINT `Catalogue_book_author_id_8f267aaf_fk_Catalogue_author_id` FOREIGN KEY (`author_id`) REFERENCES `catalogue_author` (`id`);

--
-- Contraintes pour la table `catalogue_book_genre`
--
ALTER TABLE `catalogue_book_genre`
  ADD CONSTRAINT `Catalogue_book_genre_book_id_f5c74efd_fk_Catalogue_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalogue_book` (`id`),
  ADD CONSTRAINT `Catalogue_book_genre_gender_id_6f1f7c95_fk_Catalogue_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `catalogue_gender` (`id`);

--
-- Contraintes pour la table `catalogue_cart`
--
ALTER TABLE `catalogue_cart`
  ADD CONSTRAINT `Catalogue_cart_user_id_1b1fd64e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `catalogue_cart_book`
--
ALTER TABLE `catalogue_cart_book`
  ADD CONSTRAINT `Catalogue_cart_book_book_id_4beaf30e_fk_Catalogue_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalogue_book` (`id`),
  ADD CONSTRAINT `Catalogue_cart_book_cart_id_82f6d20f_fk_Catalogue_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `catalogue_cart` (`id`);

--
-- Contraintes pour la table `catalogue_comment`
--
ALTER TABLE `catalogue_comment`
  ADD CONSTRAINT `Catalogue_comment_book_id_f26c036d_fk_Catalogue_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalogue_book` (`id`),
  ADD CONSTRAINT `Catalogue_comment_user_id_d53aa2ad_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `catalogue_order`
--
ALTER TABLE `catalogue_order`
  ADD CONSTRAINT `Catalogue_order_user_id_919b8c79_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `catalogue_orderitem`
--
ALTER TABLE `catalogue_orderitem`
  ADD CONSTRAINT `Catalogue_orderitem_book_id_fe372dfe_fk_Catalogue_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalogue_book` (`id`),
  ADD CONSTRAINT `Catalogue_orderitem_order_id_e8b67e05_fk_Catalogue_order_id` FOREIGN KEY (`order_id`) REFERENCES `catalogue_order` (`id`);

--
-- Contraintes pour la table `contacts_answer`
--
ALTER TABLE `contacts_answer`
  ADD CONSTRAINT `Contacts_answer_contact_id_424e4073_fk_Contacts_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts_contact` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `order_cart`
--
ALTER TABLE `order_cart`
  ADD CONSTRAINT `Order_cart_user_id_2f2263f7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `order_cart_book`
--
ALTER TABLE `order_cart_book`
  ADD CONSTRAINT `Order_cart_book_book_id_811505ac_fk_Catalogue_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalogue_book` (`id`),
  ADD CONSTRAINT `Order_cart_book_cart_id_8e6ba051_fk_Order_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `order_cart` (`id`);

--
-- Contraintes pour la table `order_order`
--
ALTER TABLE `order_order`
  ADD CONSTRAINT `Order_order_user_id_de1a5bf6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `order_orderitem`
--
ALTER TABLE `order_orderitem`
  ADD CONSTRAINT `Order_orderitem_book_id_39ac5ebf_fk_Catalogue_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalogue_book` (`id`),
  ADD CONSTRAINT `Order_orderitem_order_id_a5a99dec_fk_Order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`);

--
-- Contraintes pour la table `payment_invoice`
--
ALTER TABLE `payment_invoice`
  ADD CONSTRAINT `Payment_invoice_order_id_92441fd4_fk_Order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`);

--
-- Contraintes pour la table `payment_payment`
--
ALTER TABLE `payment_payment`
  ADD CONSTRAINT `Payment_payment_order_id_15a2fd98_fk_Order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
llibrary_databaselibrary_databaselibrary_databaselibrary_databaselibrary_databaseibrary_databaselibrary_database