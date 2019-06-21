use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteInsert]
go

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
go
