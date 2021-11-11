-- 3) How many females and how many male passengers travelled for a minimum distance of
-- 600 KM s?

SELECT * FROM PASSENGER where Gender = 'F' and Distance <= 600;

-- 4) Find the minimum ticket price for Sleeper Bus.

select min(price) as Minimum_Price from price;

-- 5) Select passenger names whose names start with character 'S'

select	Passenger_name from passenger where Passenger_name like "S%";

-- 6) Calculate price charged for each passenger displaying Passenger name, Boarding City,
--      Destination City, Bus_Type, Price in the output

select passenger.Passenger_name, passenger.Boarding_City,passenger.Destination_City, passenger.Bus_Type,price.Price from passenger RIGHT JOIN price on passenger.Distance=price.Distance;
	
-- 7) What is the passenger name and his/her ticket price who travelled in Sitting bus for a
-- distance of 1000 KM s

 

-- 8) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to
-- Panaji?


-- 9) List the distances from the "Passenger" table which are unique (non-repeated
-- distances) in descending order.

SELECT distinct Distance from PASSENGER order by Distance DESC;

-- 10) Display the passenger name and percentage of distance travelled by that passenger
-- from the total distance travelled by all passengers without using user variables



-- 11) Display the distance, price in three categories in table Price
-- a) Expensive if the cost is more than 1000
-- b) Average Cost if the cost is less than 1000 and greater than 500
-- c) Cheap otherwise

SELECT Distance, Price,
CASE 
    when Price > 1000 then "Expensive"
    when Price <1000 and Price > 500 then "Average Cost"
    ELSE "Cheap"
END AS Category
from PRICE;

