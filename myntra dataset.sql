create database myntraa;
use myntraa; 
select *from products; 



 
 

 

 
 SELECT brand_name, rating,marked_price from products;
  -- showing specific column
  select brand_name from products;
  select brand_name , rating , rating_count from products;
 select marked_price  as 'mp' ,discounted_price AS 'dp',
marked_price- discounted_price AS 'discount_amount' from products; 
 
 
 -- discount
 select marked_price,discounted_price,marked_price-discounted_price AS'dp' from products;
 SELECT marked_price,discounted_price, round(((marked_price-discounted_price)/marked_price)*100 , 2) AS'discount_percentage ' from products;
 -- mathematical function making rating_count*rating
 select product_name, brand_name, rating_count, rating, rating_count*rating as 'rating_filter' from products;
 -- finding unique values
 select DISTINCT (brand_name) from products;
 -- adding clause
 select * from PRODUCT WHERE TRUE;
 -- adding distinct with where \ unique  products 
 select distinct(product_tag) from product WHERE brand_tag ='adidas';
 -- product with multiple where clause with AND 
 
 
 
 select * FROM products
 WHERE brand_tag ='adidas' AND discounted_price > 5000;
 
 -- 01  
 -- product from adidas or nike with price between 5000 and 10000 
 select * from products
 where( brand_tag ='adidas' and brand_tag = 'nike')and (discounted_price > 5000  and discounted_price < 10000);
 
 -- 02
 -- jackets not from adidas or nike with price between 5000 and 10000
 select * from products
 where product_tag = 'jacket' and discounted_price > 5000  and discounted_price < 10000;
 
 
 use Mmyntra ;
 select * from products;
 
 select  min(discounted_price) ,  avg(discounted_price) , max(discounted_price) from products;
 select  min(marked_price) ,  avg(marked_price) , max(marked_price) from products;

select * from products where discounted_price = 45900;
select  max(marked_price) from products ;
 select * from products where marked_price = 113999;

-- find most , least exp , avg discounted and marked price of adidas products

select max(discounted_price) , min(discounted_price) ,max(marked_price) , min(marked_price),
avg(marked_price) , avg(discounted_price) from products 
where brand_tag = 'Adidas';

-- FINDING TOTAL PRODUCTS
SELECT COUNT(brand_tag)as 'total products' from products;
select count(*) as 'total products' from products;

-- total revenue  generate, product sold in t shirts
select sum(rating_count) as 'product sold',
sum(rating_count * discounted_price) as 'revenue' from products where product_tag ='tshirts';

-- find total products and unique products in the dataset
select count(*) as 'total products',
count(distinct product_link) as 'unique products' from products;

use Mmyntra;
select count(*) from products;

-- finding the most exp product on myntra  
select* from products order by discounted_price desc;

-- -- finding the  least exp product on myntra  
select* from products order by discounted_price asc;

-- finding top most exp products on myntra
select * from products order by discounted_price desc limit 5;
 
 -- top 5 products based on best rating \ rating*rating count
 
 select product_name , rating , rating_count,
 round(rating*rating_count) as 'comb_rating' from products order by comb_rating desc limit 5;
 
 -- find 5 products based on best rating \ rating*rating_count on the category t shirt
 
 select * from products
   where product_tag = 'tshirts'
   order by rating*rating_count desc;
   
   
   -- finding second most exp product 
   
   select product_name ,rating, rating_count , discounted_price from products
   order by discounted_price desc limit 1 ,1;
   -- finding second least exp product
    select product_name, rating,rating_count, discounted_price from products
    order by discounted_price asc limit 1,1;
    
    -- finding the worst rated product by nike and rating is not zero
    
    select product_name, rating , rating_count, (rating_count*rating) as 'comb rating' from products
    where brand_tag = 'nike'order by comb_rating asc;
    
    -- rating is not zero
     select product_name, rating , rating_count, (rating_count*rating) as 'comb rating' from products
    where brand_tag = 'nike' and rating != 0
    order by comb_rating asc;
    
    -- finding the list of tshirts from nike and adidas price between 1000 and 1200 sort them based on asc order of brand name
    
       select brand_name , rating ,rating_count , brand_tag , discounted_price from products
    where brand_tag in ('nike' , 'adidas')and product_tag = 'tshirts'and discounted_price between 1000 and 1200
    order by brand_name asc limit 10;
     
     


-- 