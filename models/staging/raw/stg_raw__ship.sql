with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        CAST (ship_cost as int64) as ship_cost_

    from source

)

select * from renamed
