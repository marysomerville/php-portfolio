# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.25)
# Database: portfolio
# Generation Time: 2017-03-20 22:07:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table project
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) DEFAULT NULL,
  `identifier` varchar(125) NOT NULL,
  `description` text NOT NULL,
  `description2` text NOT NULL,
  `skills` text,
  `image` varchar(45) DEFAULT NULL,
  `dates` varchar(125) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` varchar(125) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;

INSERT INTO `project` (`id`, `title`, `identifier`, `description`, `description2`, `skills`, `image`, `dates`, `link`, `type`, `status`)
VALUES
	(1,'Example One','example-one','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pulvinar varius justo et vestibulum. Mauris convallis mauris ligula, quis dignissim velit ultrices non. Ut sem nibh, sodales vitae nunc eu, fermentum vestibulum erat. Suspendisse pharetra interdum massa vitae luctus. Duis id egestas magna. Sed eu cursus odio. Etiam ultricies aliquam urna quis posuere. Suspendisse iaculis arcu at eleifend ornare. Pellentesque auctor pretium orci.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pulvinar varius justo et vestibulum. Mauris convallis mauris ligula, quis dignissim velit ultrices non. Ut sem nibh, sodales vitae nunc eu, fermentum vestibulum erat. Suspendisse pharetra interdum massa vitae luctus. Duis id egestas magna. Sed eu cursus odio. Etiam ultricies aliquam urna quis posuere. Suspendisse iaculis arcu at eleifend ornare. Pellentesque auctor pretium orci.</p>','Design, HTML, CSS, JavaScript, Joomla, PHP, MySQL','example-one-1','2015','www.projecturl.co.uk','Employer Name (Employed)',1),
	(2,'Example Two','example-two','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pulvinar varius justo et vestibulum. Mauris convallis mauris ligula, quis dignissim velit ultrices non. Ut sem nibh, sodales vitae nunc eu, fermentum vestibulum erat. Suspendisse pharetra interdum massa vitae luctus. Duis id egestas magna. Sed eu cursus odio. Etiam ultricies aliquam urna quis posuere. Suspendisse iaculis arcu at eleifend ornare. Pellentesque auctor pretium orci.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pulvinar varius justo et vestibulum. Mauris convallis mauris ligula, quis dignissim velit ultrices non. Ut sem nibh, sodales vitae nunc eu, fermentum vestibulum erat. Suspendisse pharetra interdum massa vitae luctus. Duis id egestas magna. Sed eu cursus odio. Etiam ultricies aliquam urna quis posuere. Suspendisse iaculis arcu at eleifend ornare. Pellentesque auctor pretium orci.</p>','Design, HTML, CSS, JavaScript, PHP, MySQL','example-two-1','2016','www.projecturl.com','Freelance',1),
	(3,'Example Three','example-three','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pulvinar varius justo et vestibulum. Mauris convallis mauris ligula, quis dignissim velit ultrices non. Ut sem nibh, sodales vitae nunc eu, fermentum vestibulum erat. Suspendisse pharetra interdum massa vitae luctus. Duis id egestas magna. Sed eu cursus odio. Etiam ultricies aliquam urna quis posuere. Suspendisse iaculis arcu at eleifend ornare. Pellentesque auctor pretium orci.</p> ','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pulvinar varius justo et vestibulum. Mauris convallis mauris ligula, quis dignissim velit ultrices non. Ut sem nibh, sodales vitae nunc eu, fermentum vestibulum erat. Suspendisse pharetra interdum massa vitae luctus. Duis id egestas magna. Sed eu cursus odio. Etiam ultricies aliquam urna quis posuere. Suspendisse iaculis arcu at eleifend ornare. Pellentesque auctor pretium orci.</p>','Design, HTML, CSS, JavaScript, Wordpress, PHP, MySQL','example-three-1','2017','www.projecturl.com','Freelance',1),
	(4,'Example Four','example-four','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pulvinar varius justo et vestibulum. Mauris convallis mauris ligula, quis dignissim velit ultrices non. Ut sem nibh, sodales vitae nunc eu, fermentum vestibulum erat. Suspendisse pharetra interdum massa vitae luctus. Duis id egestas magna. Sed eu cursus odio. Etiam ultricies aliquam urna quis posuere. Suspendisse iaculis arcu at eleifend ornare. Pellentesque auctor pretium orci.</p> ','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pulvinar varius justo et vestibulum. Mauris convallis mauris ligula, quis dignissim velit ultrices non. Ut sem nibh, sodales vitae nunc eu, fermentum vestibulum erat. Suspendisse pharetra interdum massa vitae luctus. Duis id egestas magna. Sed eu cursus odio. Etiam ultricies aliquam urna quis posuere. Suspendisse iaculis arcu at eleifend ornare. Pellentesque auctor pretium orci.</p> ','Design, HTML, CSS, JavaScript, Wordpress, PHP, MySQL','example-four-1','2017','www.projecturl.com','Employer Name (Employed)',1);

/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projectSkills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projectSkills`;

CREATE TABLE `projectSkills` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `projectId` int(2) NOT NULL,
  `skillId` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projectSkills` WRITE;
/*!40000 ALTER TABLE `projectSkills` DISABLE KEYS */;

INSERT INTO `projectSkills` (`id`, `projectId`, `skillId`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,1,3),
	(4,1,6),
	(5,1,7),
	(6,1,8),
	(7,2,1),
	(8,2,2),
	(9,2,3),
	(10,2,4),
	(11,2,5),
	(12,2,6),
	(13,3,1),
	(14,3,2),
	(15,3,3),
	(16,3,4),
	(17,3,5),
	(18,3,9),
	(19,4,1),
	(20,4,2),
	(21,4,3),
	(22,4,4),
	(23,4,5),
	(24,4,6);

/*!40000 ALTER TABLE `projectSkills` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table skills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `skills`;

CREATE TABLE `skills` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;

INSERT INTO `skills` (`id`, `name`)
VALUES
	(1,'HTML'),
	(2,'CSS'),
	(3,'JavaScript'),
	(4,'PHP'),
	(5,'MySQL'),
	(6,'SEO'),
	(7,'Design'),
	(8,'Joomla'),
	(9,'Wordpress');

/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
