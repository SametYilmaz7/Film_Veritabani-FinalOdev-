USE [master]
GO
/****** Object:  Database [Film_Veritabani]    Script Date: 21.01.2021 02:03:37 ******/
CREATE DATABASE [Film_Veritabani]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Film_Veritabani', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Film_Veritabani.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Film_Veritabani_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Film_Veritabani_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Film_Veritabani] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Film_Veritabani].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Film_Veritabani] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Film_Veritabani] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Film_Veritabani] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Film_Veritabani] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Film_Veritabani] SET ARITHABORT OFF 
GO
ALTER DATABASE [Film_Veritabani] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Film_Veritabani] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Film_Veritabani] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Film_Veritabani] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Film_Veritabani] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Film_Veritabani] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Film_Veritabani] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Film_Veritabani] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Film_Veritabani] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Film_Veritabani] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Film_Veritabani] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Film_Veritabani] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Film_Veritabani] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Film_Veritabani] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Film_Veritabani] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Film_Veritabani] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Film_Veritabani] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Film_Veritabani] SET RECOVERY FULL 
GO
ALTER DATABASE [Film_Veritabani] SET  MULTI_USER 
GO
ALTER DATABASE [Film_Veritabani] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Film_Veritabani] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Film_Veritabani] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Film_Veritabani] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Film_Veritabani] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Film_Veritabani] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Film_Veritabani', N'ON'
GO
ALTER DATABASE [Film_Veritabani] SET QUERY_STORE = OFF
GO
USE [Film_Veritabani]
GO
/****** Object:  Table [dbo].[Basrol_Oyuncular]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basrol_Oyuncular](
	[Oyuncu_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](20) NOT NULL,
	[Soyad] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Oyuncu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Film_Turler]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film_Turler](
	[Tur_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tur_Ad] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tur_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[Film_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](25) NOT NULL,
	[Tarih] [int] NOT NULL,
	[IMDB_Puan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Film_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yoneticiler]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoneticiler](
	[Yonetici_ID] [int] IDENTITY(1,1) NOT NULL,
	[Yonetmen] [varchar](20) NOT NULL,
	[Yapimci] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Yonetici_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Basrol_Oyuncular] ON 

INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (1, N'Morgan', N'Freeman')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (2, N'Al', N'Pacino')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (3, N'Heath', N'Ledger')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (4, N'Henry', N'Fonda')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (5, N'Ray', N'Liotta')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (6, N'Matthew', N'McConaughey')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (7, N'Tom', N'Hanks')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (8, N'Brad', N'Pitt')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (9, N'Joaquin', N'Phoenix')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (10, N'Kevin', N'Bacon')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (11, N'Russel', N'Crowe')
INSERT [dbo].[Basrol_Oyuncular] ([Oyuncu_ID], [Ad], [Soyad]) VALUES (12, N'Saoirse', N'Ronan')
SET IDENTITY_INSERT [dbo].[Basrol_Oyuncular] OFF
GO
SET IDENTITY_INSERT [dbo].[Film_Turler] ON 

INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (1, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (2, N'Suç')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (3, N'Aksiyon')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (4, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (5, N'Suç')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (6, N'Bilimkurgu')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (7, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (8, N'Gerilim')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (9, N'Gerilim')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (10, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (11, N'Drama')
INSERT [dbo].[Film_Turler] ([Tur_ID], [Tur_Ad]) VALUES (12, N'Drama')
SET IDENTITY_INSERT [dbo].[Film_Turler] OFF
GO
SET IDENTITY_INSERT [dbo].[Filmler] ON 

INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (1, N'Esaretin Bedeli', 1994, 9)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (2, N'Baba', 1972, 9)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (3, N'Kara ?ovalye', 2008, 9)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (4, N'12 Ofkeli Adam', 1957, 9)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (5, N'Syky Dostlar', 1990, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (6, N'Yyldyzlararasy', 2014, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (7, N'Ye?il Yol', 1999, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (8, N'Yedi', 1995, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (9, N'Joker', 2019, 8)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (10, N'Gizemli Nehir', 2003, 7)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (11, N'Son Umut', 2006, 7)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (12, N'Küçük Kadynlar', 2019, 7)
INSERT [dbo].[Filmler] ([Film_ID], [Ad], [Tarih], [IMDB_Puan]) VALUES (13, N'Tenet', 2020, 7)
SET IDENTITY_INSERT [dbo].[Filmler] OFF
GO
SET IDENTITY_INSERT [dbo].[Yoneticiler] ON 

INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (1, N'Frank Darabont', N'Niki Marvin')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (2, N'Francis Ford Coppola', N'Francis Ford Coppola')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (3, N'Cristopher Nolan', N'Cristopher Nolan')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (4, N'Sidney Lumet', N'Henry Fonda')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (5, N'Martin Scorsese', N'Irwin Winkler')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (6, N'Christopher Nolan', N'Emma Thomas')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (7, N'Frank Darabont', N'Frank Darabont')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (8, N'Andrew Kopelson', N'Andrew Kevin Walker')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (9, N'Todd Philips', N'Todd Philips')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (10, N'Clint Eastwood', N'Robert Lorenz')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (11, N'Russell Crowe', N'Troy Lum')
INSERT [dbo].[Yoneticiler] ([Yonetici_ID], [Yonetmen], [Yapimci]) VALUES (12, N'Greta Gerwig', N'Amy Pascal')
SET IDENTITY_INSERT [dbo].[Yoneticiler] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CNI_2]    Script Date: 21.01.2021 02:03:37 ******/
CREATE NONCLUSTERED INDEX [CNI_2] ON [dbo].[Basrol_Oyuncular]
(
	[Oyuncu_ID] ASC,
	[Ad] ASC,
	[Soyad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CNI_1]    Script Date: 21.01.2021 02:03:37 ******/
CREATE NONCLUSTERED INDEX [CNI_1] ON [dbo].[Film_Turler]
(
	[Tur_ID] ASC,
	[Tur_Ad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CNI_1]    Script Date: 21.01.2021 02:03:37 ******/
CREATE NONCLUSTERED INDEX [CNI_1] ON [dbo].[Filmler]
(
	[Film_ID] ASC,
	[Ad] ASC,
	[Tarih] ASC,
	[IMDB_Puan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CNI_1]    Script Date: 21.01.2021 02:03:37 ******/
CREATE NONCLUSTERED INDEX [CNI_1] ON [dbo].[Yoneticiler]
(
	[Yonetici_ID] ASC,
	[Yonetmen] ASC,
	[Yapimci] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Basrol_Oyuncular]  WITH CHECK ADD FOREIGN KEY([Oyuncu_ID])
REFERENCES [dbo].[Filmler] ([Film_ID])
GO
ALTER TABLE [dbo].[Film_Turler]  WITH CHECK ADD FOREIGN KEY([Tur_ID])
REFERENCES [dbo].[Filmler] ([Film_ID])
GO
ALTER TABLE [dbo].[Yoneticiler]  WITH CHECK ADD FOREIGN KEY([Yonetici_ID])
REFERENCES [dbo].[Filmler] ([Film_ID])
GO
/****** Object:  StoredProcedure [dbo].[sp_filmbutuntablo]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_filmbutuntablo]
as
SELECT F.Film_ID, F.Ad, FT.Tur_Ad, BO.Ad, BO.Soyad, Y.Yonetmen, Y.Yapimci FROM Filmler F INNER JOIN Basrol_Oyuncular BO 
ON F.Film_ID = BO.Oyuncu_ID INNER JOIN Yoneticiler Y 
ON F.Film_ID = Y.Yonetici_ID INNER JOIN Film_Turler FT 
ON F.Film_ID = FT.Tur_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_filmlerkayitekle]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_filmlerkayitekle]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_filmoyuncugetir]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_filmoyuncugetir]
as
SELECT F.*, BO.Ad, BO.Soyad FROM Filmler F INNER JOIN Basrol_Oyuncular BO
ON F.Film_ID = BO.Oyuncu_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_filmturgetir]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_filmturgetir]
as
SELECT F.*, FT.Tur_Ad FROM Filmler F INNER JOIN Film_Turler FT 
ON F.Film_ID = FT.Tur_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_filmturlerkayitekle]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_filmturlerkayitekle]
(
@Tur_Ad varchar(20)
)

AS
BEGIN

INSERT INTO Film_Turler(Tur_Ad)

VALUES (@Tur_Ad)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_filmyonetmengetir]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_filmyonetmengetir]
as
SELECT F.*, Y.Yonetmen, Y.Yapimci FROM Filmler F INNER JOIN Yoneticiler Y
ON F.Film_ID = Y.Yonetici_ID;
GO
/****** Object:  StoredProcedure [dbo].[sp_oyuncularkayitekle]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_oyuncularkayitekle]
(
@Ad varchar(20),
@Soyad varchar(30) 
)

AS
BEGIN

INSERT INTO Basrol_Oyuncular(Ad,Soyad)

VALUES (@Ad,@Soyad)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_RebuildingIndexes]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_RebuildingIndexes]
as
declare @tableName sysname
declare @indexName sysname
declare @avgFragmentation float
declare @statement nvarchar(200)
declare index_cursor cursor for
select object_name(a.object_id) TableName,
b.Name IndexName,avg_fragmentation_in_percent from sys.dm_db_index_physical_stats(db_id(),null,null,null,null) a
inner join sysindexes b on a.object_id=b.id and
a.index_id=b.indid
where left(name,1)<>'_' 
open index_cursor
fetch next from index_cursor into @tableName,@indexName,@avgFragmentation
while @@fetch_status=0
begin
 if @avgFragmentation>=0
       set @statement='alter index ' + @indexName + ' on ' + @tableName + ' rebuild '
	   print @statement     
    exec sp_executesql @statement
 fetch next from index_cursor into @tableName,@indexName,@avgFragmentation
end
close index_cursor
deallocate index_cursor
GO
/****** Object:  StoredProcedure [dbo].[sp_yoneticilerkayitekle]    Script Date: 21.01.2021 02:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_yoneticilerkayitekle]
(
@Yonetmen varchar(20),
@Yapimci varchar(20) 
)

AS
BEGIN

INSERT INTO Yoneticiler(Yonetmen,Yapimci)

VALUES (@Yonetmen,@Yapimci)

END
GO
USE [master]
GO
ALTER DATABASE [Film_Veritabani] SET  READ_WRITE 
GO
