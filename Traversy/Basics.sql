-- DROP TABLE users;

CREATE TABLE users(id INT AUTO_INCREMENT, first_name VARCHAR(100), last_name VARCHAR(100), email VARCHAR(75),
	password VARCHAR(255),
	location VARCHAR(100),
   dept VARCHAR(75),
   is_admin TINYINT(1),
   register_date DATETIME,
   PRIMARY KEY(id));

-- SELECT *
-- FROM users;

INSERT INTO users(first_name, last_name, email, password, location, dept, is_admin, register_date)
VALUES
('Vijaya Aditya', 'Tadepalli', 'vatadepalli@hotmail.com', '123123', 'Chennai', 'Development', '1', now()), 
('Kapil Anirudh', 'Tadepalli', 'katadepalli@hotmail.com', '123123', 'Chennai', 'Development', '1', now());

SELECT *
FROM users;

INSERT INTO users 
(first_name, last_name, email, password, location, dept,  is_admin, register_date) 
values ('Fred', 'Smith', 'fred@gmail.com', '123456', 'New York', 'design', 0, now()), 
('Sara', 'Watson', 'sara@gmail.com', '123456', 'New York', 'design', 0,now()),
('Will', 'Jackson', 'will@yahoo.com', '123456', 'Rhode Island', 'development',1, now()),
('Paula', 'Johnson', 'paula@yahoo.com', '123456', 'Massachusetts', 'sales',0, now()),
('Tom', 'Spears', 'tom@yahoo.com', '123456', 'Massachusetts', 'sales', 0, now());

SELECT *
FROM users
WHERE location='Massachusetts'
AND dept='sales';

SELECT *
FROM users;

DELETE FROM users 
WHERE id=6;

UPDATE users
SET email = 'freddy@gmail.com'
WHERE id = 2;

ALTER TABLE users
ADD age VARCHAR(3);

ALTER TABLE users
MODIFY COLUMN age INT(3);

UPDATE `acme`.`users` SET `age` = '22' WHERE (`id` = '5');
UPDATE `acme`.`users` SET `age` = '32' WHERE (`id` = '3');
UPDATE `acme`.`users` SET `age` = '43' WHERE (`id` = '7');
UPDATE `acme`.`users` SET `age` = '23' WHERE (`id` = '1');
UPDATE `acme`.`users` SET `age` = '55' WHERE (`id` = '2');
UPDATE `acme`.`users` SET `age` = '65' WHERE (`id` = '4');

SELECT *
FROM users
ORDER BY last_name ASC;

SELECT *
FROM users
ORDER BY last_name DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'Name', dept
FROM users;

SELECT DISTINCT location
FROM users;

SELECT *
FROM users
WHERE age BETWEEN 20 and 30;

SELECT *
FROM users
WHERE dept LIKE 'd%';

SELECT *
FROM users
WHERE dept LIKE 'dev%';

SELECT *
FROM users
WHERE dept LIKE '%t';

SELECT *
FROM users
WHERE dept LIKE '%op%';

SELECT *
FROM users
WHERE dept NOT LIKE '%es%';

SELECT *
FROM users
WHERE dept IN ('design', 'sales');

SELECT *
FROM users
WHERE dept='design' OR dept='sales';

-- --------------------- INDEXES ----------------------------

CREATE INDEX LIndex
ON users(location);

DROP INDEX LIndex
ON users;




