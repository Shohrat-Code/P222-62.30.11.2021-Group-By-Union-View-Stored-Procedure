--SELECT City, [Address] FROM Movie
--UNION
--SELECT City, [Address] FROM Employee

--SELECT City, COUNT(Id) 'Count of Employee' FROM Employee
--WHERE City Like 'B%'
--GROUP BY City 
--ORDER BY 'Count of Employee' DESC

--CREATE VIEW MovieDetails AS
--SELECT m.Name Movie, g.Name Genre, m.City, m.Address, m.Date, m.Id MovieId, g.Id GenreId FROM GenreToMovie gm
--INNER JOIN Movie m ON gm.MovieId=m.Id
--INNER JOIN Genre g ON gm.GenreId=g.Id

--SELECT * FROM MovieDetails
--WHERE City IN('Baku', 'Ujar')
--ORDER BY City


--CREATE VIEW TEST AS
--SELECT [Name] FROM Genre

--DROP VIEW TEST

--CREATE PROCEDURE sp_MovieInfo AS
--SELECT m.Name Movie, g.Name Genre, m.City, m.Address, m.Date, m.Id MovieId, g.Id GenreId FROM GenreToMovie gm
--INNER JOIN Movie m ON gm.MovieId=m.Id
--INNER JOIN Genre g ON gm.GenreId=g.Id
--WHERE City IN('Baku', 'Ujar')

--CREATE PROCEDURE sp_MovieInfoWithParameter @City1 nvarchar(30), @City2 nvarchar(30) 
--AS
--SELECT m.Name Movie, g.Name Genre, m.City, m.Address, m.Date, m.Id MovieId, g.Id GenreId FROM GenreToMovie gm
--INNER JOIN Movie m ON gm.MovieId=m.Id
--INNER JOIN Genre g ON gm.GenreId=g.Id
--WHERE City IN(@City1, @City2)

--ALTER PROCEDURE sp_MovieInfoWithParameter @City1 nvarchar(30) 
--AS
--SELECT m.Name Movie, g.Name Genre, m.City, m.Address, m.Date, m.Id MovieId, g.Id GenreId FROM GenreToMovie gm
--INNER JOIN Movie m ON gm.MovieId=m.Id
--INNER JOIN Genre g ON gm.GenreId=g.Id
--WHERE City = @City1

--sp_MovieInfo

--sp_MovieInfoWithParameter @City1 = 'Baku', @City2 ='Ujar'
--sp_MovieInfoWithParameter @City1 = 'Baku'

--DROP PROCEDURE sp_MovieInfo
