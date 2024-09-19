CREATE TABLE Task (
    ID int PRIMARY KEY,
    Description varchar(255),
    Status varchar(50),
    AssignedTo varchar(50),
    EstimatedTime float,
    ActualTime float,
    CompletionDate date,
    QualityScore int,
    TaskEfficiency float,
    TaskProductivity float
);

INSERT INTO Task (ID, Description, Status, AssignedTo, EstimatedTime, ActualTime, CompletionDate, QualityScore, TaskEfficiency, TaskProductivity)
VALUES (1, 'Task description 1', 'Open', 'Baruc Ramírez A01571215', 3.0, 2.5, '2024-09-30', 85, 0.83, 1.2),
       (2, 'Task description 2', 'Completed', 'Baruc Ramírez A01571215', 2.0, 1.8, '2024-09-20', 90, 0.90, 1.1),
       (3, 'Task description 3', 'Open', 'Pablo Sepulveda A01177267', 4.0, 3.5, '2024-10-05', 88, 0.87, 1.3),
       (4, 'Task description 4', 'Completed', 'Pablo Sepulveda A01177267', 1.5, 1.5, '2024-09-15', 92, 1.0, 1.0),
       (5, 'Task description 5', 'Open', 'Gael Patricio Gaytan Botello A00835334', 3.5, 3.0, '2024-10-10', 85, 0.85, 1.17),
       (6, 'Task description 6', 'Completed', 'Gael Patricio Gaytan Botello A00835334', 2.0, 2.0, '2024-09-25', 95, 1.0, 1.2),
       (7, 'Task description 7', 'Open', 'Jorge Carlos Mata Pacheco A00829704', 3.0, 2.8, '2024-10-15', 80, 0.93, 1.10),
       (8, 'Task description 8', 'Completed', 'Jorge Carlos Mata Pacheco A00829704', 2.5, 2.1, '2024-09-22', 89, 0.84, 1.05),
       (9, 'Task description 9', 'Open', 'Luis Fernando Cabral Fong A01236051', 3.2, 3.0, '2024-11-01', 90, 0.94, 1.15),
       (10, 'Task description 10', 'Completed', 'Luis Fernando Cabral Fong A01236051', 1.8, 1.5, '2024-09-18', 93, 0.83, 1.2);
