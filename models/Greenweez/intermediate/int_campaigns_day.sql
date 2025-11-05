select
    date_date
    ,ROUND(SUM(ads_cost),2) AS ads_cost
    ,SUM(impression) AS impression
    ,SUM(click) AS click
from {{ ref('int_campaigns') }}
group by date_date 
order by date_date desc