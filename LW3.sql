SELECT *
FROM report_card
WHERE mark > 8;

SELECT *
FROM [group]
WHERE amount_of_students >= 19;

SELECT *
FROM department
WHERE building_number = 71;




SELECT *
FROM [group]
WHERE name_of_the_group = 'cool'
			OR name_of_the_group = 'bears';
					
SELECT *
FROM [group]
WHERE name_of_the_group = 'cool'
			AND name_of_the_group != 'bears';
			
SELECT *
FROM [group]
WHERE name_of_the_group IS NOT NULL;




SELECT *
FROM [group]
WHERE amount_of_students BETWEEN 19 AND 26;

SELECT *
FROM [group]
WHERE name_of_the_group LIKE '%cool';




SELECT *
FROM department
WHERE room_number + building_number > 100;

SELECT *
FROM department
WHERE amount_of_teachers IN (8, 10);





SELECT *
FROM department
WHERE room_number BETWEEN 10 AND 89;

SELECT name AS 'Имя'
FROM students
WHERE year_of_births BETWEEN 2002 AND 2005;




SELECT *
FROM [group]
WHERE name_of_the_group LIKE '%s';

SELECT *
FROM [group]
WHERE name_of_the_group LIKE '%ns'
			OR name_of_the_group LIKE 'b%';




SELECT *
FROM students
WHERE city IS NOT NULL;

SELECT *
FROM department
WHERE telephone IS NOT NULL;



-- декартовое произведение(неявное соединение)

SELECT ROW_NUMBER() OVER(ORDER BY mark) as Row#, *
FROM report_card,[group];

SELECT *
FROM [group], students


-- соединение по равенству
SELECT *
FROM [group]
JOIN students ON [group].id = students.group_id;

SELECT *
FROM [group]
JOIN report_card ON [group].card_id = report_card.id;

SELECT *
FROM faculty
JOIN department ON faculty.id = department.faculty_id;

-- равенство + условия отбора
SELECT *
FROM faculty
JOIN department ON faculty.id = department.faculty_id
WHERE faculty.building_number > 45;

SELECT *
FROM [group]
JOIN report_card ON [group].card_id = report_card.id
WHERE report_card.mark > 8;


-- три таблицы
SELECT students.surname, report_card.mark, report_card.subject
FROM [group]
JOIN students ON students.group_id = [group].id
JOIN report_card ON [group].card_id = report_card.id
WHERE report_card.mark > 8;

SELECT students.surname, department.head_name
FROM [group]
JOIN department ON [group].department_id = department.id
JOIN students ON [group].id = students.group_id;

-- full JOIN
SELECT *
FROM [group]
FULL JOIN students ON [group].id = students.group_id;

SELECT *
FROM [group]
FULL JOIN department ON [group].department_id = department.id;

-- left JOIN

SELECT *
FROM [group]
LEFT JOIN students ON [group].id = students.group_id;

SELECT *
FROM [group]
RIGHT JOIN JOIN report_card ON [group].card_id = report_card.id;


--
SELECT COUNT(DISTINCT mark)
from report_card;

SELECT COUNT(ALL mark)
from report_card;


SELECT SUM(DISTINCT mark)
from report_card;

SELECT SUM(ALL mark)
from report_card;


SELECT UPPER(subject)
from report_card;

SELECT LOWER(department_name)
from department;


SELECT mark
FROM report_card
GROUP BY mark;

SELECT subject
FROM report_card
GROUP BY subject;


SELECT mark, subject
FROM report_card
GROUP BY mark, subject;


SELECT mark
FROM report_card
GROUP BY mark HAVING mark > 5;


SELECT mark
FROM report_card
GROUP BY mark HAVING SUM(ALL mark) > 15;


SELECT avg(mark)
FROM report_card
HAVING SUM(ALL mark) > 21;

SELECT *
from report_card
ORDER BY mark;


SELECT *
from report_card
ORDER BY subject;

INSERT INTO department(department_name, head_name, faculty_id)
VALUES ('new', (SELECT surname FROM students WHERE surname LIKE 'ani%'), 2);

UPDATE students
SET sex = 'male';

UPDATE department
SET amount_of_teachers = 40
WHERE amount_of_teachers IS NULL;


DELETE department
WHERE telephone is NULL;
