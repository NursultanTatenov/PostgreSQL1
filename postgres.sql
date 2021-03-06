CREATE TABLE students
(
    id                SERIAL PRIMARY KEY,
    first_name        VARCHAR(50) NOT NULL,
    last_name         VARCHAR(50),
    faculty           VARCHAR(50) Not NULL,
    year_of_admission NUMERIC,
    gpa FLOAT
);

-- DROP TABLE students;

INSERT INTO students(first_name, last_name, faculty, year_of_admission, gpa)
VALUES ('Askar','Akaev','Physics',1969,4.95),
       ('Kurmanbek','Bakiev','Electromechanical',1975,4.67),
       ('Almaz','Atambaev','Economic',1980,4.45),
       ('Sooronbai','Jeenbekov','Veterenary',1985,4.35),
       ('Sadyr','Japarov','Physical cultare',1995, 5.0);



CREATE TABLE employees
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) Not NULL,
    position VARCHAR(50) UNIQUE Not NULL,
    salary NUMERIC
);

INSERT INTO employees(name, department, position, salary)
VALUES ('Leonardo','SPA','CEO',20000),
       ('Rafael','FGTDPA','DFF',15000),
       ('Donatello','SBS','YSS',10000),
       ('Michelangelo','EETRA','OD',24000);


CREATE TABLE movies
(
    name VARCHAR(50) NOT NULL,
    director VARCHAR(30),
    film_genres VARCHAR(30),
    country VARCHAR(20),
    year NUMERIC,
    type VARCHAR(20)
);
-- DROP TABLE movies;
INSERT INTO movies(name, director, film_genres, country, year, type)
VALUES ('Interstellar', 'Christopher Nolan','fantastic','USA',2014,'film'),
       ('Dinkirk', 'Christopher Nolan','biography','UK',2017,'film'),
       ('Batman', 'Christopher Nolan','fantastic','USA',2005,'film'),
       ('Inception', 'Christopher Nolan','fantastic','USA',2010,'film');


CREATE TABLE actors(
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50),
        birth_year NUMERIC(4),
        born_country VARCHAR,
        movies VARCHAR(50) Not NULL
);
INSERT INTO actors(first_name, last_name, birth_year, born_country, movies)
VALUES ('Leonardo','Dicaprio',1974,'USA','Inception'),
       ('Matthew','McConaughey',1969,'USA','Interstellar'),
       ('Christian','Bale',1974,'UK','Batman'),
       ('Thomas','Hardy',1977,'UK','Dunkirk');

CREATE TABLE directors(
      first_name VARCHAR(50) NOT NULL,
      ast_name VARCHAR(50),
      born_year NUMERIC(4),
      born_country VARCHAR,
      movies VARCHAR(50) Not NULL
);

INSERT INTO directors(first_name, last_name, born_year, born_country, movies)
VALUES ('Christopher','Nolan',1970,'UK','Inception'),
       ('Martin','Scorsese',1942,'USA','The Wolf of Wall Street'),
       ('George','Miller',1945,'Australia','Mad Max'),
       ('James','Cameron',1954,'Canada','Titanic');

CREATE TABLE region_our_country
(
    id          SERIAL PRIMARY KEY,
    name_region VARCHAR NOT NULL,
    area        NUMERIC,
    population  NUMERIC,
    type VARCHAR NOT NULL
);

INSERT INTO region_our_country(name_region, area, population, type)
VALUES ('Bishkek', 160 , 1088900, 'city'),
       ('Osh', 185 , 273900, 'city'),
       ('Batken',17000  , 465200, 'region'),
       ('Jalal-Abad', 33700 , 1236800, 'region'),
       ('Naryn', 45200 , 271400, 'region'),
       ('Osh', 29200 , 1209400, 'region'),
       ('Talas', 11400 , 251800, 'region'),
       ('Chuy', 20200 , 818000, 'region'),
       ('Yssyk-Kol', 43100 , 469700, 'region');

CREATE TABLE transport(
    id SERIAL,
    manufacturer VARCHAR(50) Not NULL,
    name VARCHAR,
    product_count  INTEGER DEFAULT 0,
    year NUMERIC,
    motor_volume FLOAT,
    color VARCHAR,
    price NUMERIC
);
INSERT INTO transport(manufacturer, name, year, motor_volume, color, price)
VALUES ('Toyota','LC Prado',2018,4.7,'Silver',78000),
       ('Mersedes-Benz','S 500',2011,5.0,'Silver',43000),
       ('Toyota','Sienna',2020,3.5,'Gold',24000),
       ('Honda','Stream',2018,2.2,'Black',18000);


