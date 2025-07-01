with 

source as (

    select * from {{ source('dbt', 'raw_gz_product') }}

),

renamed as (

    select
        products_id,
        (purchase_price,FLOAT 64)

    from source

)

select * from renamed
