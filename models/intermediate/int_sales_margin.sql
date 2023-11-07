select *

, (quantity * purchase_price) as purchase_cost
, (revenue - (quantity * purchase_price)) as margin

from {{ ref ('stg_raw__sales')}} as sales

JOIN

{{ ref ('stg_raw__product')}} as product 

on sales.products_id = product.products_id