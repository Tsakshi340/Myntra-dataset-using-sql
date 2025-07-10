use swiggy;
select* from swiggy;

 -- which restaurant of abohar is visited by least number of people?
 
 select min(rating_count) as 'rating_count' from swiggy where city = 'Abohar';
 select * from swiggy where(rating_count) = 20 and city = 'abohar';
 
 -- now we marge 
 select * from swiggy where city = 'Abohar'and rating_count  =
 (select min(rating_count) as 'rating_count' from swiggy where city = 'abohar');

-- which restaurant has generated maximum revenue all over india?
select max(rating_count * cost ) from restaurants; 
select * from swiggy where
                       cost*rating_count = (select max(cost*rating_count) from swiggy);

-- how many restaurants are having rating more than the average rating?

select avg(rating) from restaurants;
select count(*) as 'total_restaurants' from restaurants
where rating>=(select avg(rating) from restaurants);

-- which restaurant of delhi has generated most revenue
select * from swiggy where 
   rating_count*cost = (select max (rating_count*cost) from swiggy 
          where city ='delhi') and city = 'delhi';
          
 -- which restaurant of more than average cost of an restaurant in delhi has generated most revenue
 -- find the restaurant with cost more than avg 
-- find the one with the maximum revenue generated out of them
 select * from swiggy where
    rating_count * cost = (select max(rating_count * cost ) from swiggy where city= 'delhi')
                          and
                          cost > (select avg(cost )from swiggy where city = 'delhi')
                          and city = 'delhi';
                          
  -- which restaurnt of more than avg cost of an resturant in delhi has generated most revenue
 -- method of group by 
  select city , sum(rating_count) from swiggy
    group by city   
        order by sum(rating_count)
                 desc limit 5;
                 
                 