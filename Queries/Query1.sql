USE Netflix;

SELECT Customer1.FirstName, Movie.Title, Movie.Genre FROM Streaming 
INNER JOIN Customer1 ON Streaming.CustomerID = Customer1.CustomerID 
INNER JOIN Movie ON Movie.MovieID = Streaming.MovieID AND customer1.FirstName = 'Scotty';