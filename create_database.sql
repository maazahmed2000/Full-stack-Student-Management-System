-- =========================================================
-- Student Information System - Database Script
-- Database: SQL Server
-- =========================================================

CREATE DATABASE StudentDB;
GO

USE StudentDB;
GO

CREATE TABLE Students (
    Id              INT IDENTITY(1,1) PRIMARY KEY,
    FullName        NVARCHAR(150)   NOT NULL,
    Email           NVARCHAR(150)   NOT NULL UNIQUE,
    Password        NVARCHAR(256)   NOT NULL,      -- stored as hashed value
    PhoneNumber     NVARCHAR(20)    NOT NULL,
    RollNumber      NVARCHAR(50)    NOT NULL UNIQUE,
    Department      NVARCHAR(100)   NOT NULL,
    Semester        INT             NOT NULL,
    DateOfBirth     DATE            NOT NULL,
    Gender          NVARCHAR(20)    NOT NULL,
    Address         NVARCHAR(300)   NULL,
    CreatedAt       DATETIME        NOT NULL DEFAULT GETDATE()
);
GO

-- Sample seed data (optional)
INSERT INTO Students
    (FullName, Email, Password, PhoneNumber, RollNumber, Department, Semester, DateOfBirth, Gender, Address)
VALUES
    ('Ali Raza', 'ali.raza@example.com', 'HASHED_PASSWORD_HERE', '03001234567', 'CS-2021-01', 'Computer Science', 5, '2002-05-12', 'Male', 'Karachi, Pakistan'),
    ('Sara Khan', 'sara.khan@example.com', 'HASHED_PASSWORD_HERE', '03007654321', 'CS-2021-02', 'Software Engineering', 3, '2003-01-20', 'Female', 'Lahore, Pakistan');
GO

-- Helpful index for search/filter
CREATE INDEX IX_Students_Department ON Students(Department);
GO
