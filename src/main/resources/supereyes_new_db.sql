-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Хост: sql12.freemysqlhosting.net
-- Время создания: Фев 03 2018 г., 15:13
-- Версия сервера: 5.5.58-0ubuntu0.14.04.1
-- Версия PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sql12217271`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `answer_text` varchar(255) DEFAULT NULL,
  `is_correct` bit(1) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `answer_text`, `is_correct`, `question_id`) VALUES
(1, 'Квадрат', b'0', 1),
(2, 'Круг', b'0', 1),
(3, 'Треугольник и круг', b'1', 1),
(4, '5', b'0', 2),
(5, '9', b'1', 2),
(6, '6', b'0', 2),
(7, 'Круг', b'0', 3),
(8, 'Треугольник', b'1', 3),
(9, '13', b'1', 4),
(10, '6', b'0', 4),
(11, 'Только круг', b'0', 5),
(12, 'Ничего', b'0', 5),
(13, 'Круг и треугольник', b'1', 5),
(14, '6', b'0', 6),
(15, '6 и 9', b'1', 6),
(16, 'Да', b'1', 7),
(17, 'Нет', b'0', 7),
(18, 'Линованные квадраты одинаково черные', b'1', 8),
(19, 'Один и более квадратов выглядят серыми', b'0', 8),
(20, 'Лучи начинают сливаться ровно на половине своей длины', b'1', 9),
(21, 'Лучи сливаются в сплошную серую массу', b'0', 9),
(22, 'Лучи расплываются и начинают перекрываться между собой, либо сливаются с фоном', b'0', 9),
(23, 'Да', b'0', 10),
(24, 'Нет', b'1', 10),
(25, 'Да', b'1', 11),
(26, 'Нет', b'0', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `exercises`
--

CREATE TABLE `exercises` (
  `id` int(11) NOT NULL,
  `instructions` longtext,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `exercises`
--

INSERT INTO `exercises` (`id`, `instructions`, `is_active`, `name`, `image_path`) VALUES
(1, 'Сядьте прямо, расслабьтесь. Прикройте глаза таким образом: середина ладони правой руки должна находиться напротив правого глаза, то же самое с левой рукой. Ладони должны лежать мягко, не нужно с силой прижимать их к лицу. Пальцы рук могут перекрещиваться на лбу, могут располагаться рядом — как вам удобнее. Главное, чтобы не было «щелочек», пропускающих свет. Когда вы в этом удостоверились, опустите веки. В результате получается, что ваши глаза закрыты и, кроме того, прикрыты ладонями рук.', b'1', 'Сначала — отдых. Пальминг', 'https://www.excimerclinic.ru/upload/image/tutorial3.jpg'),
(2, 'Упражнение можно выполнять и лежа, и стоя, но лучше всего сидя. Расслабьтесь. Закройте глаза. Представьте, что кончик носа — это ручка, которой можно писать (или вообразите, что линию носа продолжает длинная указка-ручка, — все зависит от того, как вам удобнее, главное, чтобы вы и ваши глаза не напрягались). Теперь пишите (или рисуйте) в воздухе своей ручкой. Что именно, не важно. Напишите разные буквы, названия городов и стран, небольшое письмо любимому человеку. Нарисуйте домик с дымом из трубы (такой, как рисовали в детстве), просто кружочек или квадратик.', b'1', 'Письмо носом', 'https://www.excimerclinic.ru/upload/image/tutorial5.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `flash_game_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `game_description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`id`, `enabled`, `flash_game_url`, `game_description`, `image_url`, `title`) VALUES
(1, b'1', 'https://www.excimerclinic.ru/upload/level_1_v2.swf?link1=../fungi2', NULL, 'https://excimerclinic.ru/pics/_291_2000_90_1668582234-gribi-1.png', 'Грибная охота'),
(2, b'1', 'https://excimerclinic.ru/upload/fish1.swf?link1=../fishing2', NULL, 'https://excimerclinic.ru/pics/_291_2000_90_2095079523-game-10.png', 'Рыбалка'),
(3, b'0', 'http://yohoho.net/ajax/game.php?value=129732', NULL, 'https://www.excimerclinic.ru/upload/setka2.gif', 'Сетка Германа');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `content` longtext,
  `image_path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `content`, `image_path`, `title`) VALUES
