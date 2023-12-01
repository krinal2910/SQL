--      Which shipping types are most commonly chosen by customers?
SELECT COUNT(*), `Shipping Type`
FROM customer.shopping_trends_updated
GROUP BY `Shipping Type`
ORDER BY COUNT(*) DESC;

--  What is the overall review rating distribution for all purchases?
SELECT `Review Rating`, COUNT(*) AS RatingCount
FROM customer.shopping_trends_updated
GROUP BY `Review Rating`
ORDER BY `Review Rating`;
  
  --     Are there any patterns in review ratings based on the number of previous purchases?
SELECT
  CASE
    WHEN `Review Rating` BETWEEN 2.5 AND 3 THEN '2.5-3'
    WHEN `Review Rating` BETWEEN 3 AND 4 THEN '3-4'
    WHEN `Review Rating` BETWEEN 4 AND 5 THEN '4-5'
    WHEN `Review Rating` >= 4 THEN '4-5'
    ELSE 'Lowest'
  END AS RatingGroup,
  AVG(`Previous Purchases`) AS Avgpreviouspurchasecount
FROM
  customer.shopping_trends_updated
GROUP BY
  RatingGroup;
