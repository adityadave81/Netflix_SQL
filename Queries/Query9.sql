USE Netflix;

SELECT Customer1.CustomerID, Customer1.FirstName, Customer1.LastName FROM Streaming
INNER JOIN Customer1 ON Streaming.CustomerID = Customer1.CustomerID 
INNER JOIN Movie ON Movie.MovieID = Streaming.MovieID AND Movie.Title = 'Halloween';