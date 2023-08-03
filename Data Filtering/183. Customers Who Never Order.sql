select name as customers
from Customers
where not id  = any (
    select customerId from Orders
)
