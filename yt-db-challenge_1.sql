Select * From Study_Material..Authors

Select * From Study_Material..Books

Select * From Study_Material..AuthorBookMapping

--sp_help Authors

--Insert Into Study_Material..Authors(FullName, Country, DOB, CreatedBy)
--Values('Mark Twain','United States','1835-11-30','system'),

--Insert Into Study_Material..Books(Title, ISBN, PublicationYear, Genre, CreatedBy)
--Values('1984','9781234567003',1949,'Dystopian Fiction','system'),
--('The Adventures of Tom Sawyer','9781234567004',1876,'Adventure','system'),
--('The Old Man and the Sea','9781234567005',1952,'Literary Fiction','system'),
--('One Hundred Years of Solitude','9781234567007',1967,'Magical Realism','system')

--Insert Into Study_Material..AuthorBookMapping(BookId, AuthorId)
--Values('81A7F8C5-5871-F111-A49B-E976C55088C2','8459C714-9570-F111-A49B-E976C55088A4')


--Update Study_Material..Authors
--Set CreatedBy = 'system'
--Where Id = '8459C714-9570-F111-A49B-E976C55088C2'

--Task to find which book written by which Author
Select	B.Title, A.FullName 
From	Study_Material..Books B
		Inner Join Study_Material..AuthorBookMapping ABM ON B.Id = ABM.BookId
		Inner Join Study_Material..Authors A ON ABM.AuthorId = A.Id
