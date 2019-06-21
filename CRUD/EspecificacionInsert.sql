use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EspecificacionInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EspecificacionInsert]
go

create procedure [dbo].[EspecificacionInsert]
(
	@IdEspecificacion nvarchar(10),
	@Titulo nvarchar(30),
	@Detalle nvarchar(200)
)

as

set nocount on

insert into [Especificacion]
(
	[IdEspecificacion],
	[Titulo],
	[Detalle]
)
values
(
	@IdEspecificacion,
	@Titulo,
	@Detalle
)
go
