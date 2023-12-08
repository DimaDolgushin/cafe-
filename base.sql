CREATE TABLE post(
    id INTEGER NOT NULL PRIMARY KEY,
    name_post VARCHAR(100)  NOT NULL
);

CREATE TABLE users(
    id INTEGER NOT NULL PRIMARY KEY,
    login VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
);

CREATE TABLE Personnel(
    id INTEGER NOT NULL PRIMARY KEY,
    surname VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    patronymic VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth VARCHAR(100) NOT NULL,
    FOREIGN KEY(Post_id) REFERENCES post(id)
;)

CREATE TABLE Cafe(
    id INTEGER NOT NULL PRIMARY KEY,
    Name_cafe VARCHAR(100) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Phone VARCHAR(100) NOT NULL,
);

CREATE TABLE Menu(
    id INTEGER NOT NULL PRIMARY KEY,
    Name_menu VARCHAR(100) NOT NULL,
);

CREATE TABLE Orders(
    id INTEGER NOT NULL PRIMARY KEY,
    Date VARCHAR(100) NOT NULL,
    Time VARCHAR(100) NOT NULL,
    Status VARCHAR(100) NOT NULL,
);

CREATE TABLE Dishes(
    id INTEGER NOT NULL PRIMARY KEY,
    Name_dish VARCHAR(100) NOT NULL,
    Description VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY(Menu_id) REFERENCES Menu(id)
                  ON DELETE CASCADE ON UPDATE NO ACTION,
);

CREATE TABLE Tables(
    id INTEGER NOT NULL PRIMARY KEY,
    Number INTEGER NOT NULL,
    Seats INTEGER NOT NULL,
);

INSERT INTO users(login, password)
VALUES ('login','password'),('login1','password1');

INSERT INTO post(Name_post)
VALUES ('Name_post'),('Name_post1');

INSERT INTO Personnel(Name, Surname, patronymic,date_of_birth,)
VALUES ('Name1','Surname1',',patronymic1','date_of_birth1');

INSERT INTO Cafe(Name_cafe, Address, Phone)
VALUES ('Name_cafe1','Address1','Phone1');

INSERT INTO Menu(Name_menu)
VALUES ('Name_menu1');

INSERT INTO Orders(Date, Time, Status)
VALUES ('Date1','Time1','Status1');

INSERT INTO Dishes(Name_dish, Description, Price)
VALUES ('Name_dish1', 'Description1', 10.00);

INSERT INTO Tables(Number, Seats)
VALUES (1, 4);
