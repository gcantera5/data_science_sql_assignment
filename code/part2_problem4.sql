SELECT
CASE
WHEN 
    s.review = 'poor' or s.review = 'awful' THEN 'do not watch'
ELSE 
    m.original_title
END AS 
    title, m.vote_average, s.review
FROM 
    movies m
JOIN scores s ON m.vote_average 
BETWEEN 
    s.min_score and s.max_score
ORDER BY m.id ASC