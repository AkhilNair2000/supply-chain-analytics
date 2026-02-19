CREATE OR REPLACE VIEW vw_daily_trends AS
SELECT
    DATE("Order Date (DateOrders)") AS order_date,
    COUNT(DISTINCT "Order Id") AS total_orders,
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(SUM("Order Profit Per Order"), 2) AS total_profit,
    ROUND(AVG(shipping_delay_days), 2) AS avg_shipping_delay,
    ROUND(100.0 * SUM(is_late_delivery) / COUNT(*), 2) AS late_delivery_rate
FROM orders_derived_metrics
GROUP BY DATE("Order Date (DateOrders)");

CREATE OR REPLACE VIEW vw_monthly_trends AS
SELECT
    DATE_TRUNC('month', "Order Date (DateOrders)") AS order_month,
    COUNT(DISTINCT "Order Id") AS total_orders,
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(SUM("Order Profit Per Order"), 2) AS total_profit,
    ROUND(AVG(profit_margin), 4) AS avg_profit_margin,
    ROUND(100.0 * SUM(is_late_delivery) / COUNT(*), 2) AS late_delivery_rate
FROM orders_derived_metrics
GROUP BY DATE_TRUNC('month', "Order Date (DateOrders)");

