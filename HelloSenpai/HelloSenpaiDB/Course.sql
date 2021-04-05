Create table Course (
	CourseID INT Primary key,
	UserID int FOREIGN KEY (UserID) REFERENCES Students(UserID),
	CourseName VARCHAR(50)	
	
);