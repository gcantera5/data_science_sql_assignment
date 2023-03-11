SELECT original_title,
EXISTS 
    (SELECT * 
    FROM movies AS m1 
    WHERE 
        m2.vote_average = m1.vote_average AND 
        m2.runtime = m1.runtime AND 
        m2.id != m1.id) as 'count'
FROM movies AS m2
ORDER BY original_title ASC