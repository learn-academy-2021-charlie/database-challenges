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
