SELECT 
    DISTINCT x.name, x.age
FROM 
    people_main x
JOIN people_likes y ON  x.ID = y.ID2
JOIN people_main z ON z.ID = y.ID1
WHERE 
    x.age > z.age
ORDER BY 
    x.name ASC