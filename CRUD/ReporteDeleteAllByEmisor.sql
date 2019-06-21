use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteDeleteAllByEmisor]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteDeleteAllByEmisor]
go

create procedure [dbo].[ReporteDeleteAllByEmisor]
(
	@Emisor nvarchar(10)
)

as

set nocount on

delete from [Reporte]
where [Emisor] = @Emisor
go
