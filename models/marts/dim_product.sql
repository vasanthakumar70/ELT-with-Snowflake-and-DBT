{{config(
    materialized='table'
)}}

with product as(
select * 
from {{ref('stg_product')}}
)
,category as(
    select * from {{ref('stg_productcategory')}}
)
,subcategory as(
    select * from {{ref('stg_productsubcategory')}}
)
select 
    p.*
    ,s.name as Subcategory
    ,c.name as Category
from product p
join subcategory s on p.PRODUCTSUBCATEGORYID=s.productsubcategoryid
join category c on c.productcategoryid=s.productcategoryid