--1
INSERT INTO artist (name)
VALUES ('NBA Youngboy'),
('BabyfaceRay'),
('EST Gee');

--2
SELECT *
FROM artist
ORDER BY name ASC
LIMIT 5;

--3
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

--4
Select employee_id, first_name, last_name    
From employee
Where employee_id NOT IN (SELECT reports_to FROM employee WHERE reports_to IS NOT NULL)

--5
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

--6
SELECT *
FROM invoice
WHERE billing_country = 'USA';

--7
SELECT *
FROM invoice
ORDER BY total DESC
LIMIT 1;

--8
SELECT *
FROM invoice
ORDER BY total ASC
LIMIT 1;

--9
SELECT *
FROM invoice
WHERE total > 5

--10
SELECT *
FROM invoice
WHERE total < 5

--11
SELECT SUM(total)
FROM invoice


--12
