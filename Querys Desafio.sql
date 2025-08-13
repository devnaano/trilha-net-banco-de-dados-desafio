-- DESAFIO 01
SELECT Nome,Ano FROM Filmes;
-- DESAFIO 02
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC;
-- DESAFIO 03
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';
-- DESAFIO 04
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;
-- DESAFIO 05
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;
-- DESAFIO 06
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;
-- DESAFIO 07
SELECT Ano, COUNT(Ano) As 'Quantidade' FROM Filmes GROUP BY Ano ORDER BY Count(Duracao) DESC; 
-- DESAFIO 08
SELECT * FROM Atores WHERE Genero = 'M';
-- DESAFIO 09
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;
-- DESAFIO 10
SELECT Filmes.Nome AS 'Nome', Generos.Genero AS 'Genero' FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;
-- DESAFIO 11
SELECT Filmes.Nome AS 'Nome', Generos.Genero AS 'Genero' FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';
-- DESAFIO 12
SELECT Filmes.Nome AS 'Nome', Atores.PrimeiroNome AS 'PrimeiroNome', Atores.UltimoNome AS 'UltimoNome', ElencoFilme.Papel AS 'Papel' FROM ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;