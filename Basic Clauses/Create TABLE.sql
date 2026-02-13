CREATE Table persons(
	ID int Not Null,
	Name varchar(50) Not Null,
	DOB date,
	Phone varchar(10) Not null,
	CONSTRAINT pk_person primary key(Name)
)

Select *
from persons