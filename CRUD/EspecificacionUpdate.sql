use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EspecificacionUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EspecificacionUpdate]
go

create procedure [dbo].[EspecificacionUpdate]
(
	@IdEspecificacion nvarchar(10),
	@Titulo nvarchar(30),
	@Detalle nvarchar(200)
)

as

set nocount on

update [Especificacion]
set [Titulo] = @Titulo,
	[Detalle] = @Detalle
where [IdEspecificacion] = @IdEspecificacion
go
