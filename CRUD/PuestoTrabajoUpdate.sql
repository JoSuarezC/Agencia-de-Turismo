use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PuestoTrabajoUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PuestoTrabajoUpdate]
go

create procedure [dbo].[PuestoTrabajoUpdate]
(
	@IdPuesto nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200)
)

as

set nocount on

update [PuestoTrabajo]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion
where [IdPuesto] = @IdPuesto
go
