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
SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

--13
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

--14
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

--15
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;