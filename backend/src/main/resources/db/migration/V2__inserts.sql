insert into district(id, name, short_name) values(1, 'Центральный федеральный округ', 'ЦФО');
insert into district(id, name, short_name) values(2, 'Северо-Западный федеральный округ', 'СЗФО');
insert into district(id, name, short_name) values(3, 'Южный федеральный округ', 'ЮФО');
insert into district(id, name, short_name) values(4, 'Северо-Кавказский федеральный округ', 'СКФО');
insert into district(id, name, short_name) values(5, 'Поволжский федеральный округ', 'ПФО');
insert into district(id, name, short_name) values(6, 'Уральский федеральный округ', 'УФО');
insert into district(id, name, short_name) values(7, 'Сибирский федеральный округ', 'СФО');
insert into district(id, name, short_name) values(8, 'Дальневосточный федеральный округ', 'ДФО');
insert into district(id, name, short_name) values(9, 'Крымский федеральный округ', 'КФО');

insert into indicator(id, name, parent_id) values(1, 'Индекс здоровья населения', 0);
insert into indicator(id, name, parent_id) values(2, 'Повышение продолжительности жизни', 1);
insert into indicator(id, name, parent_id) values(3, 'Ожидаемая продолжительность жизни (женщины)', 2);
insert into indicator(id, name, parent_id) values(4, 'Ожидаемая продолжительность жизни (мужчины)', 2);
insert into indicator(id, name, parent_id) values(5, 'Снижение уровня смертности', 1);
insert into indicator(id, name, parent_id) values(6, 'Число умерших на 1000 населения', 5);
insert into indicator(id, name, parent_id) values(7, 'Младенческая смертность', 5);
insert into indicator(id, name, parent_id) values(8, 'Коэффициент материнской смертности', 5);
insert into indicator(id, name, parent_id) values(9, 'Смертность по основным причинам (болезни органов дыхания)', 5);
insert into indicator(id, name, parent_id) values(10, 'Смертность по основным причинам (болезни органов пищеварения)', 5);
insert into indicator(id, name, parent_id) values(11, 'Смертность по основным причинам (новообразования)', 5);
insert into indicator(id, name, parent_id) values(12, 'Смертность по основным причинам (болезни системы кровообращения)', 5);
insert into indicator(id, name, parent_id) values(13, 'Смертность по основным причинам (внешние причины)', 5);
insert into indicator(id, name, parent_id) values(14, 'Снижение уровня заболеваемости', 1);
insert into indicator(id, name, parent_id) values(15, 'Заболеваемость туберкулезом', 14);
insert into indicator(id, name, parent_id) values(16, 'Заболеваемость по основным причинам (болезни органов дыхания)', 14);
insert into indicator(id, name, parent_id) values(17, 'Заболеваемость по основным причинам (болезни органов пищеварения)', 14);
insert into indicator(id, name, parent_id) values(18, 'Заболеваемость по основным причинам (новообразования)', 14);
insert into indicator(id, name, parent_id) values(19, 'Заболеваемоть по основным причинам (болезни системы кровообращения)', 14);
insert into indicator(id, name, parent_id) values(20, 'Заболеваемость по основным причинам (внешние причины)', 14);
insert into indicator(id, name, parent_id) values(21, 'Увеличение уровня рождаемости', 1);
insert into indicator(id, name, parent_id) values(22, 'Естественный прирост населения', 21);
insert into indicator(id, name, parent_id) values(23, 'Подростковая фертильность', 21);
insert into indicator(id, name, parent_id) values(24, 'Число родившихся на 1000 населения', 21);
insert into indicator(id, name, parent_id) values(25, 'Улучшение системы здравоохранения', 1);
insert into indicator(id, name, parent_id) values(26, 'Обеспеченность амбулаторно-поликлиническими учреждениями', 25);
insert into indicator(id, name, parent_id) values(27, 'Обеспеченность больничными койками', 25);
insert into indicator(id, name, parent_id) values(28, 'Обеспеченность населения врачами', 25);
insert into indicator(id, name, parent_id) values(29, 'Обеспеченность населения средним медицинским персоналом', 25);


-- индекс здоровья
insert into score(id, district_id, indicator_id, value_by_year)
  values(1, 1, 1, '{
      "2000": 58.0,
      "2005": 44.2,
      "2010": 48.7,
      "1995": 60.7,
      "2015": 47.8
    }');
insert into score(id, district_id, indicator_id, value_by_year)
  values(2, 2, 1, '{
      "2000": 54.6,
      "2005": 39.4,
      "2010": 44.6,
      "1995": 62.1,
      "2015": 48.0
      }');
insert into score(id, district_id, indicator_id, value_by_year)
  values(3, 3, 1, '{
      "2000": 59.8,
      "2005": 51.0,
      "2010": 50.3,
      "1995": 65.1,
      "2015": 44.33
      }');
