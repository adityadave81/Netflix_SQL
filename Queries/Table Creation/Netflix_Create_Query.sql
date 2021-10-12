USE netflix;

CREATE TABLE CUSTOMER1(
CustomerID	INT	NOT NULL	AUTO_INCREMENT,
FirstName	VARCHAR(50),
LastName	VARCHAR(50),
Email	VARCHAR(50),
PhoneNo	VARCHAR(50),
StreetADD	VARCHAR(50),
City	VARCHAR(50),
CONSTRAINT	CUSTOMER_PK PRIMARY KEY(CustomerID)
);

CREATE TABLE SUBSCRIPTION1(
SubsID	INT	NOT NULL	AUTO_INCREMENT,
SubsStartDate	date,
SubsEndDate	date,
SubsStatus	varchar(50),
CustomerID	INT NOT NULL,
CONSTRAINT SUBSCRIPTION_PK PRIMARY KEY(SubsID)
);

CREATE TABLE MOVIE(
MovieID	INT	NOT NULL AUTO_INCREMENT,
Title	VARCHAR(50)	NOT NULL,
Genre	VARCHAR(50) NOT NULL,
MovieLength	VARCHAR(50),
ReleaseDate DATE,
PRIMARY KEY(MovieID)
);

CREATE TABLE STREAMING(
StreamID	INT	NOT NULL	AUTO_INCREMENT,
CustomerID	INT NOT NULL,
MovieID	INT NOT NULL,
StreamDate	DATE,
StreamLength VARCHAR(50),		
StreamSubs	VARCHAR(50),
PRIMARY KEY(StreamID),
CONSTRAINT STR_FK	FOREIGN KEY(CustomerID) REFERENCES customer1(CustomerID),
CONSTRAINT STR_FK2	FOREIGN KEY(MovieID) REFERENCES movie(MovieID)

);

