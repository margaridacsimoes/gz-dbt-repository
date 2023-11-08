select 
date_date,
sum(ads_costs) as ads_cost,
sum(impression) as ads_impression,
sum(click) as ads_click


from {{ref("int_campaigns")}}

group by date_date