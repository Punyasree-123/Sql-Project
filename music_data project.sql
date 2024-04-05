-- BASIC LEVEL --
-- 1. who is the senior most employee based on job title..
select *
from employee
order by levels desc
limit 1;

-- 2. Which countries have most invoices...
select billing_country, count(invoice_id) as total_count
from invoice
group by billing_country
order by count(invoice_id) desc;

-- 3. What are top 3 values of total invoices ...
select invoice_id,total
from invoice
order by total desc
limit 3;

-- 4.Which city has best customers.Write a querry that retruns one city that has the the highest invoices total.retruns both the city name and invoices total...
select billing_city,sum(total) as total_invoices
from invoice
group by billing_city
order by sum(total) desc
limit 1;

-- 5. Who is the best customer? Write a querry that retruns the person name who has spent the most money...
select c.first_name,c.last_name,sum(i.total)
from customer as c
join invoice as i
on c.customer_id=i.customer_id
group by c.first_name,c.last_name
order by sum(i.total) desc
limit 1;

-- MEDIUM LEVEL --
-- 6.Write a querry to retrun email,firs name, and last name where genre is listed of all rock music
-- retrun all your list orderes alphabeticaly emails by letter starting with "A"
select c.first_name,c.last_name,c.email,g.name
from customer as c
join invoice as a
on c.customer_id=a.customer_id
join invoice_line as b
on a.invoice_id=b.invoice_id
join track as t
on b.track_id=t.track_id
join genre as g 
on t.genre_id=t.genre_id
where g.name = "Rock"
order by c.email;

-- 7.

