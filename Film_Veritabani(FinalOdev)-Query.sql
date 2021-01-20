create database Film_Veritabani;

use Film_Veritabani

-------------------------------------------Tablo oluþturma--------------------------------------------

CREATE TABLE Filmler
(
Film_ID int IDENTITY(1,1) NOT NULL,
Ad varchar(25) NOT NULL,
Tarih int NOT NULL,
IMDB_Puan int NULL,

PRIMARY KEY CLUSTERED
(
	Film_ID ASC
) ON [PRIMARY]

);


CREATE TABLE Film_Turler 
(
Tur_ID int IDENTITY(1,1),
Tur_Ad varchar(20) NOT NULL,

PRIMARY KEY CLUSTERED
(
	Tur_ID ASC
) ON [PRIMARY]

);


CREATE TABLE Basrol_Oyuncular 
(
Oyuncu_ID int IDENTITY(1,1),
Ad varchar(20) NOT NULL,
Soyad varchar(30) NOT NULL,

PRIMARY KEY CLUSTERED
(
	Oyuncu_ID ASC
) ON [PRIMARY]

);


CREATE TABLE Yoneticiler
(
Yonetici_ID int IDENTITY(1,1),
Yonetmen varchar(20) NOT NULL,
Yapimci varchar(20) NULL,

PRIMARY KEY CLUSTERED
(
	Yonetici_ID ASC
) ON [PRIMARY]

);


-----------------------------Foreign Key iþlemleri----------------------------------------------------


ALTER TABLE Film_Turler
ADD FOREIGN KEY (Tur_ID) REFERENCES Filmler(Film_ID);

ALTER TABLE Basrol_Oyuncular
ADD FOREIGN KEY (Oyuncu_ID) REFERENCES Filmler(Film_ID);

ALTER TABLE Yoneticiler
ADD FOREIGN KEY (Yonetici_ID) REFERENCES Filmler(Film_ID);



-------------------------------Stored Procedure(Inner Join)---------------------------------------------

CREATE PROCEDURE sp_filmbutuntablo
as
SELECT F.Film_ID, F.Ad, FT.Tur_Ad, BO.Ad, BO.Soyad, Y.Yonetmen, Y.Yapimci FROM Filmler F INNER JOIN Basrol_Oyuncular BO 
ON F.Film_ID = BO.Oyuncu_ID INNER JOIN Yoneticiler Y 
ON F.Film_ID = Y.Yonetici_ID INNER JOIN Film_Turler FT 
ON F.Film_ID = FT.Tur_ID;

execute sp_filmbutuntablo 




CREATE PROCEDURE sp_filmturgetir
as
SELECT F.*, FT.Tur_Ad FROM Filmler F INNER JOIN Film_Turler FT 
ON F.Film_ID = FT.Tur_ID;

execute sp_filmturgetir




CREATE PROCEDURE sp_filmoyuncugetir
as
SELECT F.*, BO.Ad, BO.Soyad FROM Filmler F INNER JOIN Basrol_Oyuncular BO
ON F.Film_ID = BO.Oyuncu_ID;

execute sp_filmoyuncugetir




CREATE PROCEDURE sp_filmyonetmengetir
as
SELECT F.*, Y.Yonetmen, Y.Yapimci FROM Filmler F INNER JOIN Yoneticiler Y
ON F.Film_ID = Y.Yonetici_ID;

execute sp_filmyonetmengetir



-------------------------------------------Index kýsmý----------------------------------------------------

CREATE NONCLUSTERED INDEX CNI_1 ON Filmler
(
Film_ID, Ad, Tarih, IMDB_Puan
)

SELECT * FROM Filmler




CREATE NONCLUSTERED INDEX CNI_2 ON Basrol_Oyuncular
(
Oyuncu_ID, Ad, Soyad
)

SELECT * FROM Basrol_Oyuncular




CREATE NONCLUSTERED INDEX CNI_1 ON Film_Turler
(
Tur_ID, Tur_Ad
)

SELECT * FROM Film_Turler




CREATE NONCLUSTERED INDEX CNI_1 ON Yoneticiler
(
Yonetici_ID, Yonetmen, Yapimci
)

SELECT * FROM Yoneticiler


----------------------------------------Stored Procedure(Insert Into)----------------------------------------------
CREATE PROCEDURE sp_filmlerkayitekle
(
@Ad varchar(25),
@Tarih int,
@IMDB_Puan int
)

AS
BEGIN

INSERT INTO Filmler (Ad,Tarih,IMDB_Puan)

VALUES (@Ad,@Tarih,@IMDB_Puan)

END


