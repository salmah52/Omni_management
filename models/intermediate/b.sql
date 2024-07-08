SELECT dc.dsc_channel_name,
      ROUND(AVG(mtr_length_of_stay_minutes),2) as avg_length_of_stay_minutes
FROM omni_channel_mart_fact.fct_visit_history fct
LEFT JOIN omni_channel.dim_channels dc
on fct.sk_channel = dc.sk_channel
GROUP BY dc.dsc_channel_name


-- OMNI_MANAGEMENT.OMNI_CHANNEL_MART_FACT.FCT_VISIT_HISTORY