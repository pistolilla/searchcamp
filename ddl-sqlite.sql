DROP TABLE IF EXISTS url_info;
CREATE TABLE IF NOT EXISTS url_info (
	Url TEXT NOT NULL,
	Artist TEXT,
	Album TEXT,
    UNIQUE(Url) ON CONFLICT IGNORE
);

DROP TABLE IF EXISTS url_tag;
CREATE TABLE IF NOT EXISTS url_tag (
	Url TEXT NOT NULL,
	Tag TEXT NOT NULL,
    UNIQUE(Url, Tag) ON CONFLICT IGNORE
);

DROP TABLE IF EXISTS tag_count;
CREATE TABLE IF NOT EXISTS tag_count (
	Tag TEXT NOT NULL,
	Count INTEGER NOT NULL,
    UNIQUE(Tag) ON CONFLICT IGNORE
);

DROP TABLE IF EXISTS url_sentiment;
CREATE TABLE IF NOT EXISTS url_sentiment (
	Url TEXT NOT NULL,
	Sentiment INT NOT NULL,
    UNIQUE(Url) ON CONFLICT REPLACE
);

DROP TABLE IF EXISTS tag_sentiment;
CREATE TABLE IF NOT EXISTS tag_sentiment (
	Tag TEXT NOT NULL,
	Sentiment INT NOT NULL,
    UNIQUE(Tag) ON CONFLICT REPLACE
);