DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	title VARCHAR(50) NOT NULL,
	username VARCHAR(100) NOT NULL,
	soundcloud_url TEXT NOT NULL,
	artwork_url TEXT DEFAULT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS tracks;
CREATE TABLE tracks(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	title TEXT NOT NULL,
	username VARCHAR(100) NOT NULL,
	duration INTEGER NOT NULL,
	soundcloud_url TEXT NOT NULL,
	download_url TEXT NOT NULL,
	artwork_url TEXT DEFAULT NULL,
	abs_file_path TEXT NOT NULL,
    is_downloaded INTEGER CHECK(is_downloaded IN (0,1)) NOT NULL DEFAULT 0,
	playlist_id INTEGER DEFAULT NULL,
	download_id INTEGER DEFAULT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (playlist_id) REFERENCES playlists(id) ON UPDATE CASCADE ON DELETE CASCADE
);
