-- List all TV shows that are not linked to the genre 'Comedy'

SELECT ts.title
FROM tv_shows ts
JOIN tv_show_genres tsg ON ts.id = tsg.show_id
JOIN tv_genres tg ON tsg.genre_id = tg.id
GROUP BY ts.title
HAVING SUM(tg.name = 'Comedy') = 0
ORDER BY ts.title ASC;

