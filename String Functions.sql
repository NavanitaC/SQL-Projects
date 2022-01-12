create database String_Handson

create table String_Functions(FirstName varchar(10),LastName varchar(10))

insert String_Functions values('Navanita','Jivangi')

select * from String_Functions

--ASCII 
Select ASCII('A') as A, ASCII('b') as b,ASCII(1) as[1],NCHAR(80) as [character]
 
--CHAR
SELECT CHAR(65) AS [65],CHAR(97) AS [97],CHAR(49) AS [49]

--CHARINDEX
SELECT CHARINDEX('is', 'My Name is Navanita')

--CONCAT
SELECT CONCAT ( 'Happy ', 'Birthday ', 29, '/', '04' ) AS Result

--DIFFERENCE  
SELECT SOUNDEX('Navanita'), SOUNDEX('NavanitaJivangi'), DIFFERENCE('Navanita','NavanitaJivangi') 
 
--FORMAT
DECLARE @d DATE = GETDATE() SELECT FORMAT( @d, 'dd/MM/yyyy', 'en-US' ) AS 'Date',FORMAT(123456789,'###-##-####') AS 'Custom Number'

--LEFT
SELECT LEFT('abcdefg',2) 

--LEN
SELECT LEN(FirstName) AS Length, FirstName, LastName FROM String_Functions 

--LOWER 
SELECT LOWER(SUBSTRING(FirstName, 1, 20)) AS Lower,UPPER(SUBSTRING(LastName, 1, 20)) AS Upper FROM String_Functions

--LTRIM
SELECT LTRIM('      Six spaces are at the beginning of this string.')

--NCHAR
DECLARE @nstring NCHAR(8) SET @nstring = N'København' SELECT UNICODE(SUBSTRING(@nstring, 2, 1)),NCHAR(UNICODE(SUBSTRING(@nstring, 2, 1)))

--PATINDEX
SELECT position = PATINDEX('%ter%', 'interesting data')

--QUOTENAME
SELECT QUOTENAME('abc[]def')

--REPLACE
SELECT REPLACE('NavanitaJivangi','an','oo')

--REPLICATE
SELECT FirstName,LastName,REPLICATE('0', 4)+LastName from String_Functions

--REVERSE
SELECT FirstName, REVERSE(FirstName) AS Reverse FROM String_Functions  

--RIGHT
SELECT RIGHT(FirstName, 5) AS 'First Name' FROM String_Functions  

--RTRIM
SELECT RTRIM('Four spaces are after the period in this sentence.    ') + 'Next string.'

--SOUNDEX 
SELECT SOUNDEX ('Smith'), SOUNDEX ('Smythe')

--SPACE 
SELECT RTRIM(LastName) + ',' + SPACE(2) +  LTRIM(FirstName) FROM String_Functions 

--STR
SELECT STR(123.45, 6, 1)

--STUFF
SELECT STUFF('Navanita', 2, 3, 'Jivangi')

--SUBSTRING
SELECT SUBSTRING('Navanita', 2, 3)

--UNICODE
DECLARE ,@nstring NCHAR(12) SET @nstring = N'Åkergatan 24' SELECT UNICODE(@nstring), NCHAR(UNICODE(@nstring))

--UPPER 
SELECT UPPER(RTRIM(LastName)) + ', ' + FirstName AS Name FROM String_Functions