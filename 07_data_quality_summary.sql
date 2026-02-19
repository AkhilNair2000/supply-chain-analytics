CREATE OR REPLACE VIEW data_quality_summary AS
SELECT
    (
        CASE WHEN order_id_null_pct > 0 THEN 1 ELSE 0 END +
        CASE WHEN order_date_null_pct > 0 THEN 1 ELSE 0 END +
        CASE WHEN shipping_date_null_pct > 0 THEN 1 ELSE 0 END +
        CASE WHEN profit_null_pct > 0 THEN 1 ELSE 0 END
    ) AS columns_with_nulls,
    (SELECT invalid_date_records FROM dq_invalid_dates) AS invalid_date_records,
    (SELECT negative_profit_records FROM dq_negative_profit) AS negative_profit_records,
    (SELECT inconsistent_late_delivery_records FROM dq_late_delivery_inconsistency) AS late_delivery_inconsistencies,
    (SELECT duplicate_order_ids FROM dq_duplicate_order_ids) AS duplicate_order_ids
FROM dq_null_percentage;

SELECT * FROM data_quality_summary;
