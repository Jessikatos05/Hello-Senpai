create table Lecture (
	CourseID INT,
	SubJectID INT FOREIGN KEY (SubJectID) REFERENCES [Subject](SubJectID),
	LectureID INT PRIMARY KEY,
	LectureName VARCHAR(50)
);
