CREATE SCHEMA BC_PROGRAM;

CREATE TABLE if not exists BC_PROGRAM.Students (
ID_Number INT not null, 
emailAccount varchar(100) not null, 
firstName varchar(45) not null, 
lastName varchar(45) not null, 
dateOfGraduation DATE not null, 
enrollDate DATE not null, 
degree varchar(45) not null, 
primary key (ID_Number),
unique (ID_Number, emailAccount) 
);
CREATE TABLE if not exists BC_PROGRAM.alumni (
formerID_Number INT not null, 
emailAddress varchar(100) not null, 
firstName varchar(45) not null, 
lastName varchar(45) not null, 
phoneNumber varchar(45) not null, 
primary key (formerID_Number), 
unique (formerID_Number) 
); 
CREATE TABLE if not exists BC_PROGRAM.On_Campus (
dormName varchar(45) not null, 
dormRoomNumber varchar(45) not null, 
dormPhoneNumber varchar(45) not null, 
offCampusAddress varchar(45) not null,
ID_Number INT not null,
foreign key(ID_Number) references Students(ID_Number)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE if not exists BC_PROGRAM.Off_Campus(
homeAddress varchar(45) not null, 
homeCity varchar(45) not null,
homeState varchar(45) not null, 
homeZIPCode varchar(45) not null,
ID_Number INT not null, 
alumni_formerIDNumber INT not null, 
foreign key(ID_Number) references Students(ID_Number),
foreign key(alumni_formerIDNumber) references alumni(formerID_Number)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE if not exists BC_PROGRAM.advisors (
ID_Number INT not null, 
emailAddress varchar(100) not null, 
facultyLastName varchar(45) not null,
facultyFirstName varchar(45) not null,  
dept varchar(45) not null,
officeBuildingName varchar(45),
officeRoomNumber varchar(45), 
officePhoneNumber varchar(45),
primary key (ID_Number), 
unique(ID_Number, emailAddress)
);
CREATE TABLE if not exists BC_PROGRAM.alumniAdvisor (
alumni_formerIDNumber INT not null, 
advisors_ID_Number INT not null,
foreign key(alumni_formerIDNumber) references alumni(formerID_Number),
foreign key(advisors_ID_Number) references advisors(ID_Number)

);
CREATE TABLE if not exists BC_PROGRAM.studentAdvisor (
students_ID_Number INT not null, 
advisors_ID_Number INT not null,
dateEnded DATE not null, 
dateAssigned DATE not null, 
foreign key(students_ID_Number) references Students(ID_Number),
foreign key(advisors_ID_Number) references advisors(ID_Number)
);
CREATE TABLE if not exists BC_PROGRAM.mentors (
emailAddress varchar(100) not null, 
lastName varchar(45) not null, 
firstName varchar(45) not null,
alumniAdvisor_students_ID_Number INT not null, 
alumniAdvisor_advisors_ID_Number INT not null, 
primary key(emailAddress), 
foreign key (alumniAdvisor_students_ID_Number) references studentAdvisor(students_ID_Number), 
foreign key (alumniAdvisor_advisors_ID_Number) references studentAdvisor(advisors_ID_Number)
);
CREATE TABLE if not exists BC_PROGRAM.mentorsCompany (
companyEmailAddress varchar(45) not null, 
companyName varchar(45) not null,
companyAddress varchar(45) not null, 
companyCity varchar(45) not null,
companyState varchar(45) not null,
companyZIPCode varchar(45) not null, 
companyPhoneNumber varchar(45) not null, 
mentors_emailAddress varchar(45) not null, 
primary key(companyEmailAddress),
foreign key(mentors_emailAddress) references mentors(emailAddress) 
); 

DROP TABLE IF EXISTS BC_PROGRAM.On_Campus;
DROP TABLE IF EXISTS BC_PROGRAM.Off_Campus;
DROP TABLE IF EXISTS BC_PROGRAM.mentorsCompany;
DROP TABLE IF EXISTS BC_PROGRAM.mentors;
DROP TABLE IF EXISTS BC_PROGRAM.studentAdvisor;
DROP TABLE IF EXISTS BC_PROGRAM.alumniAdvisor;
DROP TABLE IF EXISTS BC_PROGRAM.alumni;
DROP TABLE IF EXISTS BC_PROGRAM.advisors;
DROP TABLE IF EXISTS BC_PROGRAM.Students;
DROP SCHEMA IF EXISTS BC_PROGRAM;



