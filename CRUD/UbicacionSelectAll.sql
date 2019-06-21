use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionSelectAll]
go

create procedure [dbo].[UbicacionSelectAll]

as

set nocount on

select [IdUbicacion],
	[IdPais],
	[IdCiudad],
	[Detalle]
from [Ubicacion]
go
