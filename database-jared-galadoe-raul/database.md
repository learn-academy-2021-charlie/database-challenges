-- SELECT population, name, surfacearea
-- FROM country
-- WHERE name IN ('United States')

-- SELECT name, indepyear
-- FROM country
-- WHERE indepyear < 1963
-- ORDER BY indepyear ASC;

-- SELECT *
-- FROM country

WITH population_africa AS (
	SELECT name, population, continent, lifeexpectancy
 	FROM country
	WHERE population < 30e06 AND lifeexpectancy > 45.0
	ORDER BY population ASC
 )

SELECT name, population, lifeexpectancy
FROM population_africa
WHERE continent = 'Africa'

-- WITH lifeexpectancy_africa AS (
-- 	SELECT name, population, continent, lifeexpectancy
--  	FROM country
-- 	WHERE population > 30e06
-- 	ORDER BY population ASC
--  )
