with sub_margin as(
    select
    *
    from {{ ref('stg_raw__sales') }}
    left join   {{ ref('stg_raw__product') }}
    using   (products_id)
)

select
    date_date
    ,orders_id
    ,products_id
    ,quantity
    ,revenue
    ,ROUND(quantity*purchase_price,2) AS purchase_cost
    ,ROUND(revenue-quantity*purchase_price,2) AS margin
from sub_margin
