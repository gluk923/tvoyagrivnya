CREATE TABLE `ACCOUNT` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `NAME` varchar(255) NOT NULL,
    `DESCRIPTION` varchar(5000),
    `ACTIVE` bit(1) DEFAULT NULL,
    `ENABLED` bit(1) DEFAULT NULL,
    `OWNER` int not NULL ,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `UK_ACC_NAME` (`NAME`,`ACTIVE`,`OWNER`)
);
ALTER TABLE `ACCOUNT` ADD CONSTRAINT `FK_ACC_USER` FOREIGN KEY (OWNER) REFERENCES USER(ID);


CREATE TABLE `BALANCE` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `BALANCE` float not NULL DEFAULT 0,
    `CURRENCY` int not NULL ,
    `ACCOUNT` int not NULL ,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `UK_ACC_NAME` (`ACCOUNT`,`CURRENCY`)
);
ALTER TABLE `BALANCE` ADD CONSTRAINT `FK_BALANCE_ACC` FOREIGN KEY (ACCOUNT) REFERENCES ACCOUNT(ID);
ALTER TABLE `BALANCE` ADD CONSTRAINT `FK_BALANCE_CURR` FOREIGN KEY (CURRENCY) REFERENCES USER_CURRENCY(ID);


