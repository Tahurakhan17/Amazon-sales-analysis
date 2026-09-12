-- price distribution
select count(*) as products,
case 
when actual_price<1000 then 'Low'
when actual_price between 1000 and 15000 then 'Medium'
else 'High'
end as price_range from amazon_sales group by price_range;

-- average rating
select round(avg(rating),1) as average_rating from amazon_sales;


-- does higher price = higher rating?
select round(avg(rating),2),
case 
when actual_price<1000 then 'Low'
when actual_price between 1000 and 15000 then 'Medium'
else 'High'
end as price_range from amazon_sales group by price_range order by round(avg(rating),2) desc;


-- Top 10 categories with the highest average ratings among categories that have significant customer engagement

SELECT 
    category,
    ROUND(AVG(rating),2) AS avg_rating,
    SUM(rating_count) AS total_reviews,
    COUNT(*) AS total_products
FROM amazon_sales
GROUP BY category
having total_reviews>500 and count(*)>10
ORDER BY avg_rating desc
limit 10;

-- worst category
SELECT 
    category,
    ROUND(AVG(rating),2) AS avg_rating,
    SUM(rating_count) AS total_reviews,
    COUNT(*) AS total_products
FROM amazon_sales
GROUP BY category
having total_reviews>500 and count(*)>10
ORDER BY avg_rating asc
limit 10;


-- Do higher discount -> better rating?
select 
case when discount_percentage<30 then 'Low'
when discount_percentage between 30 and 60 then 'Medium'
else 'High'
end as discount_range,round(avg(rating),2) as avg_rating
from amazon_sales group by discount_range;

-- Weighted rating
SELECT 
    product_name,
    rating,
    rating_count,
    (
      (rating_count / (rating_count + 1000)) * rating +
      (1000 / (rating_count + 1000)) * (SELECT AVG(rating) FROM amazon_sales)
    ) AS weighted_rating
FROM amazon_sales
ORDER BY weighted_rating DESC
LIMIT 10;

-- which category give the best value for money using Weighted rating
select category,rating,actual_price, (
      (rating_count / (rating_count + 1000)) * rating +
      (1000 / (rating_count + 1000)) * (SELECT AVG(rating) FROM amazon_sales)
    ) AS weighted_rating from amazon_sales
    order by weighted_rating desc,actual_price asc limit 10;
    
    
-- Which categories are overpriced or underperforming?
select category,round(avg(actual_price),2) as avg_price,round(avg(rating),2) as avg_rating
from amazon_sales group by category ORDER BY avg_price DESC, avg_rating ASC;

 
 -- Which categories have high demand but low satisfaction?
SELECT 
    category,
    SUM(rating_count) AS total_reviews,
    ROUND(AVG(rating),2) AS avg_rating
FROM amazon_sales
GROUP BY category
HAVING total_reviews > 1000
ORDER BY total_reviews DESC, avg_rating ASC;
