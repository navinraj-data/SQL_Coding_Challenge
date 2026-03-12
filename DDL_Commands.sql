Create Database Hospital;
use Hospital;
Create Table Patients ( PatientsId int, PatientName varchar(100), Age int, gender enum( 'm', 'f'), AdmissionDate Date);
ALTER TABLE Patients 
modify PatientName varchar(150);
alter table Patients rename to Patients_info;
describe Patients_info;
truncate Patiens_info;
drop table Patients_info;
truncate table Patiens_info;
select * from Patients_info;

-- Wrong table name example
-- TRUNCATE TABLE Patiens_info;

-- Correct command
TRUNCATE TABLE Patients_info;



