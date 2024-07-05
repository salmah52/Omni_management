SELECT dd.year_number,
      dd.quarter_of_year,
      ROUND(SUM(fct.mtr_total_amount_net),2) as sum_total_amount_with_discount
FROM `omnichannel_analytics`.`fct_purchase_history` fct
LEFT JOIN `omnichannel_analytics`.`dim_date` dd
                              on dd.date_day = fct.sk_order_date
GROUP BY dd.year_number,dd.quarter_of_year