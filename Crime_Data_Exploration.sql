SELECT * FROM 
Crime_Data


---WHAT IS THE MOST FREQUENT CRIME?

SELECT [Primary Offense Description], COUNT([Primary Offense Description]) AS Frequency 
FROM Crime_Data
GROUP BY [Primary Offense Description]
ORDER BY 
COUNT([Primary Offense Description]) DESC


--What time do most crimes happen?

SELECT [Occurred Time],  COUNT([Occurred Time] ) AS Frequency 
FROM Crime_Data
GROUP BY [Occurred Time]
ORDER BY COUNT([Occurred Time] )


--CASE Statement to breakdown times as Morning, Afternoon, Evening, Night, etc.--
SELECT [Occurred Time], [Primary Offense Description],
CASE 
WHEN [Occurred Time] = 0 THEN 'Midnight'
WHEN [Occurred Time] <= 400 THEN 'Middle of the Night'
WHEN [Occurred Time] <= 1100 THEN 'Morning'
WHEN [Occurred Time] <= 1600 THEN'Afternoon'
WHEN [Occurred Time] <= 2000 THEN 'Evening'
ELSE 'Night'
END AS TimeOfDay
FROM Crime_Data
ORDER BY [Occurred Time]


--Nighborhood with the most crime--

SELECT Neighborhood, COUNT(Neighborhood) AS Frequenecy
FROM Crime_Data
GROUP BY Neighborhood
Order BY COUNT(Neighborhood)DESC


--Crime by Nieghborhood 

SELECT 
[Neighborhood], [Primary Offense Description],COUNT([Primary Offense Description]) AS Frequency
FROM 
Crime_Data
GROUP BY
[Primary Offense Description]
ORDER BY 
COUNT([Primary Offense Description])