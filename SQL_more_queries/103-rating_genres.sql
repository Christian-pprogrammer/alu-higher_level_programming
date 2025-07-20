-- List all genres by total rating

SELECT g.name, SUM(r.rate) AS rating
FROM tv_genres AS g
JOIN tv_show_genres AS sg ON g.id = sg.genre_id
JOIN tv_show_ratings AS r ON sg.show_id = r.show_id
GROUP BY g.name
ORDER BY rating DESC;
