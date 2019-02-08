--топ-5 тегов (название, число упоминаний), которые чаще всего встречаются в постах.
SELECT name AS название, COUNT(tag_id) AS число_упоминаний  FROM sports_posts JOIN sports_tags ON tag_id = ANY (tags)
GROUP BY name
ORDER BY число_упоминаний DESC LIMIT 5

Результат:
название  число_упоминаний
"Челси"		"5"

"МЮ"		"4"

"Спартак"	"4"

"Барселона"	"4"

"ЦСКА"		"3"

--пост с наибольшим количеством тегов.
SELECT post_id as пост№, array_length(tags, 1) AS Количество_тегов FROM sports_posts
ORDER BY Количество_тегов DESC LIMIT 1

Результат:
пост№ Количество_тегов
2	5
