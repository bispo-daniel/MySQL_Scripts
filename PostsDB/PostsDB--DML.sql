use postsdb;

insert into user (id, username, password) values
(1, '@bishop', '1234'),
(2, '@data', '1234'),
(3, '@bishop&co.', '1234');

insert into post (title, content, fk_user_id) values
('How...', 'Forget it... NEVERMIND!', 1),  
('How to...', 'Forget it... NEVERMIND!', 1),  
('How to...', 'Forget it... NEVERMIND!', 2),  
('How to do...', 'Forget it... NEVERMIND!', 2),  
('How to do...', 'Forget it... NEVERMIND!', 3),  
('How to do your', 'Forget it... NEVERMIND!', 3);  