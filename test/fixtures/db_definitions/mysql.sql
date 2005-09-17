CREATE TABLE `pages` (
  `id`         int(11) NOT NULL auto_increment,
  `version`    int(11) default NULL,
  `title`      varchar(255) default NULL,
  `body`       TEXT NOT NULL,
  `updated_on` datetime default NULL,
  PRIMARY KEY  (`id`)
) TYPE=InnoDB;

CREATE TABLE `page_versions` (
  `id`         int(11) NOT NULL auto_increment,
  `page_id`    int(11) default NULL,
  `version`      int(11) default NULL,
  `title`      varchar(255) default NULL,
  `body`       TEXT NOT NULL,
  `updated_on` datetime default NULL,
  PRIMARY KEY  (`id`)
) TYPE=InnoDB;

CREATE TABLE `locked_pages` (
  `id`           int(11) NOT NULL auto_increment,
  `lock_version` int(11) default NULL,
  `title`        varchar(255) default NULL,
  `type`         varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=InnoDB;

CREATE TABLE `locked_pages_revisions` (
  `id`           int(11) NOT NULL auto_increment,
  `page_id`      int(11) default NULL,
  `version`      int(11) default NULL,
  `title`        varchar(255) default NULL,
  `version_type` varchar(255) default NULL,
  `updated_at`   datetime default NULL,
  PRIMARY KEY  (`id`)
) TYPE=InnoDB;