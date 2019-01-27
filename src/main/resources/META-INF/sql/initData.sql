SET SQL_SAFE_UPDATES = 0;

DELETE FROM user;
ALTER TABLE user AUTO_INCREMENT = 1;
DELETE FROM person;
ALTER TABLE person AUTO_INCREMENT = 1;
DELETE FROM experience;
ALTER TABLE experience AUTO_INCREMENT = 1;
DELETE FROM responsibility;
ALTER TABLE responsibility AUTO_INCREMENT = 1;
DELETE FROM education;
ALTER TABLE education AUTO_INCREMENT = 1;
DELETE FROM skill;
ALTER TABLE skill AUTO_INCREMENT = 1;
DELETE FROM socialMedia;
ALTER TABLE socialMedia AUTO_INCREMENT = 1;
DELETE FROM language;
ALTER TABLE language AUTO_INCREMENT = 1;
DELETE FROM address;
ALTER TABLE address AUTO_INCREMENT = 1;

SET SQL_SAFE_UPDATES = 1;

INSERT INTO user (login, password) VALUES ('testUser1', 'password');
INSERT INTO person (user_idUser, firstName, lastName, dateOfBirth, gender, phone, email, about, idAddress) VALUES (1, 'Jan', 'Nowak', '1980-01-01', true, 123456789, 'example@email.com', 'lubie placki', 1);
INSERT INTO experience (idPerson, startYear, endYear, company, location, jobTitle, description) VALUES (1, '2002', '2004', 'Biedronka', 'Poznań', 'Kasjer, sprzedawca', 'Obsługa sklepu');
INSERT INTO responsibility (idExperience, resp) VALUES (1, 'Wykładanie towaru');
INSERT INTO responsibility (idExperience, resp) VALUES (1, 'Obsługa kasy');
INSERT INTO experience (idPerson, startYear, endYear, company, location, jobTitle, description) VALUES (1, '2008', 'Present', 'Dworzec PKP', 'Łódź', 'Babcia klozetowa', 'Pobieranie opłat');
INSERT INTO responsibility (idExperience, resp) VALUES (2, 'Czyszczenie toalet');
INSERT INTO responsibility (idExperience, resp) VALUES (2, 'Mycie podłogi');
INSERT INTO education (idPerson, college, direction, startYear, endYear) VALUES (1, 'WSRH', 'Wyższa Szkoła Robienia Hałąsu', '2002', '2003');
INSERT INTO skill (idPerson, skillName, skillLevel) VALUES (1, 'JAVA', 5);
INSERT INTO skill (idPerson, skillName, skillLevel) VALUES (1, 'SQL', 1);
INSERT INTO socialMedia (idPerson, name, link) VALUES (1, 'Facebook', 'www.facebook.com');
INSERT INTO socialMedia (idPerson, name, link) VALUES (1, 'Instagram', 'www.instagram.com');
INSERT INTO language (idPerson, name, level) VALUES (1, 'Angielski', 'C1');
INSERT INTO language (idPerson, name, level) VALUES (1, 'Niemiecki', 'B2');
INSERT INTO address (idPerson_idPerson, street, houseNumber, apartmentNumber, postcode, city) VALUES (1, 'Programistyczna', 1, 666, 00-000, 'Wrocław');