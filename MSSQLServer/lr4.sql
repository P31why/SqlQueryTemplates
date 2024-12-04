use master
/*drop database if exists Base
create database Base*/
use Base

if exists (select * from dbo.sysobjects where id=object_id('Abonent'))
drop table Abonent
go
create table Abonent(
idAbonent  int not null identity(1,1),
surname varchar(24)  not null,
namee varchar(24) not null,
fathername varchar(24) not null,
)


alter table Abonent
add constraint abonentPK primary key(idAbonent)


if exists (select * from dbo.sysobjects where id=object_id('City'))
drop table City
go
create table City(
idCity int not null identity(1,1),
cityName varchar(24) not null
)



alter table City
add constraint cityPK primary key(idCity)

if exists (select * from dbo.sysobjects where id=object_id('Negotiation'))
drop table Negotiation
go
create table Negotiation(
idCall int not null identity(1,1),
callTime date,
durationCall time,
idAbonent int not null,
idCity int not null,
)

alter table Negotiation
add constraint idAbonentFK foreign key(idAbonent)
references Abonent(idAbonent)on update cascade on delete cascade

alter table Negotiation
add constraint idCityFK foreign key(idCity)
references City (idCity)on update cascade on delete cascade

INSERT INTO Abonent(surname,namee,fathername)
VALUES
('Иридий','Иридий','Дульенко'),
('Tod','Govard','Rime'),
('Irid','Speroger','Nalendo'),
('Yoto','Dim','Fento'),
('Kago','Tybiki','Chikunchig'),
('Yorto','Kim','Onto'),
('Kavasaki','Bombaster','Chikunchig'),
('Elgrindio','Bombaster','Alex'),
('Иридий','Иридий','Дульенко'),
('Tod','Govard','Rime'),
('Irid','Speroger','Nalendo'),
('Yoto','Dim','Fento'),
('Kago','Tybiki','Chikunchig'),
('Yorto','Kim','Onto'),
('Kavasaki','Bombaster','Chikunchig'),
('Elgrindio','Bombaster','Alex'),
('Иридий','Иридий','Дульенко'),
('Tod','Govard','Rime'),
('Irid','Speroger','Nalendo'),
('Yoto','Dim','Fento'),
('Kago','Tybiki','Chikunchig'),
('Yorto','Kim','Onto'),
('Kavasaki','Bombaster','Chikunchig'),
('Elgrindio','Bombaster','Alex'),
('Иридий','Иридий','Дульенко'),
('Tod','Govard','Rime'),
('Irid','Speroger','Nalendo'),
('Yoto','Dim','Fento'),
('Kago','Tybiki','Chikunchig'),
('Yorto','Kim','Onto'),
('Kavasaki','Bombaster','Chikunchig'),
('Elgrindio','Bombaster','Alex'),
('Иридий','Иридий','Дульенко'),
('Tod','Govard','Rime'),
('Irid','Speroger','Nalendo'),
('Yoto','Dim','Fento'),
('Kago','Tybiki','Chikunchig'),
('Yorto','Kim','Onto'),
('Kavasaki','Bombaster','Chikunchig'),
('Elgrindio','Bombaster','Alex'),
('Иридий','Иридий','Дульенко'),
('Tod','Govard','Rime'),
('Irid','Speroger','Nalendo'),
('Yoto','Dim','Fento'),
('Kago','Tybiki','Chikunchig'),
('Yorto','Kim','Onto'),
('Kavasaki','Bombaster','Chikunchig'),
('Elgrindio','Bombaster','Alex');


INSERT INTO City(cityName)
VALUES
('Moscow'),
('Stambul'),
('Minsk');

