create table Users(
	ID SERIAL PRIMARY KEY,
	Surname CHARACTER VARYING(40),
	Name CHARACTER VARYING(40),
	LastName VARCHAR(40)
);
create table Products(
	ID SERIAL PRIMARY KEY,
	Name CHARACTER VARYING(40),
	Quantity INTEGER,
	UsersID INTEGER REFERENCES Users(ID)
);

create procedure ShowAllUsers ()
language SQL
AS $$
select * from Users
$$

create procedure insert_User(surname varchar(40), namee varchar(40), lastname varchar(40))
language SQL
AS $$
	insert into Users(Surname,Name,LastName) values (surname,namee,lastname);
$$;
call insert_User (
surname=>'Donald',
namee=>'Duck',
lastname=>'Duckens'
);
select * from Users