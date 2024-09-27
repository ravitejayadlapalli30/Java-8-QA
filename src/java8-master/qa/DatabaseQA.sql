

//1. Uppercase
    SELECT upper(FIRST_NAME) as STUDENT_NAME from Student;

//2. UNIQUE
    SELECT DISTINCT MAJOR from STUDENT;

//3. SUBSTRING
    SELECT SUBSTRING(FIRST_NAME, 1, 3)  FROM Student;

//4. Get the distinct name and the length of column
	SELECT DISTINCT MAJOR, LENGTH(MAJOR) FROM Student;

//5. REPLACE with other characters
	SELECT REPLACE(FIRST_NAME, 'a', 'A') FROM Student;

//6. Combine first name and last name
	SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME FROM Student;

//7. Order by first_name
	SELECT * FROM Student ORDER BY FIRST_NAME , MAJOR DESC;

//8. Using IN
	SELECT * from Student WHERE FIRST_NAME IN ('Prem' , 'Shivansh');

//9. NOT IN
	 SELECT * from Student WHERE FIRST_NAME NOT IN ('Prem', 'Shivansh');

//10. Using LIKE (Whose name ends with 'a')
	SELECT * FROM Student WHERE FIRST_NAME LIKE '%a';

//11.(Whose name starts with 'a')
    SELECT * from student where first_name LIKE 'a%';

//12. first_name and total count of first_name
	SELECT MAJOR, COUNT(*) as Total_count from student where MAJOR = 'Computer Science';\

/13. group by major and order by count of major desc
	SELECT MAJOR, COUNT(MAJOR) from Student group by MAJOR order by COUNT(MAJOR) DESC;

//14. Average GPA from table
	SELECT MAJOR, AVG(GPA) AS AVERAGE_GPA FROM Student GROUP BY MAJOR;

//15. Get first 3 highest salary
	SELECT * FROM Student ORDER BY GPA DESC LIMIT 3;

//16. Joins
    Select e.employee_name, e.employee_id, d.department_name from employees e
        INNER JOIN departments d ON e.employee_id = d.department_id;