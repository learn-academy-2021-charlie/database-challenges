-- Challenges: SQL Country Database
-- Save your queries in a file if you want to keep them for posterity.

-- WHERE
-- What is the population of the US? (HINT: 278357000)

SELECT name,population
FROM country
-- If we compare strings, we usually wantto use LIKE
WHERE name LIKE 'United States'

-- What is the area of the US? (HINT: 9.36352e+06)

SELECT name,surfacearea
FROM country
WHERE name LIKE 'United States'

-- Which countries gained their independence before 1963?

SELECT name,indepyear
FROM country
WHERE indepyear < 1963;
-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
-- SLECT COUNT(*) will check how many records match
SELECT *
FROM country
WHERE 
	population < 3e7 AND 
	lifeexpectancy > 45 AND
	continent LIKE 'Africa';
-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT *
FROM country
-- ILIKE is similar to LIKE but ignores capitalization
WHERE governmentform ILIKE '%republic%';

-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT *
FROM country
WHERE 
	governmentform ILIKE '%republic%' AND
	indepyear > 1945;
-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT *
FROM country
WHERE 
	NOT(governmentform LIKE '%Republic%') AND
	indepyear > 1945;
	
SELECT *
FROM country
WHERE 
	governmentform NOT LIKE '%Republic%' AND
	indepyear > 1945;

-- ORDER BY
-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
-- sort by life expectancy
ORDER BY lifeexpectancy
LIMIT 15

-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT NULL
-- sort by life expectancy
ORDER BY lifeexpectancy DESC
LIMIT 15
-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name, population, surfacearea, population / surfacearea
AS density -- we have to make an alias to 'store' the values for density
FROM country
WHERE population > 0
ORDER BY density;
LIMIT 5

-- Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population, surfacearea, population / surfacearea
AS density
FROM country
ORDER BY density DESC;
-- Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea
FROM country
ORDER BY surfacearea
-- Which is the smallest country by population? (HINT: 50)?
SELECT name, population
FROM country
WHERE population > 0
ORDER BY population
-- Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC;
-- Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population
FROM country
ORDER BY population DESC
-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT name, headofstate, population
FROM country
ORDER BY population DESC;
-- Subqueries: WITH
-- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
 -- here we make an alias to perform the first select and we than perform another select on the result of the first
WITH rich_countries AS (
	SELECT name, population, gnp
	FROM country
	WHERE population > 0
	AND gnp > 0
	ORDER BY gnp DESC
	LIMIT 10
	)
SELECT *
FROM rich_countries
ORDER BY population
LIMIT 1 -- be specific!!!!!
-- Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH nobody_there AS (
	SELECT name, population, surfacearea
	FROM country
	WHERE population > 0
	ORDER BY population
	LIMIT 10
	)
SELECT *
FROM nobody_there
ORDER BY surfacearea DESC
LIMIT 1

-- Aggregate Functions: GROUP BY
-- Which region has the highest average gnp? (HINT: North America)
-- how do I access the name?

SELECT region, AVG(gnp)
FROM country
GROUP BY region
ORDER BY AVG(gnp) DESC
LIMIT 1;


-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
--The wrong write answer
SELECT headofstate, COUNT(*)
FROM country
GROUP BY headofstate 
ORDER BY count DESC 
LIMIT 1;
-- The write answer!
SELECT headofstate, SUM(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY SUM(surfacearea) DESC
LIMIT 1;

-- What is the average life expectancy for all continents?
SELECT continent, AVG(lifeexpectancy) 
FROM country
WHERE lifeexpectancy IS NOT Null
GROUP BY continent

-- What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, COUNT(*)
FROM country
GROUP BY governmentform
ORDER BY count DESC
LIMIT 5;
-- How many countries are in North America?
SELECT continent, COUNT(*)
FROM country
WHERE continent ILIKE '%North America%'
GROUP BY continent
ORDER BY count DESC
-- What is the total population of all continents?
SELECT SUM(population)
FROM country
-- Stretch Challenges
-- Which countries have the letter ‘z’ in the name? How many?
SELECT COUNT(*)
FROM country
WHERE name ILIKE '%z%'

-- Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
WITH smallest AS (
	SELECT name, surfacearea, gnp
	FROM country
	ORDER BY surfacearea
	LIMIT 10
)
SELECT * 
FROM smallest
ORDER BY gnp DESC
LIMIT 1
-- Of the smallest 10 countries by population, which has the biggest per capita gnp?
-- Of the biggest 10 countries by area, which has the biggest gnp?
-- Of the biggest 10 countries by population, which has the biggest per capita gnp?
-- What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
-- What year is this country database from? Cross reference various pieces of information to determine the age of this database.