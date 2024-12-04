
use Base
ALTER TABLE Negotiation DROP CONSTRAINT idAbonentFK
ALTER TABLE Abonent DROP constraint abonentPK
ALTER TABLE Negotiation DROP CONSTRAINT idCityFK
ALTER TABLE City DROP constraint cityPK
SET STATISTICS TIME ON
/*кластеризированный индекс Abonent*/
select *
from Abonent
where namee like 'D%'
create clustered index nameInd on Abonent (namee)
select *
from Abonent
where namee like 'D%'
drop index if exists nameInd on Abonent
/*-----------------*/

/* ластерный индекс City*/
select *
from City
where cityName like 'Minsk'
CREATE CLUSTERED INDEX city_ind on City (cityName)
select *
from City
where cityName like 'Minsk'
drop index if exists city_ind on City
/*------------*/

/*кластерезированный индекс Negotiation*/
select *
from Negotiation
where durationCall >'0:50:00'
CREATE CLUSTERED INDEX NegotiationTime_ind ON Negotiation (durationCall)
select *
from Negotiation
where durationCall >'0:50:00'
drop index if exists NegotiationTime_ind on Negotiation
/*------------*/

/*Ќекласт индексы Abonent*/
select *
from Abonent
where namee like '%o%'
CREATE INDEX surname_name_Ind ON Abonent(surname,namee)
select *
from Abonent
where namee like '%o%'
drop index if exists surname_name_Ind on Abonent 

CREATE INDEX surname_fath_Ind ON Abonent(surname,fathername)
select *
from Abonent
where namee like '%o%'
drop index if exists surname_fath_Ind on Abonent  
/*------------*/

/*Ќекласт индекс Negotiation*/
select *
from Negotiation
where durationCall >'0:40:00'
CREATE INDEX call_abonent_ind on Negotiation(durationCall,idAbonent asc)
select *
from Negotiation
where durationCall >'0:40:00'
DROP INDEX IF exists call_abonent_ind ON Negotiation


select *
from Negotiation
where durationCall >'0:40:00' and idCity=1
CREATE INDEX call_city_ind on Negotiation(durationCall,idCity asc)
select *
from Negotiation
where durationCall >'0:40:00' and idCity=1
DROP INDEX IF exists call_city_ind ON Negotiation


