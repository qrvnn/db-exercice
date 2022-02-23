DROP DATABASE test;
CREATE DATABASE `test` DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

CREATE TABLE `test`.`style`(
    `idStyle` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL,
    PRIMARY KEY(`idStyle`)
)ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
    
CREATE TABLE `test`.`artist`(
    `idArtist` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `birthday` VARCHAR(10) NOT NULL,
    PRIMARY KEY(`idArtist`)
)ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

CREATE TABLE `test`.`album`(
    `idAlbum` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL,
    `releaseDate` VARCHAR(10) NOT NULL,
    `fkIdStyle` INT NOT NULL,
    PRIMARY KEY(`idAlbum`),
    FOREIGN KEY (`fkIdStyle`) REFERENCES `style`(`idStyle`)
)ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

CREATE TABLE `test`.`album_artist`(
    `fkIdAlbum` INT NOT NULL,
    `fkIdArtist` INT NOT NULL,
    FOREIGN KEY (`fkIdAlbum`) REFERENCES `album`(`idAlbum`),
    FOREIGN KEY (`fkIdArtist`) REFERENCES `artist`(`idArtist`)
)ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

INSERT INTO `test`.`style`(title) VALUES ('Rock'), ('Electro'), ('Pop');
INSERT INTO `test`.`artist`(name, birthday) VALUES ('John Lennon', '10/10/1940'), ('Moby', '10/09/1965'), ('Michael Jackson', '29/08/1958');
INSERT INTO `test`.`album`(title, releaseDate, fkIdStyle) VALUES ('Imagine', '09/09/1970', 1), ('Play', '05/04/1998', 2), ('Thriller', '30/11/1982', 3);
INSERT INTO `test`.`album_artist`(fkIdAlbum, fkIdArtist) VALUES (1,1), (2,2), (3,3);
