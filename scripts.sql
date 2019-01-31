CREATE TABLE members (
  member_id uuid NOT NULL PRIMARY KEY,
  firstname text NULL,
  lastname text NULL,
  nickname text NULL,
  phone text NULL,
  is_active boolean NULL DEFAULT TRUE
);

CREATE TABLE quotes (
  quote_id uuid NOT NULL PRIMARY KEY,
  quote_text text NOT NULL,
  author_member_id uuid NOT NULL,
  content_id uuid NULL,
  is_visible boolean DEFAULT TRUE,
  FOREIGN KEY (author_member_id) REFERENCES members(member_id)
);
