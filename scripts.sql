CREATE TABLE members (
  member_id uuid NOT NULL PRIMARY KEY,
  firstname text NOT NULL,
  lastname text NOT NULL,
  nickname text NULL,
  phone text NOT NULL,
  is_active boolean NULL DEFAULT TRUE
);

CREATE TABLE quotes (
  quote_id uuid NOT NULL PRIMARY KEY,
  quote_text text NOT NULL,
  author_member_id uuid NOT NULL REFERENCES members(member_id),
  quote_date date NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  is_visible boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE media (
  media_id uuid NOT NULL PRIMARY KEY,
  title text NULL,
  description text NULL,
  uploaded_at timestamptz NOT NULL DEFAULT now(),
  media_date date NULL,
  is_visible boolean NOT NULL DEFAULT TRUE,
  file_type varchar(10) NOT NULL
);

CREATE TABLE members_media (
  member_id uuid NOT NULL REFERENCES members(member_id),
  media_id uuid NOT NULL REFERENCES media(media_id)
);

CREATE TABLE quotes_media (
  quote_id uuid NOT NULL REFERENCES quotes(quote_id),
  media_id uuid NOT NULL REFERENCES media(media_id)
);