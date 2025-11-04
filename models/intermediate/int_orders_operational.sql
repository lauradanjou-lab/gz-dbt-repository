select
    m.orders_id
    ,m.date_date
    ,m.revenue
    ,m.quantity
    ,m.purchase_cost
    ,m.margin
    ,ROUND(m.margin+ship.shipping_fee-ship.log_cost-ship.ship_cost,2) AS operational_margin
from {{ ref('int_orders_margin') }} as m
left join {{ ref('stg_raw__ship') }} as ship
using(orders_id)
