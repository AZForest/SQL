/*
Enter your query here.
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.
*/
select (select city from station where length(city) = (select min(length(city)) from station) order by city asc limit 1), min(length(city)) from station;
select (select city from station where length(city) = (select max(length(city)) from station) order by city asc limit 1), max(length(city)) from station;
