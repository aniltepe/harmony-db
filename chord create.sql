CREATE TABLE "chord" (
	"name"	TEXT NOT NULL,
	"symbol"	TEXT NOT NULL,
	"firstoffset"	INTEGER NOT NULL,
	"secondoffset"	INTEGER NOT NULL,
	"thirdoffset"	INTEGER,
	"fourthoffset"	INTEGER,
	PRIMARY KEY("name")
) WITHOUT ROWID