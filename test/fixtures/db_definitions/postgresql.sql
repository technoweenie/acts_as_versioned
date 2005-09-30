CREATE TABLE pages (
  id         SERIAL,
  version    INTEGER,
  title      VARCHAR(255),
  body       TEXT,
  updated_on TIMESTAMP
);
SELECT setval('pages_id_seq', 100);

CREATE TABLE page_versions (
  id         SERIAL,
  page_id    INTEGER,
  version    INTEGER,
  title      VARCHAR(255),
  body       TEXT,
  updated_on TIMESTAMP
);

CREATE TABLE locked_pages (
  id           SERIAL,
  lock_version INTEGER,
  title        VARCHAR(255),
  type         VARCHAR(255)
);
SELECT setval('pages_id_seq', 100);

CREATE TABLE locked_pages_revisions (
  id           SERIAL,
  page_id      INTEGER,
  version      INTEGER,
  title        VARCHAR(255),
  version_type VARCHAR(255),
  updated_at   TIMESTAMP
);

CREATE TABLE widgets (
  id   SERIAL,
  name VARCHAR(50),
  version    INTEGER,
  updated_at   TIMESTAMP
);

CREATE SEQUENCE widgets_seq START 101;

CREATE TABLE widget_versions (
  id        INTEGER DEFAULT nextval('widgets_seq'),
  widget_id INTEGER,
  name      VARCHAR(50),
  version    INTEGER,
  updated_at   TIMESTAMP,
  PRIMARY KEY (id)
);
