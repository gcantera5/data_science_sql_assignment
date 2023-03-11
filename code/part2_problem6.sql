WITH tb1 AS
    (SELECT
       m.original_language, m.vote_average,
    CASE
        WHEN s.review = 'poor' THEN 1 ELSE 0 END AS poor,
    CASE
        WHEN s.review = 'good' THEN 1 ELSE 0 END AS good
    FROM
        movies m
    JOIN scores s ON m.vote_average
    BETWEEN 
        s.min_score and s.max_score)

SELECT
    tb1.original_language, SUM(tb1.poor), SUM(tb1.good)
FROM
    tb1
GROUP BY
    tb1.original_language
HAVING
    COUNT(tb1.original_language) > 2
ORDER BY
    SUM(tb1.good) DESC, SUM(tb1.poor) ASC