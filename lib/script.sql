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

CREATE TABLE dwill_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE aa_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE bojan_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE brook_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE cory_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE kg_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jj_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jordan_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jack_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE mason_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE mirza_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);
CREATE TABLE sergey_comments (id serial primary key, post_id integer, comment_date date, body text, username text, user_like boolean, user_dislike boolean);


CREATE TABLE dwill_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE aa_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE bojan_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE brook_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE cory_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jack_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jj_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE jordan_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE kg_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE mason_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE mirza_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);
CREATE TABLE sergey_likes (id serial primary key, post_id integer, username text, user_like boolean, user_dislike boolean);