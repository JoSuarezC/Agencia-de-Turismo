use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionSelectAllByIdCiudad]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionSelectAllByIdCiudad]
go

create procedure [dbo].[UbicacionSelectAllByIdCiudad]
(
	@IdCiudad nvarchar(10)
)

as

set nocount on

select [IdUbicacion],
	[IdPais],
	[IdCiudad],
	[Detalle]
from [Ubicacion]
where [IdCiudad] = @IdCiudad
go
