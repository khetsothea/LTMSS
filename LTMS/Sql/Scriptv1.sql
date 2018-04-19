USE [LTMSDb]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewAgency'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewAgency'

GO
/****** Object:  StoredProcedure [dbo].[v_Doc_Detail]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[v_Doc_Detail]
GO
/****** Object:  StoredProcedure [dbo].[spGetResult]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[spGetResult]
GO
/****** Object:  StoredProcedure [dbo].[sp_WPlayamount]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_WPlayamount]
GO
/****** Object:  StoredProcedure [dbo].[sp_TopPlayamount]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_TopPlayamount]
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_ShowPlay]
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveResultE]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_SaveResultE]
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveResultAS]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_SaveResultAS]
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveResultAE]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_SaveResultAE]
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveResultA]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_SaveResultA]
GO
/****** Object:  StoredProcedure [dbo].[sp_SavePlay]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_SavePlay]
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveAgencyCommissions]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_SaveAgencyCommissions]
GO
/****** Object:  StoredProcedure [dbo].[sp_Payamount]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_Payamount]
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_LoadPlay]
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadDoc]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_LoadDoc]
GO
/****** Object:  StoredProcedure [dbo].[sp_Load_Result_Detail]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_Load_Result_Detail]
GO
/****** Object:  StoredProcedure [dbo].[sp_LerngNumber]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_LerngNumber]
GO
/****** Object:  StoredProcedure [dbo].[sp_getClientCreditTran]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_getClientCreditTran]
GO
/****** Object:  StoredProcedure [dbo].[sp_getAgencyPlayAmountByDate]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_getAgencyPlayAmountByDate]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_MPLay]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_Get_MPLay]
GO
/****** Object:  StoredProcedure [dbo].[sp_FinWinNumber]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_FinWinNumber]
GO
/****** Object:  StoredProcedure [dbo].[sp_findClientCreditTran]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_findClientCreditTran]
GO
/****** Object:  StoredProcedure [dbo].[sp_EditClientCreditTran]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_EditClientCreditTran]
GO
/****** Object:  StoredProcedure [dbo].[sp_doPayment]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_doPayment]
GO
/****** Object:  StoredProcedure [dbo].[sp_doEditPayment]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_doEditPayment]
GO
/****** Object:  StoredProcedure [dbo].[sp_doDetelePayment]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_doDetelePayment]
GO
/****** Object:  StoredProcedure [dbo].[sp_Doc_Detail]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_Doc_Detail]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteClientCreditTran]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_DeleteClientCreditTran]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAgency]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_DeleteAgency]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeletAgencyByID]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_DeletAgencyByID]
GO
/****** Object:  StoredProcedure [dbo].[sp_checkShift]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_checkShift]
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelPlayPD]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_CancelPlayPD]
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelPlayP]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_CancelPlayP]
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_CancelPlay]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddPlayDetail]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[sp_AddPlayDetail]
GO
/****** Object:  StoredProcedure [dbo].[Alternate_Test_WithCount]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP PROCEDURE [dbo].[Alternate_Test_WithCount]
GO
ALTER TABLE [dbo].[tblTranRepays] DROP CONSTRAINT [DF_tblTranRepays_StatusID]
GO
ALTER TABLE [dbo].[tblTranPlays] DROP CONSTRAINT [DF_tblTranPlays_StatusID]
GO
ALTER TABLE [dbo].[tblPlayHeaders] DROP CONSTRAINT [DF__tblPlayHe__NumIn__4119A21D]
GO
ALTER TABLE [dbo].[tblPlayHeaders] DROP CONSTRAINT [DF__tblPlayHe__Statu__40257DE4]
GO
ALTER TABLE [dbo].[tblPlayHeaders] DROP CONSTRAINT [DF__tblPlayHe__PlayT__3F3159AB]
GO
ALTER TABLE [dbo].[tblPlayHeaders] DROP CONSTRAINT [DF__tblPlayHe__Sessi__3E3D3572]
GO
ALTER TABLE [dbo].[tblPayments] DROP CONSTRAINT [DF_tblPayments_Status]
GO
ALTER TABLE [dbo].[tblClientTrans] DROP CONSTRAINT [DF_tblClientPayments_Status]
GO
ALTER TABLE [dbo].[tblAgencyTran] DROP CONSTRAINT [DF_tblAgencyTran_IsDeleted]
GO
ALTER TABLE [dbo].[tblAgencyTran] DROP CONSTRAINT [DF_tblAgencyTran_StatusID]
GO
ALTER TABLE [dbo].[_tblAgencies] DROP CONSTRAINT [DF_tblAgencies_IsDeleted]
GO
ALTER TABLE [dbo].[_tblAgencies] DROP CONSTRAINT [DF_tblAgencies_StatusID]
GO
ALTER TABLE [dbo].[_tblAgencies] DROP CONSTRAINT [DF_Table_1_Gender]
GO
/****** Object:  View [dbo].[ViewTopPlayamount]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP VIEW [dbo].[ViewTopPlayamount]
GO
/****** Object:  View [dbo].[ViewAgency]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP VIEW [dbo].[ViewAgency]
GO
/****** Object:  View [dbo].[v_Plays]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP VIEW [dbo].[v_Plays]
GO
/****** Object:  View [dbo].[v_MPLay]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP VIEW [dbo].[v_MPLay]
GO
/****** Object:  View [dbo].[TopPlayamount]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP VIEW [dbo].[TopPlayamount]
GO
/****** Object:  View [dbo].[v_GRoupDailyPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP VIEW [dbo].[v_GRoupDailyPlay]
GO
/****** Object:  View [dbo].[v_DailyResult]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP VIEW [dbo].[v_DailyResult]
GO
/****** Object:  View [dbo].[v_PlayDetail]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP VIEW [dbo].[v_PlayDetail]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Tokens]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[Tokens]
GO
/****** Object:  Table [dbo].[TempRoupDailyPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[TempRoupDailyPlay]
GO
/****** Object:  Table [dbo].[tblTranRepays]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblTranRepays]
GO
/****** Object:  Table [dbo].[tblTranPlays]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblTranPlays]
GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblStatus]
GO
/****** Object:  Table [dbo].[tblShifts]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblShifts]
GO
/****** Object:  Table [dbo].[tblResultSE]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblResultSE]
GO
/****** Object:  Table [dbo].[tblResultSA]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblResultSA]
GO
/****** Object:  Table [dbo].[tblResults]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblResults]
GO
/****** Object:  Table [dbo].[tblRepaymentDetails]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblRepaymentDetails]
GO
/****** Object:  Table [dbo].[tblPlays]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblPlays]
GO
/****** Object:  Table [dbo].[tblPlayHeaders]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblPlayHeaders]
GO
/****** Object:  Table [dbo].[tblPlayDetails]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblPlayDetails]
GO
/****** Object:  Table [dbo].[tblPayments]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblPayments]
GO
/****** Object:  Table [dbo].[tblGenders]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblGenders]
GO
/****** Object:  Table [dbo].[tblCustomers]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblCustomers]
GO
/****** Object:  Table [dbo].[tblCollections]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblCollections]
GO
/****** Object:  Table [dbo].[tblClientTrans]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblClientTrans]
GO
/****** Object:  Table [dbo].[tblClientCreditTrans]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblClientCreditTrans]
GO
/****** Object:  Table [dbo].[tblAgencyTran]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[tblAgencyTran]
GO
/****** Object:  Table [dbo].[AgencyCommissions]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[AgencyCommissions]
GO
/****** Object:  Table [dbo].[Agencies]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[Agencies]
GO
/****** Object:  Table [dbo].[_tblAgencies]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[_tblAgencies]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/19/2018 1:06:04 PM ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_tblAgencies]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_tblAgencies](
	[AgencyID] [int] NOT NULL,
	[AgencyName] [nvarchar](500) NULL,
	[AgencyNicknam] [nvarchar](500) NULL,
	[GenderID] [varchar](1) NULL,
	[PhoneNumber] [nvarchar](12) NULL,
	[Address] [nvarchar](250) NULL,
	[StatusID] [int] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agencies]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agencies](
	[AgencyID] [int] IDENTITY(1,1) NOT NULL,
	[AgencyName] [nvarchar](500) NULL,
	[AgencyNickname] [nvarchar](500) NULL,
	[GenderID] [varchar](1) NULL CONSTRAINT [DF_Agencies_Gender]  DEFAULT ('M'),
	[PhoneNumber] [nvarchar](12) NULL,
	[Address] [nvarchar](250) NULL,
	[StatusID] [int] NULL CONSTRAINT [DF_Agencies_Status]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_Agencies_IsDeleted]  DEFAULT ('False')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgencyCommissions]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgencyCommissions](
	[AgCMID] [int] IDENTITY(1,1) NOT NULL,
	[AgencyID] [int] NULL,
	[ShiftID] [int] NULL,
	[S1X2] [decimal](18, 0) NULL,
	[S1X3] [decimal](18, 0) NULL,
	[S2X2] [decimal](18, 0) NULL,
	[S2X3] [decimal](18, 0) NULL,
	[RS1X2] [decimal](18, 0) NULL,
	[RS1X3] [decimal](18, 0) NULL,
	[RS2X2] [decimal](18, 0) NULL,
	[RS2X3] [decimal](18, 0) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModefiedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL CONSTRAINT [DF_AgencyCommissions_IsDeleted]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblAgencyTran]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAgencyTran](
	[TranID] [int] IDENTITY(1,1) NOT NULL,
	[TranDate] [datetime] NULL,
	[TranType] [int] NULL,
	[AgencyID] [int] NULL,
	[REFNum] [nchar](10) NULL,
	[Amount] [nchar](10) NULL,
	[StatusID] [int] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblClientCreditTrans]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClientCreditTrans](
	[TranID] [int] IDENTITY(1,1) NOT NULL,
	[TranDate] [datetime] NULL,
	[AgencyID] [int] NOT NULL,
	[TranAmunt] [decimal](18, 0) NULL,
	[TranType] [int] NOT NULL CONSTRAINT [DF_tblClientCreditTrans_TranType]  DEFAULT ((1)),
	[Status] [int] NULL CONSTRAINT [DF_tblClientCreditTrans_Status]  DEFAULT ((1))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblClientTrans]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClientTrans](
	[PayID] [int] NOT NULL,
	[Amount] [decimal](18, 0) NULL,
	[TranType] [nchar](10) NULL,
	[Status] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCollections]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCollections](
	[CoID] [int] IDENTITY(1,1) NOT NULL,
	[ColleionDate] [datetime] NULL,
	[AgencyID] [decimal](18, 0) NULL,
	[CollectAmount] [decimal](18, 0) NULL,
	[Statud] [int] NULL CONSTRAINT [DF_tblCollections_Statud]  DEFAULT ((1))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomers]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCustomers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Gender] [varchar](1) NULL CONSTRAINT [DF_tblCustomers_Gender]  DEFAULT ('M'),
	[PhoneNumber] [nvarchar](12) NULL,
	[Address] [nvarchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGenders]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGenders](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[GenderDesc] [nvarchar](5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPayments]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayments](
	[RepayID] [int] IDENTITY(1,1) NOT NULL,
	[AgencyID] [int] NULL,
	[PayDate] [date] NULL,
	[PayAmount] [decimal](18, 0) NULL,
	[Status] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPlayDetails]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlayDetails](
	[PlayDID] [int] IDENTITY(1,1) NOT NULL,
	[PlayID] [int] NOT NULL,
	[Post] [nvarchar](50) NULL,
	[Number] [nchar](10) NULL,
	[PlayAmount] [float] NULL,
	[StatusID] [int] NULL CONSTRAINT [DF_tblPlayDetails_StatusID]  DEFAULT ((1))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPlayHeaders]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPlayHeaders](
	[PlayHDID] [int] IDENTITY(1,1) NOT NULL,
	[PlayDate] [date] NULL,
	[Shift] [varchar](1) NULL,
	[Session] [int] NULL,
	[CustomerID] [int] NOT NULL,
	[CreaterID] [int] NOT NULL,
	[Post] [nvarchar](10) NULL,
	[PostMultiplier] [int] NULL,
	[PlayTypeMultiplier] [int] NULL,
	[Number] [nchar](10) NULL,
	[Number1] [nchar](10) NULL,
	[NumIncrease] [int] NULL,
	[PlayType] [int] NULL,
	[PlayAmount] [float] NULL,
	[TotalAmount] [float] NULL,
	[HCommission] [float] NULL,
	[HRepay] [float] NULL,
	[Status] [int] NOT NULL,
	[NumIncreaseDig] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPlays]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPlays](
	[PlayID] [int] IDENTITY(1,1) NOT NULL,
	[PlayHDID] [int] NULL,
	[PlayDate] [date] NULL,
	[Shift] [varchar](1) NULL,
	[Session] [int] NULL CONSTRAINT [DF_tblPlays_Session]  DEFAULT ((1)),
	[CustomerID] [int] NOT NULL,
	[CreaterID] [int] NOT NULL,
	[Post] [nvarchar](10) NULL,
	[PostMultiplier] [int] NULL,
	[PlayTypeMultiplier] [int] NULL CONSTRAINT [DF_tblPlays_PlayTypeMultiplier]  DEFAULT ((1)),
	[Number] [nchar](10) NULL,
	[Number1] [nchar](10) NULL,
	[NumIncrease] [int] NULL,
	[PlayType] [int] NULL,
	[PlayAmount] [float] NULL,
	[TotalAmount] [float] NULL,
	[HCommission] [float] NULL,
	[HRepay] [float] NULL,
	[Status] [int] NOT NULL CONSTRAINT [DF_tblPlays_Status]  DEFAULT ((1)),
	[NumIncreaseDig] [int] NULL CONSTRAINT [DF_tblPlays_NumIncreaseDig]  DEFAULT ((1))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRepaymentDetails]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRepaymentDetails](
	[RepDID] [int] IDENTITY(1,1) NOT NULL,
	[RepaymentID] [int] NOT NULL,
	[PlayID] [int] NULL,
	[PayAmount] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblResults]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblResults](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[ResultDate] [date] NULL,
	[ResultTime] [time](7) NULL,
	[ShiftID] [int] NULL,
	[POST] [nvarchar](10) NULL,
	[R2Digit] [nchar](2) NULL,
	[R3Digit] [char](3) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModefiedDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblResultSA]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblResultSA](
	[ResultID] [bigint] IDENTITY(1,1) NOT NULL,
	[ResultDate] [date] NULL,
	[ResultTime] [time](7) NULL,
	[ShiftID] [int] NULL,
	[A2] [varchar](2) NULL,
	[B2] [varchar](2) NULL,
	[C2] [varchar](2) NULL,
	[D2] [varchar](2) NULL,
	[H2] [varchar](2) NULL,
	[LO1] [varchar](3) NULL,
	[LO2] [varchar](3) NULL,
	[LO3] [varchar](3) NULL,
	[LO4] [varchar](3) NULL,
	[LO5] [varchar](3) NULL,
	[LO6] [varchar](3) NULL,
	[LO7] [varchar](3) NULL,
	[LO8] [varchar](3) NULL,
	[LO9] [varchar](3) NULL,
	[LO10] [varchar](3) NULL,
	[LO11] [varchar](3) NULL,
	[LO12] [varchar](3) NULL,
	[LO13] [varchar](3) NULL,
	[LO14] [varchar](3) NULL,
	[LO15] [varchar](3) NULL,
	[LO16] [varchar](3) NULL,
	[LO17] [varchar](3) NULL,
	[LO18] [varchar](3) NULL,
	[LO19] [varchar](3) NULL,
	[LO20] [varchar](3) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModefiedDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblResultSE]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblResultSE](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[ResultDate] [date] NOT NULL,
	[ResultTime] [time](7) NULL,
	[ShiftID] [int] NOT NULL,
	[A1X2] [nvarchar](2) NULL,
	[A2X2] [nvarchar](2) NULL,
	[A3X2] [nvarchar](2) NULL,
	[A4X2] [nvarchar](2) NULL,
	[BX2] [nvarchar](2) NULL,
	[CX2] [nvarchar](2) NULL,
	[DX2] [nvarchar](2) NULL,
	[LO1] [nvarchar](3) NULL,
	[LO2] [nvarchar](3) NULL,
	[LO3] [nvarchar](3) NULL,
	[LO4] [nvarchar](3) NULL,
	[LO5] [nvarchar](3) NULL,
	[LO6] [nvarchar](3) NULL,
	[LO7] [nvarchar](3) NULL,
	[LO8] [nvarchar](3) NULL,
	[LO9] [nvarchar](3) NULL,
	[LO10] [nvarchar](3) NULL,
	[LO11] [nvarchar](3) NULL,
	[LO12] [nvarchar](3) NULL,
	[LO13] [nvarchar](3) NULL,
	[LO14] [nvarchar](3) NULL,
	[LO15] [nvarchar](3) NULL,
	[LO16] [nvarchar](3) NULL,
	[LO17] [nvarchar](3) NULL,
	[LO18] [nvarchar](3) NULL,
	[LO19] [nvarchar](3) NULL,
	[LO20] [nvarchar](3) NULL,
	[LO21] [nvarchar](3) NULL,
	[LO22] [nvarchar](3) NULL,
	[LO23] [nvarchar](3) NULL,
	[LO24] [nvarchar](3) NULL,
	[LO25] [nvarchar](3) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModefiedDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblShifts]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblShifts](
	[ShiftId] [int] NOT NULL,
	[ShiftDescription] [nvarchar](50) NULL,
	[ShiftDescriptionKh] [nvarchar](50) NULL,
	[OpenTime] [time](7) NULL,
	[CloseTime] [time](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusDisc] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTranPlays]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTranPlays](
	[TPLayID] [int] IDENTITY(1,1) NOT NULL,
	[TranID] [int] NULL,
	[AgencyID] [int] NULL,
	[Amount] [decimal](18, 0) NULL,
	[StatusID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTranRepays]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTranRepays](
	[TRPID] [int] IDENTITY(1,1) NOT NULL,
	[TranID] [int] NULL,
	[AgencyID] [int] NULL,
	[Amount] [decimal](18, 0) NULL,
	[StatusID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TempRoupDailyPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempRoupDailyPlay](
	[PlayDate] [date] NULL,
	[SRAmount] [float] NULL,
	[Collected] [decimal](38, 0) NOT NULL,
	[SRepay] [float] NULL,
	[Banlance] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tokens]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tokens](
	[TokenId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[AuthToken] [nvarchar](250) NOT NULL,
	[IssuedOn] [datetime] NOT NULL,
	[ExpiresOn] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[v_PlayDetail]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_PlayDetail]
AS
    SELECT  p.PlayID ,
            p.PlayDate ,
            p.Shift ,
            p.Session ,
            HCommission = (100 - p.HCommission) ,
            p.HRepay ,
            p.CustomerID ,
            AG.AgencyName ,
            pd.PlayDID ,
            pd.Post ,
            pd.Number ,
            Digit = ( CASE WHEN LEN(pd.Number) <= 2 THEN 2
                           ELSE 3
                      END ) ,
            pd.PlayAmount ,
            isWin = ( CASE WHEN LEN(pd.Number) <= 2
                           THEN ( SELECT    COUNT(r.ResultID)
                                  FROM      dbo.tblResults r
                                  WHERE     r.ResultDate = p.PlayDate
                                            AND r.ShiftID = p.Shift
                                            AND r.POST = pd.Post
                                            AND r.R2Digit = pd.Number
                                )
                           ELSE ( SELECT    COUNT(r.ResultID)
                                  FROM      dbo.tblResults r
                                  WHERE     r.ResultDate = p.PlayDate
                                            AND r.ShiftID = p.Shift
                                            AND r.POST = pd.Post
                                            AND r.R3Digit = pd.Number
                                )
                      END ) ,
            pd.StatusID
    FROM    dbo.tblPlayDetails pd
            INNER JOIN dbo.tblPlays p ON pd.PlayID = p.PlayID
            INNER JOIN dbo.Agencies AG ON AG.AgencyID = p.CustomerID;


GO
/****** Object:  View [dbo].[v_DailyResult]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	[dbo].[v_DailyResult]
AS 
SELECT  vpd.PlayDate ,
        ( vpd.HCommission * ( vpd.PlayAmount * 100 ) / 100 ) AS RAmount ,
		 --( 30 * vpd.PlayAmount ) / 100 AS AAmount ,
        Amount = ( vpd.PlayAmount * 100 ) ,
        vpd.HRepay ,
        vpd.Number ,
        vpd.Digit ,
        --vpd.PlayAmount ,
        Repay = ( CASE WHEN vpd.isWin = 1 THEN 
		vpd.HRepay *  ( vpd.PlayAmount * 100 )
                       ELSE 0
                  END ) ,
		Balance= (( vpd.HCommission * ( vpd.PlayAmount * 100 ) / 100 ) - ( CASE WHEN vpd.isWin = 1 THEN 
		vpd.HRepay *  ( vpd.PlayAmount * 100 )
                       ELSE 0
                  END ) ),
        vpd.isWin
FROM    dbo.v_PlayDetail vpd;



GO
/****** Object:  View [dbo].[v_GRoupDailyPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[dbo].[v_GRoupDailyPlay]
AS
SELECT  vpd.PlayDate ,
        ( vpd.HCommission * ( vpd.PlayAmount * 100 ) / 100 ) AS RAmount ,
		 --( 30 * vpd.PlayAmount ) / 100 AS AAmount ,
        Amount = ( vpd.PlayAmount * 100 ) ,
        vpd.HRepay ,
		vpd.CustomerID AS AgencyID,
        vpd.Number ,
        vpd.Digit ,
        --vpd.PlayAmount ,
        Repay = ( CASE WHEN vpd.isWin = 1 THEN 
		vpd.HRepay *  ( vpd.PlayAmount * 100 )
                       ELSE 0
                  END ) ,
		Balance= (( vpd.HCommission * ( vpd.PlayAmount * 100 ) / 100 ) - ( CASE WHEN vpd.isWin = 1 THEN 
		vpd.HRepay *  ( vpd.PlayAmount * 100 )
                       ELSE 0
                  END ) ),
        vpd.isWin
FROM    dbo.v_PlayDetail vpd;


GO
/****** Object:  View [dbo].[TopPlayamount]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TopPlayamount]
AS
    SELECT  p.PlayDate ,
            SUM(sp.PlayAmount) AS SPlayAmount ,
            sp.Number ,
            sp.Post
    FROM    dbo.tblPlayDetails sp
            INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
					--WHERE p.PlayDate=@PlayDate
    GROUP BY p.PlayDate ,
            sp.Post ,
            sp.Number
    --ORDER BY (SUM(sp.PlayAmount)) DESC;
GO
/****** Object:  View [dbo].[v_MPLay]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_MPLay]
AS	
SELECT  P.PlayDate ,
        PD.PlayDID ,
		P.Shift,
        P.CustomerID ,
        AG.AgencyName ,
        PD.PlayID ,
        PD.Post ,
        PD.Number ,
        PD.PlayAmount ,
        PD.StatusID ,
        Digit = LEN(PD.Number)
FROM    dbo.tblPlayDetails PD
        INNER JOIN dbo.tblPlays P ON PD.PlayID = P.PlayID
        INNER JOIN dbo.Agencies AG ON AG.AgencyID = P.CustomerID;

		--update dbo.tblPlayDetails SET StatusID=1

GO
/****** Object:  View [dbo].[v_Plays]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Plays]
AS
    SELECT  P.PlayID ,
            P.PlayDate ,
            P.Shift ,
            P.Session ,
            P.CustomerID ,
            AG.AgencyName ,
            P.CreaterID ,
            P.Post ,
            P.PostMultiplier ,
            P.PlayTypeMultiplier ,
            P.Number ,
            P.Number1 ,
            P.NumIncrease ,
            P.PlayType ,
            P.PlayAmount ,
            P.TotalAmount ,
            SMPLayD = ( SELECT  SUM(ISNULL(PD.PlayAmount, 0))
                        FROM    dbo.tblPlayDetails PD
                        WHERE   PD.PlayID = P.PlayID
                      ) ,
            P.Status ,
            Lerng = ( CASE WHEN P.Status = 2 THEN 'ឡើងមេ'
                           ELSE ''
                      END ) ,
            P.NumIncreaseDig
    FROM    dbo.tblPlays P
            INNER JOIN dbo.Agencies AG ON P.CustomerID = AG.AgencyID;


GO
/****** Object:  View [dbo].[ViewAgency]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ViewAgency]
AS
SELECT        dbo.Agencies.*, dbo.tblGenders.GenderDesc, dbo.tblStatus.StatusDisc
FROM            dbo.Agencies INNER JOIN dbo.tblGenders ON dbo.tblGenders.GenderID=dbo.Agencies.GenderID
                          INNER JOIN  dbo.tblStatus ON dbo.tblStatus.StatusID=dbo.Agencies.StatusID
                        





GO
/****** Object:  View [dbo].[ViewTopPlayamount]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewTopPlayamount]
AS
    SELECT  TOP 100 p.PlayDate ,
            SUM(ISNULL(sp.PlayAmount,0)) AS SPlayAmount ,
            sp.Number ,
            sp.Post
    FROM    dbo.tblPlayDetails sp
            INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
    GROUP BY p.PlayDate ,
            sp.Post ,
            sp.Number
	ORDER BY (SUM(sp.PlayAmount)) DESC


GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201707251413448_InitialCreate', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5D6D6FDB3812FE7EC0FD07C39FEE0EDD38729A360D9C5D24767B0DB669823A2DF65BA1588C23AC5EBC92DC7570B85F761FEE27DD5F3852AF7C953434A966BB458122A138CFF06566C8213993FFFDE7BFB39F766130FA8292D48FA3B3B17370381EA168157B7EB43E1B6FB3FB1F4EC63FFDF8D7BFCC5E7BE16EF4A9AA7744EA61CA283D1B3F64D9E6743249570F2874D383D05F25711ADF6707AB389CB85E3C991E1EBE9A38CE04618831C61A8D661FB651E68728FF05FF3A8FA315DA645B37B88A3D14A46539FEB2CC5147EFDD10A51B7785CEC6EF6EAF960745B583777196A1C447E978741EF82E6ECC1205F7E3911B4571E666B8A9A71F53B4CC92385A2F37B8C00D6E1F3708D7BB778314955D386DAAF7EDCDE194F466D2105650AB6D9AC52110D0392A8767C2936B0DF2B81E3E3C80AFF140678FA4D7F9209E8DCFD7787E1FC7239ED5E93C484835C5081F1474CF46E4EBB35A12B0C0907FCF46F36D906D137416A16D96B8C1B3D1CDF62EF0573FA3C7DBF857149D45DB20A01B869B86BF3105B8E826893728C91E3FA07BA6B9978BF168C2524F78F29A58A02CBA75196547D3F1E83D6E887B17A05A06A82158667182FE892294B819F26E5CD2773C85971ECA475168839423F9B9E289450F2BD27874E5EEDEA1689D3D9C8D8F0FB1EABCF177C8AB4ACA767C8C7CAC7798284BB6A8272B7FF56B34043B3C261E4A84B16C27BA798823F47E1BDEA1A4A581CED4C470785E82D2B485CDF4D8C4382CB1A06C53E0385CA60B14202C5015D5451C07C88D58BAD9A451D51E0A3C8FC3D04FD3DC46E8A97283F015947A7EA5A7D205DDB00ADDCDB143681EFCFB6C6F10E7976985B0402B3F7483F1E826C13F952BF7C978B45CB9044F0BFCC81EF8D466CBA7165B3E4F10119B8B4790BA6375F3EF7D3059C96C81FFAB3B847FBEF5C3CE76561C75680D1BA7EC2E286C24DC2A7DF2D1EF65618D32B8656A0C3CD4362996068BD6A9E0B8F0D355CBBA877F04AF7B90D9DE671D62C8079F6AC2FAD2834F744537D834E7CB07CFB09D66D7D7E21E7622F535AF9D4869691700DDF07A98264CF5DEFDE2AFF3B1E6E8891D21A387B97E40415E237DF037859B78507DFDCCC821AEFB2689C30F71400170553EDFBAC91A65B85D717BBD65BC4D567B68570EAAA55839E5F0E6B39255B0F5940AB98656BDC73E472F8D5AA07495F89BC2CB6E719F4C780D1CBF9F1F6C73BCDEA0A858FD0B3E7D7602F3204E5127519BAE314A6456E12A45EA52B84A317515AE7074F7DDBC1428836B5FE3A543D54FE1DF5B5CD50A8E4429DA74C1EAD6E5267035CEC14AC2C1279730D5B1AC15DD5013ABE38494CB1C6067C01E2B01481CD811569C42B75E84E40ACB80BF097C600BC95491EA60A2F330DE4699A98DDA12BE5133EF457E40291EC4E5B9968256C4832B69C158C7023794F5B0BF786E55510B8E3AEA5A5042F717F263B08E03B869CBEA60E2E0F8C23683B96D060BDB0CDEDA66F0EEDA69E1706484435B1FCC7038B2CEE1B9750EC7D639BCB0CEE1A5750E27D639BCB2CEC139B4CFC2BE563BF6D5DAB1AFD78E7DC576EC6BB6635FB51DFBBAEDD8576EC7BE764F6D6BF71FE8660CF5BB19EBED9BE40E02DC2BC9C906F747726AF1D4405AF7638A929E55CFB7D943390E3D6A5FA6E91679D7FD2ABFDE6DFC04A562ED6E17AAEEEC1067C8D5680DC18B1AEEBDDFB700AFC09BB9E395070844CD2B08A9B75E920981AB25A11A5C2B019A46AA160FCA7A54BE71D3F4F738D138243425CD7DCF1E9A6EED7B0F0214C3668806666CA6B75A9A41EE26745F7D52F71A0DCCF747A09D1CFF0C8F40658F390DB0F9FE6C1472A63ED8CD9AE6FB238386ED3C4DE3959F2B29F74282BF50669BFD3AF2463D6F978B5ED077D5B833E565CE0A37E96C7C7870E00803D3CDA17E30C270A01F4FB16CFE21F0C0D61025C404B9982C4AB17DF5A34C349D7EB4F2376ED0AFC31C39E4490799A69A1BFF6581364408A3ACDFA8ECD98C9A1BB736748DD86C424994B882629A0C53A0A472ABF1A2E8A36231942CA4784B53AEA56929D4BC8C10D025CA68E39D87AE34D25E4A46B5580B522641601E822B90E82A1D98D5DD9F80443DECEC80E01F77C8A0002DA2DE70491B552869374861161528D5B38F6E1872DDAA0029DE13744354B7930A98E6E6B3032ADF53C940A4AEB9404EF6E032EAC291EA206E368332087AC7C901512A27CEB1F03088AADDF18688B70AFD8D7EDD3546D60433D3DFC6B3804C7FF8ED2B3B1A9235B03642F5B7D9A488892B0B661345F0DCECCADD6CF06A4C05D39525A365114937FF61098F2F0B0B8CC92A958499D5ADAD39E1BDB4BB46DC57F286D6436FFC2425D7CFEE9D4B3604732F14AA3126572190152BCEAA8AD357C96845407E2E2D7B4B948C64712A01DEE09E85648DCB1D066AD255842312CEE8066EA2F451E671B00DA3769FA71BA9F03D442CF93942275AED5E4810EB6FFD511B2F82C6533D5D6B43621C051A8CF900E86FE50D301DAD0AFBE334BB7D1A481559D08644B9003414552C62CD269C7C0AFB25411538A3C4AB567FC5A3771AA614500DD95B15DB20D4C25F849AB1422F0B5B6B4731A5DAF5EB1946A6AA42004E1E47C680E42520842301E108843015DA3005B6612AB4610A6B03758345C350C5FDB1E87B2D1A8C2E07B7ACB8B292B4ADF8006F9D08C87EF926CD52E9B3EC6F8C1AFF076E855A68EDAF21F4298D8855943F99E9EADCD46B4CDB5E0B4807BD5287CB1831467DA5F166AD53579D7988361F84B3E3ACED0E646B779CA5DD81EC6C15F54523A4D2838436144F666FBC27676D1AFFD18CC1C9CF36F4EC8D9CD4B6A48991550220F3551F99C450B56193EFFDD19B78291AB32905ACDE4D1415A3FC4DF15392D6EA50CC88B89687685AF2AAA2B5EF45D2D725225651FE94A6AC3880343261F981A5D674C929958E7A1982C4F8E8D270A6361471FF0ADDB79667C582D98060C8CE1BE0470D752C920823DC2EB58E6C199FC48C6C590643A143967834FA1B00B58E66E2E7BD28852155214E3C56550EDD10CB36C3DFA80FC45C3918311CF5158596F15053AB06BB098EA2C75A156CD58D249A12BA1C8A26AEF674F9F0473CE7DC76FF1CB4DDBFE0A82F40D4738E7A0EA25E70D40B10F55B8EFA2D883A8F42A2C9F30208FD94A707F23FE2E9418E561E1FC4D23F87D11FF3F4C730FA173CFD0B18FD4B9EFE258CFE84A73F81D1BFE2E95F01E5E750102021D6B603411441A00C3A82103A502D10C4D001CAA12308A203944447104507288B8E208C0E501A1D411C1DA03C3A82403A4089740491748032391564720A92C93FD53139521E93A3B663F2AFB4AD2B9F7FECBFA12B9E8BC0B7720A3AD500D7E119F4D82A0354D438D55B751A46F5A25E8D42C554307B2575648B1AAB0992605D0155D88B1A898A92A0A194413185F87C15F12B9E0FED2F7DF97323B8F0C9C9ECCA4C13B5C0E314A5008FB60E4360FC5945FC461B92D81E555BBE929CD02FC5F69716EA65195C66DA889576E2FBE39CEF8F738C9D00993D84FE035DF90AEF19F92A35F7B2A4FEBD7ECF58BE25ECFE0B01C2E3C2A20AC987147FF13DF2B070F99866283C20150E96BF05F3C047E410B1AA70E546FE3D4AB3226A693C3D244E14F317069E4EB6FF499A7A4C509532E53F3B5B03075EF9647C3B43AB80417562AC55F4C54D560F6E22863F35D0FAA155A6D0F948AA7C70601092282969EB9C29B8EB6C509414350F8B82C1F231501A7D1622A2EEFC0E0CFDA4FA5ACA6222ABBD4545510EBE4E1A7B2D082A89BD673389BD79F0A9CD964F2DB65C48D5A1A17862E20E0D10491A0F0FFF9C71390020ED318165D1A828DEFD0D9D89DE8A4511833FAB85E26FA1BBFBBBB911DCCF269B49F26E6704D994D7390F21AAF0126F147667E37FE534A7A3CB5F3E9764CF46D709DE439C8E0E47FF868AFCAEAF29032FF2BBBE760C8CCC668FD7303F9E4D2D175FDB0D9B2F5D7B3D976441576C72C1FB3D65D273430CAEB91CE785F1A7C4ED257885E233A0432135328D6B088DB934DF56EC9A987F403EE1E686527C8D36644A6D2B83C8EF6CB4B46F0F6BC97A96DA00CE1E086CEE6D4D003113B70E1097975B1382CDD26D7A815CEEBB40DADD08CB1F7D0D9D55FBCE5F5B51573197B68ED28A79B5F75FD3DABDF65EE741D3563B0E3E5FBA308C37378CB7308CF7D6301E952E5B0A7804076C6FA106E09169C0E7A6018F4D03BE300DF8D234E08969C057A6019BACD4C6108DEB8A635C591CE3DAE2185717C7B8BE38C615C631AE318E7195718CEBCCD4B0CE7CA3E7C5421AE87E58C0B4D01A9BDB3F738A669D632B3655AD0E82904EB9CF15A756B664998CE9654BEE8904CB96AC21AD4F3D75B115EF8ECF56DCE300532B19B1295C605BCDA416D610A6EFAF4B06795D227F17F2FDC1898D23315BC7E1900B5823AA6E2ED9AEA1B4BA74CA501670B02CBA43E6CB6DCD5A03E23A507A5C31A5233F99B2ECB52DD96F8B579B78EB7317E3192FE4B7499A2B888A81DCB84A8E8F6D493C79D654A65C8127F54DC64C33C96E778E5D05338D34BCAD5978557D92E6545527E96DCFD1AB6052E7F7EDE65224EA95F128BE283894A97FBBF19B0CBE321ECD57051F58026075FE5F197C9533B803B9C8012C0017C532DC329970072C9D175800A73FCA583CC9A4C2D2F4C1122BAC5CCA94B9C6843DB1895CC1E21B7ABC0E6C23E25916BFE17D8ABF6E20661833422B6605A8EB5C46F771B512712DAAAAF0E7302873B127EB9E27997FEFAE32FC7985777EF9DF0CF8E4065BE2F9E20DA677195D6FB3CD36C35D46E15DC04C3859D0DAF8E70991D936CFAEF31728A9892EE066FAC419BF8E2EB67EE0D5ED7E2371C6151064A52CDD143297197157D68F3592F817A15440E5F0D50BFC2D0A3701064BAFA3A5FB05E9B40DEBF13BB476578F5528841AA47B22D8619F2D7C779DB8615A6234F4F8572CC35EB8FBF1FF76FED9CA92920000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201707251424467_InitialCreate1', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDB6EDB48127D5F60FF41D0D3EE226399729C38863C035B4A36C6C4B11139C1BC05B4D89689E145435219198BFDB27DD84FDA5FD86E362FCDBE90AC5637E39D35020476B3EB545FAAAA6F55E5FFFCEBDFB39F766130FA8692D48FA3B3B17370381EA168157B7EB43E1B6FB3FB1F4EC63FFDF8E73FCDDE7AE16EF4A5AC7744EA61CA283D1B3F64D9E6743249570F2874D383D05F25711ADF6707AB389CB85E3C991E1EBE9938CE04618831C61A8D669FB651E68728FF05FF3A8FA315DA645B37B88A3D14A44539FEB2CC51471FDD10A51B7785CEC61F6EAF9607B4DAC18738CB50E2A3743C3A0F7C1737668982FBF1C88DA2387333DCD4D3CF295A66491CAD971B5CE006B78F1B84EBDDBB418A8A2E9CD6D5FBF6E6704A7A33A9094BA8D536CDE21008E81C15C333E1C9B506795C0D1F1EC0B778A0B347D2EB7C10CFC6E76B3CBF8FE311CFEA741E24A49A62840F28DD8B11F9FAA292042C30E4DF8BD17C1B64DB049D45689B256EF06274B3BD0BFCD5CFE8F136FE154567D13608D886E1A6E16F8D025C7493C41B94648F9FD07DA3B9978BF168D2A49EF0E415B14049BB75196547D3F1E8236E887B17A04A06982158667182FE8E2294B819F26E5CD2773C85971ECA475168839423F9B9E489450F2BD27874E5EE3EA0689D3D9C8D8F0FB1EABCF377C82B4B8A767C8E7CAC7798284BB6A8272B7FF56B34043B3C261E4A84B16C27BA798823F4711BDEA1A4A581CED4C470785E82D2B485CDF4D8C4382CB1A06C53E0385CA60B14202C5025D5451C07C88D9A74B349ADAA3D14781E87A19FA6B98DD053E51AE13B28F5FC4A4FA529DDB00ADDCDB143681EFCFB6C6F10E7976989B0402B3F7483F1E826C13F152BF7C978B45CB9044F0BFCC81EF8D466CBA7165B3E4F10119B8B4790BA6375F3EF7D3059C16C81FFAB3A847FBEF5C3CE761205271C75680D1BA7EC2EA036126E95BEF8E8F7A2B04219DC32D5061E6A9B144B8345EB44392EFC74D5B2EEE11FC1EB1E64B6F759871AE4834F35617DE9C127BAA41B6C9AF3E58367D84EB3EB6B710F3B91FA9AD74EA4B4B00B806E783D4C13A6FAE87EF3D7F95873F4C48E90D1C35C3FA120AF913EF81B7A4C3C28BF7E6DC821AEFB2E89C34F71C0007055BEDEBAC91A65B85D717BBD65BC4D567B68570EAAA55839E5F0E6B39455B0F5940AB986567DC4678E5E1AB540E92AF137F494DD727C32716AE0F8FDFC609BE3F5064574F5A77CFAEC04E6419CA24EA2365D6B289159852B15A94BE14AC5D455387AD0DD77F3425106D7BEFA940E553FC5F9DEE2AA463912A568D305AB5B979BC0D5B8072B08079F5CC254C7B29674434DACCE21A458E6003B83E6B51280C4815D61C52974EB4548AEB00CF89BC007B6904C15A90E263A0FE36D9499DAA82DE11B35F3A7C84F28C583B83CD752D092787025A58C752C704D590DFBAB9756159572D451574A09DD5FC8AFC13A2EE0A62DAB83898BE30BDB0CE6B6192C6C33786F9BC1876BA785C391110E6D7D30C3E1C83A8797D6391C5BE7F0CA3A87D7D6399C58E7F0C63A07E7D03E0BFB5AEDD8576BC7BE5E3BF615DBB1AFD98E7DD576ECEBB6635FB91DFBDA3DB5ADDD7FBC97B1DE6793FC80003F95E464839F47726AF1D6405AF7738A929E55CFB7D943310E3D6A5FA6E91679D7FD2ABFDD6DFC04A562EDEE2354D5D921EE90CBD11A821733DC7BFBB7009FC0EBB9E3950708C4CC2B08A9B75E920981AB25A11A5C2B019A46AA5287B21E956FDC34FD3D4E342E094D4973DFBB87BA5BFBBE8300C5B01EA281199BE9AD966690B7095DAF4FE65DA386797602EDE4F8FFE0042A73E634C0E6D96D1472A73ED8CB9AA6FF9141C3769EA6F1CACF9594F390E01F949BCD7E1B79A39EAFCBB417EC5B35EE4CF198B3C24D3A1B1F1E1C38C2C07473A81C461A1C58E7A9269BBF093CB035440931412E268B526C5FFD28134DA71FADFC8D1BF4EB30470E71E920D35471E3BF2CD086086194F51B953D9B5171E3D686AE119B4D18891257504C93610A9494C76ABC28FA882E869285146F698AB5342D849A971102BA44196BBCF3D0955ADA0BC928176B41CA24080D477005125BA503B37CFB139018C7CE0E08DEB94306056811E3C3256D1455D26E106A161528A5DB47370C796E5580507F826E88F275520153BF7C7640E57B2A1988F4682E90933DB88C9A1EA43A88EBCDA00C82DD7172408CCA89732C380631B53B7C8878ABD0DFE8575D6BC89A6066FADBF82660A33FFCF6B5391A9235B03242D5B7D984C6C41505B38922786E76E56E3678356682E98A92D19246D2CD7F58C2E3CB428A3159A59230B3AAB51527BC9776D788FB4A7C683DF4CE4F52F2FCECDEB9644330F742A15AC3E42A04B264C5595571FA4A192D09C8CF85656F8992912C4E05C03BDCB390AC71F98181997415E1888433BA819B28CF28F338D88651FB99A71B899E3D442CF93D42275A75BC902056DFFAA3D6A708164FE5BAD686D43828B0608D0F80FE96A7814647CBC2FE38F56E9F05524516B421314700168A2916B166134E3E85FD92A00A9C51E255ABBFE2B13B0D530AA886ECAD8A6D106AE1A7A1664DA19785ADB5A39852EDCA7BA62153652100278F236B80E42520842301E108843015DA3005B6612AB4610A6B03F382C5C230C5FDB1D8772D168C2D07B78C3E5949DA463F805AC7BC8171ED63BEFC21CD527166D9DF18D5E71FB8156AA1B5BF86B0B73422162D7F32D3D5B9A9D798B6BD16900E7AA50E1731620DF595C69BB54E5D79E721DA7C10CE8EB3B63B90ADDD71967607B2B365D4178B904A2F12DA503C99BDF19E9CB5A9CF8F660C4E7EB7A1676FE4A4B6254D8CAC12001B5FF591490C551B36F9DE1FBD8E976231EB52C0EA5D47513594BF2E7E4AD25A5E8A1911D7E2124D4B5E55B4F64F91EC73898845CB9FD294D10B482313965F586A4D979C5279502F42901A67746938531B8AB87F85EE5B8BBB62C16C403064F70DF0AB862A164984115E975A47B6884F6A8C6C5106436143967834F61B00B58A66E2E79D96C290CA10271EAB2C876E88659BE13FE819A8F1E460C470544F145AC6434DAD1AEC3A388A1D6B55B0553792684AD872289AB8DAB3E5C35FF19C73DBFD73D076FF82A3BE0051CF39EA39887AC1512F40D4EF39EAF720EA3C0A8925CF0B20F4539E1EC8FF88A7071DB4F2F8A026FD4B18FD314F7F0CA37FC5D3BF82D1BFE6E95FC3E84F78FA1318FD1B9EFE0D507E0E050112626D3B10441104CAA02308A103D502410C1DA01C3A82203A40497404517480B2E808C2E800A5D111C4D101CAA32308A4039448471049072893534126A720997CBE26EFBE26FF4EDBBAC2FD63FF0D1D7517816FE51474AA01AEC233D8B15506A8A8714A5F751646E551AF4661622A1A7B2575648B1AAB0E92681E0554612F6A24264A82855206C550F1F92EE247DD87F697BEDCDD082E7C7232BB3253472DF038B41470A2ADC2101AE75945FC461B92D81E555BBE939CB09E62FB4B0BE3590697993662A59D7876CE7976CE31760364F612FA7FE8C957F067E4AB54DC8B92EAF7CA9FB1F025ECFE0B01827321AD42F221C5DF7C8F38162E1FD30C8507A4C2C1F2B7601EF8885C229615AEDCC8BF476946A396C6D34372886AFC8581A793ED7F92A65E23A84A99F2BF395B03075EF9647C3B43AB80417562AC55F4CD4D560F6E22863FD5D0FAA155A6D0F948AA7C70601092282969EB9C29B8EBCDA028296A1E160583E563A034FA2C4444DDF91D18FA49F5B594C544567B8B8AA21C7C9D34F65A104C127BCF66127BF3E0539B2D9F5A6CB990AA4343F1C4C41D1A2092341E1EFE39E37200F46C8F90D64317CBA25151F8FD0D9D89DE8A4511833FCB85E22FA1BBFBABB911DCCF269B49F26E67049B29AF731E4254E125DE28ECCEC6FFC8694E4797BF7C2DC85E8CAE13BC87381D1D8EFE0915F95D5F53065EE4777DED1818B9993D5EC3FC7836B55CF4B61B365FBAF67A2EC982AED8E482F77BCAA4E786185C7339CEA9F167C4ED357885E233A0432135328D6B088DB934DF56EC9A987F403EE1E68652F4461B32A5B69541E477365ADAB787B56C9E2CB5019C3D109AB9B73501C44CDC3A405C5E6E4D8866966ED30BE472DF05D2EE4658EEF4357456ED3B7F6D455DC55CDA3A4A2BE6D5DE7F4D6B3FB5F7BA0F9AB6DA71F0FDD28561BCB961BC8561BCF786F19874D952C02338607B0B35008F4C03BE340D786C1AF09569C0D7A6014F4C03BE310D5867A53686685C571CE3CAE218D716C7B8BA38C6F5C531AE308E718D718CAB8C635C67A68675E6F9BE586B8B2B71867B4ED1DC95A259E7DAAA99AA56074148A7DCE789532B5BB24CC6F4B225F74482654BD690D6A79EBAD8CAE98ECF56DCE302532B19B1295C605BCDA416D610A667EF9241BC4BE47E21CF0E2736AEC46C5D87431E608DA8BAB964BB86D2EAB229439B808365D11D325F6E6BD61A10D781D2E38A291DF9C99465AF6DC97E4BBD36F1D6E72EC6334EE5B74E9A2B888A81DCB84A8E8F6D493C79D64CA65C8127F34DC64C33C96E778E5D05338D34BCAD5978557D92E6545527E96DCFD1AB6052E5F7EDE64213F5CA78D02F0A0E45EADF6EFC3A83AF8C47FD55C1079600589DFF57065FE60CEE40A6398005605A2CC32D920977C0B279810570F6A38CC5934C2A2C4D1F2CB1C2CAA54C996B4CD8139BC8152CFAD0E375601B919325FD0DEF53FC750D31C398115A355680AACE65741F972B11D7A2B20A7F0F8332179F64DDF324F3EFDD55863FAFF0CE2FFF9B015FDC604B4EBE7883E95D46D7DB6CB3CD709751781734269C2C686DFCF384C8CD36CFAE730F94D4441770337D7218BF8E2EB67EE055ED7E27398C2B20C84A591C53C85C66E4B8B27EAC90C4BF08A5022A86AF5AE06F51B80930587A1D2DDD6F48A76D588F3FA0B5BB7A2C4321D420DD13D11CF6D9C277D7891BA605464D8F7FC532EC85BB1FFF0B5349CAD592920000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708021013091_InitialCreate2', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDB6EDC38127D5F60FFA1D14FBB8B8CDB6AE7E204F60CEC76B231268E8DB413CC5B20B7685B185D7A2475A68DC57ED93EEC27ED2F2C29EAC2ABA462938A77D60810B425D6298AAC2ADEAA8AFFF9D7BF8F7EDAC6D1E41BCAF2304D8EA7DEDEFE748292551A84C9DDF17453DCFE7038FDE9C73FFFE9E86D106F275FEA7207A41CA64CF2E3E97D51ACDFCC66F9EA1EC57EBE1787AB2CCDD3DB626F95C6333F4867F3FDFDD733CF9B210C31C55893C9D1A74D5284312AFFC07F2ED26485D6C5C68F2ED2004579F51CBF5996A8938F7E8CF2B5BF42C7D30FD717CB3D5A6CEF435A14280B513E9D9C44A18F2BB344D1ED74E227495AF805AEEA9BCF395A16599ADC2DD7F8811F5D3FAC112E77EB4739AA3EE14D5B7CE8D7ECCFC9D7CC5AC21A6AB5C98B3406027A0755F3CC4472A3469E36CD871BF02D6EE8E2817C75D988C7D3933BDCBF0FD389C8EACD22CA48314D0BEF51BA6713F2F65923095860C8BF6793C5262A36193A4ED0A6C8FCE8D9E46A731385AB9FD1C375FA2B4A8E934D14B115C355C3EFB807F8D15596AE51563C7C42B75C75CFCFA693194F3D13C91B6289927ED679521CCCA7938FB822FE4D841A19609A6059A419FA3B4A50E61728B8F2C9B7E32E3C0F50D98A521D941CC9EF9A27163DAC48D3C985BFFD8092BBE2FE78FA621FABCEBB708B82FA49558FCF4988F50E1315D9060D6415AE7E4DC66087DB244099D496DD4457F769823E6EE21B947554D09BDB688E20C8509E77B099BFB0D10E4B2C289B1CD80EE7F9198A1016A89AEA344D23E4273CDDD1AC55D5010ABC48E338CCF3D24698A9728BF01D947A7161A6D2946E5C85EEE7D82334F7E16DB13388F7CBBC463843AB30F6A3E9E42AC3BFAA91FB703A59AE7C8267047EE00E7CEEB2E67387355F648888CDE90348DDB1BA85B72198AC627686FF6B3E08FFBE0EE3DE7A1205271C4D682D1BA7E226A236126E95BE84E8F7EA618332BA656A0D3CD43669860687D689723C0BF355C7B8877F82C73D486FEF320E71E4A37735617D1EC03BBAA61BAD9BCBE14364D84DB31D6A71F77B91869AD75EA4BCB20B80CF080698264CF5D1FF16DE956D2DD0133B425A0F73FD84A2B2447E1FAEE93271AF7EFB9593435CF65D96C69FD28801108A7CBDF6B33B54E07AA5DDE596E9265BEDA05D25A891629594E39BCF5A56C1D65329E4065AF511AF390669D419CA5759B8A6ABEC8EE5938D5583C0EFE77BD71C2FD728A1A33FE5336426B088D21CF51275E91AA7447615AE56A43E85AB15D354E1E84277D7C90B45195DFBDA553A54FD34EB7B87A31AE54894A24B179C4E5DAE22DF601FAC221CBD73095313CB5AD38DD5B1268B906A9803CC0CF86D25008907DBC24A73E8D48B905C601908D75108AC21E92A521C4C7412A79BA4B035515BC2276AF657919F508E1B717962A4A035F1E84A4A199B58E096B269F697CF9D2A2AE568A2AE94123ABF506F83F56CC0CD3B46071B1BC7A7AE192C5C333873CDE0BD6B061F2EBD0E0E075638747D831D0E07CE393C77CEE185730E2F9D7378E59CC3A1730EAF9D73F0F6DDB370AFD59E7BB5F6DCEBB5E75EB13DF79AEDB9576DCFBD6E7BEE95DB73AFDD73D7DAFDC73B191BBC36291708F055494936FA7AA4A496770D94653FE7281B58F46453DC57ED30A0F4799E6F507039ACF0DBED3ACC502E97EE5F42351F3BC61E72DD5A63F0629A7B67FF16E01178DB77A2F20081987E05210DD64BD22170B52454A36B2540D34851EA5036A0F0959FE7BFA799C126A12D691EBAF7D07ED6AEE72040316C9B6864C676BED64833C8D984A9D72773AED1C23C3981F672FC7F70025539735A60F3E4360AD9531FED64CDD0FFC8B561BB4ED7E404C4AF4E4076B46F1CDA7739E2A32B1593433E768DA354984317E3DA127CFE04F7C3EC3506264E6EEA93BB913CE94EF23C5D85A5840ACE3EA26F045FE3B7493019E828413F8375BBC05F539D4BAE70958EA7FB7B7B9ED426FD1C1ADF278E03EB07C8B3F99BC4034B3CCAC868EA63B224C73A142685AC1E61B20AD77E34EC830572887712E9A6869BF8E60CAD893D4D8A61ADB263351A6E82FEF7B5D8D18C9128D966629A0253A0ACDE21C2F62F44D4EE296C269E9D576633AF845A941102BA44053B0F29A3B05A69AF24A39E774A52A640E0621A34486C911ECCFA185B42627C947B20443F251514A0468C3BA2B2525449FB41E808AF41A93D98FA6188E5D68050D7987E88FAA05D03D31EE2F74095E3A60A44B9CB249193E5A48A9AEE09F410B7EB1A1504BB781A00C44D207478C29C4580653459161DC9758E29DDE365271A9BE16349F3A19C084BD66BF8D0C10372DF23CE7CF8D6500CAD8D6D6BDE1DCD68D468F5E068A6092F3DBAF0D76B3CCA33E1A6D593C992C69A2E7E58C22330638A315BE58A40CCA6B60D27BCDAF4EF90F096789907E85D98E5C441C3BFF1C93C6311C45231CE926BC4B36625186BB9FB6A51AD09C8EF6AC0E88823538C7915C03BFC6531193ACB2535D3E93AC20909F8F5233FD3AEE21769B48993EE5D817E24BA3A97B1D43B6DBD68CD025C81D8BC1B8EDAAEB3593C9D73671712B79466C1B81780EFADD7CBDC87D60F87E3B4EB611648177BD385C42C925928E6B18C753413E4539A8649AA20182551B5862B1E3B81B1A5807AC8C1AAD805A1177E1A8CC90BBD2AB0B31BC5966A37FE659C4CD50F013865A42507523E01211C4808072084B9548739B00E73A90E73581D98335E1686793C1C8B3DF965C1D8E7E09AD10D0F45DD547B283DB5634E8985FA316FFE9066A95A0AED6E8CDA6515DC0A75D0BA1F43D87D4C198B3E7F34DDD53BA937E8B69D06901E7AAD0E5751949CFA2A23323BBBAEDE4A916D3E08672B58DB2DC8D66E054BBB05D9D93A2E9245C895FB135D2881CADE048FCEDAB4EB473B06A7DC3231B3376A52D79226C71E4A80DC5B73641265D8854DDE0F476F230A59CCF62960F46EE30C39E56F1F3F2669ADF7DAAC886BB5376724AF3A5AF7AB48F64051C6A2CF1F5397D17D4D2B1D56EE831A75979A52BB50AF82F4B835BA32E0AF0B459EBF42E7ADD516B464362018AAFD06F8564313AD27C34887569D2D5B45F0712D5B3D83A1B0417D221AFB0E80DAC4FB89FD4E9FC290EA435811EB44B9CDDC29058A1989FAC4A40BE57F680DC49D6458311CCDC98791F1D053EB1ABB0D1F64DB5A178ED88F249B12F639144D1EEDD9E7E36FF19C08D3FD13D074FF54A03E05512F04EA0588FA4CA03E0351BF17A8DF83A8CB383D96BC7C00A19F8BF440FE07223D68A15546D0F1F4CF61F42F44FA1730FA9722FD4B18FD2B91FE158CFE50A43F84D1BF16E95F03E5675F1220291ABD07411641A00C7A92107A502D90C4D003CAA12709A20794444F12450F288B9E248C1E501A3D491C3DA03C7A92407A4089F42491F48032399764720E92C9A76DF2FE6DF2EF34ADABBC4A769FD0512F14F8544E43A76BE02680896D5B6D08971EA78EE660617431277A1426EA889B2BE963BFF4586D1811BF14D00586E991983822164A1B3646C5E7BB881FF54ADA5DFA4A2F26B8F0A9C9DCCA4C1BD723E2D0A780156D13A8C3AD6735114E5D48727D7475F94E72C23AA0ED2E2D8CC31A5C66BA88B576E2C939E7C939C7DA0E90DD4DE83FC491AFC2AFD48E99E0FD50CDAC450F46D786A53C8FD405C07476A56EEF7369B6F96967FB9AC69288DBC4A30B95E4242B1669B8574F9ABF1B27D9CA41B5FF6216C9639516216140E9B73020DEAACB87BC40F11E29B0B7FC2D5A4421229D5317B8F093F016E5058DA29ACEF7C9CA9CBBD8E5F15CB232CBF3800BF2D2DEB4C2F7D6C8F1AE2169DFDE8856603C961CE29A7CF3B3D5BD9FC951A72DB47944AB2D743180B56C1C1884223855593B6F0EFE743E1655895A46A3C260C5D053836F9602516FC21E0CF3BB4C8C94C5C665220E1545DBF826B7871841307787042EEF0EB10F3E7759F3B9C39A4B19920C144FCE976400A2C89E14E0DF85907A65607DA46C4AA6580E8D8AC69974EC0B409C581439E6BE1E28FE12FBDBBFDA6BC1DD6CB29DBB35DCB4207FD340A8CC1A708E270ADBE3E93F4A9A3793F35FBE5664CF2697199E43BC99EC4FFE0915F9ED5053061EE4B743ED181899BFB4C3C0FC042EB55C76E11CF79A0AE3F15C71F98466920B9EEF69EF9AB0C4E052B85A821A7F46DC5E814728F1E20928A4C1050F064263EF760527764D4EFBA2EE707B4D29BB388E799381934614673646DAB783B5E45796C600DE0E08FC95078600F205082640C2750886107C721ADB03E472D701D2ED4458ED4938F6650637E19D137595AF3030515AF93A83DDC7B4EE55FBA0FDA079A71D07EF2F9D5AC65B58C63BB38CF7DE321E734B8112F0000ED85D4303C003DB80CF6D03BEB00DF8D236E02BDB8087B6015FDB066C2F03B086685D573CEBCAE259D716CFBABA78D6F5C5B3AE309E758DF1ACAB8C675D67E69675E669BFD8688AABF0B07CCA8CDF9719DF64DB8ACF106E822065B11F72C46994A45E25636649EA0722C192D41B48EB63CF18EF64752726891FB081699403DE162EB0AE7632BA1B08D39377C928DE256ABF90278713175B62AEB6C32107B0EE54BDC3C772ECC4E21AD93BB49137DCBA0F865A6D061C94AB37B52D9EB8DBCBFF6D29D3379BC598071C2DB1F79829BC3B335E81B88E94B15B4E072B76A62AA17647426EEA9C8B95EE26C53D4EE5B7CDE32D898A0A1D98AE5BCBF1A12B01B0C89A49DE2DF164DEA99819E6FDEE4FFBAD61669019BC3331B8EE9B94F998F579C3BBD3866B983429C7FBB9D0DCE12A1EF48D8643958DBC1FBF4D2AAEE2D1BED5F081E524D7A72457C1D769CC7B90695A7209983E56E156F9CD7B60D954E51238FB52C562973CE7C3D29CEBB83ED66CE8CABCE78A21403B8E6A93244AB3301B49CEE5380D3C08E1160D633AF3C0C3601EDEB510471833412B6EF869CA9C27B7693D0C0A35AA8B887B7DA8F0033C369D644578EBAF0AFC7A855717E5252A5FFC68437657F06C2C384F2E37C57A53E04F46F14DC4491B194DBBF89799DCF93A1F5D965E4EB98D4FC0D50CC986CF6572BA09A3A0A9F73BC5868F06820CD3D55298F4654196C4770F0D927CD9A30EA86ABE6676718DE27584C1F2CB64E97F432675C346E403BAF3570F5755B88D1EA4BF23F8663F3A0BFDBBCC8FF30AA3A5C77F62190EE2ED8FFF0583F59FCB6D9A0000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708021022531_InitialCreate3', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDB6EDC38127D5F60FFA1D14FBB8B8CDB6AE7E204F60CEC76B231268E8DB413CC5B20B7685B185D7A2475A68DC57ED93EEC27ED2F2C29EAC2ABA462938A77D60810B425D6298AAC2ADEAA8AFFF9D7BF8F7EDAC6D1E41BCAF2304D8EA7DEDEFE748292551A84C9DDF17453DCFE7038FDE9C73FFFE9E86D106F275FEA7207A41CA64CF2E3E97D51ACDFCC66F9EA1EC57EBE1787AB2CCDD3DB626F95C6333F4867F3FDFDD733CF9B210C31C55893C9D1A74D5284312AFFC07F2ED26485D6C5C68F2ED2004579F51CBF5996A8938F7E8CF2B5BF42C7D30FD717CB3D5A6CEF435A14280B513E9D9C44A18F2BB344D1ED74E227495AF805AEEA9BCF395A16599ADC2DD7F8811F5D3FAC112E77EB4739AA3EE14D5B7CE8D7ECCFC9D7CC5AC21A6AB5C98B3406027A0755F3CC4472A3469E36CD871BF02D6EE8E2817C75D988C7D3933BDCBF0FD389C8EACD22CA48314D0BEF51BA6713F2F65923095860C8BF6793C5262A36193A4ED0A6C8FCE8D9E46A731385AB9FD1C375FA2B4A8E934D14B115C355C3EFB807F8D15596AE51563C7C42B75C75CFCFA693194F3D13C91B6289927ED679521CCCA7938FB822FE4D841A19609A6059A419FA3B4A50E61728B8F2C9B7E32E3C0F50D98A521D941CC9EF9A27163DAC48D3C985BFFD8092BBE2FE78FA621FABCEBB708B82FA49558FCF4988F50E1315D9060D6415AE7E4DC66087DB244099D496DD4457F769823E6EE21B947554D09BDB688E20C8509E77B099BFB0D10E4B2C289B1CD80EE7F9198A1016A89AEA344D23E4273CDDD1AC55D5010ABC48E338CCF3D24698A9728BF01D947A7161A6D2946E5C85EEE7D82334F7E16DB13388F7CBBC463843AB30F6A3E9E42AC3BFAA91FB703A59AE7C8267047EE00E7CEEB2E67387355F648888CDE90348DDB1BA85B72198AC627686FF6B3E08FFBE0EE3DE7A1205271C4D682D1BA7E226A236126E95BE84E8F7EA618332BA656A0D3CD43669860687D689723C0BF355C7B8877F82C73D486FEF320E71E4A37735617D1EC03BBAA61BAD9BCBE14364D84DB31D6A71F77B91869AD75EA4BCB20B80CF080698264CF5D1FF16DE956D2DD0133B425A0F73FD84A2B2447E1FAEE93271AF7EFB9593435CF65D96C69FD28801108A7CBDF6B33B54E07AA5DDE596E9265BEDA05D25A891629594E39BCF5A56C1D65329E4065AF511AF390669D419CA5759B8A6ABEC8EE5938D5583C0EFE77BD71C2FD728A1A33FE5336426B088D21CF51275E91AA7447615AE56A43E85AB15D354E1E84277D7C90B45195DFBDA553A54FD34EB7B87A31AE54894A24B179C4E5DAE22DF601FAC221CBD73095313CB5AD38DD5B1268B906A9803CC0CF86D25008907DBC24A73E8D48B905C601908D75108AC21E92A521C4C7412A79BA4B035515BC2276AF657919F508E1B717962A4A035F1E84A4A199B58E096B269F697CF9D2A2AE568A2AE94123ABF506F83F56CC0CD3B46071B1BC7A7AE192C5C333873CDE0BD6B061F2EBD0E0E075638747D831D0E07CE393C77CEE185730E2F9D7378E59CC3A1730EAF9D73F0F6DDB370AFD59E7BB5F6DCEBB5E75EB13DF79AEDB9576DCFBD6E7BEE95DB73AFDD73D7DAFDC73B191BBC36291708F055494936FA7AA4A496770D94653FE7281B58F46453DC57ED30A0F4799E6F507039ACF0DBED3ACC502E97EE5F42351F3BC61E72DD5A63F0629A7B67FF16E01178DB77A2F20081987E05210DD64BD22170B52454A36B2540D34851EA5036A0F0959FE7BFA799C126A12D691EBAF7D07ED6AEE72040316C9B6864C676BED64833C8D984A9D72773AED1C23C3981F672FC7F70025539735A60F3E4360AD9531FED64CDD0FFC8B561BB4ED7E404C4AF4E4076B46F1CDA7739E2A32B1593433E768DA354984317E3DA127CFE04F7C3EC3506264E6EEA93BB913CE94EF23C5D85A5840ACE3EA26F045FE3B7493019E828413F8375BBC05F539D4BAE70958EA7FB7B7B9ED426FD1C1ADF278E03EB07C8B3F99BC4034B3CCAC868EA63B224C73A142685AC1E61B20AD77E34EC830572887712E9A6869BF8E60CAD893D4D8A61ADB263351A6E82FEF7B5D8D18C9128D966629A0253A0ACDE21C2F62F44D4EE296C269E9D576633AF845A941102BA44053B0F29A3B05A69AF24A39E774A52A640E0621A34486C911ECCFA185B42627C947B20443F251514A0468C3BA2B2525449FB41E808AF41A93D98FA6188E5D68050D7987E88FAA05D03D31EE2F74095E3A60A44B9CB249193E5A48A9AEE09F410B7EB1A1504BB781A00C44D207478C29C4580653459161DC9758E29DDE365271A9BE16349F3A19C084BD66BF8D0C10372DF23CE7CF8D6500CAD8D6D6BDE1DCD68D468F5E068A6092F3DBAF0D76B3CCA33E1A6D593C992C69A2E7E58C22330638A315BE58A40CCA6B60D27BCDAF4EF90F096789907E85D98E5C441C3BFF1C93C6311C45231CE926BC4B36625186BB9FB6A51AD09C8EF6AC0E88823538C7915C03BFC6531193ACB2535D3E93AC20909F8F5233FD3AEE21769B48993EE5D817E24BA3A97B1D43B6DBD68CD025C81D8BC1B8EDAAEB3593C9D73671712B79466C1B81780EFADD7CBDC87D60F87E3B4EB611648177BD385C42C925928E6B18C753413E4539A8649AA20182551B5862B1E3B81B1A5807AC8C1AAD805A1177E1A8CC90BBD2AB0B31BC5966A37FE659C4CD50F013865A42507523E01211C4808072084B9548739B00E73A90E73581D98335E1686793C1C8B3DF965C1D8E7E09AD10D0F45DD547B283DB5634E8985FA316FFE9066A95A0AED6E8CDA6515DC0A75D0BA1F43D87D4C198B3E7F34DDD53BA937E8B69D06901E7AAD0E5751949CFA2A23323BBBAEDE4A916D3E08672B58DB2DC8D66E054BBB05D9D93A2E9245C895FB135D2881CADE048FCEDAB4EB473B06A7DC3231B3376A52D79226C71E4A80DC5B73641265D8854DDE0F476F230A59CCF62960F46EE30C39E56F1F3F2669ADF7DAAC886BB5376724AF3A5AF7AB48F64051C6A2CF1F5397D17D4D2B1D56EE831A75979A52BB50AF82F4B835BA32E0AF0B459EBF42E7ADD516B464362018AAFD06F8564313AD27C34887569D2D5B45F0712D5B3D83A1B0417D221AFB0E80DAC4FB89FD4E9FC290EA435811EB44B9CDDC29058A1989FAC4A40BE57F680DC49D6458311CCDC98791F1D053EB1ABB0D1F64DB5A178ED88F249B12F639144D1EEDD9E7E36FF19C08D3FD13D074FF54A03E05512F04EA0588FA4CA03E0351BF17A8DF83A8CB383D96BC7C00A19F8BF440FE07223D68A15546D0F1F4CF61F42F44FA1730FA9722FD4B18FD2B91FE158CFE50A43F84D1BF16E95F03E5675F1220291ABD07411641A00C7A92107A502D90C4D003CAA12709A20794444F12450F288B9E248C1E501A3D491C3DA03C7A92407A4089F42491F48032399764720E92C9A76DF2FE6DF2EF34ADABBC4A769FD0512F14F8544E43A76BE02680896D5B6D08971EA78EE660617431277A1426EA889B2BE963BFF4586D1811BF14D00586E991983822164A1B3646C5E7BB881FF54ADA5DFA4A2F26B8F0A9C9DCCA4C1BD723E2D0A780156D13A8C3AD6735114E5D48727D7475F94E72C23AA0ED2E2D8CC31A5C66BA88B576E2C939E7C939C7DA0E90DD4DE83FC491AFC2AFD48E99E0FD50CDAC450F46D786A53C8FD405C07476A56EEF7369B6F96967FB9AC69288DBC4A30B95E4242B1669B8574F9ABF1B27D9CA41B5FF6216C9639516216140E9B73020DEAACB87BC40F11E29B0B7FC2D5A4421229D5317B8F093F016E5058DA29ACEF7C9CA9CBBD8E5F15CB232CBF3800BF2D2DEB4C2F7D6C8F1AE2169DFDE8856603C961CE29A7CF3B3D5BD9FC951A72DB47944AB2D743180B56C1C1884223855593B6F0EFE743E1655895A46A3C260C5D053836F9602516FC21E0CF3BB4C8C94C5C665220E1545DBF826B7871841307787042EEF0EB10F3E7759F3B9C39A4B19920C144FCE976400A2C89E14E0DF85907A65607DA46C4AA6580E8D8AC69974EC0B409C581439E6BE1E28FE12FBDBBFDA6BC1DD6CB29DBB35DCB4207FD340A8CC1A708E270ADBE3E93F4A9A3793F35FBE5664CF2697199E43BC99EC4FFE0915F9ED5053061EE4B743ED181899BFB4C3C0FC042EB55C76E11CF79A0AE3F15C71F98466920B9EEF69EF9AB0C4E052B85A821A7F46DC5E814728F1E20928A4C1050F064263EF760527764D4EFBA2EE707B4D29BB388E799381934614673646DAB783B5E45796C600DE0E08FC95078600F205082640C2750886107C721ADB03E472D701D2ED4458ED4938F6650637E19D137595AF3030515AF93A83DDC7B4EE55FBA0FDA079A71D07EF2F9D5AC65B58C63BB38CF7DE321E734B8112F0000ED85D4303C003DB80CF6D03BEB00DF8D236E02BDB8087B6015FDB066C2F03B086685D573CEBCAE259D716CFBABA78D6F5C5B3AE309E758DF1ACAB8C675D67E69675E669BFD8688AABF0B07CCA8CDF9719DF64DB8ACF106E822065B11F72C46994A45E25636649EA0722C192D41B48EB63CF18EF64752726891FB081699403DE162EB0AE7632BA1B08D39377C928DE256ABF90278713175B62AEB6C32107B0EE54BDC3C772ECC4E21AD93BB49137DCBA0F865A6D061C94AB37B52D9EB8DBCBFF6D29D3379BC598071C2DB1F79829BC3B335E81B88E94B15B4E072B76A62AA17647426EEA9C8B95EE26C53D4EE5B7CDE32D898A0A1D98AE5BCBF1A12B01B0C89A49DE2DF164DEA99819E6FDEE4FFBAD61669019BC3331B8EE9B94F998F579C3BBD3866B983429C7FBB9D0DCE12A1EF48D8643958DBC1FBF4D2AAEE2D1BED5F081E524D7A72457C1D769CC7B90695A7209983E56E156F9CD7B60D954E51238FB52C562973CE7C3D29CAB1BEC71664257E63C57987FED18AA4D9028CDC06C2438976334F000845B348CE9AC030F817978D7421C61CC04ADB8A1A729739EDCA6F51028D4A82E22EEF3A1C20FF0B8749215E1ADBF2AF0EB155E599417A87CF1A30DD959C133B1E03CB9DC14EB4D813F19C5371127696424EDE25F6671E7EB7C74597A38E5363E015733249B3D97C9E9268C82A6DEEF149B3D1A08324457CB60D29705590EDF3D3448F2458F3AA0AAF99A99C5358AD71106CB2F93A5FF0D99D40D1B900FE8CE5F3D5C55A1367A90FE8EE09BFDE82CF4EF323FCE2B8C961EFF89653888B73FFE17D463CBAB699A0000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708021048313_InitialCreate4', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDB6EDC38127D5F60FFA1D14FBB8B8CDB6AC7B9C19E81DD4E36C6C4B1917682790BE4166D0BA34B8FA4CEB4B1D82FDB87FDA4FD8525455D7895546C52F1CE1A0182B6C43A459155C55B55F13FFFFAF7D14FDB389A7C43591EA6C9F1D4DBDB9F4E50B24A8330B93B9E6E8ADB1F5E4D7FFAF1CF7F3A7A1BC4DBC997BADC0129872993FC787A5F14EB37B359BEBA47B19FEFC5E12A4BF3F4B6D85BA5F1CC0FD2D97C7FFFF5CCF36608434C31D66472F4699314618CCA3FF09F8B3459A175B1F1A38B3440515E3DC76F9625EAE4A31FA37CEDAFD0F1F4C3F5C5728F16DBFB901605CA42944F272751E8E3CA2C51743B9DF84992167E81ABFAE6738E9645962677CB357EE047D70F6B84CBDDFA518EAA4F78D3161FFA35FB73F235B396B0865A6DF2228D8180DE41D53C3391DCA891A74DF3E1067C8B1BBA78205F5D36E2F1F4E40EF7EFC37422B27AB38832524CD3C27B94EED984BC7DD648021618F2EFD964B1898A4D868E13B429323F7A36B9DADC44E1EA67F4709DFE8A92E36413456CC570D5F03BEE017E7495A56B94150F9FD02D57DDF3B3E964C653CF44F28658A2A49F759E1407F3E9E423AE887F13A14606982658166986FE8E1294F9050AAE7CF2EDB80BCF0354B6A254072547F2BBE689450F2BD27472E16F3FA0E4AEB83F9E1EEE63D579176E51503FA9EAF13909B1DE61A222DBA081ACC2D5AFC918EC709B042893DAB29BE8EA3E4DD0C74D7C83B28E0A7A731BCD110419CAF30E36F3431BEDB0C482B2C981ED709E9FA1086181AAA94ED334427EC2D31DCD5A551DA0C08B348EC33C2F6D84992AB708DF41A91717662A4DE9C655E87E8E3D42731FDE163B8378BFCC6B8433B40A633F9A4EAE32FCAB1AB95F4D27CB954FF08CC00FDC81CF5DD67CEEB0E68B0C11B1397D00A93B56B7F036049355CCCEF07FCD07E1DFD761DC5B4FA2E084A309AD65E354DC44D446C2ADD29710FD5E3D6C5046B74CAD8187DA26CDD0E0D03A518E6761BEEA18F7F04FF0B807E9ED5DC6218E7CF4AE26ACCF037847D774A37573397C880CBB69B6432DEE7E2FD250F3DA8B94577601F019C100D384A93EFADFC2BBB2AD057A624748EB61AE9F505496C8EFC3355D26EED56FBF727288CBBECBD2F8531A31004291AFD77E76870A5CAFB4BBDC32DD64AB1DB4AB043552AC92727CF359CB2AD87A2A85DC40AB3EE235C7208D3A43F92A0BD77495DDB17CB2B16A10F8FD7CEF9AE3E51A2574F4A77C86CC0416519AA35EA22E5DE394C8AEC2D58AD4A770B5629A2A1C5DE8EE3A79A128A36B5FBB4A87AA9F667DEF7054A31C895274E982D3A9CB55E41BEC835584A3772E616A62596BBAB13AD66411520D73809901BFAD0420F1605B58690E9D7A11920B2C03E13A0A8135245D458A83894EE2749314B6266A4BF844CDFE2AF213CA71232E4F8C14B4261E5D492963130BDC5236CDFEE2B95345A51C4DD4955242E717EA6DB09E0DB879C7E86063E3F8D43583856B0667AE19BC77CDE0C3A5D7C1E1C00A87AE6FB0C3E1C03987E7CE391C3AE7F0C2398797CE39BC72CEE1B5730EDEBE7B16EEB5DA73AFD69E7BBDF6DC2BB6E75EB33DF7AAEDB9D76DCFBD727BEEB57BEE5ABBFF78276383D726E50201BE2A29C9465F8F94D4F2AE81B2ECE71C65038B9E6C8AFBAA1D06943ECFF30D0A2E87157EBB5D8719CAE5D2FD4BA8E663C7D843AE5B6B0C5E4C73EFECDF023C026FFB4E541E2010D3AF20A4C17A493A04AE96846A74AD04681A294A1DCA0614BEF2F3FCF73433D824B425CD43F71EDACFDAF51C0428866D138DCCD8CED71A6906399B30F5FA64CE355A982727D05E8EFF0F4EA02A674E0B6C9EDC46217BEAA39DAC19FA1FB9366CD7E99A9C80F8D509C88EF68D43FB2E477C74A56272C8A75EE340FD29C1C74970B7CA5EDD36F159531FC48DE4187792E7E92A2C054EF0DD115D1DF81ABF4D82C940BF07FA19AC1705FE9AEA987185AB743CDDDFDBF3A436E9E7D0B832711C58B73E9ECDDF241E5880514606471F9325395689302964690F9355B8F6A3611F2C90439C8D483735DCC43767684DCC63520C6B951DABD17013D4B9AFC58E668C44C92610D314980265F5860F366721A2664C6102F164BBB2827925D4A28C10D0252AD869451954D54A7B2519F534529232050217A2A041628BF460D6A7D21212E372DC0321BA1DA9A0003562BC0B9595A24ADA0F42076C0D4AED90D40F432CB706847ABAF443D4E7E61A98F64CBE07AA1C065520CA4D23899CAC0E55D47489DF43DC2E535410EC5A680010371FD0E10953100196D1645974244F38A6748FD39C686C868F25CD8772222C59AFE143070FC87D8F3891E15B4331B436B6AD797734A341A0D583A399265AF4E8C25FAFF128CF448F564F264B1A3ABAF861090FA88C29C66C952BE22A9BDA369CF0E2D1BF43C25BE2341EA0776196137F0BFFC627F38C45104BC5384BAE11CF9A9560ACE5EEAB45B52620BFAB01A3232C4C31E65500EFF097C564E82C57C84CA7EB0827247ED78FFC4CBB285FA4D1264EBA17F9FD4874B12D63A937CE7AD19AF5B402B179371CB55D36B3783A5FCD2E246E65CC82712F00DF5B2F7FB90FAD1F0EC76997B72C902E94A60B8959F3B250CC6319EB6826C8A7340D935441304AA26A0D573C7602634B01F5908355B10B422FFC34B692177A559C66378A2DD56EDCC53899AA1F0270CAC0490EA47C02423890100E400873A90E73601DE6521DE6B03A3047B62C0CF37838167B90CB82B1CFC135A3FB178ABAA9B6447A6AC71CFA0AF563DEFC21CD52B514DADD18B5CB2AB815EAA0753F86B0DB9232167DFE68BAAB77526FD06D3B0D203DF45A1DAE822239F555065876765DBD9522DB7C10CE56B0B65B90ADDD0A96760BB2B37598238B902BF727BA500295BD091E9DB569D78F760C4EB96562666FD4A4AE254D0E259400B9B7E6C82468B00B9BBC1F8EDE0608B298ED53C0E8DD860D72CADF3E7E4CD25AEFB55911D76A6FCE485E75B4EE5791ECF9A08C459F3FA62EA3FB9A563AACDC0735EA2E35A576A15EC5DC716B7465FC5E178A3C7F85CE5BAB2D68C96C403054FB0DF0AD8626F84E86910EAD3A5BB60AC8E35AB67A06436163F44434F61D00B509DF13FB9D3E8521D587B022D689729BB9530A143312F5894917CAFFD01A883BC9B062389A930F23E3A1A7D635761B0DC8B6B52EBAB01F493625EC73289A3CDAB3CFC7DFE23911A6FB27A0E9FEA9407D0AA25E08D40B10F599407D06A27E2F50BF07519761772C79F900423F17E981FC0F447AD042AB0C88E3E99FC3E80F45FA4318FD0B91FE058CFEA548FF1246FF4AA47F05A37F2DD2BF06CACFBE24405270790F822C824019F42421F4A05A2089A10794434F12440F28899E248A1E50163D49183DA0347A92387A4079F42481F48012E94922E90165722EC9E41C24934FDBE4FDDBE4DF695A577995EC3EA1A35E28F0A99C864ED7C04D3C12DBB6DA882C3D4E1D9CC1C2E84248F4284C10113757D28772E9B1DAA8207E29A08BF3D2233161412C94360A8C8ACF77113FEA95B4BBF4955E4C70E15393B99599364C47C4A14F012BDA26EE865BCF6A0296BA90E4FAE8EAF29DE4847540DB5D5A188735B8CC74116BEDC49373CE93738EB51D20BB9BD07F88235F855FA91D33C1FBA19A598B1E8CAE0D4B791EA98B67E9EC4ADDDEE7D26CF3D3CEF6358D2511B78947172AC949562CD270AF9E347F374EB295836AFF3D2B92C72A2D42C280D26F6140BC55970F7981E23D52606FF95BB48842443AA72E70E127E12DCA0B1A14359DEF939539774FCBE3B9336596E70117B3A5BD3885EFAD91C35743D2BEBD01AAC0782C396235F9E667AB7B3F9383485B68F300555BE8623C6AD938300845ACA9B276DE1CFCE97C68A912B50C2E85C18A91A406DF2CC595DE843D18E6579318298B8DBB411C2A8AB6F14D2E03318260AE02095C5E05621F7CEEB2E673873597121E19289E9CFEC80044910C29C0BF0B21D877607DA4E448A6580E8D8AC69974ECFB3C9C58143984BE1E28FE12FBDBBFDA6BC1DD6CB29DAB32DCB4207F7140A84C02708E270ADBE3E93F4A9A3793F35FBE5664CF2697199E43BC99EC4FFE0915F9ED5053061EE4B743ED181899BF83C3C0FC042EB55C76E11CF7D609E3F15C71978466920B9EEF69AF8EB0C4E052B829821A7F46DC5E824728F11E0928A4C17D0D064263EFB20427764DCEE2A2EE707B4D29BB388E793181934614673646DAB783B5E45796C600DE0E08FC0D068600F27D062640C2ED0686107C721ADB03E472D701D2ED4458ED4938F6DD0437E19D1375956F2430515AF97682DDC7B4EE55FBA0FDA079A71D07EF2F9D5AC65B58C63BB38CF7DE321E73E98012F0000ED85D4303C003DB80CF6D031EDA067C611BF0A56DC057B6015FDB066C73FB5B43B4AE2B9E7565F1AC6B8B675D5D3CEBFAE2595718CFBAC678D655C6B3AE3373CB3AF3B45F6C34C55578583E25BAEF4B746FB26DC527FC36419092D20F39E234CA39AF9231B39CF303916039E70DA4F5B1278077B2BA1373BE0FD8C0344AE96E0B1758573B09DA0D84E9C9BB6414EF12B55FC893C3898B2D3157DBE190035877AADEE16339769E70E3A1559127DCBACF855A4D061C8CAB37B12D9EB0DBCBF76D29B3379BB598071C2D91F79829BB3B335C81B88E94A15B4EFF2A76A62A817647026EEA8C8B95EE26C53D4EE5B7CDDB2D898A0A1D989E5BCBF1A12BE1AFC89A49D62DF164DEA99819E6F9EE4FF3AD61669009BC3311B8EE9B94F997F579C2BBD3846B983429C6FBB9D05CE12A1EF48D8643957DBC1FBF4D22AEE2D1BED5F081E520D7A72057C1D769CB7B90691A7209983E56E156F9CC7B60D9D4E41238FB52C56297BCE6C3D29AAB1BEC71663E57E63857987FED18AA4D8828CDB86C2434976332F000845B144FCCE85F78DE1BDEB510471833412B6EE869CA9C27B7693D040A35AA8B88FB7AA8F0F144D03FC98AF0D65F15F8F50AAF24CA0B53BEF8D186ECA4E09958709E5C6E8AF5A6C09F8CE29B889334329276F12FB3B6F3753EBA2C3D9A721B9F80AB1992B9EC6572BA09A3A0A9F73BC5E68E06820CD1D5B297F4654196BF770F0D927C4FA30EA86ABE6666718DE27584C1F2CB64E97F432675C306E403BAF3570F5755688D1EA4BF23F8663F3A0BFDBBCC8FF30AA3A5C77F62190EE2ED8FFF05FA836B39289A0000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708021057119_InitialCreate5', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDB6EDC38127D5F60FFA1D14FBB8B8CDB6AC7B9C19E81DD4E36C6C4B1917682790BE4166D0BA34B8FA4CEB4B1D82FDB87FDA4FD8525455D7895546C52F1CE1A0182B6C43A459155C55B55F13FFFFAF7D14FDB389A7C43591EA6C9F1D4DBDB9F4E50B24A8330B93B9E6E8ADB1F5E4D7FFAF1CF7F3A7A1BC4DBC997BADC0129872993FC787A5F14EB37B359BEBA47B19FEFC5E12A4BF3F4B6D85BA5F1CC0FD2D97C7FFFF5CCF36608434C31D66472F4699314618CCA3FF09F8B3459A175B1F1A38B3440515E3DC76F9625EAE4A31FA37CEDAFD0F1F4C3F5C5728F16DBFB901605CA42944F272751E8E3CA2C51743B9DF84992167E81ABFAE6738E9645962677CB357EE047D70F6B84CBDDFA518EAA4F78D3161FFA35FB73F235B396B0865A6DF2228D8180DE41D53C3391DCA891A74DF3E1067C8B1BBA78205F5D36E2F1F4E40EF7EFC37422B27AB38832524CD3C27B94EED984BC7DD648021618F2EFD964B1898A4D868E13B429323F7A36B9DADC44E1EA67F4709DFE8A92E36413456CC570D5F03BEE017E7495A56B94150F9FD02D57DDF3B3E964C653CF44F28658A2A49F759E1407F3E9E423AE887F13A14606982658166986FE8E1294F9050AAE7CF2EDB80BCF0354B6A254072547F2BBE689450F2BD27472E16F3FA0E4AEB83F9E1EEE63D579176E51503FA9EAF13909B1DE61A222DBA081ACC2D5AFC918EC709B042893DAB29BE8EA3E4DD0C74D7C83B28E0A7A731BCD110419CAF30E36F3431BEDB0C482B2C981ED709E9FA1086181AAA94ED334427EC2D31DCD5A551DA0C08B348EC33C2F6D84992AB708DF41A91717662A4DE9C655E87E8E3D42731FDE163B8378BFCC6B8433B40A633F9A4EAE32FCAB1AB95F4D27CB954FF08CC00FDC81CF5DD67CEEB0E68B0C11B1397D00A93B56B7F036049355CCCEF07FCD07E1DFD761DC5B4FA2E084A309AD65E354DC44D446C2ADD29710FD5E3D6C5046B74CAD8187DA26CDD0E0D03A518E6761BEEA18F7F04FF0B807E9ED5DC6218E7CF4AE26ACCF037847D774A37573397C880CBB69B6432DEE7E2FD250F3DA8B94577601F019C100D384A93EFADFC2BBB2AD057A624748EB61AE9F505496C8EFC3355D26EED56FBF727288CBBECBD2F8531A31004291AFD77E76870A5CAFB4BBDC32DD64AB1DB4AB043552AC92727CF359CB2AD87A2A85DC40AB3EE235C7208D3A43F92A0BD77495DDB17CB2B16A10F8FD7CEF9AE3E51A2574F4A77C86CC0416519AA35EA22E5DE394C8AEC2D58AD4A770B5629A2A1C5DE8EE3A79A128A36B5FBB4A87AA9F667DEF7054A31C895274E982D3A9CB55E41BEC835584A3772E616A62596BBAB13AD66411520D73809901BFAD0420F1605B58690E9D7A11920B2C03E13A0A8135245D458A83894EE2749314B6266A4BF844CDFE2AF213CA71232E4F8C14B4261E5D492963130BDC5236CDFEE2B95345A51C4DD4955242E717EA6DB09E0DB879C7E86063E3F8D43583856B0667AE19BC77CDE0C3A5D7C1E1C00A87AE6FB0C3E1C03987E7CE391C3AE7F0C2398797CE39BC72CEE1B5730EDEBE7B16EEB5DA73AFD69E7BBDF6DC2BB6E75EB33DF7AAEDB9D76DCFBD727BEEB57BEE5ABBFF78276383D726E50201BE2A29C9465F8F94D4F2AE81B2ECE71C65038B9E6C8AFBAA1D06943ECFF30D0A2E87157EBB5D8719CAE5D2FD4BA8E663C7D843AE5B6B0C5E4C73EFECDF023C026FFB4E541E2010D3AF20A4C17A493A04AE96846A74AD04681A294A1DCA0614BEF2F3FCF73433D824B425CD43F71EDACFDAF51C0428866D138DCCD8CED71A6906399B30F5FA64CE355A982727D05E8EFF0F4EA02A674E0B6C9EDC46217BEAA39DAC19FA1FB9366CD7E99A9C80F8D509C88EF68D43FB2E477C74A56272C8A75EE340FD29C1C749C0A33A4B2E6AEA73B791FCE04EF23C5D85A57C09AE3AA267035FE3B7493019E8E6403F83759AC05F539D2AAE70958EA7FB7B7B9ED426FD1C1ACF258E03EBC5C7B3F99BC403CB2BCAC858E863B224C71A1026852CDC61B20AD77E34EC830572886F11E9A6869BF8E60CAD89354C8A61ADB263351A6E82F6F6B5D8D18C9128D9E2619A0253A0ACDEDFC1D62B44D46A292C1E9E5B57462FAF845A941102BA44053B8B2863A85A69AF24A39E354A52A640E0221234486C911ECCFA105A42623C8C7B20442F231514A0468C33A1B2525449FB41E8F8AC41A9FD8FFA6188A1D68050C7967E88FA985C03D31EC1F74095A39E0A44B947249193C5A08A9AAEE87B88DB55890A825DFA0C00E2867F1D9E30E31060194D964547727C634AF7F8C889C666F858D27C2827C292F51A3E74F080DCF788F316BE3514436B63DB9A7747331AF3593D389A6982438F2EFCF51A8FF24CB068F564B2A491A28B1F96F0F8C99862CC56B9228CB2A96DC309AF15FD3B24BC253EE2017A17663971AFF06F7C32CF5804B1548CB3E41AF1AC5909C65AEEBE5A546B02F2BB1A303AA2C014635E05F00E7F594C86CE7241CC74BA8E7042C275FDC8CFB46BF0451A6DE2A47B4DDF8F44D7D632967A9FAC17AD593E2B109B77C351DB55328BA773CDEC42E216C22C18F702F0BDF56A97FBD0FAE1709C7635CB02E92267BA9098252E0BC53C96B18E66827C4AD330491504A324AAD670C5632730B614500F395815BB20F4C24F432979A157856576A3D852EDC63B8C93A9FA2100A78C93E440CA2720840309E100843097EA3007D6612ED5610EAB037342CBC2308F8763B1E7B62C18FB1C5C33BA5DA1A89B6A07A4A776CC19AF503FE6CD1FD22C554BA1DD8D51BBAC825BA10E5AF76308BB0B2963D1E78FA6BB7A27F506DDB6D300D243AFD5E12A0692535F653C6567D7D55B29B2CD07E16C056BBB05D9DAAD6069B7203B5B4735B208B9727FA20B2550D99BE0D1599B76FD68C7E0945B2666F6464DEA5AD2E4C84109907B6B8E4C6204BBB0C9FBE1E86D3C208BD93E058CDE6D9420A7FCEDE3C724ADF55E9B1571ADF6E68CE45547EB7E15C91E07CA58F4F963EA32BAAF69A5C3CA7D50A3EE52536A17EA55881DB7465786EB75A1C8F357E8BCB5DA8296CC060443B5DF00DF6A6862ED6418E9D0AAB365ABF83BAE65AB67301436244F4463DF01509B683DB1DFE95318527DE62A629D28B7993BA5403123519F9874A1FC0FAD81B8930C2B86A339F930321E7A6A5D63B7C17F6C5BEB8209FB916453C23E87A2C9A33DFB7CFC2D9E1361BA7F029AEE9F0AD4A720EA8540BD00519F09D46720EAF702F57B10751965C792970F20F473911EC8FF40A4072DB4CAF8379EFE398CFE50A43F84D1BF10E95FC0E85F8AF42F61F4AF44FA5730FAD722FD6BA0FCEC4B0224C592F720C8220894414F12420FAA0592187A4039F42441F48092E849A2E80165D19384D1034AA32789A30794474F12480F28919E24921E5026E7924CCE4132F9B44DDEBF4DFE9DA6759557C9EE133AEA85029FCA69E8740DDC841FB16DAB0DC0D2E3D4B1182C8C2E62448FC2C40C7173257DE4961EAB0D02E29702BAB02E3D121305C4426983BEA8F87C17F1A35E49BB4B5FE9C504173E35995B9969A372441CFA14B0A26DC26CB8F5AC263EA90B49AE8FAE2EDF494E5807B4DDA585715883CB4C17B1D64E3C39E73C39E758DB01B2BB09FD8738F255F895DA3113BC1FAA99B5E8C1E8DAB094E791BAF095CEAED4ED7D2ECD363FED6C5FD35812719B7874A1929C64C5220DF7EA49F377E3245B39A8F65FAB2279ACD22224EA27FD1606C45B75F9901728DE2305F696BF458B2844A473EA02177E12DEA2BCA03150D3F93E599973D7B23C9E2B5266791E70215ADA7B52F8DE1A395A3524EDDB1B8F0A0CF1920354936F7EB6BAF7333966B485368F47B5852E869F968D03835084962A6BE7CDC19FCE47922A51CB585218AC18386AF0CD5218E94DD883617E138991B2D8B80AC4A1A2681BDFE4EE0F2308E6E68FC0E5CD1FF6C1E72E6B3E77587329BF9181E2C9D98E0C4014B98F02FCBB10627B07D647CA85648AE5D0A8689C49C7BEBEC389459123E6EB81E22FB1BFFDABBD16DCCD26DBB919C34D0BF2F70484CA98FF733C51D81E4FFF51D2BC999CFFF2B5227B36B9CCF01CE2CD647FF24FA8C86F879A32F020BF1D6AC7C0C8FC951B06E62770A9E5B20BE7B8974C188FE78AAB2334935CF07C4F7B5384250697C2C510D4F833E2F6123C4289D74640210DAE6730101A7B772338B16B72D2167587DB6B4AD9C571CC7B089C34A238B331D2BE1DAC25BFB23406F07640E02F2C300490AF2F3001122E333084E073D1D81E2097BB0E906E27C26A4FC2B1AF22B809EF9CA8AB7C018189D2CA9711EC3EA675AFDA07ED07CD3BED38787FE9D432DEC232DE9965BCF796F1983B0694800770C0EE1A1A001ED8067C6E1BF0D036E00BDB802F6D03BEB20DF8DA36609BCADF1AA2755DF1AC2B8B675D5B3CEBEAE259D717CFBAC278D635C6B3AE329E759D995BD699A7FD62A329AEC2C3F229AF7D5F5E7B936D2B3EBFB7098294837EC811A7518A79958C99A5981F88044B316F20AD8F3DDFBB93D59D98E27DC006A65106775BB8C0BADAC9C76E204C4FDE25A37897A8FD429E1C4E5C6C89B9DA0E871CC0BA53F50E1FCBB1D3821B0FAD8AB4E0109F0BF8E639E05C5CBD876DF180DD5EBA6F4B89BDD9A4C53CE06879BCC7CCD8DD99E00AC475A404DD72F657B13355F9B33BF26F535F5CAC733729EE712ABF6DDA6E495454E8C0ECDC5A8E0F5DF97E45D64CAE6E8927F34EC5CC30CD777F966F0D338344E09D79C075DFA44CBFAC4F13DE9D255CC3A4C930DECF85A60A57F1A06F341CAAE4E3FDF86D0E71158FF6AD860F2C05B93E03B90ABECE5ADE834CB3904BC0F4B10AB74A67DE03CB662697C0D9972A16BBA4351F96D55CDD608F33F1B932C5B9C2FC6BC7506D3E4469C265239FB91C92810720DCA2785E46FFC2D3DEF0AE8538C298095A71434F53E63CB94DEB2150A8515D44DCD643858FE781FE495684B7FEAAC0AF57782151DE97F2C58F36642305CFC482F3E47253AC3705FE6414DF449CA49191B48B7F99B49DAFF3D165E9D094DBF8045CCD904C652F93D34D18054DBDDF29F67634106488AE56BDA42F0BB2FABD7B6890E45B19754055F335338B6B14AF230C965F264BFF1B32A91B36201FD09DBF7AB8AA226BF420FD1DC137FBD159E8DF657E9C57182D3DFE13CB70106F7FFC2F2D150A81169A0000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708021201404_InitialCreate6', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDB6EDC38127D5F60FFA1D14FBB8B8CDB6AC7B9C19E81DD4E36C6C4B1917682790BE4166D0BA34B8FA4CEB4B1D82FDB87FDA4FD8525455D7895546C52F1CE1A0182B6C43A459155C55B55F13FFFFAF7D14FDB389A7C43591EA6C9F1D4DBDB9F4E50B24A8330B93B9E6E8ADB1F5E4D7FFAF1CF7F3A7A1BC4DBC997BADC0129872993FC787A5F14EB37B359BEBA47B19FEFC5E12A4BF3F4B6D85BA5F1CC0FD2D97C7FFFF5CCF36608434C31D66472F4699314618CCA3FF09F8B3459A175B1F1A38B3440515E3DC76F9625EAE4A31FA37CEDAFD0F1F4C3F5C5728F16DBFB901605CA42944F272751E8E3CA2C51743B9DF84992167E81ABFAE6738E9645962677CB357EE047D70F6B84CBDDFA518EAA4F78D3161FFA35FB73F235B396B0865A6DF2228D8180DE41D53C3391DCA891A74DF3E1067C8B1BBA78205F5D36E2F1F4E40EF7EFC37422B27AB38832524CD3C27B94EED984BC7DD648021618F2EFD964B1898A4D868E13B429323F7A36B9DADC44E1EA67F4709DFE8A92E36413456CC570D5F03BEE017E7495A56B94150F9FD02D57DDF3B3E964C653CF44F28658A2A49F759E1407F3E9E423AE887F13A14606982658166986FE8E1294F9050AAE7CF2EDB80BCF0354B6A254072547F2BBE689450F2BD27472E16F3FA0E4AEB83F9E1EEE63D579176E51503FA9EAF13909B1DE61A222DBA081ACC2D5AFC918EC709B042893DAB29BE8EA3E4DD0C74D7C83B28E0A7A731BCD110419CAF30E36F3431BEDB0C482B2C981ED709E9FA1086181AAA94ED334427EC2D31DCD5A551DA0C08B348EC33C2F6D84992AB708DF41A91717662A4DE9C655E87E8E3D42731FDE163B8378BFCC6B8433B40A633F9A4EAE32FCAB1AB95F4D27CB954FF08CC00FDC81CF5DD67CEEB0E68B0C11B1397D00A93B56B7F036049355CCCEF07FCD07E1DFD761DC5B4FA2E084A309AD65E354DC44D446C2ADD29710FD5E3D6C5046B74CAD8187DA26CDD0E0D03A518E6761BEEA18F7F04FF0B807E9ED5DC6218E7CF4AE26ACCF037847D774A37573397C880CBB69B6432DEE7E2FD250F3DA8B94577601F019C100D384A93EFADFC2BBB2AD057A624748EB61AE9F505496C8EFC3355D26EED56FBF727288CBBECBD2F8531A31004291AFD77E76870A5CAFB4BBDC32DD64AB1DB4AB043552AC92727CF359CB2AD87A2A85DC40AB3EE235C7208D3A43F92A0BD77495DDB17CB2B16A10F8FD7CEF9AE3E51A2574F4A77C86CC0416519AA35EA22E5DE394C8AEC2D58AD4A770B5629A2A1C5DE8EE3A79A128A36B5FBB4A87AA9F667DEF7054A31C895274E982D3A9CB55E41BEC835584A3772E616A62596BBAB13AD66411520D73809901BFAD0420F1605B58690E9D7A11920B2C03E13A0A8135245D458A83894EE2749314B6266A4BF844CDFE2AF213CA71232E4F8C14B4261E5D492963130BDC5236CDFEE2B95345A51C4DD4955242E717EA6DB09E0DB879C7E86063E3F8D43583856B0667AE19BC77CDE0C3A5D7C1E1C00A87AE6FB0C3E1C03987E7CE391C3AE7F0C2398797CE39BC72CEE1B5730EDEBE7B16EEB5DA73AFD69E7BBDF6DC2BB6E75EB33DF7AAEDB9D76DCFBD727BEEB57BEE5ABBFF78276383D726E50201BE2A29C9465F8F94D4F2AE81B2ECE71C65038B9E6C8AFBAA1D06943ECFF30D0A2E87157EBB5D8719CAE5D2FD4BA8E663C7D843AE5B6B0C5E4C73EFECDF023C026FFB4E541E2010D3AF20A4C17A493A04AE96846A74AD04681A294A1DCA0614BEF2F3FCF73433D824B425CD43F71EDACFDAF51C0428866D138DCCD8CED71A6906399B30F5FA64CE355A982727D05E8EFF0F4EA02A674E0B6C9EDC46217BEAA39DAC19FA1FB9366CD7E99A9C80F8D509C88EF68D43FB2E477C74A56272C8A75EE340FD2915C74929FE3A8301AF4F834D3CD3D4C76D23B9BF9DE479BA0A4BB1123C74448706BEC66F936032D0BB817E06EB2B81BFA63A4C5CE12A1D4FF7F7F63CA94DFA39340E4B1C07D6798F67F33789071653949121D0C764498E053F4C0A59A6C36415AEFD68D8070BE4109722D24D0D37F1CD195A13239814C35A65C76A34DC04A5ED6BB1A3192351B2A1C33405A64059BDAD838D5688A8B152183A3CA5AE6C5D5E09B528230474890A76F250864EB5D25E49463D5994A44C81C005226890D8223D98F5D9B384C43816F74088CE452A28408D181F4265A5A892F683D061598352BB1DF5C310FBAC01A1FE2CFD10F5E9B806A63D79EF812A073B1588726B4822276B4015355DC8F710B78B111504BBE21900C48DFA3A3C61A221C0329A2C8B8EE4EFC694EE718D138DCDF0B1A4F9504E8425EB357CE8E001B9EF11A72B7C6B2886D6C6B635EF8E6634D4B37A7034D3C4841E5DF8EB351EE59918D1EAC964490344173F2CE1619331C598AD7245F46453DB86135E22FA7748784B5CC303F42ECC72E255E1DFF8649EB10862A91867C935E259B3128CB5DC7DB5A8D604E477356074047F29C6BC0AE01DFEB2980C9DE53A98E9741DE18444E9FA919F6997DE8B34DAC449F752BE1F892EA9652CF5F6582F5AB36A562036EF86A3B68B63164FE791D985C4AD7F5930EE05E07BEB452EF7A1F5C3E138ED229605D205CC7421312B5B168A792C631DCD04F994A661922A08464954ADE18AC74E606C29A01E72B02A7641E8859F4650F242AF8AC6EC46B1A5DA8D53182753F543004E191EC981944F40080712C20108612ED5610EACC35CAAC31C5607E6609685611E0FC7628F6B5930F639B8667497425137D5C6474FED98A35DA17ECC9B3FA459AA9642BB1BA3765905B7421DB4EEC71076F351C6A2CF1F4D77F54EEA0DBA6DA701A4875EABC355E823A7BECA30CACEAEABB752649B0FC2D90AD6760BB2B55BC1D26E4176B60E66641172E5FE44174AA0B237C1A3B336EDFAD18EC129B74CCCEC8D9AD4B5A4C901831220F7D61C998406766193F7C3D1DB304016B37D0A18BDDBE0404EF9DBC78F495AEBBD362BE25AEDCD19C9AB8ED6FD2A923D0594B1E8F3C7D465745FD34A8795FBA046DDA5A6D42ED4ABC83A6E8DAE8CD2EB4291E7AFD0796BB5052D990D08866ABF01BED5D084D8C930D2A15567CB5661775CCB56CF60286C249E88C6BE03A036417A62BFD3A730A4FAA855C43A516E33774A816246A23E31E942F91F5A03712719560C4773F261643CF4D4BAC66E63FED8B6D6C510F623C9A6847D0E4593477BF6F9F85B3C27C274FF0434DD3F15A84F41D40B817A01A23E13A8CF40D4EF05EAF720EA32B88E252F1F40E8E7223D90FF81480F5A6895616F3CFD7318FDA1487F08A37F21D2BF80D1BF14E95FC2E85F89F4AF60F4AF45FAD740F9D99704480A21EF4190451028839E24841E540B2431F48072E84982E80125D19344D103CAA22709A30794464F12470F288F9E24901E50223D49243DA04CCE25999C8364F2699BBC7F9BFC3B4DEB2AAF92DD2774D40B053E95D3D0E91AB8893A62DB561B77A5C7A9433058185DA0881E850915E2E64AFA802D3D561BFBC32F0574D15C7A2426F88785D2C67A51F1F92EE247BD927697BED28B092E7C6A32B732D306E38838F4296045DB44D770EB594D585217925C1F5D5DBE939CB00E68BB4B0BE3B00697992E62AD9D7872CE7972CEB1B603647713FA0F71E4ABF02BB56326783F54336BD183D1B56129CF2375512B9D5DA9DBFB5C9A6D7EDAD9BEA6B124E236F1E8422539C98A451AEED593E6EFC649B67250EDBF4D45F258A54548EEB8F45B18106FD5E5435EA0788F14D85BFE162DA21091CEA90B5CF849788BF282863E4DE7FB6465CEDDC6F2786E4699E579C0456669AF47E17B6BE420D590B46F6F182A301E4B8E4B4DBEF9D9EADECFE450D116DA3C0CD516BA18755A360E0C421151AAAC9D37077F3A1F40AA442D434861B062BCA8C1374BD1A337610F86F9052446CA62E30610878AA26D7C932B3F8C20980B3F0297177ED8079FBBACF9DC61CDA5B446068A272739320051A43C0AF0EF4208E91D581F290592299643A3A271261DFBD60E2716450E94AF078ABFC4FEF6AFF65A70379B6CE7420C372DC85F0F102A43FDCFF144617B3CFD4749F36672FECBD78AECD9E432C373883793FDC93FA122BF1D6ACAC083FC76A81D0323F3376D18989FC0A596CB2E9CE3DE2D613C9E2B6E8CD04C72C1F33DED051196185C0AF74150E3CF88DB4BF00825DE16018534B895C14068EC5D89E0C4AEC9B95AD41D6EAF296517C731AF1F70D288E2CCC648FB76B096FCCAD218C0DB0181BFA7C01040BEB5C00448B8C3C010824F41637B805CEE3A40BA9D08AB3D09C7BE81E026BC73A2AEF2BD03264A2BDF41B0FB98D6BD6A1FB41F34EFB4E3E0FDA553CB780BCB786796F1DE5BC663AE1650021EC001BB6B680078601BF0B96DC043DB802F6C03BEB40DF8CA36E06BDB806D067F6B88D675C5B3AE2C9E756DF1ACAB8B675D5F3CEB0AE359D718CFBACA78D675666E59679EF68B8DA6B80A0FCBA774F67DE9EC4DB6ADF8B4DE260852EAF921479C4699E555326696597E20122CB3BC81B43EF634EF4E56776266F7011B984689DB6DE102EB6A270DBB81303D79978CE25DA2F60B79723871B125E66A3B1C7200EB4ED53B7C2CC7CE066E3CB42AB281DF46A90F9F46A87561C0E9B77AA7DAE231BABDA4DE96D277B3A98979C0D1B2758F9997BB338D1588EB4869B8E51CAF6267AAB2647764D9A61EB7584B6F52DCE3547EDBE4DC92A8A8D08139B8B51C1FBAB2FA8AAC998CDC124FE69D8A996132EFFE5CDE1A6606E9BE3BB37DEBBE499964599F0CBC3B17B886499347BC9F0B4D08AEE241DF68385429C6FBF1DB4CE12A1EED5B0D1F58A2717D9E71157C9D9BBC0799E61A9780E963156E95B4BC0796CD3F2E81B32F552C76495E3E2C77B9BAC11E677A7365227385F9D78EA1DAAC87D2B4CA46D67239F0020F40B845F1EC8BFE8527B7E15D0B71843113B4E2869EA6CC79729BD643A050A3BA88B879870A1FCFF6FC93AC086FFD55815FAFF072A1BC15E58B1F6DC876099E8905E7C9E5A6586F0AFCC928BE89384923236917FF32353B5FE7A3CBD26D29B7F109B89A2199B05E26A79B300A9A7ABF53ECE06820C8105DAD6D495F16648D7BF7D020C9572EEA80AAE66B6616D7285E47182CBF4C96FE376452376C403EA03B7FF57055C5CFE841FA3B826FF6A3B3D0BFCBFC38AF305A7AFC2796E120DEFEF85FCE4695ECF3990000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708090405571_InitialCreate7', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDB6EDC38127D5F60FFA1D14FBB8B8CDB6AC7B9C19E81DD4E36C6C4B1917682790BE4166D0BA34B8FA4CEB4B1D82FDB87FDA4FD8525455D7895546C52F1CE1A0182B6C43A459155C55B55F13FFFFAF7D14FDB389A7C43591EA6C9F1D4DBDB9F4E50B24A8330B93B9E6E8ADB1F5E4D7FFAF1CF7F3A7A1BC4DBC997BADC0129872993FC787A5F14EB37B359BEBA47B19FEFC5E12A4BF3F4B6D85BA5F1CC0FD2D97C7FFFF5CCF36608434C31D66472F4699314618CCA3FF09F8B3459A175B1F1A38B3440515E3DC76F9625EAE4A31FA37CEDAFD0F1F4C3F5C5728F16DBFB901605CA42944F272751E8E3CA2C51743B9DF84992167E81ABFAE6738E9645962677CB357EE047D70F6B84CBDDFA518EAA4F78D3161FFA35FB73F235B396B0865A6DF2228D8180DE41D53C3391DCA891A74DF3E1067C8B1BBA78205F5D36E2F1F4E40EF7EFC37422B27AB38832524CD3C27B94EED984BC7DD648021618F2EFD964B1898A4D868E13B429323F7A36B9DADC44E1EA67F4709DFE8A92E36413456CC570D5F03BEE017E7495A56B94150F9FD02D57DDF3B3E964C653CF44F28658A2A49F759E1407F3E9E423AE887F13A14606982658166986FE8E1294F9050AAE7CF2EDB80BCF0354B6A254072547F2BBE689450F2BD27472E16F3FA0E4AEB83F9E1EEE63D579176E51503FA9EAF13909B1DE61A222DBA081ACC2D5AFC918EC709B042893DAB29BE8EA3E4DD0C74D7C83B28E0A7A731BCD110419CAF30E36F3431BEDB0C482B2C981ED709E9FA1086181AAA94ED334427EC2D31DCD5A551DA0C08B348EC33C2F6D84992AB708DF41A91717662A4DE9C655E87E8E3D42731FDE163B8378BFCC6B8433B40A633F9A4EAE32FCAB1AB95F4D27CB954FF08CC00FDC81CF5DD67CEEB0E68B0C11B1397D00A93B56B7F036049355CCCEF07FCD07E1DFD761DC5B4FA2E084A309AD65E354DC44D446C2ADD29710FD5E3D6C5046B74CAD8187DA26CDD0E0D03A518E6761BEEA18F7F04FF0B807E9ED5DC6218E7CF4AE26ACCF037847D774A37573397C880CBB69B6432DEE7E2FD250F3DA8B94577601F019C100D384A93EFADFC2BBB2AD057A624748EB61AE9F505496C8EFC3355D26EED56FBF727288CBBECBD2F8531A31004291AFD77E76870A5CAFB4BBDC32DD64AB1DB4AB043552AC92727CF359CB2AD87A2A85DC40AB3EE235C7208D3A43F92A0BD77495DDB17CB2B16A10F8FD7CEF9AE3E51A2574F4A77C86CC0416519AA35EA22E5DE394C8AEC2D58AD4A770B5629A2A1C5DE8EE3A79A128A36B5FBB4A87AA9F667DEF7054A31C895274E982D3A9CB55E41BEC835584A3772E616A62596BBAB13AD66411520D73809901BFAD0420F1605B58690E9D7A11920B2C03E13A0A8135245D458A83894EE2749314B6266A4BF844CDFE2AF213CA71232E4F8C14B4261E5D492963130BDC5236CDFEE2B95345A51C4DD4955242E717EA6DB09E0DB879C7E86063E3F8D43583856B0667AE19BC77CDE0C3A5D7C1E1C00A87AE6FB0C3E1C03987E7CE391C3AE7F0C2398797CE39BC72CEE1B5730EDEBE7B16EEB5DA73AFD69E7BBDF6DC2BB6E75EB33DF7AAEDB9D76DCFBD727BEEB57BEE5ABBFF78276383D726E50201BE2A29C9465F8F94D4F2AE81B2ECE71C65038B9E6C8AFBAA1D06943ECFF30D0A2E87157EBB5D8719CAE5D2FD4BA8E663C7D843AE5B6B0C5E4C73EFECDF023C026FFB4E541E2010D3AF20A4C17A493A04AE96846A74AD04681A294A1DCA0614BEF2F3FCF73433D824B425CD43F71EDACFDAF51C0428866D138DCCD8CED71A6906399B30F5FA64CE355A982727D05E8EFF0F4EA02A674E0B6C9EDC46217BEAA39DAC19FA1FB9366CD7E99A9C80F8D509C88EF68D43FB2E477C74A56272C8A75EE340FD2915C74929FE3A8301AF4F834D3CD3D4C76D23B9BF9DE479BA0A4BB1123C74448706BEC66F936032D0BB817E06EB2B81BFA63A4C5CE12A1D4FF7F7F63CA94DFA39340E4B1C07D6798F67F33789071653949121D0C764498E053F4C0A59A6C36415AEFD68D8070BE4109722D24D0D37F1CD195A13239814C35A65C76A34DC04A5ED6BB1A3192351B2A1C33405A64059BDAD838D5688A8B152183A3CA5AE6C5D5E09B528230474890A76F250864EB5D25E49463D5994A44C81C005226890D8223D98F5D9B384C43816F74088CE452A28408D181F4265A5A892F683D061598352BB1DF5C310FBAC01A1FE2CFD10F5E9B806A63D79EF812A073B1588726B4822276B4015355DC8F710B78B111504BBE21900C48DFA3A3C61A221C0329A2C8B8EE4EFC694EE718D138DCDF0B1A4F9504E8425EB357CE8E001B9EF11A72B7C6B2886D6C6B635EF8E6634D4B37A7034D3C4841E5DF8EB351EE59918D1EAC964490344173F2CE1619331C598AD7245F46453DB86135E22FA7748784B5CC303F42ECC72E255E1DFF8649EB10862A91867C935E259B3128CB5DC7DB5A8D604E477356074047F29C6BC0AE01DFEB2980C9DE53A98E9741DE18444E9FA919F6997DE8B34DAC449F752BE1F892EA9652CF5F6582F5AB36A562036EF86A3B68B63164FE791D985C4AD7F5930EE05E07BEB452EF7A1F5C3E138ED229605D205CC7421312B5B168A792C631DCD04F994A661922A08464954ADE18AC74E606C29A01E72B02A7641E8859F4650F242AF8AC6EC46B1A5DA8D53182753F543004E191EC981944F40080712C20108612ED5610EACC35CAAC31C5607E6609685611E0FC7628F6B5930F639B8667497425137D5C6474FED98A35DA17ECC9B3FA459AA9642BB1BA3765905B7421DB4EEC71076F351C6A2CF1F4D77F54EEA0DBA6DA701A4875EABC355E823A7BECA30CACEAEABB752649B0FC2D90AD6760BB2B55BC1D26E4176B60E66641172E5FE44174AA0B237C1A3B336EDFAD18EC129B74CCCEC8D9AD4B5A4C901831220F7D61C998406766193F7C3D1DB304016B37D0A18BDDBE0404EF9DBC78F495AEBBD362BE25AEDCD19C9AB8ED6FD2A923D0594B1E8F3C7D465745FD34A8795FBA046DDA5A6D42ED4ABC83A6E8DAE8CD2EB4291E7AFD0796BB5052D990D08866ABF01BED5D084D8C930D2A15567CB5661775CCB56CF60286C249E88C6BE03A036417A62BFD3A730A4FAA855C43A516E33774A816246A23E31E942F91F5A03712719560C4773F261643CF4D4BAC66E63FED8B6D6C510F623C9A6847D0E4593477BF6F9F85B3C27C274FF0434DD3F15A84F41D40B817A01A23E13A8CF40D4EF05EAF720EA32B88E252F1F40E8E7223D90FF81480F5A6895616F3CFD7318FDA1487F08A37F21D2BF80D1BF14E95FC2E85F89F4AF60F4AF45FAD740F9D99704480A21EF4190451028839E24841E540B2431F48072E84982E80125D19344D103CAA22709A30794464F12470F288F9E24901E50223D49243DA04CCE25999C8364F2699BBC7F9BFC3B4DEB2AAF92DD2774D40B053E95D3D0E91AB8893A62DB561B77A5C7A9433058185DA0881E850915E2E64AFA802D3D561BFBC32F0574D15C7A2426F88785D2C67A51F1F92EE247BD927697BED28B092E7C6A32B732D306E38838F4296045DB44D770EB594D585217925C1F5D5DBE939CB00E68BB4B0BE3B00697992E62AD9D7872CE7972CEB1B603647713FA0F71E4ABF02BB56326783F54336BD183D1B56129CF2375512B9D5DA9DBFB5C9A6D7EDAD9BEA6B124E236F1E8422539C98A451AEED593E6EFC649B67250EDBF4D45F258A54548EEB8F45B18106FD5E5435EA0788F14D85BFE162DA21091CEA90B5CF849788BF282863E4DE7FB6465CEDDC6F2786E4699E579C0456669AF47E17B6BE420D590B46F6F182A301E4B8E4B4DBEF9D9EADECFE450D116DA3C0CD516BA18755A360E0C421151AAAC9D37077F3A1F40AA442D434861B062BCA8C1374BD1A337610F86F9052446CA62E30610878AA26D7C932B3F8C20980B3F0297177ED8079FBBACF9DC61CDA5B446068A272739320051A43C0AF0EF4208E91D581F290592299643A3A271261DFBD60E2716450E94AF078ABFC4FEF6AFF65A70379B6CE7420C372DC85F0F102A43FDCFF144617B3CFD4749F36672FECBD78AECD9E432C373883793FDC93FA122BF1D6ACAC083FC76A81D0323F3376D18989FC0A596CB2E9CE3DE2D613C9E2B6E8CD04C72C1F33DED051196185C0AF74150E3CF88DB4BF00825DE16018534B895C14068EC5D89E0C4AEC9B95AD41D6EAF296517C731AF1F70D288E2CCC648FB76B096FCCAD218C0DB0181BFA7C01040BEB5C00448B8C3C010824F41637B805CEE3A40BA9D08AB3D09C7BE81E026BC73A2AEF2BD03264A2BDF41B0FB98D6BD6A1FB41F34EFB4E3E0FDA553CB780BCB786796F1DE5BC663AE1650021EC001BB6B680078601BF0B96DC043DB802F6C03BEB40DF8CA36E06BDB806D067F6B88D675C5B3AE2C9E756DF1ACAB8B675D5F3CEB0AE359D718CFBACA78D675666E59679EF68B8DA6B80A0FCBA774F67DE9EC4DB6ADF8B4DE260852EAF921479C4699E555326696597E20122CB3BC81B43EF634EF4E56776266F7011B984689DB6DE102EB6A270DBB81303D79978CE25DA2F60B79723871B125E66A3B1C7200EB4ED53B7C2CC7CE066E3CB42AB281DF46A90F9F46A87561C0E9B77AA7DAE231BABDA4DE96D277B3A98979C0D1B2758F9997BB338D1588EB4869B8E51CAF6267AAB2647764D9A61EB7584B6F52DCE3547EDBE4DC92A8A8D08139B8B51C1FBAB2FA8AAC998CDC124FE69D8A996132EFFE5CDE1A6606E9BE3BB37DEBBE499964599F0CBC3B17B886499347BC9F0B4D08AEE241DF68385429C6FBF1DB4CE12A1EED5B0D1F58A2717D9E71157C9D9BBC0799E61A9780E963156E95B4BC0796CD3F2E81B32F552C76495E3E2C77B9BAC11E677A7365227385F9D78EA1DAAC87D2B4CA46D67239F0020F40B845F1EC8BFE8527B7E15D0B71843113B4E2869EA6CC79729BD643A050A3BA88B879870A1FCFF6FC93AC086FFD55815FAFF072A1BC15E58B1F6DC876099E8905E7C9E5A6586F0AFCC928BE89384923236917FF32353B5FE7A3CBD26D29B7F109B89A2199B05E26A79B300A9A7ABF53ECE06820C8105DAD6D495F16648D7BF7D020C9572EEA80AAE66B6616D7285E47182CBF4C96FE376452376C403EA03B7FF57055C5CFE841FA3B826FF6A3B3D0BFCBFC38AF305A7AFC2796E120DEFEF85FCE4695ECF3990000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708140950359_InitialCreate8', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDB6EDC38127D5F60FFA1D14FBB8B8CDB6AC7B9C19E81DD4E36C6C4B1917682790BE4166D0BA34B8FA4CEB4B1D82FDB87FDA4FD8525455D7895546C52F1CE1A0182B6C43A459155C55B55F13FFFFAF7D14FDB389A7C43591EA6C9F1D4DBDB9F4E50B24A8330B93B9E6E8ADB1F5E4D7FFAF1CF7F3A7A1BC4DBC997BADC0129872993FC787A5F14EB37B359BEBA47B19FEFC5E12A4BF3F4B6D85BA5F1CC0FD2D97C7FFFF5CCF36608434C31D66472F4699314618CCA3FF09F8B3459A175B1F1A38B3440515E3DC76F9625EAE4A31FA37CEDAFD0F1F4C3F5C5728F16DBFB901605CA42944F272751E8E3CA2C51743B9DF84992167E81ABFAE6738E9645962677CB357EE047D70F6B84CBDDFA518EAA4F78D3161FFA35FB73F235B396B0865A6DF2228D8180DE41D53C3391DCA891A74DF3E1067C8B1BBA78205F5D36E2F1F4E40EF7EFC37422B27AB38832524CD3C27B94EED984BC7DD648021618F2EFD964B1898A4D868E13B429323F7A36B9DADC44E1EA67F4709DFE8A92E36413456CC570D5F03BEE017E7495A56B94150F9FD02D57DDF3B3E964C653CF44F28658A2A49F759E1407F3E9E423AE887F13A14606982658166986FE8E1294F9050AAE7CF2EDB80BCF0354B6A254072547F2BBE689450F2BD27472E16F3FA0E4AEB83F9E1EEE63D579176E51503FA9EAF13909B1DE61A222DBA081ACC2D5AFC918EC709B042893DAB29BE8EA3E4DD0C74D7C83B28E0A7A731BCD110419CAF30E36F3431BEDB0C482B2C981ED709E9FA1086181AAA94ED334427EC2D31DCD5A551DA0C08B348EC33C2F6D84992AB708DF41A91717662A4DE9C655E87E8E3D42731FDE163B8378BFCC6B8433B40A633F9A4EAE32FCAB1AB95F4D27CB954FF08CC00FDC81CF5DD67CEEB0E68B0C11B1397D00A93B56B7F036049355CCCEF07FCD07E1DFD761DC5B4FA2E084A309AD65E354DC44D446C2ADD29710FD5E3D6C5046B74CAD8187DA26CDD0E0D03A518E6761BEEA18F7F04FF0B807E9ED5DC6218E7CF4AE26ACCF037847D774A37573397C880CBB69B6432DEE7E2FD250F3DA8B94577601F019C100D384A93EFADFC2BBB2AD057A624748EB61AE9F505496C8EFC3355D26EED56FBF727288CBBECBD2F8531A31004291AFD77E76870A5CAFB4BBDC32DD64AB1DB4AB043552AC92727CF359CB2AD87A2A85DC40AB3EE235C7208D3A43F92A0BD77495DDB17CB2B16A10F8FD7CEF9AE3E51A2574F4A77C86CC0416519AA35EA22E5DE394C8AEC2D58AD4A770B5629A2A1C5DE8EE3A79A128A36B5FBB4A87AA9F667DEF7054A31C895274E982D3A9CB55E41BEC835584A3772E616A62596BBAB13AD66411520D73809901BFAD0420F1605B58690E9D7A11920B2C03E13A0A8135245D458A83894EE2749314B6266A4BF844CDFE2AF213CA71232E4F8C14B4261E5D492963130BDC5236CDFEE2B95345A51C4DD4955242E717EA6DB09E0DB879C7E86063E3F8D43583856B0667AE19BC77CDE0C3A5D7C1E1C00A87AE6FB0C3E1C03987E7CE391C3AE7F0C2398797CE39BC72CEE1B5730EDEBE7B16EEB5DA73AFD69E7BBDF6DC2BB6E75EB33DF7AAEDB9D76DCFBD727BEEB57BEE5ABBFF78276383D726E50201BE2A29C9465F8F94D4F2AE81B2ECE71C65038B9E6C8AFBAA1D06943ECFF30D0A2E87157EBB5D8719CAE5D2FD4BA8E663C7D843AE5B6B0C5E4C73EFECDF023C026FFB4E541E2010D3AF20A4C17A493A04AE96846A74AD04681A294A1DCA0614BEF2F3FCF73433D824B425CD43F71EDACFDAF51C0428866D138DCCD8CED71A6906399B30F5FA64CE355A982727D05E8EFF0F4EA02A674E0B6C9EDC46217BEAA39DAC19FA1FB9366CD7E99A9C80F8D509C88EF68D43FB2E477C74A56272C8A75EE340FD2915C74929FE3A8301AF4F834D3CD3D4C76D23B9BF9DE479BA0A4BB1123C74448706BEC66F936032D0BB817E06EB2B81BFA63A4C5CE12A1D4FF7F7F63CA94DFA39340E4B1C07D6798F67F33789071653949121D0C764498E053F4C0A59A6C36415AEFD68D8070BE4109722D24D0D37F1CD195A13239814C35A65C76A34DC04A5ED6BB1A3192351B2A1C33405A64059BDAD838D5688A8B152183A3CA5AE6C5D5E09B528230474890A76F250864EB5D25E49463D5994A44C81C005226890D8223D98F5D9B384C43816F74088CE452A28408D181F4265A5A892F683D061598352BB1DF5C310FBAC01A1FE2CFD10F5E9B806A63D79EF812A073B1588726B4822276B4015355DC8F710B78B111504BBE21900C48DFA3A3C61A221C0329A2C8B8EE4EFC694EE718D138DCDF0B1A4F9504E8425EB357CE8E001B9EF11A72B7C6B2886D6C6B635EF8E6634D4B37A7034D3C4841E5DF8EB351EE59918D1EAC964490344173F2CE1619331C598AD7245F46453DB86135E22FA7748784B5CC303F42ECC72E255E1DFF8649EB10862A91867C935E259B3128CB5DC7DB5A8D604E477356074047F29C6BC0AE01DFEB2980C9DE53A98E9741DE18444E9FA919F6997DE8B34DAC449F752BE1F892EA9652CF5F6582F5AB36A562036EF86A3B68B63164FE791D985C4AD7F5930EE05E07BEB452EF7A1F5C3E138ED229605D205CC7421312B5B168A792C631DCD04F994A661922A08464954ADE18AC74E606C29A01E72B02A7641E8859F4650F242AF8AC6EC46B1A5DA8D53182753F543004E191EC981944F40080712C20108612ED5610EACC35CAAC31C5607E6609685611E0FC7628F6B5930F639B8667497425137D5C6474FED98A35DA17ECC9B3FA459AA9642BB1BA3765905B7421DB4EEC71076F351C6A2CF1F4D77F54EEA0DBA6DA701A4875EABC355E823A7BECA30CACEAEABB752649B0FC2D90AD6760BB2B55BC1D26E4176B60E66641172E5FE44174AA0B237C1A3B336EDFAD18EC129B74CCCEC8D9AD4B5A4C901831220F7D61C998406766193F7C3D1DB304016B37D0A18BDDBE0404EF9DBC78F495AEBBD362BE25AEDCD19C9AB8ED6FD2A923D0594B1E8F3C7D465745FD34A8795FBA046DDA5A6D42ED4ABC83A6E8DAE8CD2EB4291E7AFD0796BB5052D990D08866ABF01BED5D084D8C930D2A15567CB5661775CCB56CF60286C249E88C6BE03A036417A62BFD3A730A4FAA855C43A516E33774A816246A23E31E942F91F5A03712719560C4773F261643CF4D4BAC66E63FED8B6D6C510F623C9A6847D0E4593477BF6F9F85B3C27C274FF0434DD3F15A84F41D40B817A01A23E13A8CF40D4EF05EAF720EA32B88E252F1F40E8E7223D90FF81480F5A6895616F3CFD7318FDA1487F08A37F21D2BF80D1BF14E95FC2E85F89F4AF60F4AF45FAD740F9D99704480A21EF4190451028839E24841E540B2431F48072E84982E80125D19344D103CAA22709A30794464F12470F288F9E24901E50223D49243DA04CCE25999C8364F2699BBC7F9BFC3B4DEB2AAF92DD2774D40B053E95D3D0E91AB8893A62DB561B77A5C7A9433058185DA0881E850915E2E64AFA802D3D561BFBC32F0574D15C7A2426F88785D2C67A51F1F92EE247BD927697BED28B092E7C6A32B732D306E38838F4296045DB44D770EB594D585217925C1F5D5DBE939CB00E68BB4B0BE3B00697992E62AD9D7872CE7972CEB1B603647713FA0F71E4ABF02BB56326783F54336BD183D1B56129CF2375512B9D5DA9DBFB5C9A6D7EDAD9BEA6B124E236F1E8422539C98A451AEED593E6EFC649B67250EDBF4D45F258A54548EEB8F45B18106FD5E5435EA0788F14D85BFE162DA21091CEA90B5CF849788BF282863E4DE7FB6465CEDDC6F2786E4699E579C0456669AF47E17B6BE420D590B46F6F182A301E4B8E4B4DBEF9D9EADECFE450D116DA3C0CD516BA18755A360E0C421151AAAC9D37077F3A1F40AA442D434861B062BCA8C1374BD1A337610F86F9052446CA62E30610878AA26D7C932B3F8C20980B3F0297177ED8079FBBACF9DC61CDA5B446068A272739320051A43C0AF0EF4208E91D581F290592299643A3A271261DFBD60E2716450E94AF078ABFC4FEF6AFF65A70379B6CE7420C372DC85F0F102A43FDCFF144617B3CFD4749F36672FECBD78AECD9E432C373883793FDC93FA122BF1D6ACAC083FC76A81D0323F3376D18989FC0A596CB2E9CE3DE2D613C9E2B6E8CD04C72C1F33DED051196185C0AF74150E3CF88DB4BF00825DE16018534B895C14068EC5D89E0C4AEC9B95AD41D6EAF296517C731AF1F70D288E2CCC648FB76B096FCCAD218C0DB0181BFA7C01040BEB5C00448B8C3C010824F41637B805CEE3A40BA9D08AB3D09C7BE81E026BC73A2AEF2BD03264A2BDF41B0FB98D6BD6A1FB41F34EFB4E3E0FDA553CB780BCB786796F1DE5BC663AE1650021EC001BB6B680078601BF0B96DC043DB802F6C03BEB40DF8CA36E06BDB806D067F6B88D675C5B3AE2C9E756DF1ACAB8B675D5F3CEB0AE359D718CFBACA78D675666E59679EF68B8DA6B80A0FCBA774F67DE9EC4DB6ADF8B4DE260852EAF921479C4699E555326696597E20122CB3BC81B43EF634EF4E56776266F7011B984689DB6DE102EB6A270DBB81303D79978CE25DA2F60B79723871B125E66A3B1C7200EB4ED53B7C2CC7CE066E3CB42AB281DF46A90F9F46A87561C0E9B77AA7DAE231BABDA4DE96D277B3A98979C0D1B2758F9997BB338D1588EB4869B8E51CAF6267AAB2647764D9A61EB7584B6F52DCE3547EDBE4DC92A8A8D08139B8B51C1FBAB2FA8AAC998CDC124FE69D8A996132EFFE5CDE1A6606E9BE3BB37DEBBE499964599F0CBC3B17B886499347BC9F0B4D08AEE241DF68385429C6FBF1DB4CE12A1EED5B0D1F58A2717D9E71157C9D9BBC0799E61A9780E963156E95B4BC0796CD3F2E81B32F552C76495E3E2C77B9BAC11E677A7365227385F9D78EA1DAAC87D2B4CA46D67239F0020F40B845F1EC8BFE8527B7E15D0B71843113B4E2869EA6CC79729BD643A050A3BA88B879870A1FCFF6FC93AC086FFD55815FAFF072A1BC15E58B1F6DC876099E8905E7C9E5A6586F0AFCC928BE89384923236917FF32353B5FE7A3CBD26D29B7F109B89A2199B05E26A79B300A9A7ABF53ECE06820C8105DAD6D495F16648D7BF7D020C9572EEA80AAE66B6616D7285E47182CBF4C96FE376452376C403EA03B7FF57055C5CFE841FA3B826FF6A3B3D0BFCBFC38AF305A7AFC2796E120DEFEF85FCE4695ECF3990000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708290850207_InitialCreate9', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5DDD6EDB3A12BE5F60DFC1F0D5EEA2278EE4F42F48CE8163A7DBE0344D50A7C5B92B148B4984234B5E49EE71B0D827DB8B7DA47D8525F54BF147D2D0A492768502852369BE21A999E10CC5E1FCF7DFFF39F965B7F647DF50147B61703AB60E0EC72314AC42D70BEE4FC7DBE4EEA737E35F7EFEF39F4ECEDDF56EF4A5786E4A9EC394417C3A7E4892CDF16412AF1ED0DA890FD6DE2A0AE3F02E395885EB89E38613FBF0F0EDC4B22608438C31D66874F2691B24DE1AA57FE03FE761B0429B64EBF897A18BFC38BF8EEF2C53D4D147678DE28DB342A7E30F3797CB83ECB1830F6192A0C843F17834F33D07376689FCBBF1C80982307112DCD4E3CF315A265118DC2F37F882E3DF3C6E107EEECEF1639477E1B87ABC6B6F0E6DD29B49455840ADB67112AE8180D6341F9E094BAE34C8E372F8F0009EE3814E1E49AFD3413C1DCFEEF1FB7D1C8F5856C7733F228F4946F820A37B3122775F9492800586FC7B319A6FFD641BA1D3006D93C8F15F8CAEB7B7BEB7FA153DDE84BFA3E034D8FA3EDD30DC347CAF76015FBA8EC20D8A92C74FE8AED6DC8BC57834A9534F58F29298A3CCBA751124537B3CFA881BE2DCFAA894016A08964918A1BFA300454E82DC6B87F41DBFC20B17A5A3C8B541C891FC2E7862D1C38A341E5D3ABB0F28B84F1E4EC72F0FB1EABCF376C82DAEE4EDF81C7858EF3051126D514756DEEAF7A00F76784C5C147163D94C74FD1006E8E3767D8BA286065AB68EE170DD08C571031BFBA58E71586241D9C6C071B88817C84758A00AAAB330F49113D4E94E2695AA7650E079B85E7B719CDA083555AE109E40A9E7976A2A9DD1F5ABD0ED1C5B84E6C1BB4BF606B17EB30B84055A796BC71F8FAE23FC2B9FB9DF8C47CB9543F094C0A7E6C06D932DB70DB67C1E212236678F2075C7EAE6DD7960B29CD902FF577608FFBEF1D6ADED240A4E38AAD06A364EC9AD9FD948B855FAE2A13FF28B254AEF96A932F050DB24991A0C5AA78CE3C28B570DF31EFE099EF7206F7B9F79A846DEFBAB26AC2F5CF88B2EE87A7BCDE9F4C1326CA6D975B5B887AD485DCD6B2B529CDB054037DC0EA609537D74BE79F7E95833F4C48E90D1C35C3F213F7D227EF03659987850DCFD5A9343FCECBB285C7F0A7D0A8079E4EB8D13DDA304B72B6C7E6E196EA3D51EDA95822A29564AD9BFF92C64156C3D8542AEA0551F71CCD149A316285E45DE268BB21BC2271D5103C3EFD707D31CAF3628C866FF8C4F174F60EE87316A256AD2B59A12E955B84291DA14AE504C5585CB02DD7D9D970CA577EDABA274A8FA49E27B83B35AC6912845932E18755DAE7D47611D2C27ECFDE512A62A96B5A0EBEBC5AA0421F93407F00CEACB4A00120BB68415C650D78B905C6219F036BE076C217955E47130D16C1D6E834497A3B6843B6AFAA3C84F28C683B89C29296841DCBB92668C552C7045590EFBAB23A38A9A715451D78C12EA5F8897C15A16E0EC86D941C7C2F199690673D30C16A619BC37CDE0C395D5C061AA8543531FF470981AE770649CC34BE31C5E19E7F0DA388737C639BC35CEC13A34CFC2BC565BE6D5DA32AFD79679C5B6CC6BB6655EB52DF3BA6D99576ECBBC76DBA6B5FBC7FB32A6109B9CEF139B9C7FDFB189E14584A6D804F8115767B062683D7A467DDB37E463CF6CF32CA6E6591C196771669CC3DC388785710E43C836846C43C836846C43C836846C43C8F65D846C98450F73B679EDB6CD6BB76D5EBB6DD3DAFD7F1CA1A761323C364FC97A8FCA536AFEBBBEF0D9CF318A3A3E3ADB260FF9387478FA228EB7C8BDEAF6F0F96EE34528E69F6E5F48283BDB47545D8C562F117C35DCF2B8ABE3CE2EE0FA46F5EEF65C28A1DE2B08A9B35E921702574B42D5BB5602348D3C4A7E757AF8DA89E33FC248611B8F2E69EEBA0257756BDF9D8A4031AC86A867C67A7AABA41964F7A06A5E26B5F3B08219D2345B39B6BEEE1F204D53946EA981CD90D809D9F5267B4DDAF7BECA7AD5922164DAB0DD841BB247D1C9F728EE69DF6A684FB209378B5454B6E16AF99EB5146CF80C71EF1426BC360D56C91D13F43C8C13CD4C64F2378BE370E5A562557DAD15A61CD45B7C1EB8A38EF9075937E86C06DC9B7CBBEF0A37E9747C7870607163D2CEA14C29AA71A0D3EBEA6CFEC6F1C0628A2232053A982C88B1E07B41C2CBB417ACBC8DE377EB30432E540A49D20F794D2537F6CE026D88110C926EA3B267334A6E8CD2B68DD8C9849228DED0619A0453A0A858D6C146CB4399B112183AEC52E7B62ECE859A951102BA4409ED3CA4879B54D29E4B46E12C72522640A81D152041A21F69C12C7687734854EA6F0B049BFE238202B488CAF213362A53D276906C5A96A0148941ED30C43E4B40B28C93768862FFBA04A6DA1BDF19EABC19EABC152A9D374520C255268E9C849322EA6C4DA085B88A6B441074F0D401A8E640C8F0189F8581A58C022F855C721BF5744B1E1C6BB7BA4F4B65476BDAC019C2EEB3501DB0D61FD6F3A98F8660962ECD6479EF64929DEB945F3899480E803AB974361BEC30500742E55746CBEC34A8F94F4BF81949EB0C63B28A05472595AD2D39E168D3B947CC5D9207EEA2775E14936D4ACEAD435C96B9BBE61EAB4D0A12F12C5831769F7F7D85A81604E4773EF7349CF422983E738077B8676B320BA72135F5D2658423722497E33B91348A9F87FE761D34AF0AB42365D1398F255E696B452B0370016279AF3B6A1567D378B2F4CB26A45A284D83D56E00FA5BC4CBB58E1617BBE354F1300D243B1DA309890A926928EA328F753261E493F3E83855608C12AB5ADD158FF6857429A01CB2B32A3641C8853F3B2EA92EF4A2A3979A5174A976B9A9B22653C545004EBA5FB206925E01214C39842908C1E6DA6003DB60736DB0616DA0BEF1D230D4E5EE58F4975F1A8CBE0E6E59B6E021689B680DA5A575D45762A67DD49D1FD22CE551D5FEC6A88AD0E056A881D6FC1C42AF63F258D9F567F3BA5A9D7A85D7B6D704D2422FD5E1FC9CA39AFA0ACF4C6A7C75C5AA0C6FF341383BC6DAEE40B676C758DA1DC8CE162717D108B170A9A309C515D91BF7D9599B2A7ED46370D2D517357B2326352D69FCE9401C60EDAE3A323907A8099BDCEF8E7E559EF94363565701B3777512504DF9ABCBCF495A8B653B2DE29A2FF329C9AB8CD67C14497F50E4B1B2EBCFE995654BA45A5E58BAA4AAF4BAC494D2403D3F46A716A30B8FE46942E1FD57A8DF9AAF6673660382215A6F802F3594E7E9F030DCF7AFC691CDCFD8A98D6C7E0D86421FBBC3A2D1F700A8E5893CEC7BCFAEC2908AAFB62CD64CB8CCDC2805028F44FCF1A509E53B8A816A1F45B4188EF2238A92F19053CB06BB4AA2A5C75A9694DB8EC49B12FA3A148D9FEDE9EBFD2FF1CC18777F0672F7CF18EA3310F59CA19E83A8170CF50244FD9EA17E0FA24ED33269F2F40284DE66E981FCA72C3D28D04A1326EBF44730FA972CFD4B18FD2B96FE158CFE354BFF1A46FF86A57F03A37FCBD2BF05CACF212740DC79712D08BC080265D0E284D0826A01278616500E2D4E102DA0245A9C285A4059B43861B480D26871E26801E5D1E204D2024AA4C589A40594499B93491B2493C33279FB32F993BB75E77ADDBAF3BDDC3A01F5E0D66971EBB82F7733E097BB19F7DD6D06FCEE969D5352439802118E38842318C2190B7006A39FB3F47318FD82A55FC0E80747737034074773703407479341E064D286DA45DE300265D2E664D206CAA4CDC9A40D94499B93491B249383CBFE6C5DF67C23F8FECE7AB6711CEEA64BE864035C9E39408FADF4D405394E91804DC3C8D2C4E528D4410135FF517E5C831CABCAFCAFAFDECBCE72902351A9FF3494F4A4874C7C9E44FCB24482FDA52F4D3C800B9F98CCACCC54A9F82C4E7615F011AACCADAF7D82921C4AD084C4B747D6962792133A67647F69A1724CE032D3442CB513C37EFA613FBDB68FB6CDE30EDD37D2DCC7EF6497A620154C8F99A8A78EA9598B160CA9F09739E6EC0E03F02E13D97685A5DA7E053D3B4EB24C72766747EF42C5E5B5B18F94DCF32BE5DF655E5B9E53564B764B7B4D52D7D2DEC6797E1B9B64963D426A3B85DF3C9724982D1FE304AD0FC80307CB7FF873DF43E4E5140F5C3A817787E2243BF8606C1F92358E99EF3971968D98A7CF1DB3E9CA9DF2E9AC29C9A743EE7AC292C3B3F2084A1CBBB5731964D5CF9FF6881A8F8C6FEB2134C0D318F85369826F4EB47A7022FEA0980A5AFD101A5DE8EC9933E9E0C02004E7C9085B67D9E0AED78F8F11A2A607C8C060D9D36214FACC9D1D73EBB560743E74A53961ACABB288D2C4BAA84A46675C51A483DFED1095FAF1FE4A10D4A1FDAEF6B2F65655D65E3FB86DB2E5B6C19673879A2A281E7FC4A90288E0C05317FF4E98037D3AB6873B005515CBA05191E47F752C0B2D89733AD48516595ADD16853F26AB9828FEB276767FD53782FBD9643D05EBCD8C60BD7CB7273CE8EB023B0ABBD3F13F539AE3D1C56F5F73B217A3AB08FB10C7A3C3D1BFA022BFEB6ACAC093FCAEAB1D032317B963CAE6C735A9E57CD655BFB5DF95E77341457789930BF6F7A405DC3531B862EAB567C69F12B7D7E0198AADE60E8554A89AAE2034FA4A961BB16BFC498DE217AE6F28F9ACA43ECB831B1944D6B351D2BE3DAC653DB25406B0F640A8D7115704E0AB8AAB003135C61521EA0750EA9E2097FB4E90661D6171F24FDF55F86EBD7B23EACAD7DE53515ABEECDEFE735A73D4DEAD0C5EF3521014EF4C33DE5C33DE4233DE7BCD78541D3921E0140ED8DC4205C0A96EC023DD802F7503BED20DF85A37E01BDD806F750356E5DAB4216AD7154BBBB258DAB5C5D2AE2E96767DB1B42B8CA55D632CED2A6369D7195BB3CE0CEBC57BBAB8E74FEBE2F6E8DFB2C3A7585BDAB493DBED0B19F5694A8F9F46978FD68438D58E78A41BF14C37E05C37E04237E0E0900F0EF9E0900F0E7913E2E0900F0EB93AA2FEF945BBCED8DA75C6D6AE33B6669D194225A55049908C36D4FDE55E0453F75725A6A9D73F558A8AD81ABD5D76832A95E0558E27B912BC1D9160257815A4F5B9D7C335B250C096C0EDB0D743A9C2AD2E5C605BF5D4AB5510A661237E2F1BF1C55BE887BDF926760FC8DEC6BE3B8764DD13ED5535A7EA0DE9687D974D559E5A056553EFFCD081BB11625DE8B05158D039AA32AA861DC7FAAA9F168DDAB3CE295DC3B10ED85B59D33E0B983616E90071EDA95E295FC18E7D99F5F2894595C54AFC9872A4597222D6D2DB10BFF14C7EAB2AA69CA888D081C54AA51C1F9B6A16B2ACA9D2A51C4FEA9E889962D5D3F6A2A712660A75511BCBA2CAFA242C2129AF9ADA5C3455C2A42CB8DACE25AB9C2AE291DD9170C86BB1B6E3572555453CAABB123E2A1559DB0AB236B33A6F6595C7BA1C93FCBA08BE28F2DA829C156DE580B3CB22DCBCFA6B0B2C5DC89503A76F8A58EC5305B65B1158F1803DCF3AB1C28AB08299463A5DD7C91B8C8E96F2AF7C3A3C9EEBF08862472FFB0BFBD1DE7D0571823103B4AACD72E53317C15D58CCB64C8B8A47D875429438D8B1746651E2DD39AB04DF5EE1C824AD54FFC5F1B76465063B7DEE4570B54D36DB047719AD6FFD9AA49149BB897F5AE3B6DEE693AB349924D6D105DC4C8FF8C657C1D9D6F3DDB2DDEF048B451208E20DE4613479970909A7EF1F4BA48F380EEC06940F5FE9C4DCA0F5C6C760F155B074BE2195B66103F201DD3BABC7EBFC54033948FB8BA80FFBC9C273EE23671DE718153DFE13CBB0BBDEFDFC3F58F7B01C29C30000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201710100804182_InitialCreate10', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5D6D6FE3B811FE5EA0FFC1F0A7B6D88B2339FB16247770EC6C37B8CD26B07387FB76506C26114E965C49DE7350F497F5437F52FF4249BDF255D2D0A4377B1516583892E619929A216728CECC7FFFFD9FB31F76EB60F005C5891F85E743E7E8783840E1325AF9E1E3F9709B3E7CF76EF8C3F77FFED3D9E56ABD1BFC5C3E3726CF61CA30391F3EA5E9E674344A964F68ED25476B7F194749F4901E2DA3F5C85B4523F7F8F8FDC8714608430C31D6607036DF86A9BF46D91FF8CF69142ED126DD7AC175B44241525CC7771619EAE0B3B746C9C65BA2F3E1A7BBEBC551FED8D1A7284D51ECA364389804BE871BB340C1C370E08561947A296EEAE94F095AA471143E2E36F88217DC3D6F107EEEC10B125474E1B47EBC6B6F8E5DD29B514D58422DB7491AAD8180CEB8189E114FAE35C8C36AF8F0005EE2814E9F49AFB3413C1F4E1EF1FB7D1E0E7856A7D320268F2946F828A77B3520775F5592800586FC7B35986E83741BA3F3106DD3D80B5E0D6EB7F781BFFC113DDF45BFA1F03CDC0601DD30DC347C8FB9802FDDC6D106C5E9F31C3D30CDBD9A0D0723967AC49357C40265DEADAB301DBBC3C167DC10EF3E40950C5043B048A318FD1D8528F652B4BAF548DFF12BBC5AA16C148536483992DF254F2C7A589186836B6FF709858FE9D3F9F0F531569D0FFE0EADCA2B453B7E0A7DAC7798288DB7A8232B7FF95B780876784C562816C6B299E8F6290AD1E7EDFA1EC50D0D745C13C3B15AC528491AD8B8AF4D8CC3020BCA36018EC355324301C20255525D445180BC90A53B1BD5AADA4181A7D17AED27493647E8A9728DF015947A7AADA7D239DD6115BA9D638BD03CF90FE9DE20CE2F6E8930434B7FED05C3C16D8C7F152BF7BBE160B1F4089E16F8D81EB86BB3E5AEC596CFAD0EFADCEAA8CFAD0EFBDCEAB84F6344D4F5E21934CDE269CE7FF0C16405B319FEAFEA10FE7DE7AF5BDB492656C25187D6F0A290DE07F9DA045F0D7EF6D1EFC5C50AE5E02B42BDB042D704C5926C7155C839CEFC64D9606FE09F607B03F2B6F759FF19F283BF6AC2FA6A057FD125DDC15E73B66CF30C9B69765DA7DCE356A4AED36B2B5252CC0B806EAC3A4C4D98EAB3F7C57FCCC69AA327F308193DCC758E82EC89E4C9DFE4EEF95179F757460EF1B31FE2683D8F020A807BE4D73B2F7E44296E57D4FCDC22DAC6CB3DB42B03D552AC8CF2F0D36729ABE0D9532AE41A5AF519FB7A9D346A869265EC6FF2DD8D06B7D584B7C6F1FBF1C936C79B0D0AF3D53FE7D3C512980651825A899A748D5122B30A572A529BC2958AA9AB70F906C3BEC64B8E7270EDAB7747A0EAA7D857B1B8AAE51C895234E98255D3E536F034F61F0BC283BF5CC25467662DE90EF562759C906299035806EC761E80C4816D1D4609D4F42224D75806FC4DE0035B485E15791C4C345947DB303565A82DE0869A792F728E123C888B89968296C40757D29CB1CE0C5C5356C3FEE6C4AAA2E61C75D435A784DA17F2EDC7968D4FB7617530B1617F619BC1D43683996D061F6D33F874E33470181BE1D0D407331CC6D6399C58E7F0DA3A8737D639BCB5CEE19D750EEFAD73708EEDB3B0AFD58E7DB576ECEBB5635FB11DFB9AEDD8576DC7BE6E3BF695DBB1AFDDAE6DEDFEE37D19D3F04D2EF7F14D2EBF6DDFC4F22642936F02FD446CD059B1B41F3DA13EEF5BB2B127AE7D1663FB2C4EACB3B8B0CE616A9DC3CC3A87DE65EB5DB6DE65EB5DB6DE65EB5DB6DE65FB265C36CCE2006BB67DED76ED6BB76B5FBB5DDBDAFD7FECA1676E32DC37CFC80EEE9567D4E2777DE9B33F2528EEF8E8649B3E15E3D0E1E9AB24D9A2D54DB7872F771B3F4689F874FB4642D5D94378D5E5681DC483AF875BED77753CD905DCDFA8DFDD9E1B25D47B052175D64BF242E06A49A80EAE95004D238F925F9D1EBEF592E4F728D638C6634A9ABBEEC0D5DDDAF7A422500CEB213A306333BDD5D20C727A50371E963A7958C3F4E1B1AD1C5B5FF71F203C5616E66A804D1F500B39F5A67A4DC6CFBEAA7AD51221647B62BB8B36E48CA2579C51DC737E63D0BECA21DCDC53D139866BE47BD64272E033C2BDD358F0DA345827764CD2F328490D3351C9DF2449A2A59F8955FDB5561A72C0B6F8325C0D3AC61FE4DDA0A319706F8AE3BE4BDCA4F3E1F1D191238C493B872AA488E14087D7B16CFE26F0C0628A62B2047A982C4CB0E0FB612ACAB41F2EFD8D1774EB30472E550A45D00F794D1537FECE0C6DC82418A6DD4665CF6654DC38A56D1BB1B3112551E2448769524C81E2725B074F5A3ECA272BC944874DEA62AE4B0AA1E66584802E504A1B0F5952995ADA0BC9288D4541CA24084C8A060512FD480B66793A5C40A2427F5B20F8F01F1914A04554949FB451B992B683E4CBB202A50C0C6A8721F3B302248F38698728CFAF2B60EAB3F19DA12E9BA12E5BA1B275530622DD6512C8893B29A3CEF7045A886BBF4606413B4F1D8018034285C7D92C1C2C352988522804B7514FB7C4C1F1F356F765A9EA28A30DC244D87D15620199FEF0960F3B1A9255BA9A26AB7B67A33C9F5671E16CA448BC7576ED6D36D860A012711557068B3C0BD7F4BB053C37D53AC7182D13498AAAAAB51527EC6D7A8F88BB4BE2C057E8831F27E4989277EF119365BA5A0B8F318B82423C4B56DCBC2FBEBE52544B02F2BB587B1A32EC4896CF02E003EED99AACC2994B4DBD7415E180A442F3022F567AF1D328D8AEC3E65D8176A4DC3B17B1E43B6DAD6895032E41ACEE7547ADFD6C1A4F157ED984C4B8D234187303D0DFD25F663A5A5EEC8E53FBC334902A3B461312E524D350D46511EB6CC4C9A760D109AAC04D4ABC6A75573CDA1632A5806AC8CEAAD804A116FE3C4D152BF4B29457CD28A654BB3A54C9C854791180939D976440B22B2084B180300621B8421B5C601B5CA10D2EAC0D737120E6D091988B4331878EC55C1C8C397434E6E270CCA1E3417DF3A671A8CBDDB1E82FE134187D1DDCB27C0348D236D99E524BEBA8AFE65CFBA83B7FC869BAF032F79F9C6B8F153E2B37D0DA5F53E97D5D112BBFFE625E57AB93A3F1DAF65A505BE8953A5CE47D62D4579A43AAF1D595BB54E21A08C2D97113EE0E34DBEEB8A976079A67CB4C4E344222DDFA694259C9E69BD58B9B6D6A7FDACC8493ED46E9CD377252DB9226664B120099BBFAC8242F521336B9DF1DFDA6CA814463D65701AB779D198951FEFAF24B92D6721BD388B816DB9E5AF2AAA2B5EF55D31F5845ACFCFA4B7A65F996B19117966D316BBD2E39A572E3A2482BC4EC5948531435A188F62BD46E2D76F78569038221DB7F816FBD54F9854418E17B60E3C816398798912DAEC150E834443C1A7D0F805A6528E2DF7B7E1586547EC5E6B126D26DF74629905824F28F514D28DF900FC47C24323271541F95B4260F35B5D2E1AF828A199F5F11A4DC8E244E25F475289AB8DAD3D70FBFE535E1CCFD09C8DCBFE0A82F40D4538E7A0AA29E71D43310F5478EFA23883A0B53A5C9B30B107A97A707F21FF3F420472B0B2065E94F60F4AF79FAD730FA373CFD1B18FD5B9EFE2D8CFE1D4FFF0E46FF9EA77F0F949F63418084FC792D08A2080265D01184D0816A8120860E500E1D41101DA0243A82283A40597404617480D2E808E2E800E5D11104D2014AA42388A4039449579049172493FD3679FB36F95737EB2ECD9A75977B997512EADEAC3362D6091FF026C0EF7713E1D3DB04F8E52DCFDBC2208C81082702C2090CE18207B880D14F79FA298C7EC6D3CF60F4BDA1D91B9ABDA1D91B9ABDA1C9210832E942E745716204CAA42BC8A40B9449579049172893AE20932E48267B93FDC59AECC5C1F8FD8DF5FC203DDC4C57D0A906B8CAC1408FAD320B851AA70C48A7615461F36A142A7102633FAAD357A8B1EA4C08ECEEBD2AB7851A894A85404329335FE4E2F355C42F0FACD85FFAB2400CB8F0C9C9ECCA4C9D9A80C7C9AF023E4255B906984F508A240D4D48627B546DF94A7242C7D0EC2F2D54CC0D5C669A8895F3441F5FD0C71718FB68DB3CEED07323CD7DFC464E694A42E3CC4C136C289DDE6CD182A114FE2AE69E3F61003E65A23AAEB0D03BAF60E6C4491E59CF9FEC38B85009717EFC2315F7E24AF57715E757C4D831C17F59AF49285FD6DBA488F7E383EEF24748ADABE88BBF2201778BE72445EB23F2C0D1E21FC134F0117939E503D75EE83FA024CD13410CDD63B2C731097C2FC9A3338B70C2533E7CBB537CA13326F18568B51EF1E4F028458292242B264F85986143B6901E3A658F4FC6B735290F303B8598A527FCE2C5CB272F1613E7D4D0FA49794CA1F33978B2C1814148F2EB485BE7B8E0AEB3E974A4A859421D182C9F3D47A3CF422E9D7BBF05A373129AE600BAAECA220B9BEBA22A399D7545510E7EB7A4326CB9032D08AA88C1AAB902A12CBD572BF8D81EB86BB3E5AEC596CFAD0EFADCEAA8CFAD0EFBDCEAB80BC97535263C31D5AE068824F1EE0AFF4EB9C4521DDB2324E2D5C5B238992BE2EE3A962757F8971DEA93CB5638D333B998AEAD5CA0FFB2F6767F353782FBAD85F2A0B7F6312CE96C8E205B46DE97269CBBC206DAEE7CF8CF8CE67470F5CBAF05D9ABC14D8C6DB7D3C1F1E05F5091DF759DCBC0C6D5AEEB3C06462E63F6B4A79F954D2D17A3DD3A2AB93CC4AD838E4B844747FE9868B846E7026C674B02E28C32B8A9A2E372D87CF2A7C4ED2D7885AA83E4F4202132238B38EB2634AABDD576A991FA7BA6E7353163A8FC859B1B4A311AEC9065EAAD0C226FD96869DF1EB325EBD16B03387B20B0F5EC3501C4EAF63A405CAD7B4D083611AAE90572B1EF0269D71096075D1DBA1AE4BDFF68455DC51A903A4A2B967FDC7F4D6BDE2DE9568EB1790B0E8A7761186F6A186F6618EFA3613CAA9EA114700C076C6EA106E0D834E08969C0D7A601DF98067C6B1AF09D69C0F7A601EBB281C6108DEB8A635C591CE3DAE2185717C7B8BE38C615C631AE318E7195718CEB8C6B5867FAFDE23D4DDCCBAF6BE21ED0BEE5874FB3C6B96D23B7DB9749EAEB94193B8D2E636E08716C1CF1C434E28569C0A969C09969C0DE20EF0DF2DE20EF0DF226C4DE20EF0D727D44F3EB8B719D718DEB8C6B5C675CC33AD3BB4A5AAE922408B0AF3F2DBC08AEFEB48E4FC3D6E1D5F28AF85AD15D4EE16A9582D6F6278552D01D9160A5A035A4F5A5D765B6B251C09762EE70D643ABD2B2295C605BCDD44DD610A63E00E2200110F2D005F0C7FE3E26A2C3E901D5DBD8F7E490AA7BB2B3AAF654BD210CF0D0E57BB5975649F9DE8720F2E066845C173A1C1496748EAAD06BE0C4B1B92ABC65A3F6ACB74BD71265010F565EF79085741B8BA380B81EA86EAE5849917F996C19CFB2DA672D7E5C59DC3C28146BE97D84DF782EBF75355D415464E8C0A2B94A8ECF4DB53379D654095D8127754FC64CB3FA6E7BF15D05338DFABC8DE579557D9296325557EF6D2EDEAB605215FE6DE79257F095F1C8EF2838143581DBF1EBD2BE321EF55D051F9DCAC06D85819B595DB6B22A7C5D8149715D065F161B6E41CE8B070BC0F965196E5185B805962E282C80D337652CF6A946DCAD18B17CC05E66BD62696562C94AA35CAE59F28649C7481962310D015EEBF08862432FFF0BDBD1FE630D71863143B46456B9EA99ABF0212A575BAE45E523FC3E214A3D6C587A9338F51FBC658A6F2FB167E2878FC3C1CF5EB0253B33D8E85B5D8537DB74B34D7197D1FA3E60248D2CDA4DFCB35ACB6C9BCF6EB26092C4441770337D621BDF84175B3F5855EDFE20D92C5240106BA070A3C9BB4C893BFDF85C217DC67E6037A062F82A23E60EAD3701064B6EC285F705E9B40D4F209FD0A3B77CBE2DB249A841DA5F043BEC6733DF7B8CBD755260D4F4F84F2CC3ABF5EEFBFF01B516409A29C70000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201711110747120_InitialCreate11', N'LTMS.Models.Lotteries.LottieModels', 0x1F8B0800000000000400ED5D6D6FE3B811FE5EA0FFC1F0A7B6D88B2339FB16247770EC6C37B8CD26B07387FB76506C26114E965C49DE7350F497F5437F52FF4249BDF255D2D0A4377B1516583892E619929A216728CECC7FFFFD9FB31F76EB60F005C5891F85E743E7E8783840E1325AF9E1E3F9709B3E7CF76EF8C3F77FFED3D9E56ABD1BFC5C3E3726CF61CA30391F3EA5E9E674344A964F68ED25476B7F194749F4901E2DA3F5C85B4523F7F8F8FDC8714608430C31D6607036DF86A9BF46D91FF8CF69142ED126DD7AC175B44241525CC7771619EAE0B3B746C9C65BA2F3E1A7BBEBC551FED8D1A7284D51ECA364389804BE871BB340C1C370E08561947A296EEAE94F095AA471143E2E36F88217DC3D6F107EEEC10B125474E1B47EBC6B6F8E5DD29B514D58422DB7491AAD8180CEB8189E114FAE35C8C36AF8F0005EE2814E9F49AFB3413C1F4E1EF1FB7D1E0E7856A7D320268F2946F828A77B3520775F5592800586FC7B35986E83741BA3F3106DD3D80B5E0D6EB7F781BFFC113DDF45BFA1F03CDC0601DD30DC347C8FB9802FDDC6D106C5E9F31C3D30CDBD9A0D0723967AC49357C40265DEADAB301DBBC3C167DC10EF3E40950C5043B048A318FD1D8528F652B4BAF548DFF12BBC5AA16C148536483992DF254F2C7A589186836B6FF709858FE9D3F9F0F531569D0FFE0EADCA2B453B7E0A7DAC7798288DB7A8232B7FF95B780876784C562816C6B299E8F6290AD1E7EDFA1EC50D0D745C13C3B15AC528491AD8B8AF4D8CC3020BCA36018EC355324301C20255525D445180BC90A53B1BD5AADA4181A7D17AED27493647E8A9728DF015947A7AADA7D239DD6115BA9D638BD03CF90FE9DE20CE2F6E8930434B7FED05C3C16D8C7F152BF7BBE160B1F4089E16F8D81EB86BB3E5AEC596CFAD0EFADCEAA8CFAD0EFBDCEAB84F6344D4F5E21934CDE269CE7FF0C16405B319FEAFEA10FE7DE7AF5BDB492656C25187D6F0A290DE07F9DA045F0D7EF6D1EFC5C50AE5E02B42BDB042D704C5926C7155C839CEFC64D9606FE09F607B03F2B6F759FF19F283BF6AC2FA6A057FD125DDC15E73B66CF30C9B69765DA7DCE356A4AED36B2B5252CC0B806EAC3A4C4D98EAB3F7C57FCCC69AA327F308193DCC758E82EC89E4C9DFE4EEF95179F757460EF1B31FE2683D8F020A807BE4D73B2F7E44296E57D4FCDC22DAC6CB3DB42B03D552AC8CF2F0D36729ABE0D9532AE41A5AF519FB7A9D346A869265EC6FF2DD8D06B7D584B7C6F1FBF1C936C79B0D0AF3D53FE7D3C512980651825A899A748D5122B30A572A529BC2958AA9AB70F906C3BEC64B8E7270EDAB7747A0EAA7D857B1B8AAE51C895234E98255D3E536F034F61F0BC283BF5CC25467662DE90EF562759C906299035806EC761E80C4816D1D4609D4F42224D75806FC4DE0035B485E15791C4C345947DB303565A82DE0869A792F728E123C888B89968296C40757D29CB1CE0C5C5356C3FEE6C4AAA2E61C75D435A784DA17F2EDC7968D4FB7617530B1617F619BC1D43683996D061F6D33F874E33470181BE1D0D407331CC6D6399C58E7F0DA3A8737D639BCB5CEE19D750EEFAD73708EEDB3B0AFD58E7DB576ECEBB5635FB11DFB9AEDD8576DC7BE6E3BF695DBB1AFDDAE6DEDFEE37D19D3F04D2EF7F14D2EBF6DDFC4F22642936F02FD446CD059B1B41F3DA13EEF5BB2B127AE7D1663FB2C4EACB3B8B0CE616A9DC3CC3A87DE65EB5DB6DE65EB5DB6DE65EB5DB6DE65FB265C36CCE2006BB67DED76ED6BB76B5FBB5DDBDAFD7FECA1676E32DC37CFC80EEE9567D4E2777DE9B33F2528EEF8E8649B3E15E3D0E1E9AB24D9A2D54DB7872F771B3F4689F874FB4642D5D94378D5E5681DC483AF875BED77753CD905DCDFA8DFDD9E1B25D47B052175D64BF242E06A49A80EAE95004D238F925F9D1EBEF592E4F728D638C6634A9ABBEEC0D5DDDAF7A422500CEB213A306333BDD5D20C727A50371E963A7958C3F4E1B1AD1C5B5FF71F203C5616E66A804D1F500B39F5A67A4DC6CFBEAA7AD51221647B62BB8B36E48CA2579C51DC737E63D0BECA21DCDC53D139866BE47BD64272E033C2BDD358F0DA345827764CD2F328490D3351C9DF2449A2A59F8955FDB5561A72C0B6F8325C0D3AC61FE4DDA0A319706F8AE3BE4BDCA4F3E1F1D191238C493B872AA488E14087D7B16CFE26F0C0628A62B2047A982C4CB0E0FB612ACAB41F2EFD8D1774EB30472E550A45D00F794D1537FECE0C6DC82418A6DD4665CF6654DC38A56D1BB1B3112551E2448769524C81E2725B074F5A3ECA272BC944874DEA62AE4B0AA1E66584802E504A1B0F5952995ADA0BC9288D4541CA24084C8A060512FD480B66793A5C40A2427F5B20F8F01F1914A04554949FB451B992B683E4CBB202A50C0C6A8721F3B302248F38698728CFAF2B60EAB3F19DA12E9BA12E5BA1B275530622DD6512C8893B29A3CEF7045A886BBF4606413B4F1D8018034285C7D92C1C2C352988522804B7514FB7C4C1F1F356F765A9EA28A30DC244D87D15620199FEF0960F3B1A9255BA9A26AB7B67A33C9F5671E16CA448BC7576ED6D36D860A012711557068B3C0BD7F4BB053C37D53AC7182D13498AAAAAB51527EC6D7A8F88BB4BE2C057E8831F27E4989277EF119365BA5A0B8F318B82423C4B56DCBC2FBEBE52544B02F2BB587B1A32EC4896CF02E003EED99AACC2994B4DBD7415E180A442F3022F567AF1D328D8AEC3E65D8176A4DC3B17B1E43B6DAD6895032E41ACEE7547ADFD6C1A4F157ED984C4B8D234187303D0DFD25F663A5A5EEC8E53FBC334902A3B461312E524D350D46511EB6CC4C9A760D109AAC04D4ABC6A75573CDA1632A5806AC8CEAAD804A116FE3C4D152BF4B29457CD28A654BB3A54C9C854791180939D976440B22B2084B180300621B8421B5C601B5CA10D2EAC0D737120E6D091988B4331878EC55C1C8C397434E6E270CCA1E3417DF3A671A8CBDDB1E82FE134187D1DDCB27C0348D236D99E524BEBA8AFE65CFBA83B7FC869BAF032F79F9C6B8F153E2B37D0DA5F53E97D5D112BBFFE625E57AB93A3F1DAF65A505BE8953A5CE47D62D4579A43AAF1D595BB54E21A08C2D97113EE0E34DBEEB8A976079A67CB4C4E344222DDFA694259C9E69BD58B9B6D6A7FDACC8493ED46E9CD377252DB9226664B120099BBFAC8242F521336B9DF1DFDA6CA814463D65701AB779D198951FEFAF24B92D6721BD388B816DB9E5AF2AAA2B5EF55D31F5845ACFCFA4B7A65F996B19117966D316BBD2E39A572E3A2482BC4EC5948531435A188F62BD46E2D76F78569038221DB7F816FBD54F9854418E17B60E3C816398798912DAEC150E834443C1A7D0F805A6528E2DF7B7E1586547EC5E6B126D26DF74629905824F28F514D28DF900FC47C24323271541F95B4260F35B5D2E1AF828A199F5F11A4DC8E244E25F475289AB8DAD3D70FBFE535E1CCFD09C8DCBFE0A82F40D4538E7A0AA29E71D43310F5478EFA23883A0B53A5C9B30B107A97A707F21FF3F420472B0B2065E94F60F4AF79FAD730FA373CFD1B18FD5B9EFE2D8CFE1D4FFF0E46FF9EA77F0F949F63418084FC792D08A2080265D01184D0816A8120860E500E1D41101DA0243A82283A40597404617480D2E808E2E800E5D11104D2014AA42388A4039449579049172493FD3679FB36F95737EB2ECD9A75977B997512EADEAC3362D6091FF026C0EF7713E1D3DB04F8E52DCFDBC2208C81082702C2090CE18207B880D14F79FA298C7EC6D3CF60F4BDA1D91B9ABDA1D91B9ABDA1C9210832E942E745716204CAA42BC8A40B9449579049172893AE20932E48267B93FDC59AECC5C1F8FD8DF5FC203DDC4C57D0A906B8CAC1408FAD320B851AA70C48A7615461F36A142A7102633FAAD357A8B1EA4C08ECEEBD2AB7851A894A85404329335FE4E2F355C42F0FACD85FFAB2400CB8F0C9C9ECCA4C9D9A80C7C9AF023E4255B906984F508A240D4D48627B546DF94A7242C7D0EC2F2D54CC0D5C669A8895F3441F5FD0C71718FB68DB3CEED07323CD7DFC464E694A42E3CC4C136C289DDE6CD182A114FE2AE69E3F61003E65A23AAEB0D03BAF60E6C4491E59CF9FEC38B85009717EFC2315F7E24AF57715E757C4D831C17F59AF49285FD6DBA488F7E383EEF24748ADABE88BBF2201778BE72445EB23F2C0D1E21FC134F0117939E503D75EE83FA024CD13410CDD63B2C731097C2FC9A3338B70C2533E7CBB537CA13326F18568B51EF1E4F028458292242B264F85986143B6901E3A658F4FC6B735290F303B8598A527FCE2C5CB272F1613E7D4D0FA49794CA1F33978B2C1814148F2EB485BE7B8E0AEB3E974A4A859421D182C9F3D47A3CF422E9D7BBF05A373129AE600BAAECA220B9BEBA22A399D7545510E7EB7A4326CB9032D08AA88C1AAB902A12CBD572BF8D81EB86BB3E5AEC596CFAD0EFADCEAA8CFAD0EFBDCEAB80BC97535263C31D5AE068824F1EE0AFF4EB9C4521DDB2324E2D5C5B238992BE2EE3A962757F8971DEA93CB5638D333B998AEAD5CA0FFB2F6767F353782FBAD85F2A0B7F6312CE96C8E205B46DE97269CBBC206DAEE7CF8CF8CE67470F5CBAF05D9ABC14D8C6DB7D3C1F1E05F5091DF759DCBC0C6D5AEEB3C06462E63F6B4A79F954D2D17A3DD3A2AB93CC4AD838E4B844747FE9868B846E7026C674B02E28C32B8A9A2E372D87CF2A7C4ED2D7885AA83E4F4202132238B38EB2634AABDD576A991FA7BA6E7353163A8FC859B1B4A311AEC9065EAAD0C226FD96869DF1EB325EBD16B03387B20B0F5EC3501C4EAF63A405CAD7B4D083611AAE90572B1EF0269D71096075D1DBA1AE4BDFF68455DC51A903A4A2B967FDC7F4D6BDE2DE9568EB1790B0E8A7761186F6A186F6618EFA3613CAA9EA114700C076C6EA106E0D834E08969C0D7A601DF98067C6B1AF09D69C0F7A601EBB281C6108DEB8A635C591CE3DAE2185717C7B8BE38C615C631AE318E7195718CEB8C6B5867FAFDE23D4DDCCBAF6BE21ED0BEE5874FB3C6B96D23B7DB9749EAEB94193B8D2E636E08716C1CF1C434E28569C0A969C09969C0DE20EF0DF2DE20EF0DF226C4DE20EF0D727D44F3EB8B719D718DEB8C6B5C675CC33AD3BB4A5AAE922408B0AF3F2DBC08AEFEB48E4FC3D6E1D5F28AF85AD15D4EE16A9582D6F6278552D01D9160A5A035A4F5A5D765B6B251C09762EE70D643ABD2B2295C605BCDD44DD610A63E00E2200110F2D005F0C7FE3E26A2C3E901D5DBD8F7E490AA7BB2B3AAF654BD210CF0D0E57BB5975649F9DE8720F2E066845C173A1C1496748EAAD06BE0C4B1B92ABC65A3F6ACB74BD71265010F565EF79085741B8BA380B81EA86EAE5849917F996C19CFB2DA672D7E5C59DC3C28146BE97D84DF782EBF75355D415464E8C0A2B94A8ECF4DB53379D654095D8127754FC64CB3FA6E7BF15D05338DFABC8DE579557D9296325557EF6D2EDEAB605215FE6DE79257F095F1C8EF2838143581DBF1EBD2BE321EF55D051F9DCAC06D85819B595DB6B22A7C5D8149715D065F161B6E41CE8B070BC0F965196E5185B805962E282C80D337652CF6A946DCAD18B17CC05E66BD62696562C94AA35CAE59F28649C7481962310D015EEBF08862432FFF0BDBD1FE630D71863143B46456B9EA99ABF0212A575BAE45E523FC3E214A3D6C587A9338F51FBC658A6F2FB167E2878FC3C1CF5EB0253B33D8E85B5D8537DB74B34D7197D1FA3E60248D2CDA4DFCB35ACB6C9BCF6EB26092C4441770337D621BDF84175B3F5855EDFE20D92C5240106BA070A3C9BB4C893BFDF85C217DC67E6037A062F82A23E60EAD3701064B6EC285F705E9B40D4F209FD0A3B77CBE2DB249A841DA5F043BEC6733DF7B8CBD755260D4F4F84F2CC3ABF5EEFBFF01B516409A29C70000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Agencies] ON 

INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (1, N'ខែត សុធា', N'សុធា', N'1', N'017751155', NULL, 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (2, N'ចន ដារា', N'ចន ដារា', N'1', N'២៣១២៣', NULL, 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (3, N'តា សុបិន្ត', N'តា សុបិន្ត', N'1', N'១១២៣', NULL, 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (4, N'hsdf', N'dsf', N'1', N'sdf', NULL, 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (5, N'Edit', N'asdas', N'1', N'asdasd', N'', 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (6, N'adasd', N'asdas', N'1', N'asdasd', NULL, 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (8, N'dfds', N'sdf', N'1', N'sdf', NULL, 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (9, N'rrr', N'rr', N'1', N'rrr', NULL, 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (10, N'xxxx', N'ww', N'1', N'ww', N'', 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (11, N'យាណា', N'នា', N'1', N'12345678', N'', 1, NULL)
INSERT [dbo].[Agencies] ([AgencyID], [AgencyName], [AgencyNickname], [GenderID], [PhoneNumber], [Address], [StatusID], [IsDeleted]) VALUES (7, N'www', N'ww', N'1', N'ww', N'1', 1, NULL)
SET IDENTITY_INSERT [dbo].[Agencies] OFF
SET IDENTITY_INSERT [dbo].[AgencyCommissions] ON 

INSERT [dbo].[AgencyCommissions] ([AgCMID], [AgencyID], [ShiftID], [S1X2], [S1X3], [S2X2], [S2X3], [RS1X2], [RS1X3], [RS2X2], [RS2X3], [CreatedBy], [ModifiedBy], [CreatedDate], [ModefiedDate], [IsDeleted]) VALUES (1, 1, 1, CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(700 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(700 AS Decimal(18, 0)), NULL, 3, NULL, CAST(N'2018-03-05 15:24:59.200' AS DateTime), 0)
INSERT [dbo].[AgencyCommissions] ([AgCMID], [AgencyID], [ShiftID], [S1X2], [S1X3], [S2X2], [S2X3], [RS1X2], [RS1X3], [RS2X2], [RS2X3], [CreatedBy], [ModifiedBy], [CreatedDate], [ModefiedDate], [IsDeleted]) VALUES (2, 1, 1, CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(700 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(700 AS Decimal(18, 0)), 6, 3, CAST(N'2017-07-28 13:40:25.677' AS DateTime), CAST(N'2018-03-05 15:24:59.200' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[AgencyCommissions] OFF
SET IDENTITY_INSERT [dbo].[tblClientCreditTrans] ON 

INSERT [dbo].[tblClientCreditTrans] ([TranID], [TranDate], [AgencyID], [TranAmunt], [TranType], [Status]) VALUES (1, CAST(N'2017-11-12 00:00:00.000' AS DateTime), 1, CAST(2000000 AS Decimal(18, 0)), 2, 0)
INSERT [dbo].[tblClientCreditTrans] ([TranID], [TranDate], [AgencyID], [TranAmunt], [TranType], [Status]) VALUES (2, CAST(N'2017-12-05 00:00:00.000' AS DateTime), 0, CAST(40000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[tblClientCreditTrans] ([TranID], [TranDate], [AgencyID], [TranAmunt], [TranType], [Status]) VALUES (3, CAST(N'2017-12-05 00:00:00.000' AS DateTime), 1, CAST(40000 AS Decimal(18, 0)), 2, 1)
SET IDENTITY_INSERT [dbo].[tblClientCreditTrans] OFF
SET IDENTITY_INSERT [dbo].[tblCollections] ON 

INSERT [dbo].[tblCollections] ([CoID], [ColleionDate], [AgencyID], [CollectAmount], [Statud]) VALUES (1, CAST(N'2017-10-25 00:00:00.000' AS DateTime), CAST(1 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[tblCollections] OFF
SET IDENTITY_INSERT [dbo].[tblCustomers] ON 

INSERT [dbo].[tblCustomers] ([CustomerID], [CustomerName], [Gender], [PhoneNumber], [Address]) VALUES (1, N'Client 001', N'M', N'123', N'PP')
SET IDENTITY_INSERT [dbo].[tblCustomers] OFF
SET IDENTITY_INSERT [dbo].[tblGenders] ON 

INSERT [dbo].[tblGenders] ([GenderID], [GenderDesc]) VALUES (1, N'ប្រុស')
INSERT [dbo].[tblGenders] ([GenderID], [GenderDesc]) VALUES (2, N'ស្រី')
SET IDENTITY_INSERT [dbo].[tblGenders] OFF
SET IDENTITY_INSERT [dbo].[tblPlayDetails] ON 

INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (1, 1, N'A', N'11        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (2, 1, N'B', N'11        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (3, 1, N'C', N'11        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (4, 1, N'D', N'11        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (5, 2, N'A', N'33        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (6, 2, N'B', N'33        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (7, 2, N'C', N'33        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (8, 2, N'D', N'33        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (9, 3, N'A', N'88        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (10, 3, N'B', N'88        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (11, 3, N'C', N'88        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (12, 3, N'D', N'88        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (13, 4, N'A', N'99        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (14, 4, N'B', N'99        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (15, 4, N'C', N'99        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (16, 4, N'D', N'99        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (17, 5, N'A', N'77        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (18, 5, N'B', N'77        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (19, 5, N'C', N'77        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (20, 5, N'D', N'77        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (21, 6, N'A', N'55        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (22, 6, N'B', N'55        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (23, 6, N'C', N'55        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (24, 6, N'D', N'55        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (25, 7, N'A', N'22        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (26, 7, N'B', N'22        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (27, 7, N'C', N'22        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (28, 7, N'D', N'22        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (29, 8, N'A', N'44        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (30, 8, N'B', N'44        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (31, 8, N'C', N'44        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (32, 8, N'D', N'44        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (33, 9, N'A', N'66        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (34, 9, N'B', N'66        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (35, 9, N'C', N'66        ', 11, 1)
INSERT [dbo].[tblPlayDetails] ([PlayDID], [PlayID], [Post], [Number], [PlayAmount], [StatusID]) VALUES (36, 9, N'D', N'66        ', 11, 1)
SET IDENTITY_INSERT [dbo].[tblPlayDetails] OFF
SET IDENTITY_INSERT [dbo].[tblPlays] ON 

INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (1, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'11        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (2, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'33        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (3, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'88        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (4, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'99        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (5, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'77        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (6, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'55        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (7, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'22        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (8, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'44        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
INSERT [dbo].[tblPlays] ([PlayID], [PlayHDID], [PlayDate], [Shift], [Session], [CustomerID], [CreaterID], [Post], [PostMultiplier], [PlayTypeMultiplier], [Number], [Number1], [NumIncrease], [PlayType], [PlayAmount], [TotalAmount], [HCommission], [HRepay], [Status], [NumIncreaseDig]) VALUES (9, NULL, CAST(N'2018-03-27' AS Date), N'1', 1, 2, 3, N'ABCD', 4, 1, N'66        ', N'          ', 1, 1, 11, 44, 0, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[tblPlays] OFF
INSERT [dbo].[tblShifts] ([ShiftId], [ShiftDescription], [ShiftDescriptionKh], [OpenTime], [CloseTime]) VALUES (1, N'Afternoon', N'ល្ងាច', CAST(N'07:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[tblShifts] ([ShiftId], [ShiftDescription], [ShiftDescriptionKh], [OpenTime], [CloseTime]) VALUES (2, N'Evening', N'យប់', CAST(N'07:00:00' AS Time), CAST(N'23:30:00' AS Time))
SET IDENTITY_INSERT [dbo].[tblStatus] ON 

INSERT [dbo].[tblStatus] ([StatusID], [StatusDisc]) VALUES (1, N'ប្រើ')
INSERT [dbo].[tblStatus] ([StatusID], [StatusDisc]) VALUES (2, N'មិនប្រើ')
SET IDENTITY_INSERT [dbo].[tblStatus] OFF
INSERT [dbo].[TempRoupDailyPlay] ([PlayDate], [SRAmount], [Collected], [SRepay], [Banlance]) VALUES (CAST(N'2017-10-19' AS Date), 490, CAST(0 AS Decimal(38, 0)), 420000, -419510)
INSERT [dbo].[TempRoupDailyPlay] ([PlayDate], [SRAmount], [Collected], [SRepay], [Banlance]) VALUES (CAST(N'2017-10-20' AS Date), 490, CAST(0 AS Decimal(38, 0)), 0, 490)
INSERT [dbo].[TempRoupDailyPlay] ([PlayDate], [SRAmount], [Collected], [SRepay], [Banlance]) VALUES (CAST(N'2017-11-10' AS Date), 350, CAST(0 AS Decimal(38, 0)), 0, 350)
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [Name]) VALUES (1, N'admin', N'123', N'Akhil Mittal')
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [Name]) VALUES (2, N'api', N'api', N'API User')
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [Name]) VALUES (3, N'017751155', N'123', N'Jack kh')
ALTER TABLE [dbo].[_tblAgencies] ADD  CONSTRAINT [DF_Table_1_Gender]  DEFAULT ('M') FOR [GenderID]
GO
ALTER TABLE [dbo].[_tblAgencies] ADD  CONSTRAINT [DF_tblAgencies_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [dbo].[_tblAgencies] ADD  CONSTRAINT [DF_tblAgencies_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblAgencyTran] ADD  CONSTRAINT [DF_tblAgencyTran_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblAgencyTran] ADD  CONSTRAINT [DF_tblAgencyTran_IsDeleted]  DEFAULT ('False') FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblClientTrans] ADD  CONSTRAINT [DF_tblClientPayments_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblPayments] ADD  CONSTRAINT [DF_tblPayments_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblPlayHeaders] ADD  DEFAULT ((1)) FOR [Session]
GO
ALTER TABLE [dbo].[tblPlayHeaders] ADD  DEFAULT ((1)) FOR [PlayTypeMultiplier]
GO
ALTER TABLE [dbo].[tblPlayHeaders] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblPlayHeaders] ADD  DEFAULT ((1)) FOR [NumIncreaseDig]
GO
ALTER TABLE [dbo].[tblTranPlays] ADD  CONSTRAINT [DF_tblTranPlays_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [dbo].[tblTranRepays] ADD  CONSTRAINT [DF_tblTranRepays_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
/****** Object:  StoredProcedure [dbo].[Alternate_Test_WithCount]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Alternate_Test_WithCount]
  @PageNumber INT = 1,
  @PageSize   INT = 2
AS
BEGIN
  SET NOCOUNT ON;
 
  ;WITH pg AS
  (
    SELECT PlayID, c = COUNT(*) OVER()
      FROM dbo.tblPlays
      ORDER BY PlayID
      OFFSET @PageSize * (@PageNumber - 1) ROWS
      FETCH NEXT @PageSize ROWS ONLY
  )

  SELECT c.PlayID ,
         c.PlayDate ,
         c.Shift ,
         c.Session ,
         c.CustomerID ,
         c.CreaterID ,
         c.Post ,
         c.PostMultiplier ,
         c.PlayTypeMultiplier ,
         c.Number ,
         c.Number1 ,
         c.NumIncrease ,
         c.PlayType ,
         c.PlayAmount ,
         c.TotalAmount ,
         c.Status
  FROM dbo.tblPlays AS c
  INNER JOIN pg ON pg.PlayID = c.PlayID
  ORDER BY c.PlayID OPTION (RECOMPILE);
END



GO
/****** Object:  StoredProcedure [dbo].[sp_AddPlayDetail]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_AddPlayDetail]
@PlayID  INT=0,
@Post  nchar(1),
@Number  nchar(10),
@PlayAmount  float
AS 
INSERT INTO dbo.tblPlayDetails
        ( PlayID,Post, Number, PlayAmount )
VALUES   ( @PlayID,@Post, @Number, @PlayAmount )
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CancelPlay]
@PlayID INT
AS 
UPDATE dbo.tblPlays SET	Status=0 WHERE PlayID=@PlayID;

--SELECT *,CONVERT(VARCHAR(10), PlayDate, 121),CONVERT(VARCHAR(10), '2017-02-21', 110) FROM dbo.tblPlays
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelPlayP]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CancelPlayP]
@Post NVARCHAR(10)
,@PlayDate DATE
,@Shift INT 
,@Session INT
,@CustomerID INT
AS 
UPDATE dbo.tblPlays SET	Status=0 
WHERE
Post=@Post 
AND PlayDate=@PlayDate
AND Shift=@Shift
AND Session=@Session
AND CustomerID=@CustomerID
--AND PlayDate=@CustomerID
--,@PlayDate DATE
--,@Shift INT 
--,@Session INT
--,@CustomerID INT
--,@Status INT=1

--SELECT *,CONVERT(VARCHAR(10), PlayDate, 121),CONVERT(VARCHAR(10), '2017-02-21', 110) FROM dbo.tblPlays

GO
/****** Object:  StoredProcedure [dbo].[sp_CancelPlayPD]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CancelPlayPD]
@PlayID INT=0
AS 
UPDATE dbo.tblPlays SET	Status=0 
WHERE
PlayID=@PlayID


GO
/****** Object:  StoredProcedure [dbo].[sp_checkShift]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_checkShift]
    @ShiftId INT ,
    @ClientDate NVARCHAR(19)
AS --SELECT LEN(GETDATE())
    DECLARE @CurrentDateS DATETIME= GETDATE();
--DECLARE @ClientDate DATETIME= GETDATE();
    DECLARE @SOPenTime NVARCHAR(20) = FORMAT(GETDATE(), 'yyyy-MM-dd');
--DECLARE @SCCloseTime DATETIME= GETDATE();
	
--SET @SOPenTime = FORMAT(GETDATE(),'yyyy-MM-dd')

    SELECT TOP 1
            ShiftId ,
            ShiftDescription ,
            ShiftDescriptionKh ,
            CurrentDateS = @CurrentDateS ,
            ClientDate = @ClientDate ,
            SOPenTime = ( @SOPenTime + ' ' + CAST(OpenTime AS NVARCHAR(8)) ) ,
            SCCloseTime = ( @SOPenTime + ' ' + CAST(CloseTime AS NVARCHAR(8)) ) ,
            OpenTime ,
            CloseTime
    FROM    tblShifts
    WHERE   ShiftId = @ShiftId
            --AND CAST(@ClientDate AS DATETIME) >= ( CAST(( @SOPenTime + ' '
            --                                              + CAST(OpenTime AS NVARCHAR(8)) ) AS DATETIME) )
            --AND CAST(@ClientDate AS DATETIME) <= ( CAST(( @SOPenTime + ' '
            --                                              + CAST(CloseTime AS NVARCHAR(8)) ) AS DATETIME) );
GO
/****** Object:  StoredProcedure [dbo].[sp_DeletAgencyByID]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeletAgencyByID]
	@AgencyID int
	,@ActUser INT
AS	
DECLARE @CustomerID INT=0;
SELECT @CustomerID = CustomerID FROM dbo.tblPlays WHERE  CustomerID=@AgencyID
--IF EXISTS (SELECT  COUNT(*) FROM tblResultSA WHERE ResultDate=@ResultDate)
IF(@CustomerID>0)
BEGIN
	   --SELECT TableID FROM Table WHERE FieldValue=''
		--AND ResultDate=@ResultDate
		  RAISERROR ('This record is used. Cannot delete this record', -- Message text.
               16, -- Severity.
               -1 -- State.
          );
END	
ELSE
BEGIN
  DELETE FROM dbo.AgencyCommissions WHERE AgencyID=@AgencyID;
  DELETE FROM dbo.Agencies WHERE AgencyID=@AgencyID;
  RETURN 1;
END


GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAgency]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteAgency]
	@AgencyID int
	,@ActUser INT
AS	
DECLARE @CustomerID INT=0;
SELECT @CustomerID = CustomerID FROM dbo.tblPlays WHERE  CustomerID=@AgencyID
--IF EXISTS (SELECT  COUNT(*) FROM tblResultSA WHERE ResultDate=@ResultDate)
IF(@CustomerID>0)
BEGIN
	   --SELECT TableID FROM Table WHERE FieldValue=''
		--AND ResultDate=@ResultDate
		  RAISERROR ('Cannot delete this record', -- Message text.
               16, -- Severity.
               -1 -- State.
          );
END	
ELSE
BEGIN
  RETURN 1;
END


GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteClientCreditTran]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteClientCreditTran]
    @TranID INT = 0 
    ,@ActUser INT=1
AS
    UPDATE dbo.tblClientCreditTrans SET Status=0
	WHERE TranID=@TranID
	RETURN @@ROWCOUNT;

GO
/****** Object:  StoredProcedure [dbo].[sp_Doc_Detail]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Doc_Detail]
    @CustomerID INT = -1 ,
    @FDate DATE = NULL ,
    @TDate DATE = NULL
AS --DECLARE @CustomerID INT ,
--    @FDate DATE ,
--    @TDate DATE;

--SET @CustomerID = 1;
--SET @FDate = '2017-09-09';
--SET @TDate = '2017-11-30';

    DECLARE @TempRoupDailyPlay1 TABLE
        (
          PlayDate DATE NULL ,
          SRAmount FLOAT NULL ,
          Collected DECIMAL(38, 0) NOT NULL ,
          AgBorrow DECIMAL(38, 0) NOT NULL ,
          SRepay FLOAT NULL ,
          Banlance AS ( SRAmount + AgBorrow ) - (Collected  + SRepay )
        );

    DECLARE @TempRoupDailyPlay2 TABLE
        (
          PlayDate DATE NULL ,
          SRAmount FLOAT NULL ,
          Collected DECIMAL(38, 0) NOT NULL ,
          AgBorrow DECIMAL(38, 0) NOT NULL ,
          SRepay FLOAT NULL ,
          Banlance FLOAT NULL
        );

    DECLARE @TempRoupDailyPlay3 TABLE
        (
          PlayDate DATE NULL ,
          SRAmount DECIMAL(38, 0) ,
          Collected DECIMAL(38, 0) NOT NULL ,
          AgBorrow DECIMAL(38, 0) NOT NULL ,
          SRepay FLOAT NULL ,
          Banlance AS ( SRAmount + AgBorrow ) - ( Collected  )
        );

    IF ( @CustomerID <= 0 )
        BEGIN
            INSERT  INTO @TempRoupDailyPlay1
                    ( PlayDate ,
                      SRAmount ,
                      Collected ,
                      AgBorrow ,
                      SRepay
                    )
                    SELECT  vp.PlayDate ,
                            SUM(vp.RAmount) SRAmount ,
                            Collected = ISNULL(( SELECT SUM(c.CollectAmount)
                                                 FROM   dbo.tblCollections c
                                                 WHERE  c.ColleionDate = vp.PlayDate
                                                        AND c.AgencyID = vp.AgencyID
                                                 GROUP BY c.AgencyID ,
                                                        c.ColleionDate
                                               ), 0) ,
                            AgBorrow = 0 ,
                            SUM(vp.Repay) SRepay 
                       -- SUM(vp.Balance) Banlance
                    FROM    v_GRoupDailyPlay vp
                    WHERE   vp.PlayDate >= @FDate
                            AND vp.PlayDate <= @TDate
                    GROUP BY PlayDate ,
                            vp.AgencyID;

            INSERT  INTO @TempRoupDailyPlay1
                    ( PlayDate ,
                      SRAmount ,
                      Collected ,
                      AgBorrow ,
                      SRepay
                    )
                    SELECT  ct.TranDate ,
                            0 ,
                            ( CASE WHEN ct.TranType = 1
                                   THEN ISNULL(ct.TranAmunt, 0)
                                   ELSE 0
                              END ) ,
                            AgBorrow = ( CASE WHEN ct.TranType = 2
                                              THEN ISNULL(ct.TranAmunt, 0)
                                              ELSE 0
                                         END ) ,
                            SRepay = 0
                    FROM    dbo.tblClientCreditTrans ct
                    WHERE   ( CAST(ct.TranDate AS DATE) >= @FDate
                              AND CAST(ct.TranDate AS DATE) <= @TDate
                            ); 

        END;
    ELSE
        BEGIN
            BEGIN
                INSERT  INTO @TempRoupDailyPlay1
                        ( PlayDate ,
                          SRAmount ,
                          Collected ,
                          AgBorrow ,
                          SRepay
                        )
                        SELECT  vp.PlayDate ,
                                SUM(vp.RAmount) SRAmount ,
                                Collected = ISNULL(( SELECT SUM(c.CollectAmount)
                                                     FROM   dbo.tblCollections c
                                                     WHERE  c.ColleionDate = vp.PlayDate
                                                            AND c.AgencyID = vp.AgencyID
                                                     GROUP BY c.AgencyID ,
                                                            c.ColleionDate
                                                   ), 0) ,
                                AgBorrow = 0 ,
                                SUM(vp.Repay) SRepay --,
                            --SUM(vp.Balance) Banlance
                        FROM    v_GRoupDailyPlay vp
                        WHERE   vp.AgencyID = @CustomerID
                                AND ( vp.PlayDate >= @FDate
                                      AND vp.PlayDate <= @TDate
                                    )
                        GROUP BY PlayDate ,
                                vp.AgencyID;

                INSERT  INTO @TempRoupDailyPlay1
                        ( PlayDate ,
                          SRAmount ,
                          Collected ,
                          AgBorrow ,
                          SRepay
                        )
                        SELECT  ct.TranDate ,
                                0 ,
                                ( CASE WHEN ct.TranType = 1
                                       THEN ISNULL(ct.TranAmunt, 0)
                                       ELSE 0
                                  END ) ,
                                AgBorrow = ( CASE WHEN ct.TranType = 2
                                                  THEN ISNULL(ct.TranAmunt, 0)
                                                  ELSE 0
                                             END ) ,
                                SRepay = 0 --,
                            --Banlance = 0
                        FROM    dbo.tblClientCreditTrans ct
                        WHERE   ct.AgencyID = @CustomerID
                                AND ( CAST(ct.TranDate AS DATE) >= @FDate
                                      AND CAST(ct.TranDate AS DATE) <= @TDate
                                    );
           
            END;
        END;
    INSERT  INTO @TempRoupDailyPlay3
            ( PlayDate ,
              SRAmount ,
              Collected ,
              AgBorrow ,
              SRepay
            )
            SELECT  dp1.PlayDate ,
                    SRAmount = SUM(dp1.SRAmount - dp1.SRepay) ,
                    Collected = SUM(dp1.Collected) ,
                    AgBorrow = SUM(dp1.AgBorrow) ,
                    SRepay = SUM(dp1.SRepay)
            FROM    @TempRoupDailyPlay1 dp1
            GROUP BY dp1.PlayDate;
	
	    SELECT  tp3.PlayDate ,
            tp3.SRAmount ,
            tp3.Collected ,
            tp3.AgBorrow ,
            tp3.SRepay,
			OldBanlance = ( SELECT SUM(t.Banlance) FROM @TempRoupDailyPlay3 t WHERE t.PlayDate<tp3.PlayDate),
			Banlance = ( SELECT SUM(t.Banlance) FROM @TempRoupDailyPlay3 t WHERE t.PlayDate<=tp3.PlayDate)
    FROM    @TempRoupDailyPlay3 tp3 
--GROUP BY tp3.PlayDate 
GO
/****** Object:  StoredProcedure [dbo].[sp_doDetelePayment]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_doDetelePayment]
@TranID INT
AS 
UPDATE dbo.tblClientCreditTrans SET Status=0
WHERE TranID=@TranID
GO
/****** Object:  StoredProcedure [dbo].[sp_doEditPayment]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_doEditPayment]
    @TranID INT ,
    @TranDate DATETIME ,
    @AgencyID INT=0 ,
    @TranAmunt DECIMAL(8, 0) ,
    @TranType INT = 0 ,
    @ActUser INT = 1
AS
    IF ( @AgencyID >= 0 )
        BEGIN
            --INSERT  INTO tblClientCreditTrans
       --             ( TranDate ,
       --               AgencyID ,
       --               TranAmunt ,
       --               TranType 
       --             )
       --     VALUES  ( @TranDate ,
       --               @AgencyID ,
					  --TranAmunt
       --               @TranAmunt ,
       --               @TranType  
       --             );

            UPDATE  dbo.tblClientCreditTrans
            SET     TranDate = @TranDate ,
                    TranAmunt = @TranAmunt
            WHERE   TranID = @TranID;
            RETURN SCOPE_IDENTITY();
        END;


GO
/****** Object:  StoredProcedure [dbo].[sp_doPayment]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_doPayment]
	@TranDate  DATETIME
    ,@AgencyID  INT
	,@TranAmunt DECIMAL(8,0)
    ,@TranType  INT=1
	,@ActUser INT=1
AS	

IF(@AgencyID >= 0)
BEGIN
	INSERT INTO tblClientCreditTrans
        ( TranDate ,
          AgencyID ,
          TranAmunt ,
          TranType 
        )
	VALUES  ( 
		@TranDate 
		,@AgencyID  
		,@TranAmunt
		,@TranType  
        )
		
  RETURN SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[sp_EditClientCreditTran]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EditClientCreditTran]
    @TranID INT = 0 
	,@TranDate NVARCHAR(19)
	,@TranAmunt DECIMAL(18,2)
    ,@ActUser INT=1
AS
    UPDATE dbo.tblClientCreditTrans SET TranDate=@TranDate, TranAmunt=@TranAmunt
	WHERE TranID=@TranID
	RETURN @@ROWCOUNT;

GO
/****** Object:  StoredProcedure [dbo].[sp_findClientCreditTran]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_findClientCreditTran]
    @TranID INT = 0 
AS
	
		SELECT  CT.TranID ,
				CT.TranDate ,
				CT.AgencyID ,
				CT.TranAmunt ,
				CollectAmount = ( CASE WHEN CT.TranType = 1
										THEN CAST(CT.TranAmunt AS NVARCHAR)
										ELSE ''
									END ) ,
				RepayAmount = ( CASE WHEN CT.TranType = 2
										THEN CAST(CT.TranAmunt AS NVARCHAR)
										ELSE ''
								END ) ,
				CT.TranType ,
				CT.Status
		FROM    tblClientCreditTrans CT
		WHERE   CT.Status = 1
				AND ct.TranID=@TranID


GO
/****** Object:  StoredProcedure [dbo].[sp_FinWinNumber]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[sp_FinWinNumber]
    @ResultDate NVARCHAR(10) = '2017-09-13' ,
    @isWin INT = 1 ,
    @RShift INT = 1
AS --SELECT ResultDate=GETDATE() ,PlayShift=1 , Agency='Mr.ABC' ,PlayNumber='001',PlayAmount= 9121.00

--DECLARE  @ResultDate NVARCHAR(10) = '2017-07-25' ,
--    @isWin INT = 1 ,
--    @RShift INT = 1

    IF ( @RShift = 1 )
        BEGIN
            DECLARE @TempTableVariable TABLE
                (
                  POST NVARCHAR(10) ,
                  Number2 NVARCHAR(2) ,
                  Number3 NVARCHAR(10)
                );


            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'A' ,
                            Number2 = A2 ,
                            Number3 = LO1
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'B' ,
                            Number2 = A2 ,
                            Number3 = LO17
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'C' ,
                            Number2 = A2 ,
                            Number3 = LO18
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'D' ,
                            Number2 = A2 ,
                            Number3 = LO19
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'H' ,
                            Number2 = A2 ,
                            Number3 = LO20
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

--SELECT * FROM @TempTableVariable

            SELECT  PD.PlayDID ,
                    AG.AgencyName ,
                    PD.PlayID ,
                    PD.Post ,
                    PD.Number ,
                    RNumber2 = ( SELECT TR.Number2
                                 FROM   @TempTableVariable TR
                                 WHERE  PD.Post = TR.POST
                               ) ,
                    RNumber3 = ( SELECT TR.Number3
                                 FROM   @TempTableVariable TR
                                 WHERE  PD.Post = TR.POST
                               ) ,
                    Win = ( CASE WHEN ( PD.Number = ( SELECT  TR.Number2
                                                      FROM    @TempTableVariable TR
                                                      WHERE   PD.Post = TR.POST
                                                    )
                                        OR PD.Number = ( SELECT
                                                              TR.Number3
                                                         FROM @TempTableVariable TR
                                                         WHERE
                                                              PD.Post = TR.POST
                                                       )
                                      ) THEN 1
                                 ELSE 0
                            END ) ,
                    PD.PlayAmount ,
                    P.HCommission ,
                    P.HRepay
            FROM    dbo.tblPlayDetails PD
                    INNER JOIN dbo.tblPlays P ON P.PlayID = PD.PlayID
                    INNER JOIN dbo.Agencies AG ON AG.AgencyID = P.CustomerID
            WHERE   ( CASE WHEN ( PD.Number = ( SELECT  TR.Number2
                                                FROM    @TempTableVariable TR
                                                WHERE   PD.Post = TR.POST
                                              )
                                  OR PD.Number = ( SELECT   TR.Number3
                                                   FROM     @TempTableVariable TR
                                                   WHERE    PD.Post = TR.POST
                                                 )
                                ) THEN 1
                           ELSE 0
                      END ) = @isWin
                    AND P.Shift = @RShift
                    AND P.PlayDate = @ResultDate;
        END;
    ELSE
        IF ( @RShift = 2 )
            BEGIN
                DECLARE @TempTableVariable1 TABLE
                    (
                      POST NVARCHAR(10) ,
                      Number2 NVARCHAR(2) ,
                      Number3 NVARCHAR(10)
                    );


                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'A1' ,
                                Number2 = A1X2 ,
                                Number3 = LO1
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'A2' ,
                                Number2 = A2X2 ,
                                Number3 = LO2
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'A3' ,
                                Number2 = A3X2 ,
                                Number3 = LO3
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'A4' ,
                                Number2 = A4X2 ,
                                Number3 = ''
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'B' ,
                                Number2 = BX2 ,
                                Number3 = LO4
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'C' ,
                                Number2 = CX2 ,
                                Number3 = LO5
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;
                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'D' ,
                                Number2 = DX2 ,
                                Number3 = LO6
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;
--SELECT * FROM @TempTableVariable

                SELECT  PD.PlayDID ,
                        AG.AgencyName ,
                        PD.PlayID ,
                        PD.Post ,
                        PD.Number ,
                        RNumber2 = ( SELECT TR.Number2
                                     FROM   @TempTableVariable1 TR
                                     WHERE  PD.Post = TR.POST
                                   ) ,
                        RNumber3 = ( SELECT TR.Number3
                                     FROM   @TempTableVariable1 TR
                                     WHERE  PD.Post = TR.POST
                                   ) ,
                        Win = ( CASE WHEN ( PD.Number = ( SELECT
                                                              TR.Number2
                                                          FROM
                                                              @TempTableVariable1 TR
                                                          WHERE
                                                              PD.Post = TR.POST
                                                        )
                                            OR PD.Number = ( SELECT
                                                              TR.Number3
                                                             FROM
                                                              @TempTableVariable TR
                                                             WHERE
                                                              PD.Post = TR.POST
                                                           )
                                          ) THEN 1
                                     ELSE 0
                                END ) ,
                        PD.PlayAmount ,
                        P.HCommission ,
                        P.HRepay
                FROM    dbo.tblPlayDetails PD
                        INNER JOIN dbo.tblPlays P ON P.PlayID = PD.PlayID
                        INNER JOIN dbo.Agencies AG ON AG.AgencyID = P.CustomerID
                WHERE   ( CASE WHEN ( PD.Number = ( SELECT  TR.Number2
                                                    FROM    @TempTableVariable TR
                                                    WHERE   PD.Post = TR.POST
                                                  )
                                      OR PD.Number = ( SELECT TR.Number3
                                                       FROM   @TempTableVariable TR
                                                       WHERE  PD.Post = TR.POST
                                                     )
                                    ) THEN 1
                               ELSE 0
                          END ) = @isWin
                        AND P.Shift = @RShift
                        AND P.PlayDate = @ResultDate;
	   
            END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Get_MPLay]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Get_MPLay]
    @PlayDate NVARCHAR(10) = '2017-09-13' ,
    @AgencyID INT = 0 ,
    @StatusID INT = 0 ,
    @Shift INT = 0
AS 
	----TEST
 --   DECLARE @PlayDate NVARCHAR(10) = '2017-09-13' ,
 --       @AgencyID INT = 0 ,
 --       @StatusID INT = 0 ,
 --       @Shift INT = 0;
	----END TEST

    IF ( @AgencyID = 0 )
        BEGIN
            IF ( @Shift = 0 )
                BEGIN
                    IF ( @StatusID = 0 )
                        BEGIN
                            SELECT  vp.*
                            FROM    v_MPLay vp
                            WHERE   vp.PlayDate = @PlayDate;
                                    --AND vp.CustomerID = @AgencyID
                                    --AND vp.StatusID = @StatusID
                                    --AND vp.Shift = @Shift;
                        END;
                    ELSE
                        BEGIN
                            SELECT  vp.*
                            FROM    v_MPLay vp
                            WHERE   vp.PlayDate = @PlayDate
                                    --AND vp.CustomerID = @AgencyID
                                    AND vp.StatusID = @StatusID;
                                    --AND vp.Shift = @Shift;
                        END;
                END;
            ELSE
                BEGIN
                    IF ( @StatusID = 0 )
                        BEGIN
                            SELECT  vp.*
                            FROM    v_MPLay vp
                            WHERE   vp.PlayDate = @PlayDate
                                    --AND vp.CustomerID = @AgencyID
                                    --AND vp.StatusID = @StatusID
                                    AND vp.Shift = @Shift;
                        END;
                    ELSE
                        BEGIN
                            SELECT  vp.*
                            FROM    v_MPLay vp
                            WHERE   vp.PlayDate = @PlayDate
                                    --AND vp.CustomerID = @AgencyID
                                    AND vp.StatusID = @StatusID
                                    AND vp.Shift = @Shift;
                        END;
                END;
        END;
    ELSE
        BEGIN
            IF ( @Shift = 0 )
                BEGIN
                    IF ( @StatusID = 0 )
                        BEGIN
                            SELECT  vp.*
                            FROM    v_MPLay vp
                            WHERE   vp.PlayDate = @PlayDate;
                                    --AND vp.CustomerID = @AgencyID
                                    --AND vp.StatusID = @StatusID
                                    --AND vp.Shift = @Shift;
                        END;
                    ELSE
                        BEGIN
                            SELECT  vp.*
                            FROM    v_MPLay vp
                            WHERE   vp.PlayDate = @PlayDate
                                    --AND vp.CustomerID = @AgencyID
                                    AND vp.StatusID = @StatusID;
                                    --AND vp.Shift = @Shift;
                        END;
                END;
            ELSE
                BEGIN
                    IF ( @StatusID = 0 )
                        BEGIN
                            SELECT  vp.*
                            FROM    v_MPLay vp
                            WHERE   vp.PlayDate = @PlayDate
                                    --AND vp.CustomerID = @AgencyID
                                    --AND vp.StatusID = @StatusID
                                    AND vp.Shift = @Shift;
                        END;
                    ELSE
                        BEGIN
                            SELECT  vp.*
                            FROM    v_MPLay vp
                            WHERE   vp.PlayDate = @PlayDate
                                    --AND vp.CustomerID = @AgencyID
                                    AND vp.StatusID = @StatusID
                                    AND vp.Shift = @Shift;
                        END;
                END;
        END;

GO
/****** Object:  StoredProcedure [dbo].[sp_getAgencyPlayAmountByDate]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_getAgencyPlayAmountByDate]
    @PlayDate DATE = '2017-09-12' ,
    @CustomerID INT = 1 ,
    @Shift INT = 1
AS
    BEGIN
        SELECT  ISNULL(SUM(ISNULL(PD.PlayAmount, 0)), 0) AS SumPlayAmount
        FROM    dbo.tblPlayDetails PD
                INNER JOIN dbo.tblPlays P ON PD.PlayID = P.PlayID
        WHERE   P.PlayDate = @PlayDate
                AND P.Status <> 0
                AND P.CustomerID = @CustomerID
                AND P.Shift = @Shift;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_getClientCreditTran]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_getClientCreditTran]
    @AgencyID INT = 0 ,
    @FTranDate DATE ,
    @TTranDate DATE
AS
    IF ( @AgencyID = 0 )
        BEGIN
            SELECT  CT.TranID ,
                    CT.TranDate ,
                    CT.AgencyID ,
                    CT.TranAmunt ,
                    CollectAmount = ( CASE WHEN CT.TranType = 1
                                           THEN CAST(CT.TranAmunt AS NVARCHAR)
                                           ELSE ''
                                      END ) ,
                    RepayAmount = ( CASE WHEN CT.TranType = 2
                                         THEN CAST(CT.TranAmunt AS NVARCHAR)
                                         ELSE ''
                                    END ) ,
                    CT.TranType ,
                    CT.Status
            FROM    tblClientCreditTrans CT
            WHERE   CT.Status = 1
                    AND CT.TranDate BETWEEN @FTranDate AND @TTranDate;
        END;
    ELSE
        BEGIN
            SELECT  CT.TranID ,
                    CT.TranDate ,
                    CT.AgencyID ,
                    CT.TranAmunt ,
                    CollectAmount = ( CASE WHEN CT.TranType = 1
                                           THEN CAST(CT.TranAmunt AS NVARCHAR)
                                           ELSE ''
                                      END ) ,
                    RepayAmount = ( CASE WHEN CT.TranType = 2
                                         THEN CAST(CT.TranAmunt AS NVARCHAR)
                                         ELSE ''
                                    END ) ,
                    CT.TranType ,
                    CT.Status
            FROM    tblClientCreditTrans CT
            WHERE   CT.AgencyID = @AgencyID
                    AND CT.Status = 1
                    AND CT.TranDate BETWEEN @FTranDate AND @TTranDate;
        END; 

GO
/****** Object:  StoredProcedure [dbo].[sp_LerngNumber]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LerngNumber]
    @ResultDate NVARCHAR(10) = '2017-09-13' ,
    @isWin INT = 1 ,
    @RShift INT = 1
AS --SELECT ResultDate=GETDATE() ,PlayShift=1 , Agency='Mr.ABC' ,PlayNumber='001',PlayAmount= 9121.00

--DECLARE  @ResultDate NVARCHAR(10) = '2017-07-25' ,
--    @isWin INT = 1 ,
--    @RShift INT = 1

    IF ( @RShift = 1 )
        BEGIN
            DECLARE @TempTableVariable TABLE
                (
                  POST NVARCHAR(10) ,
                  Number2 NVARCHAR(2) ,
                  Number3 NVARCHAR(10)
                );


            INSERT  INTO @TempTableVariable
                    (
					 POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'A' ,
                            Number2 = A2 ,
                            Number3 = LO1
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'B' ,
                            Number2 = A2 ,
                            Number3 = LO17
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'C' ,
                            Number2 = A2 ,
                            Number3 = LO18
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'D' ,
                            Number2 = A2 ,
                            Number3 = LO19
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

            INSERT  INTO @TempTableVariable
                    ( POST ,
                      Number2 ,
                      Number3
                    )
                    SELECT  POST = 'H' ,
                            Number2 = A2 ,
                            Number3 = LO20
                    FROM    dbo.tblResultSA
                    WHERE   ResultDate = @ResultDate;

--SELECT * FROM @TempTableVariable

            SELECT  PD.PlayDID ,
					ag.AgencyName,
                    PD.PlayID ,
                    PD.Post ,
                    PD.Number ,
                    RNumber2 = ( SELECT TR.Number2
                                 FROM   @TempTableVariable TR
                                 WHERE  PD.Post = TR.POST
                               ) ,
                    RNumber3 = ( SELECT TR.Number3
                                 FROM   @TempTableVariable TR
                                 WHERE  PD.Post = TR.POST
                               ) ,
                    Win = ( CASE WHEN ( PD.Number = ( SELECT  TR.Number2
                                                      FROM    @TempTableVariable TR
                                                      WHERE   PD.Post = TR.POST
                                                    )
                                        OR PD.Number = ( SELECT
                                                              TR.Number3
                                                         FROM @TempTableVariable TR
                                                         WHERE
                                                              PD.Post = TR.POST
                                                       )
                                      ) THEN 1
                                 ELSE 0
                            END ) ,
                    PD.PlayAmount
            FROM    dbo.tblPlayDetails PD
                    INNER JOIN dbo.tblPlays P ON P.PlayID = PD.PlayID
					 INNER JOIN dbo.Agencies AG ON AG.AgencyID=P.CustomerID
            WHERE   ( CASE WHEN ( PD.Number = ( SELECT  TR.Number2
                                                FROM    @TempTableVariable TR
                                                WHERE   PD.Post = TR.POST
                                              )
                                  OR PD.Number = ( SELECT   TR.Number3
                                                   FROM     @TempTableVariable TR
                                                   WHERE    PD.Post = TR.POST
                                                 )
                                ) THEN 1
                           ELSE 0
                      END ) = @isWin
                    AND P.Shift = @RShift
                    AND P.PlayDate = @ResultDate;
        END;
    ELSE
        IF ( @RShift = 2 )
            BEGIN
                DECLARE @TempTableVariable1 TABLE
                    (
                      POST NVARCHAR(10) ,
                      Number2 NVARCHAR(2) ,
                      Number3 NVARCHAR(10)
                    );


                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'A1' ,
                                Number2 = A1X2 ,
                                Number3 = LO1
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'A2' ,
                                Number2 = A2X2 ,
                                Number3 = LO2
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'A3' ,
                                Number2 = A3X2 ,
                                Number3 = LO3
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'A4' ,
                                Number2 = A4X2 ,
                                Number3 = ''
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'B' ,
                                Number2 = BX2 ,
                                Number3 = LO4
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;

                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'C' ,
                                Number2 = CX2 ,
                                Number3 = LO5
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;
                INSERT  INTO @TempTableVariable1
                        ( POST ,
                          Number2 ,
                          Number3
                        )
                        SELECT  POST = 'D' ,
                                Number2 = DX2 ,
                                Number3 = LO6
                        FROM    dbo.tblResultSE
                        WHERE   ResultDate = @ResultDate;
--SELECT * FROM @TempTableVariable

                SELECT  PD.PlayDID ,
						Ag.AgencyName,
                        PD.PlayID ,
                        PD.Post ,
                        PD.Number ,
                        RNumber2 = ( SELECT TR.Number2
                                     FROM   @TempTableVariable1 TR
                                     WHERE  PD.Post = TR.POST
                                   ) ,
                        RNumber3 = ( SELECT TR.Number3
                                     FROM   @TempTableVariable1 TR
                                     WHERE  PD.Post = TR.POST
                                   ) ,
                        Win = ( CASE WHEN ( PD.Number = ( SELECT
                                                              TR.Number2
                                                          FROM
                                                              @TempTableVariable1 TR
                                                          WHERE
                                                              PD.Post = TR.POST
                                                        )
                                            OR PD.Number = ( SELECT
                                                              TR.Number3
                                                             FROM
                                                              @TempTableVariable TR
                                                             WHERE
                                                              PD.Post = TR.POST
                                                           )
                                          ) THEN 1
                                     ELSE 0
                                END ) ,
                        PD.PlayAmount
                FROM    dbo.tblPlayDetails PD
                        INNER JOIN dbo.tblPlays P ON P.PlayID = PD.PlayID
						 INNER JOIN dbo.Agencies AG ON AG.AgencyID=P.CustomerID
                WHERE   ( CASE WHEN ( PD.Number = ( SELECT  TR.Number2
                                                    FROM    @TempTableVariable TR
                                                    WHERE   PD.Post = TR.POST
                                                  )
                                      OR PD.Number = ( SELECT TR.Number3
                                                       FROM   @TempTableVariable TR
                                                       WHERE  PD.Post = TR.POST
                                                     )
                                    ) THEN 1
                               ELSE 0
                          END ) = @isWin
                        AND P.Shift = @RShift
                        AND P.PlayDate = @ResultDate;
	   
            END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Load_Result_Detail]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Load_Result_Detail]
    @ResultDate DATE = GETDATE ,
    @ShiftID INT = 1
AS --DECLARE @ResultDate DATE = GETDATE() ,
--    @ShiftID INT = 2;

    BEGIN
        IF ( @ShiftID = 2 )
            BEGIN
                SELECT  ResultID = ISNULL(( SELECT TOP 1
                                                    R.ResultID
                                            FROM    dbo.tblResults R
                                            WHERE   R.ResultDate = @ResultDate
                                                    AND R.ShiftID = @ShiftID
                                          ), '') ,
                        ResultDate = ISNULL(( SELECT TOP 1
                                                        R.ResultDate
                                              FROM      dbo.tblResults R
                                              WHERE     R.ResultDate = @ResultDate
                                                        AND R.ShiftID = @ShiftID
                                            ), '') ,
                        ResultTime = ISNULL(( SELECT TOP 1
                                                        R.ResultTime
                                              FROM      dbo.tblResults R
                                              WHERE     R.ResultDate = @ResultDate
                                                        AND R.ShiftID = @ShiftID
                                            ), '') ,
                        A1X2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND LTRIM(R.POST) = 'A1'
                                      ), '') ,
                        A2X2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'A2'
                                      ), '') ,
                        A3X2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'A3'
                                      ), '') ,
                        A4X2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'A4'
                                      ), '') ,
                        BX2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'B'
                                     ), '') ,
                        CX2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'C'
                                     ), '') ,
                        DX2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'D'
                                     ), '') ,
                        LO1 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'A1'
                                     ), '') ,
                        LO2 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'A2'
                                     ), '') ,
                        LO3 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'A3'
                                     ), '') ,
                        LO4 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'B'
                                     ), '') ,
                        LO5 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'C'
                                     ), '') ,
                        LO6 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'D'
                                     ), '') ,
                        LO7 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO7'
                                     ), '') ,
                        LO8 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO8'
                                     ), '') ,
                        LO9 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO9'
                                     ), '') ,
                        LO10 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO10'
                                      ), '') ,
                        LO11 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO11'
                                      ), '') ,
                        LO12 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO12'
                                      ), '') ,
                        LO13 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO13'
                                      ), '') ,
                        LO14 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO14'
                                      ), '') ,
                        LO15 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO15'
                                      ), '') ,
                        LO16 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO16'
                                      ), '') ,
                        LO17 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO17'
                                      ), '') ,
                        LO18 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO18'
                                      ), '') ,
                        LO19 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO19'
                                      ), '') ,
                        LO20 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO20'
                                      ), '') ,
                        LO21 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO21'
                                      ), '') ,
                        LO22 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO22'
                                      ), '') ,
                        LO23 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO23'
                                      ), '') ,
                        LO24 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO24'
                                      ), '') ,
                        LO25 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO25'
                                      ), '');
            END;
        ELSE
            BEGIN
                SELECT  ResultID = ISNULL(( SELECT TOP 1
                                                    R.ResultID
                                            FROM    dbo.tblResults R
                                            WHERE   R.ResultDate = @ResultDate
                                                    AND R.ShiftID = @ShiftID
                                          ), '') ,
                        ResultDate = ISNULL(( SELECT TOP 1
                                                        R.ResultDate
                                              FROM      dbo.tblResults R
                                              WHERE     R.ResultDate = @ResultDate
                                                        AND R.ShiftID = @ShiftID
                                            ), '') ,
                        ResultTime = ISNULL(( SELECT TOP 1
                                                        R.ResultTime
                                              FROM      dbo.tblResults R
                                              WHERE     R.ResultDate = @ResultDate
                                                        AND R.ShiftID = @ShiftID
                                            ), '') ,
                        A2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                      FROM      dbo.tblResults R
                                      WHERE     R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'A'
                                    ), '') ,
                        B2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                      FROM      dbo.tblResults R
                                      WHERE     R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'B'
                                    ), '') ,
                        C2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                      FROM      dbo.tblResults R
                                      WHERE     R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'C'
                                    ), '') ,
                        D2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                      FROM      dbo.tblResults R
                                      WHERE     R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'D'
                                    ), '') ,
                        H2 = ISNULL(( SELECT TOP 1
                                                R.R2Digit
                                      FROM      dbo.tblResults R
                                      WHERE     R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'H'
                                    ), '') ,
                        LO1 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'A'
                                     ), '') ,
                        LO2 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'Lo2'
                                     ), '') ,
                        LO3 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'Lo3'
                                     ), '') ,
                        LO4 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO4'
                                     ), '') ,
                        LO5 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO5'
                                     ), '') ,
                        LO6 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO6'
                                     ), '') ,
                        LO7 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO7'
                                     ), '') ,
                        LO8 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO8'
                                     ), '') ,
                        LO9 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                       FROM     dbo.tblResults R
                                       WHERE    R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO9'
                                     ), '') ,
                        LO10 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO10'
                                      ), '') ,
                        LO11 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO11'
                                      ), '') ,
                        LO12 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO12'
                                      ), '') ,
                        LO13 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO13'
                                      ), '') ,
                        LO14 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO14'
                                      ), '') ,
                        LO15 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'LO15'
                                      ), '') ,
                        LO16 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'Lo16'
                                      ), '') ,
                        LO17 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'B'
                                      ), '') ,
                        LO18 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'C'
                                      ), '') ,
                        LO19 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'D'
                                      ), '') ,
                        LO20 = ISNULL(( SELECT TOP 1
                                                R.R3Digit
                                        FROM    dbo.tblResults R
                                        WHERE   R.ResultDate = @ResultDate
                                                AND R.ShiftID = @ShiftID
                                                AND R.POST = 'H'
                                      ), '');
            END;	


   
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadDoc]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LoadDoc]
@PlayDate DATE
,@Shift INT 
,@Session INT
,@CustomerID INT=0
,@Status INT=1
AS 
IF(@CustomerID=0)
BEGIN
SELECT tp.PlayID ,
       tp.PlayDate ,
	   tp.Session ,
	   SessionPost=(CAST(tp.Session AS NVARCHAR)+tp.Post),
       tp.Shift ,
	   tp.Status,
	   FColor=(CASE WHEN Status=1 THEN '' ELSE 'color: red;' END),
       tp.CustomerID ,
       tp.CreaterID ,
       tp.Post ,
       tp.PostMultiplier ,
       tp.Number ,
       tp.Number1 ,
       tp.NumIncrease ,
       tp.PlayType ,
       tp.PlayAmount ,
	   SPlayAmount=(SELECT SUM(stp.TotalAmount) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Post=tp.Post AND stp.Status=1)
	    , Slast=(SELECT COUNT(stp.Post) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Post=tp.Post  AND stp.Status=1)
	   ,tp.TotalAmount
 FROM dbo.tblPlays tp
 WHERE 
     CONVERT(VARCHAR(10), tp.PlayDate, 121) = CONVERT(VARCHAR(10), @PlayDate, 121)
	AND tp.Shift=@Shift
	AND tp.Session=@Session
	--AND tp.CustomerID=@CustomerID
	--AND tp.Status=@Status
ORDER BY tp.PlayDate,tp.Shift ,tp.PlayID
END
ELSE
BEGIN

SELECT tp.PlayID ,
       tp.PlayDate ,
	   tp.Session ,
	   SessionPost=(CAST(tp.Session AS NVARCHAR)+tp.Post),
       tp.Shift ,
	    tp.Status,
		FColor=(CASE WHEN Status=1 THEN '' ELSE 'color: red;' END),
       tp.CustomerID ,
       tp.CreaterID ,
       tp.Post ,
       tp.PostMultiplier ,
       tp.Number ,
       tp.Number1 ,
       tp.NumIncrease ,
       tp.PlayType ,
       tp.PlayAmount ,
	   SPlayAmount=(SELECT SUM(stp.TotalAmount) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Post=tp.Post AND tp.Status=stp.Status)
	    , Slast=(SELECT COUNT(stp.Post) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Post=tp.Post  AND tp.Status=stp.Status)
	   ,tp.TotalAmount
 FROM dbo.tblPlays tp
 WHERE 
     CONVERT(VARCHAR(10), tp.PlayDate, 121) = CONVERT(VARCHAR(10), @PlayDate, 121)
	AND tp.Shift=@Shift
	--AND tp.Session=@Session
	AND tp.CustomerID=@CustomerID
	--AND tp.Status=@Status
ORDER BY tp.PlayDate,tp.Shift ,tp.PlayID
END
--SELECT *,CONVERT(VARCHAR(10), PlayDate, 121),CONVERT(VARCHAR(10), '2017-02-21', 110) FROM dbo.tblPlays

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LoadPlay]
    @PlayDate DATE ,
    @Shift INT ,
    @Session INT ,
    @CustomerID INT ,
    @Status INT = 1
AS
    SELECT  tp.PlayID ,
            tp.PlayDate ,
            tp.Session ,
			SessionPost= CAST(tp.Session AS VARCHAR) + tp.Post,
			MaxSession=(SELECT ISNULL(MAX(Session),1) +1 AS MaxSession FROM tblPlays WHERE PlayDate=@PlayDate),
            tp.Shift ,
            tp.CustomerID ,
            tp.CreaterID ,
            tp.Post ,
            tp.PostMultiplier ,
            tp.Number ,
            tp.Number1 ,
            tp.NumIncrease ,
            tp.PlayType ,
            tp.PlayAmount ,
            SPlayAmount = ( SELECT  SUM(stp.TotalAmount)
                            FROM    dbo.tblPlays stp
                            WHERE   tp.PlayDate = stp.PlayDate
                                    AND stp.Post = tp.Post
                                    AND tp.Status = stp.Status
                          ) ,
            Slast = ( SELECT    COUNT(stp.Post)
                      FROM      dbo.tblPlays stp
                      WHERE     tp.PlayDate = stp.PlayDate
                                AND stp.Post = tp.Post
                                AND tp.Status = stp.Status
                    ) ,
            AgcCommission = ISNULL(( SELECT TOP 1
                                        AC.S1X2
                              FROM      AgencyCommissions AC
                              WHERE     AC.AgencyID = @CustomerID
                              ORDER BY  AC.AgCMID DESC
                            ),0) ,
            tp.TotalAmount
    FROM    dbo.tblPlays tp
    WHERE   CONVERT(VARCHAR(10), tp.PlayDate, 121) = CONVERT(VARCHAR(10), @PlayDate, 121)
            AND tp.Shift = @Shift
            --AND tp.Session = @Session
            AND tp.CustomerID = @CustomerID
            AND tp.Status = @Status
    ORDER BY tp.PlayDate ,
            tp.Shift ,
            tp.PlayID;

--SELECT *,CONVERT(VARCHAR(10), PlayDate, 121),CONVERT(VARCHAR(10), '2017-02-21', 110) FROM dbo.tblPlays

GO
/****** Object:  StoredProcedure [dbo].[sp_Payamount]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Payamount]
@PlayDate DATE='2017-07-31',
@Post NVARCHAR(10)=''
AS
IF(@Post='')
BEGIN
SELECT  p.PlayDate ,
            SUM(sp.PlayAmount) AS SPlayAmount ,
            sp.Number ,
            sp.Post
    FROM    dbo.tblPlayDetails sp
            INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
    GROUP BY p.PlayDate ,
            sp.Post ,
            sp.Number
    ORDER BY SUM(sp.PlayAmount) DESC;
END
ELSE
BEGIN
SELECT  p.PlayDate ,
            SUM(sp.PlayAmount) AS SPlayAmount ,
            sp.Number ,
            sp.Post
    FROM    dbo.tblPlayDetails sp
            INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
	WHERE sp.Post=@Post
    GROUP BY p.PlayDate ,
            sp.Post ,
            sp.Number

    ORDER BY SUM(sp.PlayAmount) DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveAgencyCommissions]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SaveAgencyCommissions]
    @AgencyID INT ,
    @ShiftID INT = 1 ,
    @S1X2 DECIMAL(8, 2) ,
    @S1X3 DECIMAL(8, 2) ,
    @S2X2 DECIMAL(8, 2) ,
    @S2X3 DECIMAL(8, 2) ,
	@RS1X2 DECIMAL(8, 2) ,
    @RS1X3 DECIMAL(8, 2) ,
    @RS2X2 DECIMAL(8, 2) ,
    @RS2X3 DECIMAL(8, 2) ,
    @ActUser INT
AS
    DECLARE @CustomerID INT= 0;
    SELECT  @CustomerID = AgencyID
    FROM    dbo.Agencies
    WHERE   AgencyID = @AgencyID;
--IF EXISTS (SELECT  COUNT(*) FROM tblResultSA WHERE ResultDate=@ResultDate)
    IF ( @CustomerID > 0 )
        BEGIN
	   --SELECT TableID FROM Table WHERE FieldValue=''
		--AND ResultDate=@ResultDate
		  --RAISERROR ('Cannot delete this record', -- Message text.
    --           16, -- Severity.
    --           -1 -- State.
    --           );
	--UPDATE AgencyCommissions SET AgCMID
            UPDATE  AgencyCommissions
            SET     AgencyID = @AgencyID ,
                    ShiftID = @ShiftID ,
                    S1X2 = @S1X2 ,
                    S1X3 = @S1X3 ,
                    S2X2 = @S2X2 ,
                    S2X3 = @S2X3 ,
					RS1X2 = @RS1X2 ,
                    RS1X3 = @RS1X3 ,
                    RS2X2 = @RS2X2 ,
                    RS2X3 = @RS2X3 ,
                    ModifiedBy = @ActUser ,
                    ModefiedDate = GETDATE() ,
                    IsDeleted = 'false';
					 RETURN 1;
    
        END;	
    ELSE
        BEGIN
            INSERT  INTO dbo.AgencyCommissions
                    ( AgencyID ,
                      ShiftID ,
                      S1X2 ,
                      S1X3 ,
                      S2X2 ,
                      S2X3 ,
					  RS1X2 ,
                      RS1X3 ,
                      RS2X2 ,
                      RS2X3 ,
                      CreatedBy ,
                      CreatedDate ,
                      IsDeleted
	                )
            VALUES  ( @AgencyID ,
                      @ShiftID ,
                      @S1X2 ,
                      @S1X3 ,
                      @S2X2 ,
                      @S2X3 ,
					  @RS1X2 ,
                      @RS1X3 ,
                      @RS2X2 ,
                      @RS2X3 ,
                      @ActUser ,
                      GETDATE() ,
                      'false'
	                );
            RETURN 1;
        END;


GO
/****** Object:  StoredProcedure [dbo].[sp_SavePlay]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SavePlay]
@PlayID INT=0 OUTPUT
,@PlayDate   DATETIME=GETDATE
,@Shift   INT=1
,@Session INT 
,@CustomerID   INT=1
,@CreaterID   INT=1
,@Post   nvarchar(10)
,@PostMultiplier   INT =1
,@NumIncreaseDig   INT =1
,@PlayTypeMultiplier INT=1
,@Number   nchar(10)
,@Number1   nchar(10)=NULL	
,@NumIncrease   INT=1
,@PlayType   INT=1
,@PlayAmount   FLOAT=0
,@TotalAmount   FLOAT=0
,@HCommission   FLOAT=0
,@HRepay   FLOAT=0
,@Status INT=1
AS 
BEGIN
DECLARE @ePostMultiAdd INT = 0;

IF(@Shift=2)
BEGIN
    if CHARINDEX('A',@Post) > 0
	begin
		--do something
		--SELECT LEN(12)
		if LEN(@Number) > 2
			begin
				--do something
				--PRINT	1;
				SET @ePostMultiAdd=2
				SET @HCommission=ISNULL((SELECT TOP 1 S2X3 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
				SET @HCommission=ISNULL((SELECT TOP 1 RS2X3 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
			END
        ELSE
			BEGIN
				--do something
				--PRINT	1;
				SET @ePostMultiAdd=3
				SET @HCommission=ISNULL((SELECT TOP 1 S2X2 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
				SET @HCommission=ISNULL((SELECT TOP 1 RS2X2 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
			END
	END

IF(@Post='A1' OR @Post='A2'  OR @Post='A3'  OR @Post='A4')
	BEGIN
		SET @ePostMultiAdd=0;
	END	

IF(CHARINDEX('Lo25',@Post) > 0)
	BEGIN
		if LEN(@Number) > 2
			begin
				--do something
				--PRINT	1;
				SET @ePostMultiAdd=0
				SET @HCommission=ISNULL((SELECT TOP 1 S2X3 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
				SET @HCommission=ISNULL((SELECT TOP 1 RS2X3 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
			END
        ELSE
			begin
				--do something
				--PRINT	1;
				SET @ePostMultiAdd=7
				SET @HCommission=ISNULL((SELECT TOP 1 S2X2 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
				SET @HCommission=ISNULL((SELECT TOP 1 RS2X2 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
			end
	END	
END
IF(@Shift=1)
BEGIN
IF(CHARINDEX('Lo20',@Post) > 0)
	BEGIN
		if LEN(@Number) > 2
			begin
				--do something
				--PRINT	1;
				SET @ePostMultiAdd=0
				SET @HCommission=ISNULL((SELECT TOP 1 S1X3 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
				SET @HRepay=ISNULL((SELECT TOP 1 RS1X3 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
			END
        ELSE
			begin
				--do something
				--PRINT	1;
				SET @ePostMultiAdd=5
				SET @HCommission=ISNULL((SELECT TOP 1 S1X2 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
				SET @HRepay=ISNULL((SELECT TOP 1 RS1X2 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
			end
	END	
END
IF LEN(@Number) > 2
			begin
				--do something
				--PRINT	1;
				--SET @ePostMultiAdd=0
				SET @HCommission=ISNULL((SELECT TOP 1 S1X3 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
				SET @HRepay=ISNULL((SELECT TOP 1 RS1X3 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
			END
        ELSE
			begin
				--do something
				--PRINT	1;
				--SET @ePostMultiAdd=5
				SET @HCommission=ISNULL((SELECT TOP 1 S1X2 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
				SET @HRepay=ISNULL((SELECT TOP 1 RS1X2 FROM AgencyCommissions WHERE AgencyID= @CustomerID ORDER BY  AgCMID DESC  ),0)
END
            
SET @PostMultiplier=(@PostMultiplier + @ePostMultiAdd)

SET @TotalAmount=@PlayAmount * @PostMultiplier * @PlayTypeMultiplier * @NumIncrease 

	INSERT INTO dbo.tblPlays
	        ( PlayDate ,
	          Shift ,
			  Session,
	          CustomerID ,
	          CreaterID ,
	          Post ,
	          PostMultiplier ,
			  PlayTypeMultiplier,
	          Number ,
	          Number1 ,
	          NumIncrease ,
	          PlayType ,
	          PlayAmount ,
	          TotalAmount,
			  HCommission ,
	          HRepay
	        )
	VALUES  (  
			@PlayDate  
			,@Shift
			,@Session
			,@CustomerID  
			,@CreaterID
			,@Post 
			,@PostMultiplier  
			,@PlayTypeMultiplier
			,@Number 
			,@Number1 
			,@NumIncrease  
			,@PlayType   
			,@PlayAmount   
			,@TotalAmount
			, @HCommission 
	         , @HRepay
			)
	SET @PlayID=(SELECT PlayID FROM dbo.tblPlays WHERE PlayID=SCOPE_IDENTITY())
	RETURN @PlayID;
END	
--SELECT * FROM dbo.tblPlays
--TRUNCATE TABLE dbo.tblPlays
--SELECT * FROM dbo.tblPlays

GO
/****** Object:  StoredProcedure [dbo].[sp_SaveResultA]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SaveResultA]
    @ResultID INT = NULL ,
    @ResultDate DATE ,
    @ResultTime TIME = GETDATE ,
    @ShiftID INT ,
    @A2 VARCHAR(2) ,
    @B2 VARCHAR(2) ,
    @C2 VARCHAR(2) ,
    @D2 VARCHAR(2) ,
    @H2 VARCHAR(2) ,
    @LO1 VARCHAR(3) ,
    @LO2 VARCHAR(3) ,
    @LO3 VARCHAR(3) ,
    @LO4 VARCHAR(3) ,
    @LO5 VARCHAR(3) ,
    @LO6 VARCHAR(3) ,
    @LO7 VARCHAR(3) ,
    @LO8 VARCHAR(3) ,
    @LO9 VARCHAR(3) ,
    @LO10 VARCHAR(3) ,
    @LO11 VARCHAR(3) ,
    @LO12 VARCHAR(3) ,
    @LO13 VARCHAR(3) ,
    @LO14 VARCHAR(3) ,
    @LO15 VARCHAR(3) ,
    @LO16 VARCHAR(3) ,
    @LO17 VARCHAR(3) ,
    @LO18 VARCHAR(3) ,
    @LO19 VARCHAR(3) ,
    @LO20 VARCHAR(3) ,
    @ActUser INT
AS
    DECLARE @CreatedBy INT= @ActUser ,
        @CreatedDate DATETIME = GETDATE() ,
        @ModefiedDate DATETIME = GETDATE() ,
        @ModifiedBy INT = @ActUser;
    
    IF ( @ShiftID = 1 )
        BEGIN

	

            DELETE  FROM dbo.tblResults
           WHERE   ResultDate = @ResultDate AND ShiftID=1;

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'A' ,
                      @A2 ,
                      @LO1 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo2' ,
                      '' ,
                      @LO2 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo3' ,
                      '' ,
                      @LO3 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo4' ,
                      '' ,
                      @LO4 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo5' ,
                      '' ,
                      @LO5 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo6' ,
                      '' ,
                      @LO6 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo7' ,
                      '' ,
                      @LO7 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo8' ,
                      '' ,
                      @LO8 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo9' ,
                      '' ,
                      @LO9 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo10' ,
                      '' ,
                      @LO10 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo11' ,
                      '' ,
                      @LO11 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo12' ,
                      '' ,
                      @LO12 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo13' ,
                      '' ,
                      @LO13 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo14' ,
                      '' ,
                      @LO14 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo15' ,
                      '' ,
                      @LO15 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo16' ,
                      '' ,
                      @LO16 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
		INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'B' ,
                      @B2 ,
                      @LO17 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
							INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'C' ,
                      @C2 ,
                      @LO18 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
							INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'D' ,
                      @D2 ,
                      @LO19 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'H' ,
                      @H2 ,
                      @LO20 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
        END;	
   
 

GO
/****** Object:  StoredProcedure [dbo].[sp_SaveResultAE]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SaveResultAE]
	@TranDate  DATETIME
    ,@AgencyID  INT
	,@TranAmunt DECIMAL(8,0)
    ,@TranType  INT=1
	,@ActUser INT=1
AS	

IF(@AgencyID >= 0)
BEGIN
	INSERT INTO tblClientCreditTrans
        ( TranDate ,
          AgencyID ,
          TranAmunt ,
          TranType 
        )
	VALUES  ( 
		@TranDate 
		,@AgencyID  
		,@TranAmunt
		,@TranType  
        )
  RETURN SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[sp_SaveResultAS]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SaveResultAS]
	@ResultID INT=NULL	
	,@ResultDate  date
	, @ResultTime   TIME =GETDATE
	, @ShiftID   int
	, @A2   varchar(2)
	, @B2   varchar(2)
	, @C2   varchar(2)
	, @D2   varchar(2)
	, @H2   varchar(2)
	, @LO1   varchar(3)
	, @LO2   varchar(3)
	, @LO3   varchar(3)
	, @LO4   varchar(3)
	, @LO5   varchar(3)
	, @LO6   varchar(3)
	, @LO7   varchar(3)
	, @LO8   varchar(3)
	, @LO9   varchar(3)
	, @LO10   varchar(3)
	, @LO11   varchar(3)
	, @LO12   varchar(3)
	, @LO13   varchar(3)
	, @LO14   varchar(3)
	, @LO15   varchar(3)
	, @LO16   varchar(3)
	, @LO17   varchar(3)
	, @LO18   varchar(3)
	, @LO19   varchar(3)
	, @LO20   varchar(3)
	,@ActUser INT
AS	
SELECT @ResultID= ResultID FROM dbo.tblResultSA WHERE  ResultDate=CAST(DATEPART(YEAR,@ResultDate) AS NVARCHAR(4)) + '-' + CAST(DATEPART(MONTH,@ResultDate) AS NVARCHAR(4)) + '-' + CAST(DATEPART(DAY,@ResultDate) AS NVARCHAR(4))
--IF EXISTS (SELECT  COUNT(*) FROM tblResultSA WHERE ResultDate=@ResultDate)
IF(@ResultID>0)
BEGIN
	   --SELECT TableID FROM Table WHERE FieldValue=''
   UPDATE  dbo.tblResultSA	SET 
		ResultDate=@ResultDate ,
          ResultTime=@ResultTime ,
          ShiftID=@ShiftID ,
          A2=@A2,
          B2=@B2,
          C2=@C2,
          D2=@D2,
          H2=@H2,
          LO1=@LO1,
          LO2=@LO2,
          LO3=@LO3,
          LO4=@LO4,
          LO5=@LO5,
          LO6=@LO6,
          LO7=@LO7,
          LO8=@LO8,
          LO9=@LO9,
          LO10=@LO10,
          LO11=@LO11,
          LO12=@LO12,
          LO13=@LO13,
          LO14=@LO14,
          LO15=@LO15,
          LO16=@LO16,
          LO17=@LO17,
          LO18=@LO18,
          LO19=@LO19,
          LO20=@LO20 ,
		  ModifiedBy=@ActUser,
		  ModefiedDate=GETDATE()
		  WHERE	ResultID=@ResultID 
		  --AND ResultDate=@ResultDate
END	
ELSE
BEGIN
   INSERT INTO dbo.tblResultSA
        ( ResultDate ,
          ResultTime ,
          ShiftID ,
          A2 ,
          B2 ,
          C2 ,
          D2 ,
          H2 ,
          LO1 ,
          LO2 ,
          LO3 ,
          LO4 ,
          LO5 ,
          LO6 ,
          LO7 ,
          LO8 ,
          LO9 ,
          LO10 ,
          LO11 ,
          LO12 ,
          LO13 ,
          LO14 ,
          LO15 ,
          LO16 ,
          LO17 ,
          LO18 ,
          LO19 ,
          LO20,
		  CreatedBy,
		  CreatedDate
        )
VALUES  ( 
			@ResultDate ,
			@ResultTime ,
			@ShiftID ,
			@A2 ,
			@B2 ,
			@C2 ,
			@D2 ,
			@H2 ,
			@LO1 ,
			@LO2 ,
			@LO3 ,
			@LO4 ,
			@LO5 ,
			@LO6 ,
			@LO7 ,
			@LO8 ,
			@LO9 ,
			@LO10 ,
			@LO11 ,
			@LO12 ,
			@LO13 ,
			@LO14 ,
			@LO15 ,
			@LO16 ,
			@LO17 ,
			@LO18 ,
			@LO19 ,
			@LO20,
			@ActUser,
			GETDATE()
        );
   SELECT ResultID FROM tblResultSA WHERE ResultID=SCOPE_IDENTITY()
END


GO
/****** Object:  StoredProcedure [dbo].[sp_SaveResultE]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SaveResultE]
    @ResultID INT = NULL ,
    @ResultDate DATE ,
    @ResultTime TIME = GETDATE ,
    @ShiftID INT ,
    @A1X2 NVARCHAR(2) ,
    @A2X2 NVARCHAR(2) ,
    @A3X2 NVARCHAR(2) ,
    @A4X2 NVARCHAR(2) ,
    @BX2 NVARCHAR(2) ,
    @CX2 NVARCHAR(2) ,
    @DX2 NVARCHAR(2) ,
    @LO1 NVARCHAR(3) ,
    @LO2 NVARCHAR(3) ,
    @LO3 NVARCHAR(3) ,
    @LO4 NVARCHAR(3) ,
    @LO5 NVARCHAR(3) ,
    @LO6 NVARCHAR(3) ,
    @LO7 NVARCHAR(3) ,
    @LO8 NVARCHAR(3) ,
    @LO9 NVARCHAR(3) ,
    @LO10 NVARCHAR(3) ,
    @LO11 NVARCHAR(3) ,
    @LO12 NVARCHAR(3) ,
    @LO13 NVARCHAR(3) ,
    @LO14 NVARCHAR(3) ,
    @LO15 NVARCHAR(3) ,
    @LO16 NVARCHAR(3) ,
    @LO17 NVARCHAR(3) ,
    @LO18 NVARCHAR(3) ,
    @LO19 NVARCHAR(3) ,
    @LO20 NVARCHAR(3) ,
    @LO21 NVARCHAR(3) ,
    @LO22 NVARCHAR(3) ,
    @LO23 NVARCHAR(3) ,
    @LO24 NVARCHAR(3) ,
    @LO25 NVARCHAR(3) ,
    @ActUser INT
AS
    DECLARE @CreatedBy INT= @ActUser ,
        @CreatedDate DATETIME = GETDATE() ,
        @ModefiedDate DATETIME = GETDATE() ,
        @ModifiedBy INT = @ActUser;

    IF ( @ShiftID = 2 )
        BEGIN
            DELETE  FROM dbo.tblResults
            WHERE   ResultDate = @ResultDate
                    AND ShiftID = 2;

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'A1' ,
                      @A1X2 ,
                      @LO1 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'A2' ,
                      @A2X2 ,
                      @LO2 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'A3' ,
                      @A3X2 ,
                      @LO3 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'A4' ,
                      @A4X2 ,
                      '' ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'B' ,
                      @BX2 ,
                      @LO4 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'C' ,
                      @CX2 ,
                      @LO5 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'D' ,
                      @DX2 ,
                      @LO6 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
           
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo7' ,
                      '' ,
                      @LO7 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo8' ,
                      '' ,
                      @LO8 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo9' ,
                      '' ,
                      @LO9 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo10' ,
                      '' ,
                      @LO10 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo11' ,
                      '' ,
                      @LO11 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo12' ,
                      '' ,
                      @LO12 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo13' ,
                      '' ,
                      @LO13 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );

            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo14' ,
                      '' ,
                      @LO14 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo15' ,
                      '' ,
                      @LO15 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo16' ,
                      '' ,
                      @LO16 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo17' ,
                      '' ,
                      @LO17 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo18' ,
                      '' ,
                      @LO18 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo19' ,
                      '' ,
                      @LO19 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo20' ,
                      '' ,
                      @LO20 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo21' ,
                      '' ,
                      @LO21 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo22' ,
                      '' ,
                      @LO22 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo23' ,
                      '' ,
                      @LO23 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo24' ,
                      '' ,
                      @LO20 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
            INSERT  INTO dbo.tblResults
                    ( ResultDate ,
                      ResultTime ,
                      ShiftID ,
                      POST ,
                      R2Digit ,
                      R3Digit ,
                      CreatedBy ,
                      ModifiedBy ,
                      CreatedDate ,
                      ModefiedDate
			        )
            VALUES  ( @ResultDate ,
                      @ResultTime ,
                      @ShiftID ,
                      'Lo25' ,
                      '' ,
                      @LO2 ,
                      @CreatedBy ,
                      @ModifiedBy ,
                      @CreatedDate ,
                      @ModefiedDate
			        );
        END;	
    


GO
/****** Object:  StoredProcedure [dbo].[sp_ShowPlay]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ShowPlay]
@PlayDate DATE
,@Shift INT 
,@Session INT
,@CustomerID INT=0
,@Status INT=1
AS
IF(@CustomerID=0)
BEGIN

IF OBJECT_ID('tempdb..##mytemp') IS NOT NULL
   DROP TABLE ##mytemp;
 
SELECT tp.PlayID ,
       tp.PlayDate ,
	   tp.Session ,
	   SessionPost=(CAST(tp.Session AS NVARCHAR)+tp.Post),
       tp.Shift ,
	   tp.Status,
	   FColor=(CASE WHEN Status=1 THEN '' ELSE 'color: red;' END),
       tp.CustomerID ,
       tp.CreaterID ,
       tp.Post ,
       tp.PostMultiplier ,
       tp.Number ,
       tp.Number1 ,
       tp.NumIncrease ,
       tp.PlayType ,
       tp.PlayAmount ,
	   Digit=LEN(tp.Number),
	   SPlayAmount=(SELECT SUM(stp.TotalAmount) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Post=tp.Post AND stp.Status=1)
	    , Slast=(SELECT COUNT(stp.Post) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Post=tp.Post  AND stp.Status=1)
	   ,tp.TotalAmount
	   ,ss=(SELECT SUM(stp.TotalAmount) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Session=tp.Session AND tp.Status=stp.Status)
 into ##mytemp FROM dbo.tblPlays tp

 WHERE 
     CONVERT(VARCHAR(10), tp.PlayDate, 121) = CONVERT(VARCHAR(10), @PlayDate, 121)
	AND tp.Shift=@Shift
	AND tp.Session=@Session
	--AND tp.CustomerID=@CustomerID
	--AND tp.Status=@Status
ORDER BY tp.PlayDate,tp.Shift ,tp.PlayID;

select tp.*,SPlayAmounts=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp stp)
	, D2=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp stp WHERE stp.Digit<>3 AND stp.Session=tp.Session AND tp.Status=stp.Status)
	, D3=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp stp WHERE stp.Digit=3 AND stp.Session=tp.Session AND tp.Status=stp.Status)
	, SD2=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp stp WHERE stp.Digit<>3 AND tp.Status=stp.Status)
	, SD3=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp stp WHERE stp.Digit=3 AND tp.Status=stp.Status)
	
 from ##mytemp tp;


END
ELSE
BEGIN
IF OBJECT_ID('tempdb..##mytemp1') IS NOT NULL
   DROP TABLE ##mytemp1;
 
SELECT tp.PlayID ,
       tp.PlayDate ,
	   tp.Session ,
	   SessionPost=(CAST(tp.Session AS NVARCHAR)+tp.Post),
       tp.Shift ,
	   tp.Status,
	   FColor=(CASE WHEN Status=1 THEN '' ELSE 'color: red;' END),
       tp.CustomerID ,
       tp.CreaterID ,
       tp.Post ,
       tp.PostMultiplier ,
       tp.Number ,
       tp.Number1 ,
       tp.NumIncrease ,
       tp.PlayType ,
       tp.PlayAmount ,
	   Digit=LEN(tp.Number),
	   SPlayAmount=(SELECT SUM(stp.TotalAmount) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Post=tp.Post AND tp.Status=stp.Status)
	    , Slast=(SELECT COUNT(stp.Post) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Post=tp.Post  AND tp.Status=stp.Status)
	   ,tp.TotalAmount
	   ,ss=(SELECT SUM(stp.TotalAmount) FROM  dbo.tblPlays stp WHERE tp.PlayDate=stp.PlayDate AND stp.Session=tp.Session AND tp.Status=stp.Status)
 into ##mytemp1  FROM dbo.tblPlays tp
 WHERE 
     CONVERT(VARCHAR(10), tp.PlayDate, 121) = CONVERT(VARCHAR(10), @PlayDate, 121)
	AND tp.Shift=@Shift
	--AND tp.Session=@Session
	AND tp.CustomerID=@CustomerID
	--AND tp.Status=@Status
ORDER BY tp.PlayDate,tp.Shift ,tp.PlayID

select tp.*,SPlayAmounts=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp1 stp)
	, D2=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp1 stp WHERE stp.Digit=2 AND stp.Session=tp.Session AND tp.Status=stp.Status)
	, D3=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp1 stp WHERE stp.Digit=3 AND stp.Session=tp.Session AND tp.Status=stp.Status)
		, SD2=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp1 stp WHERE stp.Digit<>3 AND tp.Status=stp.Status)
	, SD3=(SELECT SUM(stp.TotalAmount) FROM  dbo.##mytemp1 stp WHERE stp.Digit=3 AND tp.Status=stp.Status)
 from ##mytemp1 tp;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_TopPlayamount]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TopPlayamount]
    @Top INT = 1000 ,
    @PlayDate DATE = GETDATE ,
    @SFrom INT = 0 ,
    @STo INT = 0 ,
    @Shift INT = 1,
	@Post NVARCHAR(10) = ''
AS

----TEST
--DECLARE    @Top INT = 1000 ,
--    @PlayDate DATE = '2017-09-13' ,
--    @SFrom INT = 0 ,
--    @STo INT = 10000 ,
--    @Shift INT = 0,
--	@Post NVARCHAR(10) = ''
----END TEST
    IF ( @Shift = 0 )
        BEGIN
            IF ( @STo <= 0 )
                BEGIN
                    SELECT  p.PlayDate ,
                            SUM(ISNULL(sp.PlayAmount, 0)) AS SPlayAmount ,
                            sp.Number ,
                            sp.Post
                    FROM    dbo.tblPlayDetails sp
                            INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
                    WHERE   p.PlayDate = @PlayDate
                            --AND sp.PlayAmount >= @SFrom
							--AND p.Shift=@Shift
                    GROUP BY p.PlayDate ,
                            sp.Post ,
                            sp.Number
                    ORDER BY SUM(sp.PlayAmount) DESC;
                END;
            ELSE
                BEGIN
              
                    SELECT  p.PlayDate ,
                            SUM(ISNULL(sp.PlayAmount, 0)) AS SPlayAmount ,
                            sp.Number ,
                            sp.Post
                    FROM    dbo.tblPlayDetails sp
                            INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
                    WHERE   p.PlayDate = @PlayDate
                            --AND sp.PlayAmount >= @SFrom
                            --AND sp.PlayAmount <= @STo
							--AND p.Shift=@Shift
                    GROUP BY p.PlayDate ,
                            sp.Post ,
                            sp.Number
                    ORDER BY SUM(sp.PlayAmount) DESC;
		
                END;
            
        END;
	ELSE IF ( @Shift = 1 )
        BEGIN
            IF ( @STo <= 0 )
                BEGIN
                    SELECT  p.PlayDate ,
                            SUM(ISNULL(sp.PlayAmount, 0)) AS SPlayAmount ,
                            sp.Number ,
                            sp.Post
                    FROM    dbo.tblPlayDetails sp
                            INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
                    WHERE   p.PlayDate = @PlayDate
                            AND sp.PlayAmount >= @SFrom
							AND p.Shift=@Shift
                    GROUP BY p.PlayDate ,
                            sp.Post ,
                            sp.Number
                    ORDER BY SUM(sp.PlayAmount) DESC;
                END;
            ELSE
                BEGIN
              
                    SELECT  p.PlayDate ,
                            SUM(ISNULL(sp.PlayAmount, 0)) AS SPlayAmount ,
                            sp.Number ,
                            sp.Post
                    FROM    dbo.tblPlayDetails sp
                            INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
                    WHERE   p.PlayDate = @PlayDate
                            AND sp.PlayAmount >= @SFrom
                            AND sp.PlayAmount <= @STo
							AND p.Shift=@Shift
                    GROUP BY p.PlayDate ,
                            sp.Post ,
                            sp.Number
                    ORDER BY SUM(sp.PlayAmount) DESC;
		
                END;
            
        END;
    ELSE IF ( @Shift = 2 )
        BEGIN
                IF ( @STo <= 0 )
                    BEGIN
                        SELECT  p.PlayDate ,
                                SUM(ISNULL(sp.PlayAmount, 0)) AS SPlayAmount ,
                                sp.Number ,
                                sp.Post
                        FROM    dbo.tblPlayDetails sp
                                INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
                        WHERE   p.Shift = @Shift
                                AND p.PlayDate = @PlayDate
                                AND sp.PlayAmount >= @SFrom
                        GROUP BY p.PlayDate ,
                                sp.Post ,
                                sp.Number
                        ORDER BY SUM(sp.PlayAmount) DESC;
                    END;
                ELSE
                    BEGIN
              
                        SELECT  p.PlayDate ,
                                SUM(ISNULL(sp.PlayAmount, 0)) AS SPlayAmount ,
                                sp.Number ,
                                sp.Post
                        FROM    dbo.tblPlayDetails sp
                                INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
                        WHERE   p.Shift = @Shift
                                AND p.PlayDate = @PlayDate
                                AND sp.PlayAmount >= @SFrom
                                AND sp.PlayAmount <= @STo
                        GROUP BY p.PlayDate ,
                                sp.Post ,
                                sp.Number
                        ORDER BY SUM(sp.PlayAmount) DESC;
		
                    END;
            
            END;

GO
/****** Object:  StoredProcedure [dbo].[sp_WPlayamount]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_WPlayamount]
    @PlayDate DATE = '2017-07-31' ,
    @Post NVARCHAR(10) = ''
AS
    IF ( @Post = '' )
        BEGIN
            SELECT  p.PlayDate ,
			--Agency=(SELECT TOP 1 AG.AgencyName FROM dbo.Agencies AG WHERE AG.AgencyID=p.CustomerID)
                    AG.AgencyName ,
                    SUM(sp.PlayAmount) AS SPlayAmount ,
                    sp.Number ,
                    sp.Post
            FROM    dbo.tblPlayDetails sp
                    INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
                    INNER JOIN dbo.Agencies AG ON AG.AgencyID = p.CustomerID
            WHERE   p.PlayDate = @PlayDate
            GROUP BY p.PlayDate ,
                    AG.AgencyName ,
                    sp.Post ,
                    sp.Number
            ORDER BY SUM(sp.PlayAmount) DESC;
        END;
    ELSE
        BEGIN
            SELECT  p.PlayDate ,
			--Agency=(SELECT TOP 1 AG.AgencyName FROM dbo.Agencies AG WHERE AG.AgencyID=p.CustomerID)
                    AG.AgencyName ,
                    SUM(sp.PlayAmount) AS SPlayAmount ,
                    sp.Number ,
                    sp.Post
            FROM    dbo.tblPlayDetails sp
                    INNER JOIN dbo.tblPlays p ON p.PlayID = sp.PlayID
                    INNER JOIN dbo.Agencies AG ON AG.AgencyID = p.CustomerID
            WHERE   p.PlayDate = @PlayDate
            GROUP BY p.PlayDate ,
                    AG.AgencyName ,
                    sp.Post ,
                    sp.Number
            ORDER BY SUM(sp.PlayAmount) DESC;
        END;

GO
/****** Object:  StoredProcedure [dbo].[spGetResult]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetResult]
	@Shift INT = 1
	,@Date DATE = GETDATE

AS
IF(@Shift=1)
	BEGIN
		SELECT * FROM dbo.tblResultSA WHERE ResultDate=FORMAT(@Date, 'yyyy-MM-dd')
	END
ELSE
	BEGIN
		SELECT * FROM dbo.tblResultSE WHERE ResultDate=FORMAT(@Date, 'yyyy-MM-dd')
	END	
GO
/****** Object:  StoredProcedure [dbo].[v_Doc_Detail]    Script Date: 4/19/2018 1:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[v_Doc_Detail]
    @CustomerID INT = -1 ,
    @FDate DATE = NULL ,
    @TDate DATE = NULL
AS
    IF ( @CustomerID > -1 )
        BEGIN
            SELECT  vpd.PlayID ,
                    vpd.PlayDate ,
                    vpd.Shift ,
                    vpd.Session ,
                    vpd.HCommission ,
                    vpd.HRepay ,
                    vpd.CustomerID ,
                    vpd.AgencyName ,
                    vpd.PlayDID ,
                    vpd.Post ,
                    vpd.Number ,
                    vpd.Digit ,
                    vpd.PlayAmount ,
                    vpd.isWin ,
                    vpd.StatusID
            FROM    dbo.v_PlayDetail vpd
            WHERE   vpd.CustomerID = @CustomerID
                    AND vpd.PlayDate BETWEEN @FDate AND @TDate;
        END;
    ELSE
        BEGIN
            SELECT  vpd.PlayID ,
                    vpd.PlayDate ,
                    vpd.Shift ,
                    vpd.Session ,
                    vpd.HCommission ,
                    vpd.HRepay ,
                    vpd.CustomerID ,
                    vpd.AgencyName ,
                    vpd.PlayDID ,
                    vpd.Post ,
                    vpd.Number ,
                    vpd.Digit ,
                    vpd.PlayAmount ,
                    vpd.isWin ,
                    vpd.StatusID
            FROM    dbo.v_PlayDetail vpd
            WHERE   vpd.PlayDate BETWEEN @FDate AND @TDate; 
        END;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Agencies"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblGenders"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 102
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblStatus"
            Begin Extent = 
               Top = 102
               Left = 259
               Bottom = 198
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewAgency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewAgency'
GO
