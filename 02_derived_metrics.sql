CREATE OR REPLACE VIEW orders_derived_metrics AS
SELECT
    *,
    ("Days for shipping (real)" - "Days for shipment (scheduled)") AS shipping_delay_days,
    CASE
        WHEN "Days for shipping (real)" > "Days for shipment (scheduled)" THEN 1
        ELSE 0
    END AS is_late_delivery,
    CASE
        WHEN "Order Item Total" <> 0
        THEN "Order Profit Per Order" / "Order Item Total"
        ELSE NULL
    END AS profit_margin
FROM orders_raw;
