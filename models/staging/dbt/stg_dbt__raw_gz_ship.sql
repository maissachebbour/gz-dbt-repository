with 

source as (

    select * from {{ source('dbt', 'raw_gz_ship') }}

),

renamed as (

    select orders_id, shipping_fee, logCost, (ship_cost,FLOAT 64)

    from source

)

select * from renamed
