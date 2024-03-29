USE [master]
GO
/****** Object:  Database [AgenciaViajes]    Script Date: 24/1/2018 07:30:33 ******/
CREATE DATABASE [AgenciaViajes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgenciaViajes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AgenciaViajes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgenciaViajes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AgenciaViajes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AgenciaViajes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgenciaViajes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgenciaViajes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgenciaViajes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgenciaViajes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgenciaViajes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgenciaViajes] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgenciaViajes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AgenciaViajes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgenciaViajes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgenciaViajes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgenciaViajes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgenciaViajes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgenciaViajes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgenciaViajes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgenciaViajes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgenciaViajes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AgenciaViajes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgenciaViajes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgenciaViajes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgenciaViajes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgenciaViajes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgenciaViajes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AgenciaViajes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgenciaViajes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgenciaViajes] SET  MULTI_USER 
GO
ALTER DATABASE [AgenciaViajes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgenciaViajes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgenciaViajes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgenciaViajes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgenciaViajes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgenciaViajes] SET QUERY_STORE = OFF
GO
USE [AgenciaViajes]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [AgenciaViajes]
GO
/****** Object:  Table [dbo].[AbonoFactura]    Script Date: 24/1/2018 07:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbonoFactura](
	[IdAbono] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Monto] [money] NULL,
	[IdFactura] [nvarchar](10) NULL,
 CONSTRAINT [PK_AbonoFactura] PRIMARY KEY CLUSTERED 
(
	[IdAbono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agencia]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agencia](
	[IdAgencia] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Agencia] PRIMARY KEY CLUSTERED 
(
	[IdAgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalificacionHotel]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalificacionHotel](
	[IdCalificacion] [nvarchar](10) NOT NULL,
	[Calificacion] [int] NULL,
 CONSTRAINT [PK_CalificacionHotel] PRIMARY KEY CLUSTERED 
(
	[IdCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [nvarchar](10) NOT NULL,
	[Cedula] [nvarchar](10) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido1] [nvarchar](50) NULL,
	[Apellido2] [nvarchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[Pasaporte] [nvarchar](10) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente-Especificacion]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente-Especificacion](
	[IdCE] [nvarchar](10) NOT NULL,
	[IdCliente] [nvarchar](10) NULL,
	[IdEspecificacion] [nvarchar](10) NULL,
 CONSTRAINT [PK_Cliente-Especificacion] PRIMARY KEY CLUSTERED 
(
	[IdCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente-Idioma]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente-Idioma](
	[IdCI] [nvarchar](10) NOT NULL,
	[IdCliente] [nvarchar](10) NULL,
	[IdIdioma] [nvarchar](10) NULL,
	[Nativo] [bit] NULL,
 CONSTRAINT [PK_Cliente-Idioma] PRIMARY KEY CLUSTERED 
(
	[IdCI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DestinoTuristico]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DestinoTuristico](
	[IdLocalidad] [nvarchar](10) NOT NULL,
	[IdUbicacion] [nvarchar](10) NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[IdLocalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleFactura](
	[IdLinea] [nvarchar](10) NOT NULL,
	[IdFactura] [nvarchar](10) NULL,
	[IdReservacion] [int] NULL,
	[Precio] [money] NULL,
	[Cantidad] [int] NULL,
	[CantidadPersonas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleReporte]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleReporte](
	[IdLinea] [int] NOT NULL,
	[IdReporte] [nvarchar](10) NULL,
	[Titulo] [nvarchar](50) NULL,
	[Detalle] [nvarchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [nvarchar](10) NOT NULL,
	[Cedula] [nvarchar](10) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido1] [nvarchar](50) NULL,
	[Apellido2] [nvarchar](50) NULL,
	[FechaContrato] [date] NULL,
	[IdPuesto] [nvarchar](10) NULL,
	[Salario] [money] NULL,
	[PorcentajeComision] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado-Sucursal]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado-Sucursal](
	[IdES] [int] NOT NULL,
	[IdEmpleado] [nvarchar](10) NULL,
	[IdSucursal] [nvarchar](10) NULL,
	[Detalle] [nvarchar](200) NULL,
 CONSTRAINT [PK_Empleado-Sucursal] PRIMARY KEY CLUSTERED 
(
	[IdES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especificacion]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especificacion](
	[IdEspecificacion] [nvarchar](10) NOT NULL,
	[Titulo] [nvarchar](30) NULL,
	[Detalle] [nvarchar](200) NULL,
 CONSTRAINT [PK_Especificacion] PRIMARY KEY CLUSTERED 
(
	[IdEspecificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[IdFactura] [nvarchar](10) NOT NULL,
	[IdVendedor] [nvarchar](10) NULL,
	[IdCliente] [nvarchar](10) NULL,
	[IdModoPago] [nvarchar](10) NULL,
	[Fecha] [date] NULL,
	[MontoTotal] [money] NULL,
	[MontoPagado] [money] NULL,
	[EstadoPago] [bit] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GarantiaHotel]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GarantiaHotel](
	[IdGarantia] [nvarchar](10) NOT NULL,
	[Descripcion] [nvarchar](200) NULL,
 CONSTRAINT [PK_GarantiaHotel] PRIMARY KEY CLUSTERED 
(
	[IdGarantia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guia-Idioma]    Script Date: 24/1/2018 07:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guia-Idioma](
	[IdGI] [nvarchar](10) NOT NULL,
	[IdGuia] [nvarchar](10) NULL,
	[IdIdioma] [nvarchar](10) NULL,
 CONSTRAINT [PK_Guia-Idioma] PRIMARY KEY CLUSTERED 
(
	[IdGI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuiaTuristico]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuiaTuristico](
	[IdGuia] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido1] [nvarchar](50) NULL,
	[Apellido2] [nvarchar](50) NULL,
	[Cedula] [nvarchar](10) NULL,
	[IdUbicacion] [nvarchar](10) NULL,
 CONSTRAINT [PK_GuiaTuristico] PRIMARY KEY CLUSTERED 
(
	[IdGuia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[IdHotel] [nvarchar](10) NOT NULL,
	[IdUbicacion] [nvarchar](10) NULL,
	[Nombre] [nvarchar](50) NULL,
	[IdCalificacion] [nvarchar](10) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[IdIdioma] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModoPago]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModoPago](
	[IdModoPago] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](30) NULL,
	[Detalle] [nvarchar](200) NULL,
 CONSTRAINT [PK_ModoPago] PRIMARY KEY CLUSTERED 
(
	[IdModoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoPaquete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoPaquete](
	[IdPagoPaquete] [nvarchar](10) NOT NULL,
	[IdPaquete] [nvarchar](10) NULL,
	[IdPromocion] [nvarchar](10) NULL,
	[PrecioRegular] [money] NULL,
	[CantidadPersonas] [int] NULL,
 CONSTRAINT [PK_PagoPaquete] PRIMARY KEY CLUSTERED 
(
	[IdPagoPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paquete-DestinoTuristico]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete-DestinoTuristico](
	[IdPDT] [nvarchar](10) NOT NULL,
	[IdPaquete] [nvarchar](10) NOT NULL,
	[IdLocalidad] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Paquete-Localidad] PRIMARY KEY CLUSTERED 
(
	[IdPDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paquete-Idioma]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete-Idioma](
	[IdPaqueteIdioma] [nvarchar](10) NOT NULL,
	[IdPaquete] [nvarchar](10) NULL,
	[IdIdioma] [nvarchar](10) NULL,
 CONSTRAINT [PK_Paquete-Idioma] PRIMARY KEY CLUSTERED 
(
	[IdPaqueteIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaqueteViaje]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaqueteViaje](
	[IdPaquete] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](200) NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_PaqueteViaje] PRIMARY KEY CLUSTERED 
(
	[IdPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDT-Guia]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDT-Guia](
	[IdPG] [nvarchar](10) NOT NULL,
	[IdPDT] [nvarchar](10) NULL,
	[IdGuia] [nvarchar](10) NULL,
 CONSTRAINT [PK_Paquete-Guia] PRIMARY KEY CLUSTERED 
(
	[IdPG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDT-Hotel]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDT-Hotel](
	[IdPH] [nvarchar](10) NOT NULL,
	[IdPDT] [nvarchar](10) NULL,
	[IdHotel] [nvarchar](10) NULL,
 CONSTRAINT [PK_Paquete-Hotel] PRIMARY KEY CLUSTERED 
(
	[IdPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDT-Hotel-Garantias]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDT-Hotel-Garantias](
	[IdPHG] [nvarchar](10) NOT NULL,
	[IdGarantia] [nvarchar](10) NULL,
	[IdPaqueteHotel] [nvarchar](10) NULL,
 CONSTRAINT [PK_PaqueteHotel-Garantia] PRIMARY KEY CLUSTERED 
(
	[IdPHG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDT-Viaje]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDT-Viaje](
	[IdViaje] [nvarchar](10) NOT NULL,
	[IdPDT] [nvarchar](10) NULL,
	[TerminalSalida] [nvarchar](10) NULL,
	[TerminalLlegada] [nvarchar](10) NULL,
	[FechaHoraSalida] [datetime] NULL,
	[FechaHoraLlegada] [datetime] NULL,
	[IdTransporte] [nvarchar](10) NULL,
 CONSTRAINT [PK_Vuelo] PRIMARY KEY CLUSTERED 
(
	[IdViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promocion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promocion](
	[IdPromocion] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](200) NULL,
	[Porcentaje] [int] NULL,
 CONSTRAINT [PK_Promocion] PRIMARY KEY CLUSTERED 
(
	[IdPromocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PuestoTrabajo]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PuestoTrabajo](
	[IdPuesto] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](200) NULL,
 CONSTRAINT [PK_PuestoTrabajo] PRIMARY KEY CLUSTERED 
(
	[IdPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reporte]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporte](
	[IdReporte] [nvarchar](10) NOT NULL,
	[Emisor] [nvarchar](10) NULL,
	[Receptor] [nvarchar](10) NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Reporte] PRIMARY KEY CLUSTERED 
(
	[IdReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[IdReservacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [nvarchar](10) NULL,
	[IdPaquete] [nvarchar](10) NULL,
	[CantidadPersonas] [int] NULL,
	[CantidadPaquetes] [int] NULL,
 CONSTRAINT [PK_ReservacionPaquete] PRIMARY KEY CLUSTERED 
(
	[IdReservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion-Habitacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion-Habitacion](
	[IdRH] [int] NOT NULL,
	[IdReservacion] [int] NULL,
	[IdHotel] [nvarchar](10) NULL,
	[Habitacion] [nvarchar](10) NULL,
 CONSTRAINT [PK_Reservacion-Habitacion] PRIMARY KEY CLUSTERED 
(
	[IdRH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion-Transporte]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion-Transporte](
	[IdRT] [int] NOT NULL,
	[IdReservacion] [int] NULL,
	[IdTransporte] [nvarchar](10) NULL,
	[Aciento] [nvarchar](10) NULL,
 CONSTRAINT [PK_Reservacion-Transporte] PRIMARY KEY CLUSTERED 
(
	[IdRT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[IdUbicacion] [nvarchar](10) NULL,
	[IdAdministrador] [nvarchar](10) NULL,
	[IdAgencia] [int] NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terminal]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terminal](
	[IdTerminal] [nvarchar](10) NOT NULL,
	[IdUbicacion] [nvarchar](10) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Detalle] [nvarchar](200) NULL,
 CONSTRAINT [PK_Aeropuerto] PRIMARY KEY CLUSTERED 
(
	[IdTerminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTransporte]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTransporte](
	[IdTipoTransporte] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Detalle] [nvarchar](300) NULL,
 CONSTRAINT [PK_TipoTransporte] PRIMARY KEY CLUSTERED 
(
	[IdTipoTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transporte](
	[IdVehiculo] [nvarchar](10) NOT NULL,
	[IdTipoTransporte] [nvarchar](10) NULL,
	[Detalle] [nvarchar](50) NULL,
	[CapacidadMaxima] [int] NULL,
 CONSTRAINT [PK_Transporte] PRIMARY KEY CLUSTERED 
(
	[IdVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[IdUbicacion] [nvarchar](10) NOT NULL,
	[IdPais] [nvarchar](10) NULL,
	[IdCiudad] [nvarchar](10) NULL,
	[Detalle] [nvarchar](200) NULL,
 CONSTRAINT [PK_Ubicacion] PRIMARY KEY CLUSTERED 
(
	[IdUbicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PagoPaquete] ADD  CONSTRAINT [DF_PagoPaquete_IdPaquete]  DEFAULT ('No') FOR [IdPaquete]
GO
ALTER TABLE [dbo].[PagoPaquete] ADD  CONSTRAINT [DF_PagoPaquete_IdPromocion]  DEFAULT ('NoPromo') FOR [IdPromocion]
GO
/****** Object:  StoredProcedure [dbo].[AbonoFacturaInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AbonoFacturaInsert]
(
	@Fecha date,
	@Monto money,
	@IdFactura nvarchar(10)
)

as

set nocount on

if not exists(select * from AbonoFactura a where a.IdAbono= @IdFactura)
	begin
	if exists(select * from Factura f where f.IdFactura = @IdFactura)
		begin
		insert into [AbonoFactura]
		(
			[Fecha],
			[Monto],
			[IdFactura]
		)
		values
		(
			@Fecha,
			@Monto,
			@IdFactura
		)
		end
	else
		begin
		Raiserror('El id de factura no existe',0,0)
		end
	end

else
	begin
	Raiserror('El id ya existe',0,0)
	end
select scope_identity()
GO
/****** Object:  StoredProcedure [dbo].[AgenciaDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AgenciaDelete]
(
	@IdAgencia int
)

as

set nocount on

delete from [Agencia]
where [IdAgencia] = @IdAgencia
GO
/****** Object:  StoredProcedure [dbo].[AgenciaInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AgenciaInsert]
(
	@IdAgencia int,
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200)
)

as

set nocount on

insert into [Agencia]
(
	[IdAgencia],
	[Nombre],
	[Descripcion]
)
values
(
	@IdAgencia,
	@Nombre,
	@Descripcion
)
GO
/****** Object:  StoredProcedure [dbo].[AgenciaSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AgenciaSelect]
(
	@IdAgencia int
)

as

set nocount on

select [IdAgencia],
	[Nombre],
	[Descripcion]
from [Agencia]
where [IdAgencia] = @IdAgencia
GO
/****** Object:  StoredProcedure [dbo].[AgenciaSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AgenciaSelectAll]

as

set nocount on

select [IdAgencia],
	[Nombre],
	[Descripcion]
from [Agencia]
GO
/****** Object:  StoredProcedure [dbo].[AgenciaUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AgenciaUpdate]
(
	@IdAgencia int,
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200)
)

as

set nocount on

update [Agencia]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion
where [IdAgencia] = @IdAgencia
GO
/****** Object:  StoredProcedure [dbo].[CalificacionHotelDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CalificacionHotelDelete]
(
	@IdCalificacion nvarchar(10)
)

as

set nocount on

delete from [CalificacionHotel]
where [IdCalificacion] = @IdCalificacion
GO
/****** Object:  StoredProcedure [dbo].[CalificacionHotelInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CalificacionHotelInsert]
(
	@IdCalificacion nvarchar(10),
	@Calificacion int
)

as

set nocount on

insert into [CalificacionHotel]
(
	[IdCalificacion],
	[Calificacion]
)
values
(
	@IdCalificacion,
	@Calificacion
)
GO
/****** Object:  StoredProcedure [dbo].[CalificacionHotelSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CalificacionHotelSelect]
(
	@IdCalificacion nvarchar(10)
)

as

set nocount on

select [IdCalificacion],
	[Calificacion]
from [CalificacionHotel]
where [IdCalificacion] = @IdCalificacion
GO
/****** Object:  StoredProcedure [dbo].[CalificacionHotelSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CalificacionHotelSelectAll]

as

set nocount on

select [IdCalificacion],
	[Calificacion]
from [CalificacionHotel]
GO
/****** Object:  StoredProcedure [dbo].[CalificacionHotelUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CalificacionHotelUpdate]
(
	@IdCalificacion nvarchar(10),
	@Calificacion int
)

as

set nocount on

update [CalificacionHotel]
set [Calificacion] = @Calificacion
where [IdCalificacion] = @IdCalificacion
GO
/****** Object:  StoredProcedure [dbo].[CiudadDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CiudadDelete]
(
	@IdCiudad nvarchar(10)
)

as

set nocount on

delete from [Ciudad]
where [IdCiudad] = @IdCiudad
GO
/****** Object:  StoredProcedure [dbo].[CiudadInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CiudadInsert]
(
	@IdCiudad nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(100)
)

as

set nocount on

insert into [Ciudad]
(
	[IdCiudad],
	[Nombre],
	[Descripcion]
)
values
(
	@IdCiudad,
	@Nombre,
	@Descripcion
)
GO
/****** Object:  StoredProcedure [dbo].[CiudadSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CiudadSelect]
(
	@IdCiudad nvarchar(10)
)

as

set nocount on

select [IdCiudad],
	[Nombre],
	[Descripcion]
from [Ciudad]
where [IdCiudad] = @IdCiudad
GO
/****** Object:  StoredProcedure [dbo].[CiudadSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CiudadSelectAll]

as

set nocount on

select [IdCiudad],
	[Nombre],
	[Descripcion]
from [Ciudad]
GO
/****** Object:  StoredProcedure [dbo].[CiudadUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[CiudadUpdate]
(
	@IdCiudad nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(100)
)

as

set nocount on

update [Ciudad]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion
where [IdCiudad] = @IdCiudad
GO
/****** Object:  StoredProcedure [dbo].[ClienteDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ClienteDelete]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

delete from [Cliente]
where [IdCliente] = @IdCliente
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionDelete]
(
	@IdCE nvarchar(10)
)

as

set nocount on

delete from [Cliente-Especificacion]
where [IdCE] = @IdCE
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionDeleteAllByIdCliente]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionDeleteAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

delete from [Cliente-Especificacion]
where [IdCliente] = @IdCliente
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionDeleteAllByIdEspecificacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionDeleteAllByIdEspecificacion]
(
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

delete from [Cliente-Especificacion]
where [IdEspecificacion] = @IdEspecificacion
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionInsert]
(
	@IdCE nvarchar(10),
	@IdCliente nvarchar(10),
	@IdEspecificacion nvarchar(10)
)

as

set nocount on
if not exists(select * from [Cliente-Especificacion] e where e.IdCE = @IdCE)
begin
if exists(select * from Cliente p where p.IdCliente = @IdCliente)
begin
if exists(select * from Especificacion p where p.IdEspecificacion = @IdEspecificacion)
begin


insert into [Cliente-Especificacion]
(
	[IdCE],
	[IdCliente],
	[IdEspecificacion]
)
values
(
	@IdCE,
	@IdCliente,
	@IdEspecificacion
)
END
else
	begin
	Raiserror('El id de esp no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de cliente no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionSelect]
(
	@IdCE nvarchar(10)
)

as

set nocount on

select [IdCE],
	[IdCliente],
	[IdEspecificacion]
from [Cliente-Especificacion]
where [IdCE] = @IdCE
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionSelectAll]

as

set nocount on

select [IdCE],
	[IdCliente],
	[IdEspecificacion]
from [Cliente-Especificacion]
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionSelectAllByIdCliente]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionSelectAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

select [IdCE],
	[IdCliente],
	[IdEspecificacion]
from [Cliente-Especificacion]
where [IdCliente] = @IdCliente
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionSelectAllByIdEspecificacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionSelectAllByIdEspecificacion]
(
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

select [IdCE],
	[IdCliente],
	[IdEspecificacion]
from [Cliente-Especificacion]
where [IdEspecificacion] = @IdEspecificacion
GO
/****** Object:  StoredProcedure [dbo].[Cliente-EspecificacionUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-EspecificacionUpdate]
(
	@IdCE nvarchar(10),
	@IdCliente nvarchar(10),
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

update [Cliente-Especificacion]
set [IdCliente] = @IdCliente,
	[IdEspecificacion] = @IdEspecificacion
where [IdCE] = @IdCE
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaDelete]
(
	@IdCI nvarchar(10)
)

as

set nocount on

delete from [Cliente-Idioma]
where [IdCI] = @IdCI
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaDeleteAllByIdCliente]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaDeleteAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

delete from [Cliente-Idioma]
where [IdCliente] = @IdCliente
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaDeleteAllByIdIdioma]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaDeleteAllByIdIdioma]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

delete from [Cliente-Idioma]
where [IdIdioma] = @IdIdioma
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaInsert]
(
	@IdCI nvarchar(10),
	@IdCliente nvarchar(10),
	@IdIdioma nvarchar(10),
	@Nativo bit
)

as

set nocount on
if not exists(select * from [Cliente-Idioma] e where e.IdCI = @IdCI)
begin
if exists(select * from Cliente p where p.IdCliente = @IdCliente)
begin
if exists(select * from Idioma p where p.IdIdioma = @IdIdioma)
begin


insert into [Cliente-Idioma]
(
	[IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
)
values
(
	@IdCI,
	@IdCliente,
	@IdIdioma,
	@Nativo
)

end
else
	begin
	Raiserror('El id de idioma no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de cliente no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaSelect]
(
	@IdCI nvarchar(10)
)

as

set nocount on

select [IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
from [Cliente-Idioma]
where [IdCI] = @IdCI
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaSelectAll]

as

set nocount on

select [IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
from [Cliente-Idioma]
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaSelectAllByIdCliente]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaSelectAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

select [IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
from [Cliente-Idioma]
where [IdCliente] = @IdCliente
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaSelectAllByIdIdioma]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaSelectAllByIdIdioma]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

select [IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
from [Cliente-Idioma]
where [IdIdioma] = @IdIdioma
GO
/****** Object:  StoredProcedure [dbo].[Cliente-IdiomaUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Cliente-IdiomaUpdate]
(
	@IdCI nvarchar(10),
	@IdCliente nvarchar(10),
	@IdIdioma nvarchar(10),
	@Nativo bit
)

as

set nocount on

update [Cliente-Idioma]
set [IdCliente] = @IdCliente,
	[IdIdioma] = @IdIdioma,
	[Nativo] = @Nativo
where [IdCI] = @IdCI
GO
/****** Object:  StoredProcedure [dbo].[ClienteInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ClienteInsert]
(
	@IdCliente nvarchar(10),
	@Cedula nvarchar(10),
	@Nombre nvarchar(50),
	@Apellido1 nvarchar(50),
	@Apellido2 nvarchar(50),
	@FechaNacimiento date,
	@Pasaporte nvarchar(10)
)

as

set nocount on
if not exists(select * from Cliente e where e.IdCliente = @IdCliente)
begin


insert into [Cliente]
(
	[IdCliente],
	[Cedula],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[FechaNacimiento],
	[Pasaporte]
)
values
(
	@IdCliente,
	@Cedula,
	@Nombre,
	@Apellido1,
	@Apellido2,
	@FechaNacimiento,
	@Pasaporte
)

end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[ClienteSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ClienteSelect]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

select [IdCliente],
	[Cedula],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[FechaNacimiento],
	[Pasaporte]
from [Cliente]
where [IdCliente] = @IdCliente
GO
/****** Object:  StoredProcedure [dbo].[ClienteSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ClienteSelectAll]

as

set nocount on

select [IdCliente],
	[Cedula],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[FechaNacimiento],
	[Pasaporte]
from [Cliente]
GO
/****** Object:  StoredProcedure [dbo].[ClientesMasFrecuentes]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ClientesMasFrecuentes] @Fecha1 date, @Fecha2 date, @IdSucursal nvarchar(10)
AS
BEGIN
	Select c.IdCliente, Count(d.IdLinea) as 'Cantidad Compras'
	From PaqueteViaje pv
	inner join Reservacion r on r.IdPaquete = pv.IdPaquete
	inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
	inner join Factura f on f.IdFactura = d.IdFactura
	inner join Empleado e on e.IdEmpleado = f.IdVendedor
	inner join [Empleado-Sucursal] es on es.IdEmpleado = e.IdEmpleado
	inner join Cliente c on c.IdCliente = f.IdCliente
	Where ISNULL(@IdSucursal, es.IdSucursal) = es.IdSucursal and
	f.Fecha between ISNULL(@Fecha1,'19000101') and ISNULL(@Fecha2, GETDATE())
	Group by c.IdCliente
	Order by [Cantidad Compras]

END
GO
/****** Object:  StoredProcedure [dbo].[DestinoTuristicoDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DestinoTuristicoDelete]
(
	@IdLocalidad nvarchar(10)
)

as

set nocount on

delete from [DestinoTuristico]
where [IdLocalidad] = @IdLocalidad
GO
/****** Object:  StoredProcedure [dbo].[DestinoTuristicoDeleteAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DestinoTuristicoDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [DestinoTuristico]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[DestinoTuristicoInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DestinoTuristicoInsert]
(
	@IdLocalidad nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50)
)

as

set nocount on
if not exists(select * from DestinoTuristico e where e.IdLocalidad = @IdLocalidad)
begin
if exists(select * from Ubicacion p where p.IdCiudad = @IdUbicacion)
begin



insert into [DestinoTuristico]
(
	[IdLocalidad],
	[IdUbicacion],
	[Nombre]
)
values
(
	@IdLocalidad,
	@IdUbicacion,
	@Nombre
)
end
else
	begin
	Raiserror('El id de ubicacion no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[DestinoTuristicoSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DestinoTuristicoSelect]
(
	@IdLocalidad nvarchar(10)
)

as

set nocount on

select [IdLocalidad],
	[IdUbicacion],
	[Nombre]
from [DestinoTuristico]
where [IdLocalidad] = @IdLocalidad
GO
/****** Object:  StoredProcedure [dbo].[DestinoTuristicoSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DestinoTuristicoSelectAll]

as

set nocount on

select [IdLocalidad],
	[IdUbicacion],
	[Nombre]
from [DestinoTuristico]
GO
/****** Object:  StoredProcedure [dbo].[DestinoTuristicoSelectAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DestinoTuristicoSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdLocalidad],
	[IdUbicacion],
	[Nombre]
from [DestinoTuristico]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[DestinoTuristicoUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DestinoTuristicoUpdate]
(
	@IdLocalidad nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50)
)

as

set nocount on

update [DestinoTuristico]
set [IdUbicacion] = @IdUbicacion,
	[Nombre] = @Nombre
where [IdLocalidad] = @IdLocalidad
GO
/****** Object:  StoredProcedure [dbo].[DetalleFacturaDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DetalleFacturaDelete]
(
	@IdLinea nvarchar(10)
)

as

set nocount on

delete from [DetalleFactura]
where [IdLinea] = @IdLinea
GO
/****** Object:  StoredProcedure [dbo].[DetalleFacturaInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DetalleFacturaInsert]
(
	@IdLinea nvarchar(10),
	@IdFactura nvarchar(10),
	@IdReservacion int,
	@Precio money,
	@Cantidad int,
	@CantidadPersonas int
)

as

set nocount on

insert into [DetalleFactura]
(
	[IdLinea],
	[IdFactura],
	[IdReservacion],
	[Precio],
	[Cantidad],
	[CantidadPersonas]
)
values
(
	@IdLinea,
	@IdFactura,
	@IdReservacion,
	@Precio,
	@Cantidad,
	@CantidadPersonas
)
GO
/****** Object:  StoredProcedure [dbo].[DetalleFacturaSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DetalleFacturaSelect]
(
	@IdLinea nvarchar(10)
)

as

set nocount on

select [IdLinea],
	[IdFactura],
	[IdReservacion],
	[Precio],
	[Cantidad],
	[CantidadPersonas]
from [DetalleFactura]
where [IdLinea] = @IdLinea
GO
/****** Object:  StoredProcedure [dbo].[DetalleFacturaSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DetalleFacturaSelectAll]

as

set nocount on

select [IdLinea],
	[IdFactura],
	[IdReservacion],
	[Precio],
	[Cantidad],
	[CantidadPersonas]
from [DetalleFactura]
GO
/****** Object:  StoredProcedure [dbo].[DetalleFacturaUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DetalleFacturaUpdate]
(
	@IdLinea nvarchar(10),
	@IdFactura nvarchar(10),
	@IdReservacion int,
	@Precio money,
	@Cantidad int,
	@CantidadPersonas int
)

as

set nocount on

update [DetalleFactura]
set [IdFactura] = @IdFactura,
	[IdReservacion] = @IdReservacion,
	[Precio] = @Precio,
	[Cantidad] = @Cantidad,
	[CantidadPersonas] = @CantidadPersonas
where [IdLinea] = @IdLinea
GO
/****** Object:  StoredProcedure [dbo].[DetalleReporteDeleteAllByIdReporte]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DetalleReporteDeleteAllByIdReporte]
(
	@IdReporte nvarchar(10)
)

as

set nocount on

delete from [DetalleReporte]
where [IdReporte] = @IdReporte
GO
/****** Object:  StoredProcedure [dbo].[DetalleReporteInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DetalleReporteInsert]
(
	@IdLinea int,
	@IdReporte nvarchar(10),
	@Titulo nvarchar(50),
	@Detalle nvarchar(300)
)

as

set nocount on

insert into [DetalleReporte]
(
	[IdLinea],
	[IdReporte],
	[Titulo],
	[Detalle]
)
values
(
	@IdLinea,
	@IdReporte,
	@Titulo,
	@Detalle
)
GO
/****** Object:  StoredProcedure [dbo].[DetalleReporteSelectAllByIdReporte]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DetalleReporteSelectAllByIdReporte]
(
	@IdReporte nvarchar(10)
)

as

set nocount on

select [IdLinea],
	[IdReporte],
	[Titulo],
	[Detalle]
from [DetalleReporte]
where [IdReporte] = @IdReporte
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[EmpleadoDelete]
(
	@IdEmpleado nvarchar(10)
)

as

set nocount on

delete from [Empleado]
where [IdEmpleado] = @IdEmpleado
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoDeleteAllByIdPuesto]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[EmpleadoDeleteAllByIdPuesto]
(
	@IdPuesto nvarchar(10)
)

as

set nocount on

delete from [Empleado]
where [IdPuesto] = @IdPuesto
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[EmpleadoInsert]
(
	@IdEmpleado nvarchar(10),
	@Cedula nvarchar(10),
	@Nombre nvarchar(50),
	@Apellido1 nvarchar(50),
	@Apellido2 nvarchar(50),
	@FechaContrato date,
	@IdPuesto nvarchar(10),
	@Salario money,
	@Comision int
)

as

set nocount on
if not exists(select * from Empleado e where e.IdEmpleado = @IdEmpleado)
begin
if exists(select * from PuestoTrabajo p where p.IdPuesto = @IdPuesto)
begin
insert into [Empleado]
(
	[IdEmpleado],
	[Cedula],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[FechaContrato],
	[IdPuesto],
	[Salario],
	[PorcentajeComision]
)
values
(
	@IdEmpleado,
	@Cedula,
	@Nombre,
	@Apellido1,
	@Apellido2,
	@FechaContrato,
	@IdPuesto,
	@Salario,
	@Comision
)
end
else
	begin
	Raiserror('El id de puesto no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[Empleado-SucursalDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Empleado-SucursalDelete]
(
	@IdES int
)

as

set nocount on

delete from [Empleado-Sucursal]
where [IdES] = @IdES
GO
/****** Object:  StoredProcedure [dbo].[Empleado-SucursalDeleteAllByIdEmpleado]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Empleado-SucursalDeleteAllByIdEmpleado]
(
	@IdEmpleado nvarchar(10)
)

as

set nocount on

delete from [Empleado-Sucursal]
where [IdEmpleado] = @IdEmpleado
GO
/****** Object:  StoredProcedure [dbo].[Empleado-SucursalDeleteAllByIdSucursal]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Empleado-SucursalDeleteAllByIdSucursal]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

delete from [Empleado-Sucursal]
where [IdSucursal] = @IdSucursal
GO
/****** Object:  StoredProcedure [dbo].[EncabezadoFacturacionSP]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EncabezadoFacturacionSP] @IdFactura nvarchar(10), @IdCliente nvarchar(10), @IdVendedor nvarchar(10), @IdModoPago nvarchar(10)
AS
BEGIN
	if not exists(SELECT * FROM Factura f WHERE f.IdFactura = @IdFactura)
		BEGIN
		
	
			Insert into Factura (IdFactura, IdVendedor, IdCliente, IdModoPago, Fecha, EstadoPago)
			values (@IdFactura, @IdVendedor, @IdCliente, @IdModoPago, GETDATE(), 0)
			
		END
	else
		BEGIN
			Raiserror('La factura ya existe',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[EspecificacionDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[EspecificacionDelete]
(
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

delete from [Especificacion]
where [IdEspecificacion] = @IdEspecificacion
GO
/****** Object:  StoredProcedure [dbo].[FacturaDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[FacturaDelete]
(
	@IdFactura nvarchar(10)
)

as

set nocount on

delete from [Factura]
where [IdFactura] = @IdFactura
GO
/****** Object:  StoredProcedure [dbo].[FacturaDeleteAllByIdCliente]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[FacturaDeleteAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

delete from [Factura]
where [IdCliente] = @IdCliente
GO
/****** Object:  StoredProcedure [dbo].[FacturaDeleteAllByIdModoPago]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[FacturaDeleteAllByIdModoPago]
(
	@IdModoPago nvarchar(10)
)

as

set nocount on

delete from [Factura]
where [IdModoPago] = @IdModoPago
GO
/****** Object:  StoredProcedure [dbo].[FacturaDeleteAllByIdVendedor]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[FacturaDeleteAllByIdVendedor]
(
	@IdVendedor nvarchar(10)
)

as

set nocount on

delete from [Factura]
where [IdVendedor] = @IdVendedor
GO
/****** Object:  StoredProcedure [dbo].[FacturaInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[FacturaInsert]
(
	@IdFactura nvarchar(10),
	@IdVendedor nvarchar(10),
	@IdCliente nvarchar(10),
	@IdModoPago nvarchar(10),
	@Fecha date,
	@MontoTotal money,
	@MontoPagado money,
	@EstadoPago bit
)

as

set nocount on

if not exists(select * from Factura f where f.IdFactura = @IdFactura)
begin
if exists(select * from Empleado e where e.IdEmpleado = @IdVendedor)
begin
if exists(select * from Cliente e where e.IdCliente = @IdCliente)
begin
if exists(select * from ModoPago e where e.IdModoPago = @IdModoPago)
begin

insert into [Factura]
(
	[IdFactura],
	[IdVendedor],
	[IdCliente],
	[IdModoPago],
	[Fecha],
	[MontoTotal],
	[MontoPagado],
	[EstadoPago]
)
values
(
	@IdFactura,
	@IdVendedor,
	@IdCliente,
	@IdModoPago,
	@Fecha,
	@MontoTotal,
	@MontoPagado,
	@EstadoPago
)
end
else
	begin
	Raiserror('El id de modo de pago no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de cliente no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de empleado no existe',0,0)
	end
end

else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[GananciasNetas]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GananciasNetas] @Fecha1 date, @Fecha2 date, @IdSucursal nvarchar(10)
AS
BEGIN
	Select SUM(f.MontoPagado - (f.MontoPagado * e.PorcentajeComision)) as 'Ganancias Netas'
	From PaqueteViaje pv
	inner join Reservacion r on r.IdPaquete = pv.IdPaquete
	inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
	inner join Factura f on f.IdFactura = d.IdFactura
	inner join Empleado e on e.IdEmpleado = f.IdVendedor
	inner join [Empleado-Sucursal] es on es.IdEmpleado = e.IdEmpleado
	Where ISNULL(@IdSucursal, es.IdSucursal) = es.IdSucursal and
	f.Fecha between ISNULL(@Fecha1,'19000101') and ISNULL(@Fecha2, GETDATE())
	Order by [Ganancias Netas] DESC

			
END
GO
/****** Object:  StoredProcedure [dbo].[GarantiaHotelDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GarantiaHotelDelete]
(
	@IdGarantia nvarchar(10)
)

as

set nocount on

delete from [GarantiaHotel]
where [IdGarantia] = @IdGarantia
GO
/****** Object:  StoredProcedure [dbo].[Guia-IdiomaDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Guia-IdiomaDelete]
(
	@IdGI nvarchar(10)
)

as

set nocount on

delete from [Guia-Idioma]
where [IdGI] = @IdGI
GO
/****** Object:  StoredProcedure [dbo].[Guia-IdiomaDeleteAllByIdGuia]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Guia-IdiomaDeleteAllByIdGuia]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

delete from [Guia-Idioma]
where [IdGuia] = @IdGuia
GO
/****** Object:  StoredProcedure [dbo].[Guia-IdiomaDeleteAllByIdIdioma]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Guia-IdiomaDeleteAllByIdIdioma]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

delete from [Guia-Idioma]
where [IdIdioma] = @IdIdioma
GO
/****** Object:  StoredProcedure [dbo].[GuiaTuristicoDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GuiaTuristicoDelete]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

delete from [GuiaTuristico]
where [IdGuia] = @IdGuia
GO
/****** Object:  StoredProcedure [dbo].[GuiaTuristicoDeleteAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GuiaTuristicoDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [GuiaTuristico]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[HotelDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelDelete]
(
	@IdHotel nvarchar(10)
)

as

set nocount on

delete from [Hotel]
where [IdHotel] = @IdHotel
GO
/****** Object:  StoredProcedure [dbo].[HotelDeleteAllByIdCalificacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelDeleteAllByIdCalificacion]
(
	@IdCalificacion nvarchar(10)
)

as

set nocount on

delete from [Hotel]
where [IdCalificacion] = @IdCalificacion
GO
/****** Object:  StoredProcedure [dbo].[HotelDeleteAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [Hotel]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[HotelInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelInsert]
(
	@IdHotel nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50),
	@IdCalificacion nvarchar(10)
)

as

set nocount on

if not exists(select * from Hotel e where e.IdHotel = @IdHotel)
begin
if exists(select * from Ubicacion p where p.IdUbicacion = @IdUbicacion)
begin
if exists(select * from CalificacionHotel p where p.IdCalificacion = @IdCalificacion)
begin



insert into [Hotel]
(
	[IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
)
values
(
	@IdHotel,
	@IdUbicacion,
	@Nombre,
	@IdCalificacion
)
end
else
	begin
	Raiserror('El id de calificacion no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de ubicacion no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[HotelSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelSelect]
(
	@IdHotel nvarchar(10)
)

as

set nocount on

select [IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
from [Hotel]
where [IdHotel] = @IdHotel
GO
/****** Object:  StoredProcedure [dbo].[HotelSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelSelectAll]

as

set nocount on

select [IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
from [Hotel]
GO
/****** Object:  StoredProcedure [dbo].[HotelSelectAllByIdCalificacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelSelectAllByIdCalificacion]
(
	@IdCalificacion nvarchar(10)
)

as

set nocount on

select [IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
from [Hotel]
where [IdCalificacion] = @IdCalificacion
GO
/****** Object:  StoredProcedure [dbo].[HotelSelectAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
from [Hotel]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[HotelUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[HotelUpdate]
(
	@IdHotel nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50),
	@IdCalificacion nvarchar(10)
)

as

set nocount on

update [Hotel]
set [IdUbicacion] = @IdUbicacion,
	[Nombre] = @Nombre,
	[IdCalificacion] = @IdCalificacion
where [IdHotel] = @IdHotel
GO
/****** Object:  StoredProcedure [dbo].[IdiomaDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[IdiomaDelete]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

delete from [Idioma]
where [IdIdioma] = @IdIdioma
GO
/****** Object:  StoredProcedure [dbo].[IdiomaInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[IdiomaInsert]
(
	@IdIdioma nvarchar(10),
	@Nombre nvarchar(50)
)

as

set nocount on
if not exists(select * from Idioma e where e.IdIdioma = @IdIdioma)
begin


insert into [Idioma]
(
	[IdIdioma],
	[Nombre]
)
values
(
	@IdIdioma,
	@Nombre
)
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
GO
/****** Object:  StoredProcedure [dbo].[IdiomaSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[IdiomaSelect]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

select [IdIdioma],
	[Nombre]
from [Idioma]
where [IdIdioma] = @IdIdioma
GO
/****** Object:  StoredProcedure [dbo].[IdiomaSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[IdiomaSelectAll]

as

set nocount on

select [IdIdioma],
	[Nombre]
from [Idioma]
GO
/****** Object:  StoredProcedure [dbo].[IdiomaUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[IdiomaUpdate]
(
	@IdIdioma nvarchar(10),
	@Nombre nvarchar(50)
)

as

set nocount on

update [Idioma]
set [Nombre] = @Nombre
where [IdIdioma] = @IdIdioma
GO
/****** Object:  StoredProcedure [dbo].[MejoresVendedores]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MejoresVendedores] @Fecha1 date, @Fecha2 date, @IdSucursal nvarchar(10)
AS
BEGIN
	Select e.IdEmpleado, Count(d.IdReservacion) as 'Cantidad'
	From PaqueteViaje pv
	inner join Reservacion r on r.IdPaquete = pv.IdPaquete
	inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
	inner join Factura f on f.IdFactura = d.IdFactura
	inner join Empleado e on e.IdEmpleado = f.IdVendedor
	inner join [Empleado-Sucursal] es on es.IdEmpleado = e.IdEmpleado
	Where ISNULL(@IdSucursal, es.IdSucursal) = es.IdSucursal and
	f.Fecha between ISNULL(@Fecha1,'19000101') and ISNULL(@Fecha2, GETDATE())

	Group by e.IdEmpleado
	Order by [Cantidad] DESC

			
END
GO
/****** Object:  StoredProcedure [dbo].[ModoPagoDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ModoPagoDelete]
(
	@IdModoPago nvarchar(10)
)

as

set nocount on

delete from [ModoPago]
where [IdModoPago] = @IdModoPago
GO
/****** Object:  StoredProcedure [dbo].[MostrarEspecificacionesHotel]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MostrarEspecificacionesHotel] @pdth nvarchar(10)
AS 
BEGIN
	If exists(SELECT * FROM [PDT-Hotel] h WHERE h.IdPH = @pdth)
		BEGIN
			SELECT h.IdHotel, h.Nombre, gh.IdGarantia, gh.Descripcion
			FROM [PDT-Hotel] pdth
			inner join Hotel h on h.IdHotel = pdth.IdHotel
			inner join [PDT-Hotel-Garantias] pdthg on pdthg.IdPaqueteHotel = pdth.IdPH
			inner join GarantiaHotel gh on gh.IdGarantia = pdthg.IdGarantia
			WHERE pdth.IdPH = @pdth
			ORDER BY pdth.IdPH
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END

END
GO
/****** Object:  StoredProcedure [dbo].[MostrarGuiasPaquete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MostrarGuiasPaquete] @IdPaquete nvarchar(11)
AS
BEGIN
	if exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			IF exists(SELECT * FROM [Paquete-DestinoTuristico] pdt inner join [PDT-Guia] g on g.IdPDT = pdt.IdPDT WHERE pdt.IdPaquete=@IdPaquete)
				BEGIN
					SELECT dt.Nombre as 'Destino', g.IdGuia, g.Nombre
					FROM PaqueteViaje pv
					inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
					inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
					inner join Ubicacion u on u.IdUbicacion = dt.IdUbicacion
					inner join Pais p on p.IdPais = u.IdPais
					inner join Ciudad c on c.IdCiudad = u.IdCiudad
					inner join [PDT-Guia] pdtg on pdtg.IdPDT = pdt.IdPDT
					inner join GuiaTuristico g on g.IdGuia = pdtg.IdGuia
					WHERE pv.IdPaquete = @IdPaquete
				END

			Else
				BEGIN
					Raiserror('No incluye guias',0,0)
				END

		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[MostrarHabitacionesDisponibles]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MostrarHabitacionesDisponibles] @IdHotel nvarchar(10)
AS
BEGIN
	If exists(SELECT * FROM Hotel h WHERE h.IdHotel = @IdHotel)
		BEGIN
			SELECT h.IdHotel, h.Nombre, hh.IdHabitacion, hh.TipoHabitacion, hh.NumeroHabitacion
			FROM Hotel h 
			inner join HabitacionHotel hh on hh.IdHotel = h.IdHotel
			WHERE h.IdHotel = @IdHotel and  hh.EstadoOcupacion = 0
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[MostrarHotelesPaquete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MostrarHotelesPaquete] @IdPaquete nvarchar(10)
AS 
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			IF exists(SELECT * FROM [Paquete-DestinoTuristico] pdt inner join [PDT-Hotel] h on h.IdPDT = pdt.IdPDT WHERE pdt.IdPaquete=@IdPaquete)
				BEGIN
					SELECT pv.IdPaquete, pv.Nombre, p.Nombre as 'País', c.Nombre as 'Ciudad', h.IdHotel, h.Nombre, ch.Calificacion
					FROM PaqueteViaje pv
					inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
					inner join [PDT-Hotel] pdth on pdth.IdPDT = pdt.IdPDT
					inner join Hotel h on h.IdHotel = pdth.IdHotel
					inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
					inner join Ubicacion u on u.IdUbicacion = dt.IdUbicacion
					inner join Pais p on p.IdPais = u.IdPais
					inner join Ciudad c on c.IdCiudad = u.IdCiudad
					inner join CalificacionHotel ch on ch.IdCalificacion = h.IdCalificacion
					WHERE pv.IdPaquete = @IdPaquete
					ORDER BY pv.IdPaquete
				END
			Else
				BEGIN
					Raiserror('No incluye hospedaje',0,0)
				END
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END

END

GO
/****** Object:  StoredProcedure [dbo].[MostrarIdiomasGuia]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MostrarIdiomasGuia] @IdGuia nvarchar(11)
AS
BEGIN
	if exists(SELECT * FROM GuiaTuristico g WHERE g.IdGuia = @IdGuia)
		BEGIN
			SELECT  g.IdGuia, g.Nombre, i.Nombre as 'Idioma'
			FROM GuiaTuristico g
			inner join [Guia-Idioma] gi on gi.IdGuia = g.IdGuia
			inner join Idioma i on i.IdIdioma = gi.IdIdioma
			WHERE g.IdGuia = @IdGuia
			group by g.IdGuia, g.Nombre, i.Nombre
			
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END
END

GO
/****** Object:  StoredProcedure [dbo].[MostrarPaqueteDestinos]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MostrarPaqueteDestinos] @IdPaquete nvarchar(10)
AS
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			SELECT pv.IdPaquete, pv.Nombre, p.Nombre as 'País', c.Nombre as 'Ciudad', dt.Nombre as 'Destino', dt.IdLocalidad
			FROM PaqueteViaje pv
			inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
			inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
			inner join Ubicacion u on u.IdUbicacion = dt.IdUbicacion
			inner join Pais p on p.IdPais = u.IdPais
			inner join Ciudad c on c.IdCiudad = u.IdCiudad
			WHERE pv.IdPaquete = @IdPaquete
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[MostrarPaquetes]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MostrarPaquetes] 
AS
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.Cantidad > 0)
		BEGIN
			SELECT  pv.IdPaquete, pv.Nombre, pv.Cantidad as 'Paquetes Disponibles', pp.PrecioRegular, 
			pp.CantidadPersonas, promo.Porcentaje as 'Promocion porcentaje'
			FROM PaqueteViaje pv
			inner join PagoPaquete pp on pp.IdPaquete = pv.IdPaquete
			full join Promocion promo on promo.IdPromocion = pp.IdPromocion
			WHERE pv.Cantidad > 0
		END
	else
		BEGIN
			Raiserror('No hay paquetes',0,0)
		END

END
GO
/****** Object:  StoredProcedure [dbo].[MostrarTransportePaquete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MostrarTransportePaquete] @IdPaquete nvarchar(10)
AS
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			if exists(SELECT * FROM [PDT-Vehiculo] v inner join [Paquete-DestinoTuristico] pdt on pdt.IdPDT = v.IdPDT WHERE pdt.IdPaquete = @IdPaquete)
				BEGIN
					SELECT dt.Nombre as 'Destino', p.Nombre as 'Paìs', c.Nombre as 'Ciudad', v.IdVehiculo, v.Marca, v.Descripcion
					FROM PaqueteViaje pv
					inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
					inner join [PDT-Vehiculo] pdtv on pdtv.IdPDT = pdt.IdPDT
					inner join Vehiculo v on v.IdVehiculo = pdtv.IdVehiculo
					inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
					inner join Ubicacion u on u.IdUbicacion = dt.IdUbicacion
					inner join Pais p on p.IdPais = u.IdPais
					inner join Ciudad c on c.IdCiudad = u.IdCiudad
					WHERE pv.IdPaquete = @IdPaquete
				END
			else
				BEGIN
					Raiserror('No incluye vehiculos',0,0)
				END
		
	
		END
	else
		BEGIN
			Raiserror('No existe el paquete',0,0)
		END
	
END

GO
/****** Object:  StoredProcedure [dbo].[MostrarVuelosPaquete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MostrarVuelosPaquete] @IdPaquete nvarchar(10)
AS
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			if exists(SELECT * FROM Vuelo v inner join [Paquete-DestinoTuristico] pdt on pdt.IdVuelo = v.IdVuelo WHERE pdt.IdPaquete = @IdPaquete)
				BEGIN
					SELECT dt.Nombre as 'Destino', v.AeropuertoSalida, v.AeropuertoLlegada
					FROM PaqueteViaje pv
					inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
					inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
					inner join Vuelo v on v.IdVuelo = pdt.IdVuelo
					WHERE pv.IdPaquete = @IdPaquete
				END
			else
				BEGIN
					Raiserror('No incluye vuelos',0,0)
				END
		
	
		END
	else
		BEGIN
			Raiserror('No existe el paquete',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[ObteciónBoleta]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObteciónBoleta] @IdReservacion nvarchar(10)
AS
BEGIN
	if exists(SELECT * FROM Reservacion r WHERE r.IdReservacion = @IdReservacion)
		BEGIN
			SELECT rh.IdHotel, rh.Habitacion, rt.IdTransporte, rt.Aciento
			FROM Reservacion r
			inner join [Reservacion-Habitacion] rh on rh.IdReservacion =  r.IdReservacion
			inner join [Reservacion-Transporte] rt on rt.IdReservacion = r.IdReservacion
			WHERE r.IdReservacion = @IdReservacion
			
		END
	else
		BEGIN
			Raiserror('La reservación no existe',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[PagarFacturaSP]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PagarFacturaSP] @IdFactura nvarchar(10), @Pago money
AS
BEGIN
	if  exists(SELECT * FROM Factura f WHERE f.IdFactura = @IdFactura)
		BEGIN
			DECLARE @ModoPago nvarchar(10)
			DECLARE @MontoTotal money
			SELECT @ModoPago = m.Nombre, @MontoTotal = f.MontoTotal
			FROM Factura f 
			inner join ModoPago m on m.IdModoPago = f.IdModoPago
			WHERE f.IdFactura = @IdFactura

			if @ModoPago = 'Contado' and @Pago = @MontoTotal
				BEGIN
					update Factura
					set MontoPagado = @Pago, EstadoPago = 1
					WHERE IdFactura = @IdFactura
				END
			else
				BEGIN
					if @ModoPago = 'Apartado' and @Pago >= @MontoTotal * 0.10
						BEGIN
							insert into AbonoFactura(Fecha, Monto, IdFactura)
							values(GETDATE(), @Pago, @IdFactura)

							update Factura
							set MontoPagado = MontoPagado + @Pago
							WHERE IdFactura = @IdFactura
						END

				END
		END

END
GO
/****** Object:  StoredProcedure [dbo].[PagoComisiones]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Procedimiento para obtener pago de comisiones (utilizar sucursal, vendedor, y fechas como parametros opcionales)

CREATE PROCEDURE [dbo].[PagoComisiones] @Fecha1 date, @Fecha2 date, @IdSucursal nvarchar(10)
AS
BEGIN
	Select SUM(f.MontoPagado * e.Comision)  as 'Pago'
	From PaqueteViaje pv
	inner join Reservacion r on r.IdPaquete = pv.IdPaquete
	inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
	inner join Factura f on f.IdFactura = d.IdFactura
	inner join Empleado e on e.IdEmpleado = f.IdVendedor
	inner join [Empleado-Sucursal] es on es.IdEmpleado = e.IdEmpleado
	Where ISNULL(@IdSucursal, es.IdSucursal) = es.IdSucursal and
	f.Fecha between ISNULL(@Fecha1,'19000101') and ISNULL(@Fecha2, GETDATE())
	Order by [Pago] DESC

			
END
GO
/****** Object:  StoredProcedure [dbo].[PagoPaqueteDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PagoPaqueteDelete]
(
	@IdPagoPaquete nvarchar(10)
)

as

set nocount on

delete from [PagoPaquete]
where [IdPagoPaquete] = @IdPagoPaquete
GO
/****** Object:  StoredProcedure [dbo].[PaisDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PaisDelete]
(
	@IdPais nvarchar(10)
)

as

set nocount on

delete from [Pais]
where [IdPais] = @IdPais
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoDelete]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

delete from [Paquete-DestinoTuristico]
where [IdPDT] = @IdPDT
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoDeleteAllByIdLocalidad]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoDeleteAllByIdLocalidad]
(
	@IdLocalidad nvarchar(10)
)

as

set nocount on

delete from [Paquete-DestinoTuristico]
where [IdLocalidad] = @IdLocalidad
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoDeleteAllByIdPaquete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoDeleteAllByIdPaquete]
(
	@IdPaquete nvarchar(10)
)

as

set nocount on

delete from [Paquete-DestinoTuristico]
where [IdPaquete] = @IdPaquete
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoInsert]
(
	@IdPDT nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdLocalidad nvarchar(10)
)

as

set nocount on

insert into [Paquete-DestinoTuristico]
(
	[IdPDT],
	[IdPaquete],
	[IdLocalidad]
)
values
(
	@IdPDT,
	@IdPaquete,
	@IdLocalidad
)
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoSelect]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

select [IdPDT],
	[IdPaquete],
	[IdLocalidad]
from [Paquete-DestinoTuristico]
where [IdPDT] = @IdPDT
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoSelectAll]

as

set nocount on

select [IdPDT],
	[IdPaquete],
	[IdLocalidad]
from [Paquete-DestinoTuristico]
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoSelectAllByIdLocalidad]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoSelectAllByIdLocalidad]
(
	@IdLocalidad nvarchar(10)
)

as

set nocount on

select [IdPDT],
	[IdPaquete],
	[IdLocalidad]
from [Paquete-DestinoTuristico]
where [IdLocalidad] = @IdLocalidad
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoSelectAllByIdPaquete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoSelectAllByIdPaquete]
(
	@IdPaquete nvarchar(10)
)

as

set nocount on

select [IdPDT],
	[IdPaquete],
	[IdLocalidad]
from [Paquete-DestinoTuristico]
where [IdPaquete] = @IdPaquete
GO
/****** Object:  StoredProcedure [dbo].[Paquete-DestinoTuristicoUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-DestinoTuristicoUpdate]
(
	@IdPDT nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdLocalidad nvarchar(10)
)

as

set nocount on

update [Paquete-DestinoTuristico]
set [IdPaquete] = @IdPaquete,
	[IdLocalidad] = @IdLocalidad
where [IdPDT] = @IdPDT
GO
/****** Object:  StoredProcedure [dbo].[Paquete-IdiomaDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-IdiomaDelete]
(
	@IdPaqueteIdioma nvarchar(10)
)

as

set nocount on

delete from [Paquete-Idioma]
where [IdPaqueteIdioma] = @IdPaqueteIdioma
GO
/****** Object:  StoredProcedure [dbo].[Paquete-IdiomaInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-IdiomaInsert]
(
	@IdPaqueteIdioma nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdIdioma nvarchar(10)
)

as

set nocount on

insert into [Paquete-Idioma]
(
	[IdPaqueteIdioma],
	[IdPaquete],
	[IdIdioma]
)
values
(
	@IdPaqueteIdioma,
	@IdPaquete,
	@IdIdioma
)
GO
/****** Object:  StoredProcedure [dbo].[Paquete-IdiomaSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-IdiomaSelect]
(
	@IdPaqueteIdioma nvarchar(10)
)

as

set nocount on

select [IdPaqueteIdioma],
	[IdPaquete],
	[IdIdioma]
from [Paquete-Idioma]
where [IdPaqueteIdioma] = @IdPaqueteIdioma
GO
/****** Object:  StoredProcedure [dbo].[Paquete-IdiomaSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-IdiomaSelectAll]

as

set nocount on

select [IdPaqueteIdioma],
	[IdPaquete],
	[IdIdioma]
from [Paquete-Idioma]
GO
/****** Object:  StoredProcedure [dbo].[Paquete-IdiomaUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Paquete-IdiomaUpdate]
(
	@IdPaqueteIdioma nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdIdioma nvarchar(10)
)

as

set nocount on

update [Paquete-Idioma]
set [IdPaquete] = @IdPaquete,
	[IdIdioma] = @IdIdioma
where [IdPaqueteIdioma] = @IdPaqueteIdioma
GO
/****** Object:  StoredProcedure [dbo].[PaquetesMasVendidos]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaquetesMasVendidos] @Fecha1 date, @Fecha2 date, @IdSucursal nvarchar(10)
AS
BEGIN
	Select pv.IdPaquete, Count(d.IdReservacion) as 'Cantidad'
	From PaqueteViaje pv
	inner join Reservacion r on r.IdPaquete = pv.IdPaquete
	inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
	inner join Factura f on f.IdFactura = d.IdFactura
	inner join Empleado e on e.IdEmpleado = f.IdVendedor
	inner join [Empleado-Sucursal] es on es.IdEmpleado = e.IdEmpleado
	Where ISNULL(@IdSucursal, es.IdSucursal) = es.IdSucursal and
	f.Fecha between ISNULL(@Fecha1,'19000101') and ISNULL(@Fecha2, GETDATE())

	Group by pv.IdPaquete
	Order by [Cantidad] DESC

			
END

GO
/****** Object:  StoredProcedure [dbo].[PaquetesMasVendidosFecha]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PaquetesMasVendidosFecha] @Fecha1 date, @Fecha2 date
AS
BEGIN
		Select pv.IdPaquete, Count(d.IdReservacion) as 'Cantidad Ventas'
		From PaqueteViaje pv
		inner join Reservacion r on r.IdPaquete = pv.IdPaquete
		inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
		inner join Factura f on f.IdFactura = d.IdFactura
		Where f.Fecha between @Fecha1 and @Fecha2
		Group by pv.IdPaquete
		Order by [Cantidad Ventas]
END
GO
/****** Object:  StoredProcedure [dbo].[PaquetesMasVendidosSucursal]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaquetesMasVendidosSucursal] @IdSucursal nvarchar(10)
AS
BEGIN
		Select pv.IdPaquete, Count(d.IdReservacion) as 'Cantidad Ventas'
		From PaqueteViaje pv
		inner join Reservacion r on r.IdPaquete = pv.IdPaquete
		inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
		inner join Factura f on f.IdFactura = d.IdFactura
		inner join Empleado e on e.IdEmpleado = f.IdVendedor
		inner join [Empleado-Sucursal] es on es.IdEmpleado = e.IdEmpleado
		Where es.IdSucursal = @IdSucursal
		Group by pv.IdPaquete
		Order by [Cantidad Ventas]
END
GO
/****** Object:  StoredProcedure [dbo].[PaqueteViajeDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PaqueteViajeDelete]
(
	@IdPaquete nvarchar(10)
)

as

set nocount on

delete from [PaqueteViaje]
where [IdPaquete] = @IdPaquete
GO
/****** Object:  StoredProcedure [dbo].[PaqueteViajeSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PaqueteViajeSelect]
(
	@IdPaquete nvarchar(10)
)

as

set nocount on

select [IdPaquete],
	[Nombre],
	[Descripcion],
	[Cantidad]
from [PaqueteViaje]
where [IdPaquete] = @IdPaquete
GO
/****** Object:  StoredProcedure [dbo].[PaqueteViajeSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PaqueteViajeSelectAll]

as

set nocount on

select [IdPaquete],
	[Nombre],
	[Descripcion],
	[Cantidad]
from [PaqueteViaje]
GO
/****** Object:  StoredProcedure [dbo].[PaqueteViajeUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PaqueteViajeUpdate]
(
	@IdPaquete nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200),
	@Cantidad int
)

as

set nocount on

update [PaqueteViaje]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Cantidad] = @Cantidad
where [IdPaquete] = @IdPaquete
GO
/****** Object:  StoredProcedure [dbo].[PDT-GuiaDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-GuiaDelete]
(
	@IdPG nvarchar(10)
)

as

set nocount on

delete from [PDT-Guia]
where [IdPG] = @IdPG
GO
/****** Object:  StoredProcedure [dbo].[PDT-GuiaDeleteAllByIdGuia]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-GuiaDeleteAllByIdGuia]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

delete from [PDT-Guia]
where [IdGuia] = @IdGuia
GO
/****** Object:  StoredProcedure [dbo].[PDT-GuiaDeleteAllByIdPDT]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-GuiaDeleteAllByIdPDT]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

delete from [PDT-Guia]
where [IdPDT] = @IdPDT
GO
/****** Object:  StoredProcedure [dbo].[PDT-GuiaInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-GuiaInsert]
(
	@IdPG nvarchar(10),
	@IdPDT nvarchar(10),
	@IdGuia nvarchar(10)
)

as

set nocount on

if not exists(select * from [PDT-Guia] e where e.IdPG = @IdPG)
begin
if exists(select * from [Paquete-DestinoTuristico] p where p.IdPDT = @IdPDT)
begin
if exists(select * from GuiaTuristico p where p.IdGuia= @IdGuia)
begin



insert into [PDT-Guia]
(
	[IdPG],
	[IdPDT],
	[IdGuia]

)
values
(
	@IdPG,
	@IdPDT,
	@IdGuia
)
end
else
	begin
	Raiserror('El id de guia no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de pdt no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[PDT-HotelDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-HotelDelete]
(
	@IdPH nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel]
where [IdPH] = @IdPH
GO
/****** Object:  StoredProcedure [dbo].[PDT-HotelDeleteAllByIdHotel]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-HotelDeleteAllByIdHotel]
(
	@IdHotel nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel]
where [IdHotel] = @IdHotel
GO
/****** Object:  StoredProcedure [dbo].[PDT-HotelDeleteAllByIdPDT]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-HotelDeleteAllByIdPDT]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel]
where [IdPDT] = @IdPDT
GO
/****** Object:  StoredProcedure [dbo].[PDT-Hotel-GarantiasDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-Hotel-GarantiasDelete]
(
	@IdPHG nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel-Garantias]
where [IdPHG] = @IdPHG
GO
/****** Object:  StoredProcedure [dbo].[PDT-Hotel-GarantiasDeleteAllByIdGarantia]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-Hotel-GarantiasDeleteAllByIdGarantia]
(
	@IdGarantia nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel-Garantias]
where [IdGarantia] = @IdGarantia
GO
/****** Object:  StoredProcedure [dbo].[PDT-Hotel-GarantiasDeleteAllByIdPaqueteHotel]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-Hotel-GarantiasDeleteAllByIdPaqueteHotel]
(
	@IdPaqueteHotel nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel-Garantias]
where [IdPaqueteHotel] = @IdPaqueteHotel
GO
/****** Object:  StoredProcedure [dbo].[PDT-HotelInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-HotelInsert]
(
	@IdPH nvarchar(10),
	@IdPDT nvarchar(10),
	@IdHotel nvarchar(10)
)

as

set nocount on
if not exists(select * from [PDT-Hotel] e where e.IdPH = @IdPH)
begin
if exists(select * from [Paquete-DestinoTuristico] p where p.IdPDT = @IdPDT)
begin
if exists(select * from Hotel p where p.IdCalificacion = @IdHotel)
begin


insert into [PDT-Hotel]
(
	[IdPH],
	[IdPDT],
	[IdHotel]
)
values
(
	@IdPH,
	@IdPDT,
	@IdHotel
)
end
else
	begin
	Raiserror('El id de hotel no existe',0,0)
	end

end
else
	begin
	Raiserror('El id de pdt no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[PDT-ViajeDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-ViajeDelete]
(
	@IdViaje nvarchar(10)
)

as

set nocount on

delete from [PDT-Viaje]
where [IdViaje] = @IdViaje
GO
/****** Object:  StoredProcedure [dbo].[PDT-ViajeDeleteAllByTerminalLlegada]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-ViajeDeleteAllByTerminalLlegada]
(
	@TerminalLlegada nvarchar(10)
)

as

set nocount on

delete from [PDT-Viaje]
where [TerminalLlegada] = @TerminalLlegada
GO
/****** Object:  StoredProcedure [dbo].[PDT-ViajeDeleteAllByTerminalSalida]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-ViajeDeleteAllByTerminalSalida]
(
	@TerminalSalida nvarchar(10)
)

as

set nocount on

delete from [PDT-Viaje]
where [TerminalSalida] = @TerminalSalida
GO
/****** Object:  StoredProcedure [dbo].[PDT-ViajeInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDT-ViajeInsert]
(
	@IdViaje nvarchar(10),
	@IdPDT nvarchar(10),
	@TerminalSalida nvarchar(10),
	@TerminalLlegada nvarchar(10),
	@FechaHoraSalida nvarchar(10),
	@FechaHoraLlegada nvarchar(10),
	@IdTransporte nvarchar(10)
)

as

set nocount on

if not exists(select * from [PDT-Viaje] e where e.IdViaje = @IdViaje)
begin
if exists(select * from [Paquete-DestinoTuristico] p where p.IdPDT = @IdPDT)
begin
if exists(select * from Terminal p where p.IdTerminal = @TerminalLlegada)
begin
if exists(select * from Terminal p where p.IdTerminal = @TerminalSalida)
begin
if exists(select * from Transporte p where p.IdVehiculo = @IdTransporte)
begin



insert into [PDT-Viaje]
(
	[IdViaje],
	[IdPDT],
	[TerminalSalida],
	[TerminalLlegada],
	[FechaHoraSalida],
	[FechaHoraLlegada],
	[IdTransporte]
)
values
(
	@IdViaje,
	@IdPDT,
	@TerminalSalida,
	@TerminalLlegada,
	@FechaHoraSalida,
	@FechaHoraLlegada,
	@IdTransporte
)
end
else
	begin
	Raiserror('El id de transporte no existe',0,0)
	end
	end
else
	begin
	Raiserror('El id de terminal salida no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de llegada no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de pdt no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
GO
/****** Object:  StoredProcedure [dbo].[PromocionDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PromocionDelete]
(
	@IdPromocion nvarchar(10)
)

as

set nocount on

delete from [Promocion]
where [IdPromocion] = @IdPromocion
GO
/****** Object:  StoredProcedure [dbo].[PromocionInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PromocionInsert]
(
	@IdPromocion nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200),
	@Porcentaje int
)

as

set nocount on

insert into [Promocion]
(
	[IdPromocion],
	[Nombre],
	[Descripcion],
	[Porcentaje]
)
values
(
	@IdPromocion,
	@Nombre,
	@Descripcion,
	@Porcentaje
)
GO
/****** Object:  StoredProcedure [dbo].[PuestoTrabajoDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PuestoTrabajoDelete]
(
	@IdPuesto nvarchar(10)
)

as

set nocount on

delete from [PuestoTrabajo]
where [IdPuesto] = @IdPuesto
GO
/****** Object:  StoredProcedure [dbo].[PuestoTrabajoInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PuestoTrabajoInsert]
(
	@IdPuesto nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200)
)

as

set nocount on
if not exists(select * from PuestoTrabajo e where e.IdPuesto = @IdPuesto)
begin


insert into [PuestoTrabajo]
(
	[IdPuesto],
	[Nombre],
	[Descripcion]
)
values
(
	@IdPuesto,
	@Nombre,
	@Descripcion
)

end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
GO
/****** Object:  StoredProcedure [dbo].[ReporteDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ReporteDelete]
(
	@IdReporte nvarchar(10)
)

as

set nocount on

delete from [Reporte]
where [IdReporte] = @IdReporte
GO
/****** Object:  StoredProcedure [dbo].[ReporteDeleteAllByEmisor]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ReporteDeleteAllByEmisor]
(
	@Emisor nvarchar(10)
)

as

set nocount on

delete from [Reporte]
where [Emisor] = @Emisor
GO
/****** Object:  StoredProcedure [dbo].[ReporteDeleteAllByReceptor]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ReporteDeleteAllByReceptor]
(
	@Receptor nvarchar(10)
)

as

set nocount on

delete from [Reporte]
where [Receptor] = @Receptor
GO
/****** Object:  StoredProcedure [dbo].[ReporteInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ReporteInsert]
(
	@IdReporte nvarchar(10),
	@Emisor nvarchar(10),
	@Receptor nvarchar(10),
	@Fecha nvarchar(10)
)

as

set nocount on

insert into [Reporte]
(
	[IdReporte],
	[Emisor],
	[Receptor],
	[Fecha]
)
values
(
	@IdReporte,
	@Emisor,
	@Receptor,
	@Fecha
)
GO
/****** Object:  StoredProcedure [dbo].[ReservacionDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ReservacionDelete]
(
	@IdReservacion int
)

as

set nocount on

delete from [Reservacion]
where [IdReservacion] = @IdReservacion
GO
/****** Object:  StoredProcedure [dbo].[Reservacion-HabitacionInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Reservacion-HabitacionInsert]
(
	@IdRH int,
	@IdReservacion int,
	@IdHotel nvarchar(10),
	@Habitacion nvarchar(10)
)

as

set nocount on

insert into [Reservacion-Habitacion]
(
	[IdRH],
	[IdReservacion],
	[IdHotel],
	[Habitacion]
)
values
(
	@IdRH,
	@IdReservacion,
	@IdHotel,
	@Habitacion
)
GO
/****** Object:  StoredProcedure [dbo].[ReservacionInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ReservacionInsert]
(
	@IdCliente nvarchar(10),
	@IdPaquete nvarchar(10),
	@CantidadPersonas int,
	@CantidadPaquetes int
)

as

set nocount on

insert into [Reservacion]
(
	[IdCliente],
	[IdPaquete],
	[CantidadPersonas],
	[CantidadPaquetes]
)
values
(
	@IdCliente,
	@IdPaquete,
	@CantidadPersonas,
	@CantidadPaquetes
)

select scope_identity()
GO
/****** Object:  StoredProcedure [dbo].[ReservacionSP]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReservacionSP] @IdPaquete nvarchar(10), @IdCliente nvarchar(10), @CantidadPersonas int, @CantidadPaquetes int
AS
BEGIN
	if exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			if exists(SELECT * FROM PaqueteViaje pv inner join PagoPaquete pp on pp.IdPaquete = pv.IdPaquete WHERE pp.CantidadPersonas = @CantidadPersonas)
				BEGIN
					if exists(SELECT * FROM Cliente c WHERE c.IdCliente = @IdCliente)
						BEGIN
							if exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete and pv.Cantidad >= @CantidadPaquetes)
								BEGIN
									Insert into Reservacion(IdCliente, IdPaquete, CantidadPersonas, CantidadPaquetes) 
									values(@IdCliente, @IdPaquete, @CantidadPersonas, @CantidadPaquetes)	

									update PaqueteViaje
									set Cantidad = Cantidad - @CantidadPaquetes
									where IdPaquete = @IdPaquete
								END
							else
								BEGIN
									Raiserror('No hay suficiente cantidad de paquetes',0,0)
								END
						END
					else
						BEGIN
							Raiserror('El cliente no existe',0,0)
						END
				END
			else
				BEGIN
					Raiserror('El paquete no abarca esa cantidad de personas',0,0)
				END
			
		END
	else
		BEGIN
			Raiserror('El paquete no existe',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[Reservacion-TransporteInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Reservacion-TransporteInsert]
(
	@IdRT int,
	@IdReservacion int,
	@IdTransporte nvarchar(10),
	@Aciento nvarchar(10)
)

as

set nocount on

insert into [Reservacion-Transporte]
(
	[IdRT],
	[IdReservacion],
	[IdTransporte],
	[Aciento]
)
values
(
	@IdRT,
	@IdReservacion,
	@IdTransporte,
	@Aciento
)
GO
/****** Object:  StoredProcedure [dbo].[ReservarHabitacionSP]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReservarHabitacionSP] @IdReservacion int, @IdHotel nvarchar(10), @Habitacion nvarchar(10)
AS
BEGIN
	if exists(SELECT * FROM Reservacion r WHERE r.IdReservacion = @IdReservacion)
		BEGIN

			if exists(
			
				SELECT * FROM Reservacion r 
				inner join PaqueteViaje pv on pv.IdPaquete = r.IdPaquete
				inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
				inner join [PDT-Hotel] ph on ph.IdPDT = pdt.IdPDT
				inner join Hotel h on h.IdHotel = ph.IdHotel
				WHERE h.IdHotel = @IdHotel
				
				)		
					BEGIN

						if not exists(
							SELECT *
							FROM Reservacion r
							inner join [Reservacion-Habitacion] rh on rh.IdReservacion = r.IdReservacion
							WHERE rh.Habitacion = @Habitacion)

							BEGIN
								insert into [Reservacion-Habitacion](IdReservacion, IdHotel, Habitacion)
								values(@IdReservacion, @IdHotel, @Habitacion)
							END
						else
							BEGIN
								Raiserror('La habitacion ya esta reservada',0,0)
							END
						
		
					END
			else
				BEGIN
					Raiserror('La hotel no se encuentra en el paquete',0,0)
				END
		END

	else
		BEGIN
			Raiserror('La reservacion no existe',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[ReservarTransportenSP]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReservarTransportenSP] @IdReservacion int, @IdTransporte nvarchar(10), @Aciento nvarchar(10)
AS
BEGIN
	if exists(SELECT * FROM Reservacion r WHERE r.IdReservacion = @IdReservacion)
		BEGIN

			if exists(
			
				SELECT * FROM Reservacion r 
				inner join PaqueteViaje pv on pv.IdPaquete = r.IdPaquete
				inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
				inner join [PDT-Viaje] ph on ph.IdPDT = pdt.IdPDT
				inner join Transporte h on h.IdVehiculo = ph.IdTransporte
				WHERE h.IdVehiculo = @IdTransporte
				
				)		
					BEGIN

						if not exists(
							SELECT *
							FROM Reservacion r
							inner join [Reservacion-Transporte] rh on rh.IdReservacion = r.IdReservacion
							WHERE rh.Aciento = @Aciento)

							BEGIN
								insert into [Reservacion-Transporte](IdReservacion, IdTransporte, Aciento)
								values(@IdReservacion, @IdTransporte, @Aciento)
							END
						else
							BEGIN
								Raiserror('El aciento ya esta reservado',0,0)
							END
						
		
					END
			else
				BEGIN
					Raiserror('El transporte no se encuentra en el paquete',0,0)
				END
		END

	else
		BEGIN
			Raiserror('La reservacion no existe',0,0)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[SucursalDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalDelete]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

delete from [Sucursal]
where [IdSucursal] = @IdSucursal
GO
/****** Object:  StoredProcedure [dbo].[SucursalDeleteAllByIdAdministrador]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalDeleteAllByIdAdministrador]
(
	@IdAdministrador nvarchar(10)
)

as

set nocount on

delete from [Sucursal]
where [IdAdministrador] = @IdAdministrador
GO
/****** Object:  StoredProcedure [dbo].[SucursalDeleteAllByIdAgencia]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalDeleteAllByIdAgencia]
(
	@IdAgencia int
)

as

set nocount on

delete from [Sucursal]
where [IdAgencia] = @IdAgencia
GO
/****** Object:  StoredProcedure [dbo].[SucursalDeleteAllByIdSucursal]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalDeleteAllByIdSucursal]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

delete from [Sucursal]
where [IdSucursal] = @IdSucursal
GO
/****** Object:  StoredProcedure [dbo].[SucursalDeleteAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [Sucursal]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[SucursalInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalInsert]
(
	@IdSucursal nvarchar(10),
	@Nombre nvarchar(50),
	@IdUbicacion nvarchar(10),
	@IdAdministrador nvarchar(10),
	@IdAgencia int
)

as

set nocount on
if not exists(select * from Sucursal e where e.IdSucursal = @IdSucursal)
begin
if exists(select * from Ubicacion p where p.IdUbicacion= @IdUbicacion)
begin
if exists(select * from Empleado p inner join PuestoTrabajo pt on pt.IdPuesto = p.IdPuesto    where p.IdEmpleado= @IdAdministrador and pt.Nombre = 'Administrador')
begin
if exists(select * from Agencia p where p.IdAgencia= @IdAgencia)
begin

insert into [Sucursal]
(
	[IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
)
values
(
	@IdSucursal,
	@Nombre,
	@IdUbicacion,
	@IdAdministrador,
	@IdAgencia
)
end
else
	begin
	Raiserror('El id de Agencia no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de empleado administrador no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de ubicacion no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[SucursalSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalSelect]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdSucursal] = @IdSucursal
GO
/****** Object:  StoredProcedure [dbo].[SucursalSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalSelectAll]

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
GO
/****** Object:  StoredProcedure [dbo].[SucursalSelectAllByIdAdministrador]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalSelectAllByIdAdministrador]
(
	@IdAdministrador nvarchar(10)
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdAdministrador] = @IdAdministrador
GO
/****** Object:  StoredProcedure [dbo].[SucursalSelectAllByIdAgencia]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalSelectAllByIdAgencia]
(
	@IdAgencia int
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdAgencia] = @IdAgencia
GO
/****** Object:  StoredProcedure [dbo].[SucursalSelectAllByIdSucursal]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalSelectAllByIdSucursal]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdSucursal] = @IdSucursal
GO
/****** Object:  StoredProcedure [dbo].[SucursalSelectAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[SucursalUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SucursalUpdate]
(
	@IdSucursal nvarchar(10),
	@Nombre nvarchar(50),
	@IdUbicacion nvarchar(10),
	@IdAdministrador nvarchar(10),
	@IdAgencia int
)

as

set nocount on

update [Sucursal]
set [Nombre] = @Nombre,
	[IdUbicacion] = @IdUbicacion,
	[IdAdministrador] = @IdAdministrador,
	[IdAgencia] = @IdAgencia
where [IdSucursal] = @IdSucursal
GO
/****** Object:  StoredProcedure [dbo].[TerminalDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TerminalDelete]
(
	@IdTerminal nvarchar(10)
)

as

set nocount on

delete from [Terminal]
where [IdTerminal] = @IdTerminal
GO
/****** Object:  StoredProcedure [dbo].[TerminalDeleteAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TerminalDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [Terminal]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[TerminalInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TerminalInsert]
(
	@IdTerminal nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50),
	@Detalle nvarchar(200)
)

as

set nocount on

if not exists(select * from Terminal e where e.IdTerminal = @IdTerminal)
begin
if exists(select * from Ubicacion p where p.IdUbicacion = @IdUbicacion)
begin



insert into [Terminal]
(
	[IdTerminal],
	[IdUbicacion],
	[Nombre],
	[Detalle]
)
values
(
	@IdTerminal,
	@IdUbicacion,
	@Nombre,
	@Detalle
)
end
else
	begin
	Raiserror('El id de ubicacion no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[TerminalSelect]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TerminalSelect]
(
	@IdTerminal nvarchar(10)
)

as

set nocount on

select [IdTerminal],
	[IdUbicacion],
	[Nombre],
	[Detalle]
from [Terminal]
where [IdTerminal] = @IdTerminal
GO
/****** Object:  StoredProcedure [dbo].[TerminalSelectAll]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TerminalSelectAll]

as

set nocount on

select [IdTerminal],
	[IdUbicacion],
	[Nombre],
	[Detalle]
from [Terminal]
GO
/****** Object:  StoredProcedure [dbo].[TerminalSelectAllByIdUbicacion]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TerminalSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdTerminal],
	[IdUbicacion],
	[Nombre],
	[Detalle]
from [Terminal]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[TerminalUpdate]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TerminalUpdate]
(
	@IdTerminal nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50),
	@Detalle nvarchar(200)
)

as

set nocount on

update [Terminal]
set [IdUbicacion] = @IdUbicacion,
	[Nombre] = @Nombre,
	[Detalle] = @Detalle
where [IdTerminal] = @IdTerminal
GO
/****** Object:  StoredProcedure [dbo].[TipoTransporteInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TipoTransporteInsert]
(
	@IdTipoTransporte nvarchar(10),
	@Nombre nvarchar(50),
	@Detalle nvarchar(300)
)

as

set nocount on
if not exists(select * from TipoTransporte e where e.IdTipoTransporte = @IdTipoTransporte)
begin


insert into [TipoTransporte]
(
	[IdTipoTransporte],
	[Nombre],
	[Detalle]
)
values
(
	@IdTipoTransporte,
	@Nombre,
	@Detalle
)

end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
GO
/****** Object:  StoredProcedure [dbo].[TransporteInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TransporteInsert]
(
	@IdVehiculo nvarchar(10),
	@IdTipoTransporte nvarchar(10),
	@Detalle nvarchar(50),
	@CapacidadMaxima int
)

as

set nocount on

if not exists(select * from Transporte e where e.IdVehiculo = @IdVehiculo)
begin
if exists(select * from TipoTransporte p where p.IdTipoTransporte = @IdTipoTransporte)
begin



insert into [Transporte]
(
	[IdVehiculo],
	[IdTipoTransporte],
	[Detalle],
	[CapacidadMaxima]
)
values
(
	@IdVehiculo,
	@IdTipoTransporte,
	@Detalle,
	@CapacidadMaxima
)
end
else
	begin
	Raiserror('El id de tipo de transporte no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[UbicacionDelete]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[UbicacionDelete]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [Ubicacion]
where [IdUbicacion] = @IdUbicacion
GO
/****** Object:  StoredProcedure [dbo].[UbicacionDeleteAllByIdCiudad]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[UbicacionDeleteAllByIdCiudad]
(
	@IdCiudad nvarchar(10)
)

as

set nocount on

delete from [Ubicacion]
where [IdCiudad] = @IdCiudad
GO
/****** Object:  StoredProcedure [dbo].[UbicacionDeleteAllByIdPais]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[UbicacionDeleteAllByIdPais]
(
	@IdPais nvarchar(10)
)

as

set nocount on

delete from [Ubicacion]
where [IdPais] = @IdPais
GO
/****** Object:  StoredProcedure [dbo].[UbicacionInsert]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[UbicacionInsert]
(
	@IdUbicacion nvarchar(10),
	@IdPais nvarchar(10),
	@IdCiudad nvarchar(10),
	@Detalle nvarchar(200)
)

as

set nocount on
if not exists(select * from Ubicacion e where e.IdUbicacion = @IdUbicacion)
begin
if exists(select * from Pais p where p.IdPais = @IdPais)
begin
if exists(select * from Ciudad p where p.IdCiudad = @IdCiudad)
begin



insert into [Ubicacion]
(
	[IdUbicacion],
	[IdPais],
	[IdCiudad],
	[Detalle]
)
values
(
	@IdUbicacion,
	@IdPais,
	@IdCiudad,
	@Detalle
)
end
else
	begin
	Raiserror('El id de ciudad no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de pais no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
GO
/****** Object:  StoredProcedure [dbo].[VerReporte]    Script Date: 24/1/2018 07:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[VerReporte] @IdReporte nvarchar(10)
AS
BEGIN
	if exists(SELECT * FROM Reporte r WHERE r.IdReporte = @IdReporte)
		BEGIN
			SELECT r.IdReporte, r.Emisor, r.Receptor, r.Fecha, d.IdLinea, d.Titulo, d.Detalle
			FROM Reporte r
			inner join DetalleReporte d on d.IdReporte = r.IdReporte
			WHERE r.IdReporte = @IdReporte
		END

	Else
		BEGIN
			Raiserror('El Id de reporte no existe',0,0)
		END
	
END
GO
USE [master]
GO
ALTER DATABASE [AgenciaViajes] SET  READ_WRITE 
GO
