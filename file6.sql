--    How does the average purchase amount differ between subscribed and non-subscribed customers?
SELECT `Subscription Status`, AVG(`Purchase Amount (USD)`) AvgPurchaseAmount
FROM customer.shopping_trends_updated
GROUP BY `Subscription Status`;

-- Are subscribed customers more likely to use promo codes?
SELECT 
COUNT(*) AS TotalCustomers, 
SUM(CASE WHEN `Promo Code Used` = 'Yes' THEN 1 ELSE 0 END) PromocodeUser, 
`Subscription Status`
FROM customer.shopping_trends_updated
GROUP BY `Subscription Status`


