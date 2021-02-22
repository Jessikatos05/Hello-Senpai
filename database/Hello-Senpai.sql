--Project Step 5


Drop database if exists Japanese101
Create Database Japanese101
Use Japanese101;

---students login
drop table if exists Students
Create Table Students (
UserID int Primary key,
FirstName Varchar (80),
LastName Varchar (80),
Email Varchar (80)
);

insert into Students (UserID, FirstName, LastName, Email) values (1, 'Aldus', 'Rotge', 'arotge0@imdb.com');
insert into Students (UserID, FirstName, LastName, Email) values (2, 'Benedict', 'Gregorowicz', 'bgregorowicz1@shop-pro.jp');
insert into Students (UserID, FirstName, LastName, Email) values (3, 'Maddi', 'Acey', 'macey2@unicef.org');
insert into Students (UserID, FirstName, LastName, Email) values (4, 'Kimberly', 'Fould', 'kfould3@chron.com');
insert into Students (UserID, FirstName, LastName, Email) values (5, 'Skippie', 'Beelby', 'sbeelby4@washington.edu');
insert into Students (UserID, FirstName, LastName, Email) values (6, 'Tamara', 'Southerden', 'tsoutherden5@de.vu');
insert into Students (UserID, FirstName, LastName, Email) values (7, 'Ethelin', 'Hanniger', 'ehanniger6@domainmarket.com');
insert into Students (UserID, FirstName, LastName, Email) values (8, 'Carlyn', 'Birrel', 'cbirrel7@go.com');
insert into Students (UserID, FirstName, LastName, Email) values (9, 'Germain', 'Brownrigg', 'gbrownrigg8@dailymotion.com');
insert into Students (UserID, FirstName, LastName, Email) values (10, 'Gilda', 'Rawstorne', 'grawstorne9@jimdo.com');
insert into Students (UserID, FirstName, LastName, Email) values (11, 'Germain', 'Brownrigg', 'gbrownrigg8@dailymotion.com');
insert into Students (UserID, FirstName, LastName, Email) values (12, 'Gilda', 'Rawstorne', 'grawstorne9@jimdo.com');


select *
from Students

--Course

Create table Course (
	CourseID INT Primary key,
	UserID int FOREIGN KEY (UserID) REFERENCES Students(UserID),
	CourseName VARCHAR(50)	
	
);


insert into Course (CourseID, UserID, CourseName) values (1, 1, 'Hiragana');
insert into Course (CourseID, UserID, CourseName) values (2, 2, 'Katakana');
insert into Course (CourseID, UserID, CourseName) values (3, 3, 'kanji');
insert into Course (CourseID, UserID, CourseName) values (4, 4,'Numbers');
insert into Course (CourseID, UserID, CourseName) values (5, 5,'Colors');
insert into Course (CourseID, UserID, CourseName) values (6, 6,'Animals');
insert into Course (CourseID, UserID, CourseName) values (7, 7,'Doods');
insert into Course (CourseID, UserID, CourseName) values (8,8, 'Drinks');
insert into Course (CourseID, UserID, CourseName) values (9, 9, 'Places');
insert into Course (CourseID, UserID, CourseName) values (10, 10,'Countries');
insert into Course (CourseID, UserID, CourseName) values (11, 11,'Transportation');
insert into Course (CourseID, UserID, CourseName) values (12, 12,  'Jobs');

select *
from Course

--Subject

create table Subject (
	CourseID INT FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
	SubJectID INT Primary Key,
	SubjectName VARCHAR(50)
);

insert into [Subject] (CourseID, SubJectID, SubjectName) values (1, 1, 'Japan Basic');
insert into [Subject] (CourseID, SubJectID, SubjectName) values (2, 2, 'Japan Intermediate');
insert into [Subject] (CourseID, SubJectID, SubjectName) values (3, 3, 'Japan Advanced');

select * from Subject

use Japanese101;

--Lectures

create table Lecture (
	CourseID INT,
	SubJectID INT FOREIGN KEY (SubJectID) REFERENCES [Subject](SubJectID),
	LectureID INT PRIMARY KEY,
	LectureName VARCHAR(50)
);

insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (1, 1, 1, 'VIDEO 1');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (2, 2, 2, 'VIDEO 2');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (3, 3, 3, 'VIDEO 3');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (4, 1, 4, 'VIDEO 4');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (5, 2, 5, 'VIDEO 5');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (6, 3, 6, 'VIDEO 6');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (7, 1, 7, 'VIDEO 7');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (8, 2, 8, 'VIDEO 8');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (9, 3, 9, 'VIDEO 9');
insert into Lecture (CourseID, SubJectID, LectureID, LectureName) values (10, 1, 10, 'VIDEO 10');

select * from Lecture






