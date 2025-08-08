--Questão 1
SELECT Nome, Ano FROM Filmes

--Questão 2
SELECT 
  Nome,
  Ano
FROM
  Filmes
ORDER BY
  Ano ASC;


--Questão 3
SELECT
  Nome,
  Ano,
  Duracao
FROM
  Filmes
WHERE
  Nome = 'De Volta para o Futuro';

--Questão 4
SELECT
  *
FROM
  Filmes
WHERE
  Ano = 1997;

--Questão 5
SELECT
  *
FROM
  Filmes
WHERE
  Ano > 2000;

--Questão 6
SELECT
  *
FROM
  Filmes
WHERE
  Duracao > 100
  AND Duracao < 150
ORDER BY
  Duracao ASC;

--Questão 7
SELECT
  Ano,
  COUNT(*) AS Quantidade
FROM
  Filmes
GROUP BY
  Ano
ORDER BY
  COUNT(*) DESC;

--Questão 8
SELECT
  PrimeiroNome,
  UltimoNome
FROM
  Atores
WHERE
  Genero = 'M';

--Questão 9
SELECT
  PrimeiroNome,
  UltimoNome
FROM
  Atores
WHERE
  Genero = 'F'
ORDER BY
  PrimeiroNome;

--Questão 10
SELECT
  T1.Nome,
  T3.Genero
FROM
  Filmes AS T1
  INNER JOIN FilmesGenero AS T2 ON T1.Id = T2.IdFilme
  INNER JOIN Generos AS T3 ON T2.IdGenero = T3.Id;

--Questão 11
SELECT
  T1.Nome,
  T3.Genero
FROM
  Filmes AS T1
  INNER JOIN FilmesGenero AS T2 ON T1.Id = T2.IdFilme
  INNER JOIN Generos AS T3 ON T2.IdGenero = T3.Id
WHERE
  T3.Genero = 'Mistério';

--Questão 12
SELECT
  T1.Nome,
  T3.PrimeiroNome,
  T3.UltimoNome,
  T2.Papel
FROM
  Filmes AS T1
  INNER JOIN ElencoFilme AS T2 ON T1.Id = T2.IdFilme
  INNER JOIN Atores AS T3 ON T2.IdAtor = T3.Id;