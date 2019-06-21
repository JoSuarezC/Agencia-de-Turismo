use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionSelect]
go

create procedure [dbo].[Cliente-EspecificacionSelect]
(
	@IdCE nvarchar(10)
)

as

set nocount on

select [IdCE],
	[IdCliente],
	[IdEspecificacion]
from [Cliente-Especificacion]
where [IdCE] = @IdCE
go
