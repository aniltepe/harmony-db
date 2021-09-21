with const AS (SELECT "C" as name)
select * from chordnote, const where "first" = const.name OR "second" = const.name OR "third" = const.name OR "fourth" = const.name