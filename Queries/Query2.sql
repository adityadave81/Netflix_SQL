USE Netflix;

SELECT Movie.Title AS 'Movie Name', 
COUNT(*) AS 'MOST,LEAST'
FROM movie 
INNER JOIN streaming 
ON streaming.MovieID = Movie.MovieID  
GROUP BY Movie.MovieID, Movie.Title 
ORDER BY Movie.Title DESC
LIMIT 2;