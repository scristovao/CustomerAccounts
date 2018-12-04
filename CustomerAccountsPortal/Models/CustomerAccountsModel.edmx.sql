
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/04/2018 21:37:25
-- Generated from EDMX file: C:\Users\sonia.cristovao\source\repos\CustomerAccountsPortal\CustomerAccountsPortal\Models\CustomerAccountsModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CustomerAccounts];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[$PACTP]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[$PACTP];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[$PESTC]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[$PESTC];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[$PHBLT]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[$PHBLT];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[$PPAIS]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[$PPAIS];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[$PPROF]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[$PPROF];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[$PREGC]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[$PREGC];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[$PTIDD]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[$PTIDD];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[CTMOV]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[CTMOV];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[FGCMB]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[FGCMB];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[FGGCOT]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[FGGCOT];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCCC]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCCC];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCCO]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCCO];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCCR]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCCR];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCDO]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCDO];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCDP]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCDP];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCLI]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCLI];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCNDM]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCNDM];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCODOP]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCODOP];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCRES]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCRES];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCSTE]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCSTE];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBCSTR]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBCSTR];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBLTIT]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBLTIT];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBMORD]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBMORD];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBMVCC]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBMVCC];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBMVCO]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBMVCO];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBMVCR]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBMVCR];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBMVDO]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBMVDO];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBMVDP]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBMVDP];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBNATR]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBNATR];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBOPR]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBOPR];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBTCLI]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBTCLI];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBTIT]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBTIT];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBTPENT]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBTPENT];
GO
IF OBJECT_ID(N'[CustomerAccountsModelStoreContainer].[GBTRCLI]', 'U') IS NOT NULL
    DROP TABLE [CustomerAccountsModelStoreContainer].[GBTRCLI];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C_PACTP'
CREATE TABLE [dbo].[C_PACTP] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [C_PACTV] varchar(2)  NULL,
    [C_PACDC] varchar(35)  NULL
);
GO

-- Creating table 'C_PESTC'
CREATE TABLE [dbo].[C_PESTC] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [C_EECIV] varchar(1)  NULL,
    [C_EDCIV] varchar(15)  NULL,
    [C_ERCAV] varchar(10)  NULL
);
GO

-- Creating table 'C_PHBLT'
CREATE TABLE [dbo].[C_PHBLT] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [C_9HBTP] varchar(1)  NULL,
    [C_9HBDC] varchar(35)  NULL,
    [C_9SITU] varchar(1)  NULL,
    [C_9USCR] varchar(10)  NULL,
    [C_9DTCR] datetime  NULL,
    [C_9HOCR] datetime  NULL
);
GO

-- Creating table 'C_PPAIS'
CREATE TABLE [dbo].[C_PPAIS] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [C_ASPAI] varchar(2)  NULL,
    [C_ACPAI] varchar(3)  NULL,
    [C_ANPAI] int  NULL,
    [C_ADPAI] varchar(40)  NULL,
    [C_AINDI] varchar(3)  NULL,
    [C_ACID1] varchar(3)  NULL,
    [C_ACID2] varchar(3)  NULL,
    [C_ACID3] varchar(3)  NULL,
    [C_ASITU] varchar(1)  NULL,
    [C_AUSCR] varchar(10)  NULL,
    [C_ADTCR] int  NULL,
    [C_AHOCR] int  NULL,
    [C_AUSDE] varchar(10)  NULL,
    [C_ADTDE] int  NULL,
    [C_AHODE] int  NULL
);
GO

-- Creating table 'C_PPROF'
CREATE TABLE [dbo].[C_PPROF] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [C_PPRPROF] varchar(3)  NULL,
    [C_PPRDESC] varchar(30)  NULL,
    [C_PPRACTV] varchar(10)  NULL
);
GO

