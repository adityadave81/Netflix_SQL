USE Netflix;

SELECT Customer1.FirstName, Movie.Title, Movie.Genre FROM Streaming 
INNER JOIN Customer1 ON Streaming.CustomerID = Customer1.CustomerID 
INNER JOIN Movie ON Movie.MovieID = Streaming.MovieID AND Customer1.FirstName = 'Scotty' AND Streaming.StreamDate BETWEEN '2018-09-27' AND '2019-03-29';