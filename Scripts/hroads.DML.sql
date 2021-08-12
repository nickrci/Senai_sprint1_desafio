USE SENAI_HROADS_MANHA_20;
GO

INSERT INTO TipoHabilidade
VALUES ('Ataque'), ('Defesa'), ('Cura'), ('Magia');
GO


INSERT INTO Habilidade
VALUES (1, 'Lan�a mortal'), (2, 'Escudo Supremo'), (3, 'Recuperar Vida')
GO


INSERT INTO Classe
VALUES ('B�rbaro'),('Cruzado'),('Ca�adora de Dem�nios'),('Monge'),('Necromante'),('Feiticeiro'),('Arcanista');
GO



INSERT INTO ClassHab
VALUES (1,1),(1,2),(2,2),(3,1),(4,3),(4,2),(5, NULL),(6,3),(7,NULL);
GO




INSERT INTO Personagem
VALUES (1, 'DeuBug', 100, 80, GETDATE(), '2019-01-18'), (4, 'BitBug', 70, 100, GETDATE(), '2016-03-17'), (7, 'Fer8', 75,60, GETDATE(), '2018-03-18');
GO



UPDATE Personagem
SET Nome = 'Fer7'
WHERE IdPersonagem = 3
Go

UPDATE Classe
SET NomeClasse = 'Necromancer'
WHERE IdClasse = 5
Go
