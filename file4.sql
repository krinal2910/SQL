--     What percentage of purchases have applied discounts?

SELECT 
  (COUNT(CASE WHEN `Discount Applied` = 'Yes' THEN 1 END) / COUNT(*)) * 100 AS PercentageWithDiscount
FROM customer.shopping_trends_updated;

--     Are customers who use promo codes more likely to provide higher review ratings?
SELECT
  CASE
    WHEN `Review Rating` BETWEEN 2.5 AND 3 THEN '2.5-3'
    WHEN `Review Rating` BETWEEN 3 AND 4 THEN '3-4'
    WHEN `Review Rating` BETWEEN 4 AND 5 THEN '4-5'
    WHEN `Review Rating` >= 4 THEN '4-5'
    ELSE 'Lowest'
  END AS RatingGroup,
  `Promo Code Used`,
  COUNT(*) AS Count
FROM customer.shopping_trends_updated
GROUP BY RatingGroup, `Promo Code Used`;



