DROP SCHEMA IF EXISTS USAirlineFlights;
CREATE DATABASE IF NOT EXISTS USAirlineFlights;
use USAirlineFlights;

CREATE TABLE USAirports (
	IATA			VARCHAR(32) NOT NULL PRIMARY KEY,
	Airport			VARCHAR(80),
	City			VARCHAR(32),
	State			VARCHAR(32),
	Country			VARCHAR(32),
	Latitude		FLOAT,
	Longitude		FLOAT);
    
CREATE TABLE Carriers (
	CarrierCode		VARCHAR(32) NOT NULL PRIMARY KEY,
	Description		VARCHAR(120)
);

CREATE TABLE IF NOT EXISTS Flights(
	flightID		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	colYear			SMALLINT,
	colMonth		SMALLINT,
    DayOfMonths		SMALLINT,
	DayOfWeek		SMALLINT,
	DepTime			SMALLINT,
	CRSDepTime		SMALLINT,
	ArrTime			SMALLINT,
	CRSArrTime		SMALLINT,
	UniqueCarrier	VARCHAR(32),
	FlightNum		VARCHAR(32),
	TailNum			VARCHAR(32),
	ActualElapsedTime SMALLINT,
	CRSElapsedTime	SMALLINT,
	AirTime			SMALLINT,
	ArrDelay		SMALLINT,
	DepDelay		SMALLINT,
	Origin			VARCHAR(32),
	Dest			VARCHAR(32),
	Distance		SMALLINT,
	TaxiIn			SMALLINT,
	TaxiOut			SMALLINT,
	Cancelled		BOOLEAN,
	CancellationCode VARCHAR(32),
	Diverted		BOOLEAN,
    
    FOREIGN KEY (Dest)
		REFERENCES USAirports (IATA),
        
	FOREIGN KEY (Origin)
		REFERENCES USAirports (IATA),
        
	FOREIGN KEY (UniqueCarrier)
		REFERENCES Carriers (CarrierCode)
);

/* EXERCISE 1 */

SELECT COUNT(flightID) 
FROM Flights;

/* EXERCISE 2 */

SELECT Origin, AVG(ArrDelay), AVG(DepDelay) 
FROM Flights 
GROUP BY Origin;

/* EXERCISE 3 */

SELECT Origin, colYear, colMonth, ArrDelay 
FROM Flights 
ORDER BY Origin ASC, colYear ASC;

/* EXERCISE 4 */

SELECT USAirports.City, 
	   Flights.colYear, 
       Flights.colMonth, 
       Flights.ArrDelay 
FROM Flights
INNER JOIN USAirports
ON Flights.Origin = USAirports.IATA
ORDER BY City ASC, colYear ASC;

/* EXERCISE 5 */ 

SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) 
FROM Flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY SUM(Cancelled) DESC;

/* EXERCISE 6 */

SELECT TailNum, SUM(Distance) 
FROM Flights 
GROUP BY TailNum 
ORDER BY SUM(Distance) DESC 
LIMIT 10;

/* EXERCISE 7 */

SELECT UniqueCarrier, AVG(ArrDelay)
FROM Flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC;