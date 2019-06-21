use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionSelect]
go

create procedure [dbo].[UbicacionSelect]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdUbicacion],
	[IdPais],
	[IdCiudad],
	[Detalle]
from [Ubicacion]
where [IdUbicacion] = @IdUbicacion
go
