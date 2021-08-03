
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

Which is the smallest country by population? (HINT: 50)?

SELECT name, population
FROM country
WHERE population > 0
ORDER BY population 
LIMIT 1
