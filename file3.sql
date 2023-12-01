--      What are the most and least preferred payment methods among customers?
SELECT COUNT(*) NumberOfcustomer, `Payment Method`
FROM customer.shopping_trends_updated
GROUP BY `Payment Method`
ORDER BY NumberOfcustomer DESC;

--     How does the preferred payment method vary across different age groups?
SELECT
	CASE
    WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age BETWEEN 46 AND 55 THEN '46-55'
    WHEN Age >= 56 THEN '56+'
    ELSE 'Under 18'
  END AS AgeGroup, `Payment Method`, COUNT(*) AS NumberOfCustomers
  FROM customer.shopping_trends_updated
GROUP BY AgeGroup, `Payment Method`
ORDER BY AgeGroup, NumberOfCustomers DESC