(1, 'Радужная оболочка находится в передней части сосудистой оболочки, в ней содержится пигмент, определяющий цвет наших глаз. \r\nОсновной функцией этой оболочки является регулирование светового потока, падающего на сетчатку глаза. \r\nПри воспалениях радужки нарушается острота зрения, что грозит его полной потерей. Любые нарушения в нормальном функционировании радужки не должны игнорироваться и тщательно проверяться квалифицированным специалистом.', 'http://www.zrenimed.com/Covet/stroenije/raduzhka.jpg', 'Радужка (радужная оболочка глаза): строение, функции, лечение'),
(2, 'Система зрения состоит из большого количества различных элементов, согласованная работа которых обеспечивает достоверное визуальное восприятие окружающего мира. \r\nГлазные мышцы выполняют в данной системе очень важную функцию, обеспечивая не только беспрепятственное движение глазного яблока во всех направлениях, но и четкость картинки независимо от расстояния от предмета. \r\nВ целом известно всего шесть мышечных групп, которые позволяют зрительному аппарату функционировать, работа всех таких элементов тесно связана с нервной системой и соответствующими отделами головного мозга. ', 'http://www.zrenimed.com/Covet/stroenije/myshcy_glaza.jpg', 'Мышцы глаза: строение, функции, симптомы, лечение мышц глаза');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `question_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `is_active`, `image_path`, `question_text`) VALUES
(1, b'1', 'http://rosautopark.ru/sites/default/files/mark_photos/d2.jpg?1416411438', 'Что вы видите на картинке?'),
(2, b'1', 'http://rosautopark.ru/sites/default/files/mark_photos/d3.jpg?1416411453', 'Что вы видите на картинке?'),
(3, b'1', 'http://rosautopark.ru/sites/default/files/mark_photos/d4.jpg?1416411473', 'Что вы видите на картинке?'),
(4, b'1', 'http://rosautopark.ru/sites/default/files/mark_photos/d5.jpg?1416411489', 'Что вы видите на картинке?'),
(5, b'1', 'http://rosautopark.ru/sites/default/files/mark_photos/d6.jpg?1416411506', 'Что вы видите на картинке?'),
(6, b'1', 'http://rosautopark.ru/sites/default/files/mark_photos/d7.jpg?1416411526', 'Что вы видите на картинке?'),
(7, b'1', 'http://proglaza.ru/upload/medialibrary/de6/de6445200b1ac44ac7ba7d0ffc4d22a9.gif', 'Линии сетки прямые и ровные? Квадраты решетки одинакового размера?'),
(8, b'1', 'https://www.excimerclinic.ru/upload/image/astigm2.jpg', 'Выберите подходящий вариант ответа, что вы увидели на изображении'),
(9, b'1', 'https://www.excimerclinic.ru/upload/image/astigm3.jpg', 'Выберите подходящий вариант ответа, что вы увидели на изображении:'),
(10, b'1', 'https://www.excimerclinic.ru/upload/image/astigm1.jpg', 'Становятся ли некоторые из линий темнее, чем другие?'),
(11, b'1', 'http://www.fizika.ru/laborant/14350a.gif', 'Из листа бумаги сверните трубочку, поставьте перед одним глазом, перед вторым поставьте ладонь руки. Видите ли вы \"дыру в ладони\"?');

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) NOT NULL,
  `active` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `test_description` longtext,
  `failure_message` varchar(255) DEFAULT NULL,
  `min_success_percent` int(11) DEFAULT NULL,
  `success_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `active`, `name`, `test_description`, `failure_message`, `min_success_percent`, `success_message`) VALUES
