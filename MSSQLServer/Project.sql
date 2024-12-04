use UsersBase
CREATE TABLE JobTitles (
    jobID int primary key,
    jobName nvarchar(100) NOT NULL
);

CREATE TABLE Employees (
    employeeID int primary key,
  employeeSurname nvarchar(100) NOT NULL,
    employeeName nvarchar(100) NOT NULL,
    jobTitleID int ,
    foreign key (jobTitleID) references JobTitles(jobID)
);

create procedure AddNewEmploye
  @emplSurname nvarchar(100),
  @emplName nvarchar(100),
  @jobtitle int
AS 
begin
	declare @newEmplID int
	select @newEmplID=ISNULL(MAX(employeeID),0)+1 from Employees
	insert into Employees(employeeID,employeeSurname,employeeName,jobTitleID)
	values (@newEmplID,@emplSurname,@emplName,@jobtitle)
end

create procedure AddNewJobTitle
	@jobname nvarchar(100)
as
begin
	declare @newJobID int
	select @newJobID=isnull(max(jobID),0)+1 from JobTitles
	insert into JobTitles(jobID,jobName)
	values (@newJobID,@jobname)
end

create view ViewEmploeys
as
select employeeSurname as 'Фамилия', employeeName as 'Имя', jobName as 'Должность'
from Employees
inner join JobTitles on Employees.JobTitleID=JobTitles.jobID

create view ViewEmploeysID
as
select employeeID as 'ID сотрудника', employeeSurname as 'Фамилия', employeeName as 'Имя', jobName as 'Должность'
from Employees
inner join JobTitles on Employees.JobTitleID=JobTitles.jobID

create view ViewJobTitles
as
select jobName as 'Должность'
from JobTitles

create view ViewJobTitlesID
as
select jobID as 'ID',jobName as 'Должность'
from JobTitles

create procedure DeleteEmployee
  @emplSurname nvarchar(100),
  @emplName nvarchar(100),
  @jobtitle int
as
delete from Employees 
where employeeSurname=@emplSurname and employeeName=@emplName and jobTitleID=@jobtitle

create procedure ViewEmplWithParam
	@job_title int
as
select employeeSurname as 'Фамилия', employeeName as 'Имя', jobName as 'Должность'
from Employees
inner join JobTitles on Employees.JobTitleID=JobTitles.jobID
where @job_title=JobTitles.jobID
order by jobName

EXEC AddNewJobTitle 'Programmer'
EXEC AddNewEmploye 'Давыдов','Леонтий',1
EXEC AddNewEmploye 'Govard','Tod',2

delete from Employees where employeeID=2

EXEC ViewEmploeys

EXEC ViewEmplWithParam 2