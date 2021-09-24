﻿CREATE TABLE [dbo].[TB_KIND_POINT_TIME]
(
	[ID_KIND_POINT_TIME] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[DS_DESCRICAO] VARCHAR(100) NOT NULL,
	[DT_INCLUSAO] DATETIME NOT NULL,
	[ST_ATIVO] BIT NOT NULL
)

insert into [TB_KIND_POINT_TIME](DS_DESCRICAO,DT_INCLUSAO,ST_ATIVO) values
('TESTE','2021/09/23',1)


CREATE TABLE [dbo].[TB_POINT_TIME]
(
	[ID_POINT_TIME] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[ID_KIND_POINT_TIME] INT NOT NULL,
	[DT_INCLUSAO] DATETIME NOT NULL,
	[ST_ATIVO] BIT NOT NULL

	CONSTRAINT FK_KIND_POINT_TIME FOREIGN KEY (ID_KIND_POINT_TIME) REFERENCES TB_KIND_POINT_TIME (ID_KIND_POINT_TIME)
)

insert into [TB_KIND_POINT_TIME](DS_DESCRICAO,DT_INCLUSAO,ST_ATIVO) values
('TESTE','2021/09/23',1)
