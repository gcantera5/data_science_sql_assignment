SELECT 
    name, COUNT(ID2)
FROM 
    people_main
LEFT JOIN people_likes ON people_main.ID = people_likes.ID2
GROUP BY 
    name
ORDER BY 
    COUNT(ID2) DESC, name ASC