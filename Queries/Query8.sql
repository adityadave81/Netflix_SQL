USE Netflix;

SELECT Customer1.FirstName, Customer1.LastName, Customer1.Email, Customer1.PhoneNo
FROM Subscription1 INNER JOIN Customer1
ON Customer1.CustomerID = Subscription1.CustomerID
AND Subscription1.SubsStatus = 'TRIAL';

/* Here We are getting all the users on trial and contacting them through Email and Phone SMS */
