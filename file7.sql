--    What is the average purchase amount for different sizes and of items?

SELECT
  Size,
  `Item Purchased`,
  AVG(`Purchase Amount (USD)`) AS AvgPurchaseAmount
FROM
  customer.shopping_trends_updated
GROUP BY
  Size, `Item Purchased`;

-- identify any seasonal trends in customer purchases?

SELECT
  Season,
  COUNT(*) AS TotalPurchases,
  SUM(`Purchase Amount (USD)`) AS TotalPurchaseAmount
FROM
  customer.shopping_trends_updated
GROUP BY
  Season
ORDER BY 
  TotalPurchases DESC
