INSERT INTO Status VALUES('Pendiente');
INSERT INTO Status VALUES('En proceso');
INSERT INTO Status VALUES('Cancelado');
INSERT INTO Status VALUES('Finalizado');
INSERT INTO Status VALUES('En pausa');

INSERT INTO Company VALUES('IMC', '5151 W 29th St #2201 Greeley, Colorado(CO), 80634');
INSERT INTO Company VALUES('Atoz', ' 2007 Ardmore Hwy Ardmore Tennessee(TN), 38449');
INSERT INTO Company VALUES('Disnei', '4226 Highgate Dr Horn Lake, Mississippi(MS), 38637');

INSERT INTO Employees VALUES('Juan', 'Perez', 'juan@jmail.com', '9991808182', 95000, 1);
INSERT INTO Employees VALUES('Paco', 'Ochoa', 'paco@jmail.com', '9991808183', 8000, 2);
INSERT INTO Employees VALUES('Pedro', 'Fernandez', 'pedro@jmail.com', '9991808184', 12500, 3);
INSERT INTO Employees VALUES('Sofi', 'Hernandez', 'sofi@jmail.com', '9991808185', 11000, 3);
INSERT INTO Employees VALUES('Isabella', 'Smith', 'isabella@jmail.com', '9991808186', 9000, 2);
INSERT INTO Employees VALUES('Eduardo', 'Jimenez', 'eduardo@jmail.com', '9991808187', 11000, 1);
INSERT INTO Employees VALUES('Jose', 'Pavon', 'jose@jmail.com', '9991808188', 12000, 2);
INSERT INTO Employees VALUES('Pancho', 'Fernandez', 'pancho@jmail.com', '9991808189', 12500, 3);
INSERT INTO Employees VALUES('Francisco', 'Fernandez', 'francisco@jmail.com', '9991808190', 25000, 2);
INSERT INTO Employees VALUES('Diego', 'Olivarez', 'diego@jmail.com', '9991808191', 9000, 1);

INSERT INTO Projects (Name, StartDate, DeadLine, StatusId)
VALUES('Dainler Learning', '02/07/1995', '02/22/2050', 2);

INSERT INTO Projects (Name, StartDate, DeadLine, StatusId)
VALUES('Provident Software', '9/15/2022', '2/28/2023', 1);

INSERT INTO Projects (Name, StartDate, DeadLine, StatusId)
VALUES('DataAnalysis', '10/31/2023', '10/05/2023', 1);

INSERT INTO Projects (Name)
VALUES('SoftCentral');

INSERT INTO Projects
VALUES('Migration', '05/02/2021', '07/25/2022', '01/01/2022', 4);

INSERT INTO Projects (Name, StartDate, DeadLine, StatusId)
VALUES('Atoz Insight', '12/30/2022', '10/01/2024', 3);

INSERT INTO Projects_Employees VALUES (1, 1);
INSERT INTO Projects_Employees VALUES (6, 2);
INSERT INTO Projects_Employees VALUES (4, 3);
INSERT INTO Projects_Employees VALUES (5, 4);
INSERT INTO Projects_Employees VALUES (3, 5);
INSERT INTO Projects_Employees VALUES (2, 6);
INSERT INTO Projects_Employees VALUES (6, 7);
INSERT INTO Projects_Employees VALUES (4, 8);
INSERT INTO Projects_Employees VALUES (3, 9);
INSERT INTO Projects_Employees VALUES (1, 10);

INSERT INTO Projects_Employees VALUES (5, 8);
INSERT INTO Projects_Employees VALUES (6, 5);
INSERT INTO Projects_Employees VALUES (1, 6);







