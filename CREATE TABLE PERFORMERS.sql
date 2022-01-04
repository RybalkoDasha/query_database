create table if not exists performers(
	id serial primary key,
	pseudonym varchar(40) unique
);

create table if not exists album(
	id serial primary key,
	album_name varchar(40) not null,
	album_year integer check(album_year > 1950) not null
);

create table if not exists albums_performers(
	id serial primary key,
	performers_id integer not null references performers(id),
	album_id integer not null references album(id)
);

create table if not exists tracks(
	id serial primary key,
	tracks_name varchar(40) not null,
	duration numeric check(duration > 0) not null,
	tracks_id integer references album(id)
);

create table if not exists genres(
	id serial primary key,
	genres_name  varchar(40) not null
);

create table if not exists genres_performers(
	id serial primary key,
	genres_id integer not null references genres(id),
	performers_id integer not null references performers(id)
);

create table if not exists collections(
	id serial primary key,
	collections_name varchar(40) not null,
	collections_year integer check(collections_year > 1950) not null
);

create table if not exists collections_tracks(
	id serial primary key,
	collections_id integer references collections(id),
	tracks_id integer references tracks(id)
);