use UsersBase

if exists (select * from dbo.sysobjects where id=object_id('Positions'))
drop table Positions
go
create table Positions(
	idPos int not null,
	positionName nvarchar(100)
)
alter table Positions
add constraint positionsPK primary key(idPos)

/*------------------------------------------*/

if exists (select * from dbo.sysobjects where id=object_id('Nomination'))
drop table Nomination
go
create table Nomination(
	idNomination int not null,
	nameNomination nvarchar(100) not null 
)
alter table Nomination
add constraint nominationPK primary key(idNomination)

/*------------------------------------------*/

if exists (select * from dbo.sysobjects where id=object_id('Rewards'))
drop table Rewards
go
create table Rewards(
	idReward int not null,
	rewardName int not null,
	naminationYear Date not null
)
alter table Reawards
add constraint rewardPK primary key(idReward)

alter table Rewards
add constraint rewardFK foreign key(rewardName)
references Nomination(idNomination)on update cascade on delete cascade

/*------------------------------------------*/

if exists (select * from dbo.sysobjects where id=object_id('Country'))
drop table Country
go
create table Country(
	idCountry int not null,
	countryName nvarchar(100)
)
alter table Country
add constraint countryPK primary key(idCountry)

/*------------------------------------------*/

if exists (select * from dbo.sysobjects where id=object_id('Kinofilm'))
drop table Kinofilm
go
create table Kinofilm(
	idKinFilm int not null,
	nameFilm nvarchar(100) not null,
	studioname nvarchar(100) not null,
	yearVihod Date not null,
	country nvarchar(100) not null,
	prodolg Time not null,       /*продолжительность*/
	ganer nvarchar(100) not null,
	reward int not null
)
alter table Kinofilm
add constraint kinofilmPK primary key(idKinFilm)

alter table Kinofilm
add constraint countryFK foreign key(country)
references Country(idCountry)on update cascade on delete cascade

/*------------------------------------------*/

if exists (select * from dbo.sysobjects where id=object_id('Persons'))
drop table Persons
go
create table Persons(
	idPerson int not null,
	fio nvarchar(50),
	dateRog Date not null,
	deathDate Date not null
)
alter table Persons
add constraint personsPK primary key(idPerson)


/*------------------------------------------*/

if exists (select * from dbo.sysobjects where id=object_id('FilmMakers'))
drop table FilmMakers
go
create table FilmMakers(
	film nvarchar(100) not null,
	person int not null,
	position int not null
)
alter table FilmMakers
add constraint positionsFK foreign key(position)
references Positions(idPos)on update cascade on delete cascade

alter table FilmMakers
add constraint filmFK foreign key(film)
references Kinofilm(idPos)on update cascade on delete cascade

insert into Country(idCountry,countryName)
values  (1,'Bulgaria'),
		(2,'Australia')

insert into Nomination(idNomination,nameNomination)
values (1,'best film'),
	   (2, 'best regiser')
insert into Rewards(idReward,rewardName,naminationYear)
values (1,1,'2018-02-03')