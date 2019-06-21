use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ClienteSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ClienteSelect]
go

create procedure [dbo].[ClienteSelect]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

select [IdCliente],
	[Cedula],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[FechaNacimiento],
	[Pasaporte]
from [Cliente]
where [IdCliente] = @IdCliente
go
