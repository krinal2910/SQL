--  What is the distribution of customers by age ?
    SELECT Age, COUNT(*) as CustomerCount FROM customer.shopping_trends_updated
    GROUP BY Age
    ORDER BY Age;
    
-- what is the distribution of customers by Gender?
	SELECT Gender, COUNT(*) as CustomerCount FROM customer.shopping_trends_updated
    GROUP BY Gender;

-- Which age group makes the highest average purchase amount?
	SELECT CASE
    WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age BETWEEN 46 AND 55 THEN '46-55'
    WHEN Age >= 56 THEN '56+'
    ELSE 'Under 18'
  END AS AgeGroup, AVG(`Purchase Amount (USD)`) AS AveragePurchaseAmount
  FROM customer.shopping_trends_updated
  GROUP BY AgeGroup
  ORDER BY AveragePurchaseAmount DESC;
  
