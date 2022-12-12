USE LW2
GO

CREATE TABLE faculty 
(
  id INT IDENTITY,
  faculty_name VARCHAR(45) NULL DEFAULT NULL,
  dean_name VARCHAR(45) NULL DEFAULT NULL,
  room_number INT NULL DEFAULT NULL,
  building_number INT NULL DEFAULT NULL,
  telephone INT NULL DEFAULT NULL,
  PRIMARY KEY (id)
  )
GO

CREATE TABLE department 
(
  id INT IDENTITY,
  department_name VARCHAR(45) NULL DEFAULT NULL,
  head_name VARCHAR(45) NULL DEFAULT NULL,
  room_number INT NULL DEFAULT NULL,
  building_number INT NULL DEFAULT NULL,
  telephone INT NULL DEFAULT NULL,
  amount_of_teachers INT NULL DEFAULT NULL,
  faculty_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (faculty_id) REFERENCES faculty (id)
  )
GO

CREATE TABLE report_card 
(
  id INT IDENTITY,
  [subject] VARCHAR(45) NULL DEFAULT NULL,
  mark INT NULL DEFAULT NULL,
  PRIMARY KEY (id)
  )
GO


CREATE TABLE [group] (
  id INT IDENTITY,
  name_of_the_group VARCHAR(45) NULL DEFAULT NULL,
  year_of_enrollment INT NULL DEFAULT NULL,
	group_number INT NULL DEFAULT NULL,
  year_of_study INT NULL DEFAULT NULL,
  amount_of_students INT NULL DEFAULT NULL,
  card_id INT NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES department (id),
  FOREIGN KEY (card_id) REFERENCES report_card (id)
)
GO

CREATE TABLE students (
  id INT IDENTITY,
  surname VARCHAR(45) NULL DEFAULT NULL,
  patronymic VARCHAR(45) NULL DEFAULT NULL,
  name VARCHAR(45) NULL DEFAULT NULL,
  year_of_births INT NULL DEFAULT NULL,
  sex VARCHAR(45) NULL DEFAULT NULL,
  [address] VARCHAR(45) NULL DEFAULT NULL,
  city VARCHAR(45) NULL DEFAULT NULL,
  phone_number INT NULL DEFAULT NULL,
  group_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (group_id) REFERENCES [group] (id),
)
Go
