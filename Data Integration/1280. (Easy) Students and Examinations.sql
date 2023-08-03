select S.student_id,S.student_name,SS.subject_name, count(E.student_id) as attended_exams
from Students S 
join Subjects SS 
left join examinations E
on S.student_id = E.student_id and SS.subject_name = E.subject_name
group by S.student_id , SS.subject_name
order by S.student_id , SS.subject_name
