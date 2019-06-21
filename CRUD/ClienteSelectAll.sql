use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ClienteSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ClienteSelectAll]
go

create procedure [dbo].[ClienteSelectAll]

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
go
