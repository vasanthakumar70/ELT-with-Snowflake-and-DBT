


select
    *
from {{ model }}
where (orderdate > shipdate or orderdate > duedate)
  and orderdate is not null
  and shipdate is not null
  and duedate is not null 
