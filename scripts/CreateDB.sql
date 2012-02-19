USE [master]
GO

/****** Object:  Database [SimpleDataWithTransactionAndStoredProcedureDB]    Script Date: 02/19/2012 07:38:02 ******/
CREATE DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] ON  PRIMARY 
( NAME = N'SimpleDataWithTransactionAndStoredProcedureDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\SimpleDataWithTransactionAndStoredProcedureDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SimpleDataWithTransactionAndStoredProcedureDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\SimpleDataWithTransactionAndStoredProcedureDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SimpleDataWithTransactionAndStoredProcedureDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET  READ_WRITE 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET  MULTI_USER 
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SimpleDataWithTransactionAndStoredProcedureDB] SET DB_CHAINING OFF 
GO


