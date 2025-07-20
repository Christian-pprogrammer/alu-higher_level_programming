-- Lists all shows without the genre Comedy from the database hbtn_0d_tvshows
-- Results are sorted in ascending order by show title
-- Uses exactly two SELECT statements

SELECT DISTINCT ts.title
FROM tv_shows ts
LEFT JOIN (
    SELECT DISTINCT tsg.show_id
    FROM tv_show_genres tsg, tv_genres tg
    WHERE tsg.genre_id = tg.id AND tg.name = 'Comedy'
) comedy_shows ON ts.id = comedy_shows.show_id
WHERE comedy_shows.show_id IS NULL
ORDER BY ts.title ASC;