(1, 1, 'Тест на Дальтонизм', 'Дальтонизм – это уменьшение восприятия к цветовой гамме, которую здоровые люди прекрасно могут различать. Главной причиной невосприимчивости к цветам, может являться наследственный фактор, связанный с хромосомными нарушениями, которые чаще передаются от матери к сыну, поэтому дальтонизмом чаще страдают мужчины. \r\nЭто заболевание было открыто в 1798 году английским учёным Джоном Дальтоном, который, нашёл это расстройство у себя. Дальтон назвал это заболевание дальтонизмом, хотя, в настоящее время, это понятие характеризует дальтонизм только одного типа – дейтеранопии (нарушения восприятия отдельных цветов, чаще всего зелёного). В настоящее время, открыто ещё несколько типов дальтонизма.', 'Возможно у Вас есть нарушения зрения.', 90, 'У вас отличное зрение!'),
(2, 1, 'Тест Амслера', 'Тест Амслера предназначен для обнаружения проблем в центральных частях сетчатки глаза - проверка центрального поля зрения. Еще его довольно часто называют тестом на определение макулодистрофии.\r\nКак правильно выполняется тест: \r\n1.Если Вы часто носите контактные линзы или очки Вам нужно надеть их. \r\n2.Находится перед сеткой Амслера необходимо на расстоянии 20-30 см. \r\n3.Закройте 1 глаз рукой. \r\n4.Сконцентрируйте свой взгляд на центральной черной точке на 2-5 секунд, затем медленно приближайтесь к монитору (остановитесь примерно на расстоянии в 15 см. от монитора), не отводя взгляд от центра сетки. Идентичную процедуру проделайте с другим глазом.\r\n\r\nОтветьте себе на следующие вопросы: \r\nЛинии сетки прямые и ровные?\r\nКвадраты решетки одинакового размера?\r\nТоже самое проделайте для другого глаза. ', 'Возможно у Вас есть нарушения зрения.', 90, 'Вы успешно прошли тест!'),
(3, 1, 'Тест на астигматизм', 'Астигматизм возникает вследствие неправильной (не сферичной) формы роговицы (реже — хрусталика). В нормальном состоянии роговица и хрусталик здорового глаза имеют ровную сферическую поверхность. При астигматизме их сферичность нарушена. Она обладает разной кривизной по разным направлениям. Соответственно, при астигматизме вместо нормального изображения человек видит искаженное, в котором одни линии четкие, другие — размытые. В норме некоторая степень астигматизма присутствует всегда. Другой вопрос - насколько мешает это качеству зрения?', 'Возможно у вас есть нарушения зрения.', 90, 'У вас отличное зрение!'),
(4, 1, 'Тест на бинокулярное зрение. \"Дыра в ладони\"', 'ДЫРА В ЛАДОНИ (или опыт Соколова) - способ определения бинокулярного зрения. Существуют различные способы его определения. Для получения наглядного представления о бинокулярном зрении у самого себя можно проделать опыт Соколова с \"дырой в ладони\". Он заключается в том, что обследуемый смотрит одним глазом в трубку (например, в свернутую трубкой тетрадь), к концу которой со стороны второго, открытого глаза, приставляет ладонь. При наличии бинокулярного зрения создается впечатление \"дыры\" в ладони, сквозь которую воспринимается картина, видимая через трубку. Феномен можно объяснить тем, что картина, видимая через отверстие трубки, накладывается на изображение ладони в другом глазу. При одновременном зрении, в отличие от бинокулярного, \"дыра\" не совпадает с центром ладони, а при монокулярном - феномен \"дыры\" в ладони не проявляется.', 'Возможно у вас есть проблемы со зрением.', 90, 'У вас отличное зрение!');

-- --------------------------------------------------------

--
-- Структура таблицы `tests_questions`
--

CREATE TABLE `tests_questions` (
  `test_id` bigint(20) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tests_questions`
--

INSERT INTO `tests_questions` (`test_id`, `question_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(3, 9),
(3, 8),
(3, 10),
(4, 11);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3erw1a3t0r78st8ty27x6v3g1` (`question_id`);

--
-- Индексы таблицы `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tests_questions`
--
ALTER TABLE `tests_questions`
  ADD KEY `FK1m8yxbuf1fednn6cr36idxu2n` (`question_id`),
  ADD KEY `FKs4sbg3hhny26jjm325oond5f1` (`test_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `FK3erw1a3t0r78st8ty27x6v3g1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Ограничения внешнего ключа таблицы `tests_questions`
--
ALTER TABLE `tests_questions`
  ADD CONSTRAINT `FK1m8yxbuf1fednn6cr36idxu2n` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `FKs4sbg3hhny26jjm325oond5f1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
