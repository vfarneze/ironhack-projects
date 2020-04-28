SELECT * FROM data;

-- Q1 What are the different genres?
SELECT DISTINCT prime_genre FROM data;

-- Q2 Which is the genre with the most apps rated?
SELECT prime_genre AS genre, COUNT(*) AS total 
FROM data 
GROUP BY prime_genre ORDER BY total DESC;

SELECT prime_genre, MAX(rating_count_tot) FROM data GROUP BY prime_genre ORDER BY max DESC LIMIT 1;

-- Q3 Which is the genre with most apps?
SELECT prime_genre, COUNT(*) AS total FROM data GROUP BY prime_genre ORDER BY total DESC LIMIT 1;

-- 4. Which is the one with least?
SELECT prime_genre, COUNT(*) AS total FROM data GROUP BY prime_genre ORDER BY total LIMIT 1;

-- 5. Find the top 10 apps most rated.
SELECT track_name, rating_count_tot FROM data ORDER BY rating_count_tot DESC LIMIT 10;

-- 6. Find the top 10 apps best rated by users.
SELECT track_name, user_rating FROM data ORDER BY user_rating DESC LIMIT 10;

-- 7. Take a look at the data you retrieved in question 5. Give some insights.
-- It makes sens that facebook and Instagram are the most rated, since both are widely used.

-- 8. Take a look at the data you retrieved in question 6. Give some insights.
-- the user rating has the unique values: 0, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5 and 5. Therefore, you can show 
-- all apps with max user_rating (5), but this information is not complete, since an app maybe rated a few times
-- and have rating 5 and it wont necessarily mean it is a good app. Also, this data wont differentiate 
-- apps which have rating between the unique values, and therefore, some ratings are probably rounded up.
SELECT DISTINCT user_rating FROM data ORDER BY user_rating

-- 9. Now compare the data from questions 5 and 6. What do you see?
SELECT track_name, rating_count_tot, user_rating FROM data ORDER BY rating_count_tot DESC LIMIT 10;
SELECT track_name, user_rating, rating_count_tot FROM data ORDER BY user_rating DESC LIMIT 10;
-- Those two queries show that, being the most rated doenst mean being the one with the best rating, and vice-versa.
-- As thought in question 8, the app "Learn to Speak Spanish..." has only 9 ratings and user_rating 9, which does not infer its a good app.

-- 10. How could you take the top 3 regarding both user ratings and number of votes?
SELECT track_name, user_rating, rating_count_tot FROM data WHERE user_rating = 5 ORDER BY rating_count_tot DESC LIMIT 3;

-- 11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion
SELECT track_name, price, rating_count_tot, user_rating, prime_genre FROM data ORDER BY price DESC;
-- We will pop out rows with rating_count_tot == 0, since this infers that the app is not being sold.
SELECT price, AVG(rating_count_tot) AS avg_rat_count, AVG(user_rating) AS avg_rating FROM data WHERE rating_count_tot != 0 GROUP BY price ORDER BY price;
-- This query indicates that free apps are the most "rated" by average, and from 3 to 15 dollars it seems that the avg number of ratings (and maybe sales) have little correlation to the price of an app.
-- However, above 15 dollars, the correlation between price and the average number of grows.


-- Bonus: Find the total number of games available in more than 1 language.
ALTER TABLE data RENAME COLUMN "lang.num" TO "lang_num";
SELECT COUNT(prime_genre) FROM data WHERE (prime_genre = 'Games' AND lang_num > 1);

-- Bonus2: Find the number of free vs paid apps
SELECT CASE WHEN mean_price !=0 THEN 'free'ELSE 'paid' END AS app_type, number_of_apps
FROM (SELECT AVG(price) AS mean_price, COUNT(id) AS number_of_apps FROM data WHERE price != 0
UNION
SELECT AVG(price) AS mean_price, COUNT(id) AS number_of_apps FROM data WHERE price = 0) as table1;

-- Bonus3: Find the number of free vs paid apps for each genre
SELECT prime_genre, app_type, COUNT(id)
FROM (SELECT prime_genre, id, CASE WHEN price !=0 THEN 'free'ELSE 'paid' END AS app_type 
   FROM data) AS table1
   GROUP BY prime_genre, app_type
   ORDER BY prime_genre;
