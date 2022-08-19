USE [master]
GO
/****** Object:  Database [PRSistemas]    Script Date: 18/08/2022 22:56:23 ******/
CREATE DATABASE [PRSistemas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRSistemas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\PRSistemas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRSistemas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\PRSistemas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PRSistemas] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRSistemas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRSistemas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRSistemas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRSistemas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRSistemas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRSistemas] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRSistemas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRSistemas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRSistemas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRSistemas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRSistemas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRSistemas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRSistemas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRSistemas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRSistemas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRSistemas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRSistemas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRSistemas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRSistemas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRSistemas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRSistemas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRSistemas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRSistemas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRSistemas] SET RECOVERY FULL 
GO
ALTER DATABASE [PRSistemas] SET  MULTI_USER 
GO
ALTER DATABASE [PRSistemas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRSistemas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRSistemas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRSistemas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRSistemas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRSistemas', N'ON'
GO
ALTER DATABASE [PRSistemas] SET QUERY_STORE = OFF
GO
USE [PRSistemas]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [PRSistemas]
GO
/****** Object:  Table [dbo].[ENDERECO]    Script Date: 18/08/2022 22:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENDERECO](
	[CPF] [varchar](50) NOT NULL,
	[CEP] [int] NOT NULL,
	[ENDERECO] [varchar](150) NULL,
	[NUMERO] [int] NOT NULL,
	[CIDADE] [varchar](50) NULL,
	[ESTADO] [varchar](3) NULL,
	[BAIRRO] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PESSOA]    Script Date: 18/08/2022 22:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PESSOA](
	[NOME] [varchar](50) NULL,
	[CPF] [varchar](50) NOT NULL,
	[RG] [int] NULL,
	[NOME_MAE] [varchar](50) NULL,
	[NOME_PAI] [varchar](50) NULL,
 CONSTRAINT [PK_PESSOA] PRIMARY KEY CLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ENDERECO]    Script Date: 18/08/2022 22:56:23 ******/
CREATE NONCLUSTERED INDEX [IX_ENDERECO] ON [dbo].[ENDERECO]
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ENDERECO]  WITH CHECK ADD  CONSTRAINT [FK_ENDERECO_PESSOA] FOREIGN KEY([CPF])
REFERENCES [dbo].[PESSOA] ([CPF])
GO
ALTER TABLE [dbo].[ENDERECO] CHECK CONSTRAINT [FK_ENDERECO_PESSOA]
GO
USE [master]
GO
ALTER DATABASE [PRSistemas] SET  READ_WRITE 
GO
