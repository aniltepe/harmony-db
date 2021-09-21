INSERT INTO "chordnote" ("symbol", "first", "second", "third", "fourth")
	SELECT "n1"."name" || "c"."symbol", "n1"."name", "n2"."name", "n3"."name", "n4"."name"
	FROM "chord" AS "c"
	JOIN "note" AS "n1"
	JOIN "note" AS "n2" ON "n2"."index" = ("n1"."index" + "c"."firstoffset") % 12
	JOIN "note" AS "n3" ON "n3"."index" = ("n1"."index" + "c"."secondoffset") % 12
	LEFT JOIN "note" AS "n4" ON "n4"."index" = ("n1"."index" + "c"."thirdoffset") % 12