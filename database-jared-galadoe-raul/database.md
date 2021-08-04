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

-- SELECT name, governmentform, indepyear
-- FROM country
-- WHERE indepyear > 1945 AND governmentform
-- LIKE '%epublic'

-- SELECT name, governmentform, indepyear
-- FROM country
-- WHERE indepyear > 1945 AND governmentform
-- NOT LIKE '%epublic'

-- SELECT name, lifeexpectancy
-- FROM country
-- ORDER BY lifeexpectancy ASC
-- Limit 15

-- SELECT name, lifeexpectancy
-- FROM country
-- WHERE lifeexpectancy IS NOT NULL
-- ORDER BY lifeexpectancy DESC
-- Limit 15

-- ALTER TABLE population_density
-- ADD COLUMN new_column_name data_type constraint


SELECT name, population, surfacearea, population/surfacearea AS density
FROM country
ORDER BY density ASC
Limit 10



-- SELECT name, population, surfacearea
-- FROM lowest_pop_density
-- WHERE population/surfacearea
