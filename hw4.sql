--1.Create a cross join between employees and bus routes to show 
    --all possible combinations of routes and drivers 

	SELECT BusRoute.BusRouteZone, Employee.EmployeeLastName, Position.PositionName
	FROM Position
	INNER JOIN Employee
	ON Position.PositionKey =3

--2. List all the bus type details for each bus assigned to bus barn 3

SELECT Bustype.BusTypeDescription,BUS.BusKey
FROM Bustype
INNER JOIN BUS
ON BUSTYPE.BusTypeKey =BuS.BusTypekey
INNER JOIN BusBarn 
ON BusBarn.BusBarnKey =BUS.BusBarnKey
WHERE BusBarn.BusBarnKey=3

--3.What is the total cost of all the busses at bus barn 3?

SELECT bustype.BustypePurchasePrice, bus.BusBarnKey from Bustype
inner join BUS
ON BUSTYPE.BusTypeKey = BUS.BusTypekey
INNER JOIN BusBarn
ON BusBarn.BusBarnKey = BUS.BusBarnKey
WHERE BUS.BusBarnKey = 3

--4.What is the total cost per type of bus at bus barn 3
SELECT Bustype.BusTypeDescription, BUS.BusBarnKey FROM Bustype
RIGHT JOIN BUS ON
BUSTYPE.BusTypeKey = BUS.BusTypekey
WHERE BusBarnKey =3;

--5.List the last name, first name, 
--email, position name --and hourly 
--pay for each employee

SELECT EmployeePosition.EmployeeHourlyPayRate, 
Employee.EmployeeLastName, Employee.EmployeeFirstName, Employee.EmployeeEmail,
Position.PositionName
FROM Employee
JOIN EmployeePosition
ON EmployeePosition.EmployeeHourlyPayRate = Employee.EmployeeKey
JOIN [dbo].[Position]
ON Position.PositionKey = EmployeePosition.PositionKey

--6.List the bus driver’s last name  the shift times, 
--the bus number (key)  and the bus type 
--for each bus on route 43

--7. Return all the positions that no employee holds.
	SELECT PositionName FROM  Position
	JOIN EmployeePosition
	ON Position.PositionKey = EmployeePosition.PositionKey
	WHERE EmployeePosition.EmployeeKey =NULL;

--8. Get the employee key, first name, last name, 
--position key for every driver (position key=1) who 
--has never been assigned to a shift. (This is hard it involves an inner join of several tables and then an outer join with BusscheduleAssignment.)
	
