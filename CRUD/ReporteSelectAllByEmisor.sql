use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteSelectAllByEmisor]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteSelectAllByEmisor]
go

create procedure [dbo].[ReporteSelectAllByEmisor]
(
	@Emisor nvarchar(10)
)

as

set nocount on

select [IdReporte],
	[Emisor],
	[Receptor],
	[Fecha]
from [Reporte]
where [Emisor] = @Emisor
go
