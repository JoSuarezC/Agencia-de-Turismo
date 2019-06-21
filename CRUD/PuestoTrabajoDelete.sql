use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PuestoTrabajoDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PuestoTrabajoDelete]
go

create procedure [dbo].[PuestoTrabajoDelete]
(
	@IdPuesto nvarchar(10)
)

as

set nocount on

delete from [PuestoTrabajo]
where [IdPuesto] = @IdPuesto
go
