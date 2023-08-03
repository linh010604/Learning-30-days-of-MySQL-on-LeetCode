select A.name
from Employee A
join Employee B on A.id = B.managerId 
group by A.name
having count(*) > 4
;
