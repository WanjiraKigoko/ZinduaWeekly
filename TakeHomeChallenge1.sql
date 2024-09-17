use school;

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100),
    Age INT CHECK (Age >= 18),
    Email VARCHAR(255) NOT NULL UNIQUE
);

-- Insert data into Students Table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
values (1, 'John', 'Doe', 20, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
(3, 'Michael', 'Brown', 19, 'michael.brown@example.com');

-- Add the EnrollmentDate column
ALTER TABLE Students
ADD COLUMN EnrollmentDate DATE;

-- Increase maximum length of email column
ALTER TABLE Students
MODIFY COLUMN Email VARCHAR(300);

-- Drop the LastName column
ALTER TABLE Students
DROP COLUMN LastName;