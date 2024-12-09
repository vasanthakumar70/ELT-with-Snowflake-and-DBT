with subcategory as(
    select * from {{source('raw','productsubcategory')}}
)
SELECT 
    productsubcategoryid,
    name,
    productcategoryid ,
FROM 
    subcategory 
where productsubcategoryid is not null