EXECUTE sp_filmlerkayitekle
'Esaretin Bedeli', '1994', '9'
EXECUTE sp_filmlerkayitekle
'Baba','1972','9'
EXECUTE sp_filmlerkayitekle
'Kara Þovalye','2008','9'
EXECUTE sp_filmlerkayitekle
'12 Ofkeli Adam','1957','9'
EXECUTE sp_filmlerkayitekle
'Sýký Dostlar','1990','8'
EXECUTE sp_filmlerkayitekle
'Yýldýzlararasý','2014','8'
EXECUTE sp_filmlerkayitekle
'Yeþil Yol','1999','8'
EXECUTE sp_filmlerkayitekle
'Yedi','1995','8'
EXECUTE sp_filmlerkayitekle
'Joker','2019','8'
EXECUTE sp_filmlerkayitekle
'Gizemli Nehir','2003','7'
EXECUTE sp_filmlerkayitekle
'Son Umut','2006','7'
EXECUTE sp_filmlerkayitekle
'Küçük Kadýnlar','2019','7'
EXECUTE sp_filmlerkayitekle
'Tenet','2020','7'


SELECT * FROM Filmler




CREATE PROCEDURE sp_filmturlerkayitekle
(
@Tur_Ad varchar(20)
)

AS
BEGIN

INSERT INTO Film_Turler(Tur_Ad)

VALUES (@Tur_Ad)

END


EXECUTE sp_filmturlerkayitekle
'Drama'
EXECUTE sp_filmturlerkayitekle
'Suç'
EXECUTE sp_filmturlerkayitekle
'Aksiyon'
EXECUTE sp_filmturlerkayitekle
'Drama'
EXECUTE sp_filmturlerkayitekle
'Suç'
EXECUTE sp_filmturlerkayitekle
'Bilimkurgu'
EXECUTE sp_filmturlerkayitekle
'Drama'
EXECUTE sp_filmturlerkayitekle
'Gerilim'
EXECUTE sp_filmturlerkayitekle
'Gerilim'
EXECUTE sp_filmturlerkayitekle
'Drama'
EXECUTE sp_filmturlerkayitekle
'Drama'
EXECUTE sp_filmturlerkayitekle
'Drama'


SELECT * FROM Film_Turler




CREATE PROCEDURE sp_oyuncularkayitekle
(
@Ad varchar(20),
@Soyad varchar(30) 
)

AS
BEGIN

INSERT INTO Basrol_Oyuncular(Ad,Soyad)

VALUES (@Ad,@Soyad)

END


EXECUTE sp_oyuncularkayitekle
'Morgan','Freeman'
EXECUTE sp_oyuncularkayitekle
'Al','Pacino'
EXECUTE sp_oyuncularkayitekle
'Heath','Ledger'
EXECUTE sp_oyuncularkayitekle
'Henry','Fonda'
EXECUTE sp_oyuncularkayitekle
'Ray','Liotta'
EXECUTE sp_oyuncularkayitekle
'Matthew','McConaughey'
EXECUTE sp_oyuncularkayitekle
'Tom','Hanks'
EXECUTE sp_oyuncularkayitekle
'Brad','Pitt'
EXECUTE sp_oyuncularkayitekle
'Joaquin','Phoenix'
EXECUTE sp_oyuncularkayitekle
'Kevin','Bacon'
EXECUTE sp_oyuncularkayitekle
'Russel','Crowe'
EXECUTE sp_oyuncularkayitekle
'Saoirse','Ronan'


SELECT * FROM Basrol_Oyuncular

CREATE PROCEDURE sp_yoneticilerkayitekle
(
@Yonetmen varchar(20),
@Yapimci varchar(20) 
)

AS
BEGIN

INSERT INTO Yoneticiler(Yonetmen,Yapimci)

VALUES (@Yonetmen,@Yapimci)

END

EXECUTE sp_yoneticilerkayitekle
'Frank Darabont', 'Niki Marvin'
EXECUTE sp_yoneticilerkayitekle
'Francis Ford Coppola', 'Francis Ford Coppola'
EXECUTE sp_yoneticilerkayitekle
'Cristopher Nolan', 'Cristopher Nolan'
EXECUTE sp_yoneticilerkayitekle
'Sidney Lumet', 'Henry Fonda'
EXECUTE sp_yoneticilerkayitekle
'Martin Scorsese', 'Irwin Winkler'
EXECUTE sp_yoneticilerkayitekle
'Christopher Nolan', 'Emma Thomas'
EXECUTE sp_yoneticilerkayitekle
'Frank Darabont', 'Frank Darabont'
EXECUTE sp_yoneticilerkayitekle
'Andrew Kopelson', 'Andrew Kevin Walker'
EXECUTE sp_yoneticilerkayitekle
'Todd Philips', 'Todd Philips'
EXECUTE sp_yoneticilerkayitekle
'Clint Eastwood', 'Robert Lorenz'
EXECUTE sp_yoneticilerkayitekle
'Russell Crowe', 'Troy Lum'
EXECUTE sp_yoneticilerkayitekle
'Greta Gerwig', 'Amy Pascal'


SELECT * FROM Yoneticiler