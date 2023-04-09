CREATE DATABASE IF NOT EXISTS postsdb;
USE postsdb;

CREATE TABLE IF NOT EXISTS user (
    id int auto_increment primary key PRIMARY KEY,
    username varchar(100) not null unique,
    password varchar(100) not null
);

/*One user cannot post 2 posts with the same title*/

CREATE TABLE IF NOT EXISTS post (
    id int auto_increment primary key,
    title varchar(100) not null,
    content text not null,
    fk_user_id int not null,
    foreign key (fk_user_id) references user(id),
    constraint unique_post unique (title, fk_user_id)
);