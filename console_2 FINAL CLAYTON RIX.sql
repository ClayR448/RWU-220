CREATE DATABASE moviecompany;
USE moviecompany;

CREATE TABLE Movies (
    id int primary key,
    title varchar(20) null,
    release_year tinyint(20) null,
    genre varchar(20) null,
    director_id int null,
    foreign key (director_id) references Directors (id)
);

CREATE TABLE Directors (
    id int primary key,
    first_name varchar (20) null,
    last_name varchar (20) null,
    Movies_id int null,
    foreign key(Movies_id) references Movies (id)
);

CREATE TABLE Actors (
    id int auto_increment unique primary key,
    first_name varchar (20) null,
    last_name varchar (20) null
);

CREATE TABLE movies_actors_association (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    Actors_id int NOT NULL,
    Movies_id int NOT NULL,
    Primary key(id)
);

INSERT INTO Movies (title, release_year, genre) VALUES ('El Camino', 2018, 'Thriller');
INSERT INTO Movies (title, release_year, genre) VALUES ('Bridge of spies',2015,'Thriller');

INSERT INTO Directors (first_name, last_name) VALUES ('Vince', 'Gilligan');
INSERT INTO Directors (first_name, last_name) VALUES ('Steven', 'Spielberg');

INSERT INTO Actors (first_name, last_name) VALUES ('Aaron', 'Paul');
INSERT INTO Actors (first_name, last_name) VALUES ('Tom', 'Hanks');
