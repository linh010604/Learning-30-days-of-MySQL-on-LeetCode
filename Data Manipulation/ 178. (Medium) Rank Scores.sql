select round(score,2) as score , 
dense_rank() 
OVER (  order by score desc ) 
AS 'rank'
from scores order by score desc
