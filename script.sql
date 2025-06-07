-- Monthly Sales Trend Analysis
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2023-01-01' AND '2023-12-31'  -- Adjust time period as needed
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year ASC,
    month ASC;
