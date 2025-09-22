CREATE DATABASE RoadAccident;
USE RoadAccident;

SELECT * 
FROM accidents;

SELECT COUNT(*)
FROM accidents;



# 1. Count of Accidents by Day of Week

SELECT Day_of_Week, COUNT(*) as total_accidents
FROM accidents
GROUP BY Day_of_Week;



# 2. Total Accidents by Junction Control Type

SELECT Junction_Control, COUNT(*) as total_accidents
FROM accidents
GROUP BY Junction_Control;



# 3. Most Common Junction Detail

SELECT Junction_Detail, COUNT(*) as occurrence
FROM accidents
GROUP BY Junction_Detail
ORDER BY occurrence DESC
LIMIT 1;


# 4. Accident Severity Distribution

SELECT Accident_Severity, COUNT(*) as total
FROM accidents
GROUP BY Accident_Severity;



# 5. Average Vehicles per Accident

SELECT AVG(Number_of_Vehicles) as avg_vehicles
FROM accidents;



#6. Accident Distribution by Light Conditions

SELECT Light_Conditions, COUNT(*) as total
FROM accidents
GROUP BY Light_Conditions;


# 7. Number of Accidents per Road Type

SELECT Road_Type, COUNT(*) as total
FROM accidents
GROUP BY Road_Type;



# 8. Average Speed Limit at Accident Sites

SELECT AVG(Speed_limit) as avg_speedlimit
FROM accidents;



# 9. Vehicle Type Involved in Most Accidents

SELECT Vehicle_Type, COUNT(*) as total
FROM accidents
GROUP BY Vehicle_Type
ORDER BY total DESC
LIMIT 1;