-- Creating table 'GBTIT'
CREATE TABLE [dbo].[GBTIT] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [TTNUMT] int  NULL,
    [TTTIPT] varchar(1)  NULL,
    [TTNOMT] varchar(40)  NULL,
    [TTNOME] varchar(40)  NULL,
    [TTNOMR] varchar(14)  NULL,
    [TTDNSC] int  NULL,
    [TTSEXO] varchar(1)  NULL,
    [TTHABL] varchar(1)  NULL,
    [TTACTP] varchar(2)  NULL,
    [GBTTPROF] varchar(3)  NULL,
    [GBTTTIPIDF] varchar(3)  NULL,
    [TTNIF] varchar(15)  NULL,
    [TTBAIR] int  NULL,
    [GBTTCTGFSC] varchar(1)  NULL,
    [TTTIDE] varchar(3)  NULL,
    [TTNIDE] varchar(15)  NULL,
    [GBTTCKDGID] int  NULL,
    [TTLOCA] varchar(20)  NULL,
    [TTDTEI] int  NULL,
    [GBTTDTVAL] int  NULL,
    [GBTTNUMACO] varchar(20)  NULL,
    [GBTTNOCONS] varchar(20)  NULL,
    [GBTTNUPBDO] varchar(20)  NULL,
    [TTNAC] varchar(3)  NULL,
    [TTNATU] varchar(25)  NULL,
    [TTECIV] varchar(1)  NULL,
    [TTRCAS] varchar(1)  NULL,
    [TTPAI] varchar(40)  NULL,
    [TTMAE] varchar(40)  NULL,
    [TTENTP] varchar(40)  NULL,
    [TTFUCA] varchar(40)  NULL,
    [TTDTAD] int  NULL,
    [TTTSOC] varchar(1)  NULL,
    [TTCAE] varchar(6)  NULL,
    [GBTTCAESC] varchar(6)  NULL,
    [TTDTCT] int  NULL,
    [TTDTPB] int  NULL,
    [TTSEDE] varchar(30)  NULL,
    [TTCSRA] int  NULL,
    [TTMOED] varchar(3)  NULL,
    [TTVINC] varchar(2)  NULL,
    [TTNCTR] int  NULL,
    [TTCRES] varchar(1)  NULL,
    [TTCST] varchar(6)  NULL,
    [TTPAIS] varchar(3)  NULL,
    [TTTPEN] varchar(1)  NULL,
    [TTBLOQ] varchar(1)  NULL,
    [GBTTALER] varchar(1)  NULL
);
GO

-- Creating table 'C_PREGC'
CREATE TABLE [dbo].[C_PREGC] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [C_CRCAS] varchar(1)  NULL,
    [C_CDCAS] varchar(20)  NULL
);
GO

-- Creating table 'C_PTIDD'
CREATE TABLE [dbo].[C_PTIDD] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [C_PTITP] varchar(3)  NULL,
    [C_PTIDC] varchar(30)  NULL,
    [C_POLOC] varchar(1)  NULL,
    [C_PSITU] varchar(1)  NULL,
    [C_PPASD] varchar(1)  NULL,
    [C_PIDTIPUTL] varchar(1)  NULL,
    [C_PIDRCLCKD] varchar(10)  NULL,
    [C_PIDPARM1] varchar(40)  NULL,
    [C_PIDPARM2] varchar(40)  NULL,
    [C_PIDTRCKDG] varchar(1)  NULL,
    [C_PIDCARMIN] int  NULL,
    [C_PIDCARMAX] int  NULL
);
GO

-- Creating table 'GBCRES'
CREATE TABLE [dbo].[GBCRES] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [RECRES] varchar(1)  NULL,
    [REDESC] varchar(25)  NULL
);
GO

-- Creating table 'GBCSTE'
CREATE TABLE [dbo].[GBCSTE] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [SECST] varchar(6)  NULL,
    [SESLT] varchar(1)  NULL,
    [SEDESC] varchar(40)  NULL,
    [SEOCPA] varchar(1)  NULL,
    [SEVALE] varchar(1)  NULL
);
GO

-- Creating table 'GBCSTR'
CREATE TABLE [dbo].[GBCSTR] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [SRCST] varchar(6)  NULL,
    [SRSLT] varchar(1)  NULL,
    [SRDESC] varchar(40)  NULL,
    [SROCPA] varchar(1)  NULL,
    [SRVALE] varchar(1)  NULL
);
GO

-- Creating table 'GBTPENT'
CREATE TABLE [dbo].[GBTPENT] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [NITPEN] varchar(1)  NULL,
    [NIDTPE] varchar(30)  NULL,
    [NIPRCV] varchar(1)  NULL,
    [NICOUR] varchar(1)  NULL,
    [NICOCR] varchar(1)  NULL,
    [GBNIIDMIN] int  NULL,
    [GBNIIDMAX] int  NULL,
    [NIUSCR] varchar(10)  NULL,
    [NIDTCR] int  NULL,
    [NIHOCR] int  NULL,
    [NISITU] varchar(1)  NULL
);
GO

