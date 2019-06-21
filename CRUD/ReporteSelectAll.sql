use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteSelectAll]
go

create procedure [dbo].[ReporteSelectAll]

as

set nocount on

select [IdReporte],
	[Emisor],
	[Receptor],
	[Fecha]
from [Reporte]
go
