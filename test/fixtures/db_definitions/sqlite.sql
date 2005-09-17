CREATE TABLE 'pages' (
  'id'         INTEGER NOT NULL PRIMARY KEY,
  'version'    INTEGER,
  'title'      VARCHAR(255),
  'body'       TEXT,
  'updated_on' DATETIME DEFAULT NULL
);

CREATE TABLE 'page_versions' (
  'id'         INTEGER NOT NULL PRIMARY KEY,
  'page_id'    INTEGER NOT NULL,
  'version'    INTEGER NOT NULL,
  'title'      VARCHAR(255),
  'body'       TEXT DEFAULT NULL,
  'updated_on' DATETIME DEFAULT NULL
);

CREATE TABLE 'locked_pages' (
  'id'           INTEGER NOT NULL PRIMARY KEY,
  'lock_version' INTEGER NOT NULL,
  'title'        VARCHAR(255),
  'type'         VARCHAR(255)
);

CREATE TABLE 'locked_pages_revisions' (
  'id'           INTEGER NOT NULL PRIMARY KEY,
  'page_id'      INTEGER NOT NULL,
  'version'      INTEGER NOT NULL,
  'title'        VARCHAR(255),
  'version_type' VARCHAR(255),
  'updated_at'   DATETIME DEFAULT NULL
);