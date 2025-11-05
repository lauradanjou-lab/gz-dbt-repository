select
    extract(MONTH from date_date) as datemonth
    ,IFNULL(ROUND(SUM(ads_margin),2),0) as ads_margin 
    ,IFNULL(ROUND(SUM(average_basket),2),0) as average_basket 
    ,IFNULL(ROUND(SUM(operational_margin),2),0) as operational_margin
    ,IFNULL(ROUND(SUM(ads_cost),2),0) as ads_cost
    ,IFNULL(ROUND(SUM(impression),2),0) as ads_impression
    ,IFNULL(ROUND(SUM(click),2),0) as ads_clicks
    ,IFNULL(ROUND(SUM(total_qty_of_products_sold),2),0) as quantity 
    ,IFNULL(ROUND(SUM(total_revenue),2),0) as revenue
    ,IFNULL(ROUND(SUM(total_purchase_cost),2),0) as purchase_cost
    ,IFNULL(ROUND(SUM(total_shipping_fees),2),0) as shipping_fee 
    ,IFNULL(ROUND(SUM(total_log_cost),2),0) as log_cost 
    ,IFNULL(ROUND(SUM(total_shipping_fees),2),0) as ship_cost
from {{ ref('finance_campaigns_day') }}
group by datemonth
order by datemonth desc