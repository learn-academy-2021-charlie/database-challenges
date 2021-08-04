WHERE
What is the population of the US? (HINT: 278357000)
SELECT name, population
FROM country
WHERE name = 'United States'
278357000

What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea
FROM country
WHERE name = 'United States'

Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963
ORDER BY indepyear DESC

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, population, lifeexpectancy
FROM country
WHERE continent = 'Africa' 
AND population < 30e6
AND lifeexpectancy > 45

Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT governmentform, COUNT(*)
FROM country
WHERE governmentform LIKE '%Republic'
GROUP BY governmentform
ORDER BY count DESC
//returns 5 results (republic adjacent)
WITH republic_govt AS
(SELECT governmentform, COUNT(*)
FROM country
WHERE governmentform LIKE '%Republic'
GROUP BY governmentform)
SELECT SUM(count)
FROM republic_govt
//return 1 result - 143

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
WITH republic_govt AS
(SELECT name, indepyear, governmentform
FROM country
WHERE governmentform LIKE '%Republic'
GROUP BY name, indepyear, governmentform)
SELECT name
FROM republic_govt
WHERE indepyear > 1945
--->92

Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
WITH republic_govt AS
(SELECT name, indepyear, governmentform
FROM country
WHERE governmentform != 'Republic'
AND indepyear > 1945
GROUP BY name, indepyear, governmentform)
SELECT name, indepyear, governmentform
FROM republic_govt
//---->37 countries
//---> need to filter to remove %republic to get 27
WITH republic_govt AS
(SELECT name, indepyear, governmentform
FROM country
WHERE governmentform NOT LIKE '%Republic'
AND indepyear > 1945
GROUP BY name, indepyear, governmentform)
SELECT name, indepyear, governmentform
FROM republic_govt


ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy
LIMIT 15

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT null
ORDER BY lifeexpectancy DESC
LIMIT 15


Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
Greenland, Svalbard, Falkland Islands, Pitcairn, Western Sahara
SELECT name, population, surfacearea, population/surfacearea AS pop_density
FROM country
WHERE population > 0
ORDER BY pop_density

Which countries have the highest population density?(HINT: starts with Macao)
Macao, Monaco, Hong Kong, Singapore, Gibraltar
SELECT name, population, surfacearea, population/surfacearea AS pop_density
FROM country
WHERE population > 0
ORDER BY pop_density DESC

Which is the smallest country by area? (HINT: .4)
Holy See 0.4
SELECT name, surfacearea
FROM country
ORDER BY surfacearea 
LIMIT 1

Which is the smallest country by population? (HINT: 50)?
Pitcairn
SELECT name, population
FROM country
WHERE population > 0
ORDER BY population
LIMIT 1


Which is the biggest country by area? (HINT: 1.70754e+07)
Russian Federation
SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC 
LIMIT 1


Which is the biggest country by population? (HINT: 1277558000)
China
SELECT name, population
FROM country
WHERE population > 0
ORDER BY population DESC
LIMIT 1

Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT name, population, headofstate
FROM country
ORDER BY population DESC
LIMIT 1

Subqueries: WITH

Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
SELECT name, population, gnp
FROM country
WHERE population > 0
ORDER BY gnp DESC 
LIMIT 10


Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH non_zero AS
(SELECT name, population, surfacearea
FROM country
WHERE population > 0
ORDER BY population 
LIMIT 10)
SELECT name, surfacearea
FROM non_zero
ORDER BY surfacearea DESC
LIMIT 1

Aggregate Functions: GROUP BY
Which region has the highest average gnp? (HINT: North America)
SELECT region, AVG(gnp)
FROM country
GROUP BY region
ORDER BY AVG(gnp) DESC
LIMIT 1;

Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
What is the average life expectancy for all continents?
What are the most common forms of government? (HINT: use count(*))
How many countries are in North America?
What is the total population of all continents?

Stretch Challenges
Which countries have the letter ‘z’ in the name? How many?
Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
Of the smallest 10 countries by population, which has the biggest per capita gnp?
Of the biggest 10 countries by area, which has the biggest gnp?
Of the biggest 10 countries by population, which has the biggest per capita gnp?
What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
What year is this country database from? Cross reference various pieces of information to determine the age of this database.