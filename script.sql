USE [master]
GO
/****** Object:  Database [BOA]    Script Date: 06/10/2023 08:16:40 p. m. ******/
CREATE DATABASE [BOA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BOA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BOA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BOA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BOA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BOA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BOA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BOA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BOA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BOA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BOA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BOA] SET ARITHABORT OFF 
GO
ALTER DATABASE [BOA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BOA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BOA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BOA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BOA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BOA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BOA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BOA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BOA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BOA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BOA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BOA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BOA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BOA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BOA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BOA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BOA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BOA] SET RECOVERY FULL 
GO
ALTER DATABASE [BOA] SET  MULTI_USER 
GO
ALTER DATABASE [BOA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BOA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BOA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BOA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BOA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BOA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BOA', N'ON'
GO
ALTER DATABASE [BOA] SET QUERY_STORE = ON
GO
ALTER DATABASE [BOA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BOA]
GO
/****** Object:  Table [dbo].[datos_beneficiarios]    Script Date: 06/10/2023 08:16:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datos_beneficiarios](
	[IdBeneficiario] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[DireccionResidencial] [varchar](100) NULL,
	[NumeroTelMovil] [int] NULL,
	[NumeroTelResidencial] [int] NULL,
	[Parentesco] [varchar](30) NULL,
	[Porcentaje] [varchar](10) NULL,
	[Fk_IdDatosPersonales] [int] NULL,
 CONSTRAINT [PK_datos_beneficiarios] PRIMARY KEY CLUSTERED 
(
	[IdBeneficiario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datos_laborales]    Script Date: 06/10/2023 08:16:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datos_laborales](
	[IdLaboral] [int] NOT NULL,
	[NombreEmpresa] [varchar](50) NULL,
	[NumeroTel] [int] NULL,
	[Extension] [int] NULL,
	[CargoPuesto] [varchar](30) NULL,
	[FechaIngreso] [date] NULL,
	[IngresosMensualesQuetzalez] [int] NULL,
	[Fk_IdDatosPersonales] [int] NULL,
 CONSTRAINT [PK_datos_laborales] PRIMARY KEY CLUSTERED 
(
	[IdLaboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datos_personales]    Script Date: 06/10/2023 08:16:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datos_personales](
	[IdDatosPersonales] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[DPI] [int] NULL,
	[DireccionResidenci] [varchar](100) NULL,
	[Correo] [varchar](50) NULL,
	[NumeroTelRecidencial] [int] NULL,
	[NumeroTelMovil] [int] NULL,
 CONSTRAINT [PK_datos_personales] PRIMARY KEY CLUSTERED 
(
	[IdDatosPersonales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datos_referencia]    Script Date: 06/10/2023 08:16:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datos_referencia](
	[IdReferencias] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[NumeroTelResidencial] [int] NULL,
	[NumeroTelMovil] [int] NULL,
	[Fk_IdDatosPersonales] [int] NULL,
 CONSTRAINT [PK_datos_referencia] PRIMARY KEY CLUSTERED 
(
	[IdReferencias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documentos]    Script Date: 06/10/2023 08:16:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentos](
	[IdDocumentos] [int] NOT NULL,
	[CopiaDPI] [varchar](100) NULL,
	[Fotografia] [varchar](100) NULL,
	[Fk_IdDatosPersonales] [int] NULL,
 CONSTRAINT [PK_documentos] PRIMARY KEY CLUSTERED 
(
	[IdDocumentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[datos_beneficiarios]  WITH CHECK ADD FOREIGN KEY([Fk_IdDatosPersonales])
REFERENCES [dbo].[datos_personales] ([IdDatosPersonales])
GO
ALTER TABLE [dbo].[datos_laborales]  WITH CHECK ADD FOREIGN KEY([Fk_IdDatosPersonales])
REFERENCES [dbo].[datos_personales] ([IdDatosPersonales])
GO
ALTER TABLE [dbo].[datos_referencia]  WITH CHECK ADD FOREIGN KEY([Fk_IdDatosPersonales])
REFERENCES [dbo].[datos_personales] ([IdDatosPersonales])
GO
ALTER TABLE [dbo].[documentos]  WITH CHECK ADD FOREIGN KEY([Fk_IdDatosPersonales])
REFERENCES [dbo].[datos_personales] ([IdDatosPersonales])
GO
USE [master]
GO
ALTER DATABASE [BOA] SET  READ_WRITE 
GO
