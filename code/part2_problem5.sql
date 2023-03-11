WITH tb1 as (
    SELECT 
        release_date, AVG(revenue) as revenue
    FROM 
        movies
    GROUP BY 
        release_date
    ORDER BY 
        revenue DESC)
    
    SELECT 
        original_title, release_date, revenue
    FROM 
        movies m1
    WHERE EXISTS (
        SELECT 
            * 
        FROM 
            movies
        JOIN tb1 on m1.release_date = tb1.release_date AND m1.revenue > tb1.revenue)
ORDER BY release_date ASC, revenue DESC