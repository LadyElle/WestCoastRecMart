SET IDENTITY_INSERT Products ON
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (1, N'Kayak', N'A boat for one person', N'Watersports', CAST(325.00 AS Decimal(16, 2)))
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (2, N'Lifejacket', N'Protective and buoyant', N'Watersports', CAST(52.36 AS Decimal(16, 2)))
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (3, N'Soccer Ball', N'FIFA-approved size and weight', N'Soccer', CAST(22.55 AS Decimal(16, 2)))
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (4, N'Corner Flags', N'Provides professional looks to your playing field', N'Soccer', CAST(45.95 AS Decimal(16, 2)))
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (5, N'Stadium', N'Flat-packed 50,000 capacity stadium', N'Soccer', CAST(1000000.00 AS Decimal(16, 2)))
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (6, N'Thinking Cap', N'Maximize brain efficiency', N'Chess', CAST(35.00 AS Decimal(16, 2)))
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (7, N'Rickety Chair', N'Make your opponent off balance', N'Chess', CAST(29.95 AS Decimal(16, 2)))
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (8, N'Lifesize Chess Board', N'Fun game for the entire family', N'Chess', CAST(75.00 AS Decimal(16, 2)))
INSERT INTO Products ([ProductID], [Name], [Description], [Category], [Price]) VALUES (9, N'Bling King', N'Gold-chained King piece', N'Chess', CAST(1200.00 AS Decimal(16, 2)))
SET IDENTITY_INSERT Products2 OFF
