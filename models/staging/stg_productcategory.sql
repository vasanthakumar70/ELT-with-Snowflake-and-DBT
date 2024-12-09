with category as(
    select * from {{source('raw','productcategory')}}
)
SELECT 
    name,
    productcategoryid ,
FROM 
    category 
where productcategoryid is not null
