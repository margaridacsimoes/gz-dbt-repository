select 
margin_orders.date_date
,margin_orders.orders_id
,margin_orders.revenue
,margin_orders.quantity
,margin_orders.purchase_cost
,margin_orders.margin
,ship.shipping_fee
,ship.ship_cost_
,logcost
,(margin_orders.margin + ship.shipping_fee -ship.logcost - ship.ship_cost_) as operational_margin

from {{ ref ('int_orders_margin')}} as margin_orders

JOIN

{{ ref ('stg_raw__ship')}} as ship 

on margin_orders.orders_id = ship.orders_id