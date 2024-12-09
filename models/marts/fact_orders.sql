{{config(
    materialized='table'
)}}


with orderheader as
(
select * from {{ref("stg_orderheader")}}
)
,orderdetails as
(
select * from {{ref('stg_orderdetails')}}
)
select 
    {{dbt_utils.generate_surrogate_key(
        ['oh.salesorderid',
        'od.salesorderdetailid']
    )}} as primary_key
    ,oh.salesorderid
    ,od.salesorderdetailid
    ,od.productid
    ,od.orderqty
    ,od.unitprice
    ,od.unitpricediscount
    ,oh.customerid
    ,oh.onlineorderflag
    ,oh.orderdate
    ,oh.duedate
    ,oh.shipdate
    ,oh.subtotal
    ,oh.freight
    ,oh.taxamt
    ,oh.totaldue
from orderheader oh
join stg_orderdetails od on oh.salesorderid=od.salesorderid
order by oh.salesorderid