USE [web小米]
GO
/****** Object:  Table [dbo].[注册]    Script Date: 06/24/2022 18:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[注册](
	[账号] [nvarchar](50) NULL,
	[密码] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[购物车]    Script Date: 06/24/2022 18:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[购物车](
	[商品名称] [nvarchar](50) NULL,
	[单价] [nvarchar](50) NULL,
	[数量] [nvarchar](50) NULL,
	[操作] [nvarchar](50) NULL
) ON [PRIMARY]
GO
