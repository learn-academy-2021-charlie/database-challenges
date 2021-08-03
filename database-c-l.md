WHERE:
* What is the population of the US? (HINT: 278357000)

SELECT name, population
FROM country 
WHERE name = 'United States'

"United States"	278357000

* What is the area of the US? (HINT: 9.36352e+06)

SELECT name, surfacearea
FROM country 
WHERE name = 'United States'

"United States"	9.36352e+06

* Which countries gained their independence before 1963?

SELECT name, indepyear
FROM country 
WHERE indepyear <= 1963

* first 5
"Afghanistan"	1919
"Netherlands"	1581
"Albania"	1912
"Algeria"	1962
"Andorra"	1278

* List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

SELECT name, population, lifeexpectancy, continent
FROM country 
WHERE population < 30000000 AND lifeexpectancy > 45 AND continent = 'Africa'

* first five
"Benin"	6097000	50.2	"Africa"
"Burkina Faso"	11937000	46.7	"Africa"
"Burundi"	6695000	46.2	"Africa"
"Djibouti"	638000	50.8	"Africa"
"Eritrea"	3850000	55.8	"Africa"

* Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT name, governmentform
FROM country 
WHERE governmentform LIKE '%Republic%'

* first five
"Albania"	"Republic"
"Algeria"	"Republic"
"Angola"	"Republic"
"Argentina"	"Federal Republic"
"Armenia"	"Republic"

* Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name, governmentform, indepyear
FROM country 
WHERE governmentform LIKE '%Republic%' AND indepyear > 1945 

"Algeria"	"Republic"	1962
"Angola"	"Republic"	1975
"Armenia"	"Republic"	1991
"Azerbaijan"	"Federal Republic"	1991
"Bangladesh"	"Republic"	1971

* Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name, governmentform, indepyear
FROM country 
WHERE governmentform NOT LIKE '%Republic%' AND indepyear > 1945

"Antigua and Barbuda"	"Constitutional Monarchy"	1981
"United Arab Emirates"	"Emirate Federation"	1971
"Bahamas"	"Constitutional Monarchy"	1973
"Bahrain"	"Monarchy (Emirate)"	1971
"Barbados"	"Constitutional Monarchy"	1966

ORDER BY
* Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country 
ORDER BY lifeexpectancy ASC
LIMIT 15

"Zambia"	37.2
"Mozambique"	37.5
"Malawi"	37.6
"Zimbabwe"	37.8
"Angola"	38.3

* Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy
FROM country 
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy DESC
LIMIT 15

"Andorra"	83.5
"Macao"	81.6
"San Marino"	81.1
"Japan"	80.7
"Singapore"	80.1

* Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population, surfacearea, population/surfacearea AS density
FROM country 
WHERE population > 0
ORDER BY density ASC
LIMIT 5

"Greenland"	56000	2.16609e+06	0.025853034730782192
"Svalbard and Jan Mayen"	3200	62422	0.051263977443849924
"Falkland Islands"	2000	12173	0.16429803663846218
"Pitcairn"	50	49	1.0204081632653061
"Western Sahara"	293000	266000	1.1015037593984962

* Which countries have the highest population density?(HINT: starts with Macao)

SELECT name, population, surfacearea, population/surfacearea AS density
FROM country 
WHERE population > 0
ORDER BY density DESC
LIMIT 5

"Macao"	473000	18	26277.777777777777
"Monaco"	34000	1.5	22666.666666666668
"Hong Kong"	6782000	1075	6308.837209302325
"Singapore"	3567000	618	5771.844660194175
"Gibraltar"	25000	6	4166.666666666667

* Which is the smallest country by area? (HINT: .4)

SELECT name, surfacearea
FROM country 
ORDER BY surfacearea
LIMIT 1

"Holy See (Vatican City State)"	0.4

* Which is the smallest country by population? (HINT: 50)?

SELECT name, population
FROM country 
WHERE population > 0
ORDER BY population
LIMIT 1

"Pitcairn"	50

* Which is the biggest country by area? (HINT: 1.70754e+07)

SELECT name, surfacearea
FROM country 
ORDER BY surfacearea DESC
LIMIT 1

"Russian Federation"	1.70754e+07

* Which is the biggest country by population? (HINT: 1277558000)

SELECT name, population
FROM country 
WHERE population > 0
ORDER BY population DESC
LIMIT 1

"China"	1277558000

* Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

SELECT name, headofstate, population
FROM country 
ORDER BY population DESC
LIMIT 10

"China"	"Jiang Zemin"	1277558000

* Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)

WITH gnp_population AS (SELECT name, gnp, population
FROM country 
WHERE gnp > 0
ORDER BY gnp DESC
LIMIT 10)

SELECT name, gnp, population
FROM gnp_population
ORDER BY population;
"Canada"	598862.00	31147000