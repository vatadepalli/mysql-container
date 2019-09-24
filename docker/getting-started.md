# Instantianting Docker Containers

Build / Instantiate a container from the image.
> ./build

Start the container
> ./start

Stop the container
> ./stop

Destroy the Container
> ./destroy

Attach Shell to the Running Container
> ./attach-shell

# MySQL

## Getting Started
* Logging In & Create User

                mysql --version
                mysql -u root -p
                CREATE USER 'vatadepalli'@'localhost' IDENTIFIED BY 'annab';

* Which DB 

                <!-- Create & Use a Database -->
                CREATE DATABASE test;
                USE test;

                <!-- Current Connection Info -->
                SELECT DATABASE();
                SELECT USER();
                SELECT SCHEMA();

* Granting & Checking Privileges

                GRANT ALL PRIVILEGES ON * . * TO 'vatadepalli'@'localhost';
                FLUSH PRIVILEGES;
                SHOW GRANTS FOR 'vatadepalli'@'localhost';

* Users

                <!-- List all Users -->
                SELECT user, host FROM mysql.user;

                <!-- Inser a User -->
                INSERT INTO user(host, user, password,
                    select_priv, insert_priv, update_priv)
                VALUES('localhost', 'guest',
                PASSWORD('guest123'), 'Y','Y','Y');


* Create Database

                CREATE DATABASE acme;
                SHOW DATABASES;
                USE acme;

## CRUD Operations

* Create Table

                
                CREATE TABLE users(
                -> id INT AUTO_INCREMENT,
                -> first_name VARCHAR(100),
                -> last_name VARCHAR(100),
                -> email VARCHAR(75),
                -> password VARCHAR(255),
                -> location VARCHAR(100),
                -> dept VARCHAR(75),
                -> is_admin TINYINT(1),
                -> register_date DATETIME,
                -> PRIMARY KEY(id)
                -> );

* Tables

                SHOW TABLES;
                SELECT * FROM users;

                INSERT INTO users(first_name, last_name, email, password, location, dept, is_admin, register_date)
                values ('Vijaya Aditya', 'Tadepalli', 'vatadepalli@hotmail.com', '123123', 'Chennai', 'Development', '1', now()), 
                ('Vijaya Aditya', 'Tadepalli', 'vatadepalli@hotmail.com', '123123', 'Chennai', 'Development', '1', now());

                SELECT first_name, last_name FROM users;
                SELECT * FROM users WHERE location='Chennai';
                SELECT * FROM users WHERE location='Chennai' AND dept='Development';
                SELECT * FROM users WHERE is_admin > 0;

                DELETE FROM users WHERE id = 3;

                UPDATE users SET email = 'vijay@gmail.com' WHERE id = 2;

                ALTER TABLE users ADD age VARCHAR(3);
                ALTER TABLE users MODIFY COLUMN age INT(3);

                SELECT * FROM users ORDER BY last_name DESC;

* Concat

                SELECT CONCAT(first_name, ' ', last_name) AS 'name', dept FROM users;

* Distinct

                SELECT DISTINCT location FROM users;

* Range

                SELECT * FROM users WHERE age BETWEEN 20 AND 25;

* Like / Not Link

                SELECT * FROM users WHERE dept LIKE 'd%'
                # starts with 'd'

                SELECT * FROM users WHERE dept LIKE '%t'
                # ends with a 't'

                SELECT * FROM users WHERE dept LIKE '%op%'
                # contains a 'op'

                SELECT * FROM users WHERE dept NOT LIKE '%op%'
                # does not contain a 'op'

* In

                SELECT * FROM users WHERE dept IN('design', 'sales')
                # all uses in depts of design & sales
    
* Dropping

                DROP TABLE tablename
                DROP DATABASE acme