select
date_date
,COUNT (orders_id) as nb_transactions
,SUM(revenue) as revenue_sum
,AVG (quantity) as average_basket
,SUM (margin) as margin_sum
,SUM (operational_margin) as operational_margin_sum

from {{ ref ('int_orders_operational')}}

group by date_date
