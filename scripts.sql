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

CREATE TABLE media (
  media_id uuid NOT NULL PRIMARY KEY,
  title text NULL,
  description text NULL,
  uploaded_at timestamptz NOT NULL DEFAULT now(),
  media_date date NULL,
  is_visible boolean NOT NULL DEFAULT TRUE,
  file_type varchar(10) NULL
);


