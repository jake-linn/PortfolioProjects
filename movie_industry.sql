--What movies make the most money? 

--by rating
--SELECT rating, budget, (gross - budget) AS Revenue
--FROM movies
--WHERE Revenue IS NOT NULL
--AND rating IS NOT NULL
--GROUP BY rating
--ORDER BY Revenue DESC

--by country 
--SELECT  country, (gross  - budget) AS rev
--FROM movies
--WHERE rev IS NOT NULL
--GROUP BY country
--ORDER BY rev DESC

--by company  
--SELECT company, (gross  - budget) AS rev
--FROM movies
--WHERE rev IS NOT NULL AND
--company IS NOT NULL
--GROUP BY company
--ORDER BY rev DESC
--LIMIT 10

--by genre
--SELECT genre, (gross  - budget) AS rev
--FROM movies
--WHERE rev IS NOT NULL AND
--genre IS NOT NULL
--GROUP BY genre
--ORDER BY rev DESC


--how have movies changed through the years?

--how budgets have changed
--SELECT Year, ROUND(AVG(budget)) AS avg_budget
--FROM movies
--GROUP BY year
--ORDER BY AVG(budget)DESC

--average runtimes over the years 
--SELECT year, ROUND(AVG(runtime))
--FROM movies
--GROUP BY year 

--average IMDB scores 
--SELECT year, ROUND(AVG(score))
--FROM movies
--GROUP BY year
--average scores have historically been 6.0


