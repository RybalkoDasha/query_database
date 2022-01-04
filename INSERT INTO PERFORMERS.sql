INSERT INTO performers(id, pseudonym) 
		VALUES
        (1, 'Massive Attack'),
        (2, 'Eminem'),
		(3, 'Linkin Park'),
		(4, 'Taylor Swift'),
	    (5, 'The Weeknd'),
		(6, 'Adam Lambert'),
		(7, 'Sia'),
		(8, 'Depeche Mode');


INSERT INTO album(id, album_name,album_year) 
		VALUES
		(1, 'Heligoland', 2008),
		(2, 'The Shady Project', 2020),
		(3, 'Recharged', 2013),
		(4, 'Reputation', 2017),
		(5, 'Trilogy', 2012),
		(6, 'Glam Nation Live', 2011),
		(7, 'We are born', 2019),
		(8, 'Ultra', 1997); 

INSERT INTO albums_performers(performers_id, album_id) 
          VALUES
          (1, 1),
          (2, 2),
          (3, 3),
          (4, 4),
          (5, 5),
          (6, 6),
          (7, 7),
          (8, 8);

INSERT INTO  tracks(id, tracks_name, duration, album_id) 
		VALUES
        (1, 'Pray for Rain',         3.51, 1),
        (2, 'Babel',                 4.55, 1),
        (3, 'G.O.A.T.',              4.27, 2),
        (4, 'Interlude',             0.22, 2),
        (5, 'Burn It Down',          6.12, 3),
        (6, 'Powerless',             6.07, 3),
        (7, 'Ready for it?',         3.14, 4),
        (8, 'End Game',              4.04, 4),
        (9, 'High For This',         4.16, 5),
        (10, 'What you need',        3.16, 5),
        (11, 'Down The Rabbit Hole', 5.5,  6),
        (12, 'Voodoo',               4.39, 6),
        (13, 'The Fight',            3.38, 7),
        (14, 'Stop Trying',          2.40, 7),
        (15, 'Home',                 5.43, 8);
--        
INSERT INTO  genres(genres_name) 
		VALUES
        ('Electronics'),
        ('Hip-Hop'),
        ('Rock band'),
        ('Pop'),
        ('PBR&B'),
        ('Dance-Pop'),
        ('New wave'),
        ('Alternative Rock'),
        ('Rock');
        
INSERT INTO  genres_performers(genres_id, performers_id) 
		VALUES
       (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 3);
		

INSERT INTO collections(collections_name, collections_year) 
		VALUES
		('Selected',           2010),
		('Shady XV',           2014),
		('Recharged',          2013),
		('Holiday Collection', 2017),
		('The Highlights',     2021), 
		('Beg for Mercy',      2011),
		('Essentials',         2018),
		('The Singles 86>98',  1998); 
		
INSERT INTO collections_tracks(collections_id, tracks_id) 
		VALUES
       (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 6),
       (4, 7),
       (4, 8),
       (5, 9),
       (5, 10),
       (6, 11),
       (6, 12),
       (7, 13),
       (8, 15);







