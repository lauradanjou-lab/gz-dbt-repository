select
    extract(MONTH from date_date) as datemonth
    ,ROUND(SUM(ads_margin),2) as ads_margin 
    ,ROUND(SUM(average_basket),2) as average_basket 
    ,ROUND(SUM(operational_margin),2) as operational_margin
    ,ROUND(SUM(ads_cost),2) as ads_cost
    ,ROUND(SUM(impression),2) as ads_impression
    ,ROUND(SUM(click),2) as ads_clicks
    ,ROUND(SUM(total_qty_of_products_sold),2) as quantity 
    ,ROUND(SUM(total_revenue),2) as revenue
    ,ROUND(SUM(total_purchase_cost),2) as purchase_cost
    ,ROUND(SUM(operational_margin),2) as operational_margin 
    ,ROUND(SUM(total_shipping_fees),2) as shipping_fee 
    ,ROUND(SUM(total_log_cost),2) as log_cost 
    ,ROUND(SUM(total_shipping_fees),2) as ship_cost
from {{ ref('finance_campaigns_day') }}
group by datemonth
order by datemonth desc