use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteSelectAllByReceptor]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteSelectAllByReceptor]
go

create procedure [dbo].[ReporteSelectAllByReceptor]
(
	@Receptor nvarchar(10)
)

as

set nocount on

select [IdReporte],
	[Emisor],
	[Receptor],
	[Fecha]
from [Reporte]
where [Receptor] = @Receptor
go
