use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DetalleReporteInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DetalleReporteInsert]
go

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
go
