{{config(
   materialized='view'
)}} 


with salesperson as
(
select * from {{ref('stg_salesperson')}}
)
,store as 
(
select * from {{ref('stg_store')}})
select 
    p.BUSINESSENTITYID
    ,s.name as storeName
    ,bonus
    ,commissionpct
    ,saleslastyear
    ,salesquota
    ,salesytd
    ,territoryid
    from salesperson p
join store s on p.businessentityid=s.salespersonid