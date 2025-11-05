select
    date_date
    ,ROUND(SUM(ads_cost),2) AS ads_cost
    ,IFNULL(SUM(impression),0) AS impression
    ,IFNULL(SUM(click),0) AS click
from {{ ref('int_campaigns') }}
group by date_date 
order by date_date desc