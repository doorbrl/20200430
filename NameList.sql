CREATE TABLE StarLight(
KEY_NO int NOT NULL PRIMARY KEY,
name varchar(255),
birthday varchar(255),
Soleil int(1),
Luminous int(1),
Brand varchar(50)
);

-- 複数レコード一括INSERT
INSERT INTO StarLight
  (KEY_NO, name, birthday, Soleil, Luminas, Brand)
VALUES
  (1, '星宮いちご', '3月15日', '1', '0', 'Angely Sugar'),
  (2, '霧矢あおい', '1月31日', '1', '0', 'FUTURING GIRL'),
  (3, '紫吹蘭', '8月3日', '1', '0', 'SPICY AGEHA'),
  (4, '大空あかり', '4月1日', '0', '1', 'Dreamy Crown'),
  (5, '氷上スミレ', '10月20日','0', '1', 'LoLi GoThiC'),
  (6, '新条ひなき', '6月11日', '0', '1', 'Vivid Kiss');


create  table DreamAcademy(
KEY_NO int NOT NULL PRIMARY KEY,
name varchar(255),
birthday varchar(255),
Brand varchar(50)
);

-- 複数レコード一括INSERT
INSERT INTO DreamAcademy
  (KEY_NO, name, birthday, Brand)
VALUES
  (1, '音城セイラ', '11月11日', 'Swing ROCK'),
  (2, '冴草きい', '12月3日', 'MAGICAL TOY'),
  (3, '風沢そら', '	10月2日', 'BOHEMIAN SKY'),
  (4, '姫里マリア', '4月1日', 'Aurora Fantasy');

-- 外部結合 FULL OUTER JOIN
SELECT * FROM StarLight FULL OUTER JOIN DreamAcademy ON StarLight.id = DreamAcademy.id;

-- from句にある副問合せ
select * from (select * from StarLight where Soleil = 1)
where Brand ='Angely Sugar';
