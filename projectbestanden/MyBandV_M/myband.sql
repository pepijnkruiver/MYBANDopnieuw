-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Gegenereerd op: 16 jun 2017 om 19:08
-- Serverversie: 5.6.17
-- PHP-versie: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `myband`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `about`
--

INSERT INTO `about` (`id`, `content`) VALUES
(1, 'Spawned from the muddy and windy Netherlands, 5 piece hardcore band 18 MILES is raging with their own furious, hard-hitting twist of modern hardcore. Known for their pumping energy and positive message 18 MILES has been breaking stages since 2010 all across Europe.'),
(2, 'When the band was formed, the band members lived in the smaller towns Uitgeest and Heerhugowaard. For this reason their band name was born. The distance between the separate members was 18 miles.'),
(3, 'At this moment 18 MILES has just released their second full length called Revive. Revive is fully produced by vocalist Daan Nieboer. This album came along with the second music video for the song Die Strong.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aboutmembers`
--

CREATE TABLE IF NOT EXISTS `aboutmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `member` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `aboutmembers`
--

INSERT INTO `aboutmembers` (`id`, `rol`, `member`) VALUES
(1, 'Drums', 'Thomas'),
(2, 'Gitaar', 'Erick'),
(3, 'Vocals', 'Daan'),
(4, 'Bass', 'Berend');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact1`
--

CREATE TABLE IF NOT EXISTS `contact1` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `media` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `contact1`
--

INSERT INTO `contact1` (`id`, `media`, `link`) VALUES
(1, 'Facebook', 'https://www.facebook.com/18MILES/'),
(2, 'Instagram', 'https://imgrab.com/instagram/18milesband/'),
(3, 'Youtube', 'https://www.youtube.com/user/18MILESTV/videos');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact2`
--

CREATE TABLE IF NOT EXISTS `contact2` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `adres` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `contact2`
--

INSERT INTO `contact2` (`id`, `adres`, `info`) VALUES
(1, 'Mail address', '18milesband@gmail.com'),
(2, 'Presscontact', '18milesband@gmail.com'),
(3, 'Bookingagent', 'sander@loudnoise.nl'),
(4, 'Telephone number', '06*********');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `merch`
--

CREATE TABLE IF NOT EXISTS `merch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `merch`
--

INSERT INTO `merch` (`id`, `image`) VALUES
(1, '1.png'),
(2, '2.png'),
(3, '3.png');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `newsarticles`
--

CREATE TABLE IF NOT EXISTS `newsarticles` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Gegevens worden geëxporteerd voor tabel `newsarticles`
--

INSERT INTO `newsarticles` (`id`, `title`, `content`, `image`, `date_created`) VALUES
(1, '18 Miles', 'Spawned from the muddy and windy Netherlands, 5 piece hardcore band 18 MILES is raging with their own furious, hard-hitting twist of modern hardcore. Known for their pumping energy and positive message 18 MILES has been breaking stages since 2010 all across Europe.\r\nWith their third record Revive dropping, 18 MILES brings a new dimension to hardcore as you ve known it.  ', 'smash.png', '2016-11-11 13:44:39'),
(2, 'Tour', 'We had a great time on our little tour to Italy! Massive shoutout to our new friends and all the kindness of the people making this possible. It s because of you that we can do what we love. You know who you are!\r\nUp next: The Sound Of Revolution\r\nGet your tickets right here:\r\nwww.soundofrevolution.loudnoise.nl', 'card.png', '2016-11-11 13:45:25'),
(3, 'Loud Noise', 'From today on we re teaming up with the almighty Loud Noise. Thank you all for the massive support, we are grateful to all of you. New shows will be announced very soon, until then, see you later!', 'console.png', '2016-11-11 13:47:11'),
(4, 'Shows', 'Dit zijn de shows die ze komende maand zullen spelen:\r\n\r\n01.06 We Came As Romans + 18 miles, Dynamo Eindhoven\r\n09.06 Backfire! + All For Nothing and 18 Miles, P60 Amstelveen\r\n25.06 Jera On Air, Ysselsteyn', 'logo.png', '2016-10-28 10:05:00'),
(5, 'Eindelijk weer touren', 'Vandaag begint het tourleven weer. Deze week zullen wij weer in onze bus op reis gaan naar verschillende podia om daar flink ruig tekeer te gaan. \r\n\r\nVoor meer info kan je ons tourschema checken!', '6.jpg', '2017-06-06 12:38:30'),
(6, 'Foto''s ', 'Heb jij ons live gezien en heb je zieke foto''s gemaakt. Stuur ze dan op naar het email adres op onze about page, zodat wij ze als tumbnail bij onze messages kunnen plaatsen.', '5.jpg', '2016-11-01 14:03:40'),
(7, 'Darker Times Review', 'It are good times for Hardcore in the Netherlands. In the last couple of weeks we ve seen several bands release their (first) records. Running Out, Hawser, To The Test and New Morality all delivered very solid records. Let s see if the full-length Darker Times (Perspective Records) by 18 Miles can keep up. They are called the new breed of Dutch hardcore by legends No Turning Back, so keeping up shouldn t be much of a problem.\r\n\r\nFirst track  No Guts  kicks off with a fast pace. It s the shortest and most furious track on this record. Second song Hollow has a bit more melody to it, but the intentions are clear from the start: good mosh material. Their release single Die Strong is up next and it s one of the heaviest tracks on this record. Let no one else take control over your life kicks in, and is quite possibly the most brutal part of this record. The cross-over between Hardcore and Metalcore comes forward in this song.\r\n\r\nAssociations with bands like The Ghost Inside and Stick To Your Guns are easily made. Without question, a lot of people will like this. Broken Homes and personal favorite Pushing Forward are the highlights of this record. Strong, meaningful lyrics accompanied by catchy and brutal riffs make them tracks to put on repeat.\r\n\r\nAfter Pushing Forward, the record is solid but there are no highlights like the first half of the album had. Nonetheless this is a great record especially when you keep in mind that it s their first full length release. 18 Miles proves that Dutch hardcore shouldn t be underestimated and that there are great things to come. The artwork is done by Robin Clarijs Illustrations. The windmill shows where the band is from and they aren t afraid to let the world know.', '7.jpg', '2016-11-11 13:48:09'),
(8, 'Lorem ipsum', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '8.jpg', '2016-11-02 19:28:36'),
(9, 'Lekker Djensen', 'Nederland bezit nog een groeiende hardcore-scene. Of dat laten deze jongens althans blijken. 18 Miles bracht enkele jaren geleden zijn eerste ep, Lessons, al zelf op de markt, en nu mogen we de eerste langspeler verwelkomen in ons midden.\r\n\r\nDarker Times demonstreert een zeer solide vorm van hardcore. Het strakke geluid valt meteen op en is ook het eerste pluspunt. Een aanbod aan krachtige nummers met loeiende breakdowns (Die Strong) zorgen voor een meer dan aangename luisterbeurt. Een sporadische melodie is nooit ver weg, maar het zijn vooraal de statische gitaren die de overhand behouden. Het slagwerk is een grote troef en staat zeer mooi afgesteld. De basdrum creeert dan ook een lekker bolronde klank die niet faalt in het behagen van de luisteraar. Door de korte duur en het helse tempo van de nummers krijgen we een korte maar krachtige plaat. Darker Times klokt namelijk af op een klein half uurtje, en dit draait uit in zijn voordeel. Muzikaal is alles dik in orde, maar de nummers lijken allemaal wat te veel op elkaar, waardoor er niet echt iets uitspringt: geen experimenten, geen intermezzo''s, maar gewoon hardcore.\r\n\r\n18 Miles heeft zijn potentieel in mijn ogen bewezen met een massief goed debuut. De korte en krachtige aard redt hier wat de eentonigheid van het geluid, wat ervoor zorgt dat u deze plaat niet aan u mag laten voorbij gaan. De heren waren zo sympathiek om een linkje op hun Facebook te plaatsen waarmee u deze Darker Times gratis kan downloaden. Ik zie geen reden om dat niet te doen.', '9.jpg', '2016-11-11 13:55:13');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tour`
--

CREATE TABLE IF NOT EXISTS `tour` (
  `Id` int(255) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `Place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Gegevens worden geëxporteerd voor tabel `tour`
--

INSERT INTO `tour` (`Id`, `Name`, `Place`, `Date`) VALUES
(1, 'Hell on earth Tour', 'Klokgebouw, Eindhoven', '2016-06-22'),
(2, 'Hell on earth Tour', 'Dynamo, Eindhoven', '2016-06-23'),
(3, 'Weekender met No Turning Back', 'Winston Kingdom, Amsterdam', '2016-12-05'),
(4, 'Weekender met No Turning Back', 'The Cave, Amsterdam', '2016-12-04'),
(5, 'Show met While She Sleeps', 'Melkweg, Amsterdam', '2017-01-15'),
(6, 'Show met Rotting out', 'Leipzig (ger)', '2017-02-07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
