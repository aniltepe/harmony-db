CREATE TABLE "chordnote" (
	"symbol"	TEXT NOT NULL,
	"first"	TEXT NOT NULL,
	"second"	TEXT NOT NULL,
	"third"	TEXT NOT NULL,
	"fourth"	TEXT,
	"fifth"	TEXT,
	PRIMARY KEY("symbol"),
	FOREIGN KEY("first") REFERENCES "note"("name"),
	FOREIGN KEY("second") REFERENCES "note"("name"),
	FOREIGN KEY("third") REFERENCES "note"("name"),
	FOREIGN KEY("fourth") REFERENCES "note"("name"),
	FOREIGN KEY("fifth") REFERENCES "note"("name")
) WITHOUT ROWID