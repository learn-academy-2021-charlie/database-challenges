What is the population of the US? (HINT: 278357000)
SELECT population 
FROM country
WHERE name = 'United States'

What is the area of the US? (HINT: 9.36352e+06)
SELECT surfacearea
FROM country
WHERE name = 'United States'

Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, population, lifeexpectancy
FROM country
WHERE continent = 'Africa' AND population <= 30000000 AND lifeexpectancy >= 45