-- Creating table 'CTMOV'
CREATE TABLE [dbo].[CTMOV] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'FGCMB'
CREATE TABLE [dbo].[FGCMB] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'FGGCOT'
CREATE TABLE [dbo].[FGGCOT] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBCCC'
CREATE TABLE [dbo].[GBCCC] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBCCO'
CREATE TABLE [dbo].[GBCCO] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBCCR'
CREATE TABLE [dbo].[GBCCR] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBCDO'
CREATE TABLE [dbo].[GBCDO] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBCDP'
CREATE TABLE [dbo].[GBCDP] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBCLI'
CREATE TABLE [dbo].[GBCLI] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBCNDM'
CREATE TABLE [dbo].[GBCNDM] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBCODOP'
CREATE TABLE [dbo].[GBCODOP] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBLTIT'
CREATE TABLE [dbo].[GBLTIT] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBMORD'
CREATE TABLE [dbo].[GBMORD] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBMVCC'
CREATE TABLE [dbo].[GBMVCC] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBMVCO'
CREATE TABLE [dbo].[GBMVCO] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBMVCR'
CREATE TABLE [dbo].[GBMVCR] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBMVDO'
CREATE TABLE [dbo].[GBMVDO] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBMVDP'
CREATE TABLE [dbo].[GBMVDP] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBNATR'
CREATE TABLE [dbo].[GBNATR] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBOPR'
CREATE TABLE [dbo].[GBOPR] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBTCLI'
CREATE TABLE [dbo].[GBTCLI] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'GBTRCLI'
CREATE TABLE [dbo].[GBTRCLI] (
    [ID] bigint IDENTITY(1,1) NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'C_PACTP'
ALTER TABLE [dbo].[C_PACTP]
ADD CONSTRAINT [PK_C_PACTP]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'C_PESTC'
ALTER TABLE [dbo].[C_PESTC]
ADD CONSTRAINT [PK_C_PESTC]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'C_PHBLT'
ALTER TABLE [dbo].[C_PHBLT]
ADD CONSTRAINT [PK_C_PHBLT]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'C_PPAIS'
ALTER TABLE [dbo].[C_PPAIS]
ADD CONSTRAINT [PK_C_PPAIS]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'C_PPROF'
ALTER TABLE [dbo].[C_PPROF]
ADD CONSTRAINT [PK_C_PPROF]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBTIT'
ALTER TABLE [dbo].[GBTIT]
ADD CONSTRAINT [PK_GBTIT]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'C_PREGC'
ALTER TABLE [dbo].[C_PREGC]
ADD CONSTRAINT [PK_C_PREGC]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'C_PTIDD'
ALTER TABLE [dbo].[C_PTIDD]
ADD CONSTRAINT [PK_C_PTIDD]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCRES'
ALTER TABLE [dbo].[GBCRES]
ADD CONSTRAINT [PK_GBCRES]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCSTE'
ALTER TABLE [dbo].[GBCSTE]
ADD CONSTRAINT [PK_GBCSTE]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCSTR'
ALTER TABLE [dbo].[GBCSTR]
ADD CONSTRAINT [PK_GBCSTR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBTPENT'
ALTER TABLE [dbo].[GBTPENT]
ADD CONSTRAINT [PK_GBTPENT]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CTMOV'
ALTER TABLE [dbo].[CTMOV]
ADD CONSTRAINT [PK_CTMOV]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'FGCMB'
ALTER TABLE [dbo].[FGCMB]
ADD CONSTRAINT [PK_FGCMB]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'FGGCOT'
ALTER TABLE [dbo].[FGGCOT]
ADD CONSTRAINT [PK_FGGCOT]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCCC'
ALTER TABLE [dbo].[GBCCC]
ADD CONSTRAINT [PK_GBCCC]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCCO'
ALTER TABLE [dbo].[GBCCO]
ADD CONSTRAINT [PK_GBCCO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCCR'
ALTER TABLE [dbo].[GBCCR]
ADD CONSTRAINT [PK_GBCCR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCDO'
ALTER TABLE [dbo].[GBCDO]
ADD CONSTRAINT [PK_GBCDO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCDP'
ALTER TABLE [dbo].[GBCDP]
ADD CONSTRAINT [PK_GBCDP]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCLI'
ALTER TABLE [dbo].[GBCLI]
ADD CONSTRAINT [PK_GBCLI]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCNDM'
ALTER TABLE [dbo].[GBCNDM]
ADD CONSTRAINT [PK_GBCNDM]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBCODOP'
ALTER TABLE [dbo].[GBCODOP]
ADD CONSTRAINT [PK_GBCODOP]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBLTIT'
ALTER TABLE [dbo].[GBLTIT]
ADD CONSTRAINT [PK_GBLTIT]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBMORD'
ALTER TABLE [dbo].[GBMORD]
ADD CONSTRAINT [PK_GBMORD]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBMVCC'
ALTER TABLE [dbo].[GBMVCC]
ADD CONSTRAINT [PK_GBMVCC]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBMVCO'
ALTER TABLE [dbo].[GBMVCO]
ADD CONSTRAINT [PK_GBMVCO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBMVCR'
ALTER TABLE [dbo].[GBMVCR]
ADD CONSTRAINT [PK_GBMVCR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBMVDO'
ALTER TABLE [dbo].[GBMVDO]
ADD CONSTRAINT [PK_GBMVDO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBMVDP'
ALTER TABLE [dbo].[GBMVDP]
ADD CONSTRAINT [PK_GBMVDP]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBNATR'
ALTER TABLE [dbo].[GBNATR]
ADD CONSTRAINT [PK_GBNATR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBOPR'
ALTER TABLE [dbo].[GBOPR]
ADD CONSTRAINT [PK_GBOPR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBTCLI'
ALTER TABLE [dbo].[GBTCLI]
ADD CONSTRAINT [PK_GBTCLI]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'GBTRCLI'
ALTER TABLE [dbo].[GBTRCLI]
ADD CONSTRAINT [PK_GBTRCLI]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------