INSERT INTO Negotiation(callTime,durationCall,idAbonent,idCity)
VALUES 
('2007-03-12','0:34:12',1,1),
('2014-01-03','0:43:12',2,1),
('2015-03-23','0:54:0',3,2),
('2015-03-23','0:12:0',4,3),
('2018-12-23','0:30:4',5,3),
('2016-04-23','0:39:9',6,2),
('2019-03-23','0:30:2',7,1),
('2018-10-23','0:39:3',8,3),
('2020-10-23','0:21:2',9,2),
('2007-03-12','0:34:12',10,1),
('2014-01-03','0:43:12',11,1),
('2015-03-23','0:54:0',12,2),
('2015-03-23','0:12:0',13,3),
('2018-12-23','0:30:4',14,3),
('2016-04-23','0:39:9',15,2),
('2019-03-23','0:30:2',16,1),
('2018-10-23','0:39:3',17,3),
('2020-10-23','0:21:2',18,2),
('2007-03-12','0:34:12',19,1),
('2014-01-03','0:43:12',20,1),
('2015-03-23','0:54:0',21,2),
('2015-03-23','0:12:0',22,3),
('2018-12-23','0:30:4',23,3),
('2016-04-23','0:39:9',24,2),
('2019-03-23','0:30:2',25,1),
('2018-10-23','0:39:3',26,3),
('2020-10-23','0:21:2',27,2),
('2007-03-12','0:34:12',28,1),
('2014-01-03','0:43:12',29,1),
('2015-03-23','0:54:0',30,2),
('2015-03-23','0:12:0',31,3),
('2018-12-23','0:30:4',32,3),
('2016-04-23','0:39:9',33,2),
('2019-03-23','0:30:2',34,1),
('2018-10-23','0:39:3',35,3),
('2020-10-23','0:21:2',36,2),
('2007-03-12','0:34:12',37,1),
('2014-01-03','0:43:12',38,1),
('2015-03-23','0:54:0',39,2),
('2015-03-23','0:12:0',40,3),
('2018-12-23','0:30:4',41,3),
('2016-04-23','0:39:9',42,2),
('2019-03-23','0:30:2',43,1),
('2018-10-23','0:39:3',44,3),
('2020-10-23','0:21:2',45,2),
('2007-03-12','0:34:12',46,1),
('2014-01-03','0:43:12',47,1),
('2015-03-23','0:54:0',48,2);


update Abonent
set namee='Elay' where idAbonent in (select idCity from City where cityName='Stambul')
update City
set cityName='Grogno' where idCity in(select idCall from Negotiation where durationCall>'0:50:0')
update Abonent
set surname='ToddiN' where surname='Tod'
update Negotiation
set callTime='2018-03-23' where callTime<'2015-01-01'
update Negotiation
set callTime='2024-03-23' where callTime>'2015-01-01' and callTime<'2016-01-01'

delete Abonent where idAbonent>9
delete Abonent where namee='Dio'
delete Negotiation where durationCall>'0:50:00'
delete Negotiation where idAbonent=1
delete Negotiation where callTime='2018-03-23'

SELECT * 
FROM Negotiation
WHERE Negotiation.idCity=1

SELECT * 
FROM Negotiation
WHERE Negotiation.idCity NOT IN(2)

SELECT * 
FROM Negotiation
WHERE Negotiation.idCity NOT IN(2)

SELECT * 
FROM Abonent
WHERE Abonent.fathername NOT IN('Chikunchig','Nalendo')

SELECT * 
FROM Negotiation
WHERE Negotiation.durationCall<'0:50:0'

SELECT * 
FROM Negotiation
WHERE Negotiation.durationCall>'0:30:0' AND Negotiation.idCity in (1, 3)

SELECT Abonent.surname,Abonent.namee,Abonent.fathername
FROM Abonent
WHERE Abonent.namee in('Tybiki','Bombaster')

SELECT Abonent.surname,Abonent.namee,Abonent.fathername
FROM Abonent
WHERE Abonent.namee not in('Tybiki','Bombaster') AND Abonent.surname !='Yorto'

SELECT Negotiation.idCity, count(Negotiation.idAbonent)
from Negotiation
group by Negotiation.idCity


SELECT neg.callTime AS 'Дата вызова',neg.durationCall AS 'Продолжительность переговора',Abonent.namee AS 'Имя абонента',City.cityName AS 'Город'
FROM Negotiation neg
inner join Abonent on neg.idAbonent=Abonent.idAbonent
inner join City on neg.idCity=City.idCity

SELECT neg.callTime,neg.durationCall,Abonent.namee
FROM Negotiation neg
inner join Abonent on neg.idAbonent=Abonent.idAbonent

SELECT neg.callTime,neg.durationCall,City.cityName
FROM Negotiation neg
inner join City on neg.idCity=City.idCity

