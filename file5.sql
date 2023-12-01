--     Which locations have the highest and lowest average purchase amounts?
SELECT Location, AVG(`Purchase Amount (USD)`) AvgPurchaseAmount
FROM customer.shopping_trends_updated
GROUP BY Location 
ORDER BY AvgPurchaseAmount DESC;

-- more likely used payment method for each state ?
WITH PaymentCounts AS (
  SELECT
    Location,
    `Payment Method`,
    COUNT(*) AS PaymentCount,
    RANK() OVER (PARTITION BY Location ORDER BY COUNT(*) DESC) AS PaymentRank
  FROM customer.shopping_trends_updated
  GROUP BY Location, `Payment Method`
)
SELECT
  Location,
  `Payment Method` AS HighestPaymentMethod
FROM PaymentCounts
WHERE PaymentRank = 1;