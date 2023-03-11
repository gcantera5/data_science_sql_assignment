SELECT 
    name, occupation
FROM 
    people_main
JOIN people_friends ON people_main.ID = people_friends.ID2
GROUP BY
    name
HAVING 
    COUNT(ID1) > 3
ORDER BY 
    name ASC

    