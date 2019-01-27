DROP SCHEMA 
IF exists CVdatabase;
create schema CVdatabase Collate = utf8_general_ci;

use CVdatabase;

Create table user (
	idUser int auto_increment,
	login varchar(45),
	userPassword varchar(45),
    primary key(idUser)
);

Create table person (
	idPerson int auto_increment,
    idUser int,
	firstname varchar(45),
	lastName varchar(45),
	dateOfBirth date,
	phoneNumber varchar(45),
    adress varchar(100),
    email varchar(100),
    about varchar(400),
    primary key(idPerson)
);

Create table experience (
	idExperience int auto_increment,
    idPerson int,
	fromDate date,
	toDate date,
	typeOfDuty varchar(200),
	description varchar(400),
    primary key(idExperience)
);

Create table education (
	idEducation int auto_increment,
	idPerson int,
	fromDate date,
	toDate date,
	typeOfEducation varchar(200),
	descrption varchar(400),
    primary key(idEducation)
);

Create table personLanguage (
	idPersonLanguage int auto_increment, 
    idPerson int,
    idLanguage int,
    idlevelOfLanguage int,
    primary key(idPersonLanguage)
);

Create table languages (
	idLanguages int auto_increment,
    idLanguage int,
    nameOfLanguage varchar(200),
    primary key(idLanguages)
);

Create table levelOfLanguages (
	idLevelOfLanguages int auto_increment,
    idlevelOfLanguage int,
    nameOfLevel varchar(200),
    primary key(idLevelOfLanguages)
);

Create table socialMedia (
	idSocialMedia int auto_increment,
    idPerson int,
    typeOfSocialMedia varchar(45),
    link varchar(100),
    primary key(idSocialMedia)
);

Create table skills (
	idSkills int auto_increment,
    idPerson int,
    specificSkills varchar(200),
    primary key(idSkills)
);    