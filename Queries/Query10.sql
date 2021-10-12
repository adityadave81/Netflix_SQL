USE Netflix;

SELECT Movie.Genre,Streaming.StreamSubs,Customer1.FirstName, Customer1.LastName FROM Streaming
INNER JOIN Customer1 ON Streaming.CustomerID = Customer1.CustomerID 
INNER JOIN Movie ON Movie.MovieID = Streaming.MovieID AND Movie.Genre = 'Regional' AND Streaming.StreamSubs = 'ON';