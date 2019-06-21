use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PuestoTrabajoSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PuestoTrabajoSelect]
go

create procedure [dbo].[PuestoTrabajoSelect]
(
	@IdPuesto nvarchar(10)
)

as

set nocount on

select [IdPuesto],
	[Nombre],
	[Descripcion]
from [PuestoTrabajo]
where [IdPuesto] = @IdPuesto
go
