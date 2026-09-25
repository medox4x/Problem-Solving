# Write your MySQL query statement below
select S.student_id,S.student_name,Sub.subject_name,count(E.subject_name) as attended_exams
from Students as S 
cross join Subjects Sub
left join Examinations as E
on S.student_id = E.student_id and Sub.subject_name = E.subject_name
group by S.student_id,
         S.student_name,
         Sub.subject_name
order by 
         S.student_id;
# the cross join 3 student multiple all subject for all student (makes all cases)