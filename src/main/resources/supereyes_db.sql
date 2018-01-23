-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Янв 17 2018 г., 18:54
-- Версия сервера: 5.6.35
-- Версия PHP: 7.1.8


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
(1, 'Square', b'0', 1),
(2, 'Circle', b'0', 1),
(3, 'Triangle', b'1', 1),
(4, 'Square', b'0', 2),
(5, 'Circle', b'0', 2),
(6, 'Triangle', b'1', 2);

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
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `content`, `image_path`, `title`) VALUES
(1, 'Jan. 11, 2018 — Biologists look to the past for early genetic development of tiny spider and insect eyes to find potential for research into human visual ... ', 'https://www.sciencedaily.com/images/2017/10/171009124024_1_540x360.jpg', 'Biologists Peek Into the Past to See the Future Through Tiny Spider Eyes'),
(2, 'A new study out of Tohoku University suggests that contrary to common belief that the yawning contagion is associated with empathy, it is in fact, more likely that perceptual sensitivity is to blame.', 'https://www.sciencedaily.com/images/2017/09/170905123311_1_540x360.jpg', 'Contagious yawning more closely associated with perceptual sensitivity than empathy');

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
(1, b'1', 'https://www.quia.com/files/quia/users/houstonfinley/Trianglevocab/Triangle(shape).jpg', 'What is the name of this shape?'),
(2, b'1', 'https://pbs.twimg.com/profile_images/905183271046193153/q_P1KBUJ_400x400.jpg', 'What is the name of this shape?');

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) NOT NULL,
  `active` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `test_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `active`, `name`, `test_description`) VALUES
(1, 1, 'First test', 'simple test'),
(2, 0, 'Test 2', 'Some test 2');

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
(1, 2);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
