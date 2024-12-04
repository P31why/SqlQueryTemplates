use UsersBase
use Base
create table Users(
	id_User int identity(1,1) NOT NULL,
	user_Namee nvarchar(50) NOT NULL,
	date_Reg DATE NOT NULL,
	idCountry int NOT NULL,
	idStatus int NOT NULL
)
alter table Users
add constraint idCountryFK foreign key(idCountry)
references Country (idCountry)on update cascade on delete cascade

alter table Users
add constraint idStatusFK foreign key(idStatus)
references UserStatus (idStatus)on update cascade on delete cascade

create table Country(
	idCountry int identity(1,1) not null,
	nameCountry nvarchar(50) not null
)
alter table Country
add constraint CountryIDPK primary key(idCountry)

create table UserStatus(
	idStatus int identity(1,1)not null,
	nameStatus nvarchar(50)not null
)
alter table UserStatus
add constraint StatusPK primary key(idStatus)

CREATE PROCEDURE AddUser
	@name nvarchar(50),
	@date DATE,
	@country int,
	@status int
AS
INSERT INTO Users(user_Namee,date_Reg,idCountry,idStatus)
VALUES (@name,@date,@country,@status)

CREATE PROCEDURE AddCountry
	@country_name nvarchar(50)
AS
INSERT INTO Country(nameCountry)
VALUES (@country_name)

CREATE PROCEDURE AddSatus
	@status_name nvarchar(50)
AS
INSERT INTO UserStatus(nameStatus)
VALUES (@status_name)

CREATE PROCEDURE PrintUsers
AS
select user_Namee as 'Имя пользователя', nameCountry as 'Страна', nameStatus as 'Статус'
from Users
inner join Country on Users.idCountry=Country.idCountry
inner join UserStatus on Users.idStatus=UserStatus.idStatus

CREATE PROCEDURE PrintBannedUsers
AS
select user_Namee as 'Имя пользователя', nameCountry as 'Страна', nameStatus as 'Статус'
from Users
inner join Country on Users.idCountry=Country.idCountry
inner join UserStatus on Users.idStatus=UserStatus.idStatus
where nameStatus='Banned'

EXEC AddUser 'Adefer','2019-04-02',1,2
EXEC AddCountry 'Belarus'
EXEC AddCountry 'Kazahstan'
EXEC AddSatus 'Banned'
EXEC PrintUsers
EXEC PrintBannedUsers

select * from Users
select * from Country
select * from UserStatus