--Which brand has had the most Super Bowl commercials? Do they have a distinct style?
--SELECT  COUNT (Brand), Brand
--FROM superbowl_commercials
--GROUP BY Brand

--How have different characteristics for commercials trended across time?
--SELECT Year, SUM(CASE WHEN Funny = "FALSE" THEN 0 ELSE 1 END) AS FUNNY,SUM(CASE WHEN ShowsProductQuickly = "FALSE" THEN 0 ELSE 1 END) AS Shows_Product_Fast,  SUM(CASE WHEN Patriotic = "FALSE" THEN 0 ELSE 1 END)AS Patriotic , SUM(CASE WHEN Celebrity = "FALSE" THEN 0 ELSE 1 END) AS CELEBRITY , SUM(CASE WHEN Danger = "FALSE" THEN 0 ELSE 1 END) AS DANGER,SUM(CASE WHEN Animals = "FALSE" THEN 0 ELSE 1 END) AS ANIMALS 
--FROM superbowl_commercials
--GROUP BY Year

--Can you identify any patterns for the most successful commercials on YouTube?

--SELECT   SUM(CASE WHEN Funny = "FALSE" THEN 0 ELSE 1 END) AS FUNNY,SUM(CASE WHEN ShowsProductQuickly = "FALSE" THEN 0 ELSE 1 END) AS Shows_Product_Fast,  SUM(CASE WHEN Patriotic = "FALSE" THEN 0 ELSE 1 END)AS Patriotic , SUM(CASE WHEN Celebrity = "FALSE" THEN 0 ELSE 1 END) AS CELEBRITY , SUM(CASE WHEN Danger = "FALSE" THEN 0 ELSE 1 END) AS DANGER,SUM(CASE WHEN Animals = "FALSE" THEN 0 ELSE 1 END) AS ANIMALS 
--FROM superbowl_commercials
--WHERE YoutubeLink IS NOT NULL;
--Biggest trends for YT comms are being funny and showing product fast 


--Which characteristics are paired most often? Can you find any unusual combinations?

--breakdown by Brands
--SELECT Brand,  SUM(CASE WHEN Funny = "FALSE" THEN 0 ELSE 1 END) AS FUNNY,SUM(CASE WHEN ShowsProductQuickly = "FALSE" THEN 0 ELSE 1 END) AS Shows_Product_Fast,  SUM(CASE WHEN Patriotic = "FALSE" THEN 0 ELSE 1 END)AS Patriotic , SUM(CASE WHEN Celebrity = "FALSE" THEN 0 ELSE 1 END) AS CELEBRITY , SUM(CASE WHEN Danger = "FALSE" THEN 0 ELSE 1 END) AS DANGER,SUM(CASE WHEN Animals = "FALSE" THEN 0 ELSE 1 END) AS ANIMALS 
--FROM superbowl_commercials
--GROUP BY Brand
--correlation between a commerical being funny and it showing the product quickly 
-- Budweiser is the only brand to consititantly have Patriotic commericals  

-- YT views by Brand
--SELECT Brand, YoutubeViews
--FROM superbowl_commercials
--GROUP BY Brand
--ORDER BY YoutubeViews DESC
