SELECT 
    a.ID, a.name, b.ID, b.name
FROM 
    people_main a
JOIN people_likes ON a.ID = people_likes.ID1
JOIN people_main b ON b.ID = people_likes.ID2
WHERE NOT EXISTS (
    SELECT 
        ID2 
    FROM 
        people_friends
    WHERE
        a.ID = people_friends.ID2 and b.ID = people_friends.ID1)

ORDER BY a.ID ASC, b.ID ASC