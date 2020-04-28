SELECT *
  FROM movies
 WHERE year IN (2004,2008,2010)
 
 
 -- Duracao média
 SELECT director,
 		AVG(length_minutes) AS mean_length
   FROM movies
  GROUP BY director
  ORDER BY mean_length DESC
  LIMIT 3;
  
-- comando offset: pula certas rows

 SELECT director,
 		AVG(length_minutes) AS mean_length
   FROM movies
  GROUP BY director
  ORDER BY mean_length DESC
  LIMIT 3 OFFSET 2;
  
-- tabela movie info innerjoin movies:
SELECT info.movie_id,
	   a.title,
	   a.director,
	   a.year,
	   info.rating
  FROM movies AS a
  	   INNER JOIN
	   movie_info AS info
	ON a.id = info.movie_id;

-- USANDO CASE WHEN e BETWEEN:
SELECT info.movie_id,
	   a.title,
	   a.director,
	   a.year,
	   info.rating,
	   info.rating * 100 AS rating_100,
	   CASE WHEN info.rating > 8 THEN 'oscar_candidate' ELSE 'n' END AS oscar,
	   CASE 
	   		WHEN a.year > 1990 AND a.year <= 2000 THEN '90'
			-- USANDO BETWEEN
			WHEN a.year BETWEEN 2000 AND 2010 THEN '2000'
			ELSE '2010'
		END AS decades
  FROM movies AS a
  	   INNER JOIN
	   movie_info AS info
	ON a.id = info.movie_id;





