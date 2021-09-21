CREATE TABLE "scalenote" (
	"name"	TEXT NOT NULL,
	"first"	TEXT NOT NULL,
	"second"	TEXT NOT NULL,
	"third"	TEXT NOT NULL,
	"fourth"	TEXT NOT NULL,
	"fifth"	TEXT NOT NULL,
	"sixth"	TEXT NOT NULL,
	"seventh"	TEXT NOT NULL,
	PRIMARY KEY("name"),
	FOREIGN KEY("first") REFERENCES "note"("name"),
	FOREIGN KEY("second") REFERENCES "note"("name"),
	FOREIGN KEY("third") REFERENCES "note"("name"),
	FOREIGN KEY("fourth") REFERENCES "note"("name"),
	FOREIGN KEY("fifth") REFERENCES "note"("name"),
	FOREIGN KEY("sixth") REFERENCES "note"("name"),
	FOREIGN KEY("seventh") REFERENCES "note"("name")
) WITHOUT ROWID;