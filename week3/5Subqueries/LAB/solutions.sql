---- Challenge 1 - Who Have Published What At Where? ----

-- AUTHOR ID - the ID of the author>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> au_id - authors
-- LAST NAME - author last name >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> au_lname - authors
-- FIRST NAME - author first name>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> au_fname - authors
-- TITLE - name of the published titlec>>>>>>>>>>>>>>>>>>>>>>>>>>>>> title - titles (titles > mix > titleauthor)
-- PUBLISHER - name of the publisher where the title was published>> pub_name - publishers

SELECT a.au_id AS "AUTHOR ID",
       a.au_lname AS "LAST NAME",
	   a.au_fname AS "FIRST NAME",
	   tatp.title AS "TITLE",
	   tatp.publisher AS "PUBLISHER"
  FROM authors AS a
       LEFT JOIN
(SELECT ta.au_id, tp.title, tp.publisher
  FROM titleauthor AS ta
  	   INNER JOIN
(SELECT t.title_id, t.title, p.pub_name AS PUBLISHER
  FROM titles AS t
  	   INNER JOIN
	   publishers AS p
	ON t.pub_id = p.pub_id) AS tp
	ON ta.title_id = tp.title_id) AS tatp
	ON a.au_id = tatp.au_id;
	
---- Challenge 2 -  query how many titles each author has published at each publisher. ---
---- Order your output by the title count in descending order. ------

CREATE TEMPORARY TABLE temp_author AS
SELECT a.au_id AS author_id,
	   a.au_lname AS last_name,
	   a.au_fname AS first_name,
	   tatp.title AS title,
	   tatp.publisher AS publisher
  FROM authors AS a
       LEFT JOIN
(SELECT ta.au_id, tp.title, tp.publisher
  FROM titleauthor AS ta
  	   INNER JOIN
(SELECT t.title_id, t.title, p.pub_name AS PUBLISHER
  FROM titles AS t
  	   INNER JOIN
	   publishers AS p
	ON t.pub_id = p.pub_id) AS tp
	ON ta.title_id = tp.title_id) AS tatp
	ON a.au_id = tatp.au_id;

SELECT author_id,
       last_name,
	   first_name,
	   publisher,
       count(title) AS title_count
 FROM temp_author
GROUP BY author_id,
       last_name,
	   first_name,
	   publisher
ORDER BY title_count DESC;

---- Challenge 3 -  Who are the top 3 authors who have sold the highest number of titles?---
---- Write a query to find out. ------
SELECT author_id,
       last_name,
	   first_name,
	   count(title) AS title_count
  FROM temp_author
 GROUP BY author_id,
       last_name,
       first_name
 ORDER BY title_count DESC
 LIMIT 3;

---- Challenge 4 - Best Selling Authors Ranking---

--ANS: to accomplish this, we will have to do a new query, but this time
--also gather information about the qty of books sold
CREATE TEMPORARY TABLE temp_selling AS
SELECT a.au_id AS "AUTHOR ID",
       a.au_lname AS "LAST NAME",
	   a.au_fname AS "FIRST NAME",
	   tatp.title AS "TITLE",
	   tatp.publisher AS "PUBLISHER",
	   tatp.qty AS "QUANTITY"
  FROM authors AS a
       LEFT JOIN
(SELECT ta.au_id, title_qty.title, title_qty.pub_name AS publisher, title_qty.qty
  FROM titleauthor AS ta
  	   INNER JOIN
(SELECT tp.title_id, tp.title, tp.pub_name, s.qty
 FROM(SELECT t.title_id, t.title, p.pub_name
  	    FROM titles AS t
  	         INNER JOIN
	         publishers AS p
	         ON t.pub_id = p.pub_id) AS tp
        INNER JOIN
		sales AS s
		ON tp.title_id = s.title_id) AS title_qty
	ON ta.title_id = title_qty.title_id) AS tatp
	ON a.au_id = tatp.au_id;

--and then use group by (we shall not forget to change null values for zero with CASE WHEN)

SELECT "AUTHOR ID",
  	   "LAST NAME",
	   "FIRST NAME",
  CASE WHEN SUM("QUANTITY") IS NULL THEN 0 ELSE SUM("QUANTITY") END as "BOOKS SOLD"
  FROM temp_selling
 GROUP BY "AUTHOR ID",
		  "LAST NAME",
		  "FIRST NAME"
 ORDER BY "BOOKS SOLD" DESC