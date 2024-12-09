with orderdetails as
(
    select * from {{source('raw','salesorderdetail')}}
)
SELECT 
    CARRIERTRACKINGNUMBER,
    round(LINETOTAL,2) LINETOTAL,
    MODIFIEDDATE,
    ORDERQTY,
    PRODUCTID,
    SALESORDERDETAILID,
    SALESORDERID,
    SPECIALOFFERID,
    round(UNITPRICE,2) UNITPRICE,
    round(UNITPRICEDISCOUNT,2) UNITPRICEDISCOUNT
FROM 
    orderdetails