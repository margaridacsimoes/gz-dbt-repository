select 
sales.date_date
,sales.orders_id
,sales.products_id
,sales.revenue
,sales.quantity
,product.purchase_price

, (quantity * purchase_price) as purchase_cost
, (revenue - (quantity * purchase_price)) as margin
, {{margin_percentage ('revenue', 'purchase_price')}} as percentage_margin

from {{ ref ('stg_raw__sales')}} as sales

JOIN

{{ ref ('stg_raw__product')}} as product 

on sales.products_id = product.products_id