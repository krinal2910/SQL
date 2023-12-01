-- What are the top-selling products by category?
SELECT
  Category,
  `Item Purchased` AS TopSellingProduct,
  SUM(`Purchase Amount (USD)`) AS TotalSales
FROM
  customer.shopping_trends_updated
GROUP BY
  Category, `Item Purchased`
ORDER BY
  Category, TotalSales DESC;
  


