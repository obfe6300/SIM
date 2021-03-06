
SET NAMES utf8;


CREATE DATABASE IF NOT EXISTS SIM;

CREATE TABLE IF NOT EXISTS Users
(
    id int PRIMARY KEY NOT NULL,
    Nom VARCHAR(100),
    Prenom VARCHAR(100),
    Societe VARCHAR(100),
    Service VARCHAR(100),
    Email VARCHAR(100)
);
LOCK TABLES Users WRITE;
INSERT INTO Users VALUES (1, "Froger", "Bruno", "Orange", "SOFT/LANNION/Bond", "bruno.froger@orange.com");
UNLOCK TABLES;


CREATE TABLE IF NOT EXISTS USIM
(
    id int PRIMARY KEY NOT NULL,
    ICCID VARCHAR(100),
    User VARCHAR(100),
    MSISDN VARCHAR(100),
    DR VARCHAR(100),
    CreationDate VARCHAR(100),
    ExpDate VARCHAR(100),
    PIN VARCHAR(100),
    PUK VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Phones
(
    id int PRIMARY KEY NOT NULL,
    IMEI VARCHAR(100),
    marque VARCHAR(100),
    model VARCHAR(100),
    IdUser VARCHAR(100),
    Service VARCHAR(100),
    Commentaire VARCHAR(100)
);
