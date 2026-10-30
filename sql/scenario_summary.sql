SELECT
    scenario,
    SUM(scenario_passengers) AS passengers,
    SUM(modelled_revenue_gbp_m) AS revenue_gbp_m,
    SUM(modelled_operating_cost_gbp_m) AS operating_cost_gbp_m,
    SUM(modelled_adjusted_ebitda_gbp_m) AS adjusted_ebitda_gbp_m,
    100.0 * SUM(modelled_adjusted_ebitda_gbp_m)
        / SUM(modelled_revenue_gbp_m) AS adjusted_ebitda_margin_pct
FROM scenarios_monthly
GROUP BY scenario
ORDER BY adjusted_ebitda_gbp_m DESC;
