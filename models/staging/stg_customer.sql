with customer as(
select
    * 
from {{source('raw','customer')}}
)
SELECT 
    customerid
    ,accountnumber
    ,storeid
    ,territoryid
FROM 
    customer
where 
    customerid is not null
