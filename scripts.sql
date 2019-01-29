CREATE DATABASE `production`;
USE `production`;

CREATE TABLE members(
  member_id char(36) PRIMARY KEY,
  firstname varchar(255),
  lastname varchar(255),
  nickname varchar(255),
  phone varchar(255)
);

CREATE TABLE quotes(
  quote_id char(36) PRIMARY KEY,
  quote_text text,
  target_member_id char(36),
  author_member_id char(36),
  content_id char(36),
  is_visible tinyint(1),
  FOREIGN KEY (target_member_id) REFERENCES members(member_id),
  FOREIGN KEY (author_member_id) REFERENCES members(member_id)
);