SELECT neg.callTime,neg.durationCall,City.cityName
FROM Negotiation neg
inner join City on neg.idCity=City.idCity where cityName='Moscow'

SELECT neg.callTime,neg.durationCall,City.cityName
FROM Negotiation neg
inner join City on neg.idCity=City.idCity where cityName='Minsk'

SELECT Abonent.namee,City.cityName
FROM Negotiation
inner join City on Negotiation.idCity=City.idCity
inner join Abonent on Negotiation.idAbonent=Abonent.idAbonent

SELECT* FROM Base.dbo.Abonent

SELECT* FROM Base.dbo.City

SELECT* FROM Base.dbo.Negotiation
/*-------------------*/
select  CONCAT(Abonent.fathername,' ',Abonent.namee,' ',Abonent.surname) as Abonents
from Abonent

SELECT CONCAT(neg.callTime,' | ',neg.durationCall)as Neg,CONCAT(Abonent.fathername,' ',Abonent.namee)as Abonents
FROM Negotiation neg
inner join Abonent on neg.idAbonent=Abonent.idAbonent

SELECT DATEDIFF(year,neg.callTime,GETDATE())as LastColl, Abonent.namee 
FROM Negotiation neg
inner join Abonent on neg.idAbonent=Abonent.idAbonent

select City.cityName,COUNT(idAbonent) as AbonentsCount
from Negotiation
inner join City on Negotiation.idCity=City.idCity
group by City.cityName

select Negotiation.callTime,COUNT(idAbonent) as AbonentsCount
from Negotiation
inner join City on Negotiation.idCity=City.idCity
group by Negotiation.callTime
/*------------*/
select City.cityName,COUNT(idAbonent) as AbonentsCount
from Negotiation
inner join City on Negotiation.idCity=City.idCity
group by City.cityName
having count(idAbonent)>2

SELECT neg.callTime,COUNT(idAbonent) 
FROM Negotiation neg
group by neg.callTime
having DATEDIFF(year,neg.callTime,GETDATE())<'2015-03-23'

select Negotiation.callTime,COUNT(idAbonent) as AbonentsCount
from Negotiation
inner join City on Negotiation.idCity=City.idCity
group by Negotiation.callTime
having Negotiation.callTime<'2015-03-23'

select * from Abonent
where Abonent.idAbonent in(select Abonent.idAbonent from Abonent where idAbonent>4)

select * from Abonent
where Abonent.idAbonent in(select Abonent.idAbonent from Abonent where namee='Bombaster')

select City.cityName,Abonent.namee
from Negotiation
inner join Abonent on Negotiation.idAbonent=Abonent.idAbonent
inner join City on Negotiation.idCity=City.idCity
where City.cityName in (Select City.cityName from City where City.cityName='Moscow')

select Negotiation.callTime,Abonent.namee
from Negotiation
inner join Abonent on Negotiation.idAbonent=Abonent.idAbonent
where Negotiation.callTime in (Select Negotiation.callTime where Negotiation.callTime<'2015-03-23')

select Negotiation.durationCall,Abonent.namee
from Negotiation
inner join Abonent on Negotiation.idAbonent=Abonent.idAbonent
where Negotiation.durationCall in (Select Negotiation.durationCall where Negotiation.durationCall>'0:30:0')

select * from PeopleCall
select * from CallTimeCity
select * from CityAbonent
select * from Statistic

/*Хранимые процедуры*/

CREATE PROCEDURE AddAbonent
	@surnam NVARCHAR(24),
	@name NVARCHAR(24),
	@fathernm NVARCHAR(24)
AS
INSERT INTO Abonent(surname,namee,fathername)
VALUES (@surnam,@name,@fathernm)

CREATE PROCEDURE AbonentsCity
AS
select City.cityName AS 'Город',COUNT(idAbonent) AS 'Кол-во абонентов'
from Negotiation
inner join City on Negotiation.idCity=City.idCity
group by City.cityName

CREATE PROCEDURE AbonentsNeg
AS
SELECT neg.callTime AS 'Дата вызова',neg.durationCall AS 'Продолжительность переговора',Abonent.namee AS 'Имя абонента',City.cityName AS 'Город'
FROM Negotiation neg
inner join Abonent on neg.idAbonent=Abonent.idAbonent
inner join City on neg.idCity=City.idCity

