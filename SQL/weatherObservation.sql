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

--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Select distinct CITY from Station where SUBSTRING(CITY,1,1) not in ('a','e','i','o','u');

--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Select distinct CITY from Station where RIGHT(CITY,1) not in ('a','e','i','o','u');

--Query a list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Select distinct CITY from Station where SUBSTRING(CITY,1,1) not in ('a','e','i','o','u') or RIGHT(CITY,1) not in ('a','e','i','o','u');

--Query a list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Select distinct CITY from Station where SUBSTRING(CITY,1,1) not in ('a','e','i','o','u') and RIGHT(CITY,1) not in ('a','e','i','o','u');

--Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.

Select ROUND(SUM(LAT_N),4) from STATION where LAT_N > 38.7880 and LAT_N < 137.2345;

--Query the greatest value of the Northen Latitudes (LAT_N) from Station that is less than 137.2345. Truncate your answer to 4 decimal places.

Select CAST(MAX(LAT_N) as decimal(10,4)) from Station where LAT_N < 137.2345; --casting number data type to decimal

--Query the Western Longitude (LONG_W) for the largest Northen Latitude (LAT_N) in Station that is less than 137.2345. Round your answer to 4 decimal places.

Select CAST(LONG_W as decimal(10,4)) from Station where LAT_N = (Select MAX(LAT_N) from Station where LAT_N < 137.2345);

--Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 deimal places.

Select CAST(MIN(LAT_N) as decimal(10,4)) from STATION where LAT_N > 38.7780;

--Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.

Select CAST(LONG_W as decimal(10,4)) from STATION where LAT_N = (Select MIN(LAT_N) from STATION where LAT_N > 38.7780);