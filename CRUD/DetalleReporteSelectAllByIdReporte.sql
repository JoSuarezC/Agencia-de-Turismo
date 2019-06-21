use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DetalleReporteSelectAllByIdReporte]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DetalleReporteSelectAllByIdReporte]
go

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
go
