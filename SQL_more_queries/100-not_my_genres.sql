-- This query selects genres NOT liked by user 2

SELECT name
FROM tv_genres
WHERE id NOT IN (
    SELECT genre_id
    FROM tv_show_genres
    WHERE show_id = (
        SELECT id FROM tv_shows WHERE title = 'Dexter'
    )
)
ORDER BY name ASC;
