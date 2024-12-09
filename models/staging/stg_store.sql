with store as(
    select * from {{source('raw','store')}}
)
SELECT 
    BUSINESSENTITYID,
    DEMOGRAPHICS,
    MODIFIEDDATE,
    NAME,
    ROWGUID,
    SALESPERSONID
FROM 
    store
