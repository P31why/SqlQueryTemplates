use Base

CREATE VIEW Abonents
AS SELECT Abonent.namee, Abonent.surname, Abonent.fathername
FROM Abonent

CREATE VIEW PeopleCall
AS SELECT neg.callTime,neg.durationCall,Abonent.namee,City.cityName
FROM Negotiation neg
inner join Abonent on neg.idAbonent=Abonent.idAbonent
inner join City on neg.idCity=City.idCity

CREATE VIEW CallTimeCity
AS SELECT neg.callTime,neg.durationCall,City.cityName
FROM Negotiation neg
inner join City on neg.idCity=City.idCity where cityName='Moscow'

CREATE VIEW CityAbonent
AS SELECT Abonent.namee,City.cityName
FROM Negotiation
inner join City on Negotiation.idCity=City.idCity
inner join Abonent on Negotiation.idAbonent=Abonent.idAbonent

CREATE VIEW Statistic
AS select City.cityName,COUNT(idAbonent) as AbonentsCount
from Negotiation
inner join City on Negotiation.idCity=City.idCity
group by City.cityName

update PeopleCall
set callTime='2024-03-23' where callTime>'2015-01-01' and callTime<'2016-01-01'
update PeopleCall
set callTime='2018-03-23' where callTime<'2015-01-01'


delete Abonents
where namee='Elay'

delete from PeopleCall 
where callTime='2018-03-24'

insert into Abonents(surname,namee,fathername)
values ('Hfsd','dds','Adewf')

select * from Abonents
select * from PeopleCall
select * from CallTimeCity
select * from CityAbonent
select * from Statistic
