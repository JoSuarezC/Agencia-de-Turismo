use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionSelectAllByIdPais]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionSelectAllByIdPais]
go

create procedure [dbo].[UbicacionSelectAllByIdPais]
(
	@IdPais nvarchar(10)
)

as

set nocount on

select [IdUbicacion],
	[IdPais],
	[IdCiudad],
	[Detalle]
from [Ubicacion]
where [IdPais] = @IdPais
go
