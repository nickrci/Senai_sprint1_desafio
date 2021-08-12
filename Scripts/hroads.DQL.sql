USE SENAI_HROADS_MANHA_20;
GO

SELECT * FROM TipoHabilidade;
GO

SELECT * FROM Habilidade;
GO

SELECT * FROM ClassHab;
GO


SELECT * FROM Personagem;
GO

SELECT * FROM Classe;
GO

SELECT NomeClasse 'Nome classes' FROM Classe;
GO

SELECT NomeHab Habilidades FROM Habilidade;
GO

SELECT COUNT(NomeHab) FROM Habilidade;
GO

SELECT IdClasse 'Id da classe' FROM Classe
ORDER BY IdClasse asc;
GO

SELECT * FROM TipoHabilidade;
GO

SELECT NomeHab Habilidade, NomeTipoHab 'Tipo Da Habilidade' FROM Habilidade
LEFT JOIN TipoHabilidade
ON TipoHabilidade.IdTipoHab = Habilidade.IdTipoHab;
GO

SELECT IdPersonagem 'Id do personagem', Nome 'Nome do personagem', NomeClasse 'Nome da Classe', MVida 'Capacidade de vida', MMana 'Capacidade de mana'
FROM Personagem
LEFT JOIN Classe
ON Classe.IdClasse = Personagem.IdClasse;
GO

SELECT Nome Personagens, NomeClasse Classes FROM Personagem
FULL OUTER JOIN Classe
ON Personagem.IdClasse = Classe.IdClasse;
GO


SELECT NomeClasse [Nome da classe], NomeHab 'Nome da habilidade'
FROM ClassHab
LEFT JOIN Classe 
ON ClassHab.IdClasse = Classe.IdClasse
LEFT JOIN Habilidade
on ClassHab.IdHabilidade = Habilidade.IdHabilidade;
GO

SELECT NomeClasse, NomeHab From ClassHab
INNER JOIN Classe
ON Classe.IdClasse = ClassHab.IdClasse
INNER JOIN Habilidade
ON Habilidade.IdHabilidade = ClassHab.IdHabilidade;
GO

SELECT NomeHab 'Nome da habilidade', NomeClasse 'Nome da classe'
FROM ClassHab
FULL OUTER JOIN Habilidade
on ClassHab.IdHabilidade = Habilidade.IdHabilidade
FULL OUTER JOIN Classe 
ON classHab.idClasse = classe.idClasse;
GO