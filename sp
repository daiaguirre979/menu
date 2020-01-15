USE [PRESUPUESTO_2019]
GO
/****** Object:  StoredProcedure [dbo].[segurityConsLogin]    Script Date: 15/01/2020 03:38:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[segurityConsLogin]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select sglid,sglusername,sglpassword, sglroleid,sgrroles 
	from [dbo].[daisegurityLogin] a
	inner join [dbo].[daisegurityRoles] b
	on a.sglid =b.sgrid
END





----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
USE [PRESUPUESTO_2019]
GO
/****** Object:  StoredProcedure [dbo].[segurityConsSubmenus]    Script Date: 15/01/2020 03:39:04 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[segurityConsSubmenus]
	@idrole int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from [dbo].[daiseguritySubmenu] a
	inner join [dbo].[daisegurityMenu] b
	on a.sgsmainmenuid=b.sgmid
	 where sgsroleid=@idrole
END
