use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionSelectAll]
go

create procedure [dbo].[Cliente-EspecificacionSelectAll]

as

set nocount on

select [IdCE],
	[IdCliente],
	[IdEspecificacion]
from [Cliente-Especificacion]
go
