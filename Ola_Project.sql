USE Ola;

SELECT *
FROM bookings;

# 1. Retrieve all successful bookings:
SELECT *
FROM bookings
where Booking_Status = 'Success';

# 2. Find the average ride distance for each vehicle type:
SELECT Vehicle_Type, ROUND(AVG(Ride_Distance), 2) AS Avg_Distance
FROM bookings
GROUP BY Vehicle_Type;

# 3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) AS cancelled_rides_by_customers
FROM bookings
WHERE Booking_Status= "Cancelled by Customer";

# 4. List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID, COUNT(Booking_ID) AS Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC LIMIT 5;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*) AS rides_cancelled_by_drivers
FROM bookings
WHERE Canceled_Rides_by_Driver = "Personal & Car related issue";

# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(Driver_Ratings) AS Max_Rating,
MIN(Driver_Ratings) AS Min_Rating
FROM bookings
WHERE Vehicle_Type = "Prime Sedan";

# 7. Retrieve all rides where payment was made using UPI:
SELECT *
FROM bookings
WHERE Payment_Method = "UPI";

# 8. Find the average customer rating per vehicle type:
SELECT Vehicle_Type, ROUND(AVG(Customer_Rating), 2) AS Avg_Customer_Rating
FROM bookings
GROUP BY Vehicle_Type;

# 9. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) AS Total_Successful_Value
FROM bookings
WHERE Booking_Status = "Success";

# 10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = "Yes";

