DROP SCHEMA
IF exists CVdatabase;
create schema CVdatabase Collate = utf8_general_ci;

use CVdatabase;

Create table user (
	idUser int auto_increment,
	login varchar(100),
	password varchar(100),
    hashCode int,
    primary key(idUser)
);

create table person (
	idPerson int auto_increment,
    user_idUser int,
	firstName varchar(100),
	lastName varchar(100),
	dateOfBirth date,
    gender boolean,
	phone int,
    email varchar(100),
    about varchar(400),
    idAddress int,
    primary key(idPerson)
);

create table experience (
	idExperience int auto_increment,
    idPerson int,
    startYear varchar(100),
    endYear varchar(100),
    company varchar(100),
    location varchar(100),
    jobTitle varchar(100),
	description varchar(400),
    primary key(idExperience)
);

create table responsibility (
	idResponsibility int auto_increment,
    idExperience int,
    resp varchar(100),
    primary key(idResponsibility)
);

create table education (
	idEducation int auto_increment,
	idPerson int,
    college varchar(100),
	direction varchar(100),
	startYear varchar(100),
    endYear varchar(100),
    primary key(idEducation)
);

Create table skill (
	idSkill int auto_increment,
    idPerson int,
    skillName varchar(100),
    skillLevel int,
    primary key(idSkill)
);

create table socialMedia (
	idSocialMedia int auto_increment,
    idPerson int,
    name varchar(45),
    link varchar(100),
    primary key(idSocialMedia)
);

create table language (
	idLanguage int auto_increment,
    idPerson int,
    name varchar(100),
    level varchar(100),
    primary key(idLanguage)
);

create table address (
	idAddress int auto_increment,
    idPerson_idPerson int,
    street varchar(100),
    houseNumber int,
    apartmentNumber int,
    postCode varchar(100),
    city varchar(100),
    primary key(idAddress)
);