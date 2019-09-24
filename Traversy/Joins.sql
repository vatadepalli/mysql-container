-- drop table posts; 

create table posts(
	id int auto_increment,
    user_id int,
    title varchar(100),
	body text,
    publish_date datetime default current_timestamp,
    primary key(id),
    foreign key(user_id) references users(id)
);

INSERT INTO posts(user_id, title, body) 
VALUES 
(1, 'Post One', 'This is post one'),
(3, 'Post Two', 'This is post two'),
(1, 'Post Three', 'This is post three'),
(2, 'Post Fou r', 'This is post four'),
(5, 'Post Five', 'This is post five'),
(4, 'Post Six', 'This i s post six'),
(2, 'Post Seven', 'This is post seven'),
(1, 'Post Eight', 'This is post eight'),
(3, 'Post Nine', 'This is post none'),
(4, 'Post Ten', 'This is post ten');

select *
from posts;

-- JOINS ---------------------------------------------
SELECT *
FROM users;


SELECT
users.first_name,
users.last_name,
posts.title,
posts.publish_date
FROM users
INNER JOIN posts
ON users.id = posts.user_id
WHERE first_name = 'Vijaya Aditya'
ORDER BY posts.title;

CREATE TABLE comments(
id INT AUTO_INCREMENT,
post_id INT,
user_id INT,
body TEXT,
publish_date DATETIME DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(id),
FOREIGN KEY(user_id) references users(id), FOREIGN KEY(post_id) references posts(id)
);

INSERT INTO comments(post_id, user_id, body) 
VALUES 
(1, 3, 'This is comment one'),
(2, 1, 'This is comment two'),
(5, 3, 'This is comment three'),
(2, 4, 'This is comment four '),
(1, 2, 'This is comment five'),
(3, 1, 'This is comment six'),
(3, 2, 'This is commen t six'),
(5, 4, 'This is comment seven'),
(2, 3, 'This is comment seven');

SELECT *
FROM comments;

SELECT
comments.body,
posts.title
FROM comments
LEFT JOIN posts ON posts.id = comments.post_id
ORDER BY posts.title;

-- The Below is Bullshit
SELECT
comments.body,
posts.title
FROM comments
RIGHT JOIN posts ON posts.id = comments.post_id
ORDER BY posts.title;

-- The Whole Shebang
SELECT
comments.body,
posts.title,
users.first_name,
users.last_name
FROM comments
INNER JOIN posts ON posts.id = comments.post_id
INNER JOIN users ON users.id = comments.user_id
ORDER BY posts.title;