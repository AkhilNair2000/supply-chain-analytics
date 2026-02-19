CREATE OR REPLACE VIEW vw_shipping_performance AS
SELECT
    "Shipping Mode",
    "Order Region",
    COUNT(*) AS total_orders,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay_days,
    SUM(is_late_delivery) AS late_orders,
    ROUND(100.0 * SUM(is_late_delivery) / COUNT(*), 2) AS late_delivery_rate
FROM orders_derived_metrics
GROUP BY
    "Shipping Mode",
    "Order Region";
