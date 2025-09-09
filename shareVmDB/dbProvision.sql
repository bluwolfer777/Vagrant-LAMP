CREATE SCHEMA vagrant;
CREATE USER 'es'@'%' IDENTIFIED BY 'Password&1';
GRANT ALL PRIVILEGES on vagrant.* to 'es'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
USE vagrant;
CREATE TABLE dati (id BIGINT PRIMARY KEY AUTO_INCREMENT, dato TEXT);
INSERT INTO dati (dato) VALUES
("Ciao"),("questo"),("è"),("un"),("test"),("del"),("DB"),("remoto");