-- Creación de la tabla Usuarios
CREATE TABLE Usuarios (
    ID int PRIMARY KEY,
    Name varchar2(255),
    Password varchar2(255),
    Team_Role varchar2(255)
);

-- Creación de la tabla Proyectos
CREATE TABLE Project (
    ID int PRIMARY KEY,
    Name varchar2(255),
    Status varchar2(255),
    Start_Date DATE,
    End_Date DATE
);

-- Creación de la tabla Alertas
CREATE TABLE Alertas (
    ID int PRIMARY KEY,
    Triggered boolean,
    AlertType varchar2(255)
);

-- Creación de la tabla Tareas
CREATE TABLE Task (
    ID int PRIMARY KEY,
    Description varchar2(1000),
    Status varchar2(255),
    EstimatedTime float,
    ActualTime float,
    CompletionDate DATE,
    QualityScore int,
    TaskEfficiency float,
    TaskProductivity float,
    AssignedTo int,
    FOREIGN KEY (AssignedTo) REFERENCES Usuarios(ID)
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
