use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionUpdate]
go

create procedure [dbo].[UbicacionUpdate]
(
	@IdUbicacion nvarchar(10),
	@IdPais nvarchar(10),
	@IdCiudad nvarchar(10),
	@Detalle nvarchar(200)
)

as

set nocount on

update [Ubicacion]
set [IdPais] = @IdPais,
	[IdCiudad] = @IdCiudad,
	[Detalle] = @Detalle
where [IdUbicacion] = @IdUbicacion
go
