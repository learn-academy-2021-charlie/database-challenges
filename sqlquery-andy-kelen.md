
Syllabus_queries.md at main · learn-academy-2021-charlie_Syllabus

SELECT population
FROM country
WHERE name = 'United States'


What is the area of the US? (HINT: 9.36352e+06)

SELECT surfacearea
FROM country
WHERE name = 'United States'

Which countries gained their independence before 1963?

SELECT name
FROM country
WHERE indepyear < 1963

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

SELECT name
FROM country
WHERE continent = 'Africa'
AND lifeexpectancy > 45
AND population < 30000000

Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT name
FROM country
WHERE governmentform LIKE '%Republic%'

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name
FROM country
WHERE governmentform LIKE '%Republic%'
AND indepyear > 1945

Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name
FROM country
WHERE governmentform NOT LIKE '%Republic%'
AND indepyear > 1945

Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name
FROM country
ORDER BY lifeexpectancy
limit 15

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name
FROM country
WHERE lifeexpectancy IS NOT null
ORDER BY lifeexpectancy DESC
limit 15

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name
FROM country
WHERE population IS NOT null
AND surfacearea IS NOT null
AND population > 1
ORDER BY population/surfacearea
LIMIT 5


Which countries have the highest population density?(HINT: starts with Macao)

SELECT name
FROM country
ORDER BY population/surfacearea DESC
LIMIT 5

Which is the smallest country by area? (HINT: .4)

SELECT name
FROM country
ORDER BY surfacearea
LIMIT 1

Which is the biggest country by area?

SELECT name
FROM country
WHERE surfacearea IS NOT null
ORDER BY surfacearea DESC
LIMIT 1

Which is the smallest country by population? (HINT: 50)?

SELECT name, population
FROM country
WHERE population > 0
ORDER BY population
LIMIT 1

Which is the biggest country by population?

SELECT name
FROM country
WHERE population > 0
AND population IS NOT null
ORDER BY population DESC
LIMIT 1

Who is the most influential head of state measured by population?

SELECT headofstate
FROM country
WHERE population IS NOT null
ORDER BY population DESC
LIMIT 1

Of the countries with the top 10 gnp, which has the smallest population?

WITH top_gnp AS
(SELECT name, gnp, population
FROM country
ORDER BY gnp DESC
LIMIT 10)
SELECT name
FROM top_gnp
WHERE population > 0
ORDER BY population
LIMIT 1

Of the 10 least pop countries with permanent residents(non- population) which has the largest surface area?

WITH least_populated AS (
SELECT name, population, surfacearea
	FROM country
	WHERE population > 0
	ORDER BY population
	LIMIT 10
)
SELECT name FROM least_populated
ORDER BY surfacearea DESC
LIMIT 1

Which region has the highest average gnp?

SELECT region, SUM(gnp)
FROM country
GROUP BY region
ORDER BY SUM(gnp) DESC
LIMIT 1

Who is the most influential head of state measured by surface area?

SELECT headofstate, SUM(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY SUM(surfacearea) DESC
LIMIT 1

What is the average life expectancy for all continents?

SELECT AVG(lifeexpectancy), continent
FROM country
GROUP BY continent


What are the most common forms of government? (HINT: use count(*))
SELECT governmentform
FROM country
GROUP BY governmentform 
ORDER BY COUNT(governmentform) DESC

How many countries are in North America?
SELECT count(*)
FROM country
WHERE region = 'North America'

What is the total population of all continents?
SELECT sum(population)
FROM country
GROUP BY continent

Which countries have the letter ‘z’ in the name? How many?
SELECT name
FROM country
WHERE name like '%z%'

Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
WITH smallest_countries AS (SELECT name, surfacearea, gnp
FROM country
order by surfacearea
limit 10)

SELECT name
FROM smallest_countries
ORDER BY gnp DESC
limit 1


Of the smallest 10 countries by population, which has the biggest per capita gnp?


WITH smallest_countries AS (SELECT name, population, gnp
FROM country
WHERE population > 0
order by population
limit 10)

SELECT name 
FROM smallest_countries
ORDER BY gnp/population DESC
limit 1


Of the biggest 10 countries by area, which has the biggest gnp?

WITH smallest_countries AS (SELECT name, surfacearea, gnp
FROM country
WHERE surfacearea > 0
order by surfacearea DESC
limit 10)

SELECT name 
FROM smallest_countries
ORDER BY gnp/surfacearea DESC
limit 1

Of the biggest 10 countries by population, which has the biggest per capita gnp?
