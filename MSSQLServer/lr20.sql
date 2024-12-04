use UsersBase

CREATE TYPE int_Users FROM INT NOT NULL;
CREATE TYPE str_Users FROM NVARCHAR(100) NOT NULL;
CREATE TYPE date_Users FROM DATE NOT NULL;

create table Users(
	id_User int_Users PRIMARY KEY,
	user_Namee str_Users,
	date_Reg date_Users,
)

drop table Users

CREATE RULE rulee_int AS @value >0;
CREATE RULE rulee_str AS @value LIKE '[A-Za-z]%';
CREATE RULE rulee_date AS @value >= '2007-02-08';




EXEC sp_bindrule 'rulee_int', 'int_Users';
EXEC sp_bindrule 'rulee_str', 'str_Users';
EXEC sp_bindrule 'rulee_date', 'date_Users';

INSERT INTO Users(id_User,user_Namee,date_Reg)
VALUES(-3,'Ddff','1900-12-02');

INSERT INTO Users(id_User,user_Namee,date_Reg)
VALUES(-1,'Yui','2009-02-05')

INSERT INTO Users(id_User,user_Namee,date_Reg)
VALUES(2,'Filp','2017-09-18');

INSERT INTO Users(id_User,user_Namee,date_Reg)
VALUES(4,'Rearo34','2007-02-07');

INSERT INTO Users(id_User,user_Namee,date_Reg)
VALUES(4,'Rearo','2005-02-07');

select * from Users;

CREATE TABLE FunctionValues (
    XValue INT,
    YValue FLOAT,
);
drop table FunctionValues

DECLARE @x INT = -5;
DECLARE @y FLOAT;
WHILE @x <= 5
BEGIN
    
    IF @x>1
    BEGIN
		SET @y = SIN(@x+2); 
        INSERT INTO FunctionValues (XVAlue, YValue)
        VALUES (@x, @y);
    END
	IF @x<1
	BEGIN
		SET @y=@x+3.5*(TAN(@x));
		INSERT INTO FunctionValues (XVAlue, YValue)
		VALUES (@x, @y);
	END
    SET @x = @x + 1;
END

SELECT * FROM FunctionValues;