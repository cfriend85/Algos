--Query the following two values from the STATION table:
-- 1.) The sum of all values in LAT_N rounded to a scale of 2 decimal places.
-- 2.) The sum of all values in LONG_W  rounded to a scale of 2 decimal places.

Select ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) from Station;


--Query the list of CITY names starting with vowels (a,e,i,o,u) from STATION. Your result cannot contain duplicates.

Select distinct CITY from Station where SUBSTRING(CITY,1,1) in ('a','e','i','o','u');

--Query the list of CITY names ending with vowels (a,e,i,o,u) from STATION. You result cannot contain duplicates.

Select distinct CITY from Station where RIGHT(CITY,1) in ('a','e','i','o','u');

--Query the list of CITY names from STATION which have vowels (a,e,i,o,u) as both their first and last characters. Your result cannot contain duplicates.

Select distinct CITY from Station where SUBSTRING(CITY,1,1) in ('a','e','i','o','u') and RIGHT(CITY,1) in ('a','e','i','o','u');