-- Creación de la tabla Usuarios
CREATE TABLE Users (
    ID INT PRIMARY KEY,
    Name VARCHAR2(255),
    Password VARCHAR2(255),
    Team_Role VARCHAR2(100)
);

-- Creación de la tabla Proyectos
CREATE TABLE Project (
    ID INT PRIMARY KEY,
    Name VARCHAR2(255),
    Status VARCHAR2(50),
    Start_Date DATE,
    End_Date DATE
);

-- Creacion de la Tabla ProjectsAssigned
CREATE TABLE ProjectsAssigned (
    ProjectID INT,
    UserID INT,
    PRIMARY KEY (ProjectID, UserID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ID),
    FOREIGN KEY (UserID) REFERENCES Users(ID)
);

-- Creación de la tabla Tareas
CREATE TABLE Task (
    ID INT PRIMARY KEY,
    Sprint INT,
    Description VARCHAR2(1000),
    Status VARCHAR2(255),
    EstimatedTime FLOAT,
    ActualTime FLOAT,
    CompletionDate DATE,
    QualityScore INT,
    TaskEfficiency FLOAT,
    TaskProductivity FLOAT,
    AssignedTo INT,
    ProjectID INT,
    FOREIGN KEY (AssignedTo) REFERENCES Users(ID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ID)
);

-- Creación de la tabla Alertas
CREATE TABLE Alertas (
    ID int PRIMARY KEY,
    Triggered boolean,
    AlertType varchar2(255)
);

-- Relación entre Proyectos y Usuarios
ALTER TABLE Project ADD (Members int);
ALTER TABLE Project ADD FOREIGN KEY (Members) REFERENCES Usuarios(ID);

-- Relación entre Proyectos y Tareas
ALTER TABLE Task ADD (ProjectID int);
ALTER TABLE Task ADD FOREIGN KEY (ProjectID) REFERENCES Project(ID);

-- Relación entre Proyectos y Alertas
ALTER TABLE Alertas ADD (ProjectID int);
ALTER TABLE Alertas ADD FOREIGN KEY (ProjectID) REFERENCES Project(ID);
