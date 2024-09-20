CREATE TABLE Usuarios (
    ID int PRIMARY KEY,
    Name varchar(255),
    Password varchar(255),
    TeamRole varchar(100)
);

CREATE TABLE Project (
    ID int PRIMARY KEY,
    Name varchar(255),
    Members varchar(1000), -- 1,2,3,4,5,6
    Status varchar(50),
    StartDate date,
    EndDate date
);

CREATE TABLE Task (
    ID int PRIMARY KEY,
    Description varchar(255),
    Status varchar(50),
    AssignedTo int, -- Foreign key de la tabla Usuarios
    EstimatedTime float,
    ActualTime float,
    CompletionDate date,
    QualityScore int,
    TaskEfficiency float,
    TaskProductivity float,
    FOREIGN KEY (AssignedTo) REFERENCES Usuarios(ID)
);

CREATE TABLE Alertas (
    ID int PRIMARY KEY,
    Triggered boolean,
    AlertType varchar(100)
);

CREATE TABLE PeerReview (
    ID int PRIMARY KEY,
    Name varchar(255),
    Reviewer int, -- Foreign key de la tabla Usuarios
    Comments varchar(1000),
    Votes int,
    Status varchar(50),
    FOREIGN KEY (Reviewer) REFERENCES Usuarios(ID)
);

CREATE TABLE Comment (
    ID int PRIMARY KEY,
    Member varchar(255),
    Comments varchar(1000),
    Status varchar(50)
);
