--     How many customers make purchases weekly, fortnightly, or monthly?

SELECT `Frequency of Purchases`, COUNT(*)
FROM customer.shopping_trends_updated
GROUP BY `Frequency of Purchases`;

--    Is there a correlation between the frequency of purchases and customer review ratings?

SELECT `Frequency of Purchases`, AVG(`Review Rating`)  AvgReviewRating
FROM customer.shopping_trends_updated
GROUP BY `Frequency of Purchases`;
