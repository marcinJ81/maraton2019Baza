USE [1208_MaratonMszana]
GO
/****** Object:  Table [dbo].[Dystans]    Script Date: 2018-10-08 09:11:16 ******/
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
/****** Object:  Table [dbo].[dystans_info]    Script Date: 2018-10-08 09:11:16 ******/
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
/****** Object:  Table [dbo].[Exception_Table]    Script Date: 2018-10-08 09:11:16 ******/
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
/****** Object:  Table [dbo].[grupa_kolarska]    Script Date: 2018-10-08 09:11:16 ******/
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
/****** Object:  Table [dbo].[kartoteka_TMP]    Script Date: 2018-10-08 09:11:16 ******/
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
/****** Object:  Table [dbo].[kartoteka2]    Script Date: 2018-10-08 09:11:16 ******/
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
/****** Object:  Table [dbo].[Plec]    Script Date: 2018-10-08 09:11:16 ******/
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
/****** Object:  Table [dbo].[UserTable]    Script Date: 2018-10-08 09:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
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
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_haslo] FOREIGN KEY([pass_id])
REFERENCES [dbo].[PasswordTable] ([pass_id])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_haslo]
GO
