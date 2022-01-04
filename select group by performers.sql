SELECT 
	gp.genres_id,  
	COUNT(gp.performers_id),
	g.genres_name 
FROM genres_performers gp
JOIN genres g on gp.genres_id = g.id 
GROUP BY 
	gp.genres_id,
	g.genres_name
	


SELECT
	a.album_name ,
	COUNT(t.id),
	a.album_year
FROM album a
JOIN tracks t  on a.id = t.album_id 
WHERE a.album_year = 2019 or a.album_year = 2020
GROUP BY 
	a.album_name,
	a.album_year 



SELECT 
	AVG(t.duration),
	 a.album_name 
FROM album a
JOIN tracks t  on a.id = t.album_id 
GROUP BY 
	a.album_name 



SELECT 
	p.pseudonym
FROM performers p 
JOIN albums_performers ap on p.id = ap.performers_id 
JOIN album a on a.id = ap.album_id 
WHERE NOT a.album_year = 2020
GROUP BY
	p.pseudonym



SELECT 
	c.id,
	c.collections_name
FROM collections c 
JOIN collections_tracks ct on c.id = ct.collections_id 
JOIN tracks t on t.id = ct.tracks_id 
JOIN albums_performers ap on t.album_id = ap.album_id 
JOIN performers p on p.id = ap.performers_id 
WHERE pseudonym LIKE '%%Eminem%%'
GROUP BY 
	c.id,
	c.collections_name 



SELECT
	a.album_name,
	a.id
FROM genres g 
JOIN genres_performers gp on g.id = gp.genres_id 
JOIN performers p on p.id = gp.performers_id 
JOIN albums_performers ap on ap.performers_id = p.id 
JOIN album a on a.id = ap.album_id 
GROUP BY 
	a.album_name,
	a.id
HAVING COUNT(DISTINCT g.genres_name) > 1




SELECT
	t.tracks_name,
	t.id 
FROM tracks t
LEFT JOIN collections_tracks  ct on t.id = ct.tracks_id
WHERE ct.tracks_id is null
GROUP BY 
	t.tracks_name,
	t.id 




SELECT 
	t.tracks_name,
	t.duration,
	p.pseudonym 
FROM tracks t
JOIN albums_performers ap on t.album_id =ap.album_id 
JOIN performers p on p.id = ap.performers_id 
WHERE t.duration = (SELECT 
						MIN(t.duration)
					FROM tracks t)
GROUP BY
	t.tracks_name,
	t.duration,
	p.pseudonym 




SELECT
	a.album_name
FROM album a 
JOIN tracks t on a.id = t.album_id 
WHERE t.album_id in (
	SELECT album_id
	FROM tracks 
	GROUP BY album_id
	HAVING COUNT(id) = (
	SELECT COUNT(id)
	FROM tracks 
	GROUP BY album_id
	ORDER BY COUNT 
	LIMIT 1
	)
)
GROUP BY 
a.album_name 