EXEC AddAbonent 'efefw','dedde','Wdsd'
EXEC AbonentsCity 
EXEC AbonentsNeg

/*---------------------*/

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID('DeletedAbonents'))
CREATE TABLE DeletedAbonents (
    idAbonent INT,
    surname VARCHAR(24),
    namee VARCHAR(24),
    fathername VARCHAR(24),
    deletedAt DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER DeleteAbonent
ON Abonent 
AFTER DELETE
AS
begin
  delete from Negotiation
  where idAbonent in (select idAbonent from  deleted)
  insert  into DeletedAbonents(idAbonent, surname, namee, fathername)
  select idAbonent, surname, namee, fathername from deleted
end

select * from Abonent

DELETE FROM Abonent
WHERE idAbonent = 4;

CREATE TRIGGER WhenInsertAbonent
ON Abonent
AFTER INSERT
AS
BEGIN
    INSERT INTO Negotiation (callTime, durationCall, idAbonent, idCity)
    SELECT GETDATE(), '00:00:00', inserted.idAbonent, 1 
    FROM inserted;
END;

INSERT INTO Abonent(surname,namee,fathername)
VALUES
('Увыв','jghghg','Дюдя')

select Negotiation.callTime,Abonent.namee
from Negotiation
inner join Abonent on Negotiation.idAbonent=Abonent.idAbonent

/*--------------------------------*/
use Base



BEGIN TRY
	BEGIN TRAN
    select @@TRANCOUNT as [значение транзакции]
	update Abonent
	set namee='Lukich' where idAbonent=3
	select * from Abonent
    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    PRINT 'Произошла ошибка: ' + ERROR_MESSAGE();
END CATCH;

set implicit_transactions on
update Abonent
set surname='Чацкий' where idAbonent=1;
go
select * from Abonent
select @@TRANCOUNT as [значение транзакции]
go
rollback tran
SET IMPLICIT_TRANSACTIONS OFF;


print 'до транзакции 1: '+ cast( @@TRANCOUNT as char(1))
begin tran up1
	print 'транзакции 1: '+ cast( @@TRANCOUNT as char(1))
	update Abonent set namee = 'Урдалак' where idAbonent=5
	begin tran up2
		print 'транзакции 2: '+ cast( @@TRANCOUNT as char(1))
		update Negotiation set durationCall = '12:03:00' where durationCall = '00:00:00'
	commit tran
	print 'транзакции 1: '+ cast( @@TRANCOUNT as char(1))
commit tran
print 'после транзакции 1: '+ cast( @@TRANCOUNT as char(1))

delete from Abonent where idAbonent=5

select * from Negotiation

CREATE LOGIN new_user WITH PASSWORD = '123';
CREATE USER new_user FOR LOGIN new_user;

GRANT BACKUP DATABASE TO new_user;

GRANT BACKUP LOG TO new_user

EXEC sp_helpfile;


/*-----*/

BACKUP DATABASE Base TO DISK = 'D:\Copy\Base_full.bak'

RESTORE DATABASE Base
FROM DISK = 'D:\Copy\Base_full.bak'
WITH noRECOVERY,replace

BACKUP LOG Base TO DISK = 'D:\Copy\Base_log.bak';

RESTORE LOG Base
FROM DISK = 'D:\Copy\Base_log.bak'
WITH noRECOVERY;

BACKUP DATABASE Base TO DISK = 'D:\Copy\Base_diff.bak' 
WITH DIFFERENTIAL


RESTORE DATABASE Base
FROM DISK = 'D:\Copy\Base_full.bak'
WITH RECOVERY;

RESTORE DATABASE Base
FROM DISK = 'D:\Copy\Base_diff.bak'
WITH noRECOVERY;


BACKUP DATABASE Base FILEGROUP = 'PRIMARY' TO DISK = 'D:\Copy\Base_file.bck';

RESTORE DATABASE Base FILEGROUP = 'PRIMARY'
FROM DISK = 'D:\Copy\Base_file.bck'
WITH noRECOVERY;

use master