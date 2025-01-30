SELECT s.student_id, s.student_name, ss.subject_name, COUNT(e.subject_name) as attended_exams
FROM Students s
CROSS JOIN Subjects ss
left join Examinations e
on s.student_id = e.student_id AND ss.subject_name = e.subject_name
group by s.student_id, s.student_name, ss.subject_name
order by s.student_id, ss.subject_name 
