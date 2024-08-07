--Query the total population of all cities in CITY where district is California

Select sum(population) from city where district = 'California';

--Query the sum of the population for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Select sum(population) from city where countrycode = 'JPN';