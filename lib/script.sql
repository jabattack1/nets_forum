CREATE TABLE users (id serial primary key, username varchar(150), name varchar(150), phone integer, email text, user_avatar text);

CREATE TABLE dwill_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE aa_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE bojan_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE brook_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE cory_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jack_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jj_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jordan_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE kg_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE mason_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE mirza_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE sergey_posts (id serial primary key, post_date date, title text, body text, user_id integer, username text, user_like boolean, user_dislike boolean);

CREATE TABLE comments (id serial primary key, post_id integer, comment_date date, md text, user_id integer, user_like boolean, user_dislike boolean);