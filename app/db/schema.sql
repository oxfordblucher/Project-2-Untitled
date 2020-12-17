DROP DATABASE IF EXISTS `PersonalityPupDB`;

CREATE DATABASE `PersonalityPupDB`;

USE `PersonalityPupDB`;

CREATE TABLE dogs (
    id INT AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
	trait VARCHAR(200) NOT NULL,
    picUrl VARCHAR(100) NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

CREATE TABLE Results (
    id INT AUTO_INCREMENT,
    breed1 INT NOT NULL,
    breed2 INT NOT NULL,
    breed3 INT NOT NULL,
    userId INT DEFAULT 0,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

CREATE TABLE Users (
    id INT AUTO_INCREMENT,
    email VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(60) NOT NULL,
    results INT NOT NULL,
    FOREIGN KEY (results) REFERENCES results(id),
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);