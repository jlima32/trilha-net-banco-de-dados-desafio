-- 1 
SELECT Nome, Ano FROM filmes

-- 2
SELECT Nome, Ano FROM filmes ORDER BY Ano ASC

-- 3
SELECT Nome, Ano, Duracao FROM filmes WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT * FROM Filmes WHERE Ano = 1997

-- 5
SELECT * FROM Filmes WHERE Ano > 2000

-- 6 
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

-- 7
SELECT Ano, COUNT(ano) AS Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores WHERE Genero = 'M'

-- 9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT * FROM FilmesGenero

-- 10
SELECT Nome,Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.id = FilmesGenero.IdGenero

-- 11
SELECT Nome,Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.id = FilmesGenero.IdGenero WHERE Genero = 'Mistério'


-- 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.id = ElencoFilme.IdFilme INNER JOIN Atores ON Atores.id = ElencoFilme.IdAtor
