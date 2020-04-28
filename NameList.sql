create  table StarLight(
name varchar(255),
birthday varchar(255),
Soleil int(2)
Luminous int(2)
Brand　varchar(255),
);

-- 複数レコード一括INSERT
INSERT INTO StarLight
  (name, birthday, Soleil, Luminous, Brand)
VALUES 
  ('星宮いちご', '3月15日', 1, 0, 'AngerySugar'),
  ('霧矢あおい', '1月31日', 1, 0, 'FuturingGIRL'),
  ('紫吹蘭', '8月3日', 1, 0, 'SpicyAGEHA'),
  ('大空あかり', '4月1日', 0, 1, 'DreamyCROWN'),
  ('氷上スミレ', '', 0, 1, 'LoliGothic'),
  ('新条ひなき', '', 0, 1, 'VividKiss');

  
  
create  table DreamAcademy(
name varchar(255),
birthday varchar(255),
Brand　varchar(255),
);

-- 複数レコード一括INSERT
INSERT INTO DreamAcademy
  (name, birthday, Brand)
VALUES 
  ('音城セイラ', '3月15日', 'AngerySugar'),
  ('冴草きい', '1月31日', 'FuturingGIRL'),
  ('風沢そら', '8月3日', 'SpicyAGEHA'),
  ('姫里マリア', '4月1日', 'DreamyCROWN');
