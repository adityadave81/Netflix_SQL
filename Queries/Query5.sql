USE Netflix;

SELECT Customer1.CustomerID, Customer1.FirstName, Customer1.LastName 
FROM Subscription1 INNER JOIN Customer1
ON Customer1.CustomerID = Subscription1.CustomerID
AND Subscription1.SubsStatus = 'DEACTIVE';