with salesperson as(
    select * from {{source('raw','salesperson')}}
)
SELECT 
    BUSINESSENTITYID,
    round(BONUS,2) as BONUS,
    round(COMMISSIONPCT,2) as COMMISSIONPCT,
    date(MODIFIEDDATE) as MODIFIEDDATE,
    round(SALESLASTYEAR,2) as SALESLASTYEAR,
    round(SALESQUOTA,2) as SALESQUOTA,
    round(SALESYTD,2) as SALESYTD,
    TERRITORYID
FROM 
    salesperson