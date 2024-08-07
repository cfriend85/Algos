--Query a count of the number of cities in CITY having a Population larger than 100,000

Select count(*) from city where population > 100000;

--Query the difference between the maximum and minimum populations in CITY

Select max(population) - min(population) from city;