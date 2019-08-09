# MySQL

## Getting Started
* Logging In & Create User

                mysql --version
                mysql -u root -p
                CREATE USER 'vatadepalli'@'localhost' IDENTIFIED BY 'annab';

* Granting & Checking Privileges

                GRANT ALL PRIVILEGES ON * . * TO 'vatadepalli'@'localhost';
                FLUSH PRIVILEGES;
                SHOW GRANTS FOR 'vatadepalli'@'localhost';

* List all Users
                
                SELECT user, host FROM mysql.user;

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
    
* Dropping

                DROP TABLE tablename
                DROP DATABASE acme