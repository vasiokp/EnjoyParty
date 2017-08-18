USE [Partyes]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [NickName], [Email]) VALUES (1, N'Michael', N'Jonhn', N'Krik', N'michael@gmail.com')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [NickName], [Email]) VALUES (3, N'Nina', N'Belle', N'Belicji', N'wrap@mail.ru')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [NickName], [Email]) VALUES (4, N'Stas', N'Kulinich', N'D00R', N'mmm123@yandex.ua')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [NickName], [Email]) VALUES (5, N'John', N'Smith', N'Joe', N'JohnSmith@mail.ru')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [NickName], [Email]) VALUES (6, N'Maria', N'Angi', N'Maricke', N'mar@mail.ru')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [NickName], [Email]) VALUES (7, N'Max', N'Trewor', N'Trewsa1', N'trewq@gmail.com')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [NickName], [Email]) VALUES (8, N'Steven', N'Knig', N'KnowYou', N'Stresss@mail.ru')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Parties] ON 

INSERT [dbo].[Parties] ([PartyId], [Name], [StartDate], [PartyStatus], [Author]) VALUES (1, N'My BirthDay', CAST(N'2017-10-10T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Parties] ([PartyId], [Name], [StartDate], [PartyStatus], [Author]) VALUES (2, N'New Year', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[Parties] ([PartyId], [Name], [StartDate], [PartyStatus], [Author]) VALUES (3, N'Hola style', CAST(N'2017-08-08T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Parties] ([PartyId], [Name], [StartDate], [PartyStatus], [Author]) VALUES (4, N'Jimi-Jimi Acha Acha', CAST(N'2017-09-08T00:00:00.000' AS DateTime), 1, 4)
INSERT [dbo].[Parties] ([PartyId], [Name], [StartDate], [PartyStatus], [Author]) VALUES (5, N'Yoga Style', CAST(N'2017-08-20T00:00:00.000' AS DateTime), 1, 4)
INSERT [dbo].[Parties] ([PartyId], [Name], [StartDate], [PartyStatus], [Author]) VALUES (6, N'VodkaDrinks', CAST(N'2017-09-01T00:00:00.000' AS DateTime), 1, 4)
INSERT [dbo].[Parties] ([PartyId], [Name], [StartDate], [PartyStatus], [Author]) VALUES (7, N'Specific Party', NULL, 1, 6)
INSERT [dbo].[Parties] ([PartyId], [Name], [StartDate], [PartyStatus], [Author]) VALUES (8, N'22', NULL, 10, 1)
SET IDENTITY_INSERT [dbo].[Parties] OFF
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (1, 1)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (2, 1)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (4, 1)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (5, 1)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (6, 1)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (1, 3)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (2, 3)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (3, 3)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (5, 3)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (3, 4)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (4, 4)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (5, 4)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (6, 4)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (1, 5)
INSERT [dbo].[PartyUsers] ([Party_PartyId], [User_UserId]) VALUES (5, 5)
SET IDENTITY_INSERT [dbo].[PartyStatus] ON 

INSERT [dbo].[PartyStatus] ([PartyStatusId], [Code], [Name]) VALUES (1, N'open', N'Party is opened')
INSERT [dbo].[PartyStatus] ([PartyStatusId], [Code], [Name]) VALUES (2, N'closed', N'Party is finished')
INSERT [dbo].[PartyStatus] ([PartyStatusId], [Code], [Name]) VALUES (3, N'private', N'Party is private')
SET IDENTITY_INSERT [dbo].[PartyStatus] OFF
