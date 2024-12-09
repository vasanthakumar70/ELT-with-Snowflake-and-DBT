{{config(
    materialized='view'
)}}


with customer as (
    select * from {{ref("stg_customer")}}
)
, person as (
    select * from {{ref("stg_person")}}
)
select 
    concat(p.firstname, ' ', p.lastname) as fullname,
    c.*
from customer c
left join person p 
    on p.businessentityid = c.customerid