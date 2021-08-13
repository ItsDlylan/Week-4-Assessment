INSERT INTO artist(name, artist_id)
VALUES('Britney Spears', 276), ('BlackBear', 277), ('EDEN', 278);

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT *
FROM employee
WHERE	reports_to = '2';

SELECT *
FROM employee
WHERE	city = 'Lethbridge';


SELECT COUNT(billing_country) FROM invoice
WHERE billing_country = 'USA';


SELECT total from invoice
ORDER BY total DESC
LIMIT 1;

SELECT total from invoice
ORDER BY total ASC
LIMIT 1;

Find all orders bigger than $5.
SELECT total from invoice
WHERE total > 5;

Count how many orders were smaller than $5.
SELECT COUNT(total) from invoice
WHERE total < 5;

Get the total sum of the orders.
SELECT SUM(total) from invoice;

SELECT *
FROM invoice_line
JOIN invoice
ON invoice_line.invoice_id = invoice.invoice_id
WHERE unit_price > '.99';

SELECT invoice_date "Date of purchase", c.first_name, c.last_name
FROM invoice
JOIN customer c 
ON invoice.customer_id = c.customer_id;


SELECT c.first_name "customer first", c.last_name "customer last", e.first_name "Rep first", e.last_name "Rep last"
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT al.title "album title", ar.name "Artist"
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;