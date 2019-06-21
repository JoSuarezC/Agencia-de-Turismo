use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteDelete]
go

create procedure [dbo].[ReporteDelete]
(
	@IdReporte nvarchar(10)
)

as

set nocount on

delete from [Reporte]
where [IdReporte] = @IdReporte
go
