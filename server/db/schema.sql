DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS entry;

CREATE TABLE user(
    id int PRIMARY KEY NOT NULL,
    fname text,
    lname text,
    password text,
    salt text,
    writer_reader text,
    date_crated date not null,
    date_password_last_modified date
);

CREATE TABLE entry(
    id int PRIMARY KEY NOT NULL,
    user_id int,
    FOREIGN KEY(user_id) REFERENCES user(id),
    subject text,
    body text,
    markdown_html text,
    date_created date,
    date_last_modified date,
    unpublished text
);