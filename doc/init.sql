
USE [VMGPS2020]
GO

/****** Object:  PartitionFunction [gps0PartitionFunction]    Script Date: 12/28/2019 10:10:44 ******/
CREATE PARTITION FUNCTION [gps0PartitionFunction](int) AS RANGE LEFT FOR VALUES (23123, 43123, 63123, 83123, 103123, 123123)
GO


USE [VMGPS2020]
GO

/****** Object:  PartitionScheme [gps0PartitionSchema]    Script Date: 12/28/2019 10:10:59 ******/
CREATE PARTITION SCHEME [gps0PartitionSchema] AS PARTITION [gps0PartitionFunction] TO ([Group0], [Group1], [Group2], [Group3], [Group4], [Group5], [GroupOther])
GO










USE [VMGPS2020]
GO
/****** Object:  Table [dbo].[OBD_R9]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R9](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R9] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R8]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R8](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R8] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R7]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R7](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R7] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R6]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R6](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R6] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R5]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R5](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R5] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R4]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R4](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R4] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R3]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R3](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R3] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R2]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R2](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R2] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R1]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R1](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R1] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[OBD_R0]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBD_R0](
	[ID] [int] NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Speed] [int] NOT NULL,
	[Rotate] [int] NOT NULL,
	[Restrictor] [int] NOT NULL,
	[WaterT] [int] NOT NULL,
	[OilT] [int] NOT NULL,
	[OilPressure] [int] NOT NULL,
	[OilRemain] [int] NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OBD_R0] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R9]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R9](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R9] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R8]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R8](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R8] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R7]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R7](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R7] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R6]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R6](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R6] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R5]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R5](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R5] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R4]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R4](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R4] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R3]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R3](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R3] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R2]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R2] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R1]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R1] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Table [dbo].[GPS_R0]    Script Date: 12/28/2019 10:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_R0](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionCode] [int] NOT NULL,
	[TEID] [nvarchar](50) NOT NULL,
	[GetTime] [datetime] NOT NULL,
	[Lng] [decimal](18, 6) NOT NULL,
	[Lat] [decimal](18, 6) NOT NULL,
	[InputTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GPS_R0] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [gps0PartitionSchema]([PartitionCode])
GO
/****** Object:  Default [DF_GPS_R0_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R0] ADD  CONSTRAINT [DF_GPS_R0_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R0_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R0] ADD  CONSTRAINT [DF_GPS_R0_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R0_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R0] ADD  CONSTRAINT [DF_GPS_R0_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R1_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R1] ADD  CONSTRAINT [DF_GPS_R1_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R1_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R1] ADD  CONSTRAINT [DF_GPS_R1_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R1_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R1] ADD  CONSTRAINT [DF_GPS_R1_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R2_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R2] ADD  CONSTRAINT [DF_GPS_R2_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R2_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R2] ADD  CONSTRAINT [DF_GPS_R2_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R2_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R2] ADD  CONSTRAINT [DF_GPS_R2_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R3_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R3] ADD  CONSTRAINT [DF_GPS_R3_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R3_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R3] ADD  CONSTRAINT [DF_GPS_R3_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R3_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R3] ADD  CONSTRAINT [DF_GPS_R3_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R4_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R4] ADD  CONSTRAINT [DF_GPS_R4_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R4_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R4] ADD  CONSTRAINT [DF_GPS_R4_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R4_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R4] ADD  CONSTRAINT [DF_GPS_R4_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R5_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R5] ADD  CONSTRAINT [DF_GPS_R5_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R5_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R5] ADD  CONSTRAINT [DF_GPS_R5_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R5_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R5] ADD  CONSTRAINT [DF_GPS_R5_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R6_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R6] ADD  CONSTRAINT [DF_GPS_R6_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R6_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R6] ADD  CONSTRAINT [DF_GPS_R6_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R6_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R6] ADD  CONSTRAINT [DF_GPS_R6_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R7_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R7] ADD  CONSTRAINT [DF_GPS_R7_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R7_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R7] ADD  CONSTRAINT [DF_GPS_R7_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R7_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R7] ADD  CONSTRAINT [DF_GPS_R7_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R8_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R8] ADD  CONSTRAINT [DF_GPS_R8_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R8_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R8] ADD  CONSTRAINT [DF_GPS_R8_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R8_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R8] ADD  CONSTRAINT [DF_GPS_R8_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_GPS_R9_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R9] ADD  CONSTRAINT [DF_GPS_R9_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_GPS_R9_Lng]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R9] ADD  CONSTRAINT [DF_GPS_R9_Lng]  DEFAULT ((0)) FOR [Lng]
GO
/****** Object:  Default [DF_GPS_R9_Lat]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[GPS_R9] ADD  CONSTRAINT [DF_GPS_R9_Lat]  DEFAULT ((0)) FOR [Lat]
GO
/****** Object:  Default [DF_OBD_R0_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R0] ADD  CONSTRAINT [DF_OBD_R0_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R0_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R0] ADD  CONSTRAINT [DF_OBD_R0_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R0_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R0] ADD  CONSTRAINT [DF_OBD_R0_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R0_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R0] ADD  CONSTRAINT [DF_OBD_R0_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R0_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R0] ADD  CONSTRAINT [DF_OBD_R0_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R0_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R0] ADD  CONSTRAINT [DF_OBD_R0_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R0_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R0] ADD  CONSTRAINT [DF_OBD_R0_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R0_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R0] ADD  CONSTRAINT [DF_OBD_R0_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R1_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R1] ADD  CONSTRAINT [DF_OBD_R1_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R1_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R1] ADD  CONSTRAINT [DF_OBD_R1_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R1_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R1] ADD  CONSTRAINT [DF_OBD_R1_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R1_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R1] ADD  CONSTRAINT [DF_OBD_R1_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R1_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R1] ADD  CONSTRAINT [DF_OBD_R1_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R1_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R1] ADD  CONSTRAINT [DF_OBD_R1_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R1_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R1] ADD  CONSTRAINT [DF_OBD_R1_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R1_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R1] ADD  CONSTRAINT [DF_OBD_R1_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R2_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R2] ADD  CONSTRAINT [DF_OBD_R2_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R2_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R2] ADD  CONSTRAINT [DF_OBD_R2_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R2_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R2] ADD  CONSTRAINT [DF_OBD_R2_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R2_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R2] ADD  CONSTRAINT [DF_OBD_R2_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R2_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R2] ADD  CONSTRAINT [DF_OBD_R2_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R2_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R2] ADD  CONSTRAINT [DF_OBD_R2_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R2_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R2] ADD  CONSTRAINT [DF_OBD_R2_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R2_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R2] ADD  CONSTRAINT [DF_OBD_R2_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R3_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R3] ADD  CONSTRAINT [DF_OBD_R3_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R3_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R3] ADD  CONSTRAINT [DF_OBD_R3_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R3_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R3] ADD  CONSTRAINT [DF_OBD_R3_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R3_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R3] ADD  CONSTRAINT [DF_OBD_R3_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R3_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R3] ADD  CONSTRAINT [DF_OBD_R3_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R3_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R3] ADD  CONSTRAINT [DF_OBD_R3_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R3_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R3] ADD  CONSTRAINT [DF_OBD_R3_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R3_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R3] ADD  CONSTRAINT [DF_OBD_R3_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R4_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R4] ADD  CONSTRAINT [DF_OBD_R4_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R4_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R4] ADD  CONSTRAINT [DF_OBD_R4_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R4_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R4] ADD  CONSTRAINT [DF_OBD_R4_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R4_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R4] ADD  CONSTRAINT [DF_OBD_R4_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R4_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R4] ADD  CONSTRAINT [DF_OBD_R4_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R4_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R4] ADD  CONSTRAINT [DF_OBD_R4_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R4_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R4] ADD  CONSTRAINT [DF_OBD_R4_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R4_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R4] ADD  CONSTRAINT [DF_OBD_R4_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R5_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R5] ADD  CONSTRAINT [DF_OBD_R5_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R5_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R5] ADD  CONSTRAINT [DF_OBD_R5_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R5_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R5] ADD  CONSTRAINT [DF_OBD_R5_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R5_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R5] ADD  CONSTRAINT [DF_OBD_R5_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R5_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R5] ADD  CONSTRAINT [DF_OBD_R5_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R5_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R5] ADD  CONSTRAINT [DF_OBD_R5_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R5_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R5] ADD  CONSTRAINT [DF_OBD_R5_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R5_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R5] ADD  CONSTRAINT [DF_OBD_R5_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R6_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R6] ADD  CONSTRAINT [DF_OBD_R6_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R6_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R6] ADD  CONSTRAINT [DF_OBD_R6_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R6_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R6] ADD  CONSTRAINT [DF_OBD_R6_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R6_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R6] ADD  CONSTRAINT [DF_OBD_R6_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R6_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R6] ADD  CONSTRAINT [DF_OBD_R6_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R6_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R6] ADD  CONSTRAINT [DF_OBD_R6_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R6_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R6] ADD  CONSTRAINT [DF_OBD_R6_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R6_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R6] ADD  CONSTRAINT [DF_OBD_R6_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R7_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R7] ADD  CONSTRAINT [DF_OBD_R7_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R7_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R7] ADD  CONSTRAINT [DF_OBD_R7_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R7_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R7] ADD  CONSTRAINT [DF_OBD_R7_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R7_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R7] ADD  CONSTRAINT [DF_OBD_R7_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R7_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R7] ADD  CONSTRAINT [DF_OBD_R7_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R7_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R7] ADD  CONSTRAINT [DF_OBD_R7_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R7_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R7] ADD  CONSTRAINT [DF_OBD_R7_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R7_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R7] ADD  CONSTRAINT [DF_OBD_R7_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R8_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R8] ADD  CONSTRAINT [DF_OBD_R8_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R8_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R8] ADD  CONSTRAINT [DF_OBD_R8_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R8_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R8] ADD  CONSTRAINT [DF_OBD_R8_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R8_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R8] ADD  CONSTRAINT [DF_OBD_R8_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R8_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R8] ADD  CONSTRAINT [DF_OBD_R8_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R8_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R8] ADD  CONSTRAINT [DF_OBD_R8_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R8_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R8] ADD  CONSTRAINT [DF_OBD_R8_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R8_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R8] ADD  CONSTRAINT [DF_OBD_R8_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
/****** Object:  Default [DF_OBD_R9_PartitionCode]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R9] ADD  CONSTRAINT [DF_OBD_R9_PartitionCode]  DEFAULT ((0)) FOR [PartitionCode]
GO
/****** Object:  Default [DF_OBD_R9_Speed]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R9] ADD  CONSTRAINT [DF_OBD_R9_Speed]  DEFAULT ((0)) FOR [Speed]
GO
/****** Object:  Default [DF_OBD_R9_Rotate]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R9] ADD  CONSTRAINT [DF_OBD_R9_Rotate]  DEFAULT ((0)) FOR [Rotate]
GO
/****** Object:  Default [DF_OBD_R9_Restrictor]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R9] ADD  CONSTRAINT [DF_OBD_R9_Restrictor]  DEFAULT ((0)) FOR [Restrictor]
GO
/****** Object:  Default [DF_OBD_R9_WaterT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R9] ADD  CONSTRAINT [DF_OBD_R9_WaterT]  DEFAULT ((0)) FOR [WaterT]
GO
/****** Object:  Default [DF_OBD_R9_OilT]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R9] ADD  CONSTRAINT [DF_OBD_R9_OilT]  DEFAULT ((0)) FOR [OilT]
GO
/****** Object:  Default [DF_OBD_R9_OilPressure]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R9] ADD  CONSTRAINT [DF_OBD_R9_OilPressure]  DEFAULT ((0)) FOR [OilPressure]
GO
/****** Object:  Default [DF_OBD_R9_OilRemain]    Script Date: 12/28/2019 10:09:51 ******/
ALTER TABLE [dbo].[OBD_R9] ADD  CONSTRAINT [DF_OBD_R9_OilRemain]  DEFAULT ((0)) FOR [OilRemain]
GO
