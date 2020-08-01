CREATE TABLE StarLight(
gene varchar(1) NOT NULL PRIMARY KEY,
name varchar(255),
birthday varchar(255),
Soleil int(1),
Luminous int(1),
Tristar int(1),
StarAnis int(1),
Brand varchar(50)
);

-- 複数レコード一括INSERT
INSERT INTO StarLight
  (gene, name, birthday, Soleil, Luminas, Tristar, StarAnis, Brand)
VALUES
  ('I', '星宮いちご', '3月15日', 1, 0, 0, 1, 'Angely Sugar'),
  ('I', '霧矢あおい', '1月31日', 1, 0, 0, 1, 'FUTURING GIRL'),
  ('I', '紫吹蘭', '8月3日', 1, 0, 0, 1, 'SPICY AGEHA'),
  ('I', '有栖川おとめ', '5月5日', 0, 0, 0, 1, 'HAPPY RAINBOW'),
  ('I', '北大路さくら', '4月6日', 0, 0, 0, 1, 'Aurora Fantasy'),
  ('I', '一ノ瀬かえで', '11月23日', 0, 0, 1, 1, 'MAGICAL TOY'),
  ('I', '藤堂ユリカ', '12月26日', 0, 0, 1, 1, 'LoLi GoThiC'),
  ('I', '神崎美月', '9月18日', 0, 0, 1, 1, 'LOVE MOONRISE'),
  ('A', '大空あかり', '4月1日', 0, 1, 0, 0, 'Dreamy Crown'),
  ('A', '氷上スミレ', '10月20日',0, 1, 0, 0, 'LoLi GoThiC'),
  ('A', '新条ひなき', '6月11日', 0, 1, 0, 0, 'Vivid Kiss'),
  ('A', '紅林珠璃', '7月31日', 0, 0, 0, 0, 'Sangria Rosa'),
  ('A', '黒沢凛', '1月1日', 0, 0, 0, 0, 'Dance Fusion'),
  ('A', '天羽まどか', '2月14日', 0, 0, 0, 0, 'Angely Sugar');
  
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
