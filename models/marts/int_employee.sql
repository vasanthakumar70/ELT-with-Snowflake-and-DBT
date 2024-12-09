{{config(
    materialized='view'
)}}


with employee as(
select * from {{ref("stg_employee")}}
)
,person as 
(
select * from {{ref('stg_person')}}
)
select 
    concat(p.firstname,' ',p.lastname) as fullname
    ,e.*
from employee e 
left join person p on e.businessentityid=p.businessentityid