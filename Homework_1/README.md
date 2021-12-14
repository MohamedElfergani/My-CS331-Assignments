Homework 1-Database Design 
Due: Friday 5th 2021 at 11:59PM
Objectives  
Understand and apply the Database designer role by... 
• Apply the basic steps of systems analysis and design
• Apply the basic stages of database development
• Understand the purpose and role of a data model
• Apply knowledge of how to transform EE-R data models into relational model
• Use basic SQL statements to transfer your data model design into the logical model to
work with the chosen RDBMS
• Learn how to use MySQL as an example for a RDBMS
Introduction 
Bellevue College is a 4-year undergraduate school located in the Puget Sound region of 
Washington State. Dr. Gary Locke is the Interim President of Bellevue College, and Dr. Kristen 
Jones is the provost (a provost is a vice president of academics; the deans of the divisions report 
to the provost). Bellevue College--like many colleges and universities-- needs to provide a 
College’s Mentor Program. 
The college is looking for a volunteer to help develop a data model for the Mentor Program 
Information System. The system will be used by Bellevue College’s Mentor Program. The 
Bellevue College Mentor Program recruits business professionals as mentors for the college 
students. The mentors are unpaid volunteers who work together with the students’ advisors to 
ensure that the students in the mentoring program learn needed and relevant management skills. 
Requirements 
Here is some information that describes how the Mentor’s program works at Bellevue College.  
Bellevue College’s Mentor Program interacts with students, advisors, mentors, and also college 
alumni, since the program administrators view alumni as potential mentors. 
At Bellevue College, all students live on or off-campus and are assigned a unique Bellevue 
College ID number and email account in the format of  
FirstName.LastName@bellevuecollege.edu. The students last name, first name, College ID 
number, email address, dorm name, dorm room number, dorm phone number, and their off-
campus address are all information that we know about each student. Also, we keep track of the 
date a student enrolled at Bellevue college, the date the student graduated, and the degree the 
student received. 
All faculty advisors have on-campus offices and are assigned a unique Bellevue College ID 
number and email accounts in the format FirstName.LastName@bellevuecollege.edu. The 
faculty’s last name, first name, college ID number, email address, department, office building 
name, office building room number, and office phone number are all information known about 
each faculty. A faculty member could be a Bellevue College alumnus. 
2 
All Bellevue College alumni live off campus and were previously assigned a unique Bellevue 
College ID number. Alumni have private email accounts in the format 
FirstName.LastName@somewhere.com. The alumnus last name, first name, former-student 
number, email address, home address, home city, home state, home ZIP code, and phone number 
are all known information about the alumnus. Bellevue College does have alumni return for 
further study. 
Bellevue College mentors work for companies and use their company address, phone, and email 
address for contact information. They do not have Bellevue college ID numbers as mentors. 
Email addresses are in the format FirstName.LastName@companyname.edu.The mentor is 
tracked by their last name, first name,  email address, company name, company address, 
company city, company state, company ZIP code, and company phone number. Each mentor 
may be an alumnus, but mentors are not required to be alumni. Alumni cannot, of course, be 
required to become mentors. 
At Bellevue College each student is assigned one and only one faculty advisor and must have an 
advisor. One faculty member may advise several students, but faculty members are not required 
to advise students. The date an advisor was assigned to a student and the date the assignment 
ended are recorded.  Also, each student may be assigned one and only one mentor, but students 
are not required to have a mentor. One mentor may mentor several students, and a person may be 
listed as a mentor before he or she is actually assigned students to mentor. When a mentor is 
assigned to a student. the date of assignment to a student and the date the assignment ended are 
both recorded. 
The College required that each mentor to be assigned to work and coordinate with one and only 
one faculty member, and each mentor must work with a faculty member. One faculty member 
may work with several mentors, but faculty members are not required to work with mentors. The 
date an advisor was assigned to work with a mentor and the date the assignment ended are also 
recorded 
Tasks 
1. Draw an EE-R data model for the Bellevue College Mentor Program Information System
(BCMIS). Use MySQL Workbench E-R model to present your EE-R diagrams. Justify,
the decisions you make regarding minimum and maximum cardinalities
2. Convert this data model to a Relations database. Specify tables, primary keys, and
foreign keys.
a. Map out the EE-R model to the equivalent logical Relational Model and define
the final schema
b. Write SQL Create Table statements for each of these tables. Consider avoiding
the mistake of creating a table that does already exist in the schema2 
All Bellevue College alumni live off campus and were previously assigned a unique Bellevue 
College ID number. Alumni have private email accounts in the format 
FirstName.LastName@somewhere.com. The alumnus last name, first name, former-student 
number, email address, home address, home city, home state, home ZIP code, and phone number 
are all known information about the alumnus. Bellevue College does have alumni return for 
further study. 
Bellevue College mentors work for companies and use their company address, phone, and email 
address for contact information. They do not have Bellevue college ID numbers as mentors. 
Email addresses are in the format FirstName.LastName@companyname.edu.The mentor is 
tracked by their last name, first name,  email address, company name, company address, 
company city, company state, company ZIP code, and company phone number. Each mentor 
may be an alumnus, but mentors are not required to be alumni. Alumni cannot, of course, be 
required to become mentors. 
At Bellevue College each student is assigned one and only one faculty advisor and must have an 
advisor. One faculty member may advise several students, but faculty members are not required 
to advise students. The date an advisor was assigned to a student and the date the assignment 
ended are recorded.  Also, each student may be assigned one and only one mentor, but students 
are not required to have a mentor. One mentor may mentor several students, and a person may be 
listed as a mentor before he or she is actually assigned students to mentor. When a mentor is 
assigned to a student. the date of assignment to a student and the date the assignment ended are 
both recorded. 
The College required that each mentor to be assigned to work and coordinate with one and only 
one faculty member, and each mentor must work with a faculty member. One faculty member 
may work with several mentors, but faculty members are not required to work with mentors. The 
date an advisor was assigned to work with a mentor and the date the assignment ended are also 
recorded 
Tasks 
1. Draw an EE-R data model for the Bellevue College Mentor Program Information System
(BCMIS). Use MySQL Workbench E-R model to present your EE-R diagrams. Justify,
the decisions you make regarding minimum and maximum cardinalities
2. Convert this data model to a Relations database. Specify tables, primary keys, and
foreign keys.
a. Map out the EE-R model to the equivalent logical Relational Model and define
the final schema
b. Write SQL Create Table statements for each of these tables. Consider avoiding
the mistake of creating a table that does already exist in the schema
3 
c. Write foreign key constraints for the relationships in each of these tables. Make
your own assumptions regarding Cascading deletions or updates and justify those
assumptions (Hint you can combine the SQL for your answers to part B and C)
d. Write drop statements for all of your tables and schema at the end of the script