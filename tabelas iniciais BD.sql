USE [PIM_SISTEMA_ACADEMICO]
GO

/****** Objeto:  Table [dbo].[tb_admin]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_admin](
	[id_admin] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[senha_hash] [varchar](50) NOT NULL,
	[data_cadastro] [datetime] NULL,
	[ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_alternativa_prova]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_alternativa_prova](
	[id_alternativa] [int] IDENTITY(1,1) NOT NULL,
	[id_questao] [int] NOT NULL,
	[texto_alternativa] [varchar](500) NOT NULL,
	[correta] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alternativa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_aluno]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_aluno](
	[id_aluno] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[senha_hash] [varchar](255) NOT NULL,
	[telefone] [varchar](20) NULL,
	[data_cadastro] [datetime] NULL,
	[ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_aluno_prova]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_aluno_prova](
	[id_aluno_prova] [int] IDENTITY(1,1) NOT NULL,
	[id_aluno] [int] NOT NULL,
	[id_prova] [int] NOT NULL,
	[data_inicio] [datetime] NULL,
	[quantidade_acertadas] [int] NULL,
	[nota] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aluno_prova] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_curso]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_curso](
	[id_curso] [int] IDENTITY(1,1) NOT NULL,
	[id_materia] [int] NOT NULL,
	[nome_curso] [varchar](100) NOT NULL,
	[ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_materia]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_materia](
	[id_materia] [int] IDENTITY(1,1) NOT NULL,
	[nome_materia] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_prova]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_prova](
	[id_prova] [int] IDENTITY(1,1) NOT NULL,
	[id_curso] [int] NOT NULL,
	[titulo] [varchar](100) NOT NULL,
	[descricao] [varchar](100) NULL,
	[quantidade_questoes] [int] NULL,
	[nota_minima] [int] NULL,
	[ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prova] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_questao_prova]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_questao_prova](
	[id_questao] [int] IDENTITY(1,1) NOT NULL,
	[id_prova] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_questao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_resposta_aluno]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_resposta_aluno](
	[id_resposta] [int] IDENTITY(1,1) NOT NULL,
	[id_aluno_prova] [int] NOT NULL,
	[id_questao] [int] NOT NULL,
	[id_alternativa] [int] NOT NULL,
	[data_resposta] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_resposta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Objeto:  Table [dbo].[tb_tutor]    Data do Script: 26/04/2026 20:24:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_tutor](
	[id_aluno] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[senha_hash] [varchar](50) NOT NULL,
	[telefone] [varchar](20) NULL,
	[data_cadastro] [datetime] NULL,
	[ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tb_aluno] ADD  DEFAULT ((1)) FOR [ativo]
GO

ALTER TABLE [dbo].[tb_alternativa_prova]  WITH CHECK ADD  CONSTRAINT [FK_tb_alternativa_prova_tb_questao_prova] FOREIGN KEY([id_questao])
REFERENCES [dbo].[tb_questao_prova] ([id_questao])
GO

ALTER TABLE [dbo].[tb_alternativa_prova] CHECK CONSTRAINT [FK_tb_alternativa_prova_tb_questao_prova]
GO

ALTER TABLE [dbo].[tb_aluno_prova]  WITH CHECK ADD  CONSTRAINT [FK_tb_aluno_prova_tb_aluno] FOREIGN KEY([id_aluno])
REFERENCES [dbo].[tb_aluno] ([id_aluno])
GO

ALTER TABLE [dbo].[tb_aluno_prova] CHECK CONSTRAINT [FK_tb_aluno_prova_tb_aluno]
GO

ALTER TABLE [dbo].[tb_aluno_prova]  WITH CHECK ADD  CONSTRAINT [FK_tb_aluno_prova_tb_prova] FOREIGN KEY([id_prova])
REFERENCES [dbo].[tb_prova] ([id_prova])
GO

ALTER TABLE [dbo].[tb_aluno_prova] CHECK CONSTRAINT [FK_tb_aluno_prova_tb_prova]
GO

ALTER TABLE [dbo].[tb_curso]  WITH CHECK ADD  CONSTRAINT [FK_curso_materia] FOREIGN KEY([id_materia])
REFERENCES [dbo].[tb_materia] ([id_materia])
GO

ALTER TABLE [dbo].[tb_curso] CHECK CONSTRAINT [FK_curso_materia]
GO

ALTER TABLE [dbo].[tb_prova]  WITH CHECK ADD  CONSTRAINT [FK_prova_curso] FOREIGN KEY([id_curso])
REFERENCES [dbo].[tb_curso] ([id_curso])
GO

ALTER TABLE [dbo].[tb_prova] CHECK CONSTRAINT [FK_prova_curso]
GO

ALTER TABLE [dbo].[tb_questao_prova]  WITH CHECK ADD  CONSTRAINT [FK_questao_prova] FOREIGN KEY([id_prova])
REFERENCES [dbo].[tb_prova] ([id_prova])
GO

ALTER TABLE [dbo].[tb_questao_prova] CHECK CONSTRAINT [FK_questao_prova]
GO

ALTER TABLE [dbo].[tb_resposta_aluno]  WITH CHECK ADD  CONSTRAINT [FK_resposta_aluno_prova] FOREIGN KEY([id_aluno_prova])
REFERENCES [dbo].[tb_aluno_prova] ([id_aluno_prova])
GO

ALTER TABLE [dbo].[tb_resposta_aluno] CHECK CONSTRAINT [FK_resposta_aluno_prova]
GO

ALTER TABLE [dbo].[tb_resposta_aluno]  WITH CHECK ADD  CONSTRAINT [FK_tb_resposta_aluno_tb_alternativa_prova] FOREIGN KEY([id_alternativa])
REFERENCES [dbo].[tb_alternativa_prova] ([id_alternativa])
GO

ALTER TABLE [dbo].[tb_resposta_aluno] CHECK CONSTRAINT [FK_tb_resposta_aluno_tb_alternativa_prova]
GO

ALTER TABLE [dbo].[tb_resposta_aluno]  WITH CHECK ADD  CONSTRAINT [FK_tb_resposta_aluno_tb_aluno_prova] FOREIGN KEY([id_aluno_prova])
REFERENCES [dbo].[tb_aluno_prova] ([id_aluno_prova])
GO

ALTER TABLE [dbo].[tb_resposta_aluno] CHECK CONSTRAINT [FK_tb_resposta_aluno_tb_aluno_prova]
GO

ALTER TABLE [dbo].[tb_resposta_aluno]  WITH CHECK ADD  CONSTRAINT [FK_tb_resposta_aluno_tb_questao_prova] FOREIGN KEY([id_questao])
REFERENCES [dbo].[tb_questao_prova] ([id_questao])
GO

ALTER TABLE [dbo].[tb_resposta_aluno] CHECK CONSTRAINT [FK_tb_resposta_aluno_tb_questao_prova]
GO


