INSERT INTO report_card (subject, mark)
	VALUES ('math', 9),
				('programming', 7),
				('math', 4),
				('programming', 10),
				('db', 10),
				('db', 7);


INSERT INTO faculty(faculty_name, dean_name, room_number, building_number, telephone)
	VALUES ('Faculty of Computer-Aided Design', 'Dmitry Likhacheuski', 312, 45, 802934522),
				('Faculty of information security', 'Siarhei Drobat', 234, 49, 802989722),
				('Faculty of Radioengineering and Electronics', 'Alexander Korotkevich', 185, 45, 802989028);				

INSERT INTO department(department_name, head_name, room_number, building_number, telephone, amount_of_teachers, faculty_id)
	VALUES ('Engineering and Computer Graphics', 'Stoler Uladzimir', 234, 783, 802956749, 10, 1),
				('Foreign languages', 'Klokova Anna', 82, 71, 802909349, 5, 1),
				('Information Security', 'Borbotko Timophey', 53, 90, 802993782, 7, 2),
				('Infocommunication technologies', 'Tsviatkou Viktar', 11, 56, 802593900, 15, 2),
				('Electronics', 'Satsuk Siarhei', 90, 37, 802893761, 8, 3),
				('Micro- and Nanoelectronics', 'Victor Borisenko', 74, 981, 802693230, 8, 3);
				
		
INSERT INTO [group](name_of_the_group, year_of_enrollment, group_number, year_of_study, amount_of_students, card_id, department_id)
	VALUES ('cool', 2019, 914303, 4, 15, 1, 1),
				('not_cool', 2019, 914302, 4, 25, 2, 2),
				('not_cool', 2019, 914301, 4, 24, 3, 3),
				('bears', 2019, 914304, 4, 30, 4, 4),
				('racoons', 2019, 914305, 4, 27, 5, 5),
				('eagls', 2019, 914306, 4, 10, 6, 6);
				
	
	
INSERT INTO students(surname, patronymic, name, year_of_births, sex, address, city, phone_number, group_id)
	VALUES ('Anishchanks', 'Dzmitrievich', 'Pavel', 2001, 'male', 'Zacen 45', 'Minsk', 802947752, 1),
				('Gatsko', 'Dzmitrievich', 'Artem', 2001, 'male', 'Rechitsa 7', 'Minsk', 802947839, 2),
				('Skydnaya', 'Sergeevna', 'Alina', 2002, 'female', 'Biridina 78', 'Minsk', 802947120, 3);
				
				

