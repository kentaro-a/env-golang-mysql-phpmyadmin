DROP DATABASE IF EXISTS myapp;
CREATE DATABASE myapp;
use myapp;


DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id int(11) unsigned not null auto_increment,
  name varchar(255) not null,
  insert_at datetime,
  update_at datetime,
  del_flg tinyint(1) default 0,
  primary key (id)
);


