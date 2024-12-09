{{config(
   materialized='table'
)}} 

with employee as(
    select * from {{ref('int_employee')}}
)
,salesperson as(
    select * from {{ref('int_salesperson')}}
)
select 
    e.* 
    ,storeName
    ,bonus
    ,commissionpct
    ,saleslastyear
    ,salesquota
    ,salesytd
    ,territoryid
from employee e 
join salesperson s on e.businessentityid=s.BUSINESSENTITYID