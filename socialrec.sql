-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: sept. 27, 2019 la 03:07 PM
-- Versiune server: 10.1.37-MariaDB
-- Versiune PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `socialrec`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'saving the world is good ?', 'pinguinul_vesel', 'captain_america_1', '2019-09-27 11:44:47', 'no', 3),
(2, 'this song rocks!!! :D love it!', 'bart_simpson', 'wonder_woman', '2019-09-27 12:53:42', 'no', 9);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(6, 'captain_america_1', 'wonder_woman');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'pinguinul_vesel', 3),
(2, 'captain_america_1', 5),
(3, 'pinguinul_vesel', 8),
(4, 'pinguinul_vesel', 7),
(5, 'pinguinul_vesel', 6),
(6, 'bart_simpson', 9);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'pinguinul_vesel', 'captain_america_1', 'Hello ! \r\nCe faci ? ', '2019-09-27 10:18:02', 'yes', 'yes', 'no'),
(2, 'captain_america_1', 'pinguinul_vesel', 'Hello! \r\nFoarte bine, multumesc! Tu, ce mai faci ? cum mai esti ? ', '2019-09-27 10:18:50', 'yes', 'yes', 'no'),
(3, 'captain_america_1', 'bart_simpson', 'Hello! Are you trying to save the world  ? :D\r\n :D', '2019-09-27 12:28:02', 'yes', 'yes', 'no'),
(4, 'bart_simpson', 'captain_america_1', 'hello! yes, ofcourse :D :D :D how are you ?', '2019-09-27 12:29:29', 'yes', 'yes', 'no'),
(5, 'bart_simpson', 'captain_america_1', 'how is your day so far  ?', '2019-09-27 12:29:40', 'yes', 'yes', 'no'),
(6, 'wonder_woman', 'batman_here', 'Hello ! ce mai faci ??  :D :D :D', '2019-09-27 15:17:16', 'yes', 'yes', 'no'),
(7, 'batman_here', 'patrcole_bestdogever', 'Hello world!', '2019-09-27 15:30:13', 'yes', 'yes', 'no'),
(8, 'batman_here', 'patrcole_bestdogever', 'ce faci , dude ? ', '2019-09-27 15:53:20', 'yes', 'yes', 'no'),
(9, 'wonder_woman', 'batman_here', 'heyyy!! foarte bine! Tu, ce faci, cum mai esti  ?', '2019-09-27 15:55:37', 'yes', 'yes', 'no'),
(10, 'batman_here', 'wonder_woman', 'Foarte bine, citesc ultimele stiri.\r\n', '2019-09-27 15:56:36', 'no', 'yes', 'no');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'captain_america_1', 'pinguinul_vesel', 'Pinguinul Vesel liked your post', 'post.php?id=3', '2019-09-27 10:31:00', 'yes', 'yes'),
(2, 'pinguinul_vesel', 'captain_america_1', 'Captain America liked your post', 'post.php?id=5', '2019-09-27 11:42:31', 'no', 'yes'),
(3, 'captain_america_1', 'pinguinul_vesel', 'Pinguinul Vesel commented on your post', 'post.php?id=3', '2019-09-27 11:44:47', 'yes', 'yes'),
(4, 'bart_simpson', 'pinguinul_vesel', 'Pinguinul Vesel liked your post', 'post.php?id=8', '2019-09-27 12:35:40', 'yes', 'yes'),
(5, 'wonder_woman', 'bart_simpson', 'Bart Simpson liked your post', 'post.php?id=9', '2019-09-27 12:53:28', 'no', 'yes'),
(6, 'wonder_woman', 'bart_simpson', 'Bart Simpson commented on your post', 'post.php?id=9', '2019-09-27 12:53:42', 'no', 'yes');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'Hello ! How are you today? \r\n\r\n', 'captain_america_1', 'none', '2019-09-27 10:30:01', 'no', 'yes', 0),
(2, 'Hello ! How are you today? \r\n\r\n', 'captain_america_1', 'none', '2019-09-27 10:30:10', 'no', 'yes', 0),
(3, 'Hello ! How are you today? \r\n\r\n', 'captain_america_1', 'none', '2019-09-27 10:30:14', 'no', 'no', 1),
(4, 'Hello ! i\'m fine , thanks!', 'pinguinul_vesel', 'none', '2019-09-27 10:31:31', 'no', 'yes', 0),
(5, 'hello ! i\'m fine, 10x! :D', 'pinguinul_vesel', 'none', '2019-09-27 11:42:06', 'no', 'no', 1),
(6, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/mHAQbj7TWuk\'></iframe><br>', 'pinguinul_vesel', 'none', '2019-09-27 12:15:25', 'no', 'no', 1),
(7, 'do you like this song ?', 'pinguinul_vesel', 'none', '2019-09-27 12:17:24', 'no', 'no', 1),
(8, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/MLtyD4GMPtk\'></iframe><br>', 'bart_simpson', 'none', '2019-09-27 12:32:02', 'no', 'no', 1),
(9, 'hello, guys! We rock !!! <br><iframe width=\'420\' height=\'315\' src=\'\r\nhttps://www.youtube.com/embed/v2AC41dglnM\'></iframe><br>', 'wonder_woman', 'none', '2019-09-27 12:52:17', 'no', 'no', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 5),
('Rnrn', 3),
('Fine', 2),
('Thanks', 1),
('10x', 1),
('Song', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(11, 'Captain', 'America', 'captain_america', 'Captain@america.ro', '$2y$10$w9uR24kuTLcRTHKRRWBVe.PoIMh2qwT2S3Fo4HHzKAK74p5Lp8yyu', '2019-09-23', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(12, 'Captain', 'America', 'captain_america_1', 'Captain_america@gmail.com', '$2y$10$TkAjantlfxRRT.PsLNgC4uX1L82484Pc1li60Uvp7ieXq71kly5NK', '2019-09-27', 'assets/images/profile_pics/captain_america_11df70cffc4bc44da00f99c44571b126bn.jpeg', 3, 1, 'no', ',pinguinul_vesel,mickey_mouse,bart_simpson,'),
(13, 'Pinguinul', 'Vesel', 'pinguinul_vesel', 'Pinguinulvesel@gmail.com', '$2y$10$wwcZ4YNx7P1ebYN6nFHmI.nloCvzJoqtkwPI18z2Pg/ltRpxV7BBG', '2019-09-27', 'assets/images/profile_pics/pinguinul_veselda28daf3b57d694cf38d0c1dd10d0428n.jpeg', 4, 3, 'no', ',captain_america_1,mickey_mouse,bart_simpson,wonder_woman,acdc_dobrin,batman_here,'),
(14, 'Mickey', 'Mouse', 'mickey_mouse', 'Mickey@gmail.com', '', '2019-09-27', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',pinguinul_vesel,captain_america_1,'),
(15, 'Mickey', 'Mouse', 'mickey_mouse_1', 'Mickey2@gmail.com', '$2y$10$rh4NcMNvrZYORsoSeno3nelfHP9BlGX0scLtZoH6ckNN2Qgng1BAW', '2019-09-27', 'assets/images/profile_pics/defaults/head_red.png', 0, 0, 'no', ','),
(16, 'Bart', 'Simpson', 'bart_simpson', 'Simpson@gmail.com', '$2y$10$W0csbA5RMkDFj1D.ELskq.Jg4wSNo1tjpk4pkPYsWZlUfBpAwW0Oy', '2019-09-27', 'assets/images/profile_pics/bart_simpson10c765fdc78e9053c4db5d83b813db2fn.jpeg', 1, 1, 'no', ',captain_america_1,pinguinul_vesel,wonder_woman,'),
(17, 'Wonder', 'Woman', 'wonder_woman', 'Wonder@gmail.com', '$2y$10$K7qt1ZTeoSZ71QAjrpQ.9uW6xKbrDG301v.1y2xwInsK.DYGmCApG', '2019-09-27', 'assets/images/profile_pics/wonder_woman9f761e40a6342f24e1ca90292fc383can.jpeg', 1, 1, 'no', ',bart_simpson,pinguinul_vesel,acdc_dobrin,batman_here,patrcole_bestdogever,'),
(18, 'Acdc', 'Dobrin', 'acdc_dobrin', 'Acdcdobrin@gmail.com', '$2y$10$mz7fSacze0omHQJZ.8/hOuDWSe6hGXBsAIrO8CtExiAH8bM.d/eAa', '2019-09-27', 'assets/images/profile_pics/defaults/head_red.png', 0, 0, 'no', ',pinguinul_vesel,wonder_woman,'),
(19, 'Batman', 'Here', 'batman_here', 'Batman@gmail.com', '$2y$10$vSNuNm/TuZhchooQP67PDuNT7iXkUa5BAtk6DAwXsWjpwhQbTC3xe', '2019-09-27', 'assets/images/profile_pics/batman_herefadfe9a9c3ae894a87157611e0cfbdebn.jpeg', 0, 0, 'no', ',pinguinul_vesel,wonder_woman,patrcole_bestdogever,'),
(20, 'Patrcole', 'Bestdogever', 'patrcole_bestdogever', 'Patrocle@gmail.com', '$2y$10$6jRYxlA6PamvCeVw2OiLqe2PXDC4EGkGDCoLCTLqfI2hFllAiqgVe', '2019-09-27', 'assets/images/profile_pics/patrcole_bestdogeverd1fd5b1505fa32fd3a59b175f3097343n.jpeg', 0, 0, 'no', ',wonder_woman,batman_here,');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pentru tabele `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pentru tabele `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pentru tabele `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
