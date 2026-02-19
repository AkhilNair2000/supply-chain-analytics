CREATE OR REPLACE VIEW vw_profitability AS
SELECT
    "Category Name",
    "Order Region",
    COUNT(DISTINCT "Order Id") AS total_orders,
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(SUM("Order Profit Per Order"), 2) AS total_profit,
    ROUND(AVG(profit_margin), 4) AS avg_profit_margin
FROM orders_derived_metrics
GROUP BY
    "Category Name",
    "Order Region";
