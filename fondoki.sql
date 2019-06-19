-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 19 Juin 2019 à 23:07
-- Version du serveur :  5.7.26-0ubuntu0.16.04.1
-- Version de PHP :  7.0.33-8+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fondoki`
--

-- --------------------------------------------------------

--
-- Structure de la table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(30) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `stars` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `cityname` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adress` text CHARACTER SET latin1 NOT NULL,
  `tripurl` text CHARACTER SET latin1 NOT NULL,
  `lat` double NOT NULL,
  `len` double NOT NULL,
  `descr` text CHARACTER SET latin1 NOT NULL,
  `checkin` date NOT NULL,
  `photo` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `stars`, `price`, `cityname`, `adress`, `tripurl`, `lat`, `len`, `descr`, `checkin`, `photo`) VALUES
(1, 'Golf Residence ', 4, 3000, 'sousse', 'Nº2 sur 5 Hébergements spécialisés à Port El Kantaoui', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d480873-Reviews-Golf_Residence_Hotel-Port_El_Kantaoui_Sousse_Governorate.html', 35.8894391, 10.5925745, 'Le Golf Résidence est un hôtel trois étoiles situé à Port El Kantaoui sur la côte est tunisienne, à une quinzaine de kilomètres de l\'aéroport international de Monastir Skanès et à quelques minutes à pieds de la plage, de la marina et du golf de la ville.\r\n\r\nL\'établissement possède plus de deux cent trente logements dont quatorze suites et six chambres dites familiales. Ils possèdent tous l\'équipement standard ainsi que la climatisation, la télévision satellite et des baies vitrées donnant sur un balcon ou une terrasse avec vue sur le jardin ou la piscine.\r\n\r\nL\'hôtel dispose d\'une piscine extérieure aménagée avec transats et parasols, ainsi qu\'une galerie marchande avec diverses boutiques. Une discothèque attenante est également à disposition des clients souhaitant animer leurs soirées.\r\n\r\nLe Golf Résidence possède quatre restaurants proposant diverses formules : buffet, à la carte, barbecue et snack. Cinq bars dont un proposant une ambiance musicale sont situés à divers endroits de l\'hôtel, notamment près de la piscine ou en bord de plage. L\'un d\'eux fait aussi café maure.', '2018-09-30', 'http://192.168.43.215/fondoki/images/golf.jpg'),
(2, 'Marhaba Salem', 4, 4500, 'sousse', 'Boulevard 14 Janvier, Sousse 4000, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g295401-d571069-Reviews-Marhaba_Salem-Sousse_Sousse_Governorate.html', 35.8601395, 10.6176639, 'A mi-chemin entre le port de plaisance El Kantaoui et centre ville de Sousse, se fondant dans un écrin où la mediterranée est au premier plan, l\'hôtel Marhaba Salem est un veritable joyau d\'architectu', '2018-09-01', 'http://192.168.43.215/fondoki/images/marhapa.jpg'),
(3, 'El Mouradi Club Selima', 3, 4500, 'sousse', 'Zone Touristique El Kantaoui, Port El Kantaoui 4089, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d754105-Reviews-El_Mouradi_Club_Selima-Port_El_Kantaoui_Sousse_Governorate.html', 35.909719, 10.583088, '\'hôtel "El Mouradi Club Selima" : est le club de référence de la station de Port El Kantoui grâce à ses multiples activités, équipements de loisirs et animations pour grands et petits. Implanté le lon\r\nHôtel en promotion: Promotion V7 25%+gratuité 1ér enfant avec 2 adultes jusqu\'au 30/09/2018 (réduction incluse dans le prix). Hôtel réservé uniquement aux familles de couple marié avec ou sans enfants.', '2018-09-01', 'http://192.168.43.215/fondoki/images/mouradiselima.jpg'),
(4, 'El Mouradi Port El Kantaoui', 4, 5500, 'sousse', 'Nº18 sur 33 Hôtels à Port El Kantaoui', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d302608-Reviews-El_Mouradi_Port_El_Kantaoui-Port_El_Kantaoui_Sousse_Governorate.html', 35.9017284, 10.5816424, 'Situé au coeur de la station de Port El Kantaoui, face au parcours de golf de 36 trous et à 10 km de la ville de Sousse, l\'hôtel longe une plagede sable fin. Avec ses bâtiments blancs à l\'architecture\r\nHôtel en promotion: Promotion V7 20%+gratuité 1ér enfant avec 2 adultes jusqu\'au 30/09/2018 (réduction incluse dans le prix).', '2018-09-01', 'http://192.168.43.215/fondoki/images/mouradikantaoui.jpg'),
(5, 'Riadh Palms', 4, 6500, 'sousse', 'Avenue du 14 Janvier, Sousse 4000, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g295401-d304629-Reviews-Riadh_Palms_Hotel-Sousse_Sousse_Governorate.html', 35.841095, 10.629333, 'Si vous cherchez un hôtel bien situé à Sousse, n\'allez pas plus loin que le Riadh Palms Hotel. A partir d\'ici, les clients peuvent aisément se rendre dans tous les coins qui comptent dans cette ville\r\nL\'hôtel n\'accepte pas les jeunes Célibataires ', '2018-09-01', 'http://192.168.43.215/fondoki/images/riadhpalm.jpg'),
(6, 'Marhaba Beach', 4, 8500, 'sousse', 'Boulevard 14 Janvier | Zone Touristique, Sousse 4031, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g295401-d316772-Reviews-Hotel_Marhaba_Beach-Sousse_Sousse_Governorate.html', 35.8481507, 10.6227898, 'Premier enfant gratuit jusqu\'à 6 ans avec deux adultesSitué au centre-ville de Sousse et à 3 Km de la station de Port El Kantaoui et son Golf, entre sable blanc et eaux cristallines de la mer méditerr\r\nL\'Hôtel n\'accepte pas les célibataires. .Promo 05% réduction au 29/07/2018.', '2018-09-01', 'http://192.168.43.215/fondoki/images/marhapabeach.jpg'),
(7, 'El Mouradi Palace', 5, 10000, 'sousse', 'Zone Touristique El Kantaoui | Hamman Sousse, Port El Kantaoui 4089, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d302596-Reviews-El_Mouradi_Palace-Port_El_Kantaoui_Sousse_Governorate.html', 35.903473, 10.5815773, 'EL Mouradi Palace est situé au bord d\'une belle plage au Port el Kantaoui. Il est rénové en 2001. La ville de Sousse est à 8km, la Marina est à 3km, L\'aéroport de Monastir est à 25km et à 140km de l\'a\r\nHôtel en promotion: Promotion V7 15% jusqu\'au 30/09/2018 (réduction incluse dans les prix).', '2018-09-01', 'http://192.168.43.215/fondoki/images/mouradipalace.jpg'),
(8, 'Marhaba Palace Hotel', 5, 11500, 'sousse', 'Jinane El Kantaoui | Sousse, Port El Kantaoui 4089, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d316751-Reviews-Marhaba_Palace_Hotel-Port_El_Kantaoui_Sousse_Governorate.html', 36.1475576, 0, 'Directement sur une plage de sable fin et à proximité d\'un parcours de golf de 36 trous, à 27 Km de l\'aéroport international de Skanes Monastir et à 70 Km de la première capitale islamique en Afrique\r\nL\'Hôtel n\'accepte pas les célibataires. ', '2018-09-01', 'http://192.168.43.215/fondoki/images/marhapa5.jpg'),
(9, 'L\'orient Palace Resort & Spa', 4, 4200, 'sousse', 'Boulevard 14 Janvier, Sousse 4051, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g295401-d316782-Reviews-Orient_Palace_Hotel-Sousse_Sousse_Governorate.html', 35.8605781, 10.6161739, 'ous avons le grand plaisir de vous inviter à découvrir, notre l\'hôtel ORIENT PALACE Resort & Spa , situé au bord d\'une belle plage de sable fin, à 3 km du célèbre Port kantaoui, et à 05 km du centre-v\r\n', '2018-09-01', 'http://192.168.43.215/fondoki/images/orient.jpg'),
(10, 'El Mouradi Palm Marina', 5, 7500, 'sousse', 'Nº10 sur 33 Hôtels à Port El Kantaoui', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d302599-Reviews-El_Mouradi_Palm_Marina-Port_El_Kantaoui_Sousse_Governorate.html', 35.9072164, 10.5779831, 'L\'hôtel El Mouradi Palm Marina Port El Kantaoui est situé directement en bordure d\'une plage magnifique, à 9 km du centre ville, à 27 km de l\'aéroport de Monastir, à 140 km de Tunis et à 2 km du Port', '2018-09-01', 'http://192.168.43.215/fondoki/images/mouradipalmmarina.jpg'),
(11, ' Thalassa Sousse Resort ', 4, 5200, 'sousse', '2011 Boulevard 14 Janvier, Sousse 4000, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g295401-d596299-Reviews-Thalassa_Sousse_Resort_Aquapark-Sousse_Sousse_Governorate.html', 35.861, 10.614, 'Entièrement rénové, cet hôtel installé en bordure d\'une plage de 300 m et au milieu d\'un parc de 15 hectares, est un vrai village de vacances qui vous offre une ambiance club très complète : animation', '2018-09-01', 'http://192.168.43.215/fondoki/images/thalassasousse.jpg'),
(12, 'Marhaba Club', 4, 6800, 'sousse', 'Boulevard 14 Janvier 2011 | Zone Touristique, Sousse 4000, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g295401-d316770-Reviews-Hotel_Marhaba_Club-Sousse_Sousse_Governorate.html', 35.8449415, 10.6207835, 'Référencé par la prestigieuse chaîne Marhaba Hôtels, il est considéré comme un havre de paix et de raffinement offrant un service chaleureux et attentif. Situé sur la magnifique côte méditerranéenne', '2018-09-01', 'http://192.168.43.215/fondoki/images/marhapaclub.jpg'),
(13, 'The Pearl (ex El Hana)', 5, 14500, 'sousse', 'Boulevard Abd El Hamid El Kadhi | La Corniche, Sousse 4000, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g295401-d13228069-Reviews-The_Pearl_Resort_Spa-Sousse_Sousse_Governorate.html', 35.839283, 10.630997, 'Vendredi dernier un nouvel hôtel a ouvert officiellement ses portes. Ce n\'est ni plus ni moins que l\'ex Chams El Hana situé sur la corniche de Boujaafar et propriété de l\'hôtelier Moez Driss qui a ent', '2018-09-01', 'http://192.168.43.215/fondoki/images/hana.jpg'),
(14, 'Jaz Tour Khalef', 5, 11000, 'sousse', 'Boulevard du 14 Janvier, Sousse 4051, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g295401-d317010-Reviews-JAZ_Tour_Khalef_Thalasso_Spa-Sousse_Sousse_Governorate.html', 35.8487171, 10.6195729, 'Sur la plage et les pieds dans le sable, cet hôtel se trouve dans le secteur de Sousse à 5 km de sites comme : Sousse Beach, Ribat of Sousse et Stade Olympique. Port El Kantaoui Beach et Port El Kanta', '2018-09-01', 'http://192.168.43.215/fondoki/images/jaz.jpg'),
(15, 'Steigenberger Kantaoui Bay', 5, 9500, 'sousse', 'Port El Kantaoui, Port El Kantaoui 4089, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d316768-Reviews-Steigenberger_Kantaoui_Bay-Port_El_Kantaoui_Sousse_Governorate.html', 35.9127084, 10.5809843, 'Doté d\'une piscine extérieure ouverte toute l\'année et d\'un spa, l\'Hotel Kantaoui Bay se trouve à Port El Kantaoui, dans la région de Sousse, à 11 km de la ville du même nom. Cet hôtel possède une pla', '2018-09-01', 'http://192.168.43.215/fondoki/images/k5.jpg'),
(16, 'Lti Bellevue Park', 5, 9900, 'sousse', 'Bp 344, Port El Kantaoui 04089, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d581408-Reviews-LTI_Bellevue_Park-Port_El_Kantaoui_Sousse_Governorate.html', 35.9136597, 10.5795867, 'l\'hôtel est Situé à 3 Km du centre de Port El Kantaoui, directement en bordure d\'une belle plage de sable, le Riu Bellevue Park est un bel hôtel club à l\'architecture réussie doté d\'un cadre verdoyant', '2018-09-01', 'http://192.168.43.215/fondoki/images/lti.jpg'),
(17, 'Concorde Green Park Palace', 5, 11900, 'sousse', 'Port El Kantaoui 4089, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297952-d4584328-Reviews-Concorde_Green_Park_Palace-Port_El_Kantaoui_Sousse_Governorate.html', 35.897867, 10.593077, 'Ce complexe touristique est tout compris. Cela signifie que les repas et les boissons pris sur place sont inclus dans le prix de la chambre (certaines limitations peuvent être appliquées).Bénéficiant', '2018-09-01', 'http://192.168.43.215/fondoki/images/conc'),
(18, 'Le Khalife', 3, 2000, 'hammamet', 'Rue Hassan Hosni Abdelwaheb, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d634955-Reviews-Le_Khalife-Hammamet_Nabeul_Governorate.html', 36.4015989, 10.6052136, 'Le Khalife est un charmant hôtel 3 étoiles situé à seulement 5,4 km ( 3.4mi ) du centre de Hammamet . Les attractions touristiques locales telles que Plage Bel Azur , Plage de Hammamet et Fort de Hamm', '2018-09-01', 'http://192.168.43.215/fondoki/images/khalif.jpg'),
(20, 'yasmine beach', 4, 2350, 'hammamet', 'Boulevard de la Promenade, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d305536-Reviews-Yasmine_Beach_Resort-Hammamet_Nabeul_Governorate.html', 36.3692565, 10.5378296, 'Cet établissement est à 2 minutes à pied de la plage. Le Yasmine Beach Hotel propose un hébergement 4 étoiles en face d\'une plage privée. Il dispose de piscines, de restaurants et d\'un centre de bien-', '2018-09-01', 'http://192.168.43.215/fondoki/images/yasmine.jpg'),
(21, 'El Mouradi Beach', 4, 5500, 'hammamet', 'BP 73-Route touristique El Merezka, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d1893474-Reviews-El_Mouradi_Beach-Hammamet_Nabeul_Governorate.html', 36.41591, 10.665805, 'L\'hôtel El Mouradi vous accueille dans une propriété verdoyante proche de la plage, dans la baie d\'Hammamet. Il propose des chambres climatisées avec balcon et salle de bains.Vous pourrez accéder grat', '2018-09-01', 'http://192.168.43.215/fondoki/images/mouradibeach.jpg'),
(22, 'El Mouradi Hammamet', 5, 6750, 'hammamet', 'Zone touristique Yasmine Hammamet, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d302603-Reviews-El_Mouradi_Hammamet-Hammamet_Nabeul_Governorate.html', 36.3918737, 10.5321873, 'Situé au bord d\'une large plage de sable fin,au coeur de la nouvelle station touristique et balnéaire au Sud de Hammamet,à 200 mètres du centre de loisirs “Carthage Land”, à 500 mètres d\'une patinoire', '2018-09-01', 'http://192.168.43.215/fondoki/images/mouradihammamet5.jpg'),
(23, 'Regency Hammamet', 4, 3950, 'hammamet', '12 Avenue Monceq Bey, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d316525-Reviews-Smartline_Hammamet_Regency-Hammamet_Nabeul_Governorate.html', 36.3979866, 10.5721736, 'Doté du charme inégalable d\'un jardin verdoyant agrémenté de palmiers et de diverses plantes ainsi qu\'une sublime plage de sable fin à accès direct, l\'hôtel Hammamet Regency procure le bien-être et la', '2018-09-01', 'http://http://192.168.43.215/fondoki/images/regency.jpg'),
(24, 'El Mouradi El Menzah', 4, 5900, 'hammamet', 'Zone Touristique Yasmine Hammamet, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d482429-Reviews-El_Mouradi_El_Menzah-Hammamet_Nabeul_Governorate.html', 36.3678783, 10.5386498, 'Situé au cœur de la station de Yasmine Hammamet, face à la plage, à 200 mètres du parc “Carthage Land” et près de deux parcours de golf, El Mouradi El Menzah est idéal pour des vacances d\'agrément pou', '2018-09-01', 'http://192.168.43.215/fondoki/images/mouradimanzh.jpg'),
(25, 'El Fell', 3, 3600, 'hammamet', 'Route Touristique El Merazka, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d754174-Reviews-Hotel_El_Fell-Hammamet_Nabeul_Governorate.html', 36.416786, 10.666834, 'Bénéficiant d\'une piscine extérieure et intérieure, une connexion Wi-Fi internet, un restaurant et une plage privée. Il se trouve à 9 km de Yasmine Hammamet et à 2 km de la Médina. et à 6,8 km du parc', '2018-09-01', 'http://192.168.43.215/fondoki/images/ful.jpg'),
(26, 'Medina Belisaire & Thalasso', 4, 5500, 'hammamet', 'Yasmine Hammamet, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d581392-Reviews-Medina_Belisaire_Thalasso-Hammamet_Nabeul_Governorate.html', 36.35984, 10.52739, 'L\'hôtel BELISAIRE est situé au Sud de Hammamet, dans la nouvelle zone touristique Yasmine Hammamet, à 65 kms de l\'aéroport de Tunis Carthage et à 85 kms de l\'aéroport de celui de Monastir. L\'hôtel est', '2018-09-01', 'http://192.168.43.215/fondoki/images/medina4.jpg'),
(27, 'Dar Khayam', 3, 4500, 'hammamet', 'Rue Omar Kayam, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d316527-Reviews-Dar_Khayam_Hotel-Hammamet_Nabeul_Governorate.html', 36.4201253, 10.6691573, 'Le Dar Khayam est situé sur l\'une des plus belles plages d\'Hammamet, à seulement 6 kilomètres du centre-ville.', '2018-09-01', 'http://192.168.43.215/fondoki/images/khaym.jpg'),
(28, 'Lella Beya & Thalasso', 4, 5150, 'hammamet', 'Yasmine, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d319607-Reviews-Lella_Baya_Thalasso_Hotel-Hammamet_Nabeul_Governorate.html', 36.3891426, 10.5461878, 'Ce luxueux hôtel, à l\'architecture capricieuse et particulière qui saura surprendre les visiteurs, compte 248 chambres réparties sur 4 étages et desservies par 7 ascenseurs. Réception,deux restaurants', '2018-09-01', 'http://192.168.43.215/fondoki/images/baya.jpg'),
(29, 'Sentido Aziza Beach Golf & Spa', 4, 5500, 'hammamet', 'Rue Assad Ibn Fourat BP 218, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d316516-Reviews-SENTIDO_Aziza_Beach_Golf_Spa-Hammamet_Nabeul_Governorate.html', 36.403979, 10.642147, 'L\'HÔTEL est Situé sur une des plus belles plages de la Tunisie, de sable doré, le SENTIDO Aziza Beach Golf & Spa est un Hôtel de haut standing de catégorie 4 étoiles, rénové en 2009, à seulement 3 kms', '2018-09-01', 'http://192.168.43.215/fondoki/images/sentido.jpg'),
(30, 'Chichkhan', 4, 5950, 'hammamet', 'Street Medina, Yasmine, Hammamet 8056, Tunisie, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d316523-Reviews-Chich_Khan-Hammamet_Nabeul_Governorate.html', 36.371923, 10.538491, 'Hôtel de luxe de style berbère. Offre réception avec coffres-forts, restaurant-buffet, restaurant à thème, lobby-bar, café turc, discothèque, salle de conférences (350 pax), service de laverie et blan', '2018-09-01', 'http://192.168.43.215/fondoki/images/chich.jpg'),
(31, 'Eden Village Yadis Hammamet', 4, 4850, 'hammamet', 'Hammamet Nord, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d1533221-Reviews-Eden_Village_Yadis_Hammamet-Hammamet_Nabeul_Governorate.html', 36.3892746, 10.5321427, 'Classique vue jardin et vue mer sont équipées d\'air conditionné, TV satellite avec chaînes italiennes, téléphone, salle de bains privée et balcon ou terrasse. Les chambres vue sur le jardin ont une occupation maximale de 3 adultes, tandis que les chambres avec vue mer pour 4 adultes. Vue mer familiales sont également disponible, avec les mêmes installations, mais composé de 2 chambres séparées et peuvent accueillir jusqu\'à 4 adultes ; Il y a également 1 Suite vue mer avec 2 zones', '2018-09-01', 'http://192.168.43.215/fondoki/images/yadis.jpg'),
(32, 'Medina Solaria & Thalasso', 5, 5990, 'hammamet', 'Yasmine Hammamet, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d590302-Reviews-Medina_Solaria_Thalasso-Hammamet_Nabeul_Governorate.html', 36.3699559, 10.5395308, 'Cet hôtel, entièrement neuf et situé en bordure de plage, se trouve à quelques pas du Club nautique et de la Medina. Les itinéraires historiques du centre de Hammamet sont à quelques minutes. La dista', '2018-09-01', 'http://192.168.43.215/fondoki/images/solaria.jpg'),
(33, 'Laico Hammamet', 5, 7500, 'hammamet', 'Main Esplanade of Yasmine, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d555514-Reviews-Hotel_Laico_Hammamet-Hammamet_Nabeul_Governorate.html', 36.3699151, 0, 'Enfant gratuit jusqu\'à 4 ans dans la chambre des parentsLAICO HAMMAMET possède un style unique s\'inspirant de l\'esprit des paquebots de luxe, dont les caractéristiques de confort, de design et d\'harmo', '2018-09-01', 'http://192.168.43.215/fondoki/images/laico.jpg'),
(34, 'Vincci Flora Park', 4, 6400, 'hammamet', 'Yasmine, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d1178466-Reviews-Vincci_Flora_Park-Hammamet_Nabeul_Governorate.html', 36.3698783, 10.5295321, 'Vincci Flora Park 4* est un agréable complexe construit selon le style moresque alliant simplicité et confort.L\'hôtel se trouve au cœur du nouveau centre balnéaire d\'Hammamet Sud, à 8 Km du centre-vi', '2018-09-01', 'http://192.168.43.215/fondoki/images/flora.jpg'),
(35, 'Paradis Palace', 4, 6150, 'hammamet', 'Avenue de la Paix, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d316533-Reviews-Hotel_Paradis_Palace-Hammamet_Nabeul_Governorate.html', 36.3908012, 10.55902, 'L\'hôtel est positionné directement en bordure de l\'une des plus belles plages du Golf de Hammamet. La plage est délimitée, aménagée et équipée de parasols, chaises longues et transats.', '2018-09-01', 'http://192.168.43.215/fondoki/images/paradis.jpg'),
(36, 'Alhambra Thalasso', 5, 9850, 'hammamet', 'Yasmine, Hammamet 8052, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d566537-Reviews-Alhambra_Thalasso_Hotel-Hammamet_Nabeul_Governorate.html', 36.3557307, 10.5255996, 'L\'hotel est à 5 minutes à pied de la plage. L\'Alhambra Thalasso se situe dans la station balnéaire de Yasmine Hammamet, à 300 mètres de la plage. Il comprend des chambres et des suites de luxe avec un', '2018-09-01', 'http://192.168.43.215/fondoki/images/alhambra.jpg'),
(37, 'Golden Tulip Taj Sultan', 5, 9450, 'hammamet', 'Yasmine Hammamet, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d305549-Reviews-Golden_Tulip_Taj_Sultan_Resort-Hammamet_Nabeul_Governorate.html', 36.3597897, 10.5323052, 'nstallé sur la plage d\'Hammamet, cet hôtel de style décontracté est à 3 km du port de Yasmine Hammamet et à 12 km de la kasbah d\'Hammamet, datant du XIIIe siècle. Dotées d\'un balcon avec vue sur le j', '2018-09-01', 'http://192.168.43.215/fondoki/images/golden'),
(38, 'Hawai Beach Club', 3, 4750, 'hammamet', 'Zone Touristique Sud, Hammamet 8050', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d675123-Reviews-Caribbean_World_Hammamet_Village-Hammamet_Nabeul_Governorate.html', 36.3925052, 10.5604333, 'Les chambres à Hawai Beach Club Hammamet Sud sont spacieuses, certaines offrent une grande terrasse avec vue imprenable sur la mer. Elles sont équipées de toutes les commodités nécessaires à un excell', '2018-09-01', 'http://192.168.43.215/fondoki/images/hawai.jpg'),
(39, 'Sentido Phenicia', 4, 5950, 'hammamet', 'Avenue Moncef Bey, Hammamet 8039, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d316530-Reviews-SENTIDO_Phenicia-Hammamet_Nabeul_Governorate.html', 36.399938, 10.575027, 'Situé dans un vaste jardin de 9 hectares, au milieu d\'une plage de sable, à environ 5km du centre d\'Hammamet.Hôtel entièrement rénové en 2003 et nouveau fer de lance de la chaîne. Offre nouvelle splen', '2018-09-01', 'http://192.168.43.215/fondoki/images/ph.jpg '),
(40, 'Steigenberger Marhaba Thalasso', 5, 9800, 'hammamet', 'Avenue Moncef Bey | Hammamet, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d1517484-Reviews-Steigenberger_Marhaba_Thalasso-Hammamet_Nabeul_Governorate.html', 36.3992619, 10.5726876, 'le luxueux Hôtel Steigenberger Marhaba Thalasso Hammamet ex Palace Hammamet Marhaba est entouré de jardins à perte de vue et se situe en première ligne d\'une magnifique plage. C\'est l\'établissement de', '2018-09-01', 'http://192.168.43.215/fondoki/images/marhapahmm.jpg '),
(41, 'Vincci Nozha Beach', 4, 6950, 'hammamet', 'Route touristique Merezga Hammamet Nord, Hammamet 8050, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297943-d1486400-Reviews-Vincci_Nozha_Beach_Resort-Hammamet_Nabeul_Governorate.html', 36.4184405, 10.6669708, 'Hotel totally renovated in winter 07/08, summer 08 and winter 08/09, enjoying a fantastic location on a fine sand beach.?This hotel resort is one of the best hotels in Hamammet, Tunisia for its all-in', '2018-09-01', 'http://192.168.43.215/fondoki/images/nozha.jpg'),
(42, 'Dar El Manara', 3, 3900, 'djerba', 'Zone Touristique, Midoun, Djerba Island 4199', 'https://www.tripadvisor.fr/Hotel_Review-g297948-d12922039-Reviews-Dar_El_Manara-Midoun_Djerba_Island_Medenine_Governorate.html', 11.0309497, 33.8264294, 'Après avoir fini les étapes pour votre mariage auprès de la mairie ou à l\'église, c\'est le moment de passer à la détente avec votre compagne. La région de Djerba est un lieu idéal pour une lune de mie', '2018-09-01', 'http://192.168.43.215/fondoki/images/manar.jpg'),
(43, 'Grand Hôtel Des Thermes', 4, 4000, 'djerba', 'Zone Touristique Houmet Souk, Midoun, Djerba Island 4116', 'https://www.tripadvisor.fr/Hotel_Review-g297948-d10780205-Reviews-Grand_Hotel_des_Thermes-Midoun_Djerba_Island_Medenine_Governorate.html', 33.8537935, 10.9842521, 'Chambres:434 chambres doubles dont 15 chambres communicantes et une trentaine de chambres adaptées aux petites familles. - 5 suites seniors directement face à la mer avec terrasse ou balcon.- 5 chambr', '2018-09-01', ''),
(44, 'Vincci Djerba Resort', 4, 4650, 'djerba', ' Sidi Bakour | Bp 240, Djerba Island 4116', 'https://www.tripadvisor.fr/Hotel_Review-g297941-d305528-Reviews-Vincci_Resort_Djerba-Djerba_Island_Medenine_Governorate.html', 33.8396343, 10.9945053, 'Hôtel club 4 étoiles, le Vincci Djerba est conçu pour la tranquillité des parents.Grâce à la formule all inclusive pour les enfants et au mini club, l\'un des plus grands et des mieux équipés, une pri', '2018-09-01', 'http://192.168.43.215/fondoki/images/vicci.jpg'),
(45, 'Radisson Blu Ulysse Resort ', 5, 10200, 'djerba', 'Houmt-Souk | P.O. Box 239, Djerba Island 4128, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297941-d301901-Reviews-Radisson_Blu_Ulysse_Resort_Thalasso_Djerba-Djerba_Island_Medenine_Governorate.html', 33.869908, 10.9625, 'Situé en bord de plage le Radisson Blu Ulysse Resort & Thalasso, Djerba est un hôtel raffiné mêlant moderne et traditionnel. Chacune des chambres et suites de l\'hôtel possède sa propre terrasse privée', '2018-09-01', 'http://192.168.43.215/fondoki/images/radison.jpg'),
(46, 'El Mouradi Djerba Menzel', 4, 6600, 'djerba', 'Midoun, Djerba Island 4116, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297948-d302589-Reviews-El_Mouradi_Djerba_Menzel-Midoun_Djerba_Island_Medenine_Governorate.html', 33.780454, 11.0571871, 'Construit sur 33 Hectares, l\'hôtel "All Inclusive"El MouradiDjerba Menzel est un havre de paix idéal pour un dépaysement complet.Ses constructions traditionnelles djerbiennes, les Menzels, lui donnent', '2018-09-01', 'http://192.168.43.215/fondoki/images/mouradimnzl.jpg'),
(47, 'Palm Azur Djerba', 4, 10500, 'djerba', 'Midoun - Djerba, Djerba Island 4116', 'https://www.tripadvisor.fr/Hotel_Review-g297941-d302582-Reviews-Hotel_Palm_Azur-Djerba_Island_Medenine_Governorate.html', 33.7630387, 11.0201199, 'Le ClubHotel Riu Palm Azur ( All Inclusive ) est situé dans le sud de l\'île de Djerba , en Tunisie, dans un emplacement en bord de mer sur l\'une des plages les plus spectaculaires de l\'île . Il est en', '2018-09-01', 'http://192.168.43.215/fondoki/images/azur.jpg'),
(48, 'Iberostar Mehari Djerba', 5, 13500, 'djerba', 'Bp 242, Djerba Island 04116', 'https://www.tripadvisor.fr/Hotel_Review-g297941-d581157-Reviews-Iberostar_Mehari_Djerba-Djerba_Island_Medenine_Governorate.html', 33.827913, 11.021263, 'l\'hôtel est en stop sales du 21/07/2018 au 28/08/2018 de L\'hôtel IBEROSTAR Mehari Djerba est un hôtel 3 étoiles accueillant sur l\'île de Djerba, au style typiquement tunisien. Cet hôtel offrant l\'opt', '2018-09-01', 'http://192.168.43.215/fondoki/images/ibrostar.jpg'),
(49, 'Hasdrubal Thalassa ', 5, 10900, 'djerba ', ' Midoun, Djerba Island 4116', 'https://www.tripadvisor.fr/Hotel_Review-g297948-d316791-Reviews-Hasdrubal_Thalassa_Spa_Djerba-Midoun_Djerba_Island_Medenine_Governorate.html', 33.8409945, 11.0001313, 'Situé au bord de la très belle plage de sable fin de Sidi Mahrez, à 18 km de Houmt Souk et à 5 km de Midoun. C\'est un hôtel confortable à l\'architecture d\'inspiration arabo-mauresque doté d\'un centre', '2018-09-01', 'http://192.168.43.215/fondoki/images/has.jpg'),
(50, 'El Mouradi Skanès', 4, 4600, 'monastir ', 'Zone Touristique Skanes, Monastir 5000, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297949-d543061-Reviews-El_Mouradi_Skanes-Monastir_Monastir_Governorate.html', 35.7831629, 10.6927463, 'Situé dans la région de Skanès, à 7 Km de l\'aéroport Habib Bourguiba de Monastir, à 8 Km de la ville de Sousse et à 13 Km de la ville de Monastir, l\'hôtel El Mouradi Skanes est idéal pour des vacances', '2018-09-01', 'http://192.168.43.215/fondoki/images/skanes.jpg'),
(51, 'amir palace', 4, 8450, 'monastir', 'Route Touristique Skanes, Monastir 5000, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297949-d317000-Reviews-Amir_Palace_Hotel-Monastir_Monastir_Governorate.html', 35.7640801, 10.7342974, 'Nous avons le grand plaisir de vous inviter à découvrir, notre l\'hôtel AMIR PALACE situé au bord d\'une belle plage de sable fin, à 2 km de l\'aéroport de Monastir, et entre les deux belles villes touri', '2018-09-01', 'http://192.168.43.215/fondoki/images/amir.jpg'),
(52, 'Sahara Beach Aqua Park', 3, 4950, 'monastir', 'Route Touristique Dkhila, Monastir 5000', 'https://www.tripadvisor.fr/Hotel_Review-g297949-d317349-Reviews-Sahara_Beach_Aquapark_Resort-Monastir_Monastir_Governorate.html', 35.763991, 10.729932, 'Situé sur une plage de sable blanc, prés de l\'aéroport, à environ 8km de Monastir, et 12km de Sousse. Une station de métro se trouve à 1 km des installations hôtelières.', '2018-09-01', 'http://192.168.43.215/fondoki/images/sahara.jpg'),
(54, 'Royal Thalassa Monastir', 5, 13500, 'monastir', 'Route Touristique Skanes - BP 75 | Monastir Rèp., Monastir 5060', 'https://www.tripadvisor.fr/Hotel_Review-g297949-d317013-Reviews-Royal_Thalassa_Monastir-Monastir_Monastir_Governorate.html', 35.76612, 10.759223, 'L\'hôtel Royal Thalassa Monastir est un joli joyau à Monastir qui mérite bien plus qu\'un simple détour. Le découvrir est une initiation au bien-être et à la sérénité.', '2018-09-01', 'http://192.168.43.215/fondoki/images/thalassa5.jpg'),
(55, 'Magic Skanes Family', 4, 6950, 'monastir ', 'Nº1 sur 44 Hôtels à Monastir', 'https://www.tripadvisor.fr/Hotel_Review-g297949-d4232830-Reviews-Skanes_Family_Resort-Monastir_Monastir_Governorate.html', 35.7635513, 10.7458198, 'L\'hotel magic life skanes family resort, situé dans la zone touristique de Skanes à quelques kilomètres des villes de Sousse et de Monastir et à 5 minutes de l\'aéroport de Monastir,', '2018-09-01', 'http://192.168.43.215/fondoki/images/magic.jpg'),
(56, 'Magic Caribbean World Monastir', 4, 10200, 'monastir', 'Zone Touristique Dkhila _ B.P. 5 Sahline, Monastir 5000, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297949-d603215-Reviews-Caribbean_World_Monastir-Monastir_Monastir_Governorate.html', 35.767821, 10.8225, 'L\'hôtel Magic Caribbean World Monastir, est un hôtel 4 étoiles à Monastir, situé à 10 km de Sousse, réputée pour son climat exceptionnel ensoleillé et sa douceur de vivre.A 3 km de l\'aéroport de Skan', '2018-09-01', 'http://192.168.43.215/fondoki/images/carib.jpg'),
(57, 'dar ismail', 5, 12500, 'tabarka', 'Nº5 sur 7 Hôtels à Tabarka\r\n', 'https://www.tripadvisor.fr/Hotel_Review-g297953-d635001-Reviews-Hotel_Dar_Ismail-Tabarka_Jendouba_Governorate.html', 36.9506766, 8.7753011, 'Pour un séjour à Tabarka, l\'hôtel Dar Ismail reste incontestablement l\'adresse incontournable. Il a ouvert en 2002 pour offrir un lieu de luxe et de détente. Ce qui le démarque réellement, c\'est son s', '2018-09-01', 'http://192.168.43.215/fondoki/images/ismail.jpg'),
(58, 'Golden Yasmin Méhari Tabarka', 4, 79000, 'tabarka', 'Nouvelle Route Touristique, B.P. 357, Tabarka 8110, Tunisie', 'https://www.tripadvisor.fr/SmartDeals-g297953-Tabarka_Jendouba_Governorate-Hotel-Deals.html', 36.9523112, 8.7809937, 'Méhari Tabarka est la destination de vacances idéale pour ceux qui recherchent plus que le soleil, la plage et la baignade :Un parcours de golf parmi les plus beaux du monde, entre mer et forêt. Un ar', '2018-09-01', 'http://192.168.43.215/fondoki/images/goldentbrk.jpg'),
(59, 'Itropika Beach', 4, 6800, 'tabarka', 'Zone Touristique, Tabarka 8110, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297953-d672426-Reviews-Hotel_Itropika_Beach-Tabarka_Jendouba_Governorate.html', 36.952301, 8.76322, 'Grace à son site d\'implantation, à la fois en bordure de la mer, et à proximité du port de plaisance et de centre ville, l\'hôtel ITROPIKA beach de catégorie 4 étoile, du style renaissance vous offre u', '2018-09-01', 'http://192.168.43.215/fondoki/images/itropika.jpg'),
(60, 'Magic Thabraca Thalasso', 4, 5900, 'tabarka', 'Tabarka, Tabarka 8110, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297953-d1159214-Reviews-Thabraca_Thalasso_Diving-Tabarka_Jendouba_Governorate.html', 36.958599, 8.80191, 'C\'est le lieu idéal pour des vacances reposantes, des moments de décontraction et de tranquillité', '2018-09-01', 'http://192.168.43.215/fondoki/images/magictbrk.jpg'),
(61, 'La Cigale', 5, 17500, 'tabarka', 'Zone touristique El Morjene, Tabarka 8110, Tunisie', 'https://www.tripadvisor.fr/Hotel_Review-g297953-d7309360-Reviews-La_Cigale_Tabarka-Tabarka_Jendouba_Governorate.html', 36.6712144, 5.1510604, 'Idéalement situé à proximité du charmant village historique de Tabarka, sur la splendide côte nord-ouest de la Tunisie, La Cigale Tabarka Thalasso et Spa est un lieu magique où se combinent luxe raffi', '2018-09-01', 'http://192.168.43.215/fondoki/images/cigale.jpg'),
(62, 'SABRI', 4, 7500, 'annaba ', 'plage Refes Zahouane, Annaba 23000, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g1071600-d1467832-Reviews-Hotel_Sabri-Annaba_Annaba_Province.html', 36.93849, 7.766487, 'Position: Pres du centre (Distance depuis le centre: 1 km)', '2018-09-01', 'http://192.168.43.215/fondoki/images/sabri'),
(63, 'MIMOSA PALACE', 4, 10900, 'annaba', 'Boulevard Sidi Achour, Annaba, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g1071600-d2062356-Reviews-Mimosa_Palace-Annaba_Annaba_Province.html', 7.7160424, 36.8758844, 'Position: Pres du centre (Distance depuis le centre: 1 km)', '2018-09-01', 'http://192.168.43.215/fondoki/images/mimosa.jpg'),
(64, 'RYM EL DJAMIL', 3, 13500, 'annaba', 'Route du Cap de garde | Plage Belvédére, Annaba, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g1071600-d1467834-Reviews-Tulip_Inn_Rym_El_Djamil_Annaba-Annaba_Annaba_Province.html', 36.94801, 7.7722268, 'Position: Pres du centre (Distance depuis le centre: 1 km)', '2018-09-01', 'http://192.168.43.215/fondoki/images/rym.jpg'),
(65, 'majestic', 3, 12500, 'annaba ', '1954 11 Boulevard Du 1er Novembre, Annaba 23000, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g1071600-d1742706-Reviews-Hotel_Le_Majestic-Annaba_Annaba_Province.html', 36.9060099, 7.7601797, 'Position: Centre Ville (Distance depuis le centre: 1 km)', '2018-09-01', 'http://192.168.43.215/fondoki/images/majistic.jpg'),
(66, 'Sheraton ', 5, 19800, 'annaba', 'Boulevard Victor Hugo, Annaba 23000, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g1071600-d12063561-Reviews-Sheraton_Annaba_Hotel-Annaba_Annaba_Province.html', 36.9024361, 7.7623912, 'Position: Pres du centre (Distance depuis le centre: 0 km)', '2018-09-01', 'http://192.168.43.215/fondoki/images/sheraton.jpg'),
(67, 'OASIS', 5, 11900, 'alger', '32 Rue Mouloud Belhouchet Hussein Dey, Alger 16040, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g293718-d4412672-Reviews-Hotel_Oasis-Algiers_Algiers_Province.html', 36.7410746, 3.0917914, 'Position: Pres du centre (Distance depuis le centre: 5 km)', '2018-09-01', 'http://192.168.43.215/fondoki/images/oasis.jpg'),
(68, 'BEST NIGHT', 3, 9900, 'alger', 'Cite Boushaki D, No. 158, Bab Ezzouar, Alger 16000, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g293718-d7905376-Reviews-Best_Night-Algiers_Algiers_Province.html', 36.7244579, 3.1706896, '----', '2018-09-01', 'http://192.168.43.215/fondoki/images/best.jpg'),
(69, 'MERCURE ALGER AÉROPORT ', 5, 13700, 'alger', 'Route de L\'Universite | BP 12 5 Juillet, Bab Ezzouar 16024, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g297282-d507494-Reviews-Mercure_Alger_Aeroport-Bab_Ezzouar_Algiers_Province.html', 36.714025, 3.19595, '------', '2018-09-01', 'http://192.168.43.215/fondoki/images/mercure.jpg'),
(70, 'SOFITEL ALGIERS HAMMA GARDEN', 5, 17000, 'alger', '172, rue Hassiba Benbouali, Alger 16015, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g293718-d1124165-Reviews-Sofitel_Algiers_Hamma_Garden-Algiers_Algiers_Province.html', 36.7510114, 3.0735504, '--------', '2018-09-01', 'http://192.168.43.215/fondoki/images/sofitel.jpg'),
(71, 'New Day', 4, 16900, 'alger', '34 rue des Freres Mokhtari, Alger 16005, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g293718-d7917333-Reviews-New_Day-Algiers_Algiers_Province.html', 36.7407864, 3.0917428, '-----', '2018-09-01', 'http://192.168.43.215/fondoki/images/newday.jpg'),
(72, 'EL AURASSI', 5, 18900, 'alger', '2 Boulevard Frantz Fanon | Les Tagarins, Alger 16000, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g293718-d589764-Reviews-El_Aurassi_Hotel-Algiers_Algiers_Province.html', 36.7772782, 3.0505305, '--------', '2018-09-01', 'http://192.168.43.215/fondoki/images/aurrassi.jpg'),
(73, 'SAFIR HOTEL MAZAFRAN', 4, 13500, 'alger', 'Boite Postale 201, Zeralda 16063, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g488092-d301688-Reviews-Hotel_Mazafran-Zeralda_Tipasa_Province.html', 36.7265789, 2.8361276, '------------------', '2018-09-01', 'http://192.168.43.215/fondoki/images/safir.jpg'),
(74, 'DAR DIAF', 4, 15500, 'alger', ' 48 Boulevard des Martyres, Algiers, 16000, Algeria, 16000 Alger, Algéri', 'https://www.booking.com/hotel/dz/dar-diaf-alger.fr.html', 36.7608852, 2.9153978, '--------', '2018-09-01', 'http://192.168.43.215/fondoki/images/diaf.jpg'),
(75, 'Ibis Alger Aéroport Hotel', 3, 14500, 'alger ', 'Quartier des Affaires de Bab Ezzouar, Bab Ezzouar 16011, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g297282-d1218759-Reviews-Ibis_Alger_Aeroport_Hotel-Bab_Ezzouar_Algiers_Province.html', 36.7147883, 3.1977272, '--------', '2018-09-01', 'http://192.168.43.215/fondoki/images/ibis.jpg'),
(76, 'HOTEL EL-DJAZAIR', 5, 21000, 'alger', '24 Avenue Souidani Boujemaa, Alger 16070, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g293718-d647736-Reviews-Hotel_El_Djazair_Ex_Saint_George-Algiers_Algiers_Province.html', 3.0462061, 36.7543872, '-------', '2018-09-01', 'http://192.168.43.215/fondoki/images/san.jpg'),
(77, 'SHERATON CLUB DES PINS RESORT', 5, 37500, 'alger', 'Boite Postal 62, Club Des Pins, Staoueli 16101, Algérie', 'https://www.tripadvisor.fr/Hotel_Review-g660702-d301827-Reviews-Sheraton_Club_des_Pins_Resort-Staoueli_Algiers_Province.html', 36.762989, 2.873701, '--------', '2018-09-01', 'http://192.168.43.215/fondoki/images/sheralger.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_arr` date NOT NULL,
  `date_dep` date NOT NULL,
  `prix` double NOT NULL,
  `noms` text NOT NULL,
  `type` varchar(30) NOT NULL,
  `hotel` varchar(30) NOT NULL,
  `accepted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `reservation`
--

INSERT INTO `reservation` (`id`, `user_id`, `date_arr`, `date_dep`, `prix`, `noms`, `type`, `hotel`, `accepted`) VALUES
(12, 3, '2018-09-11', '2018-09-07', 97200, 'Adults : \n0 --> walod\n1 --> hamza\nEnfants : \n0 --> khaled\n1 --> walid\n', 'All in', 'The Pearl (ex El Hana)', 1),
(13, 4, '2018-09-11', '2018-09-07', 72000, 'Adults : \n0 --> hello\n1 --> test\nEnfants : \n0 --> test\n1 --> test\n', 'Demi pension', 'Grand Hôtel Des Thermes', 0),
(14, 5, '2018-09-13', '2018-09-07', 311850, 'Adults : \n0 --> hello\n1 --> hello\n2 --> helo\nEnfants : \n0 --> helo\n', 'Demi pension', 'BEST NIGHT', 0),
(17, 6, '2018-09-18', '2018-09-11', 412020, 'Adults : \n0 --> khaled\n1 --> walid\n2 --> hamza\nEnfants : \n', 'All in', 'MIMOSA PALACE', 1),
(18, 3, '2018-09-16', '2018-09-11', 67500, 'Adults : \n0 --> \n1 --> \nEnfants : \n0 --> \n1 --> \n', 'Demi pension', 'Golf Residence ', 0),
(20, 3, '2018-09-18', '2018-09-11', 75600, 'Adults : \n0 --> hamza\n1 --> walid\n2 --> khaled\nEnfants : \n', 'All in', 'Le Khalife', 0),
(21, 3, '2018-09-12', '2018-09-09', 32400, 'Adults : \n0 --> hamza\n1 --> walid\nEnfants : \n', 'All in', 'Golf Residence ', 0),
(22, 7, '2018-09-12', '2018-09-10', 32400, 'Adults : \n0 --> hamid\n1 --> hamid\nEnfants : \n', 'All in', 'Golf Residence ', 1),
(24, 3, '2018-09-23', '2018-09-21', 40500, 'Adults : \n0 --> hamza\n1 --> hamza\nEnfants : \n0 --> abdo\n', 'All in', 'Marhaba Salem', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `nom` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `email`, `username`, `pass`) VALUES
(2, 'walid', 'walid@walid.com', 'walid', 'walid');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
