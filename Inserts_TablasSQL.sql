-- Inserts para Usuarios
INSERT INTO Usuarios (ID, Name, Password, TeamRole) VALUES
(1, 'Juan Perez', 'password123', 'Developer'),
(2, 'Maria Lopez', 'password123', 'Project Manager');

-- Inserts para Project
INSERT INTO Project (ID, Name, Members, Status, StartDate, EndDate) VALUES
(1, 'Proyecto Alpha', '1,2', 'Active', '2024-01-01', '2024-12-31');

-- Inserts para Task
INSERT INTO Task (ID, Description, Status, AssignedTo, EstimatedTime, ActualTime, CompletionDate, QualityScore, TaskEfficiency, TaskProductivity) VALUES
(1, 'Desarrollo de módulo de login', 'Open', 1, 20.0, 0.0, NULL, NULL, NULL, NULL),
(2, 'Planificación del proyecto', 'Completed', 2, 30.0, 25.0, '2024-03-01', 90, 0.83, 1.0);

-- Inserts para Alertas
INSERT INTO Alertas (ID, Triggered, AlertType) VALUES
(1, true, 'Project Delay'),
(2, false, 'Resource Allocation');

-- Inserts para Peer Review
INSERT INTO PeerReview (ID, Name, Reviewer, Comments, Votes, Status) VALUES
(1, 'Revision Semanal', 2, 'Necesita mejorar la documentación.', 5, 'Pending');

-- Inserts para Comment
INSERT INTO Comment (ID, Member, Comments, Status) VALUES
(1, 'Juan Perez', 'Se completó la tarea antes de lo esperado.', 'Active');
