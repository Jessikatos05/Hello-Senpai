create table Subject (
	CourseID INT FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
	SubJectID INT Primary Key,
	SubjectName VARCHAR(50)
);
