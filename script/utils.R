worldmap_selectizeInput_choices <- function(){
  choices <- list(
    "Inflation (%)" = "inflation_pct",
    "Dept GDP (%)" = "debt_gdp_pct",
    "GDP Growth (%)" = "gdp_growth_pct",
    "GDP ($)" = "gdp_usd",
    "Unemployement (%)" = "unemployement_pct",
    "Exports (% of GDP)" = "exports_gdp_pct",
    "Imports (% of GDP)" = "imports_gdp_pct",
    "Population Totale" = "population_total",
    "Broad Money (%)" = "broad_money_pct",
    "Total Reserve ($)" = "total_reserve_usd",
    "GNI ($)" = "gni_usd",
    "Altas Conversion Factor" = "altas_conversion_factor",
    "Urban Population (%)" = "urban_pop_pct",
    "Life Expectancy" = "life_expectancy",
    "Net Primary School Enrol." = "net_enrol_primary",
    "Net Secondary School Enrol." = "net_enrol_secondary",
    "Tertiary Enrol." = "enrol_tertiary_gross",
    "Fertility Rate" = "fertility_rate",
    "Population Growth" = "pop_growth_pct" 
  )
  return(choices)
}