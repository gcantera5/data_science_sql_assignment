SELECT
    COUNT(original_title)
FROM
    movies
WHERE
    original_title LIKE 'the%' or original_title LIKE '%shark%' or original_title LIKE '%2'