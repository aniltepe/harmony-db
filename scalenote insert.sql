INSERT INTO "scalenote" ("name", "first", "second", "third", "fourth", "fifth", "sixth", "seventh")
	SELECT "n1"."name" || " " || "s"."name", "n1"."name", "n2"."name", "n3"."name", "n4"."name", "n5"."name", "n6"."name", "n7"."name"
	FROM "scale" AS "s"
	JOIN "note" AS "n1"
	JOIN "note" AS "n2" ON "n2"."index" = ("n1"."index" + "s"."firstoffset") % 12
	JOIN "note" AS "n3" ON "n3"."index" = ("n1"."index" + "s"."secondoffset") % 12
	JOIN "note" AS "n4" ON "n4"."index" = ("n1"."index" + "s"."thirdoffset") % 12
	JOIN "note" AS "n5" ON "n5"."index" = ("n1"."index" + "s"."fourthoffset") % 12
	JOIN "note" AS "n6" ON "n6"."index" = ("n1"."index" + "s"."fifthoffset") % 12
	JOIN "note" AS "n7" ON "n7"."index" = ("n1"."index" + "s"."sixthoffset") % 12