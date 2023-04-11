use postsdb;

insert into user (username, password) values
('@bishop', '1234'),
('@data', '1234'),
('@bishop&co.', '1234');

insert into post (title, content, fk_user_id) values
('How to catch a butterfly', '[...] Just catch a look...', 1),  
('Lose weight following these simples steps!', 'Under development...', 2),  
('My favorite country from Europe is...', 'Shitzerland', 3);