-- List all TV shows that are not linked to the genre 'Comedy'

-- List all TV shows that are not linked to the genre 'Comedy'

SELECT ts.title
FROM tv_shows ts
LEFT JOIN tv_show_genres tsg ON ts.id = tsg.show_id
LEFT JOIN tv_genres tg ON tsg.genre_id = tg.id
WHERE tg.name IS NULL OR tg.name != 'Comedy'
GROUP BY ts.title
HAVING SUM(tg.name = 'Comedy') = 0
ORDER BY ts.title ASC;

