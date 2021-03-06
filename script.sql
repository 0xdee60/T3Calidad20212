USE [CalidadT3]
GO
/****** Object:  Table [dbo].[Nota]    Script Date: 5/11/2021 20:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota](
	[idNota] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](200) NULL,
	[contenido] [varchar](max) NULL,
 CONSTRAINT [PK_Nota] PRIMARY KEY CLUSTERED 
(
	[idNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Nota] ON 

INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (1, N'Primera nota', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (2, N'Segunda nota', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (3, N'Tercera nota', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (4, N'Cuarta nota', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (5, N'Quinta nota', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (6, N'Sexta nota', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (7, N'Septima nota', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (8, N'Octava nota', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (9, N'Novena nota', N'It is a long established.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (10, N'Decima nota', N'It is a long established.')
INSERT [dbo].[Nota] ([idNota], [titulo], [contenido]) VALUES (11, NULL, N'It is a long.')
SET IDENTITY_INSERT [dbo].[Nota] OFF
GO
