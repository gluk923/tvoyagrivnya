
	CREATE TABLE IF NOT EXISTS `CATEGORY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` bit(1) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `OPERATION_TYPE` varchar(255) NOT NULL,
  `PARENT_CATEGORY` int ,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CATEGORY_NAME` (`PARENT_CATEGORY`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

ALTER TABLE `CATEGORY` ADD CONSTRAINT `FK_CATEGORY_PARENT` FOREIGN KEY (PARENT_CATEGORY) REFERENCES CATEGORY(ID);