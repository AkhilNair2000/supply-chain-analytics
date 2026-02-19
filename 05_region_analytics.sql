CREATE OR REPLACE VIEW vw_region_performance AS
SELECT
    "Market",
    "Order Region",
    COUNT(DISTINCT "Order Id") AS total_orders,
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay,
    ROUND(100.0 * SUM(is_late_delivery) / COUNT(*), 2) AS late_delivery_rate
FROM orders_derived_metrics
GROUP BY
    "Market",
    "Order Region";
