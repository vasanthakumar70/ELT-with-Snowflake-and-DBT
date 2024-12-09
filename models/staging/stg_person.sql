with person as(
    select * from {{source('raw','person')}}
)

SELECT 
    ADDITIONALCONTACTINFO,
    BUSINESSENTITYID,
    EMAILPROMOTION,
    trim(FIRSTNAME) as FIRSTNAME,
    trim(LASTNAME) as LASTNAME,
    trim(MIDDLENAME) as MIDDLENAME,
    MODIFIEDDATE,
    NAMESTYLE,
    PERSONTYPE,
    SUFFIX,
    TITLE
FROM 
    person 
where BUSINESSENTITYID is not null
