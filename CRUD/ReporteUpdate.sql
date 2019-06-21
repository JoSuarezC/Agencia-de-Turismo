use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteUpdate]
go

create procedure [dbo].[ReporteUpdate]
(
	@IdReporte nvarchar(10),
	@Emisor nvarchar(10),
	@Receptor nvarchar(10),
	@Fecha nvarchar(10)
)

as

set nocount on

update [Reporte]
set [Emisor] = @Emisor,
	[Receptor] = @Receptor,
	[Fecha] = @Fecha
where [IdReporte] = @IdReporte
go
