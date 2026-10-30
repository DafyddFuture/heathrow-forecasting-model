SELECT
    month,
    passengers,
    passenger_status,
    baseline_passengers,
    modelled_revenue_gbp_m,
    baseline_revenue_gbp_m,
    revenue_variance_gbp_m,
    revenue_variance_pct,
    modelled_operating_cost_gbp_m,
    baseline_operating_cost_gbp_m,
    cost_variance_gbp_m,
    modelled_adjusted_ebitda_gbp_m,
    baseline_adjusted_ebitda_gbp_m,
    ebitda_variance_gbp_m,
    ebitda_variance_status,
    financial_data_status
FROM financial_model_monthly
ORDER BY month;
