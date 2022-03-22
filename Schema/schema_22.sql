CREATE TABLE Coaches (
    Coach_id int   NOT NULL,
    FirstName VARCHAR(30)   NOT NULL,
    LastName VARCHAR(30)   NOT NULL,
    Mascot VARCHAR(30)   NOT NULL,
    last_updated TIMESTAMP   default localtimestamp,
    CONSTRAINT pk_Coaches PRIMARY KEY (
        Coach_id
     )
);
CREATE TABLE Player (
    Player_id int   NOT NULL,
    Team_id int   NULL,
    Player VARCHAR(30)   NOT NULL,
    FirstName VARCHAR(30)   NOT NULL,
    LastName VARCHAR(30)   NOT NULL,
    PPG float   NOT NULL,
    APG float   NOT NULL,
    RPG float   NOT NULL,
    SPG float   NOT NULL,
    three_point float   NOT NULL,
    last_updated TIMESTAMP   default localtimestamp,
    CONSTRAINT pk_Player PRIMARY KEY (
        Player_id
     )
);
CREATE TABLE Team (
    Team_id int   NOT NULL,
    Team VARCHAR(30)   NOT NULL,
    Abrev VARCHAR(30)   NOT NULL,
    FG float   NOT NULL,
    three_PM float   NOT NULL,
    FT float   NOT NULL,
    PPG float   NOT NULL,
    Coach_id int   NULL,
    last_updated TIMESTAMP   default localtimestamp,
    CONSTRAINT pk_Team PRIMARY KEY (
        Team_id
     )
);
CREATE TABLE TVSchedule (
    Schedule_id int   NOT NULL,
    Round VARCHAR(30)   NOT NULL,
    Dates VARCHAR(30)   NOT NULL,
    Team_id_1 int   NOT NULL,
    Team_id_2 int   NOT NULL,
    Time_ET time   NOT NULL,
    TV_Network VARCHAR(30)   NOT NULL,
    City VARCHAR(30)   NOT NULL,
    Venue VARCHAR(30)   NULL,
    last_updated TIMESTAMP   default localtimestamp,
    CONSTRAINT pk_TVSchedule PRIMARY KEY (
       Schedule_id
     )
);
ALTER TABLE Player ADD CONSTRAINT fk_Player_Team_id FOREIGN KEY(Team_id)
REFERENCES Team (Team_id);
ALTER TABLE Team ADD CONSTRAINT fk_Team_Coach_id FOREIGN KEY(Coach_id)
REFERENCES Coaches (Coach_id);
ALTER TABLE TVSchedule ADD CONSTRAINT fk_TVSchedule_Team_id_1 FOREIGN KEY(Team_id_1)
REFERENCES Team (Team_id);
ALTER TABLE TVSchedule ADD CONSTRAINT fk_TVSchedule_Team_id_2 FOREIGN KEY(Team_id_2)
REFERENCES Team (Team_id);