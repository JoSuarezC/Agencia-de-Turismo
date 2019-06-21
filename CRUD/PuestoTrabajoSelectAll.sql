use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PuestoTrabajoSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PuestoTrabajoSelectAll]
go

create procedure [dbo].[PuestoTrabajoSelectAll]

as

set nocount on

select [IdPuesto],
	[Nombre],
	[Descripcion]
from [PuestoTrabajo]
go
