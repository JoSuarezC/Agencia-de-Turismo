use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DetalleReporteDeleteAllByIdReporte]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DetalleReporteDeleteAllByIdReporte]
go

create procedure [dbo].[DetalleReporteDeleteAllByIdReporte]
(
	@IdReporte nvarchar(10)
)

as

set nocount on

delete from [DetalleReporte]
where [IdReporte] = @IdReporte
go
