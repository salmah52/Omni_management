SELECT
    dd.year_number,
    dd.quarter_of_year,
    ROUND(SUM(fct.mtr_total_amount_net), 2) as sum_total_amount_with_discount
FROM omni_channel.fct_purchase_history fct
LEFT JOIN omni_channel.dim_date dd
    ON dd.date_day = fct.sk_order_date
GROUP BY dd.year_number, dd.quarter_of_year


-- OMNI_MANAGEMENT.OMNI_CHANNEL_MART_FACT.FCT_VISIT_HISTORY