insert into score(id, district_id, indicator_id, value_by_year)
  values(4, 4, 1, '{
      "2005": 67.4,
      "2010": 81.2,
      "2015": 61.8
      }');
insert into score(id, district_id, indicator_id, value_by_year)
  values(5, 5, 1, '{
      "2000": 54.0,
      "2005": 40.0,
      "2010": 39.8,
      "1995": 60.6,
      "2015": 42.7
      }');
insert into score(id, district_id, indicator_id, value_by_year)
  values(6, 6, 1, '{"2000": 54.4,
      "2005": 46.1,
      "2010": 48.7,
      "1995": 54.4,
      "2015": 50.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(7, 7, 1, '{"2000": 36.2,
      "2005": 36.9,
      "2010": 37.9,
      "1995": 43.5,
      "2015": 40.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(8, 8, 1, '{"2000": 42.9,
      "2005": 42.9,
      "2010": 36.8,
      "1995": 52.8,
      "2015": 41.1}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(9, 9, 1, '{"2015": 44.7}');

-- повышение продолжительности жизни
insert into score(id, district_id, indicator_id, value_by_year)
  values(10, 1, 2, '{"2000": 76.8,
      "2005": 50.3,
      "2010": 59.0,
      "1995": 80.3,
      "2015": 62.8}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(11, 2, 2, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(12, 3, 2, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(13, 4, 2, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(14, 5, 2, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(15, 6, 2, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(16, 7, 2, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(17, 8, 2, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(18, 9, 2, null);

-- ожидаемая продолжительность жизни (женщины)
insert into score(id, district_id, indicator_id, value_by_year)
  values(19, 1, 3, '{"2000": 87.1,
      "2005": 59.5,
      "2010": 65.4,
      "1995": 74.6,
      "2015": 66.7}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(20, 2, 3, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(21, 3, 3, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(22, 4, 3, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(23, 5, 3, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(24, 6, 3, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(25, 7, 3, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(26, 8, 3, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(27, 9, 3, null);

-- ожидаемая продолжительность жизни (мужчины)
insert into score(id, district_id, indicator_id, value_by_year)
  values(28, 1, 4, '{"2000": 66.4,
      "2005": 41.1,
      "2010": 52.5,
      "1995": 85.9,
      "2015": 58.8}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(29, 2, 4, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(30, 3, 4, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(31, 4, 4, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(32, 5, 4, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(33, 6, 4, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(34, 7, 4, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(35, 8, 4, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(36, 9, 4, null);

-- снижение уровня смертности
insert into score(id, district_id, indicator_id, value_by_year)
  values(37, 1, 5, '{"2000": 29.0,
      "2005": 30.2,
      "2010": 31.4,
      "1995": 30.5,
      "2015": 34.8}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(38, 2, 5, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(39, 3, 5, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(40, 4, 5, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(41, 5, 5, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(42, 6, 5, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(43, 7, 5, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(44, 8, 5, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(45, 9, 5, null);

-- Число умерших на 1000 населения
insert into score(id, district_id, indicator_id, value_by_year)
  values(46, 1, 6, '{"2000": 18.7,
      "2005": 10.2,
      "2010": 11.9,
      "1995": 26.6,
      "2015": 21.6}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(47, 2, 6, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(48, 3, 6, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(49, 4, 6, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(50, 5, 6, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(51, 6, 6, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(52, 7, 6, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(53, 8, 6, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(54, 9, 6, null);

-- Младенческая смертность
insert into score(id, district_id, indicator_id, value_by_year)
  values(55, 1, 7, '{"2000": 68.9,
      "2005": 74.5,
      "2010": 72.3,
      "1995": 89.5,
      "2015": 83.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(56, 2, 7, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(57, 3, 7, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(58, 4, 7, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(59, 5, 7, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(60, 6, 7, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(61, 7, 7, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(62, 8, 7, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(63, 9, 7, null);

-- Коэффициент материнской смертности
insert into score(id, district_id, indicator_id, value_by_year)
  values(64, 1, 8, '{"2000": 79.6,
      "2005": 74.4,
      "2010": 75.7,
      "1995": 0.0,
      "2015": 45.2}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(65, 2, 8, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(66, 3, 8, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(67, 4, 8, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(68, 5, 8, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(69, 6, 8, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(70, 7, 8, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(71, 8, 8, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(72, 9, 8, null);


-- Смертность по основным причинам (болезни органов дыхания)
insert into score(id, district_id, indicator_id, value_by_year)
  values(73, 1, 9, '{"2000": 22.8,
      "2005": 24.9,
      "2010": 28.8,
      "1995": 21.0,
      "2015": 35.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(74, 2, 9, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(75, 3, 9, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(76, 4, 9, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(77, 5, 9, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(78, 6, 9, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(79, 7, 9, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(80, 8, 9, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(81, 9, 9, null);

-- Смертность по основным причинам (болезни органов пищеварения)
insert into score(id, district_id, indicator_id, value_by_year)
  values(82, 1, 10, '{"2000": 8.7,
      "2005": 23.6,
      "2010": 15.0,
      "1995": 20.3,
      "2015": 20.5}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(83, 2, 10, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(84, 3, 10, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(85, 4, 10, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(86, 5, 10, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(87, 6, 10, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(88, 7, 10, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(89, 8, 10, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(90, 9, 10, null);

-- Смертность по основным причинам (новообразования)
insert into score(id, district_id, indicator_id, value_by_year)
  values(91, 1, 11, '{"2000": 0.8,
      "2005": 0.7,
      "2010": 1.4,
      "1995": 2.6,
      "2015": 6.1}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(92, 2, 11, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(93, 3, 11, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(94, 4, 11, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(95, 5, 11, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(96, 6, 11, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(97, 7, 11, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(98, 8, 11, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(99, 9, 11, null);

-- Смертность по основным причинам (болезни системы кровообращения)
insert into score(id, district_id, indicator_id, value_by_year)
  values(100, 1, 12, '{"2000": 6.5,
      "2005": 2.4,
      "2010": 4.2,
      "1995": 13.6,
      "2015": 23.5}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(101, 2, 12, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(102, 3, 12, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(103, 4, 12, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(104, 5, 12, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(105, 6, 12, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(106, 7, 12, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(107, 8, 12, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(108, 9, 12, null);

-- Смертность по основным причинам (внешние причины)
insert into score(id, district_id, indicator_id, value_by_year)
  values(109, 1, 13, '{"2000": 28.0,
      "2005": 30.5,
      "2010": 41.7,
      "1995": 40.6,
      "2015": 43.6}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(110, 2, 13, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(111, 3, 13, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(112, 4, 13, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(113, 5, 13, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(114, 6, 13, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(115, 7, 13, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(116, 8, 13, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(117, 9, 13, null);

-- Снижение уровня заболеваемости
insert into score(id, district_id, indicator_id, value_by_year)
  values(118, 1, 14, '{"2000": 90.1,
      "2005": 62.2,
      "2010": 67.9,
      "1995": 78.8,
      "2015": 59.4}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(119, 2, 14, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(120, 3, 14, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(121, 4, 14, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(122, 5, 14, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(123, 6, 14, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(124, 7, 14, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(125, 8, 14, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(126, 9, 14, null);

-- Заболеваемость туберкулезом
insert into score(id, district_id, indicator_id, value_by_year)
  values(127, 1, 15, '{"2000": 90.1,
      "2005": 95.6,
      "2010": 94.8,
      "1995": 78.8,
      "2015": 82.8}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(128, 2, 15, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(129, 3, 15, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(130, 4, 15, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(131, 5, 15, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(132, 6, 15, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(133, 7, 15, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(134, 8, 15, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(135, 9, 15, null);

-- Заболеваемость по основным причинам (болезни органов дыхания)
insert into score(id, district_id, indicator_id, value_by_year)
  values(136, 1, 16, '{"2005": 69.3,
      "2010": 89.1,
      "2015": 91.3}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(137, 2, 16, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(138, 3, 16, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(139, 4, 16, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(140, 5, 16, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(141, 6, 16, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(142, 7, 16, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(143, 8, 16, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(144, 9, 16, null);

-- Заболеваемость по основным причинам (болезни органов пищеварения)
insert into score(id, district_id, indicator_id, value_by_year)
  values(145, 1, 17, '{"2005": 100.0,
      "2010": 100.0,
      "2015": 71.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(146, 2, 17, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(147, 3, 17, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(148, 4, 17, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(149, 5, 17, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(150, 6, 17, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(151, 7, 17, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(152, 8, 17, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(153, 9, 17, null);

-- Заболеваемость по основным причинам (новообразования)
insert into score(id, district_id, indicator_id, value_by_year)
  values(154, 1, 18, '{"2005": 22.6,
      "2010": 31.0,
      "2015": 39.6}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(155, 2, 18, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(156, 3, 18, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(157, 4, 18, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(158, 5, 18, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(159, 6, 18, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(160, 7, 18, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(161, 8, 18, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(162, 9, 18, null);

-- Заболеваемоть по основным причинам (болезни системы кровообращения)
insert into score(id, district_id, indicator_id, value_by_year)
  values(163, 1, 19, '{"2005": 69.3,
      "2010": 89.1,
      "2015": 91.3}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(164, 2, 19, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(165, 3, 19, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(166, 4, 19, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(167, 5, 19, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(168, 6, 19, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(169, 7, 19, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(170, 8, 19, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(171, 9, 19, null);

-- Заболеваемость по основным причинам (внешние причины)
insert into score(id, district_id, indicator_id, value_by_year)
  values(172, 1, 20, '{"2005": 53.0,
      "2010": 59.6,
      "2015": 29.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(173, 2, 20, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(174, 3, 20, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(175, 4, 20, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(176, 5, 20, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(177, 6, 20, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(178, 7, 20, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(179, 8, 20, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(180, 9, 20, null);

-- Увеличение уровня рождаемости
insert into score(id, district_id, indicator_id, value_by_year)
  values(181, 1, 21, '{"2000": 16.8,
      "2005": 19.0,
      "2010": 22.7,
      "1995": 20.2,
      "2015": 32.3}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(182, 2, 21, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(183, 3, 21, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(184, 4, 21, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(185, 5, 21, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(186, 6, 21, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(187, 7, 21, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(188, 8, 21, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(189, 9, 21, null);

-- Естественный прирост населения
insert into score(id, district_id, indicator_id, value_by_year)
  values(190, 1, 22, '{"2000": 16.9,
      "2005": 8.6,
      "2010": 14.3,
      "1995": 20.3,
      "2015": 8.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(191, 2, 22, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(192, 3, 22, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(193, 4, 22, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(194, 5, 22, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(195, 6, 22, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(196, 7, 22, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(197, 8, 22, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(198, 9, 22, null);

-- Подростковая фертильность
insert into score(id, district_id, indicator_id, value_by_year)
  values(199, 1, 23, '{"2000": 30.0,
      "2005": 29.9,
      "2010": 40.6,
      "1995": 62.2,
      "2015": 80.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(200, 2, 23, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(201, 3, 23, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(202, 4, 23, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(203, 5, 23, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(204, 6, 23, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(205, 7, 23, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(206, 8, 23, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(207, 9, 23, null);

-- Число родившихся на 1000 населения
insert into score(id, district_id, indicator_id, value_by_year)
  values(208, 1, 24, '{"2000": 7.8,
      "2005": 18.5,
      "2010": 13.2,
      "1995": 56.6,
      "2015": 8.8}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(209, 2, 24, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(210, 3, 24, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(211, 4, 24, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(212, 5, 24, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(213, 6, 24, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(214, 7, 24, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(215, 8, 24, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(216, 9, 24, null);

-- Улучшение системы здравоохранения
insert into score(id, district_id, indicator_id, value_by_year)
  values(217, 1, 25, '{"2000": 77.0,
      "2005": 59.3,
      "2010": 62.4,
      "1995": 93.5,
      "2015": 49.5}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(218, 2, 25, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(219, 3, 25, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(220, 4, 25, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(221, 5, 25, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(222, 6, 25, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(223, 7, 25, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(224, 8, 25, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(225, 9, 25, null);

-- Обеспеченность амбулаторно-поликлиническими учреждениями
insert into score(id, district_id, indicator_id, value_by_year)
  values(226, 1, 26, '{"2000": 83.3,
      "2005": 76.6,
      "2010": 77.9,
      "1995": 96.2,
      "2015": 78.4}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(227, 2, 26, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(228, 3, 26, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(229, 4, 26, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(230, 5, 26, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(231, 6, 26, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(232, 7, 26, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(233, 8, 26, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(234, 9, 26, null);

-- Обеспеченность больничными койками
insert into score(id, district_id, indicator_id, value_by_year)
  values(235, 1, 27, '{"2000": 70.7,
      "2005": 69.0,
      "2010": 57.3,
      "1995": 90.8,
      "2015": 31.3}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(236, 2, 27, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(237, 3, 27, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(238, 4, 27, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(239, 5, 27, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(240, 6, 27, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(241, 7, 27, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(242, 8, 27, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(243, 9, 27, null);

-- Обеспеченность населения врачами
insert into score(id, district_id, indicator_id, value_by_year)
  values(244, 1, 28, '{"2005": 72.3,
      "2010": 71.0,
      "2015": 58.0}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(245, 2, 28, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(246, 3, 28, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(247, 4, 28, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(248, 5, 28, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(249, 6, 28, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(250, 7, 28, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(251, 8, 28, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(252, 9, 28, null);

-- Обеспеченность населения средним медицинским персоналом
insert into score(id, district_id, indicator_id, value_by_year)
  values(253, 1, 29, '{"2005": 19.1,
      "2010": 43.4,
      "2015": 30.2}');
insert into score(id, district_id, indicator_id, value_by_year)
  values(254, 2, 29, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(255, 3, 29, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(256, 4, 29, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(257, 5, 29, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(258, 6, 29, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(259, 7, 29, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(260, 8, 29, null);
insert into score(id, district_id, indicator_id, value_by_year)
  values(261, 9, 29, null);