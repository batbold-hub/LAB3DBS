-- ДАСГАЛ №1 “ӨС ба хүснэгт үүсгэх”
CREATE DATABASE lesson2;
USE lesson2;
-- ДАСГАЛ №2 “ӨС-нд хүснэгтүүд үүсгэх”
CREATE TABLE boyfriend (
    b_id INT PRIMARY KEY,
    b_name VARCHAR(50) NOT NULL
);

CREATE TABLE girlfriend (
    g_id INT PRIMARY KEY,
    g_name VARCHAR(50) NOT NULL,
    b_id INT UNIQUE,
    FOREIGN KEY (b_id) REFERENCES boyfriend(b_id)
);
-- ДАСГАЛ №3 “Хүснэгтүүдэд утга оруулах”
INSERT INTO boyfriend (b_id, b_name) VALUES
(1, 'Шинэбаяр'),
(2, 'Мэндбаатар'),
(3, 'Буянхишиг'),
(4, 'Хатан-Ид'),
(5, 'Анар');

INSERT INTO girlfriend (g_id, g_name, b_id) VALUES
(1, 'Марал', 1),
(2, 'Номин', 2),
(3, 'Хонгорзул', NULL),
(4, 'Чинцэцэг', NULL),
(5, 'Санчирмаа', NULL),
(6, 'Ариунмаа', NULL),
(7, 'Анаржаргал', NULL);

-- ДАСГАЛ №4 “Үерхдэг хүүхдүүд”
SELECT 
    b.b_name AS 'Найз хөвгүүний нэр',
    g.g_name AS 'Найз охины нэр'
FROM boyfriend b
INNER JOIN girlfriend g
    ON b.b_id = g.b_id;
-- ДАСГАЛ №5 “Бүх хөвгүүд”
SELECT 
    b.b_name AS 'Найз хөвгүүний нэр',
    g.g_name AS 'Найз охины нэр'
FROM boyfriend b
LEFT JOIN girlfriend g
    ON b.b_id = g.b_id;

-- ДАСГАЛ №6 “Бүх охид”
SELECT 
    b.b_name AS 'Найз хөвгүүний нэр',
    g.g_name AS 'Найз охины нэр'
FROM boyfriend b
RIGHT JOIN girlfriend g
    ON b.b_id = g.b_id;
-- ДАСГАЛ №7 “Бүх хүүхдүүд”
SELECT 
    b.b_name AS 'Найз хөвгүүний нэр',
    g.g_name AS 'Найз охины нэр'
FROM boyfriend b
LEFT JOIN girlfriend g
    ON b.b_id = g.b_id

UNION

SELECT 
    b.b_name AS 'Найз хөвгүүний нэр',
    g.g_name AS 'Найз охины нэр'
FROM boyfriend b
RIGHT JOIN girlfriend g
    ON b.b_id = g.b_id;
    
-- ДАСГАЛ №8 “Найз охингүй хөвгүүд”
SELECT 
    b.b_id,
    b.b_name
FROM boyfriend b
LEFT JOIN girlfriend g
    ON b.b_id = g.b_id
WHERE g.g_id IS NULL;
-- ДАСГАЛ №9 “Найз хөвгүүнгүй охид”
SELECT 
    g.g_id,
    g.g_name
FROM boyfriend b
RIGHT JOIN girlfriend g
    ON b.b_id = g.b_id
WHERE b.b_id IS NULL;