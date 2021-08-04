SELECT population, name
FROM country
WHERE name LIKE '%States'



SELECT surfacearea, name
FROM country
WHERE name LIKE '%States'



SELECT indepyear, name
FROM country
WHERE indepyear < 1963;

SELECT population, name, lifeexpectancy
FROM country
WHERE population < 30000000 AND lifeexpectancy > 45;


SELECT governmentform, name
FROM country
WHERE governmentform LIKE '%Republic';

SELECT governmentform, name, indepyear
FROM country
WHERE governmentform LIKE '%Republic' AND indepyear > 1945;


SELECT governmentform, name, indepyear
FROM country
WHERE governmentform LIKE '%Republic' AND indepyear > 1945;

SELECT name, lifeexpectancy
FROM country
ORDER BY LIFEEXPECTANCY
LIMIT 15;

SELECT name, lifeexpectancy
FROM country
WHERE LIFEEXPECTANCY is not null
ORDER BY LIFEEXPECTANCY DESC
LIMIT 15;

SELECT name, surfacearea, population, population/surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density
LIMIT 5;

SELECT name, surfacearea, population, population/surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density DESC
LIMIT 5;

SELECT name, surfacearea
FROM country
ORDER BY surfacearea
LIMIT 1;

SELECT name, population
FROM country
WHERE population > 0
ORDER BY population
LIMIT 1;

SELECT name, surfacearea
FROM country
ORDER BY surfacearea desc
LIMIT 1;

SELECT region, AVG(gnp)
FROM country

GROUP BY region
ORDER BY AVG DESC
LIMIT 1;

SELECT headofstate, SUM(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY sum DESC
LIMIT 1

WITH world_average AS(SELECT continent, AVG(lifeexpectancy)
FROM country
GROUP BY continent)


SELECT AVG(avg)
FROM world_average

SELECT COUNT(governmentform), governmentform
FROM country
GROUP BY governmentform
ORDER BY count DESC

SELECT COUNT(name), continent
FROM country 
WHERE continent = 'North America'
GROUP BY continent

WITH world_pop AS(SELECT continent, SUM(population)
FROM country 
GROUP BY continent)

SELECT SUM(sum)
FROM world_pop

//STRETCH
SELECT name
FROM country
WHERE name LIKE '%z%'

WITH biggest_gnp AS (SELECT name, surfacearea, gnp
FROM country
ORDER BY surfacearea
LIMIT 10)

SELECT name, surfacearea, gnp
FROM biggest_gnp
ORDER BY gnp DESC
LIMIT 1

WITH biggest_gnp AS(SELECT name, population, gnp
FROM country
WHERE population > 0
ORDER BY population
LIMIT 10)

SELECT name, gnp/population AS average_gnp
FROM biggest_gnp
ORDER by average_gnp DESC
