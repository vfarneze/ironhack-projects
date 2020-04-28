# Lab | My First Queries

**1. What are the different genres?**
Ans: prime_genre, Shopping, Games, Education, Reference, Business, Social Networking, Food & Drink, Sports, Catalogs, Weather, Book, Music, Entertainment, Medical, Utilities, Travel, Navigation, Photo & Video, Finance, Health & Fitness, News, Productivity and Lifestyle

**2. Which is the genre with the most apps rated?**
The count of ratings an app has received is in the rating_count_tot column.
Ans: Social Networking

**3. Which is the genre with most apps?**
Ans: Games

**4. Which is the one with least?**
Ans: Catalogs

**5. Find the top 10 apps most rated.**
Ans: Facebook, Instagram, Clash of Clans, Temple Run, Pandora - Music & Radio, Pinterest, Bible, Candy Crush Saga, Spotify Music and Angry Birds

**6. Find the top 10 apps best rated by users.**
Ans: track_name, Plants vs. Zombies HD, Flashlight Â‰Ã’Ã£, TurboScanÂ‰Ã£Â¢ Pro - document & receipt scanner: scan multiple pages and photos to PDF, Learn to Speak Spanish Fast With MosaLingua, The Photographer's Ephemeris, Â‰ÃÃˆSudoku +, :) Sudoku +, King of Dragon Pass, Plants vs. Zombies and Infinity Blade

**7. Take a look at the data you retrieved in question 5. Give some insights.**
Ans: It makes sens that facebook and Instagram are the most rated, since both are widely used.

**8. Take a look at the data you retrieved in question 6. Give some insights.**
Ans: the user rating has the unique values: 0, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5 and 5. Therefore, you can show all apps with max user_rating (5), but this information is not complete, since an app maybe rated a few timesand have rating 5 and it wont necessarily mean it is a good app. Also, this data wont differentiate apps which have rating between the unique values, and therefore, some ratings are probably rounded up.

**9. Now compare the data from questions 5 and 6. What do you see?**
Ans: 
> SELECT track_name, rating_count_tot, user_rating FROM data ORDER BY rating_count_tot DESC LIMIT 10;
>
> SELECT track_name, user_rating, rating_count_tot FROM data ORDER BY user_rating DESC LIMIT 10;

Those two queries show that, being the most rated doenst mean being the one with the best rating, and vice-versa.
As thought in question 8, the app "Learn to Speak Spanish..." has only 9 ratings and user_rating 9, which does not infer its a good app.

**10. How could you take the top 3 regarding both user ratings and number of votes?**
Ans: Jus query:
> SELECT track_name, user_rating, rating_count_tot FROM data WHERE user_rating = 5 ORDER BY rating_count_tot DESC LIMIT 3;

**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
Ans: 
We will pop out rows with rating_count_tot == 0, since this infers that the app is not being sold.
> SELECT price, AVG(rating_count_tot) AS avg_rat_count, AVG(user_rating) AS avg_rating FROM data WHERE rating_count_tot != 0 GROUP BY price ORDER BY price;

This query indicates that free apps are the most "rated" by average, and from 3 to 15 dollars it seems that the avg number of ratings (and maybe sales) have little correlation to the price of an app. However, above 15 dollars, the correlation between price and the average number of grows.

**Bonus: Find the total number of games available in more than 1 language.**
Ans: 1660

**Bonus2: Find the number of free vs paid apps**
Ans: paid (4056)
     free (3141)

**Bonus3: Find the number of free vs paid apps for each genre**
Ans: Jusy use...
SELECT prime_genre, app_type, COUNT(id)
FROM (SELECT prime_genre, id, CASE WHEN price !=0 THEN 'free'ELSE 'paid' END AS app_type 
   FROM data) AS table1
   GROUP BY prime_genre, app_type
   ORDER BY prime_genre;