use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteSelect]
go

create procedure [dbo].[ReporteSelect]
(
	@IdReporte nvarchar(10)
)

as

set nocount on

select [IdReporte],
	[Emisor],
	[Receptor],
	[Fecha]
from [Reporte]
where [IdReporte] = @IdReporte
go
