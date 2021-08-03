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