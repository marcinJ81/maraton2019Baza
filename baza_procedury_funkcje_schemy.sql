USE [1208_MaratonMszana]
GO
/****** Object:  Schema [1208_Maraton]    Script Date: 2019-02-04 10:07:04 ******/
CREATE SCHEMA [1208_Maraton]
GO
/****** Object:  Schema [1208_testsMaraton]    Script Date: 2019-02-04 10:07:04 ******/
CREATE SCHEMA [1208_testsMaraton]
GO
/****** Object:  Schema [participant]    Script Date: 2019-02-04 10:07:04 ******/
CREATE SCHEMA [participant]
GO
/****** Object:  Schema [register]    Script Date: 2019-02-04 10:07:04 ******/
CREATE SCHEMA [register]
GO
/****** Object:  Schema [registration]    Script Date: 2019-02-04 10:07:04 ******/
CREATE SCHEMA [registration]
GO
/****** Object:  UserDefinedFunction [dbo].[fLiczIloscList]    Script Date: 2019-02-04 10:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fLiczIloscList]
(
	@ilosc int
)
RETURNS int
AS
BEGIN
	declare @wynik int
	select @wynik = cast(ceiling(cast(@ilosc as real) / 15) as int);
	-- Return the result of the function
	RETURN @wynik
END
GO
/****** Object:  UserDefinedFunction [participant].[fTimeSegment]    Script Date: 2019-02-04 10:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [participant].[fTimeSegment]
(
       @czas1 datetime,
       @czas2 datetime
)
RETURNS varchar(8)
AS
BEGIN
       declare @wynik varchar(8)
       declare @hh int
       declare @mm int
       declare @ss int

       select 
             @hh = DATEDIFF(HOUR, @czas1, @czas2),
             @mm = DATEDIFF(MINUTE, @czas1, @czas2)%60,
             @ss = DATEDIFF(SECOND, @czas1,@czas2)%60

       select
             @wynik = cast(@hh as varchar)
             + ':' + cast(@mm as varchar)
             + ':' + cast(@ss as varchar)

       RETURN @wynik
END
GO
/****** Object:  Table [dbo].[Dystans]    Script Date: 2019-02-04 10:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dystans](
	[dys_id] [int] IDENTITY(1,1) NOT NULL,
	[dys_wartosc] [varchar](50) NULL,
	[dys_aktywny] [bit] NULL,
	[info_id] [int] NULL,
 CONSTRAINT [PK_Dystans] PRIMARY KEY CLUSTERED 
(
	[dys_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dystans_info]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dystans_info](
	[info_id] [int] IDENTITY(1,1) NOT NULL,
	[info_start_time] [varchar](50) NULL,
	[info_start_date] [varchar](50) NULL,
	[info_oplata] [varchar](50) NULL,
 CONSTRAINT [PK_dystans_info] PRIMARY KEY CLUSTERED 
(
	[info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exception_Table]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exception_Table](
	[er_id] [int] IDENTITY(1,1) NOT NULL,
	[er_name] [varchar](50) NULL,
	[er_description] [varchar](300) NULL,
	[er_Date] [datetime] NULL,
 CONSTRAINT [PK_Exception_Table] PRIMARY KEY CLUSTERED 
(
	[er_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grupa_kolarska]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grupa_kolarska](
	[grupa_id] [int] IDENTITY(1,1) NOT NULL,
	[grupa_nazwa] [varchar](50) NULL,
 CONSTRAINT [PK_grupa_kolarska] PRIMARY KEY CLUSTERED 
(
	[grupa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kartoteka_2018]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kartoteka_2018](
	[kart_id] [int] NOT NULL,
	[kart_imie] [varchar](50) NULL,
	[kart_imie2] [varchar](50) NULL,
	[kart_nazwisko] [varchar](50) NULL,
	[kart_email] [varchar](50) NULL,
	[kart_telefon] [varchar](10) NULL,
	[kart_miejscowosc] [varchar](50) NULL,
	[kart_ulica] [varchar](50) NULL,
	[kart_nrDM] [varchar](10) NULL,
	[kart_kodPocz] [varchar](10) NULL,
	[kart_aktywny] [bit] NULL,
	[zaw_id] [int] NULL,
	[kart_pesel] [varchar](100) NULL,
	[kart_zgoda1] [bit] NULL,
	[kart_zgoda2] [bit] NULL,
	[kart_zgoda3] [bit] NULL,
	[kart_uwagi] [varchar](255) NULL,
	[dys_id] [int] NULL,
	[plec_id] [int] NULL,
	[kart_wiek] [int] NULL,
	[kart_kod1] [int] NULL,
	[kart_kod2] [int] NULL,
	[kart_data] [date] NULL,
	[kart_dataCzas] [datetime] NULL,
 CONSTRAINT [PK_kartoteka2018] PRIMARY KEY CLUSTERED 
(
	[kart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kartoteka_TMP]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kartoteka_TMP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imie] [varchar](50) NULL,
	[nazwisko] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[dataRej] [datetime] NULL,
	[limitCzasu] [int] NULL,
	[dataKoncowa] [datetime] NULL,
	[rejestracja] [int] NULL,
 CONSTRAINT [PK_kartoteka_TMP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kartoteka2]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[kartoteka2](
	[kart_id] [int] IDENTITY(1,1) NOT NULL,
	[kart_imie] [varchar](50) NOT NULL,
	[kart_nazwisko] [varchar](50) NOT NULL,
	[kart_email] [varchar](50) NOT NULL,
	[kart_telefon] [varchar](50) NULL,
	[kart_uwagi] [varchar](100) NULL,
	[plec_id] [int] NULL,
	[dys_id] [int] NULL,
	[grup_id] [int] NULL,
	[kart_dataUr] [date] NULL,
	[kart_dataRej] [datetime] NULL,
	[kart_wpis_rejestacja] [bit] NULL,
	[kart_wpis_oplata] [bit] NULL,
	[kart_wpis_rezerwowa] [bit] NULL,
 CONSTRAINT [PK_kartoteka2] PRIMARY KEY CLUSTERED 
(
	[kart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_kartoteka2] UNIQUE NONCLUSTERED 
(
	[kart_imie] ASC,
	[kart_nazwisko] ASC,
	[kart_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plec]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plec](
	[plec_id] [int] NOT NULL,
	[plec_opis] [varchar](50) NULL,
 CONSTRAINT [PK_Plec] PRIMARY KEY CLUSTERED 
(
	[plec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [participant].[Result]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Result](
	[result_id] [int] IDENTITY(1,1) NOT NULL,
	[result_time] [time](7) NULL,
	[zaw_id] [int] NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [participant].[Start_List]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [participant].[Start_List](
	[list_id] [int] IDENTITY(1,1) NOT NULL,
	[list_nazwa] [varchar](50) NULL,
	[list_iloscMaks] [int] NULL,
	[list_ilosc] [int] NULL,
	[list_data] [date] NULL,
	[list_czas] [time](7) NULL,
	[list_zamknieta] [bit] NULL,
	[dys_id] [int] NULL,
	[list_start] [bit] NULL,
 CONSTRAINT [PK_Start_List] PRIMARY KEY CLUSTERED 
(
	[list_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [participant].[Tag_Number]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [participant].[Tag_Number](
	[tag_id] [int] IDENTITY(1,1) NOT NULL,
	[tag_IdNumber] [varchar](20) NULL,
	[tag_LabelNumber] [int] NULL,
 CONSTRAINT [PK_Tag_Number] PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [participant].[Time_Registration]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Time_Registration](
	[time_id] [int] IDENTITY(1,1) NOT NULL,
	[time_registration] [datetime] NULL,
	[zaw_id] [int] NULL,
	[time_counter] [int] NULL,
 CONSTRAINT [PK_Time_Registration] PRIMARY KEY CLUSTERED 
(
	[time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [participant].[Zawodnik]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [participant].[Zawodnik](
	[zaw_id] [int] IDENTITY(1,1) NOT NULL,
	[zaw_aktywny] [bit] NULL,
	[kartoteka_id] [int] NULL,
	[list_id] [int] NULL,
	[tag_id] [int] NULL,
	[time_id] [int] NULL,
 CONSTRAINT [PK_zawodnik] PRIMARY KEY CLUSTERED 
(
	[zaw_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [register].[PasswordTable]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [register].[PasswordTable](
	[pass_id] [int] IDENTITY(1,1) NOT NULL,
	[pass_haslo] [varchar](300) NULL,
	[pass_data] [datetime] NULL,
	[pass_haslo2] [varchar](300) NULL,
	[pass_aktywny] [bit] NULL,
 CONSTRAINT [PK_PasswordTable] PRIMARY KEY CLUSTERED 
(
	[pass_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [register].[UserTable]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [register].[UserTable](
	[usesr_id] [int] IDENTITY(1,1) NOT NULL,
	[user_login] [varchar](50) NOT NULL,
	[user_imie] [varchar](50) NOT NULL,
	[user_nazwisko] [varchar](50) NOT NULL,
	[user_rejestracja] [datetime] NOT NULL,
	[user_aktywny] [bit] NOT NULL,
	[pass_id] [int] NULL,
 CONSTRAINT [PK_uzytkownik] PRIMARY KEY CLUSTERED 
(
	[usesr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_UserTable] UNIQUE NONCLUSTERED 
(
	[user_login] ASC,
	[user_imie] ASC,
	[user_nazwisko] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[VmodelExt]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view  [dbo].[VmodelExt] as
SELECT 
    [Project1].[dys_id] AS [dys_id], 
    [Project1].[kart_imie] AS [kart_imie], 
    [Project1].[kart_nazwisko] AS [kart_nazwisko], 
    [Project1].[dys_wartosc] AS [dys_wartosc], 
    [Project1].[grupa_nazwa] AS [grupa_nazwa], 
    [Project1].[kart_wpis_rejestacja] AS [kart_wpis_rejestacja], 
    [Project1].[C2] AS [C1], 
    [Project1].[C1] AS [C2]
    FROM ( SELECT 
        [Extent1].[kart_imie] AS [kart_imie], 
        [Extent1].[kart_nazwisko] AS [kart_nazwisko], 
        [Extent1].[kart_wpis_rejestacja] AS [kart_wpis_rejestacja], 
        [Extent2].[dys_id] AS [dys_id], 
        [Extent2].[dys_wartosc] AS [dys_wartosc], 
        CASE WHEN (1 = [Extent1].[kart_wpis_oplata]) THEN N'Tak' ELSE N'Nie' END AS [C1], 
        CASE WHEN (1 = [Extent1].[kart_wpis_rezerwowa]) THEN N'Tak' ELSE N'Nie' END AS [C2], 
        [Extent3].[grupa_nazwa] AS [grupa_nazwa]
        FROM   [dbo].[kartoteka2] AS [Extent1]
        INNER JOIN [dbo].[Dystans] AS [Extent2] ON [Extent1].[dys_id] = [Extent2].[dys_id]
        INNER JOIN [dbo].[grupa_kolarska] AS [Extent3] ON [Extent1].[grup_id] = [Extent3].[grupa_id]
        WHERE  NOT ((0 = [Extent1].[kart_wpis_rejestacja]) AND ([Extent1].[kart_wpis_rejestacja] IS NOT NULL))
    )  AS [Project1]

GO
/****** Object:  View [dbo].[VOneColumn]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VOneColumn] as

select kart_imie as imie, kart_nazwisko as nazwisko, (kart_imie + ' ' + kart_nazwisko 
	+' ' + grupa_nazwa + ' ' + dys_wartosc + ' ' + 'rezerwa ' + C1 + ' ' + 'opłacono ' + C2) as dane 
from Vmodelext
GO
/****** Object:  View [dbo].[modelExt]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view  [dbo].[modelExt] as
SELECT 
    [Project1].[dys_id] AS [dys_id], 
    [Project1].[kart_imie] AS [kart_imie], 
    [Project1].[kart_nazwisko] AS [kart_nazwisko], 
    [Project1].[dys_wartosc] AS [dys_wartosc], 
    [Project1].[grupa_nazwa] AS [grupa_nazwa], 
    [Project1].[kart_wpis_rejestacja] AS [kart_wpis_rejestacja], 
    [Project1].[C2] AS [C1], 
    [Project1].[C1] AS [C2]
    FROM ( SELECT 
        [Extent1].[kart_imie] AS [kart_imie], 
        [Extent1].[kart_nazwisko] AS [kart_nazwisko], 
        [Extent1].[kart_wpis_rejestacja] AS [kart_wpis_rejestacja], 
        [Extent2].[dys_id] AS [dys_id], 
        [Extent2].[dys_wartosc] AS [dys_wartosc], 
        CASE WHEN (1 = [Extent1].[kart_wpis_oplata]) THEN N'Tak' ELSE N'Nie' END AS [C1], 
        CASE WHEN (1 = [Extent1].[kart_wpis_rezerwowa]) THEN N'Tak' ELSE N'Nie' END AS [C2], 
        [Extent3].[grupa_nazwa] AS [grupa_nazwa]
        FROM   [dbo].[kartoteka2] AS [Extent1]
        INNER JOIN [dbo].[Dystans] AS [Extent2] ON [Extent1].[dys_id] = [Extent2].[dys_id]
        INNER JOIN [dbo].[grupa_kolarska] AS [Extent3] ON [Extent1].[grup_id] = [Extent3].[grupa_id]
        WHERE  NOT ((0 = [Extent1].[kart_wpis_rejestacja]) AND ([Extent1].[kart_wpis_rejestacja] IS NOT NULL))
    )  AS [Project1]

GO
ALTER TABLE [dbo].[Dystans]  WITH CHECK ADD  CONSTRAINT [FK_Dystans_dystans_info] FOREIGN KEY([info_id])
REFERENCES [dbo].[dystans_info] ([info_id])
GO
ALTER TABLE [dbo].[Dystans] CHECK CONSTRAINT [FK_Dystans_dystans_info]
GO
ALTER TABLE [dbo].[kartoteka2]  WITH CHECK ADD  CONSTRAINT [FK_kartoteka2_Dystans] FOREIGN KEY([dys_id])
REFERENCES [dbo].[Dystans] ([dys_id])
GO
ALTER TABLE [dbo].[kartoteka2] CHECK CONSTRAINT [FK_kartoteka2_Dystans]
GO
ALTER TABLE [dbo].[kartoteka2]  WITH CHECK ADD  CONSTRAINT [FK_kartoteka2_grupa_kolarska] FOREIGN KEY([grup_id])
REFERENCES [dbo].[grupa_kolarska] ([grupa_id])
GO
ALTER TABLE [dbo].[kartoteka2] CHECK CONSTRAINT [FK_kartoteka2_grupa_kolarska]
GO
ALTER TABLE [dbo].[kartoteka2]  WITH CHECK ADD  CONSTRAINT [FK_kartoteka2_Plec] FOREIGN KEY([plec_id])
REFERENCES [dbo].[Plec] ([plec_id])
GO
ALTER TABLE [dbo].[kartoteka2] CHECK CONSTRAINT [FK_kartoteka2_Plec]
GO
ALTER TABLE [participant].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Zawodnik] FOREIGN KEY([zaw_id])
REFERENCES [participant].[Zawodnik] ([zaw_id])
GO
ALTER TABLE [participant].[Result] CHECK CONSTRAINT [FK_Result_Zawodnik]
GO
ALTER TABLE [participant].[Start_List]  WITH CHECK ADD  CONSTRAINT [FK_dystans] FOREIGN KEY([dys_id])
REFERENCES [dbo].[Dystans] ([dys_id])
GO
ALTER TABLE [participant].[Start_List] CHECK CONSTRAINT [FK_dystans]
GO
ALTER TABLE [participant].[Time_Registration]  WITH CHECK ADD  CONSTRAINT [FK_Time_Registration_Zawodnik] FOREIGN KEY([zaw_id])
REFERENCES [participant].[Zawodnik] ([zaw_id])
GO
ALTER TABLE [participant].[Time_Registration] CHECK CONSTRAINT [FK_Time_Registration_Zawodnik]
GO
ALTER TABLE [participant].[Zawodnik]  WITH CHECK ADD  CONSTRAINT [FK_Zawodnik_Start_List] FOREIGN KEY([list_id])
REFERENCES [participant].[Start_List] ([list_id])
GO
ALTER TABLE [participant].[Zawodnik] CHECK CONSTRAINT [FK_Zawodnik_Start_List]
GO
ALTER TABLE [participant].[Zawodnik]  WITH CHECK ADD  CONSTRAINT [FK_Zawodnik_Tag_Number] FOREIGN KEY([tag_id])
REFERENCES [participant].[Tag_Number] ([tag_id])
GO
ALTER TABLE [participant].[Zawodnik] CHECK CONSTRAINT [FK_Zawodnik_Tag_Number]
GO
ALTER TABLE [register].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_haslo] FOREIGN KEY([pass_id])
REFERENCES [register].[PasswordTable] ([pass_id])
GO
ALTER TABLE [register].[UserTable] CHECK CONSTRAINT [FK_haslo]
GO
/****** Object:  StoredProcedure [dbo].[pDodajGrupa]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- MJ
-- 03.07.2018
-- dodanie nowej grupy dla bezpieczenstawa procedura
-- =============================================
CREATE PROCEDURE [dbo].[pDodajGrupa](
 @grupa varchar(50)
)
AS
BEGIN
	INSERT INTO [dbo].[grupa_kolarska]
           ([grupa_nazwa])
     VALUES
           (@grupa)
END


GO
/****** Object:  StoredProcedure [dbo].[pDodajZawodnikaDoListy]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pDodajZawodnikaDoListy]
(
	@imie varchar(50),
	@nazwisko varchar(50),
	@komunikat varchar(50) output
)
as
begin
	declare @idZaw int
	declare @idDystans int
	declare @idListy int
	declare @idListyZaw int
	declare @ilosc int
	--declare @komunikat varchar(50)
	select @idZaw = zaw_id,@idDystans = dys_id,@idListyZaw = lista_id from zawodnik 
	where zaw_imie = @imie and zaw_nazwisko = @nazwisko
	if(@idZaw >0)
	begin
		if(@idListyZaw is null)
		begin
			if(@idDystans > 0)
			begin
				select Top(1) @idListy = lista_id from lista_startowa
				where dys_id = @idDystans and lista_zamknieta = 0 and lista_ilosc < 13
				if(@idListy > 0)
				begin
					select @ilosc = lista_ilosc  from lista_startowa where lista_id = @idListy
					update zawodnik set lista_id = @idListy where zaw_id = @idZaw
					update lista_startowa set lista_ilosc = @ilosc + 1 where lista_id = @idListy
					select @ilosc = lista_ilosc  from lista_startowa where lista_id = @idListy
					--po dodaniu zawodnika do listy ilosc miejsc wzrosla do 15
					if(@ilosc >= 13)
					begin
						update lista_startowa set lista_zamknieta = 1 where lista_id = @idListy
						INSERT INTO [dbo].[lista_startowa]
							([lista_nazwa],[lista_iloscMaks],[lista_ilosc],[lista_data],[lista_czas],[lista_zamknieta],[dys_id],[lista_start])
						VALUES
						   ('nazwa' + CAST(@idDystans as varchar(1)) + '00',15,0,cast(GETDATE() as date), GETDATE(),0,@idDystans,0) 
					end
				end
				else
				begin
					--dodaje nowa liste
					select Top(1) @idListy = lista_id from lista_startowa
					where dys_id = @idDystans and lista_ilosc = 13 --and lista_zamknieta = 0
					if(@idListy > 0)
					begin
						update lista_startowa set lista_zamknieta = 1 where lista_id = @idListy
						INSERT INTO [dbo].[lista_startowa]
							([lista_nazwa],[lista_iloscMaks],[lista_ilosc],[lista_data],[lista_czas],[lista_zamknieta],[dys_id],[lista_start])
						VALUES
						   ('nazwa',15,0,cast(GETDATE() as date),GETDATE(),0,@idDystans,0) 
					end
					else
					begin
						set @komunikat = 'Lista nie ma przypisanego dystansu: ' + cast(@idDystans as varchar)
						print @komunikat
					end
			
				end
		
			end
			else
			begin
				set @komunikat = 'brak dystansu'
				print @komunikat
			end
		end
		else
		begin
			set @komunikat = 'zawodnik przypisany do listy: ' + cast(@idListyZaw as varchar)
			print @komunikat
		end
	end
	else
	begin
		set @komunikat = 'Brak zawodnika'
	 print @komunikat
	end
end

GO
/****** Object:  StoredProcedure [dbo].[pKartotekaZawodnikaDodaj]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- MJ
-- 03.07.2018
-- Procedura dodawania zawodnika, baz zmyslnych warunkow jak poprzednio
-- proceura wywolywana przez weba:
-- true - rejestracja
-- true - lista rezerwowa
-- 22.08.2018 - blad zwiazany z dodanie nulla do kolumny rezerwa mialo byc true
--			  -	oplata null		
-- =============================================
CREATE PROCEDURE [dbo].[pKartotekaZawodnikaDodaj](
@imie varchar(50),
@nazwisko varchar(50),
@email varchar(50),
@dataU Date,
@plec_id int,
@fafon varchar(15),
@uwagi varchar(100),
@dys_id int,
@grupa_id int,
@rejestrcja bit,
@rezerwa bit
) 
AS
BEGIN
	
	INSERT INTO [dbo].[kartoteka2]
           ([kart_imie],[kart_nazwisko],[kart_email],[kart_telefon],[kart_uwagi],[plec_id]
           ,[dys_id],[grup_id],[kart_dataUr],[kart_dataRej],[kart_wpis_rejestacja]
           ,[kart_wpis_oplata],[kart_wpis_rezerwowa])
     VALUES
           (@imie,@nazwisko,@email,@fafon,@uwagi,@plec_id,@dys_id,@grupa_id,@dataU,GETDATE()
           ,@rejestrcja,null,@rezerwa)
END
GO
/****** Object:  StoredProcedure [dbo].[pLista_addEmpty]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- procedura tworzy puste listy startowe ilosc zalezna
-- od ilosc aktywnych zawodnikow majacych polaczenie
-- z numerem, czasem i wynikami
--trzeba zabezpieczyc sie przed ciaglym dodawaniem list
--czyli np przypadkowe uruchomienie
--najlepiej sprawdzic czy listy istnieja i sa puste lub pelne
--nie jest wziete pod uwage jeszcze dystanse przy dodawaniu list trzeba
--by podzial zrobic na zwodnikow z odpowiendimi dystansami
-- i dla nich robic podzial list
-- usunołem jedna linijke taka jak byla w funkcji
-- czemu to trza sie pytac autora czyli mnie
--13.02.2017
--zmian algorytmu generowania list startowych, teraz generuje
--z wpisaniem dystansu
--17.03.2017 - dodanie warunku pobierajego tylko zwodnikow ktorzy nie sa na zadnej liscie
--18.05.2018 - dodanie nowego dystansu w while
-- =============================================
create PROCEDURE [dbo].[pLista_addEmpty]
AS
BEGIN
declare @ilosc int
declare @wynik int = 0
declare @i int = 1

declare @j int = 1

while @i <= 8
begin
	select @wynik = dbo.fLiczIloscList(count(zaw_id))
	 from zawodnik
	where
		dys_id = @i and lista_id is null
	group by dys_id

	while (@j <= @wynik)
	begin
		 insert into lista_startowa
         (lista_nazwa,lista_iloscMaks,lista_ilosc,lista_data,lista_zamknieta,dys_id,lista_start)
          values
          ('numer' + cast(@j as varchar) + '_' + CAST(@i as varchar)+ '00',15,0,GETDATE(),0,@i,0)
          set @j = @j + 1
	end
	set @i = @i + 1 
	set @j = 1
end 


END

GO
/****** Object:  StoredProcedure [participant].[pDodajZawodnikaDoListy]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [participant].[pDodajZawodnikaDoListy]
(
	@zaw_imie varchar(50),
	@zaw_nazwisko varchar(50),
	@zaw_email varchar(50),
	@komunikat varchar(50) output
)
as
begin
	declare @idDystans int
	declare @idListy int
	declare @idListyZaw int
	declare @ilosc int
	declare @kart_id int
	declare @id_zaw int

	select @kart_id = kart_id, @idDystans = dys_id from kartoteka2 
	where 
		kart_imie = @zaw_imie and kart_nazwisko = @zaw_nazwisko and kart_email = @zaw_email

	select @id_zaw = zaw_id,@idListyZaw = list_id from zawodnik 
	where zaw_id = @id_zaw and zaw_aktywny = 1
	if(@id_zaw >0)
	begin
		if(@idListyZaw is null)
		begin
			if(@idDystans > 0)
			begin
				select Top(1) @idListy = list_id from [participant].[Start_list]
				where dys_id = @idDystans and list_zamknieta = 0 and list_ilosc < 13
				if(@idListy > 0)
				begin
					select @ilosc = list_ilosc  from [participant].[Start_list] where list_id = @idListy
					update zawodnik set list_id = @idListy where zaw_id = @id_zaw
					update [participant].[Start_list] set list_ilosc = @ilosc + 1 where list_id = @idListy
					select @ilosc = list_ilosc  from [participant].[Start_list] where list_id = @idListy
					--po dodaniu zawodnika do listy ilosc miejsc wzrosla do 15
					if(@ilosc >= 13)
					begin
						update [participant].[Start_list] set list_zamknieta = 1 where list_id = @idListy
						INSERT INTO [participant].[Start_list]
							([list_nazwa],[list_iloscMaks],[list_ilosc],[list_data],[list_czas],[list_zamknieta],[dys_id],[list_start])
						VALUES
						   ('nazwa' + CAST(@idDystans as varchar(1)) + '00',15,0,cast(GETDATE() as date), GETDATE(),0,@idDystans,0) 
					end
				end
				else
				begin
					--dodaje nowa liste
					select Top(1) @idListy = list_id from [participant].[Start_list]
					where dys_id = @idDystans and list_ilosc = 13 --and lista_zamknieta = 0
					if(@idListy > 0)
					begin
						update [participant].[Start_list] set list_zamknieta = 1 where list_id = @idListy
						INSERT INTO [participant].[Start_list]
							([list_nazwa],[list_iloscMaks],[list_ilosc],[list_data],[list_czas],[list_zamknieta],[dys_id],[list_start])
						VALUES
						   ('nazwa',15,0,cast(GETDATE() as date),GETDATE(),0,@idDystans,0) 
					end
					else
					begin
						set @komunikat = 'Lista nie ma przypisanego dystansu: ' + cast(@idDystans as varchar)
						print @komunikat
					end
			
				end
		
			end
			else
			begin
				set @komunikat = 'brak dystansu'
				print @komunikat
			end
		end
		else
		begin
			set @komunikat = 'zawodnik przypisany do listy: ' + cast(@idListyZaw as varchar)
			print @komunikat
		end
	end
	else
	begin
		set @komunikat = 'Brak zawodnika'
	 print @komunikat
	end
end

GO
/****** Object:  StoredProcedure [participant].[RegistrationTimeAndCheck]    Script Date: 2019-02-04 10:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- rejestracja czasu
CREATE procedure [participant].[RegistrationTimeAndCheck](
@zaw_id int,
@rejestracja datetime
)
as
begin
	--declare @zaw_id int = 1 --testy
	declare @iloscRejestracji int
	declare @odbicie datetime
	--declare @rejestracja datetime = '2018-09-05 17:05:00' --testy
	declare @roznicaCzasu int
	declare @licznik int
	declare @resultPeriod time
	--
	select @iloscRejestracji = count(time_id) from Time_Registration
	where zaw_id = @zaw_id

	if(@iloscRejestracji > 0)
	begin
		   select top 1 @odbicie = time_registration from Time_Registration
	where zaw_id = @zaw_id order by time_registration desc
		   select @roznicaCzasu = DATEDIFF(minute,@odbicie,@rejestracja)
		   if( @roznicaCzasu > 30 )
		   begin
					 --mozliwosc inserta
				select @licznik = time_counter from Time_Registration
				where zaw_id = @zaw_id
				set @licznik = @licznik + 1

				INSERT INTO [participant].[Time_Registration]
				   ([time_registration],[time_counter],[zaw_id])
				VALUES
				   (@rejestracja,@licznik,@zaw_id)
						print 'czas zarejestrowany'

				--insert do tabeli z wynikami
				select @resultPeriod = [participant].[fTimeSegment](@odbicie,@rejestracja)
				insert into [participant].[Result]
					([result_time],[zaw_id])
				values
					(@resultPeriod,@zaw_id)
				print 'odcinek czasu w tabeli result'
		   end
		   else
		   begin
				 print 'brak mozliwosci odbicia - limit czasu'
		   end
	end
	else
	begin
	--pierwsza rejestracja - start
		   INSERT INTO [participant].[Time_Registration]
			   ([time_registration],[time_counter],[zaw_id])
		 VALUES
			   (GETDATE(),1,@zaw_id)

		   print 'start zawodnika'
	end
end

GO
