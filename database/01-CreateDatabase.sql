/*
 * HR Attendance Payroll Reports
 * Project #94 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSRS
 * Created: 2013
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'HR_Reports')
BEGIN
    ALTER DATABASE HR_Reports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE HR_Reports;
END
GO

CREATE DATABASE HR_Reports
ON PRIMARY
(
    NAME = 'HR_Reports_Data',
    FILENAME = 'C:\SQLData\HR_Reports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'HR_Reports_Log',
    FILENAME = 'C:\SQLData\HR_Reports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE HR_Reports SET RECOVERY SIMPLE;
ALTER DATABASE HR_Reports SET AUTO_UPDATE_STATISTICS ON;
GO

USE HR_Reports;
GO

PRINT 'Database HR_Reports created successfully';
PRINT 'Project: HR Attendance Payroll Reports';
PRINT 'Description: HR analytics automation';
GO
