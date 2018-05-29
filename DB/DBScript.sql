USE [master]
GO
/****** Object:  Database [DD]    Script Date: 2018/5/29  17:36:58 ******/
CREATE DATABASE [DD] ON  PRIMARY 
( NAME = N'DD', FILENAME = N'E:\DOTNET_WEB_DD\DB\DD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DD_log', FILENAME = N'E:\DOTNET_WEB_DD\DB\DD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DD] SET ARITHABORT OFF 
GO
ALTER DATABASE [DD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DD] SET RECOVERY FULL 
GO
ALTER DATABASE [DD] SET  MULTI_USER 
GO
ALTER DATABASE [DD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DD] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DD', N'ON'
GO
USE [DD]
GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2018/5/29  17:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_User](
	[ID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EditTime] [datetime] NULL,
	[EditMan] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'EditTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'EditMan'
GO
USE [master]
GO
ALTER DATABASE [DD] SET  READ_WRITE 
GO
