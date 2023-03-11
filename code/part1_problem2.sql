WITH tb1 as 
    (SELECT ID2 
    FROM people_likes),
    tb2 as 
    (SELECT * 
    FROM people_main
    WHERE people_main.ID in tb1)

SELECT 
    occupation, COUNT(occupation)
FROM 
    tb2
GROUP BY 
    occupation
ORDER BY 
    COUNT(occupation) ASC, occupation ASC
LIMIT 2