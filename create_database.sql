USE [master]
GO

/****** Database [TheCoffeeBreak] ******/
CREATE DATABASE [CafeSanchez]
GO

USE [CafeSanchez]
GO

/****** Table [Orders] ******/
CREATE TABLE [Orders](
	[Id] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [nvarchar](50) DEFAULT (N'New') NOT NULL,
	[Discount] [int] DEFAULT ((0)) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL
) 
GO

/****** Table [Products] n******/
CREATE TABLE [Products](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NULL
) 
GO

/****** Table [OrderLines] ******/
CREATE TABLE [OrderLines](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
) 
GO