create  table StarLight(
KEY_NO int NOT NULL,
name varchar(255),
birthday varchar(255),
Soleil int(1)
Luminous int(1)
Brand　varchar(255),
);

-- 複数レコード一括INSERT
INSERT INTO StarLight
  (KEY_NO, name, birthday, Soleil, Luminous, Brand)
VALUES 
  (1, '星宮いちご', '3月15日', 1, 0, 'AngerySugar'),
  (2, '霧矢あおい', '1月31日', 1, 0, 'FuturingGIRL'),
  (3, '紫吹蘭', '8月3日', 1, 0, 'SpicyAGEHA'),
  (4, '大空あかり', '4月1日', 0, 1, 'DreamyCROWN'),
  (5, '氷上スミレ', '', 0, 1, 'LoliGothic'),
  (6, '新条ひなき', '', 0, 1, 'VividKiss');

  
create  table DreamAcademy(
KEY_NO int NOT NULL,
name varchar(255),
birthday varchar(255),
Brand　varchar(255),
);

-- 複数レコード一括INSERT
INSERT INTO DreamAcademy
  (KEY_NO, name, birthday, Brand)
VALUES 
  (1, '音城セイラ', '3月15日', 'AngerySugar'),
  (2, '冴草きい', '1月31日', 'FuturingGIRL'),
  (3, '風沢そら', '8月3日', 'SpicyAGEHA'),
  (4, '姫里マリア', '4月1日', 'DreamyCROWN');

-- 外部結合 FULL OUTER JOIN
SELECT * FROM StarLight FULL OUTER JOIN DreamAcademy ON StarLight.id = DreamAcademy.id;
