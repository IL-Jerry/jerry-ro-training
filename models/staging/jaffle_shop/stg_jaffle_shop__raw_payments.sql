with 

source as (

    select * from {{ source('jaffle_shop', 'raw_payments') }}

),

renamed as (

    select
        id,
        order_id,
        payment_method,
        amount

    from source

)

select * from renamed
