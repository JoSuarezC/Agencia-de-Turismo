use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReporteDeleteAllByReceptor]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReporteDeleteAllByReceptor]
go

create procedure [dbo].[ReporteDeleteAllByReceptor]
(
	@Receptor nvarchar(10)
)

as

set nocount on

delete from [Reporte]
where [Receptor] = @Receptor
go
