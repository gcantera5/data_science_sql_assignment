WITH subquery AS 
    (SELECT
        original_title, budget, release_date
    FROM
        movies
    WHERE
        original_title = "John Carter")

SELECT
    *
FROM
    subquery

UNION

SELECT
    m.original_title, m.budget, m.release_date
FROM
    movies m, subquery
WHERE
    m.release_date = date(subquery.release_date, '+9 days');