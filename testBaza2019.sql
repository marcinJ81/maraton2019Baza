USE [1208_MaratonMszana]
GO
SET IDENTITY_INSERT [dbo].[dystans_info] ON 

INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (1, N'11:00 - 11:30', N'16.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (2, N'10:00 - 10:30', N'16.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (3, N'08:00 - 08:30', N'16.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (4, N'06:30 - 07:00', N'16.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (5, N'15:00 - 16:00', N'15.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (6, N'15:00 - 16:00', N'15.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (7, N'15:00 - 16:00', N'15.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (8, N'15:00 - 16:00', N'15.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (9, N'15:00 - 16:00', N'15.06.2019', N'0')
INSERT [dbo].[dystans_info] ([info_id], [info_start_time], [info_start_date], [info_oplata]) VALUES (10, N'15:00 - 16:00', N'15.06.2019', N'0')
SET IDENTITY_INSERT [dbo].[dystans_info] OFF
SET IDENTITY_INSERT [dbo].[Dystans] ON 

INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (1, N'50 km', 1, 1)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (2, N'100 km', 1, 2)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (3, N'150 km', 1, 3)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (4, N'200 km', 1, 4)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (5, N'300 km', 1, 5)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (6, N'400 km', 1, 6)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (7, N'500 km', 1, 7)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (8, N'600 km', 1, 8)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (9, N'700 km', 1, 9)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (10, N'750 km', 1, 10)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (11, N'800 km', 0, NULL)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (12, N'850 km', 0, NULL)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (13, N'900 km', 0, NULL)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (14, N'950 km', 0, NULL)
INSERT [dbo].[Dystans] ([dys_id], [dys_wartosc], [dys_aktywny], [info_id]) VALUES (15, N'1000 km', 0, NULL)
SET IDENTITY_INSERT [dbo].[Dystans] OFF
SET IDENTITY_INSERT [dbo].[grupa_kolarska] ON 

INSERT [dbo].[grupa_kolarska] ([grupa_id], [grupa_nazwa]) VALUES (1, N'Brak')
INSERT [dbo].[grupa_kolarska] ([grupa_id], [grupa_nazwa]) VALUES (2, N'test')
INSERT [dbo].[grupa_kolarska] ([grupa_id], [grupa_nazwa]) VALUES (3, N'test4')
INSERT [dbo].[grupa_kolarska] ([grupa_id], [grupa_nazwa]) VALUES (4, N'Chcemy testować ')
SET IDENTITY_INSERT [dbo].[grupa_kolarska] OFF
INSERT [dbo].[Plec] ([plec_id], [plec_opis]) VALUES (1, N'Mężczyzna')
INSERT [dbo].[Plec] ([plec_id], [plec_opis]) VALUES (2, N'Kobieta')
SET IDENTITY_INSERT [dbo].[kartoteka2] ON 


INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (1, N'Sylwester', N'kajuwa', N'piemasza@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 09:59:53.507' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (2, N'Zbgniew', N'kopopo', N'kakowa@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 09:59:55.723' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (3, N'Sylwester', N'kakaju', N'pietka@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 09:59:57.317' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (4, N'Zbgniew', N'konekpo', N'gotkaka@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 09:59:59.163' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (5, N'Antoni', N'tkakaka', N'watkapie@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:01.000' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (6, N'Zbgniew', N'kowapie', N'szanek@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:02.637' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (7, N'Irena', N'gopoma', N'szakopo@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:04.627' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (8, N'Mateusz', N'wawapie', N'tkakama@.hw7.pl', N'123456789', N'test', 1, 5, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:06.490' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (9, N'Monika', N'pietka', N'nekwago@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:08.127' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (10, N'Grzegorz', N'szagogo', N'ramasza@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:09.967' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (11, N'Sylwester', N'kajusza', N'wagotka@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:11.797' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (12, N'Monika', N'piegotka', N'maszanek@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:13.637' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (13, N'Michał', N'juneknek', N'ramasza@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:15.477' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (14, N'Monika', N'pierasza', N'wapietka@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:17.313' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (15, N'Zbgniew', N'kokowa', N'goraka@.hw7.pl', N'123456789', N'test', 1, 5, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:19.160' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (16, N'Antoni', N'tkamaka', N'juwapie@.hw7.pl', N'123456789', N'test', 1, 5, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:21.003' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (17, N'Michał', N'jujupie', N'rakasza@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:22.850' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (18, N'Monika', N'piemasza', N'kowatka@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:24.687' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (19, N'Grzegorz', N'szagogo', N'raszanek@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:26.530' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (20, N'Michał', N'jujunek', N'wagotka@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:28.370' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (21, N'Sylwester', N'kajunek', N'rakatka@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:30.233' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (22, N'Monika', N'piepie', N'tkajuko@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:31.873' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (23, N'Grzegorz', N'szasza', N'nekwatka@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:33.517' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (24, N'Sylwia', N'pogotka', N'kaszako@.hw7.pl', N'123456789', N'test', 1, 5, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:35.357' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (25, N'Magda', N'rarako', N'wagotka@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:37.203' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (26, N'Zbgniew', N'kowawa', N'gokasza@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:39.070' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (27, N'Zbgniew', N'kowawa', N'kajuko@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:42.630' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (28, N'Grzegorz', N'szasza', N'wapietka@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:44.277' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (29, N'Sylwester', N'kawawa', N'goraka@.hw7.pl', N'123456789', N'test', 1, 5, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:46.123' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (30, N'Antoni', N'tkamaka', N'maneksza@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:00:48.040' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (31, N'Irena', N'ratkako', N'kaszako@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:01:34.717' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (32, N'Tomasz', N'gogotka', N'kajuwa@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:01:46.260' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (33, N'Tomasz', N'nekpogo', N'tkamaju@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:21.643' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (34, N'Irena', N'gotkaju', N'kopora@.hw7.pl', N'123456789', N'test', 1, 5, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:23.490' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (35, N'Tomasz', N'nekkoju', N'kopopie@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:25.353' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (36, N'Michał', N'jupiepie', N'tkajunek@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:27.197' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (37, N'Marcin', N'maszaju', N'popiera@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:29.047' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (38, N'Irena', N'gotkama', N'szakopo@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:30.923' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (39, N'Marcin', N'maszapo', N'pietka@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:32.517' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (40, N'Zbgniew', N'koszawa', N'gokaju@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:34.373' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (41, N'Irena', N'gowawa', N'gorasza@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:36.250' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (42, N'Monika', N'piegotka', N'maszama@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:38.113' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (43, N'Marcin', N'majuju', N'pogora@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:40.053' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (44, N'Tomasz', N'nekpie', N'rakako@.hw7.pl', N'123456789', N'test', 1, 5, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:41.690' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (45, N'Magda', N'raraka', N'wapietka@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:43.533' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (46, N'Zbgniew', N'kogopo', N'gokaju@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:45.393' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (47, N'Irena', N'gogotka', N'nekpopie@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:47.233' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (48, N'Michał', N'juneknek', N'rakatka@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:49.077' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (49, N'Monika', N'pieratka', N'nekpie@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:50.677' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (50, N'Antoni', N'tkaranek', N'wagotka@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:52.517' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (51, N'Zbgniew', N'kowawa', N'majunek@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:54.413' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (52, N'Irena', N'gojuju', N'kogotka@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:56.263' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (53, N'Grzegorz', N'szapie', N'tkakaju@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:57.900' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (54, N'Irena', N'goszaju', N'nekpie@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:02:59.520' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (55, N'Sylwia', N'pogonek', N'gotkaka@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:03:01.393' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (56, N'Sylwia', N'popopie', N'szanek@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:03:02.987' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (57, N'Antoni', N'tkamama', N'pojupo@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:03:04.953' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (58, N'Marcin', N'makaju', N'nekpora@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:03:06.813' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (59, N'Michał', N'junekpo', N'kajuko@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:03:08.653' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (60, N'Sylwia', N'popiepie', N'rakako@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-02 10:03:10.523' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (61, N'Grzegorz', N'koszawa', N'nekwatka@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:07.107' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (62, N'Antoni', N'bugołka', N'kaszanek@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:08.943' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (63, N'Antoni', N'łkagopo', N'nekpopie@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:10.387' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (64, N'Michał', N'ratkaka', N'kopora@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:11.827' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (65, N'Mateusz', N'karaju', N'rakasza@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:13.260' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (66, N'Zbgniew', N'wakanek', N'tkakasza@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:14.717' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (67, N'Monika', N'nekłka', N'majunek@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:16.060' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (68, N'Antoni', N'łkabuma', N'maszapo@.hw7.pl', N'123456789', N'test', 1, 1, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:17.507' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (69, N'Marcin', N'małkasza', N'szakaju@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:18.980' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (70, N'Michał', N'rawara', N'pierama@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:20.513' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (71, N'Marcin', N'maraog', N'jukopo@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:21.963' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (72, N'Tomasz', N'oglaba', N'pogoka@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:23.397' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (73, N'Monika', N'jugonek', N'kajuko@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:24.837' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (74, N'Marcin', N'szagoko', N'kopogo@.hw7.pl', N'123456789', N'test', 1, 6, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:26.273' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (75, N'Mateusz', N'rapiela', N'goraka@.hw7.pl', N'123456789', N'test', 1, 5, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:27.717' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (76, N'Monika', N'karanek', N'rakasza@.hw7.pl', N'123456789', N'test', 1, 3, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:29.207' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (77, N'Marcin', N'maposza', N'szanek@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:30.393' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (78, N'Antoni', N'łkatka', N'jukowa@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:31.740' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (79, N'Sylwester', N'tkakara', N'junekpie@.hw7.pl', N'123456789', N'test', 1, 4, 2, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:33.180' AS DateTime), 1, 0, 1)
INSERT [dbo].[kartoteka2] ([kart_id], [kart_imie], [kart_nazwisko], [kart_email], [kart_telefon], [kart_uwagi], [plec_id], [dys_id], [grup_id], [kart_dataUr], [kart_dataRej], [kart_wpis_rejestacja], [kart_wpis_oplata], [kart_wpis_rezerwowa]) VALUES (80, N'Zbgniew', N'pieogra', N'pietka@.hw7.pl', N'123456789', N'test', 1, 2, 1, CAST(N'1981-09-01' AS Date), CAST(N'2018-09-08 21:50:34.367' AS DateTime), 1, 0, 1)
SET IDENTITY_INSERT [dbo].[kartoteka2] OFF
