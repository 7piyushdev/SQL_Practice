 
select * from smartphones

-- Find the total number of phones available for each brand.

select brand_name, count(*) as total_models from smartphones
group by brand_name
order by total_models desc

-- Find the average price of phones for each brand.

select brand_name, AVG(price) as avg_price from smartphones
group by brand_name
order by avg_price desc

-- Find the most expensive phone price for each brand.

select brand_name, MAX(price) as max_price from smartphones
group by brand_name
order by max_price desc

-- Find the cheapest phone price for each processor brand.

select brand_name, MIN(price) as affordable_price from smartphones
group by brand_name
order by affordable_price asc


-- GROUP BY + HAVING

-- Find brands that have more than 20 phone models.

select brand_name, count(*) from smartphones
group by brand_name
having count(*) > 20

--  Find brands whose average phone rating is greater than 80.

SELECT brand_name, AVG(rating) AS avg_rating
FROM smartphones
GROUP BY brand_name
HAVING AVG(rating) > 80
ORDER BY avg_rating DESC;


--  Find how many phones exist for each combination of brand and processor brand.

SELECT brand_name, processor_brand, COUNT(*) AS total_models
FROM smartphones
GROUP BY brand_name, processor_brand
ORDER BY total_models DESC;


-- Find the top 5 brands with the highest average rating. 

SELECT TOP 5 brand_name, AVG(rating) AS avg_rating
FROM smartphones
GROUP BY brand_name
ORDER BY avg_rating DESC;

-- A company wants to know which brands produce the most 5G phones.
SELECT brand_name, COUNT(*) AS total_5g
FROM smartphones
WHERE has_5g = 1
GROUP BY brand_name
ORDER BY total_5g DESC;

