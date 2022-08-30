---SQL Clenaing---

--Removing unknown nieghborhoods

DELETE FROM Crime_Data
WHERE Neighborhood = 'Unknown';


--Removing Blank Subcatagories

DELETE FROM Crime_Data
 WHERE [Crime Subcategory] = ''

 --Removing unknown/ blank Precints-- 

 SELECT Precinct
 FROM Crime_Data
 GROUP BY Precinct

DELETE FROM Crime_Data
WHERE Precinct = '' OR Precinct = 'Unknown';

--dropping the sector and beat columns--

SELECT sector, beat
FROM Crime_Data

ALTER TABLE Crime_Data
DROP COLUMN sector;

ALTER TABLE Crime_Data
DROP COLUMN beat;

SELECT *
FROM Crime_Data