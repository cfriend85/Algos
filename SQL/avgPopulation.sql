--Query the average population of all cities in CITY where district is California

Select avg(population) from city where district = 'California';

--Query the average population for all cities in CITY, rounded down to the nearest integer.

Select floor(avg(population)) from city;