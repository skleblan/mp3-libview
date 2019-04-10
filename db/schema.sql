create table if not exists artists (
	id integer primary key autoincrement,
	name nvarchar(100) not null,
	genre nvarchar(100)
	);

create table if not exists album (
	id integer primary key autoincrement,
	name nvarchar(100) not null,
	artistid integer
	);

create table if not exists songs (
	id integer primary key autoincrement,
	name nvarchar(100) not null,
	albumid integer
	);
