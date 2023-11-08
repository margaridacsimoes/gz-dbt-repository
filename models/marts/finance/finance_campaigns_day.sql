select 
campaign.date_date
,campaign.ads_cost
,campaign.ads_click
,campaign.ads_impression
,finance_day.operational_margin_sum
,(finance_day.operational_margin_sum - campaign.ads_cost) as ads_margin

from {{ref("finance_days")}} as finance_day
join {{ref("int_campaign_day")}} as campaign 
on finance_day.date_date = campaign.date_date 