select
    date_date
    ,COUNT(orders_id) AS total_number_of_transactions
    ,ROUND(SUM(revenue),2) AS total_revenue
    ,ROUND(SUM(revenue)/COUNT(orders_id),2) AS average_basket
    ,ROUND(SUM(operational_margin),2) AS operational_margin
    ,ROUND(SUM(purchase_cost),2) AS total_purchase_cost
    ,ROUND(SUM(shipping_fee),2) AS total_shipping_fees
    ,ROUND(SUM(total_log_cost),2) AS total_log_cost
    ,SUM(quantity) AS total_qty_of_products_sold
from {{ ref('int_orders_operational') }}
group by date_date
order by date_date desc