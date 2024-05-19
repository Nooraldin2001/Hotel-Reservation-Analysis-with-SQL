--1. What is the total number of reservations in the dataset?
select count(*) 
from dbo.Hotel_Reservation_Dataset$

--2. Which meal plan is the most popular among guests?
select TOP 1 type_of_meal_plan as mealplan,count(*) as mostPmeal
from dbo.Hotel_Reservation_Dataset$
group by type_of_meal_plan
order by mostPmeal DESC



--3. What is the average price per room for reservations involving children?
select Booking_ID, avg_price_per_room, no_of_children 
from dbo.Hotel_Reservation_Dataset$
where no_of_children != 0
order by avg_price_per_room 

--4. How many reservations were made for the year 20XX (replace XX with the desired year)?
select count(*) as numberofbooking
from dbo.Hotel_Reservation_Dataset$
where Year(arrival_date) = 2017

--5. What is the most commonly booked room type?

SELECT Top 1 room_type_reserved, COUNT(*) AS booking_count
FROM dbo.Hotel_Reservation_Dataset$
GROUP BY room_type_reserved
ORDER BY booking_count DESC

--6. How many reservations fall on a weekend (no_of_weekend_nights > 0)?
SELECT COUNT(*) AS weekend_reservations
FROM dbo.Hotel_Reservation_Dataset$
WHERE no_of_weekend_nights > 0;

--7. What is the highest and lowest lead time for reservations?
SELECT MAX(lead_time) AS highest_lead_time, MIN(lead_time) AS lowest_lead_time
FROM dbo.Hotel_Reservation_Dataset$

--8. What is the most common market segment type for reservations?

SELECT TOP 1 market_segment_type, COUNT(*) AS segment_count
FROM dbo.Hotel_Reservation_Dataset$
GROUP BY market_segment_type
ORDER BY segment_count DESC

--9. How many reservations have a booking status of "Confirmed"?

SELECT COUNT(*) AS confirmed_reservations
FROM dbo.Hotel_Reservation_Dataset$
WHERE booking_status = 'Confirmed'

--10. What is the total number of adults and children across all reservations?

SELECT SUM(no_of_adults) AS total_adults, SUM(no_of_children) AS total_children
FROM dbo.Hotel_Reservation_Dataset$

--11. What is the average number of weekend nights for reservations involving children?
SELECT AVG(no_of_weekend_nights) AS average_weekend_nights
FROM dbo.Hotel_Reservation_Dataset$
WHERE no_of_children > 0;

--12.How many reservations were made in each month of the year?
SELECT MONTH(arrival_date) AS month, COUNT(*) AS reservations_count
FROM dbo.Hotel_Reservation_Dataset$
GROUP BY MONTH(arrival_date)
ORDER BY month;

--13. What is the average number of nights (both weekend and weekday) spent by guests for each room type?
SELECT room_type_reserved, avg(no_of_weekend_nights + no_of_week_nights) AS average_total_nights
FROM dbo.Hotel_Reservation_Dataset$
GROUP BY room_type_reserved;

--14. For reservations involving children, what is the most common room type, and what is the average price for that room type?
SELECT TOP 1 room_type_reserved, COUNT(*) AS booking_count, AVG(avg_price_per_room) AS average_price
FROM dbo.Hotel_Reservation_Dataset$
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY booking_count DESC

--15. Find the market segment type that generates the highest average price per room.
SELECT TOP 1 market_segment_type, AVG(avg_price_per_room) AS average_price
FROM dbo.Hotel_Reservation_Dataset$
GROUP BY market_segment_type
ORDER BY average_price DESC