CREATE TABLE gun(
       brand VARCHAR,
       weight DOUBLE PRECISION NOT NULL,
       barrel_length INT,
       store_capacity INT,
       caliber DOUBLE PRECISION NOT NULL
);
INSERT INTO gun(brand, weight, barrel_length, store_capacity, caliber)
values ('Mr-155',3.2,710, 5, 12.76),
       ('Karabin SKS',3.7, 520, 12, 7.62),
       ('Saiga 12k', 3.8, 430, 35, 12.76),
       ('Kalash', 3.8, 415, 45, 7.62),
       ('Vintovka', 2.8, 710, 1, 4.5);

CREATE TABLE boxers(
       full_name VARCHAR,
       nickname VARCHAR,
       date_of_birth VARCHAR,
       place_of_birth VARCHAR,
       weight_category INT NOT NULL,
       rack VARCHAR,
       growth INT NOT NULL
);
INSERT INTO boxers(full_name, nickname, date_of_birth, place_of_birth, weight_category, rack, growth)
values ('?????????? ?????????????? ????????????','????????????????','30 ???????? 1966','????????????????????, ??????????????, ??????-????????, ??????',90,'??????????????????????????',178),
       ('Muhammed Ali','????????????????????','17 ???????????? 1942','????????????????, ????????????????, ??????',91,'??????????????????????????',191),
       ('?????????? ????????????','??????????????','8 ?????????????? 1998','????????????????????, ????????????????????, ??????',59,'??????????????????????????',178),
       ('?????????? ???????? ??????????????','??????????????????','24 ?????????????? 1977','??????????-????????????, ??????????????, ??????',61,'??????????????????????????',173),
       ('?????? ?????????????? ??????????','??????????????','16 ???????????? 1969','??????????????????, ??????????????, ??????',90,'??????????????????????????',180);

CREATE TABLE footballers(
        full_name VARCHAR,
        Nationality VARCHAR,
        club VARCHAR,
        category_amplua VARCHAR NOT NULL,
        working_leg VARCHAR
);

INSERT INTO footballers(full_name, Nationality, club, category_amplua, working_leg)
VALUES ('Leo Messi','Argentina','PSG','????????????????????','Left'),
       ('Sadio Manne','Sinegal','Liverpool','????????????????','Right'),
       ('Cristiano Ronaldo','Portugal','Manchester Uninted','????????????????????','Right'),
       ('Mohammad Salah','Egypt','Liverpool','????????????????????','Left');


CREATE TABLE planes(
       model VARCHAR NOT NULL,
       manufacturer_country VARCHAR(50) Not NULL,
       width INTEGER NOT NULL,
       weight INTEGER,
       length INTEGER,
       fly_height INTEGER
);

INSERT INTO planes(model, manufacturer_country, width, weight, length, fly_height)
VALUES ('Airbus A320','France',37,77000,34,12000),
       ('Boing 677','USA',34,37000,32,15000),
       ('An 322','Russia',45,67000,35,10000),
       ('Yak 40','USSR',21,14000,22,5000);

CREATE TABLE helicopters(
       model VARCHAR NOT NULL,
       manufacturer_country VARCHAR(50) Not NULL,
       width INTEGER NOT NULL,
       weight INTEGER,
       length INTEGER,
       fly_height INTEGER
);

INSERT INTO helicopters (model, manufacturer_country, width, weight, length, fly_height)
VALUES ('Appache An-64','USA',24,77,34,4000),
       ('KA-52','UK',34,45,32,3455),
       ('Mi 28','Russia',45,45,35,2300),
       ('Tiger ','Germany',21,64,22,5000);

CREATE TABLE human_in_family(
       id SERIAL PRIMARY KEY,
       first_name VARCHAR,
       age INT,
       weight INT,
       height INT
);
INSERT INTO human_in_family(first_name, age, weight, height)
VALUES ('Nurs',31,101,174),
       ('Erkish',26,60,167),
       ('Sara',3,15,96),
       ('Dana',1,12,83);


CREATE TABLE teachers(
                         name_of_teacher VARCHAR,
                         education       VARCHAR,
                         habitation      VARCHAR,
                         salary          NUMERIC,
                         subject     VARCHAR
);
INSERT INTO teachers(name_of_teacher, education, habitation, salary, subject)
VALUES ('Aigul Maratbekovna','Manas','Jal',20000,'Kyrgyz languages'),
       ('Galina Victorovna','Politech','Politeh',150000,'Russian language'),
       ('Zulaika Cholponovna','KGMA','Ulan-2',18000,'Biology');


CREATE TABLE jobs(
       company_name VARCHAR NOT NULL,
       work_time VARCHAR,
       salary INT,
       address VARCHAR,
       job_title VARCHAR
);

INSERT INTO jobs(company_name, work_time, salary, address, job_title)
VALUES ('Airport Manas','7:00-16:00',45000,'airport Manas','Security'),
       ('Kyrgyz Government','8:00-17:00',13000,'Chui 123','Expert'),
       ('Manas University','9:00-18:00',23000,'Jal','Teacher'),
       ('Hospital National','19:00-7:00',55000,'Manas 23','Doctor');






